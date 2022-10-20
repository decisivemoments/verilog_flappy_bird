# display: 160 * 120
.eqv ACCE 4
.eqv JPV 50
.eqv GAP 24
.eqv BIRDX 70
.eqv BIRDW 8
.eqv PIPEGAP 50
.eqv PIPEWIDTH 16
.eqv PIPV 10
.eqv RANDA 1013
.eqv RANDB 853
.eqv FRAMEC 1000
# register assign
### s10: random between 30-93
### s11: random num
### t3-t6: argument
### REG1 REG2 REG3 REG4 s1 a5 a6 REG5 s9: mid register
# register assign end
# memory assign
### 0-39: pipe data
### 60-63 render address
### 64-67 buffer address
# memory assign end
.eqv FPP a1
.eqv VELO a2
.eqv POS a3
.eqv STATE s2
.eqv RED s3
.eqv GREEN s4
.eqv BLACK s5
.eqv REG1 t0
.eqv REG2 t1
.eqv REG3 t2
.eqv REG4 s0
.eqv REG5 s8
.eqv REG6 s6
.eqv REG7 s7
.eqv REG8 s9
.eqv AUG1 sp
.eqv AUG2 gp
.eqv AUG3 tp
.eqv AUG4 a4
.eqv AUG5 a5

.text
main:
# initialize
addi VELO, zero, 0
addi s11, zero, 0
addi FPP, zero, 0
## red init F000
addi REG1, zero, 15
slli REG1, REG1, 12
slli RED, REG1, 16
or RED, RED, REG1
## green init 0F00
addi REG1, zero, 15
slli REG1, REG1, 8
slli GREEN, REG1, 16
or GREEN, GREEN, REG1
## black init FFF0
addi REG1, zero, 15
slli REG1, REG1, 4
slli REG2, REG1, 8
slli REG3, REG1, 4
or REG1, REG1, REG2
or REG1, REG1, REG3
slli BLACK, REG1, 16
or BLACK, BLACK, REG1
## render init 10000
addi REG1, zero, 1
slli REG1, REG1, 16
sw REG1, 60(zero)
## buffer init 20000
addi REG1, zero, 2
slli REG1, REG1, 16
sw REG1, 64(zero)
# initialize end

loop:
# frame control
addi REG1, zero, 0
addi REG3, zero, 0
addi REG2, zero, FRAMEC
frameouterloop:
addi REG3, REG3, 1
addi REG1, zero, 0
frameloop:
addi REG1, REG1, 1
bne REG1, REG2, frameloop
bne REG3, REG2, frameouterloop
# frame control end

# data process
addi REG1, zero, 1
beq STATE, REG1, gpdp
addi REG1, zero, 0
beq STATE, REG1, mmdp
j dpend
mmdp:
addi s11, s11, 1
j dpend
gpdp:
### velocity and position update
addi VELO, VELO, ACCE
add POS, POS, VELO
### pipe update
addi REG4, zero, 0
pipupdloop:
lw REG2, 0(REG4)
addi REG3, zero, PIPV
sub REG2, REG2, REG3
sw REG2, 0(REG4)
addi REG4, REG4, 8
#### pipe clear and init
srli REG5, FPP, 3
bne REG5, REG4, pipclrout
slti REG5, REG2, -20
beq REG5, zero, pipclrout
##### clear
jal rand
andi s10, s11, 63
addi s10, s10, 30
addi REG3, REG4, -8
addi REG2, REG2, 250
lw REG2, 0(REG3)
addi REG3, REG3, 4
lw s10, 0(REG3)
##### pointer move
addi FPP, FPP, 1
slti REG3, FPP, 5
bne REG3, zero, pipclrout
addi FPP, FPP, -5
#### pipe clear and init end
pipclrout:
addi REG3, zero, 40
bne REG3, REG4, pipupdloop
### pipe update end
### collision detect
##### ceiling detect
slti REG1, POS, 0
bne REG1, zero, collision
##### floor detect
addi REG2, zero, 120
addi REG3, zero, BIRDW
sub REG2, REG2, REG3
slt REG1, POS, REG2
beq REG1, zero, collision
##### pipe detect
addi REG1, zero, 0
pipdeloop:
####### X axis
lw REG2, 0(REG1)
addi REG3, zero, BIRDX
addi REG3, REG3, BIRDW
slt REG4, REG3, REG2
beq REG4, zero, pdloopend
addi REG2, REG2, PIPEWIDTH
addi REG3, zero, BIRDX
slt REG4, REG2, REG3
beq REG4, zero, pdloopend
####### Y axis
addi REG1, REG1, 4
lw REG2, 0(REG1)
slt REG4, POS, REG2
beq REG4, zero, collision
addi REG2, REG2, GAP
add REG3, zero, POS
slt REG4, REG2, REG3
beq REG4, zero, collision
addi REG1, REG1, 4
j pdloopendf
pdloopend:
addi REG1, REG1, 8
pdloopendf:
addi REG3, zero, 40
bne REG1, REG3, pipdeloop
j dpend
##### collision process
collision:
addi STATE, zero, 2
dpend:
# data process end

