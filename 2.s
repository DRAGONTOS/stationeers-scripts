alias elecic d1
alias pipeic d2

alias autopr d3
alias elecpr d4
alias pipepr d5

s autoic On 1
s elecic On 1
s pipeic On 1

main:
yield

l r1 autopr Activate
beq r1 1 machine1

l r2 elecpr Activate
beq r1 1 machine2

l r3 pipepr Activate
beq r1 1 machine3

#s autoic On r1
#s elecic On r2
#s pipeic On r1
j main

machine1:
s autoic On 1

machine2:
s elecic On 1

machine3:
s pipeic On 1
