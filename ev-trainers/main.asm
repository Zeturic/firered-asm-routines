// change these constants as needed
infile equ "firered.gba"
outfile equ "test.gba"

.definelabel free_space, 0x08F90000
.definelabel EV_Table, 0x08F00000

// -----------------------------------------------------------------------------

.definelabel Return_Addr, 0x08011638
.definelabel Insert_Addr, 0x0804037C
.definelabel Recalc_Addr, 0x0803e47C
.definelabel Mod_Addr, 0x081e4684

// -----------------------------------------------------------------------------

.gba
.thumb

.open infile, outfile, 0x08000000

// -----------------------------------------------------------------------------

// EV spread table format
// Each spread is 16 bytes
// 0x0 = Nature
// 0x4 = IVs (from 0-31, not 0-255, used for all IVs)
//  (if you want hidden powers, recall the ai can't handle -- bp moves)
// 0x5 = HP EVs
// 0x6 = Atk EVs
// 0x7 = Def EVs
// 0x8 = Speed EVs
// 0x9 = SAtk EVs
// 0xA = SDef EVs
// 0xB = Pokeball
// last four bytes are filler

.org 0x080115f6
mov r0, r1
mov r6, r0
b 0x08011604

.org 0x0801162c
ldr r0, =LoadItem |1
bx r0
.pool

.org 0x0803dc70
b 0x0803dcd0

.org free_space

LoadItem:
add r5, #0x6
add r0, r4, #0x0
mov r1, #0xc
add r2, r5, #0x0
bl Insert_Element

LoadHPEV:
lsl r0, r6, #0x4
ldr r2, =EV_Table
add r2, r0
add r2, #0x5
mov r1, #0x1A
mov r0, r4
bl Insert_Element

LoadAtkEV:
lsl r0, r6, #0x4
ldr r2, =EV_Table
add r2, r0
add r2, #0x6
mov r1, #0x1B
mov r0, r4
bl Insert_Element

LoadDefEV:
lsl r0, r6, #0x4
ldr r2, =EV_Table
add r2, r0
add r2, #0x7
mov r1, #0x1C
mov r0, r4
bl Insert_Element

LoadSpeedEV:
lsl r0, r6, #0x4
ldr r2, =EV_Table
add r2, r0
add r2, #0x8
mov r1, #0x1D
mov r0, r4
bl Insert_Element

LoadSAtkEV:
lsl r0, r6, #0x4
ldr r2, =EV_Table
add r2, r0
add r2, #0x9
mov r1, #0x1E
mov r0, r4
bl Insert_Element

LoadSDefEV:
lsl r0, r6, #0x4
ldr r2, =EV_Table
add r2, r0
add r2, #0xA
mov r1, #0x1F
mov r0, r4
bl Insert_Element

LoadBall:
lsl r0, r6, #0x4
ldr r2, =EV_Table
add r2, r0
add r2, #0xB
mov r1, #0x26
mov r0, r4
bl Insert_Element

StartNatureLoop:
lsl r0, r6, #0x4
ldr r2, =EV_Table
add r2, r0
ldrb r5, [r2, #0x0]
cmp r5, #0x0
beq LoadIVs
ldr r0, [r4, #0x0]
ldr r1, [r4, #0x4]
eor r1, r0
str r1, [r4, #0x4]

NatureLoop:
ldr r0, [r4, #0x0]
add r0, #0x18
str r0, [r4, #0x0]
mov r1, #0x19
bl Mod
cmp r0, r5
bne NatureLoop

EndNatureLoop:
ldr r0, [r4, #0x0]
ldr r1, [r4, #0x4]
eor r1, r0
str r1, [r4, #0x4]

LoadIVs:
lsl r0, r6, #0x4
ldr r2, =EV_Table
add r2, r0
ldrb r6, [r2, #0x4]
push {r6}

StartIVLoop:
mov r5, #0x27

IVLoop:
mov r0, r4
mov r1, r5
mov r2, sp
bl Insert_Element
add r5, r5, #0x1
cmp r5, #0x2D
bne IVLoop

End:
pop {r6}
bl Recalculate_Stats
ldr r1, =Return_Addr |1
bx r1

Insert_Element:
ldr r3, =Insert_Addr |1
bx r3

Recalculate_Stats:
mov r0, r4
ldr r1, =Recalc_Addr |1
bx r1

Mod:
ldr r3, =Mod_Addr |1
bx r3

.pool

.close
