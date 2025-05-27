define air HASH("StructureAirConditioner")
define analyzer HASH("StructurePipeAnalysizer")
define evap HASH("StructureEvaporationChamber")
define conden HASH("StructureCondensationChamber")

sb door On 1
sb air On 1

main:
yield
lb r1 analyzer Temperature 0
bgtal r1 269 cooling
bltal r1 269 coolingoff
sleep 2
sb door On 0
j main

cooling:
sbn air HASH("aircool") On 1
sb evap On 1
sb conden On 0
j ra

coolingoff:
sbn air HASH("aircool") On 0
sb evap On 0
sb conden On 0
j main
