.macro s_nop
    .byte 0x00
.endmacro

.macro s_nop1
    .byte 0x01
.endmacro

.macro s_end
    .byte 0x02
.endmacro

.macro s_return
    .byte 0x03
.endmacro

.macro s_call, p0
    .byte 0x04
    .word p0
.endmacro

.macro s_goto, p1
    .byte 0x05
    .word p1
.endmacro

.macro s_gotoif, p2, p3
    .byte 0x06
    .byte p2
    .word p3
.endmacro

.macro s_callif, p4, p5
    .byte 0x07
    .byte p4
    .word p5
.endmacro

.macro s_gotostd, p6
    .byte 0x08
    .byte p6
.endmacro

.macro s_callstd, p7
    .byte 0x09
    .byte p7
.endmacro

.macro s_gotostdif, p8, p9
    .byte 0x0A
    .byte p8
    .byte p9
.endmacro

.macro s_callstdif, p10, p11
    .byte 0x0B
    .byte p10
    .byte p11
.endmacro

.macro s_jumpram
    .byte 0x0C
.endmacro

.macro s_killscript
    .byte 0x0D
.endmacro

.macro s_setbyte, p12
    .byte 0x0E
    .byte p12
.endmacro

.macro s_loadpointer, p13, p14
    .byte 0x0F
    .byte p13
    .word p14
.endmacro

.macro s_setbyte2, p15, p16
    .byte 0x10
    .byte p15
    .byte p16
.endmacro

.macro s_writebytetooffset, p17, p18
    .byte 0x11
    .byte p17
    .word p18
.endmacro

.macro s_loadbytefrompointer, p19, p20
    .byte 0x12
    .byte p19
    .word p20
.endmacro

.macro s_setfarbyte, p21, p22
    .byte 0x13
    .byte p21
    .word p22
.endmacro

.macro s_copyscriptbanks, p23, p24
    .byte 0x14
    .byte p23
    .byte p24
.endmacro

.macro s_copybyte, p25, p26
    .byte 0x15
    .word p25
    .word p26
.endmacro

.macro s_setvar, p27, p28
    .byte 0x16
    .halfword p27
    .halfword p28
.endmacro

.macro s_addvar, p29, p30
    .byte 0x17
    .halfword p29
    .halfword p30
.endmacro

.macro s_subvar, p31, p32
    .byte 0x18
    .halfword p31
    .halfword p32
.endmacro

.macro s_copyvar, p33, p34
    .byte 0x19
    .halfword p33
    .halfword p34
.endmacro

.macro s_copyvarifnotzero, p35, p36
    .byte 0x1A
    .halfword p35
    .halfword p36
.endmacro

.macro s_comparebanks, p37, p38
    .byte 0x1B
    .halfword p37
    .halfword p38
.endmacro

.macro s_comparebanktobyte, p39, p40
    .byte 0x1C
    .byte p39
    .byte p40
.endmacro

.macro s_comparebanktofarbyte, p41, p42
    .byte 0x1D
    .byte p41
    .word p42
.endmacro

.macro s_comparefarbytetobank, p43, p44
    .byte 0x1E
    .word p43
    .byte p44
.endmacro

.macro s_comparefarbytetobyte, p45, p46
    .byte 0x1F
    .word p45
    .byte p46
.endmacro

.macro s_comparefarbytes, p47, p48
    .byte 0x20
    .word p47
    .word p48
.endmacro

.macro s_compare, p49, p50
    .byte 0x21
    .halfword p49
    .halfword p50
.endmacro

.macro s_comparevars, p51, p52
    .byte 0x22
    .halfword p51
    .halfword p52
.endmacro

.macro s_callasm, p53
    .byte 0x23
    .word p53
.endmacro

.macro s_cmd24, p54
    .byte 0x24
    .word p54
.endmacro

.macro s_special, p55
    .byte 0x25
    .halfword p55
.endmacro

.macro s_special2, p56, p57
    .byte 0x26
    .halfword p56
    .halfword p57
.endmacro

.macro s_waitstate
    .byte 0x27
.endmacro

.macro s_pause, p58
    .byte 0x28
    .halfword p58
.endmacro

.macro s_setflag, p59
    .byte 0x29
    .halfword p59
.endmacro

