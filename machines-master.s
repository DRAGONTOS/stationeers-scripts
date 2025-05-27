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
l r2 elecpr Activate
l r3 pipepr Activate

s autoic On r1
s elecic On r2
s pipeic On r1
j main
