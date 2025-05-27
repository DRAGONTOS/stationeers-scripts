define generator HASH("StructureGasGenerator")
define air -2087593337
alias led d0

alias powerpercent r3

lb powerpercent battery Charge 0
s led Mode 1

main:
lb powerpercent battery Charge 0
s led Setting powerpercent
blt powerpercent 1800000 genon
bgt powerpercent 7200000 genoff
yield
j main

genon:
sb generator On 1
sb air On 1
j main

genoff:
sb generator On 0
sb air On 0
j main
