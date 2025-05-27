alias furnacepressure r1

define tankpump 1310794736
define filtration -348054045

main:
s db Setting r1
l furnacepressure icefurnace Pressure
bgtz furnacepressure fuel
sleep 120
sbn tankpump HASH("tankpump") On 0
sb filtration On 0
sleep 3
j main

fuel:
sbn tankpump HASH("tankpump") On 1
sb filtration On 1
sleep 5
j main
