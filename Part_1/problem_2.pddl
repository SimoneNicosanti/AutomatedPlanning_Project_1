(define (problem Problem_2) (:domain EmergencyServiceLogisticDomain)
(:objects 
    per_1 per_2 - Person
    deposit loc_1 loc_2 - Location
    drone - Drone
    arm_1 arm_2 - Arm
    box_1 box_2 box_3 - Box
    food medicine - Supply
)

(:init
    (isPersonInLocation per_1 loc_1)
    (isPersonInLocation per_2 loc_2)

    (isDroneInLocation drone deposit)
    (isDroneArmFree drone arm_1)
    (isDroneArmFree drone arm_2)

    (isBoxInLocation box_1 deposit)
    (isBoxInLocation box_2 deposit)
    (isBoxInLocation box_3 deposit)

    (boxContains box_1 food)
    (boxContains box_2 food)
    (boxContains box_3 medicine)
    
    (personHas per_1 medicine)

    (locationIsDeposit deposit)
)

(:goal (and
    (personHas per_1 food)
    (personHas per_2 food)
    (personHas per_2 medicine)

    (isDroneInLocation drone deposit)
))

)
