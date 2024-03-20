(define (domain EmergencyServiceLogisticDomain)

(:requirements :strips :typing)

(:types
    Person
    Location
    Drone
    Arm
    Box
    Supply
    Carrier
)

(:predicates
    (isPersonInLocation ?p - Person ?l - Location)
    (personHas ?p - Person ?s - Supply)
    
    (isDroneInLocation ?d - Drone ?l - Location)
    (isDroneArmFree ?d - Drone ?a - Arm)
    (droneArmHasBox ?d - Drone ?a - Arm ?b - Box)

    (boxContains ?b - Box ?s - Supply)
    (isBoxInLocation ?b - Box ?l - Location)

    (locationIsDeposit ?l - Location)
)

(:action PickBox
    :parameters (?d - Drone ?a - Arm ?b - Box ?l - Location)
    :precondition (and 
        (isDroneInLocation ?d ?l)
        (isBoxInLocation ?b ?l)
        (isDroneArmFree ?d ?a)

        ; To not limite drone in picking up boxes only in the deposit
        ; (locationIsDeposit ?l)
    )
    :effect (and 
        (not (isDroneArmFree ?d ?a))
        (not (isBoxInLocation ?b ?l))
        (droneArmHasBox ?d ?a ?b)
    )
)

(:action MoveDrone
    :parameters (?d - Drone ?from - Location ?to - Location)
    :precondition (and 
        (isDroneInLocation ?d ?from)
    )
    :effect (and 
        (not (isDroneInLocation ?d ?from))
        (isDroneInLocation ?d ?to)
    )
)

(:action DeliverBox
    :parameters (?d - Drone ?a - Arm ?b - Box ?s - Supply ?p - Person ?l - Location)
    :precondition (and 
        (isDroneInLocation ?d ?l)
        (isPersonInLocation ?p ?l)

        (droneArmHasBox ?d ?a ?b)
        (boxContains ?b ?s) 
    )
    :effect (and 
        (not (droneArmHasBox ?d ?a ?b))

        (isDroneArmFree ?d ?a)
        (personHas ?p ?s)

        ; We make the box disappear from the problem
        ; (isBoxInLocation ?b ?l)
    )
)

)