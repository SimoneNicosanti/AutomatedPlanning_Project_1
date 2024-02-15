import sys
import subprocess
import shutil
import os
import time


MIN_PROB_DIM = 2
MAX_ATTEMP_NUM = 5
PLANNERS_BASE_PATH = "../../Planners"
PLANNERS_LIST = ["ff", "sgplan40", "lpg-td"]

def generatePlanFileName(probDim : int, contentSize : int) :
    return f"drone_problem_d1_r0_l{probDim}_p{probDim}_c{probDim}_g{probDim}_ct{contentSize}.pddl"

def PlanExecutor(planner : str, probDim : int, contentSize : int = 2) :
    probFileName = generatePlanFileName(probDim, contentSize)
    plannerPath = f"{PLANNERS_BASE_PATH}/{planner}"
    commandString = f"{plannerPath} -o ./domain.pddl -f ./Problems/{probFileName}" # -out ./plan".split(" ")
    if (planner == "sgplan522" or planner == "sgplan40" or planner == "lpg-td") :
        commandString = commandString + " -out ./plan"
    if (planner == "lpg-td") :
        commandString = commandString + " -n 1 -seed 0"
    if (planner == "ff" or planner == "metricff") :
        commandString = commandString + " -i 0"
        print(commandString)

    commandList = commandString.split(" ")

    start = time.time()
    result = subprocess.run(commandList, capture_output = True)
    end = time.time()
    if (planner == "ff" or planner == "metricff") :
        with open("./plan", "+bw") as planFile :
            planFile.write(result.stdout)
    return end - start

def PlanGenerator(problemDim : int, contentSize : int = 2) :
    i = problemDim
    
    if os.path.exists(f"./Problems/{generatePlanFileName(problemDim, contentSize)}") :
        return
    
    commandList = f"python3 ./ProblemGenerator.py -d 1 -r 0 -l {i} -p {i} -c {i} -g {i}".split(" ")
    subprocess.run(commandList)

    probFileName = generatePlanFileName(i, contentSize)
    source = f"./{probFileName}"
    destination = f"./Problems/{probFileName}"
    os.rename(source, destination)
        

def WriteCsv(resultData : dict) :
    filePath = "./Results/Csv/Results.csv"
    if not os.path.exists(filePath):
        with open(filePath, "w+") as resultFile :
            resultFile.write("Planner,ProblemDim,Time,Actions\n")
    
    with open(filePath, "a+") as resultFile :
        planner = resultData["Planner"]
        problemDim = resultData["ProblemDim"]
        time = resultData["Time"]
        actions = resultData["Actions"]
        resultFile.write(f"{planner},{problemDim},{time},{actions}\n")


def ExtractDataFromPlan(planner : str) :
    actions = 0
    lineCount = 0
    with open("./plan", "+r") as planFile :
        line = planFile.readline()
        while line :

            if (planner != "ff" and planner != "metricff") :
                substringIndex = line.find("NrActions")
                if (substringIndex != -1) :
                    actionsString = line[substringIndex : -1]
                    actionsStringList = actionsString.split(" ")
                    actions = float(actionsStringList[1])
                    break
                
            else :
                if line.startswith("step") :
                    lineCount = 1
                    actionLine = planFile.readline()
                    while not actionLine.startswith("time") :
                        lineCount += 1
                        actionLine = planFile.readline()
                    actions = lineCount - 2
                    break

            line = planFile.readline()
    
    return actions
            

def main() :
    generate : bool = False
    for i in range(0, len(sys.argv)) :
        if sys.argv[i] == "-g" :
            generate = (sys.argv[i+1] == "T")
            break    
    
    for planner in PLANNERS_LIST :
        probDim = MIN_PROB_DIM
        while True :
            totalDimTime = 0
            PlanGenerator(probDim)
            for _ in range(0, MAX_ATTEMP_NUM) :
                
                time = PlanExecutor(planner, probDim)
                actions = ExtractDataFromPlan(planner)
                data = {}
                data["Time"] = time
                data["Planner"] = planner
                data["ProblemDim"] = probDim
                data["Actions"] = actions
                WriteCsv(data)

                totalDimTime += time

            avgDimTime = totalDimTime / MAX_ATTEMP_NUM
            if (avgDimTime > 60) :
                break
            probDim += 1


if __name__ == "__main__" :
    main()