.macro s_clearflag, p60
    .byte 0x2A
    .halfword p60
.endmacro

.macro s_checkflag, p61
    .byte 0x2B
    .halfword p61
.endmacro

.macro s_cmd2c, p62, p63
    .byte 0x2C
    .halfword p62
    .halfword p63
.endmacro

.macro s_checkdailyflags
    .byte 0x2D
.endmacro

.macro s_resetvars
    .byte 0x2E
.endmacro

.macro s_sound, p64
    .byte 0x2F
    .halfword p64
.endmacro

.macro s_checksound
    .byte 0x30
.endmacro

.macro s_fanfare, p65
    .byte 0x31
    .halfword p65
.endmacro

.macro s_waitfanfare, p66
    .byte 0x32
    .halfword p66
.endmacro

.macro s_playsong, p67, p68
    .byte 0x33
    .halfword p67
    .byte p68
.endmacro

.macro s_playsong2, p69
    .byte 0x34
    .halfword p69
.endmacro

.macro s_fadedefault
    .byte 0x35
.endmacro

.macro s_fadesong, p70
    .byte 0x36
    .halfword p70
.endmacro

.macro s_fadeout, p71
    .byte 0x37
    .byte p71
.endmacro

.macro s_fadein, p72
    .byte 0x38
    .byte p72
.endmacro

.macro s_warp, p73, p74, p75, p76, p77
    .byte 0x39
    .byte p73
    .byte p74
    .byte p75
    .halfword p76
    .halfword p77
.endmacro

.macro s_warpmuted, p78, p79, p80, p81, p82
    .byte 0x3A
    .byte p78
    .byte p79
    .byte p80
    .halfword p81
    .halfword p82
.endmacro

.macro s_warpwalk, p83, p84, p85, p86, p87
    .byte 0x3B
    .byte p83
    .byte p84
    .byte p85
    .halfword p86
    .halfword p87
.endmacro

.macro s_warphole, p88, p89, p90, p91
    .byte 0x3C
    .byte p88
    .byte p89
    .byte p90
    .byte p91
.endmacro

.macro s_warpteleport, p92, p93, p94, p95, p96
    .byte 0x3D
    .byte p92
    .byte p93
    .byte p94
    .halfword p95
    .halfword p96
.endmacro

.macro s_warp3, p97, p98, p99, p100, p101
    .byte 0x3E
    .byte p97
    .byte p98
    .byte p99
    .halfword p100
    .halfword p101
.endmacro

.macro s_setwarpplace, p102, p103, p104, p105, p106
    .byte 0x3F
    .byte p102
    .byte p103
    .byte p104
    .halfword p105
    .halfword p106
.endmacro

.macro s_warp4, p107, p108, p109, p110, p111
    .byte 0x40
    .byte p107
    .byte p108
    .byte p109
    .halfword p110
    .halfword p111
.endmacro

.macro s_warp5, p112, p113, p114, p115, p116
    .byte 0x41
    .byte p112
    .byte p113
    .byte p114
    .halfword p115
    .halfword p116
.endmacro

.macro s_getplayerpos, p117, p118
    .byte 0x42
    .halfword p117
    .halfword p118
.endmacro

.macro s_countpokemon
    .byte 0x43
.endmacro

.macro s_additem, p119, p120
    .byte 0x44
    .halfword p119
    .halfword p120
.endmacro

.macro s_removeitem, p121, p122
    .byte 0x45
    .halfword p121
    .halfword p122
.endmacro

.macro s_checkitemroom, p123, p124
    .byte 0x46
    .halfword p123
    .halfword p124
.endmacro

.macro s_checkitem, p125, p126
    .byte 0x47
    .halfword p125
    .halfword p126
.endmacro

.macro s_checkitemtype, p127
    .byte 0x48
    .halfword p127
.endmacro

.macro s_addpcitem, p128, p129
    .byte 0x49
    .halfword p128
    .halfword p129
.endmacro

.macro s_checkpcitem, p130, p131
    .byte 0x4A
    .halfword p130
    .halfword p131
.endmacro

.macro s_adddecoration, p132
    .byte 0x4B
    .halfword p132
.endmacro

.macro s_removedecoration, p133
    .byte 0x4C
    .halfword p133
.endmacro

