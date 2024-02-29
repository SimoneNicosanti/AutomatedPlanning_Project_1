(define (domain EmergencyServiceLogisticDomain)

(:requirements :strips :typing)

(:types
    Person
    Location
    Drone
    Box
    Supply

    Carrier
    Num
)

(:predicates
    (isPersonInLocation ?p - Person ?l - Location)
    (personHas ?p - Person ?s - Supply)
    
    (isDroneInLocation ?d - Drone ?l - Location)
    (isDroneFree ?d - Drone)
    (droneHasBox ?d - Drone ?b - Box)

    (boxContains ?b - Box ?s - Supply)
    (isBoxInLocation ?b - Box ?l - Location)

    (locationIsDeposit ?l - Location)

    (isNext ?n1 - Num ?n2 - Num)

    (carrierHasBoxes ?c - Carrier ?n - Num) ; How many boxes
    (isCarrierInLocation ?c - Carrier ?l - Location) ; Current Location
    (isBoxInCarrier ?c - Carrier ?b - Box)

)



(:action PickBox
    :parameters (?d - Drone ?b - Box ?l - Location)
    :precondition (and 
        (isDroneInLocation ?d ?l)
        (isBoxInLocation ?b ?l)
        (locationIsDeposit ?l)
        (isDroneFree ?d)
    )
    :effect (and 
        (not (isDroneFree ?d))
        (not (isBoxInLocation ?b ?l))
        (droneHasBox ?d ?b)
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
    :parameters (?d - Drone ?b - Box ?s - Supply ?p - Person ?l - Location)
    :precondition (and 
        (isDroneInLocation ?d ?l)
        (isPersonInLocation ?p ?l)

        (droneHasBox ?d ?b)
        (boxContains ?b ?s) 
    )
    :effect (and 
        (not (droneHasBox ?d ?b))

        (isDroneFree ?d)
        (personHas ?p ?s)
        (isBoxInLocation ?b ?l)

    )
)


(:action PutBoxOnCarrier
    :parameters (?d - Drone ?c - Carrier ?l - Location ?b - Box ?startNum - Num ?endNum - Num)
    :precondition (and 
        (isDroneInLocation ?d ?l)
        (isCarrierInLocation ?c ?l)
        (locationIsDeposit ?l)

        (droneHasBox ?d ?b)
        (carrierHasBoxes ?c ?startNum)
        (isNext ?startNum ?endNum)
    )
    :effect (and 
        (not (droneHasBox ?d ?b))
        (isDroneFree ?d)

        (not (carrierHasBoxes ?c ?startNum))
        (carrierHasBoxes ?c ?endNum)
        (isBoxInCarrier ?c ?b)
    )
)


(:action MoveCarrier
    :parameters (?d - Drone ?c - Carrier ?from - Location ?to - Location)
    :precondition (and 
        (isDroneInLocation ?d ?from)
        (isCarrierInLocation ?c ?from)
        (isDroneFree ?d)
    )
    :effect (and 
        (not (isDroneInLocation ?d ?from))
        (not (isCarrierInLocation ?c ?from))

        (isDroneInLocation ?d ?to)
        (isCarrierInLocation ?c ?to)
    )
)


(:action PickBoxFromCarrier
    :parameters (?d - Drone ?c - Carrier ?l - Location ?b - Box ?startNum - Num ?endNum - Num)
    :precondition (and 
        (isDroneInLocation ?d ?l)
        (isCarrierInLocation ?c ?l)
        (isBoxInCarrier ?c ?b)

        (isDroneFree ?d)
        (carrierHasBoxes ?c ?startNum)
        (isNext ?endNum ?startNum)
    )
    :effect (and 
        (not (isDroneFree ?d))
        (droneHasBox ?d ?b)

        (not (carrierHasBoxes ?c ?startNum))
        (not (isBoxInCarrier ?c ?b))
        (carrierHasBoxes ?c ?endNum)

    )
)

)