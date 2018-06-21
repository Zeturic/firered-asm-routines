// change these constants as needed
infile equ "firered.gba"
outfile equ "test.gba"

.definelabel free_space, 0x08800000

// -----------------------------------------------------------------------------

.definelabel storeloc, 0x03005074
.definelabel playerloc, 0x02036E38

.definelabel lastresult_addr, 0x020370D0

LASTRESULT equ 0x800D
FACE_DOWN equ 0x1
FACE_UP equ 0x2
FACE_LEFT equ 0x3
FACE_RIGHT equ 0x4

// -----------------------------------------------------------------------------

.gba
.thumb

.create outfile, 0x08000000
.import infile

// -----------------------------------------------------------------------------

.org free_space
.align 2

trainerface:

@@main:
    push {r0-r3,lr}
    ldr r0, =storeloc
    ldrb r0, [r0, #0x0]
    mov r1, #0x24
    mul r0, r1
    ldr r1, =playerloc
    add r0, r0, r1
    ldrh r2, [r0, #0x10]
    ldrh r3, [r1, #0x10]
    cmp r2, r3
    beq @@alternative
    sub r2, r2, r3
    cmp r2, #0x1
    beq @@right
    mov r0, #0x2
    b @@end

@@right:
    mov r0, #0x3
    b @@end

@@alternative:
    ldrh r2, [r0, #0x12]
    ldrh r3, [r1, #0x12]
    sub r2, r2, r3
    cmp r2, #0x1
    beq @@up
    mov r0, #0x1
    b @@end

@@up:
    mov r0, #0x0

@@end:
    ldr r1, =lastresult_addr
    strh r0, [r1, #0x0]
    pop {r0-r3,pc}

.pool

// -----------------------------------------------------------------------------

.include "pokescript.s"

trainerface_script:

@@main:
    s_callasm (trainerface |1)

    s_compare LASTRESULT, FACE_DOWN
    s_callif 0x1, @@down
    s_compare LASTRESULT, FACE_UP
    s_callif 0x1, @@up
    s_compare LASTRESULT, FACE_LEFT
    s_callif 0x1, @@left
    s_compare LASTRESULT, FACE_RIGHT
    s_callif 0x1, @@right

    s_waitmovement 0xFF
    s_goto 0x81A4FC7

@@down:
    s_applymovement 0xFF, @@lookdown
    s_return

@@up:
    s_applymovement 0xFF, @@lookup
    s_return

@@left:
    s_applymovement 0xFF, @@lookleft
    s_return

@@right:
    s_applymovement 0xFF, @@lookright
    s_return

@@lookdown:
    .byte FACE_DOWN, 0xFE

@@lookup:
    .byte FACE_UP, 0xFE

@@lookleft:
    .byte FACE_LEFT, 0xFE

@@lookright:
    .byte FACE_RIGHT, 0xFE

// -----------------------------------------------------------------------------

.org 0x081A4EBD
    .word trainerface_script

.org 0x081A4F15
    .word trainerface_script

// -----------------------------------------------------------------------------

.close