.macro s_testdecoration, p134
    .byte 0x4D
    .halfword p134
.endmacro

.macro s_checkdecoration, p135
    .byte 0x4E
    .halfword p135
.endmacro

.macro s_applymovement, p136, p137
    .byte 0x4F
    .halfword p136
    .word p137
.endmacro

.macro s_applymovementpos, p138, p139, p140, p141
    .byte 0x50
    .halfword p138
    .word p139
    .byte p140
    .byte p141
.endmacro

.macro s_waitmovement, p142
    .byte 0x51
    .halfword p142
.endmacro

.macro s_waitmovementpos, p143, p144, p145
    .byte 0x52
    .halfword p143
    .byte p144
    .byte p145
.endmacro

.macro s_hidesprite, p146
    .byte 0x53
    .halfword p146
.endmacro

.macro s_hidespritepos, p147, p148, p149
    .byte 0x54
    .halfword p147
    .byte p148
    .byte p149
.endmacro

.macro s_showsprite, p150
    .byte 0x55
    .halfword p150
.endmacro

.macro s_showspritepos, p151, p152, p153
    .byte 0x56
    .halfword p151
    .byte p152
    .byte p153
.endmacro

.macro s_movesprite, p154, p155, p156
    .byte 0x57
    .halfword p154
    .halfword p155
    .halfword p156
.endmacro

.macro s_spritevisible, p157, p158, p159
    .byte 0x58
    .halfword p157
    .byte p158
    .byte p159
.endmacro

.macro s_spriteinvisible, p160, p161, p162
    .byte 0x59
    .halfword p160
    .byte p161
    .byte p162
.endmacro

.macro s_faceplayer
    .byte 0x5A
.endmacro

.macro s_spriteface, p163, p164
    .byte 0x5B
    .halfword p163
    .byte p164
.endmacro

.macro s_trainerbattle, p165, p166, p167, p168, p169, p170
    .byte 0x5C
    .byte p165
    .halfword p166
    .halfword p167
    .word p168
    .word p169
    .word p170
.endmacro

.macro s_repeattrainerbattle
    .byte 0x5D
.endmacro

.macro s_endtrainerbattle
    .byte 0x5E
.endmacro

.macro s_endtrainerbattle2
    .byte 0x5F
.endmacro

.macro s_checktrainerflag, p171
    .byte 0x60
    .halfword p171
.endmacro

.macro s_cleartrainerflag, p172
    .byte 0x61
    .halfword p172
.endmacro

.macro s_settrainerflag, p173
    .byte 0x62
    .halfword p173
.endmacro

.macro s_movesprite2, p174, p175, p176
    .byte 0x63
    .halfword p174
    .halfword p175
    .halfword p176
.endmacro

.macro s_moveoffscreen, p177
    .byte 0x64
    .halfword p177
.endmacro

.macro s_spritebehave, p178, p179
    .byte 0x65
    .halfword p178
    .byte p179
.endmacro

.macro s_waitmsg
    .byte 0x66
.endmacro

.macro s_preparemsg, p180
    .byte 0x67
    .word p180
.endmacro

.macro s_closeonkeypress
    .byte 0x68
.endmacro

.macro s_lockall
    .byte 0x69
.endmacro

.macro s_lock
    .byte 0x6A
.endmacro

.macro s_releaseall
    .byte 0x6B
.endmacro

.macro s_release
    .byte 0x6C
.endmacro

.macro s_waitkeypress
    .byte 0x6D
.endmacro

.macro s_yesnobox, p181, p182
    .byte 0x6E
    .byte p181
    .byte p182
.endmacro

.macro s_multichoice, p183, p184, p185, p186
    .byte 0x6F
    .byte p183
    .byte p184
    .byte p185
    .byte p186
.endmacro

.macro s_multichoice2, p187, p188, p189, p190, p191
    .byte 0x70
    .byte p187
    .byte p188
    .byte p189
    .byte p190
    .byte p191
.endmacro

.macro s_multichoice3, p192, p193, p194, p195, p196
    .byte 0x71
    .byte p192
    .byte p193
    .byte p194
    .byte p195
    .byte p196
.endmacro

.macro s_showbox, p197, p198, p199, p200
    .byte 0x72
    .byte p197
    .byte p198
    .byte p199
    .byte p200
