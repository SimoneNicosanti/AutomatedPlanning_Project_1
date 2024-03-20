import pandas as pd
import matplotlib.pyplot as plt

PLANNERS_LIST = ["metricff", "downward.sif --alias lama", "downward.sif --alias seq-opt-bjolp", "downward.sif --alias seq-opt-fdss-2"]

def main() :
    dfs = []
    for planner in PLANNERS_LIST :
        dfs.append(pd.read_csv(f"./Results/Csv/{planner}_Results.csv"))
    data = pd.concat(dfs, axis=0, ignore_index=True)

    meanData = data.groupby(by = ["Planner", "ProblemDim", "Actions"]).mean().reset_index()
    meanData.to_csv("./Results/Csv/MeanValues.csv")

    lowerThanMaxTime = meanData[(meanData["Time"] <= 60)]
    maxData = lowerThanMaxTime[(lowerThanMaxTime.groupby("Planner")["ProblemDim"].transform(lambda x : x == x.max()))]
    maxData.to_csv("./Results/Csv/MaxValues.csv")

    # plt.figure(figsize = (10,5))

    # for planner in meanData["Planner"].unique() :
    #     plannerData = meanData[meanData["Planner"] == planner]

    #     plt.scatter(plannerData["ProblemDim"], plannerData["Time"], s = 7.5)
    #     plt.title(label = f"{planner} Time Chart")
    #     plt.xlabel(xlabel = "Problem Dimension")
    #     plt.ylabel(ylabel = "Time [Sec]")
    #     plt.tight_layout()
    #     plt.axhline(y=60, color='black', linestyle='--')
    #     plt.savefig(f"./Results/Charts/{planner}_Time.png")
    #     plt.clf()

    #     plt.scatter(plannerData["ProblemDim"], plannerData["Actions"], s = 7.5)
    #     plt.title(label = f"{planner} Actions Chart")
    #     plt.xlabel(xlabel = "Problem Dimension")
    #     plt.ylabel(ylabel = "Actions Number")
    #     plt.tight_layout()
    #     plt.savefig(f"./Results/Charts/{planner}_Actions.png")
    #     plt.clf()

    # for planner in meanData["Planner"].unique() :
    #     plannerData = meanData[meanData["Planner"] == planner]

    #     plt.scatter(plannerData["ProblemDim"], plannerData["Time"], label = planner, s = 7.5)
    
    # plt.axhline(y=60, color='black', linestyle='--')
    # plt.title(label = f"Comparison - Time Chart")
    # plt.xlabel(xlabel = "Problem Dimension")
    # plt.ylabel(ylabel = "Time [Sec]")
    # plt.legend()
    # plt.tight_layout()
    # plt.savefig("./Results/Charts/Comparison_Time.png")
    # plt.clf()

    # for planner in meanData["Planner"].unique() :
    #     plannerData = meanData[meanData["Planner"] == planner]

    #     plt.scatter(plannerData["ProblemDim"], plannerData["Actions"], label = planner, s = 7.5)
    
    # plt.title(label = f"Comparison - Actions Chart")
    # plt.xlabel(xlabel = "Problem Dimension")
    # plt.ylabel(ylabel = "Actions Number")
    # plt.legend()
    # plt.tight_layout()
    # plt.savefig("./Results/Charts/Comparison_Actions.png")
    # plt.clf()



if __name__ == "__main__" :
    main()