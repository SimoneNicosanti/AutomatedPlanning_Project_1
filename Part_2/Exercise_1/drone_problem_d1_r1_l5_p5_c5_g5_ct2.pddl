(define (problem drone_problem_d1_r1_l5_p5_c5_g5_ct2)
(:domain EmergencyServiceLogisticDomain)
(:objects
	drone1 - Drone
	depot - Location
	loc1 - Location
	loc2 - Location
	loc3 - Location
	loc4 - Location
	loc5 - Location
	crate1 - Box
	crate2 - Box
	crate3 - Box
	crate4 - Box
	crate5 - Box
	food - Supply
	medicine - Supply
	person1 - Person
	person2 - Person
	person3 - Person
	person4 - Person
	person5 - Person
	carrier1 - Carrier
	num0 - Num
	num1 - Num
	num2 - Num
	num3 - Num
	num4 - Num
)
(:init
(isPersonInLocation person1 loc1)
(isPersonInLocation person2 loc4)
(isPersonInLocation person3 loc1)
(isPersonInLocation person4 loc5)
(isPersonInLocation person5 loc4)

(personHas person2 food)
(personHas person2 medicine)
(personHas person3 medicine)
(personHas person4 medicine)
(personHas person5 medicine)

(isDroneInLocation drone1 depot)
(isDroneFree drone1)

(boxContains crate1 food)
(boxContains crate2 food)
(boxContains crate3 food)
(boxContains crate4 food)
(boxContains crate5 medicine)

(isBoxInLocation crate1 depot)
(isBoxInLocation crate2 depot)
(isBoxInLocation crate3 depot)
(isBoxInLocation crate4 depot)
(isBoxInLocation crate5 depot)

(locationIsDeposit depot)
(isNext num0 num1)
(isNext num1 num2)
(isNext num2 num3)
(isNext num3 num4)
(isCarrierInLocation carrier1 depot)
(carrierHasBoxes carrier1 num0)
)
(:goal (and
(isDroneInLocation drone1 depot)

(personHas person1 food)
(personHas person1 medicine)
(personHas person3 food)
(personHas person4 food)
(personHas person5 food)

	))
)
