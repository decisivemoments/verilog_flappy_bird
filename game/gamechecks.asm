# display: 40 * 30
.eqv ACCE 1
.eqv JPV -3
.eqv GAP 6
.eqv BIRDX 16
.eqv BIRDW 2
.eqv PIPEGAP 14
.eqv PIPEWIDTH 4
.eqv PIPV 2
.eqv RANDA 1013
.eqv RANDB 853
.eqv FRAMEC 2000
# register assign
### s10: random between 30-93
### s11: random num
# register assign end
# memory assign
### 0-39: pipe data
### 60-63 render address
### 64-67 buffer address
# memory assign end
.eqv FPP sp
.eqv VELO gp
.eqv POS tp
.eqv STATE t1
.eqv RED t2
.eqv GREEN s0
.eqv BLACK s9
.eqv REG1 s1
.eqv REG2 s2
.eqv REG3 s3
.eqv REG4 s4
.eqv REG5 s5
.eqv REG6 s6
.eqv REG7 s7
.eqv REG8 s8
.eqv AUG1 a1
.eqv AUG2 a2
.eqv AUG3 a3
.eqv AUG4 a4
.eqv AUG5 a5

.text
main:
# initialize
addi VELO, zero, 0
addi s11, zero, 0
addi FPP, zero, 0
addi POS, zero, 15
addi STATE, zero, 0
addi t5, zero, 0
addi t6, zero, 0
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
## render init 1000
addi REG1, zero, 1
slli REG1, REG1, 12
sw REG1, 60(zero)
## buffer init 2000
addi REG1, zero, 2
slli REG1, REG1, 12
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
#### pipe clear and init
slti REG5, REG2, -6
beq REG5, zero, pipclrout
##### clear
jal rand
add REG3, zero, REG4
addi REG2, REG2, 70
sw REG2, 0(REG3)
addi REG3, REG3, 4
sw s10, 0(REG3)
#### pipe clear and init end
pipclrout:
addi REG4, REG4, 8
addi REG3, zero, 40
bne REG3, REG4, pipupdloop
### pipe update end
### collision detect
##### ceiling detect
slti REG1, POS, 0
bne REG1, zero, collision
##### floor detect
addi REG2, zero, 30
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
bne REG4, zero, pdloopend
addi REG2, REG2, PIPEWIDTH
addi REG3, zero, BIRDX
slt REG4, REG2, REG3
bne REG4, zero, pdloopend
####### Y axis
addi REG1, REG1, 4
lw REG2, 0(REG1) # REG2 as the top of the gap
slt REG4, POS, REG2 # if POS < REG2 the REG4 = 1 thus a collision
bne REG4, zero, collision
addi REG2, REG2, PIPEGAP # REG2 as the lower of the gap
addi REG3, POS, BIRDW # REG3 as the lower line of the bird
slt REG4, REG2, REG3 # if REG2 < REG3 then REG4 = 1 thus a collision
bne REG4, zero, collision
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
addi AUG4, zero, 40
addi AUG5, zero, 30
jal drawRect
### bird render
add AUG1, zero, RED
addi AUG2, zero, BIRDX
add AUG3, zero, POS
addi AUG4, AUG2, BIRDW
addi AUG5, AUG3, BIRDW
jal drawRect
### special
addi REG5, zero, 0
beq STATE, zero, flip
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
addi AUG5, zero, 30
jal drawRect
addi REG5, REG5, 4
#### loop
addi REG6, zero, 40
bne REG5, REG6, piprendloop
flip:
## flip
addi REG4, zero, 80
addi REG3, zero, 30
addi REG1, zero, 0
addi REG2, zero, 0
flipouterloop:
addi REG1, zero, 0
flipinnerloop:
### load
mul REG5, REG2, REG4
add REG5, REG5, REG1
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
addi REG2, zero, 40
pipinitloop:
##### x position
sw REG2, 0(REG3)
addi REG2, REG2, PIPEGAP
##### y position
addi REG3, REG3, 4
jal rand
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
andi s10, s11, 7
addi s10, s10, 5
ret

# AUG1: color
# AUG2 x
# AUG3 y
# AUG4 x-end
# AUG5 y-end
drawRect:
## special 
slti REG1, AUG2, 40
beq REG1, zero, drend
addi REG2, zero, 40
beq REG2, AUG2, drend
slti REG1, AUG3, 30
beq REG1, zero, drend
addi REG2, zero, 30
beq REG2, AUG3, drend
slti REG1, AUG4, 0
bne REG1, zero, drend
beq AUG4, zero, drend
slti REG1, AUG5, 0
bne REG1, zero, drend
beq AUG5, zero, drend
## special end
## init 
slti REG1, AUG2, 0
beq REG1, zero, drtag1
addi AUG2, zero, 0
drtag1:
slti REG1, AUG3, 0
beq REG1, zero, drtag2
addi AUG3, zero, 0
drtag2:
slti REG1, AUG4, 40
bne REG1, zero, drtag3
addi AUG4, zero, 40
drtag3:
slti REG1, AUG5, 30
bne REG1, zero, drtag4
addi AUG5, zero, 30
drtag4:
## init end
add REG2, zero, AUG3
rectouterloop:
add REG1, zero, AUG2
rectinnerloop:
addi REG3, zero, 40
mul REG3, REG2, REG3
add REG3, REG3, REG1
slli REG3, REG3, 1
lw REG4, 64
or REG4, REG3, REG4
sw AUG1, 0(REG4)

addi REG1, REG1, 2
bne REG1, AUG4, rectinnerloop
addi REG2, REG2, 1
bne REG2, AUG5, rectouterloop
drend:
ret
