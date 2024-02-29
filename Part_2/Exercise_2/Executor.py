import sys
import subprocess
import shutil
import os
import time


MIN_PROB_DIM = 2
MAX_ATTEMP_NUM = 5
PLANNERS_BASE_PATH = "../../../../Planners"
PLANNERS_LIST =["metricff", "downward.sif --alias lama", "downward.sif --alias seq-opt-bjolp", "downward.sif --alias seq-opt-fdss2"]

def generatePlanFileName(probDim : int, contentSize : int) :
    return f"drone_problem_d1_r1_l{probDim}_p{probDim}_c{probDim}_g{probDim}_ct{contentSize}.pddl"

def PlanExecutor(planner : str, probDim : int, contentSize : int = 2) :
    probFileName = generatePlanFileName(probDim, contentSize)
    plannerPath = f"{PLANNERS_BASE_PATH}/{planner}"
    if planner == "metricff" :
        commandString = f"{plannerPath} -o ./domain.pddl -f ./Problems/{probFileName}"
    else :
        commandString = f"{plannerPath} --search-time-limit 90 ./domain.pddl ./Problems/{probFileName}"

    commandList = commandString.split(" ")

    start = time.time()
    result = subprocess.run(commandList, capture_output = True, timeout = 90.0)
    end = time.time()
    print(result.stdout)
    with open("./output.txt", "+bw") as planFile :
        planFile.write(result.stdout)
        
    return end - start

def PlanGenerator(problemDim : int, contentSize : int = 2) :
    i = problemDim
    
    if os.path.exists(f"./Problems/{generatePlanFileName(problemDim, contentSize)}") :
        return
    
    commandList = f"python3 ./ProblemGenerator.py -d 1 -s 4 -r 1 -l {i} -p {i} -c {i} -g {i}".split(" ")
    subprocess.run(commandList)

    probFileName = generatePlanFileName(i, contentSize)
    source = f"./{probFileName}"
    destination = f"./Problems/{probFileName}"
    os.rename(source, destination)
        

def WriteCsv(planner : str, resultData : dict) :
    filePath = f"./Results/Csv/{planner}_Results.csv"
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
    lineCount = 0
    cost = 0
    searchTime = 0
    with open("./output.txt", "+r") as planFile :
        line = planFile.readline()
        while line :

            if (planner != "metricff") :
                if (line.find("Solution found!") != -1) :
                    currentLine = planFile.readline()
                    while not currentLine.find("Actual search time") != -1 :
                        currentLine = planFile.readline()
                    startIndex = currentLine.find("t=") + len("t=")
                    endIndex = currentLine.find("s, ")
                    searchTime = currentLine[startIndex : endIndex]
                    currentLine = planFile.readline()
                    
                    while not currentLine.find("Plan length") != -1 :
                        currentLine = planFile.readline()
                    startIndex = currentLine.find("Plan length") + len("Plan length: ") 
                    actions = currentLine[startIndex : -9]
                    currentLine = planFile.readline()
                    
                    while not currentLine.find("Plan cost") != -1 :
                        currentLine = planFile.readline()
                    startIndex = currentLine.find("Plan cost") + len("Plan cost: ") 
                    cost = currentLine[startIndex :]
                    currentLine = planFile.readline()
                    
                    break
                
            if planner == "metricff" :
                if line.find("segmentation fault") != -1 :
                    actions = -1
                    cost = -1
                    searchTime = -1
                if line.startswith("step") :
                    lineCount = 1
                    line = planFile.readline()
                    while not line.startswith("plan cost") :
                        lineCount += 1
                        line = planFile.readline()
                    actions = lineCount - 2
                    cost = line[11 : ]

            line = planFile.readline()
    
    return (int(actions), float(cost), float(searchTime))
            

def main() :
    for planner in PLANNERS_LIST :
        probDim = MIN_PROB_DIM
        while True :
            totalDimTime = 0
            PlanGenerator(probDim)
            print(f"Try {planner} with dimension {probDim}")
            for _ in range(0, MAX_ATTEMP_NUM) :
                
                time = PlanExecutor(planner, probDim)
                actions, cost, firstSolTime = ExtractDataFromPlan(planner)
                data = {}

                if planner != "metricff" :
                    time = firstSolTime
                
                if (actions == -1) :
                    ## Error
                    break

                data["Time"] = time
                data["Planner"] = planner
                data["ProblemDim"] = probDim
                data["Actions"] = actions
                data["Cost"] = cost
                WriteCsv(planner, data)

                totalDimTime += time

            avgDimTime = totalDimTime / MAX_ATTEMP_NUM
            if (avgDimTime > 60) :
                break
            probDim += 1

            # if (probDim == 40) :
            #     break


if __name__ == "__main__" :
    main()