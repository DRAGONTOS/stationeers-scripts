define generator HASH("StructureSolidFuelGenerator")

alias batterymax   r0
alias actualcharge r1
alias maxcharge    r2
alias powerpercent r3

lb batterymax battery Maximum 0

main:
lbn actualcharge battery HASH("owo") Charge 0
div powerpercent actualcharge maxcharge
blt powerpercent 0.20 genon
bgt powerpercent 0.90 genoff
yield
j main

genon:
sb generator On 1
j main

genoff:
sb generator On 0
j main