.endmacro

.macro s_hidebox, p201, p202, p203, p204
    .byte 0x73
    .byte p201
    .byte p202
    .byte p203
    .byte p204
.endmacro

.macro s_clearbox, p205, p206, p207, p208
    .byte 0x74
    .byte p205
    .byte p206
    .byte p207
    .byte p208
.endmacro

.macro s_showpokepic, p209, p210, p211
    .byte 0x75
    .halfword p209
    .byte p210
    .byte p211
.endmacro

.macro s_hidepokepic
    .byte 0x76
.endmacro

.macro s_showcontestwinner, p212
    .byte 0x77
    .byte p212
.endmacro

.macro s_braille, p213
    .byte 0x78
    .word p213
.endmacro

.macro s_givepokemon, p214, p215, p216, p217, p218, p219
    .byte 0x79
    .halfword p214
    .byte p215
    .halfword p216
    .word p217
    .word p218
    .byte p219
.endmacro

.macro s_giveegg, p220
    .byte 0x7A
    .halfword p220
.endmacro

.macro s_setpkmnpp, p221, p222, p223
    .byte 0x7B
    .byte p221
    .byte p222
    .halfword p223
.endmacro

.macro s_checkattack, p224
    .byte 0x7C
    .halfword p224
.endmacro

.macro s_bufferpokemon, p225, p226
    .byte 0x7D
    .byte p225
    .halfword p226
.endmacro

.macro s_bufferfirstpokemon, p227
    .byte 0x7E
    .byte p227
.endmacro

.macro s_bufferpartypokemon, p228, p229
    .byte 0x7F
    .byte p228
    .halfword p229
.endmacro

.macro s_bufferitem, p230, p231
    .byte 0x80
    .byte p230
    .halfword p231
.endmacro

.macro s_bufferdecoration, p232, p233
    .byte 0x81
    .byte p232
    .halfword p233
.endmacro

.macro s_bufferattack, p234, p235
    .byte 0x82
    .byte p234
    .halfword p235
.endmacro

.macro s_buffernumber, p236, p237
    .byte 0x83
    .byte p236
    .halfword p237
.endmacro

.macro s_bufferstd, p238, p239
    .byte 0x84
    .byte p238
    .halfword p239
.endmacro

.macro s_bufferstring, p240, p241
    .byte 0x85
    .byte p240
    .word p241
.endmacro

.macro s_pokemart, p242
    .byte 0x86
    .word p242
.endmacro

.macro s_pokemart2, p243
    .byte 0x87
    .word p243
.endmacro

.macro s_pokemart3, p244
    .byte 0x88
    .word p244
.endmacro

.macro s_pokecasino, p245
    .byte 0x89
    .halfword p245
.endmacro

.macro s_cmd8a, p246, p247, p248
    .byte 0x8A
    .byte p246
    .byte p247
    .byte p248
.endmacro

.macro s_choosecontestpkmn
    .byte 0x8B
.endmacro

.macro s_startcontest
    .byte 0x8C
.endmacro

.macro s_showcontestresults
    .byte 0x8D
.endmacro

.macro s_contestlinktransfer
    .byte 0x8E
.endmacro

.macro s_random, p249
    .byte 0x8F
    .halfword p249
.endmacro

.macro s_givemoney, p250, p251
    .byte 0x90
    .word p250
    .byte p251
.endmacro

.macro s_paymoney, p252, p253
    .byte 0x91
    .word p252
    .byte p253
.endmacro

.macro s_checkmoney, p254, p255
    .byte 0x92
    .word p254
    .byte p255
.endmacro

.macro s_showmoney, p256, p257, p258
    .byte 0x93
    .byte p256
    .byte p257
    .byte p258
.endmacro

.macro s_hidemoney, p259, p260
    .byte 0x94
    .byte p259
    .byte p260
.endmacro

.macro s_updatemoney, p261, p262, p263
    .byte 0x95
    .byte p261
    .byte p262
    .byte p263
.endmacro

.macro s_cmd96, p264
    .byte 0x96
    .halfword p264
.endmacro

.macro s_fadescreen, p265
    .byte 0x97
    .byte p265
.endmacro

