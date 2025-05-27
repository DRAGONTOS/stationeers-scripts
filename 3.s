alias meow d1

s pipepr On 1
s meow On 1

main:
#yield
l r1 pipepr Activate
beqz r0 machinepending
beq r1 1 machineactive
j main

machinepending:
l r1 pipepr Activate
#yield
beqz r1 machinepending
#yield
beq r1 1 machineactive

machineactive:
l r1 pipepr Activate
#yield
beq r1 1 machineactive
#yield
beqz r1 machinestop

machinestop:
l r1 pipepr Activate
#sleep 10
s meow On 0
s pipepr On 0
s pipepr On 0
s pipepr On 0
