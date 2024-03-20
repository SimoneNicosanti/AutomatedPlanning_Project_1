(define (problem drone_problem_d2_r2_l5_p5_c5_g5_ct2)
(:domain EmergencyServiceLogisticDomain)
(:objects
	drone1 - Drone
	drone2 - Drone
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
	carrier2 - Carrier
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
(isDroneInLocation drone2 depot)
(isDroneFree drone2)

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
(isCarrierInLocation carrier2 depot)
(carrierHasBoxes carrier2 num0)
(= (fly-cost depot depot) 1)
(= (fly-cost depot loc1) 223)
(= (fly-cost depot loc2) 68)
(= (fly-cost depot loc3) 182)
(= (fly-cost depot loc4) 131)
(= (fly-cost depot loc5) 154)
(= (fly-cost loc1 depot) 223)
(= (fly-cost loc1 loc1) 1)
(= (fly-cost loc1 loc2) 189)
(= (fly-cost loc1 loc3) 67)
(= (fly-cost loc1 loc4) 96)
(= (fly-cost loc1 loc5) 74)
(= (fly-cost loc2 depot) 68)
(= (fly-cost loc2 loc1) 189)
(= (fly-cost loc2 loc2) 1)
(= (fly-cost loc2 loc3) 134)
(= (fly-cost loc2 loc4) 94)
(= (fly-cost loc2 loc5) 115)
(= (fly-cost loc3 depot) 182)
(= (fly-cost loc3 loc1) 67)
(= (fly-cost loc3 loc2) 134)
(= (fly-cost loc3 loc3) 1)
(= (fly-cost loc3 loc4) 55)
(= (fly-cost loc3 loc5) 34)
(= (fly-cost loc4 depot) 131)
(= (fly-cost loc4 loc1) 96)
(= (fly-cost loc4 loc2) 94)
(= (fly-cost loc4 loc3) 55)
(= (fly-cost loc4 loc4) 1)
(= (fly-cost loc4 loc5) 24)
(= (fly-cost loc5 depot) 154)
(= (fly-cost loc5 loc1) 74)
(= (fly-cost loc5 loc2) 115)
(= (fly-cost loc5 loc3) 34)
(= (fly-cost loc5 loc4) 24)
(= (fly-cost loc5 loc5) 1)

(= (total-cost) 0)
)
(:goal (and
(isDroneInLocation drone1 depot)
(isDroneInLocation drone2 depot)

(personHas person1 food)
(personHas person1 medicine)
(personHas person3 food)
(personHas person4 food)
(personHas person5 food)

	))
)
