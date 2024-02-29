begin_version
3
end_version
begin_metric
1
end_metric
14
begin_variable
var0
-1
6
Atom iscarrierinlocation(carrier1, depot)
Atom iscarrierinlocation(carrier1, loc1)
Atom iscarrierinlocation(carrier1, loc2)
Atom iscarrierinlocation(carrier1, loc3)
Atom iscarrierinlocation(carrier1, loc4)
Atom iscarrierinlocation(carrier1, loc5)
end_variable
begin_variable
var1
-1
6
Atom dronehasbox(drone1, crate1)
Atom isboxincarrier(carrier1, crate1)
Atom isboxinlocation(crate1, depot)
Atom isboxinlocation(crate1, loc1)
Atom isboxinlocation(crate1, loc4)
Atom isboxinlocation(crate1, loc5)
end_variable
begin_variable
var2
-1
6
Atom dronehasbox(drone1, crate2)
Atom isboxincarrier(carrier1, crate2)
Atom isboxinlocation(crate2, depot)
Atom isboxinlocation(crate2, loc1)
Atom isboxinlocation(crate2, loc4)
Atom isboxinlocation(crate2, loc5)
end_variable
begin_variable
var3
-1
6
Atom dronehasbox(drone1, crate3)
Atom isboxincarrier(carrier1, crate3)
Atom isboxinlocation(crate3, depot)
Atom isboxinlocation(crate3, loc1)
Atom isboxinlocation(crate3, loc4)
Atom isboxinlocation(crate3, loc5)
end_variable
begin_variable
var4
-1
6
Atom dronehasbox(drone1, crate4)
Atom isboxincarrier(carrier1, crate4)
Atom isboxinlocation(crate4, depot)
Atom isboxinlocation(crate4, loc1)
Atom isboxinlocation(crate4, loc4)
Atom isboxinlocation(crate4, loc5)
end_variable
begin_variable
var5
-1
6
Atom dronehasbox(drone1, crate5)
Atom isboxincarrier(carrier1, crate5)
Atom isboxinlocation(crate5, depot)
Atom isboxinlocation(crate5, loc1)
Atom isboxinlocation(crate5, loc4)
Atom isboxinlocation(crate5, loc5)
end_variable
begin_variable
var6
-1
5
Atom carrierhasboxes(carrier1, num0)
Atom carrierhasboxes(carrier1, num1)
Atom carrierhasboxes(carrier1, num2)
Atom carrierhasboxes(carrier1, num3)
Atom carrierhasboxes(carrier1, num4)
end_variable
begin_variable
var7
-1
2
Atom isdronefree(drone1)
NegatedAtom isdronefree(drone1)
end_variable
begin_variable
var8
-1
6
Atom isdroneinlocation(drone1, depot)
Atom isdroneinlocation(drone1, loc1)
Atom isdroneinlocation(drone1, loc2)
Atom isdroneinlocation(drone1, loc3)
Atom isdroneinlocation(drone1, loc4)
Atom isdroneinlocation(drone1, loc5)
end_variable
begin_variable
var9
-1
2
Atom personhas(person1, medicine)
NegatedAtom personhas(person1, medicine)
end_variable
begin_variable
var10
-1
2
Atom personhas(person5, food)
NegatedAtom personhas(person5, food)
end_variable
begin_variable
var11
-1
2
Atom personhas(person4, food)
NegatedAtom personhas(person4, food)
end_variable
begin_variable
var12
-1
2
Atom personhas(person3, food)
NegatedAtom personhas(person3, food)
end_variable
begin_variable
var13
-1
2
Atom personhas(person1, food)
NegatedAtom personhas(person1, food)
end_variable
1
begin_mutex_group
6
1 0
2 0
3 0
4 0
5 0
7 0
end_mutex_group
begin_state
0
2
2
2
2
2
0
0
0
1
1
1
1
1
end_state
begin_goal
6
8 0
9 0
10 0
11 0
12 0
13 0
end_goal
330
begin_operator
deliverbox drone1 crate1 food person1 loc1
1
8 1
3
0 1 0 3
0 7 -1 0
0 13 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate1 food person2 loc4
1
8 4
2
0 1 0 4
0 7 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate1 food person3 loc1
1
8 1
3
0 1 0 3
0 7 -1 0
0 12 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate1 food person4 loc5
1
8 5
3
0 1 0 5
0 7 -1 0
0 11 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate1 food person5 loc4
1
8 4
3
0 1 0 4
0 7 -1 0
0 10 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate2 food person1 loc1
1
8 1
3
0 2 0 3
0 7 -1 0
0 13 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate2 food person2 loc4
1
8 4
2
0 2 0 4
0 7 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate2 food person3 loc1
1
8 1
3
0 2 0 3
0 7 -1 0
0 12 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate2 food person4 loc5
1
8 5
3
0 2 0 5
0 7 -1 0
0 11 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate2 food person5 loc4
1
8 4
3
0 2 0 4
0 7 -1 0
0 10 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate3 food person1 loc1
1
8 1
3
0 3 0 3
0 7 -1 0
0 13 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate3 food person2 loc4
1
8 4
2
0 3 0 4
0 7 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate3 food person3 loc1
1
8 1
3
0 3 0 3
0 7 -1 0
0 12 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate3 food person4 loc5
1
8 5
3
0 3 0 5
0 7 -1 0
0 11 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate3 food person5 loc4
1
8 4
3
0 3 0 4
0 7 -1 0
0 10 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate4 food person1 loc1
1
8 1
3
0 4 0 3
0 7 -1 0
0 13 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate4 food person2 loc4
1
8 4
2
0 4 0 4
0 7 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate4 food person3 loc1
1
8 1
3
0 4 0 3
0 7 -1 0
0 12 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate4 food person4 loc5
1
8 5
3
0 4 0 5
0 7 -1 0
0 11 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate4 food person5 loc4
1
8 4
3
0 4 0 4
0 7 -1 0
0 10 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate5 medicine person1 loc1
1
8 1
3
0 5 0 3
0 7 -1 0
0 9 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate5 medicine person2 loc4
1
8 4
2
0 5 0 4
0 7 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate5 medicine person3 loc1
1
8 1
2
0 5 0 3
0 7 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate5 medicine person4 loc5
1
8 5
2
0 5 0 5
0 7 -1 0
1
end_operator
begin_operator
deliverbox drone1 crate5 medicine person5 loc4
1
8 4
2
0 5 0 4
0 7 -1 0
1
end_operator
begin_operator
movecarrier drone1 carrier1 depot loc1
1
7 0
2
0 0 0 1
0 8 0 1
223
end_operator
begin_operator
movecarrier drone1 carrier1 depot loc2
1
7 0
2
0 0 0 2
0 8 0 2
68
end_operator
begin_operator
movecarrier drone1 carrier1 depot loc3
1
7 0
2
0 0 0 3
0 8 0 3
182
end_operator
begin_operator
movecarrier drone1 carrier1 depot loc4
1
7 0
2
0 0 0 4
0 8 0 4
131
end_operator
begin_operator
movecarrier drone1 carrier1 depot loc5
1
7 0
2
0 0 0 5
0 8 0 5
154
end_operator
begin_operator
movecarrier drone1 carrier1 loc1 depot
1
7 0
2
0 0 1 0
0 8 1 0
223
end_operator
begin_operator
movecarrier drone1 carrier1 loc1 loc2
1
7 0
2
0 0 1 2
0 8 1 2
189
end_operator
begin_operator
movecarrier drone1 carrier1 loc1 loc3
1
7 0
2
0 0 1 3
0 8 1 3
67
end_operator
begin_operator
movecarrier drone1 carrier1 loc1 loc4
1
7 0
2
0 0 1 4
0 8 1 4
96
end_operator
begin_operator
movecarrier drone1 carrier1 loc1 loc5
1
7 0
2
0 0 1 5
0 8 1 5
74
end_operator
begin_operator
movecarrier drone1 carrier1 loc2 depot
1
7 0
2
0 0 2 0
0 8 2 0
68
end_operator
begin_operator
movecarrier drone1 carrier1 loc2 loc1
1
7 0
2
0 0 2 1
0 8 2 1
189
end_operator
begin_operator
movecarrier drone1 carrier1 loc2 loc3
1
7 0
2
0 0 2 3
0 8 2 3
134
end_operator
begin_operator
movecarrier drone1 carrier1 loc2 loc4
1
7 0
2
0 0 2 4
0 8 2 4
94
end_operator
begin_operator
movecarrier drone1 carrier1 loc2 loc5
1
7 0
2
0 0 2 5
0 8 2 5
115
end_operator
begin_operator
movecarrier drone1 carrier1 loc3 depot
1
7 0
2
0 0 3 0
0 8 3 0
182
end_operator
begin_operator
movecarrier drone1 carrier1 loc3 loc1
1
7 0
2
0 0 3 1
0 8 3 1
67
end_operator
begin_operator
movecarrier drone1 carrier1 loc3 loc2
1
7 0
2
0 0 3 2
0 8 3 2
134
end_operator
begin_operator
movecarrier drone1 carrier1 loc3 loc4
1
7 0
2
0 0 3 4
0 8 3 4
55
end_operator
begin_operator
movecarrier drone1 carrier1 loc3 loc5
1
7 0
2
0 0 3 5
0 8 3 5
34
end_operator
begin_operator
movecarrier drone1 carrier1 loc4 depot
1
7 0
2
0 0 4 0
0 8 4 0
131
end_operator
begin_operator
movecarrier drone1 carrier1 loc4 loc1
1
7 0
2
0 0 4 1
0 8 4 1
96
end_operator
begin_operator
movecarrier drone1 carrier1 loc4 loc2
1
7 0
2
0 0 4 2
0 8 4 2
94
end_operator
begin_operator
movecarrier drone1 carrier1 loc4 loc3
1
7 0
2
0 0 4 3
0 8 4 3
55
end_operator
begin_operator
movecarrier drone1 carrier1 loc4 loc5
1
7 0
2
0 0 4 5
0 8 4 5
24
end_operator
begin_operator
movecarrier drone1 carrier1 loc5 depot
1
7 0
2
0 0 5 0
0 8 5 0
154
end_operator
begin_operator
movecarrier drone1 carrier1 loc5 loc1
1
7 0
2
0 0 5 1
0 8 5 1
74
end_operator
begin_operator
movecarrier drone1 carrier1 loc5 loc2
1
7 0
2
0 0 5 2
0 8 5 2
115
end_operator
begin_operator
movecarrier drone1 carrier1 loc5 loc3
1
7 0
2
0 0 5 3
0 8 5 3
34
end_operator
begin_operator
movecarrier drone1 carrier1 loc5 loc4
1
7 0
2
0 0 5 4
0 8 5 4
24
end_operator
begin_operator
movedrone drone1 depot loc1
0
1
0 8 0 1
223
end_operator
begin_operator
movedrone drone1 depot loc2
0
1
0 8 0 2
68
end_operator
begin_operator
movedrone drone1 depot loc3
0
1
0 8 0 3
182
end_operator
begin_operator
movedrone drone1 depot loc4
0
1
0 8 0 4
131
end_operator
begin_operator
movedrone drone1 depot loc5
0
1
0 8 0 5
154
end_operator
begin_operator
movedrone drone1 loc1 depot
0
1
0 8 1 0
223
end_operator
begin_operator
movedrone drone1 loc1 loc2
0
1
0 8 1 2
189
end_operator
begin_operator
movedrone drone1 loc1 loc3
0
1
0 8 1 3
67
end_operator
begin_operator
movedrone drone1 loc1 loc4
0
1
0 8 1 4
96
end_operator
begin_operator
movedrone drone1 loc1 loc5
0
1
0 8 1 5
74
end_operator
begin_operator
movedrone drone1 loc2 depot
0
1
0 8 2 0
68
end_operator
begin_operator
movedrone drone1 loc2 loc1
0
1
0 8 2 1
189
end_operator
begin_operator
movedrone drone1 loc2 loc3
0
1
0 8 2 3
134
end_operator
begin_operator
movedrone drone1 loc2 loc4
0
1
0 8 2 4
94
end_operator
begin_operator
movedrone drone1 loc2 loc5
0
1
0 8 2 5
115
end_operator
begin_operator
movedrone drone1 loc3 depot
0
1
0 8 3 0
182
end_operator
begin_operator
movedrone drone1 loc3 loc1
0
1
0 8 3 1
67
end_operator
begin_operator
movedrone drone1 loc3 loc2
0
1
0 8 3 2
134
end_operator
begin_operator
movedrone drone1 loc3 loc4
0
1
0 8 3 4
55
end_operator
begin_operator
movedrone drone1 loc3 loc5
0
1
0 8 3 5
34
end_operator
begin_operator
movedrone drone1 loc4 depot
0
1
0 8 4 0
131
end_operator
begin_operator
movedrone drone1 loc4 loc1
0
1
0 8 4 1
96
end_operator
begin_operator
movedrone drone1 loc4 loc2
0
1
0 8 4 2
94
end_operator
begin_operator
movedrone drone1 loc4 loc3
0
1
0 8 4 3
55
end_operator
begin_operator
movedrone drone1 loc4 loc5
0
1
0 8 4 5
24
end_operator
begin_operator
movedrone drone1 loc5 depot
0
1
0 8 5 0
154
end_operator
begin_operator
movedrone drone1 loc5 loc1
0
1
0 8 5 1
74
end_operator
begin_operator
movedrone drone1 loc5 loc2
0
1
0 8 5 2
115
end_operator
begin_operator
movedrone drone1 loc5 loc3
0
1
0 8 5 3
34
end_operator
begin_operator
movedrone drone1 loc5 loc4
0
1
0 8 5 4
24
end_operator
begin_operator
pickbox drone1 crate1 depot
1
8 0
2
0 1 2 0
0 7 0 1
1
end_operator
begin_operator
pickbox drone1 crate2 depot
1
8 0
2
0 2 2 0
0 7 0 1
1
end_operator
begin_operator
pickbox drone1 crate3 depot
1
8 0
2
0 3 2 0
0 7 0 1
1
end_operator
begin_operator
pickbox drone1 crate4 depot
1
8 0
2
0 4 2 0
0 7 0 1
1
end_operator
begin_operator
pickbox drone1 crate5 depot
1
8 0
2
0 5 2 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate1 num1 num0
2
0 0
8 0
3
0 6 1 0
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate1 num2 num1
2
0 0
8 0
3
0 6 2 1
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate1 num3 num2
2
0 0
8 0
3
0 6 3 2
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate1 num4 num3
2
0 0
8 0
3
0 6 4 3
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate2 num1 num0
2
0 0
8 0
3
0 6 1 0
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate2 num2 num1
2
0 0
8 0
3
0 6 2 1
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate2 num3 num2
2
0 0
8 0
3
0 6 3 2
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate2 num4 num3
2
0 0
8 0
3
0 6 4 3
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate3 num1 num0
2
0 0
8 0
3
0 6 1 0
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate3 num2 num1
2
0 0
8 0
3
0 6 2 1
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate3 num3 num2
2
0 0
8 0
3
0 6 3 2
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate3 num4 num3
2
0 0
8 0
3
0 6 4 3
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate4 num1 num0
2
0 0
8 0
3
0 6 1 0
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate4 num2 num1
2
0 0
8 0
3
0 6 2 1
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate4 num3 num2
2
0 0
8 0
3
0 6 3 2
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate4 num4 num3
2
0 0
8 0
3
0 6 4 3
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate5 num1 num0
2
0 0
8 0
3
0 6 1 0
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate5 num2 num1
2
0 0
8 0
3
0 6 2 1
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate5 num3 num2
2
0 0
8 0
3
0 6 3 2
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 depot crate5 num4 num3
2
0 0
8 0
3
0 6 4 3
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate1 num1 num0
2
0 1
8 1
3
0 6 1 0
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate1 num2 num1
2
0 1
8 1
3
0 6 2 1
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate1 num3 num2
2
0 1
8 1
3
0 6 3 2
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate1 num4 num3
2
0 1
8 1
3
0 6 4 3
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate2 num1 num0
2
0 1
8 1
3
0 6 1 0
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate2 num2 num1
2
0 1
8 1
3
0 6 2 1
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate2 num3 num2
2
0 1
8 1
3
0 6 3 2
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate2 num4 num3
2
0 1
8 1
3
0 6 4 3
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate3 num1 num0
2
0 1
8 1
3
0 6 1 0
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate3 num2 num1
2
0 1
8 1
3
0 6 2 1
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate3 num3 num2
2
0 1
8 1
3
0 6 3 2
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate3 num4 num3
2
0 1
8 1
3
0 6 4 3
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate4 num1 num0
2
0 1
8 1
3
0 6 1 0
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate4 num2 num1
2
0 1
8 1
3
0 6 2 1
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate4 num3 num2
2
0 1
8 1
3
0 6 3 2
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate4 num4 num3
2
0 1
8 1
3
0 6 4 3
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate5 num1 num0
2
0 1
8 1
3
0 6 1 0
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate5 num2 num1
2
0 1
8 1
3
0 6 2 1
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate5 num3 num2
2
0 1
8 1
3
0 6 3 2
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc1 crate5 num4 num3
2
0 1
8 1
3
0 6 4 3
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate1 num1 num0
2
0 2
8 2
3
0 6 1 0
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate1 num2 num1
2
0 2
8 2
3
0 6 2 1
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate1 num3 num2
2
0 2
8 2
3
0 6 3 2
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate1 num4 num3
2
0 2
8 2
3
0 6 4 3
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate2 num1 num0
2
0 2
8 2
3
0 6 1 0
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate2 num2 num1
2
0 2
8 2
3
0 6 2 1
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate2 num3 num2
2
0 2
8 2
3
0 6 3 2
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate2 num4 num3
2
0 2
8 2
3
0 6 4 3
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate3 num1 num0
2
0 2
8 2
3
0 6 1 0
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate3 num2 num1
2
0 2
8 2
3
0 6 2 1
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate3 num3 num2
2
0 2
8 2
3
0 6 3 2
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate3 num4 num3
2
0 2
8 2
3
0 6 4 3
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate4 num1 num0
2
0 2
8 2
3
0 6 1 0
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate4 num2 num1
2
0 2
8 2
3
0 6 2 1
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate4 num3 num2
2
0 2
8 2
3
0 6 3 2
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate4 num4 num3
2
0 2
8 2
3
0 6 4 3
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate5 num1 num0
2
0 2
8 2
3
0 6 1 0
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate5 num2 num1
2
0 2
8 2
3
0 6 2 1
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate5 num3 num2
2
0 2
8 2
3
0 6 3 2
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc2 crate5 num4 num3
2
0 2
8 2
3
0 6 4 3
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate1 num1 num0
2
0 3
8 3
3
0 6 1 0
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate1 num2 num1
2
0 3
8 3
3
0 6 2 1
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate1 num3 num2
2
0 3
8 3
3
0 6 3 2
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate1 num4 num3
2
0 3
8 3
3
0 6 4 3
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate2 num1 num0
2
0 3
8 3
3
0 6 1 0
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate2 num2 num1
2
0 3
8 3
3
0 6 2 1
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate2 num3 num2
2
0 3
8 3
3
0 6 3 2
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate2 num4 num3
2
0 3
8 3
3
0 6 4 3
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate3 num1 num0
2
0 3
8 3
3
0 6 1 0
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate3 num2 num1
2
0 3
8 3
3
0 6 2 1
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate3 num3 num2
2
0 3
8 3
3
0 6 3 2
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate3 num4 num3
2
0 3
8 3
3
0 6 4 3
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate4 num1 num0
2
0 3
8 3
3
0 6 1 0
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate4 num2 num1
2
0 3
8 3
3
0 6 2 1
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate4 num3 num2
2
0 3
8 3
3
0 6 3 2
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate4 num4 num3
2
0 3
8 3
3
0 6 4 3
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate5 num1 num0
2
0 3
8 3
3
0 6 1 0
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate5 num2 num1
2
0 3
8 3
3
0 6 2 1
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate5 num3 num2
2
0 3
8 3
3
0 6 3 2
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc3 crate5 num4 num3
2
0 3
8 3
3
0 6 4 3
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate1 num1 num0
2
0 4
8 4
3
0 6 1 0
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate1 num2 num1
2
0 4
8 4
3
0 6 2 1
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate1 num3 num2
2
0 4
8 4
3
0 6 3 2
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate1 num4 num3
2
0 4
8 4
3
0 6 4 3
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate2 num1 num0
2
0 4
8 4
3
0 6 1 0
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate2 num2 num1
2
0 4
8 4
3
0 6 2 1
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate2 num3 num2
2
0 4
8 4
3
0 6 3 2
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate2 num4 num3
2
0 4
8 4
3
0 6 4 3
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate3 num1 num0
2
0 4
8 4
3
0 6 1 0
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate3 num2 num1
2
0 4
8 4
3
0 6 2 1
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate3 num3 num2
2
0 4
8 4
3
0 6 3 2
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate3 num4 num3
2
0 4
8 4
3
0 6 4 3
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate4 num1 num0
2
0 4
8 4
3
0 6 1 0
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate4 num2 num1
2
0 4
8 4
3
0 6 2 1
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate4 num3 num2
2
0 4
8 4
3
0 6 3 2
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate4 num4 num3
2
0 4
8 4
3
0 6 4 3
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate5 num1 num0
2
0 4
8 4
3
0 6 1 0
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate5 num2 num1
2
0 4
8 4
3
0 6 2 1
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate5 num3 num2
2
0 4
8 4
3
0 6 3 2
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc4 crate5 num4 num3
2
0 4
8 4
3
0 6 4 3
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate1 num1 num0
2
0 5
8 5
3
0 6 1 0
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate1 num2 num1
2
0 5
8 5
3
0 6 2 1
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate1 num3 num2
2
0 5
8 5
3
0 6 3 2
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate1 num4 num3
2
0 5
8 5
3
0 6 4 3
0 1 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate2 num1 num0
2
0 5
8 5
3
0 6 1 0
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate2 num2 num1
2
0 5
8 5
3
0 6 2 1
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate2 num3 num2
2
0 5
8 5
3
0 6 3 2
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate2 num4 num3
2
0 5
8 5
3
0 6 4 3
0 2 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate3 num1 num0
2
0 5
8 5
3
0 6 1 0
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate3 num2 num1
2
0 5
8 5
3
0 6 2 1
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate3 num3 num2
2
0 5
8 5
3
0 6 3 2
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate3 num4 num3
2
0 5
8 5
3
0 6 4 3
0 3 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate4 num1 num0
2
0 5
8 5
3
0 6 1 0
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate4 num2 num1
2
0 5
8 5
3
0 6 2 1
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate4 num3 num2
2
0 5
8 5
3
0 6 3 2
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate4 num4 num3
2
0 5
8 5
3
0 6 4 3
0 4 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate5 num1 num0
2
0 5
8 5
3
0 6 1 0
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate5 num2 num1
2
0 5
8 5
3
0 6 2 1
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate5 num3 num2
2
0 5
8 5
3
0 6 3 2
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
pickboxfromcarrier drone1 carrier1 loc5 crate5 num4 num3
2
0 5
8 5
3
0 6 4 3
0 5 1 0
0 7 0 1
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate1 num0 num1
2
0 0
8 0
3
0 6 0 1
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate1 num1 num2
2
0 0
8 0
3
0 6 1 2
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate1 num2 num3
2
0 0
8 0
3
0 6 2 3
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate1 num3 num4
2
0 0
8 0
3
0 6 3 4
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate2 num0 num1
2
0 0
8 0
3
0 6 0 1
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate2 num1 num2
2
0 0
8 0
3
0 6 1 2
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate2 num2 num3
2
0 0
8 0
3
0 6 2 3
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate2 num3 num4
2
0 0
8 0
3
0 6 3 4
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate3 num0 num1
2
0 0
8 0
3
0 6 0 1
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate3 num1 num2
2
0 0
8 0
3
0 6 1 2
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate3 num2 num3
2
0 0
8 0
3
0 6 2 3
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate3 num3 num4
2
0 0
8 0
3
0 6 3 4
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate4 num0 num1
2
0 0
8 0
3
0 6 0 1
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate4 num1 num2
2
0 0
8 0
3
0 6 1 2
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate4 num2 num3
2
0 0
8 0
3
0 6 2 3
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate4 num3 num4
2
0 0
8 0
3
0 6 3 4
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate5 num0 num1
2
0 0
8 0
3
0 6 0 1
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate5 num1 num2
2
0 0
8 0
3
0 6 1 2
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate5 num2 num3
2
0 0
8 0
3
0 6 2 3
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 depot crate5 num3 num4
2
0 0
8 0
3
0 6 3 4
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate1 num0 num1
2
0 1
8 1
3
0 6 0 1
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate1 num1 num2
2
0 1
8 1
3
0 6 1 2
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate1 num2 num3
2
0 1
8 1
3
0 6 2 3
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate1 num3 num4
2
0 1
8 1
3
0 6 3 4
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate2 num0 num1
2
0 1
8 1
3
0 6 0 1
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate2 num1 num2
2
0 1
8 1
3
0 6 1 2
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate2 num2 num3
2
0 1
8 1
3
0 6 2 3
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate2 num3 num4
2
0 1
8 1
3
0 6 3 4
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate3 num0 num1
2
0 1
8 1
3
0 6 0 1
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate3 num1 num2
2
0 1
8 1
3
0 6 1 2
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate3 num2 num3
2
0 1
8 1
3
0 6 2 3
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate3 num3 num4
2
0 1
8 1
3
0 6 3 4
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate4 num0 num1
2
0 1
8 1
3
0 6 0 1
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate4 num1 num2
2
0 1
8 1
3
0 6 1 2
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate4 num2 num3
2
0 1
8 1
3
0 6 2 3
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate4 num3 num4
2
0 1
8 1
3
0 6 3 4
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate5 num0 num1
2
0 1
8 1
3
0 6 0 1
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate5 num1 num2
2
0 1
8 1
3
0 6 1 2
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate5 num2 num3
2
0 1
8 1
3
0 6 2 3
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc1 crate5 num3 num4
2
0 1
8 1
3
0 6 3 4
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate1 num0 num1
2
0 2
8 2
3
0 6 0 1
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate1 num1 num2
2
0 2
8 2
3
0 6 1 2
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate1 num2 num3
2
0 2
8 2
3
0 6 2 3
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate1 num3 num4
2
0 2
8 2
3
0 6 3 4
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate2 num0 num1
2
0 2
8 2
3
0 6 0 1
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate2 num1 num2
2
0 2
8 2
3
0 6 1 2
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate2 num2 num3
2
0 2
8 2
3
0 6 2 3
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate2 num3 num4
2
0 2
8 2
3
0 6 3 4
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate3 num0 num1
2
0 2
8 2
3
0 6 0 1
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate3 num1 num2
2
0 2
8 2
3
0 6 1 2
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate3 num2 num3
2
0 2
8 2
3
0 6 2 3
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate3 num3 num4
2
0 2
8 2
3
0 6 3 4
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate4 num0 num1
2
0 2
8 2
3
0 6 0 1
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate4 num1 num2
2
0 2
8 2
3
0 6 1 2
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate4 num2 num3
2
0 2
8 2
3
0 6 2 3
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate4 num3 num4
2
0 2
8 2
3
0 6 3 4
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate5 num0 num1
2
0 2
8 2
3
0 6 0 1
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate5 num1 num2
2
0 2
8 2
3
0 6 1 2
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate5 num2 num3
2
0 2
8 2
3
0 6 2 3
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc2 crate5 num3 num4
2
0 2
8 2
3
0 6 3 4
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate1 num0 num1
2
0 3
8 3
3
0 6 0 1
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate1 num1 num2
2
0 3
8 3
3
0 6 1 2
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate1 num2 num3
2
0 3
8 3
3
0 6 2 3
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate1 num3 num4
2
0 3
8 3
3
0 6 3 4
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate2 num0 num1
2
0 3
8 3
3
0 6 0 1
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate2 num1 num2
2
0 3
8 3
3
0 6 1 2
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate2 num2 num3
2
0 3
8 3
3
0 6 2 3
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate2 num3 num4
2
0 3
8 3
3
0 6 3 4
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate3 num0 num1
2
0 3
8 3
3
0 6 0 1
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate3 num1 num2
2
0 3
8 3
3
0 6 1 2
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate3 num2 num3
2
0 3
8 3
3
0 6 2 3
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate3 num3 num4
2
0 3
8 3
3
0 6 3 4
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate4 num0 num1
2
0 3
8 3
3
0 6 0 1
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate4 num1 num2
2
0 3
8 3
3
0 6 1 2
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate4 num2 num3
2
0 3
8 3
3
0 6 2 3
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate4 num3 num4
2
0 3
8 3
3
0 6 3 4
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate5 num0 num1
2
0 3
8 3
3
0 6 0 1
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate5 num1 num2
2
0 3
8 3
3
0 6 1 2
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate5 num2 num3
2
0 3
8 3
3
0 6 2 3
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc3 crate5 num3 num4
2
0 3
8 3
3
0 6 3 4
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate1 num0 num1
2
0 4
8 4
3
0 6 0 1
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate1 num1 num2
2
0 4
8 4
3
0 6 1 2
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate1 num2 num3
2
0 4
8 4
3
0 6 2 3
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate1 num3 num4
2
0 4
8 4
3
0 6 3 4
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate2 num0 num1
2
0 4
8 4
3
0 6 0 1
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate2 num1 num2
2
0 4
8 4
3
0 6 1 2
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate2 num2 num3
2
0 4
8 4
3
0 6 2 3
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate2 num3 num4
2
0 4
8 4
3
0 6 3 4
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate3 num0 num1
2
0 4
8 4
3
0 6 0 1
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate3 num1 num2
2
0 4
8 4
3
0 6 1 2
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate3 num2 num3
2
0 4
8 4
3
0 6 2 3
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate3 num3 num4
2
0 4
8 4
3
0 6 3 4
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate4 num0 num1
2
0 4
8 4
3
0 6 0 1
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate4 num1 num2
2
0 4
8 4
3
0 6 1 2
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate4 num2 num3
2
0 4
8 4
3
0 6 2 3
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate4 num3 num4
2
0 4
8 4
3
0 6 3 4
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate5 num0 num1
2
0 4
8 4
3
0 6 0 1
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate5 num1 num2
2
0 4
8 4
3
0 6 1 2
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate5 num2 num3
2
0 4
8 4
3
0 6 2 3
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc4 crate5 num3 num4
2
0 4
8 4
3
0 6 3 4
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate1 num0 num1
2
0 5
8 5
3
0 6 0 1
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate1 num1 num2
2
0 5
8 5
3
0 6 1 2
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate1 num2 num3
2
0 5
8 5
3
0 6 2 3
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate1 num3 num4
2
0 5
8 5
3
0 6 3 4
0 1 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate2 num0 num1
2
0 5
8 5
3
0 6 0 1
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate2 num1 num2
2
0 5
8 5
3
0 6 1 2
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate2 num2 num3
2
0 5
8 5
3
0 6 2 3
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate2 num3 num4
2
0 5
8 5
3
0 6 3 4
0 2 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate3 num0 num1
2
0 5
8 5
3
0 6 0 1
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate3 num1 num2
2
0 5
8 5
3
0 6 1 2
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate3 num2 num3
2
0 5
8 5
3
0 6 2 3
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate3 num3 num4
2
0 5
8 5
3
0 6 3 4
0 3 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate4 num0 num1
2
0 5
8 5
3
0 6 0 1
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate4 num1 num2
2
0 5
8 5
3
0 6 1 2
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate4 num2 num3
2
0 5
8 5
3
0 6 2 3
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate4 num3 num4
2
0 5
8 5
3
0 6 3 4
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate5 num0 num1
2
0 5
8 5
3
0 6 0 1
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate5 num1 num2
2
0 5
8 5
3
0 6 1 2
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate5 num2 num3
2
0 5
8 5
3
0 6 2 3
0 5 0 1
0 7 -1 0
1
end_operator
begin_operator
putboxoncarrier drone1 carrier1 loc5 crate5 num3 num4
2
0 5
8 5
3
0 6 3 4
0 5 0 1
0 7 -1 0
1
end_operator
0
