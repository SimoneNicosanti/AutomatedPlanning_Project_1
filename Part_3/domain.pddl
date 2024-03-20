(define (domain EmergencyServiceLogisticDomain)

(:requirements :strips :typing :action-costs :durative-actions)

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

    (carrierHasBoxes ?c - Carrier ?n - Num) 
    (isCarrierInLocation ?c - Carrier ?l - Location) 
    (isBoxInCarrier ?c - Carrier ?b - Box)
)

(:functions
    (total-cost)
    (fly-cost ?from - Location ?to - Location)
)

(:durative-action PickBox
    :parameters (?d - Drone ?b - Box ?l - Location)
    :duration (= ?duration 5)
    :condition (and 
        (at start (and
            (isDroneFree ?d)
            (isBoxInLocation ?b ?l)
        ))
        (over all (and
            (isDroneInLocation ?d ?l)
        ))
    )
    :effect (and 
        (at start (and
            (not (isBoxInLocation ?b ?l))
            (not (isDroneFree ?d))
        ))
        (at end (and
            (droneHasBox ?d ?b)
            ;(increase (total-cost) 1)
        ))
    )
)

(:durative-action DeliverBox
    :parameters (?d - Drone ?b - Box ?s - Supply ?p - Person ?l - Location)
    :duration (= ?duration 5)
    :condition (and 
        (at start (and
            (droneHasBox ?d ?b)
        ))
        (over all (and
            (isDroneInLocation ?d ?l)
            (isPersonInLocation ?p ?l)
            (boxContains ?b ?s) 
        ))   
    )
    :effect (and 
        (at start (and
            (not (droneHasBox ?d ?b))
        ))
        (at end (and
            (isDroneFree ?d)
            (personHas ?p ?s)

            ;(increase (total-cost) 1)
        ))
    )
)

(:durative-action MoveDrone
    :parameters (?d - Drone ?from - Location ?to - Location)
    :duration (= ?duration (fly-cost ?from ?to))
    :condition (and 
        (at start (and
            (isDroneInLocation ?d ?from)
        ))
    )
    :effect (and 
        (at start (and
            (not (isDroneInLocation ?d ?from))
        ))
        (at end (and
            (isDroneInLocation ?d ?to)

            ;(increase (total-cost) (fly-cost ?from ?to))
        ))
    )
)


(:durative-action PutBoxOnCarrier
    :parameters (?d - Drone ?c - Carrier ?l - Location ?b - Box ?startNum - Num ?endNum - Num)
    :duration (= ?duration 5)
    :condition (and 
        (at start (and
            (droneHasBox ?d ?b)
            (carrierHasBoxes ?c ?startNum)
        ))
        (over all (and 
            (isDroneInLocation ?d ?l)
            (isCarrierInLocation ?c ?l)
            (isNext ?startNum ?endNum)
        ))
    )
    :effect (and 
        (at start (and
            (not (carrierHasBoxes ?c ?startNum))
            (carrierHasBoxes ?c ?endNum)
        ))
        (at end (and
            (not (droneHasBox ?d ?b))
            (isDroneFree ?d)
            (isBoxInCarrier ?c ?b)

            ;(increase (total-cost) 1)
        ))
    )
)

(:durative-action PickBoxFromCarrier
    :parameters (?d - Drone ?c - Carrier ?l - Location ?b - Box ?startNum - Num ?endNum - Num)
    :duration (= ?duration 5)
    :condition (and 
        (at start (and
            (isDroneFree ?d)
            (isBoxInCarrier ?c ?b)
            (carrierHasBoxes ?c ?startNum)
        ))
        (over all (and
            (isDroneInLocation ?d ?l)
            (isCarrierInLocation ?c ?l)
            (isNext ?endNum ?startNum)
        ))
    )
    :effect (and 
        (at start (and
            (not (isBoxInCarrier ?c ?b))
            (not (isDroneFree ?d))

            (not (carrierHasBoxes ?c ?startNum))
            (carrierHasBoxes ?c ?endNum)
            
        ))
        (at end (and
            (droneHasBox ?d ?b)

            ;(increase (total-cost) 1)
        ))
    )
)

(:durative-action MoveCarrier
    :parameters (?d - Drone ?c - Carrier ?from - Location ?to - Location)
    :duration (= ?duration (fly-cost ?from ?to))
    :condition (and 
        (at start (and 
            (isDroneInLocation ?d ?from)
            (isCarrierInLocation ?c ?from)
        ))
        (over all 
            (isDroneFree ?d)
        )
    )
    :effect (and
        (at start (and
            (not (isDroneInLocation ?d ?from))
            (not (isCarrierInLocation ?c ?from))
        ))
        (at end (and
            (isDroneInLocation ?d ?to)
            (isCarrierInLocation ?c ?to)

            ;(increase (total-cost) (fly-cost ?from ?to))
        ))
    )
)

)