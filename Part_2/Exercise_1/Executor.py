import sys
import subprocess
import shutil
import os
import time


MIN_PROB_DIM = 2
MAX_ATTEMP_NUM = 3
MAX_PROB_SIZE = 11
PLANNERS_BASE_PATH = "../../../../Planners"
PLANNERS_LIST =["ff", "sgplan40", "lpg-td"]

def generatePlanFileName(probDim : int, contentSize : int) :
    return f"drone_problem_d1_r1_l{probDim}_p{probDim}_c{probDim}_g{probDim}_ct{contentSize}.pddl"

def generateResultPlanName(planner : str, probDim : int, contentSize : int) :
    return f"{planner}_plan_dim_{probDim}_contentSize_{contentSize}"

def PlanExecutor(planner : str, probDim : int, contentSize : int = 2) :
    probFileName = generatePlanFileName(probDim, contentSize)
    planFileName = generateResultPlanName(planner, probDim, contentSize)
    plannerPath = f"{PLANNERS_BASE_PATH}/{planner}"
    commandString = f"{plannerPath} -o ./domain.pddl -f ./Problems/{probFileName}" # -out ./plan".split(" ")
    if (planner == "sgplan522" or planner == "sgplan40" or planner == "lpg-td") :
        commandString = commandString + f" -out ./Plans/{planFileName}"
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
        
        with open(f"./Plans/{planFileName}", "+bw") as planFile :
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
            resultFile.write("Planner,ProblemDim,Time,Actions\n")
    
    with open(filePath, "a+") as resultFile :
        planner = resultData["Planner"]
        problemDim = resultData["ProblemDim"]
        time = resultData["Time"]
        actions = resultData["Actions"]
        resultFile.write(f"{planner},{problemDim},{time},{actions}\n")


def ExtractDataFromPlan(planner : str, probDim : int, contentSize : int = 2) :
    actions = 0
    lineCount = 0
    planFileName = generateResultPlanName(planner, probDim, contentSize)
    with open(f"./Plans/{planFileName}", "+r") as planFile :
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
    for planner in PLANNERS_LIST :
        probDim = MIN_PROB_DIM
        while probDim < MAX_PROB_SIZE :
            totalDimTime = 0
            PlanGenerator(probDim)
            print(f"Try {planner} with dimension {probDim}")
            for _ in range(0, MAX_ATTEMP_NUM) :
                
                time = PlanExecutor(planner, probDim)
                actions = ExtractDataFromPlan(planner, probDim)
                data = {}
                data["Time"] = time
                data["Planner"] = planner
                data["ProblemDim"] = probDim
                data["Actions"] = actions
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