.macro s_fadescreendelay, p266, p267
    .byte 0x98
    .byte p266
    .byte p267
.endmacro

.macro s_darken, p268
    .byte 0x99
    .halfword p268
.endmacro

.macro s_lighten, p269
    .byte 0x9A
    .byte p269
.endmacro

.macro s_preparemsg2, p270
    .byte 0x9B
    .word p270
.endmacro

.macro s_doanimation, p271
    .byte 0x9C
    .halfword p271
.endmacro

.macro s_setanimation, p272, p273
    .byte 0x9D
    .byte p272
    .halfword p273
.endmacro

.macro s_checkanimation, p274
    .byte 0x9E
    .halfword p274
.endmacro

.macro s_sethealingplace, p275
    .byte 0x9F
    .halfword p275
.endmacro

.macro s_checkgender
    .byte 0xA0
.endmacro

.macro s_cry, p276, p277
    .byte 0xA1
    .halfword p276
    .halfword p277
.endmacro

.macro s_setmaptile, p278, p279, p280, p281
    .byte 0xA2
    .halfword p278
    .halfword p279
    .halfword p280
    .halfword p281
.endmacro

.macro s_resetweather
    .byte 0xA3
.endmacro

.macro s_setweather, p282
    .byte 0xA4
    .halfword p282
.endmacro

.macro s_doweather
    .byte 0xA5
.endmacro

.macro s_cmda6, p283
    .byte 0xA6
    .byte p283
.endmacro

.macro s_setmapfooter, p284
    .byte 0xA7
    .halfword p284
.endmacro

.macro s_spritelevelup, p285, p286, p287, p288
    .byte 0xA8
    .halfword p285
    .byte p286
    .byte p287
    .byte p288
.endmacro

.macro s_restorespritelevel, p289, p290, p291
    .byte 0xA9
    .halfword p289
    .byte p290
    .byte p291
.endmacro

.macro s_createsprite, p292, p293, p294, p295, p296, p297
    .byte 0xAA
    .byte p292
    .byte p293
    .halfword p294
    .halfword p295
    .byte p296
    .byte p297
.endmacro

.macro s_spriteface2, p298, p299
    .byte 0xAB
    .byte p298
    .byte p299
.endmacro

.macro s_setdooropened, p300, p301
    .byte 0xAC
    .halfword p300
    .halfword p301
.endmacro

.macro s_setdoorclosed, p302, p303
    .byte 0xAD
    .halfword p302
    .halfword p303
.endmacro

.macro s_doorchange
    .byte 0xAE
.endmacro

.macro s_setdooropened2, p304, p305
    .byte 0xAF
    .halfword p304
    .halfword p305
.endmacro

.macro s_setdoorclosed2, p306, p307
    .byte 0xB0
    .halfword p306
    .halfword p307
.endmacro

.macro s_cmdb1, p308, p309, p310, p311
    .byte 0xB1
    .byte p308
    .halfword p309
    .byte p310
    .halfword p311
.endmacro

.macro s_cmdb2
    .byte 0xB2
.endmacro

.macro s_checkcoins, p312
    .byte 0xB3
    .halfword p312
.endmacro

.macro s_givecoins, p313
    .byte 0xB4
    .halfword p313
.endmacro

.macro s_removecoins, p314
    .byte 0xB5
    .halfword p314
.endmacro

.macro s_setwildbattle, p315, p316, p317
    .byte 0xB6
    .halfword p315
    .byte p316
    .halfword p317
.endmacro

.macro s_dowildbattle
    .byte 0xB7
.endmacro

.macro s_setvirtualaddress, p318
    .byte 0xB8
    .word p318
.endmacro

.macro s_virtualgoto, p319
    .byte 0xB9
    .word p319
.endmacro

.macro s_virtualcall, p320
    .byte 0xBA
    .word p320
.endmacro

.macro s_virtualgotoif, p321, p322
    .byte 0xBB
    .byte p321
    .word p322
.endmacro

.macro s_virtualcallif, p323, p324
    .byte 0xBC
    .byte p323
    .word p324
.endmacro

.macro s_virtualmsgbox, p325
    .byte 0xBD
    .word p325
.endmacro

.macro s_virtualloadpointer, p326
    .byte 0xBE
    .word p326
.endmacro

