(define (problem Problem_1) (:domain EmergencyServiceLogisticDomain)
(:objects 
    per_1 - Person
    deposit loc_1 - Location
    drone - Drone
    arm_1 arm_2 - Arm
    box_1 - Box
    food medicine - Supply
)

(:init
    (isPersonInLocation per_1 loc_1)

    (isDroneInLocation drone deposit)
    (isDroneArmFree drone arm_1)
    (isDroneArmFree drone arm_2)

    (isBoxInLocation box_1 deposit)

    (boxContains box_1 food)
    
    (personHas per_1 medicine)

    (locationIsDeposit deposit)
)

(:goal (and
    (personHas per_1 food)
    (isDroneInLocation drone deposit)
))

)
