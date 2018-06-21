// change these constants as needed
infile equ "firered.gba"
outfile equ "test.gba"

.definelabel free_space, 0x08800800

// -----------------------------------------------------------------------------

.gba
.thumb

.create outfile, 0x08000000
.import infile

// -----------------------------------------------------------------------------

.include "pokescript.s"
.loadtable "character-encoding.tbl"

.org free_space

repel_script:

@@Main:
    s_lock
    s_checkitem 0x800E, 1
    s_compare 0x800D, 1
    s_gotoif 0x4, @@ThereAreMore
    s_msgbox @@RepelExpired, 3
    s_release
    s_end

@@ThereAreMore:
    s_msgbox @@UseAnother, 5
    s_closeonkeypress
    s_compare 0x800D, 1
    s_gotoif 0x1, @@CallASM
    s_end

@@CallASM:
    s_callasm 0x081BFB69
    s_end

@@RepelExpired:
    .string "Repel's effect wore off."

@@UseAnother:
    .string "Repel's effect wore off...\nUse another?"

// -----------------------------------------------------------------------------

.org 0x080830CA
    .byte 0x0C, 0x48, 0xEB, 0xF7, 0x4C, 0xFA, 0x01, 0x06, 0x00, 0x29, 0x16, 0xD0, 0x41, 0x1E, 0x0C, 0x06, 0x0D, 0x0A, 0x07, 0x48, 0xEB, 0xF7, 0x51, 0xFA, 0x00, 0x2C, 0x0E, 0xD1, 0x03, 0x4C, 0x25, 0x80, 0x05, 0x48, 0xE6, 0xF7, 0xFA, 0xFC, 0x01, 0x20, 0x08, 0xE0, 0x30, 0xAD, 0x03, 0x02

.org 0x08083119
    .byte 0x06

.org 0x080A19A5
    .byte 0x06

.org 0x080A19F6
    .byte 0x1C

.org 0x080A19F8
    .byte 0x11

.org 0x080A19FC
    .byte 0x0F

.org 0x080A1A0E
    .byte 0x21, 0x88, 0x09, 0x02, 0x41, 0x40

.org 0x080A1A1E
    .byte 0x34, 0x4B, 0x28, 0x21, 0x71, 0x43, 0x5B, 0x18, 0xD9, 0x79, 0x30, 0x1C, 0x02, 0x22, 0x17, 0x4B, 0xFF, 0xF7, 0x49, 0xFB, 0xC7, 0xF7, 0x85, 0xFF, 0x70, 0xBD, 0x20, 0x40, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x30, 0xAD, 0x03, 0x02

.org 0x080A1A5A
    .byte 0x00, 0x00, 0x00, 0x00

.org 0x080A1A68
    .byte 0x00, 0x00, 0x00, 0x00

.org 0x081BFB66
    .byte 0x00, 0x00, 0x00, 0xB5, 0x04, 0x48, 0x50, 0x21, 0x00, 0xF0, 0x01, 0xF8, 0x00, 0xBD, 0x00, 0x4A, 0x10, 0x47, 0x1D, 0x74, 0x07, 0x08, 0x99, 0x19, 0x0A, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

.org 0x08083100
    .word repel_script

// -----------------------------------------------------------------------------

.close