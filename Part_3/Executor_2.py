import sys
import subprocess
import shutil
import os
import time


MIN_PROB_DIM = 2
MAX_ATTEMP_NUM = 1
PLANNERS_BASE_PATH = "../../../Planners"
PLANNERS_LIST = ["optic-clp"]

def generatePlanFileName(probDim : int, contentSize : int, droneNum : int, carrierNum : int) :
    return f"drone_problem_d{droneNum}_r{carrierNum}_l{probDim}_p{probDim}_c{probDim}_g{probDim}_ct{contentSize}.pddl"

def PlanExecutor(planner : str, probDim : int, droneNum, carrierNum, contentSize : int = 2) :
    probFileName = generatePlanFileName(probDim, contentSize, droneNum, carrierNum)
    plannerPath = f"{PLANNERS_BASE_PATH}/{planner}"
    if planner == "metricff" :
        commandString = f"{plannerPath} -o ./domain.pddl -f ./Problems/{probFileName}"
    else :
        commandString = f"{plannerPath} -N ./domain.pddl ./Problems/{probFileName}"

    commandList = commandString.split(" ")

    #print(commandString)
    start = time.time()
    result = subprocess.run(commandList, capture_output = True)
    #print(result.stdout)
    end = time.time()
    with open("./output.txt", "+bw") as planFile :
        planFile.write(result.stdout)
        
    return end - start

def PlanGenerator(problemDim : int, droneNum, carrierNum, contentSize : int = 2) :
    i = problemDim
    
    if os.path.exists(f"./Problems/{generatePlanFileName(problemDim, contentSize, droneNum, carrierNum)}") :
        return
    
    commandList = f"python3 ./ProblemGenerator.py -d {droneNum} -s 4 -r {carrierNum} -l {i} -p {i} -c {i} -g {i}".split(" ")
    subprocess.run(commandList)

    probFileName = generatePlanFileName(i, contentSize, droneNum, carrierNum)
    source = f"./{probFileName}"
    destination = f"./Problems/{probFileName}"
    os.rename(source, destination)
        

def WriteCsv(planner : str, resultData : dict) :
    filePath = f"./Results/Csv/FixedDrones_Results.csv"
    if not os.path.exists(filePath):
        with open(filePath, "w+") as resultFile :
            resultFile.write("Planner,ProblemDim,Time,Actions,Cost\n")
    
    with open(filePath, "a+") as resultFile :
        planner = resultData["Planner"]
        problemDim = resultData["ProblemDim"]
        time = resultData["Time"]
        actions = resultData["Actions"]
        cost = resultData["Cost"]
        resultFile.write(f"{planner},{problemDim},{time},{actions},{cost}\n")


def ExtractDataFromPlan(planner : str) :
    actions = 0
    searchTime = 0
    cost = 0
    with open("./output.txt", "+r") as planFile :
        countLines = False
        line = planFile.readline()
        while line :
            if (line.find("Solution Found") != -1) :
                    while line.find("Cost") == -1 :
                        line = planFile.readline()
                    cost = float(line[line.find("Cost") + len("Cost: ") : ])
                    while line.find("Time") == -1 :
                        line = planFile.readline()
                    searchTime = float(line[line.find("Time") + len("Time ") : ])
                    countLines = True

            line = planFile.readline()
            if countLines :
                actions += 1
    
    actions -= 1
    #print(searchTime)
    return actions, searchTime, cost
            

def main() :
    carrierNum = 1
    for planner in PLANNERS_LIST :
        probDim = 35
        breakPlanner = False
        for droneNum in range(1, 10) :
            carrierNum = droneNum
            PlanGenerator(probDim, droneNum, carrierNum)
            print(f"Try {planner} with {droneNum} drones")

            for _ in range(0, MAX_ATTEMP_NUM) :
                
                time = PlanExecutor(planner, probDim, droneNum, carrierNum)
                actions, time, cost = ExtractDataFromPlan(planner)
                data = {}

                #print("Actions " + str(actions))
                
                if (actions == 0) :
                    breakPlanner = True
                    break

                data["Time"] = time
                data["Planner"] = planner
                data["ProblemDim"] = probDim
                data["Actions"] = actions
                data["Cost"] = cost
                WriteCsv(planner, data)


if __name__ == "__main__" :
    main()