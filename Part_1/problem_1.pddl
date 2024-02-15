(define (problem Problem_1) (:domain EmergencyServiceLogisticDomain)
(:objects 
    per_1 per_2 per_3 per_4 - Person
    deposit loc_1 loc_2 - Location
    drone - Drone
    arm_1 arm_2 - Arm
    box_1 box_2 box_3 box_4 - Box
    food medicine - Supply
)

(:init
    (isPersonInLocation per_1 loc_1)
    (isPersonInLocation per_2 loc_2)
    (isPersonInLocation per_3 loc_1)
    (isPersonInLocation per_4 loc_2)
    (personNeeds per_1 food)
    (personNeeds per_2 medicine)
    (personNeeds per_3 food)
    (personNeeds per_4 medicine)


    (isDroneInLocation drone deposit)
    (isDroneArmFree drone arm_1)
    (isDroneArmFree drone arm_2)


    (boxContains box_1 food)
    (boxContains box_2 medicine)
    (boxContains box_3 food)
    (boxContains box_4 medicine)
    (isBoxInLocation box_1 deposit)
    (isBoxInLocation box_2 deposit)
    (isBoxInLocation box_3 deposit)
    (isBoxInLocation box_4 deposit)

    (locationIsDeposit deposit)
)

(:goal (and
    (personHas per_1 food)
    (personHas per_2 medicine)
    (personHas per_3 food)
    (personHas per_4 medicine)
))

)
