// change these constants as needed
infile equ "firered.gba"
outfile equ "test.gba"

.definelabel free_space, 0x08800000

// -----------------------------------------------------------------------------

.gba
.thumb

.create outfile, 0x08000000
.import infile

// -----------------------------------------------------------------------------

.include "pokescript.s"
.loadtable "character-encoding.tbl"

.org 0x08124F78
    nop
    nop

.org 0x08125C80
    nop
    nop

.org 0x08124EAC
    nop
    nop

.org 0x081326B8
    nop
    b 0x081326EC

.org 0x08131EF4
    ldr r0, =reusable_tms|1
    bx r0
    .pool

.org 0x08131EA4
    b 0x08131EF4

.org 0x08132924
    nop
    nop

.org 0x0809BCC2
    nop
    nop

// -----------------------------------------------------------------------------

.org free_space
.align 2

reusable_tms:
@@main:
	cmp r5, #0x0
	bne @@end
	ldr r3, =(0x8131EFE |1)
	bx r3

@@end:
	mov r0, r7
	mov r1, #0x8
	mov r2, r4
	ldr r6, =(0x81335B0 |1)
	bl @@link
	ldr r3, =(0x8131EFE |1)
	bx r3

@@link:
	bx r6

.pool

// -----------------------------------------------------------------------------

.close