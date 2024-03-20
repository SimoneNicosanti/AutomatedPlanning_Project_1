(define (problem drone_problem_d1_r1_l10_p10_c10_g10_ct2)
(:domain EmergencyServiceLogisticDomain)
(:objects
	drone1 - Drone
	depot - Location
	loc1 - Location
	loc2 - Location
	loc3 - Location
	loc4 - Location
	loc5 - Location
	loc6 - Location
	loc7 - Location
	loc8 - Location
	loc9 - Location
	loc10 - Location
	crate1 - Box
	crate2 - Box
	crate3 - Box
	crate4 - Box
	crate5 - Box
	crate6 - Box
	crate7 - Box
	crate8 - Box
	crate9 - Box
	crate10 - Box
	food - Supply
	medicine - Supply
	person1 - Person
	person2 - Person
	person3 - Person
	person4 - Person
	person5 - Person
	person6 - Person
	person7 - Person
	person8 - Person
	person9 - Person
	person10 - Person
	carrier1 - Carrier
	num0 - Num
	num1 - Num
	num2 - Num
	num3 - Num
	num4 - Num
)
(:init
(isPersonInLocation person1 loc6)
(isPersonInLocation person2 loc9)
(isPersonInLocation person3 loc8)
(isPersonInLocation person4 loc2)
(isPersonInLocation person5 loc5)
(isPersonInLocation person6 loc9)
(isPersonInLocation person7 loc5)
(isPersonInLocation person8 loc2)
(isPersonInLocation person9 loc9)
(isPersonInLocation person10 loc6)

(personHas person1 medicine)
(personHas person3 food)
(personHas person3 medicine)
(personHas person4 medicine)
(personHas person5 medicine)
(personHas person7 food)
(personHas person7 medicine)
(personHas person8 medicine)
(personHas person10 food)
(personHas person10 medicine)

(isDroneInLocation drone1 depot)
(isDroneFree drone1)

(boxContains crate1 food)
(boxContains crate2 food)
(boxContains crate3 food)
(boxContains crate4 food)
(boxContains crate5 food)
(boxContains crate6 food)
(boxContains crate7 food)
(boxContains crate8 medicine)
(boxContains crate9 medicine)
(boxContains crate10 medicine)

(isBoxInLocation crate1 depot)
(isBoxInLocation crate2 depot)
(isBoxInLocation crate3 depot)
(isBoxInLocation crate4 depot)
(isBoxInLocation crate5 depot)
(isBoxInLocation crate6 depot)
(isBoxInLocation crate7 depot)
(isBoxInLocation crate8 depot)
(isBoxInLocation crate9 depot)
(isBoxInLocation crate10 depot)

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
(personHas person2 food)
(personHas person2 medicine)
(personHas person4 food)
(personHas person5 food)
(personHas person6 food)
(personHas person6 medicine)
(personHas person8 food)
(personHas person9 food)
(personHas person9 medicine)

	))
)
