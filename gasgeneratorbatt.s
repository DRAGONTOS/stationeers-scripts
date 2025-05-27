define generator 1165997963
define air -2087593337

alias powerpercent r3

lb powerpercent battery Ratio 0

main:
blt powerpercent 0.20 genon
bgt powerpercent 0.90 genoff
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
