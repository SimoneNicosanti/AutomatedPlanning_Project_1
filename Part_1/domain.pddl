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
    (personNeeds ?p - Person ?s - Supply)
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
        (locationIsDeposit ?l)
        (isDroneArmFree ?d ?a)
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
        (personNeeds ?p ?s)
    )
    :effect (and 
        (not (personNeeds ?p ?s))
        (not (droneArmHasBox ?d ?a ?b))

        (isDroneArmFree ?d ?a)
        (personHas ?p ?s)
        (isBoxInLocation ?b ?l)
    )
)

)