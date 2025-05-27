alias elecpr  d1
alias pipepr  d2
alias toolpr  d3

define door -324331872
define stacker 1585641623

s autopr On  1
s elecpr On  1
s pipepr On  1
s toolpr On  1
sb door Open 1
sb stacker On 1

main:
yield
l r1 autopr Activate
beqal r1 1 startautopr
beq r1 1 machinestop
l r2 elecpr Activate
beqal r2 1 startelecpr
beq r2 1 machinestop
l r3 pipepr Activate
beqal r3 1 startpipepr
beq r3 1 machinestop
l r4 toolpr Activate
beqal r4 1 starttoolpr
beq r4 1 machinestop
lbs r10 door 0 Open 0
beq r10 1 machinestop
lbs r11 stacker 0 On 0
beq r11 1 machinestop
j main

startautopr:
l r1 autopr Activate
yield

startelecpr:
l r2 elecpr Activate
yield

startpipepr:
l r3 pipepr Activate
yield

starttoolpr:
l r4 toolpr Activate
yield

machinestop:
sleep 20
l r1 autopr Activate
s autopr On r1
l r1 elecpr Activate
s elecpr On r1
l r1 pipepr Activate
s pipepr On r1
l r1 toolpr Activate
s toolpr On r1
sb door Open 0
sb stacker On 0

j main