.macro s_virtualbuffer, p327, p328
    .byte 0xBF
    .byte p327
    .word p328
.endmacro

.macro s_showcoins, p329, p330
    .byte 0xC0
    .byte p329
    .byte p330
.endmacro

.macro s_hidecoins, p331, p332
    .byte 0xC1
    .byte p331
    .byte p332
.endmacro

.macro s_updatecoins, p333, p334
    .byte 0xC2
    .byte p333
    .byte p334
.endmacro

.macro s_cmdc3, p335
    .byte 0xC3
    .byte p335
.endmacro

.macro s_warp6, p336, p337, p338, p339, p340
    .byte 0xC4
    .byte p336
    .byte p337
    .byte p338
    .halfword p339
    .halfword p340
.endmacro

.macro s_waitcry
    .byte 0xC5
.endmacro

.macro s_bufferboxname, p341, p342
    .byte 0xC6
    .byte p341
    .halfword p342
.endmacro

.macro s_textcolor, p343
    .byte 0xC7
    .byte p343
.endmacro

.macro s_cmdc8
    .byte 0xC8
.endmacro

.macro s_cmdc9
    .byte 0xC9
.endmacro

.macro s_signmsg
    .byte 0xCA
.endmacro

.macro s_normalmsg
    .byte 0xCB
.endmacro

.macro s_comparehiddenvar, p344, p345
    .byte 0xCC
    .byte p344
    .halfword p345
.endmacro

.macro s_setobedience, p346
    .byte 0xCD
    .halfword p346
.endmacro

.macro s_checkobedience, p347
    .byte 0xCE
    .halfword p347
.endmacro

.macro s_executeram
    .byte 0xCF
.endmacro

.macro s_setworldmapflag, p348
    .byte 0xD0
    .halfword p348
.endmacro

.macro s_warpteleport2, p349, p350, p351, p352, p353
    .byte 0xD1
    .byte p349
    .byte p350
    .byte p351
    .halfword p352
    .halfword p353
.endmacro

.macro s_setcatchlocation, p354, p355
    .byte 0xD2
    .halfword p354
    .byte p355
.endmacro

.macro s_braille2, p356
    .byte 0xD3
    .word p356
.endmacro

.macro s_bufferitems, p357, p358, p359
    .byte 0xD4
    .byte p357
    .halfword p358
    .halfword p359
.endmacro

.macro s_cmdd5, p360
    .byte 0xD5
    .halfword p360
.endmacro

.macro s_cmdd6
    .byte 0xD6
.endmacro

.macro s_warp7, p361, p362, p363, p364, p365
    .byte 0xD7
    .byte p361
    .byte p362
    .byte p363
    .halfword p364
    .halfword p365
.endmacro

.macro s_cmdd8
    .byte 0xD8
.endmacro

.macro s_cmdd9, p366, p367
    .byte 0xD9
    .byte p366
    .byte p367
.endmacro

.macro s_hidebox2
    .byte 0xDA
.endmacro

.macro s_preparemsg3, p368
    .byte 0xDB
    .word p368
.endmacro

.macro s_fadescreen3, p369
    .byte 0xDC
    .byte p369
.endmacro

.macro s_buffertrainerclass, p370, p371
    .byte 0xDD
    .byte p370
    .halfword p371
.endmacro

.macro s_buffertrainername, p372, p373
    .byte 0xDE
    .byte p372
    .halfword p373
.endmacro

.macro s_pokenavcall, p374
    .byte 0xDF
    .word p374
.endmacro

.macro s_warp8, p375, p376, p377, p378, p379
    .byte 0xE0
    .byte p375
    .byte p376
    .byte p377
    .halfword p378
    .halfword p379
.endmacro

.macro s_buffercontestype, p380, p381
    .byte 0xE1
    .byte p380
    .halfword p381
.endmacro

.macro s_bufferitems2, p382, p383, p384
    .byte 0xE2
    .byte p382
    .halfword p383
    .halfword p384
.endmacro

.macro s_msgbox, p385, p386
    s_loadpointer 0, p385
    s_callstd p386
.endmacro

.macro s_giveitem, p387, p388
    s_copyvarifnotzero 0x8000, p387
    s_copyvarifnotzero 0x8001, p388
    s_callstd 0
.endmacro