# rendering
## double buffer
### background render
add AUG1, zero, BLACK
addi AUG2, zero, 0
addi AUG3, zero, 0
addi AUG4, zero, 160
addi AUG5, zero, 120
jal drawRect
### bird render
add AUG1, zero, RED
addi AUG2, zero, BIRDX
add AUG3, zero, POS
addi AUG4, AUG2, BIRDW
addi AUG5, AUG3, BIRDW
jal drawRect
### pipe render
add AUG1, zero, GREEN
addi REG5, zero, 0
piprendloop:
#### upper pipe
lw AUG2, 0(REG5)
addi AUG4, AUG2, PIPEWIDTH
addi AUG3, zero, 0
addi REG5, REG5, 4
lw AUG5, 0(REG5)
jal drawRect
#### lower pipe
addi AUG3, AUG5, PIPEGAP
addi AUG5, zero, 120
jal drawRect
addi REG5, REG5, 4
#### loop
addi REG6, zero, 40
bne REG5, REG6, piprendloop
## flip
addi REG4, zero, 320
addi REG3, zero, 120
addi REG1, zero, 0
addi REG2, zero, 0
flipouterloop:
addi REG1, zero, 0
flipinnerloop:
### load
mul REG5, REG1, REG4
add REG5, REG5, REG2
lw REG6, 64(zero)
or REG8, REG5, REG6
lw REG7, 0(REG8)
### save
lw REG6, 60(zero)
or REG8, REG5, REG6
sw REG7 0(REG8)
### load-save end
addi REG1, REG1, 4
bne REG1, REG4, flipinnerloop
addi REG2, REG2, 1
bne REG2, REG3, flipouterloop
# rendering end

# input process
bne t5, zero, inputout
beq t6, zero, inputout
### input detected
addi REG1, zero, 1
beq STATE, REG1, gpip
addi REG1, zero, 0
beq STATE, REG1, mmip
j ipend
mmip:
### random initialize
jal rand
jal rand
jal rand
### change state
addi STATE, zero, 1
### initialize pipe
addi REG3, zero, 0
addi REG2, zero, 180
pipinitloop:
##### x position
sw REG2, 0(REG3)
addi REG2, REG2, PIPEGAP
##### y position
addi REG3, REG3, 4
jal rand
andi s10, s11, 63
addi s10, s10, 30
sw s10, 0(REG3)
addi REG3, REG3, 4
##### loop end
addi REG4, zero, 40
bne REG4, REG3, pipinitloop
### initialize pipe end
j ipend
gpip:
addi VELO, zero, JPV
ipend:
### save current t6 state
inputout:
add t5, zero, t6
### t6 clear
addi t6, zero, 0
# input process end
j loop
# stop
addi a7, zero, 10
ecall

rand:
addi REG1, zero, RANDA
mul s11, s11, REG1
addi s11, s11, RANDB
ret

# AUG1: color
# AUG2 x
# AUG3 y
# AUG4 x-end
# AUG5 y-end
drawRect:
add REG2, zero, AUG3
rectouterloop:
add REG1, zero, AUG2
rectinnerloop:
sub REG3, AUG4, AUG2
mul REG3, REG2, REG3
add REG3, REG3, REG1
lw REG4, 64
or REG4, REG3, REG4
sw AUG1, 0(REG4)

addi REG1, REG1, 4
slli REG3, AUG4, 1
bne REG1, REG3, rectinnerloop
addi REG2, REG2, 1
bne REG2, AUG5, rectouterloop
ret
