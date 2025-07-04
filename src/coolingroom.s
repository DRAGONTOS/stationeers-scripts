define air HASH("StructureAirConditioner")
define analyzer HASH("StructurePipeAnalysizer")
define evap HASH("StructureEvaporationChamber")
define conden HASH("StructureCondensationChamber")
#coolingsensor coolingair maincoolersensor

sb door Open 1
sb air On 1
sb evap On 1
sb conden On 1
sb HASH("StructureIceCrusher") Setting 283

main:
yield
lbn r1 analyzer HASH("maincoolersensor") Temperature 0
bgtal r1 269 cooling
bltal r1 269 coolingoff
lbn r1 door HASH("door1") Open 0
beqal r1 1 door1
lbn r1 door HASH("door2") Open 0
beqal r1 1 door2
lbn r1 analyzer HASH("coolingsensor") Temperature 0
bgtal r1 373 coolingwaste
bltal r1 269 coolingwasteoff
j main

door1:
sleep 3
sbn door HASH("door1") Open 0
j ra

door2:
sleep 3
sbn door HASH("door2") Open 0
j ra

cooling:
sbn air HASH("aircool") On 1
sb evap On 1
sb conden On 1
j ra

coolingwaste:
sbn air HASH("coolingair") On 1
j ra

coolingwasteoff:
sbn air HASH("coolingair") On 0
j ra

coolingoff:
sleep 3
sbn air HASH("aircool") On 0
sb evap On 0
sb conden On 0
j ra
