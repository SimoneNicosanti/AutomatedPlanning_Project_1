(define (problem drone_problem_d1_r1_l10_p10_c20_g10_ct2)
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
	crate11 - Box
	crate12 - Box
	crate13 - Box
	crate14 - Box
	crate15 - Box
	crate16 - Box
	crate17 - Box
	crate18 - Box
	crate19 - Box
	crate20 - Box
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
(isPersonInLocation person2 loc4)
(isPersonInLocation person3 loc6)
(isPersonInLocation person4 loc2)
(isPersonInLocation person5 loc4)
(isPersonInLocation person6 loc10)
(isPersonInLocation person7 loc4)
(isPersonInLocation person8 loc4)
(isPersonInLocation person9 loc3)
(isPersonInLocation person10 loc9)

(personHas person2 food)
(personHas person3 food)
(personHas person3 medicine)
(personHas person4 food)
(personHas person4 medicine)
(personHas person5 medicine)
(personHas person7 food)
(personHas person7 medicine)
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
(boxContains crate8 food)
(boxContains crate9 food)
(boxContains crate10 food)
(boxContains crate11 food)
(boxContains crate12 food)
(boxContains crate13 food)
(boxContains crate14 medicine)
(boxContains crate15 medicine)
(boxContains crate16 medicine)
(boxContains crate17 medicine)
(boxContains crate18 medicine)
(boxContains crate19 medicine)
(boxContains crate20 medicine)

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
(isBoxInLocation crate11 depot)
(isBoxInLocation crate12 depot)
(isBoxInLocation crate13 depot)
(isBoxInLocation crate14 depot)
(isBoxInLocation crate15 depot)
(isBoxInLocation crate16 depot)
(isBoxInLocation crate17 depot)
(isBoxInLocation crate18 depot)
(isBoxInLocation crate19 depot)
(isBoxInLocation crate20 depot)

(locationIsDeposit depot)
(isNext num0 num1)
(isNext num1 num2)
(isNext num2 num3)
(isNext num3 num4)

(isCarrierInLocation carrier1 depot)
(carrierHasBoxes carrier1 num0)
(= (fly-cost depot depot) 1)
(= (fly-cost depot loc1) 223)
(= (fly-cost depot loc2) 68)
(= (fly-cost depot loc3) 182)
(= (fly-cost depot loc4) 131)
(= (fly-cost depot loc5) 154)
(= (fly-cost depot loc6) 161)
(= (fly-cost depot loc7) 135)
(= (fly-cost depot loc8) 82)
(= (fly-cost depot loc9) 196)
(= (fly-cost depot loc10) 172)
(= (fly-cost loc1 depot) 223)
(= (fly-cost loc1 loc1) 1)
(= (fly-cost loc1 loc2) 189)
(= (fly-cost loc1 loc3) 67)
(= (fly-cost loc1 loc4) 96)
(= (fly-cost loc1 loc5) 74)
(= (fly-cost loc1 loc6) 69)
(= (fly-cost loc1 loc7) 98)
(= (fly-cost loc1 loc8) 142)
(= (fly-cost loc1 loc9) 84)
(= (fly-cost loc1 loc10) 57)
(= (fly-cost loc2 depot) 68)
(= (fly-cost loc2 loc1) 189)
(= (fly-cost loc2 loc2) 1)
(= (fly-cost loc2 loc3) 134)
(= (fly-cost loc2 loc4) 94)
(= (fly-cost loc2 loc5) 115)
(= (fly-cost loc2 loc6) 140)
(= (fly-cost loc2 loc7) 123)
(= (fly-cost loc2 loc8) 70)
(= (fly-cost loc2 loc9) 188)
(= (fly-cost loc2 loc10) 149)
(= (fly-cost loc3 depot) 182)
(= (fly-cost loc3 loc1) 67)
(= (fly-cost loc3 loc2) 134)
(= (fly-cost loc3 loc3) 1)
(= (fly-cost loc3 loc4) 55)
(= (fly-cost loc3 loc5) 34)
(= (fly-cost loc3 loc6) 72)
(= (fly-cost loc3 loc7) 90)
(= (fly-cost loc3 loc8) 107)
(= (fly-cost loc3 loc9) 119)
(= (fly-cost loc3 loc10) 67)
(= (fly-cost loc4 depot) 131)
(= (fly-cost loc4 loc1) 96)
(= (fly-cost loc4 loc2) 94)
(= (fly-cost loc4 loc3) 55)
(= (fly-cost loc4 loc4) 1)
(= (fly-cost loc4 loc5) 24)
(= (fly-cost loc4 loc6) 51)
(= (fly-cost loc4 loc7) 50)
(= (fly-cost loc4 loc8) 53)
(= (fly-cost loc4 loc9) 105)
(= (fly-cost loc4 loc10) 57)
(= (fly-cost loc5 depot) 154)
(= (fly-cost loc5 loc1) 74)
(= (fly-cost loc5 loc2) 115)
(= (fly-cost loc5 loc3) 34)
(= (fly-cost loc5 loc4) 24)
(= (fly-cost loc5 loc5) 1)
(= (fly-cost loc5 loc6) 46)
(= (fly-cost loc5 loc7) 57)
(= (fly-cost loc5 loc8) 76)
(= (fly-cost loc5 loc9) 98)
(= (fly-cost loc5 loc10) 46)
(= (fly-cost loc6 depot) 161)
(= (fly-cost loc6 loc1) 69)
(= (fly-cost loc6 loc2) 140)
(= (fly-cost loc6 loc3) 72)
(= (fly-cost loc6 loc4) 51)
(= (fly-cost loc6 loc5) 46)
(= (fly-cost loc6 loc6) 1)
(= (fly-cost loc6 loc7) 29)
(= (fly-cost loc6 loc8) 80)
(= (fly-cost loc6 loc9) 54)
(= (fly-cost loc6 loc10) 13)
(= (fly-cost loc7 depot) 135)
(= (fly-cost loc7 loc1) 98)
(= (fly-cost loc7 loc2) 123)
(= (fly-cost loc7 loc3) 90)
(= (fly-cost loc7 loc4) 50)
(= (fly-cost loc7 loc5) 57)
(= (fly-cost loc7 loc6) 29)
(= (fly-cost loc7 loc7) 1)
(= (fly-cost loc7 loc8) 58)
(= (fly-cost loc7 loc9) 65)
(= (fly-cost loc7 loc10) 42)
(= (fly-cost loc8 depot) 82)
(= (fly-cost loc8 loc1) 142)
(= (fly-cost loc8 loc2) 70)
(= (fly-cost loc8 loc3) 107)
(= (fly-cost loc8 loc4) 53)
(= (fly-cost loc8 loc5) 76)
(= (fly-cost loc8 loc6) 80)
(= (fly-cost loc8 loc7) 58)
(= (fly-cost loc8 loc8) 1)
(= (fly-cost loc8 loc9) 122)
(= (fly-cost loc8 loc10) 91)
(= (fly-cost loc9 depot) 196)
(= (fly-cost loc9 loc1) 84)
(= (fly-cost loc9 loc2) 188)
(= (fly-cost loc9 loc3) 119)
(= (fly-cost loc9 loc4) 105)
(= (fly-cost loc9 loc5) 98)
(= (fly-cost loc9 loc6) 54)
(= (fly-cost loc9 loc7) 65)
(= (fly-cost loc9 loc8) 122)
(= (fly-cost loc9 loc9) 1)
(= (fly-cost loc9 loc10) 54)
(= (fly-cost loc10 depot) 172)
(= (fly-cost loc10 loc1) 57)
(= (fly-cost loc10 loc2) 149)
(= (fly-cost loc10 loc3) 67)
(= (fly-cost loc10 loc4) 57)
(= (fly-cost loc10 loc5) 46)
(= (fly-cost loc10 loc6) 13)
(= (fly-cost loc10 loc7) 42)
(= (fly-cost loc10 loc8) 91)
(= (fly-cost loc10 loc9) 54)
(= (fly-cost loc10 loc10) 1)

(= (total-cost) 0)
)
(:goal (and
(isDroneInLocation drone1 depot)

(personHas person1 food)
(personHas person1 medicine)
(personHas person2 medicine)
(personHas person5 food)
(personHas person6 food)
(personHas person6 medicine)
(personHas person8 food)
(personHas person8 medicine)
(personHas person9 food)
(personHas person9 medicine)

	))
)
