; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    ld b, l                                       ; $4000: $45
    ld d, a                                       ; $4001: $57
    sbc d                                         ; $4002: $9a
    xor b                                         ; $4003: $a8
    ld d, h                                       ; $4004: $54
    ld [hl-], a                                   ; $4005: $32
    ld de, $8925                                  ; $4006: $11 $25 $89
    xor d                                         ; $4009: $aa
    call $b9dd                                    ; $400a: $cd $dd $b9
    add a                                         ; $400d: $87
    ld h, [hl]                                    ; $400e: $66
    ld d, l                                       ; $400f: $55
    ld h, a                                       ; $4010: $67
    sbc e                                         ; $4011: $9b
    call $dcdd                                    ; $4012: $cd $dd $dc
    cp d                                          ; $4015: $ba
    ld [hl], h                                    ; $4016: $74
    jr nz, jr_018_4019                            ; $4017: $20 $00

jr_018_4019:
    inc de                                        ; $4019: $13
    ld b, l                                       ; $401a: $45
    ld a, c                                       ; $401b: $79
    call $a8dc                                    ; $401c: $cd $dc $a8
    ld d, e                                       ; $401f: $53
    ld hl, $3411                                  ; $4020: $21 $11 $34
    ld a, d                                       ; $4023: $7a
    cp h                                          ; $4024: $bc
    call $dcdd                                    ; $4025: $cd $dd $dc
    sub [hl]                                      ; $4028: $96
    ld b, d                                       ; $4029: $42
    dec [hl]                                      ; $402a: $35
    ld a, b                                       ; $402b: $78
    adc b                                         ; $402c: $88
    sbc e                                         ; $402d: $9b
    rst $28                                       ; $402e: $ef
    cp $b9                                        ; $402f: $fe $b9
    ld h, h                                       ; $4031: $64
    ld hl, $3501                                  ; $4032: $21 $01 $35
    ld h, a                                       ; $4035: $67
    adc c                                         ; $4036: $89
    sbc b                                         ; $4037: $98
    adc b                                         ; $4038: $88
    add [hl]                                      ; $4039: $86
    ld b, d                                       ; $403a: $42
    ld de, $6835                                  ; $403b: $11 $35 $68
    adc c                                         ; $403e: $89
    adc $ff                                       ; $403f: $ce $ff
    jp c, Jump_018_7787                           ; $4041: $da $87 $77

    ld [hl], a                                    ; $4044: $77
    ld [hl], a                                    ; $4045: $77
    sbc e                                         ; $4046: $9b
    call $cbdc                                    ; $4047: $cd $dc $cb
    cp c                                          ; $404a: $b9
    ld [hl], h                                    ; $404b: $74
    ld hl, $0000                                  ; $404c: $21 $00 $00
    inc h                                         ; $404f: $24
    adc c                                         ; $4050: $89
    sbc b                                         ; $4051: $98
    adc b                                         ; $4052: $88
    adc b                                         ; $4053: $88
    ld [hl], h                                    ; $4054: $74
    ld [hl+], a                                   ; $4055: $22
    dec [hl]                                      ; $4056: $35
    ld a, b                                       ; $4057: $78
    sbc d                                         ; $4058: $9a
    adc $ef                                       ; $4059: $ce $ef
    rst $38                                       ; $405b: $ff
    db $ec                                        ; $405c: $ec
    xor b                                         ; $405d: $a8
    ld h, l                                       ; $405e: $65
    ld d, l                                       ; $405f: $55
    ld l, b                                       ; $4060: $68
    sbc c                                         ; $4061: $99
    sbc d                                         ; $4062: $9a
    call z, Call_018_75b9                         ; $4063: $cc $b9 $75
    ld [hl-], a                                   ; $4066: $32
    ld de, $0000                                  ; $4067: $11 $00 $00
    dec h                                         ; $406a: $25
    ld a, c                                       ; $406b: $79
    sbc c                                         ; $406c: $99
    adc c                                         ; $406d: $89
    sbc c                                         ; $406e: $99
    halt                                          ; $406f: $76
    ld d, l                                       ; $4070: $55
    ld a, c                                       ; $4071: $79
    cp e                                          ; $4072: $bb
    call z, $ffdf                                 ; $4073: $cc $df $ff
    call c, $87ba                                 ; $4076: $dc $ba $87
    ld d, l                                       ; $4079: $55
    ld b, l                                       ; $407a: $45
    ld h, [hl]                                    ; $407b: $66
    ld a, b                                       ; $407c: $78
    sbc c                                         ; $407d: $99
    xor c                                         ; $407e: $a9
    ld [hl], h                                    ; $407f: $74
    ld hl, $1012                                  ; $4080: $21 $12 $10
    ld [de], a                                    ; $4083: $12
    ld e, b                                       ; $4084: $58
    sbc c                                         ; $4085: $99
    sbc c                                         ; $4086: $99
    xor e                                         ; $4087: $ab
    cp c                                          ; $4088: $b9
    ld [hl], l                                    ; $4089: $75
    ld d, [hl]                                    ; $408a: $56
    ld h, [hl]                                    ; $408b: $66
    ld a, b                                       ; $408c: $78
    xor l                                         ; $408d: $ad
    xor $ee                                       ; $408e: $ee $ee
    cp $da                                        ; $4090: $fe $da
    ld [hl], l                                    ; $4092: $75
    ld d, [hl]                                    ; $4093: $56
    halt                                          ; $4094: $76
    ld h, l                                       ; $4095: $65
    ld b, [hl]                                    ; $4096: $46
    adc d                                         ; $4097: $8a
    sub a                                         ; $4098: $97
    ld d, h                                       ; $4099: $54
    ld b, l                                       ; $409a: $45
    ld b, d                                       ; $409b: $42
    ld de, $7835                                  ; $409c: $11 $35 $78
    add a                                         ; $409f: $87
    adc b                                         ; $40a0: $88
    xor h                                         ; $40a1: $ac
    call c, Call_018_54a7                         ; $40a2: $dc $a7 $54
    ld b, [hl]                                    ; $40a5: $46
    ld a, b                                       ; $40a6: $78
    sbc d                                         ; $40a7: $9a
    cp l                                          ; $40a8: $bd
    db $ed                                        ; $40a9: $ed
    res 5, e                                      ; $40aa: $cb $ab
    res 5, c                                      ; $40ac: $cb $a9
    halt                                          ; $40ae: $76
    ld h, [hl]                                    ; $40af: $66
    ld h, a                                       ; $40b0: $67
    xor d                                         ; $40b1: $aa
    add [hl]                                      ; $40b2: $86
    ld d, l                                       ; $40b3: $55
    ld l, b                                       ; $40b4: $68
    add l                                         ; $40b5: $85
    ld [hl-], a                                   ; $40b6: $32
    inc hl                                        ; $40b7: $23
    ld [hl-], a                                   ; $40b8: $32
    ld [hl+], a                                   ; $40b9: $22
    ld b, l                                       ; $40ba: $45
    ld d, h                                       ; $40bb: $54
    ld b, h                                       ; $40bc: $44
    ld b, l                                       ; $40bd: $45
    ld h, a                                       ; $40be: $67
    ld h, [hl]                                    ; $40bf: $66
    adc d                                         ; $40c0: $8a
    sbc $ed                                       ; $40c1: $de $ed
    call z, $dcdd                                 ; $40c3: $cc $dd $dc
    cp l                                          ; $40c6: $bd
    xor $db                                       ; $40c7: $ee $db
    xor e                                         ; $40c9: $ab
    sbc $b7                                       ; $40ca: $de $b7
    ld [hl-], a                                   ; $40cc: $32
    dec [hl]                                      ; $40cd: $35
    ld d, d                                       ; $40ce: $52
    nop                                           ; $40cf: $00
    inc h                                         ; $40d0: $24
    ld h, a                                       ; $40d1: $67
    ld h, l                                       ; $40d2: $65
    ld b, e                                       ; $40d3: $43
    ld [hl-], a                                   ; $40d4: $32
    ld hl, $1300                                  ; $40d5: $21 $00 $13
    ld a, c                                       ; $40d8: $79
    xor b                                         ; $40d9: $a8
    adc c                                         ; $40da: $89
    cp l                                          ; $40db: $bd
    cp $ca                                        ; $40dc: $fe $ca
    xor d                                         ; $40de: $aa
    xor d                                         ; $40df: $aa
    xor d                                         ; $40e0: $aa
    cp [hl]                                       ; $40e1: $be
    cp $cc                                        ; $40e2: $fe $cc
    call z, $84dc                                 ; $40e4: $cc $dc $84
    ld [hl+], a                                   ; $40e7: $22
    ld [hl], $76                                  ; $40e8: $36 $76
    ld b, c                                       ; $40ea: $41
    ld [de], a                                    ; $40eb: $12
    ld d, [hl]                                    ; $40ec: $56
    ld h, l                                       ; $40ed: $65
    ld b, h                                       ; $40ee: $44
    ld b, e                                       ; $40ef: $43
    ld de, $5623                                  ; $40f0: $11 $23 $56
    ld h, [hl]                                    ; $40f3: $66
    adc e                                         ; $40f4: $8b
    rst $28                                       ; $40f5: $ef
    db $eb                                        ; $40f6: $eb
    xor e                                         ; $40f7: $ab
    rst $28                                       ; $40f8: $ef
    db $eb                                        ; $40f9: $eb
    sbc b                                         ; $40fa: $98
    sbc d                                         ; $40fb: $9a
    cp l                                          ; $40fc: $bd
    res 2, a                                      ; $40fd: $cb $97
    ld a, b                                       ; $40ff: $78
    add [hl]                                      ; $4100: $86
    ld d, h                                       ; $4101: $54
    ld [hl-], a                                   ; $4102: $32
    db $10                                        ; $4103: $10
    ld [bc], a                                    ; $4104: $02
    ld b, l                                       ; $4105: $45
    ld d, l                                       ; $4106: $55
    ld d, a                                       ; $4107: $57
    xor h                                         ; $4108: $ac
    jp z, $3364                                   ; $4109: $ca $64 $33

    ld d, a                                       ; $410c: $57
    adc b                                         ; $410d: $88
    sbc c                                         ; $410e: $99
    xor d                                         ; $410f: $aa
    cp h                                          ; $4110: $bc
    rst $28                                       ; $4111: $ef
    cp $b8                                        ; $4112: $fe $b8
    ld b, c                                       ; $4114: $41
    inc d                                         ; $4115: $14
    ld a, c                                       ; $4116: $79
    add l                                         ; $4117: $85
    ld b, l                                       ; $4118: $45
    adc d                                         ; $4119: $8a
    res 3, b                                      ; $411a: $cb $98
    ld h, e                                       ; $411c: $63
    dec [hl]                                      ; $411d: $35
    ld h, a                                       ; $411e: $67
    ld h, l                                       ; $411f: $65
    ld b, h                                       ; $4120: $44
    ld l, c                                       ; $4121: $69
    xor d                                         ; $4122: $aa
    sbc b                                         ; $4123: $98
    ld [hl], l                                    ; $4124: $75
    ld b, d                                       ; $4125: $42
    dec h                                         ; $4126: $25
    adc b                                         ; $4127: $88
    adc c                                         ; $4128: $89
    xor e                                         ; $4129: $ab
    rst $28                                       ; $412a: $ef
    db $fd                                        ; $412b: $fd
    db $dd                                        ; $412c: $dd
    call c, Call_018_54a6                         ; $412d: $dc $a6 $54
    ld b, e                                       ; $4130: $43
    ld [hl+], a                                   ; $4131: $22
    dec [hl]                                      ; $4132: $35
    adc b                                         ; $4133: $88
    adc b                                         ; $4134: $88
    cp [hl]                                       ; $4135: $be
    db $fd                                        ; $4136: $fd
    add e                                         ; $4137: $83
    inc de                                        ; $4138: $13
    ld d, h                                       ; $4139: $54
    ld [hl-], a                                   ; $413a: $32
    ld [de], a                                    ; $413b: $12
    ld d, a                                       ; $413c: $57
    adc b                                         ; $413d: $88
    adc b                                         ; $413e: $88
    add a                                         ; $413f: $87
    ld h, h                                       ; $4140: $64
    ld b, h                                       ; $4141: $44
    ld l, b                                       ; $4142: $68
    xor e                                         ; $4143: $ab
    call z, $efcd                                 ; $4144: $cc $cd $ef
    db $fd                                        ; $4147: $fd
    sub [hl]                                      ; $4148: $96
    ld d, h                                       ; $4149: $54
    ld b, l                                       ; $414a: $45
    ld a, b                                       ; $414b: $78
    adc b                                         ; $414c: $88
    sbc e                                         ; $414d: $9b
    sbc $ca                                       ; $414e: $de $ca
    add [hl]                                      ; $4150: $86
    ld h, l                                       ; $4151: $65
    ld sp, $0000                                  ; $4152: $31 $00 $00
    inc de                                        ; $4155: $13
    ld e, b                                       ; $4156: $58
    cp e                                          ; $4157: $bb
    cp d                                          ; $4158: $ba
    xor c                                         ; $4159: $a9
    adc b                                         ; $415a: $88
    ld h, l                                       ; $415b: $65
    ld d, h                                       ; $415c: $54
    ld b, l                                       ; $415d: $45
    ld l, b                                       ; $415e: $68
    xor d                                         ; $415f: $aa
    cp l                                          ; $4160: $bd
    xor $db                                       ; $4161: $ee $db
    xor b                                         ; $4163: $a8
    halt                                          ; $4164: $76
    ld d, [hl]                                    ; $4165: $56
    ld a, c                                       ; $4166: $79
    xor d                                         ; $4167: $aa
    xor d                                         ; $4168: $aa
    xor h                                         ; $4169: $ac
    db $ed                                        ; $416a: $ed
    xor b                                         ; $416b: $a8
    ld d, e                                       ; $416c: $53
    ld hl, $1200                                  ; $416d: $21 $00 $12
    inc [hl]                                      ; $4170: $34
    ld d, [hl]                                    ; $4171: $56
    ld a, c                                       ; $4172: $79
    cp h                                          ; $4173: $bc
    or a                                          ; $4174: $b7
    ld b, d                                       ; $4175: $42
    inc [hl]                                      ; $4176: $34
    ld h, [hl]                                    ; $4177: $66
    ld h, [hl]                                    ; $4178: $66
    ld a, b                                       ; $4179: $78
    xor h                                         ; $417a: $ac
    xor $ec                                       ; $417b: $ee $ec
    cp d                                          ; $417d: $ba
    sub a                                         ; $417e: $97
    ld h, [hl]                                    ; $417f: $66
    ld h, [hl]                                    ; $4180: $66
    ld a, c                                       ; $4181: $79
    cp l                                          ; $4182: $bd
    rst $28                                       ; $4183: $ef
    cp $c9                                        ; $4184: $fe $c9
    ld d, e                                       ; $4186: $53
    ld [hl+], a                                   ; $4187: $22
    ld de, $2312                                  ; $4188: $11 $12 $23
    ld l, c                                       ; $418b: $69
    cp l                                          ; $418c: $bd
    ret                                           ; $418d: $c9


    ld h, h                                       ; $418e: $64
    ld b, e                                       ; $418f: $43
    ld hl, $3611                                  ; $4190: $21 $11 $36
    ld a, b                                       ; $4193: $78
    xor e                                         ; $4194: $ab
    call z, $bbcc                                 ; $4195: $cc $cc $bb
    cp d                                          ; $4198: $ba
    ld [hl], h                                    ; $4199: $74
    dec [hl]                                      ; $419a: $35
    adc e                                         ; $419b: $8b
    cp d                                          ; $419c: $ba
    xor e                                         ; $419d: $ab
    rst $18                                       ; $419e: $df
    db $fd                                        ; $419f: $fd
    and a                                         ; $41a0: $a7
    ld b, h                                       ; $41a1: $44
    ld d, l                                       ; $41a2: $55
    ld b, d                                       ; $41a3: $42
    nop                                           ; $41a4: $00
    ld h, $ac                                     ; $41a5: $26 $ac

Call_018_41a7:
    cp d                                          ; $41a7: $ba
    sbc c                                         ; $41a8: $99
    xor c                                         ; $41a9: $a9
    ld [hl], h                                    ; $41aa: $74
    ld [hl+], a                                   ; $41ab: $22
    inc [hl]                                      ; $41ac: $34
    ld b, h                                       ; $41ad: $44
    ld b, [hl]                                    ; $41ae: $46
    sbc d                                         ; $41af: $9a
    cp e                                          ; $41b0: $bb
    call $daff                                    ; $41b1: $cd $ff $da
    ld h, h                                       ; $41b4: $64
    dec [hl]                                      ; $41b5: $35
    adc b                                         ; $41b6: $88
    add a                                         ; $41b7: $87
    ld h, [hl]                                    ; $41b8: $66
    ld a, c                                       ; $41b9: $79

Call_018_41ba:
    sbc c                                         ; $41ba: $99
    halt                                          ; $41bb: $76
    ld b, h                                       ; $41bc: $44
    inc sp                                        ; $41bd: $33
    ld b, [hl]                                    ; $41be: $46
    adc d                                         ; $41bf: $8a
    add [hl]                                      ; $41c0: $86
    ld d, [hl]                                    ; $41c1: $56
    ld a, c                                       ; $41c2: $79
    xor c                                         ; $41c3: $a9
    adc b                                         ; $41c4: $88
    sbc d                                         ; $41c5: $9a
    cp e                                          ; $41c6: $bb
    sub [hl]                                      ; $41c7: $96
    ld d, l                                       ; $41c8: $55
    ld a, c                                       ; $41c9: $79
    adc $dc                                       ; $41ca: $ce $dc
    xor b                                         ; $41cc: $a8
    ld a, c                                       ; $41cd: $79
    xor e                                         ; $41ce: $ab
    sub l                                         ; $41cf: $95
    ld de, $a948                                  ; $41d0: $11 $48 $a9
    ld h, h                                       ; $41d3: $64
    ld b, [hl]                                    ; $41d4: $46
    adc c                                         ; $41d5: $89
    add [hl]                                      ; $41d6: $86
    ld b, h                                       ; $41d7: $44
    ld b, h                                       ; $41d8: $44
    ld [hl-], a                                   ; $41d9: $32
    dec [hl]                                      ; $41da: $35
    ld a, b                                       ; $41db: $78
    ld [hl], a                                    ; $41dc: $77
    adc c                                         ; $41dd: $89
    adc $ff                                       ; $41de: $ce $ff
    db $db                                        ; $41e0: $db
    sbc c                                         ; $41e1: $99
    xor c                                         ; $41e2: $a9
    ld [hl], l                                    ; $41e3: $75
    ld b, h                                       ; $41e4: $44
    ld l, c                                       ; $41e5: $69
    cp h                                          ; $41e6: $bc
    call c, $97bb                                 ; $41e7: $dc $bb $97
    ld d, h                                       ; $41ea: $54
    inc sp                                        ; $41eb: $33
    ld [hl-], a                                   ; $41ec: $32
    ld de, $8a36                                  ; $41ed: $11 $36 $8a
    cp c                                          ; $41f0: $b9
    ld [hl], a                                    ; $41f1: $77
    ld a, b                                       ; $41f2: $78
    add a                                         ; $41f3: $87
    ld b, b                                       ; $41f4: $40
    ld bc, $ac37                                  ; $41f5: $01 $37 $ac
    call $eede                                    ; $41f8: $cd $de $ee
    db $db                                        ; $41fb: $db
    add [hl]                                      ; $41fc: $86
    ld h, l                                       ; $41fd: $65
    ld d, h                                       ; $41fe: $54
    ld b, l                                       ; $41ff: $45
    adc c                                         ; $4200: $89
    call $cade                                    ; $4201: $cd $de $ca
    xor b                                         ; $4204: $a8
    ld d, e                                       ; $4205: $53
    ld [hl-], a                                   ; $4206: $32
    ld de, $5823                                  ; $4207: $11 $23 $58
    xor d                                         ; $420a: $aa
    xor d                                         ; $420b: $aa
    sbc b                                         ; $420c: $98
    ld [hl], a                                    ; $420d: $77
    add a                                         ; $420e: $87
    ld d, c                                       ; $420f: $51
    ld bc, $9a37                                  ; $4210: $01 $37 $9a
    sbc d                                         ; $4213: $9a
    cp h                                          ; $4214: $bc
    db $dd                                        ; $4215: $dd
    call z, $95cb                                 ; $4216: $cc $cb $95
    ld [hl+], a                                   ; $4219: $22
    ld e, d                                       ; $421a: $5a
    db $dd                                        ; $421b: $dd
    and [hl]                                      ; $421c: $a6
    ld l, b                                       ; $421d: $68
    xor d                                         ; $421e: $aa
    add l                                         ; $421f: $85
    inc sp                                        ; $4220: $33
    inc sp                                        ; $4221: $33
    ld [hl+], a                                   ; $4222: $22
    ld c, b                                       ; $4223: $48
    adc $da                                       ; $4224: $ce $da
    xor d                                         ; $4226: $aa
    xor c                                         ; $4227: $a9
    ld h, e                                       ; $4228: $63
    ld [hl+], a                                   ; $4229: $22
    inc [hl]                                      ; $422a: $34
    ld b, h                                       ; $422b: $44
    ld b, h                                       ; $422c: $44
    ld l, c                                       ; $422d: $69
    adc $ff                                       ; $422e: $ce $ff
    ret                                           ; $4230: $c9


    adc b                                         ; $4231: $88
    ld h, e                                       ; $4232: $63
    ld de, $4523                                  ; $4233: $11 $23 $45
    ld l, c                                       ; $4236: $69
    adc $ff                                       ; $4237: $ce $ff
    cp $dd                                        ; $4239: $fe $dd
    jp c, Jump_018_6398                           ; $423b: $da $98 $63

    ld b, h                                       ; $423e: $44
    ld b, h                                       ; $423f: $44
    ld d, l                                       ; $4240: $55
    ld d, [hl]                                    ; $4241: $56
    ld d, h                                       ; $4242: $54
    ld b, h                                       ; $4243: $44
    ld b, l                                       ; $4244: $45
    ld h, l                                       ; $4245: $65
    ld b, h                                       ; $4246: $44
    ld h, a                                       ; $4247: $67
    adc d                                         ; $4248: $8a
    cp c                                          ; $4249: $b9
    ld [hl], l                                    ; $424a: $75
    ld b, [hl]                                    ; $424b: $46
    sbc c                                         ; $424c: $99
    ld [hl], l                                    ; $424d: $75
    ld [hl-], a                                   ; $424e: $32
    ld [hl], $ad                                  ; $424f: $36 $ad
    call c, $bea9                                 ; $4251: $dc $a9 $be
    cp $b8                                        ; $4254: $fe $b8
    ld h, a                                       ; $4256: $67
    adc d                                         ; $4257: $8a
    cp d                                          ; $4258: $ba
    ld [hl], l                                    ; $4259: $75
    ld d, a                                       ; $425a: $57
    sbc e                                         ; $425b: $9b
    sub [hl]                                      ; $425c: $96
    ld [hl-], a                                   ; $425d: $32
    ld [hl+], a                                   ; $425e: $22
    inc sp                                        ; $425f: $33
    inc hl                                        ; $4260: $23
    ld b, l                                       ; $4261: $45
    ld d, l                                       ; $4262: $55
    ld b, [hl]                                    ; $4263: $46
    adc c                                         ; $4264: $89
    sbc c                                         ; $4265: $99
    add a                                         ; $4266: $87
    adc c                                         ; $4267: $89
    add [hl]                                      ; $4268: $86
    ld b, h                                       ; $4269: $44
    ld l, c                                       ; $426a: $69
    call $b9dc                                    ; $426b: $cd $dc $b9
    adc c                                         ; $426e: $89
    cp [hl]                                       ; $426f: $be
    db $ec                                        ; $4270: $ec
    add h                                         ; $4271: $84
    ld [hl], $86                                  ; $4272: $36 $86
    ld d, [hl]                                    ; $4274: $56
    ld a, b                                       ; $4275: $78
    cp e                                          ; $4276: $bb
    add [hl]                                      ; $4277: $86
    ld h, l                                       ; $4278: $65
    ld b, l                                       ; $4279: $45
    ld b, h                                       ; $427a: $44
    ld d, [hl]                                    ; $427b: $56
    ld h, [hl]                                    ; $427c: $66
    ld d, [hl]                                    ; $427d: $56
    adc e                                         ; $427e: $8b
    sbc $b6                                       ; $427f: $de $b6
    inc sp                                        ; $4281: $33
    dec [hl]                                      ; $4282: $35
    ld h, [hl]                                    ; $4283: $66
    ld d, a                                       ; $4284: $57
    cp [hl]                                       ; $4285: $be
    cp $ec                                        ; $4286: $fe $ec
    xor c                                         ; $4288: $a9
    sub a                                         ; $4289: $97
    ld d, l                                       ; $428a: $55
    ld h, l                                       ; $428b: $65
    ld b, d                                       ; $428c: $42
    ld de, $de59                                  ; $428d: $11 $59 $de
    jp c, $8798                                   ; $4290: $da $98 $87

    ld b, c                                       ; $4293: $41
    nop                                           ; $4294: $00
    inc b                                         ; $4295: $04
    ld h, [hl]                                    ; $4296: $66
    ld l, c                                       ; $4297: $69
    cp e                                          ; $4298: $bb
    cp e                                          ; $4299: $bb
    cp d                                          ; $429a: $ba
    xor b                                         ; $429b: $a8
    ld [hl], l                                    ; $429c: $75
    ld d, l                                       ; $429d: $55
    ld h, a                                       ; $429e: $67
    ld a, b                                       ; $429f: $78
    xor e                                         ; $42a0: $ab
    rst $18                                       ; $42a1: $df
    cp $b7                                        ; $42a2: $fe $b7
    ld d, h                                       ; $42a4: $54
    ld [hl-], a                                   ; $42a5: $32
    ld hl, $3412                                  ; $42a6: $21 $12 $34
    ld a, d                                       ; $42a9: $7a
    cp e                                          ; $42aa: $bb
    xor c                                         ; $42ab: $a9
    sbc d                                         ; $42ac: $9a
    and a                                         ; $42ad: $a7
    ld d, e                                       ; $42ae: $53
    inc hl                                        ; $42af: $23
    ld d, a                                       ; $42b0: $57
    ld [hl], a                                    ; $42b1: $77
    adc c                                         ; $42b2: $89
    rst $08                                       ; $42b3: $cf
    cp $ca                                        ; $42b4: $fe $ca
    halt                                          ; $42b6: $76
    ld h, l                                       ; $42b7: $65

Call_018_42b8:
    ld b, h                                       ; $42b8: $44
    inc sp                                        ; $42b9: $33
    ld b, [hl]                                    ; $42ba: $46
    ld a, c                                       ; $42bb: $79
    cp e                                          ; $42bc: $bb
    xor c                                         ; $42bd: $a9
    ld [hl], a                                    ; $42be: $77
    ld [hl], a                                    ; $42bf: $77
    add l                                         ; $42c0: $85
    ld [hl-], a                                   ; $42c1: $32
    ld [hl], $bd                                  ; $42c2: $36 $bd
    rst $38                                       ; $42c4: $ff
    db $ed                                        ; $42c5: $ed
    jp z, Jump_018_7698                           ; $42c6: $ca $98 $76

    ld b, e                                       ; $42c9: $43
    ld hl, $8a24                                  ; $42ca: $21 $24 $8a
    call $bbcc                                    ; $42cd: $cd $cc $bb
    xor b                                         ; $42d0: $a8
    ld d, d                                       ; $42d1: $52
    nop                                           ; $42d2: $00
    ld bc, $6824                                  ; $42d3: $01 $24 $68
    xor e                                         ; $42d6: $ab
    xor d                                         ; $42d7: $aa
    cp e                                          ; $42d8: $bb
    cp c                                          ; $42d9: $b9
    ld h, e                                       ; $42da: $63
    inc hl                                        ; $42db: $23
    ld b, l                                       ; $42dc: $45
    ld a, b                                       ; $42dd: $78
    xor l                                         ; $42de: $ad
    rst $38                                       ; $42df: $ff
    rst $38                                       ; $42e0: $ff
    cp $db                                        ; $42e1: $fe $db
    add [hl]                                      ; $42e3: $86
    ld b, e                                       ; $42e4: $43
    inc hl                                        ; $42e5: $23
    ld b, l                                       ; $42e6: $45
    ld h, a                                       ; $42e7: $67
    adc b                                         ; $42e8: $88
    sbc d                                         ; $42e9: $9a
    xor b                                         ; $42ea: $a8
    ld d, d                                       ; $42eb: $52
    ld de, $0011                                  ; $42ec: $11 $11 $00
    ld [de], a                                    ; $42ef: $12
    ld d, a                                       ; $42f0: $57
    sbc e                                         ; $42f1: $9b
    call z, $98cb                                 ; $42f2: $cc $cb $98
    add a                                         ; $42f5: $87
    ld [hl], a                                    ; $42f6: $77
    ld a, b                                       ; $42f7: $78
    xor l                                         ; $42f8: $ad
    xor $ff                                       ; $42f9: $ee $ff
    rst $38                                       ; $42fb: $ff
    db $ed                                        ; $42fc: $ed
    and a                                         ; $42fd: $a7
    ld b, d                                       ; $42fe: $42
    db $10                                        ; $42ff: $10
    ld [de], a                                    ; $4300: $12
    ld b, [hl]                                    ; $4301: $46
    adc c                                         ; $4302: $89
    adc b                                         ; $4303: $88
    add a                                         ; $4304: $87
    halt                                          ; $4305: $76
    ld d, e                                       ; $4306: $53
    ld hl, $1200                                  ; $4307: $21 $00 $12
    ld e, b                                       ; $430a: $58
    xor h                                         ; $430b: $ac
    db $dd                                        ; $430c: $dd
    call z, $bacb                                 ; $430d: $cc $cb $ba
    sbc b                                         ; $4310: $98
    add a                                         ; $4311: $87
    ld a, b                                       ; $4312: $78
    adc c                                         ; $4313: $89
    sbc e                                         ; $4314: $9b
    adc $ed                                       ; $4315: $ce $ed
    cp c                                          ; $4317: $b9
    ld [hl], l                                    ; $4318: $75
    ld d, h                                       ; $4319: $54
    ld b, e                                       ; $431a: $43
    ld [hl+], a                                   ; $431b: $22
    dec [hl]                                      ; $431c: $35
    ld a, b                                       ; $431d: $78
    adc b                                         ; $431e: $88
    add a                                         ; $431f: $87
    ld b, c                                       ; $4320: $41
    ld bc, $4335                                  ; $4321: $01 $35 $43
    dec [hl]                                      ; $4324: $35
    xor l                                         ; $4325: $ad
    cp $dd                                        ; $4326: $fe $dd
    sbc $ec                                       ; $4328: $de $ec
    xor b                                         ; $432a: $a8
    ld [hl], a                                    ; $432b: $77
    ld h, a                                       ; $432c: $67
    adc c                                         ; $432d: $89
    xor e                                         ; $432e: $ab
    xor c                                         ; $432f: $a9
    sbc d                                         ; $4330: $9a
    cp h                                          ; $4331: $bc
    xor b                                         ; $4332: $a8
    ld d, e                                       ; $4333: $53
    inc sp                                        ; $4334: $33
    ld [hl-], a                                   ; $4335: $32
    inc hl                                        ; $4336: $23
    ld b, l                                       ; $4337: $45
    ld b, e                                       ; $4338: $43
    ld [hl+], a                                   ; $4339: $22
    dec [hl]                                      ; $433a: $35
    ld [hl], a                                    ; $433b: $77
    ld d, h                                       ; $433c: $54
    inc [hl]                                      ; $433d: $34
    ld l, b                                       ; $433e: $68
    xor l                                         ; $433f: $ad
    xor $ee                                       ; $4340: $ee $ee
    rst $28                                       ; $4342: $ef
    db $fd                                        ; $4343: $fd
    sub [hl]                                      ; $4344: $96
    ld b, e                                       ; $4345: $43
    inc sp                                        ; $4346: $33
    ld [hl+], a                                   ; $4347: $22
    ld l, d                                       ; $4348: $6a
    call $dcee                                    ; $4349: $cd $ee $dc
    res 5, d                                      ; $434c: $cb $aa
    sub [hl]                                      ; $434e: $96
    ld [hl-], a                                   ; $434f: $32
    inc sp                                        ; $4350: $33
    ld b, e                                       ; $4351: $43
    inc sp                                        ; $4352: $33
    ld h, a                                       ; $4353: $67
    adc c                                         ; $4354: $89
    xor d                                         ; $4355: $aa
    xor b                                         ; $4356: $a8
    ld d, e                                       ; $4357: $53
    ld [hl-], a                                   ; $4358: $32
    ld de, $7824                                  ; $4359: $11 $24 $78
    sbc b                                         ; $435c: $98
    ld [hl], a                                    ; $435d: $77
    ld a, c                                       ; $435e: $79
    cp e                                          ; $435f: $bb
    sub [hl]                                      ; $4360: $96
    ld d, [hl]                                    ; $4361: $56
    sbc e                                         ; $4362: $9b
    res 2, a                                      ; $4363: $cb $97
    adc e                                         ; $4365: $8b
    rst $28                                       ; $4366: $ef
    db $fc                                        ; $4367: $fc
    add l                                         ; $4368: $85
    ld b, h                                       ; $4369: $44
    ld d, [hl]                                    ; $436a: $56
    ld h, [hl]                                    ; $436b: $66
    ld d, h                                       ; $436c: $54
    ld b, [hl]                                    ; $436d: $46
    adc b                                         ; $436e: $88
    sbc d                                         ; $436f: $9a
    sub a                                         ; $4370: $97
    halt                                          ; $4371: $76
    ld h, l                                       ; $4372: $65
    ld sp, $4602                                  ; $4373: $31 $02 $46
    ld a, b                                       ; $4376: $78
    xor h                                         ; $4377: $ac
    xor $db                                       ; $4378: $ee $db
    xor d                                         ; $437a: $aa
    sub [hl]                                      ; $437b: $96
    ld b, e                                       ; $437c: $43
    ld b, l                                       ; $437d: $45
    ld [hl], a                                    ; $437e: $77
    ld h, [hl]                                    ; $437f: $66
    adc e                                         ; $4380: $8b
    rst $18                                       ; $4381: $df
    cp $da                                        ; $4382: $fe $da
    add l                                         ; $4384: $85
    ld sp, $1211                                  ; $4385: $31 $11 $12
    ld b, [hl]                                    ; $4388: $46
    ld a, b                                       ; $4389: $78
    sbc c                                         ; $438a: $99
    sbc c                                         ; $438b: $99
    add a                                         ; $438c: $87
    ld h, l                                       ; $438d: $65
    ld hl, $9b36                                  ; $438e: $21 $36 $9b
    cp d                                          ; $4391: $ba
    xor h                                         ; $4392: $ac
    rst $28                                       ; $4393: $ef
    cp $ca                                        ; $4394: $fe $ca

Call_018_4396:
    sbc b                                         ; $4396: $98
    ld h, l                                       ; $4397: $65
    ld d, l                                       ; $4398: $55
    ld h, a                                       ; $4399: $67
    ld h, [hl]                                    ; $439a: $66
    ld a, b                                       ; $439b: $78
    sbc c                                         ; $439c: $99
    add [hl]                                      ; $439d: $86
    ld d, e                                       ; $439e: $53
    ld [hl-], a                                   ; $439f: $32
    ld de, $5524                                  ; $43a0: $11 $24 $55
    ld d, [hl]                                    ; $43a3: $56
    ld a, b                                       ; $43a4: $78
    sbc d                                         ; $43a5: $9a

Call_018_43a6:
    xor c                                         ; $43a6: $a9
    adc c                                         ; $43a7: $89
    sbc c                                         ; $43a8: $99
    xor d                                         ; $43a9: $aa
    sbc b                                         ; $43aa: $98
    ld a, c                                       ; $43ab: $79
    cp l                                          ; $43ac: $bd
    db $ed                                        ; $43ad: $ed
    db $dd                                        ; $43ae: $dd
    xor $da                                       ; $43af: $ee $da
    halt                                          ; $43b1: $76
    ld h, [hl]                                    ; $43b2: $66
    ld b, e                                       ; $43b3: $43
    ld c, b                                       ; $43b4: $48
    cp d                                          ; $43b5: $ba
    ld [hl], l                                    ; $43b6: $75
    ld b, a                                       ; $43b7: $47

Call_018_43b8:
    add [hl]                                      ; $43b8: $86
    jr nz, jr_018_43bd                            ; $43b9: $20 $02

    inc [hl]                                      ; $43bb: $34
    ld d, l                                       ; $43bc: $55

jr_018_43bd:
    ld d, [hl]                                    ; $43bd: $56
    ld d, h                                       ; $43be: $54
    ld e, b                                       ; $43bf: $58
    xor e                                         ; $43c0: $ab
    xor c                                         ; $43c1: $a9
    add [hl]                                      ; $43c2: $86
    ld b, e                                       ; $43c3: $43
    ld l, c                                       ; $43c4: $69
    cp e                                          ; $43c5: $bb
    sbc c                                         ; $43c6: $99
    cp l                                          ; $43c7: $bd
    jp c, $ac78                                   ; $43c8: $da $78 $ac

    call z, $bbbb                                 ; $43cb: $cc $bb $bb
    cp h                                          ; $43ce: $bc
    db $ed                                        ; $43cf: $ed
    add h                                         ; $43d0: $84
    inc [hl]                                      ; $43d1: $34
    ld d, h                                       ; $43d2: $54
    db $10                                        ; $43d3: $10
    inc b                                         ; $43d4: $04
    adc b                                         ; $43d5: $88
    halt                                          ; $43d6: $76
    ld d, l                                       ; $43d7: $55

Call_018_43d8:
    ld a, b                                       ; $43d8: $78
    ld h, h                                       ; $43d9: $64
    inc [hl]                                      ; $43da: $34
    ld h, [hl]                                    ; $43db: $66
    ld b, d                                       ; $43dc: $42
    dec h                                         ; $43dd: $25
    sbc d                                         ; $43de: $9a
    sub a                                         ; $43df: $97
    add a                                         ; $43e0: $87
    xor h                                         ; $43e1: $ac
    db $dd                                        ; $43e2: $dd
    cp c                                          ; $43e3: $b9
    adc b                                         ; $43e4: $88
    ld h, l                                       ; $43e5: $65
    ld a, e                                       ; $43e6: $7b
    rst $28                                       ; $43e7: $ef
    reti                                          ; $43e8: $d9


    sbc e                                         ; $43e9: $9b
    call z, Call_018_58a6                         ; $43ea: $cc $a6 $58
    xor d                                         ; $43ed: $aa
    ld [hl], h                                    ; $43ee: $74
    ld de, $ab48                                  ; $43ef: $11 $48 $ab
    sub a                                         ; $43f2: $97
    ld b, l                                       ; $43f3: $45
    ld a, b                                       ; $43f4: $78
    ld [hl], l                                    ; $43f5: $75
    ld hl, $4224                                  ; $43f6: $21 $24 $42
    inc hl                                        ; $43f9: $23
    ld l, b                                       ; $43fa: $68
    sub a                                         ; $43fb: $97
    ld a, c                                       ; $43fc: $79
    call Call_018_56b8                            ; $43fd: $cd $b8 $56
    xor l                                         ; $4400: $ad
    rst $38                                       ; $4401: $ff
    jp z, $ab99                                   ; $4402: $ca $99 $ab

    cp d                                          ; $4405: $ba
    sbc d                                         ; $4406: $9a
    xor c                                         ; $4407: $a9
    add a                                         ; $4408: $87
    ld d, l                                       ; $4409: $55
    ld h, a                                       ; $440a: $67
    ld [hl], a                                    ; $440b: $77
    ld d, e                                       ; $440c: $53
    inc hl                                        ; $440d: $23
    ld [hl-], a                                   ; $440e: $32
    inc sp                                        ; $440f: $33
    ld [hl+], a                                   ; $4410: $22
    inc h                                         ; $4411: $24
    ld d, [hl]                                    ; $4412: $56
    ld d, l                                       ; $4413: $55
    ld d, a                                       ; $4414: $57
    ld [hl], a                                    ; $4415: $77
    halt                                          ; $4416: $76
    ld a, b                                       ; $4417: $78
    adc b                                         ; $4418: $88
    adc d                                         ; $4419: $8a
    call z, $9aca                                 ; $441a: $cc $ca $9a
    cp l                                          ; $441d: $bd
    rst $28                                       ; $441e: $ef
    call c, $abaa                                 ; $441f: $dc $aa $ab
    cp e                                          ; $4422: $bb
    cp d                                          ; $4423: $ba
    adc b                                         ; $4424: $88
    ld [hl], l                                    ; $4425: $75
    ld b, e                                       ; $4426: $43
    db $10                                        ; $4427: $10
    ld [bc], a                                    ; $4428: $02
    ld [hl-], a                                   ; $4429: $32
    ld [hl+], a                                   ; $442a: $22
    inc h                                         ; $442b: $24
    ld a, b                                       ; $442c: $78
    adc b                                         ; $442d: $88
    adc b                                         ; $442e: $88
    add a                                         ; $442f: $87
    ld b, d                                       ; $4430: $42
    ld [de], a                                    ; $4431: $12
    dec [hl]                                      ; $4432: $35
    ld h, a                                       ; $4433: $67
    ld a, b                                       ; $4434: $78
    xor l                                         ; $4435: $ad
    rst $38                                       ; $4436: $ff
    rst $38                                       ; $4437: $ff
    rst $38                                       ; $4438: $ff
    db $ec                                        ; $4439: $ec
    cp d                                          ; $443a: $ba
    sbc c                                         ; $443b: $99
    sbc b                                         ; $443c: $98
    adc b                                         ; $443d: $88
    sbc c                                         ; $443e: $99
    sbc d                                         ; $443f: $9a
    cp e                                          ; $4440: $bb
    sub a                                         ; $4441: $97
    ld b, d                                       ; $4442: $42
    ld hl, $1200                                  ; $4443: $21 $00 $12
    ld b, [hl]                                    ; $4446: $46
    ld h, l                                       ; $4447: $65
    ld d, [hl]                                    ; $4448: $56
    ld h, [hl]                                    ; $4449: $66
    ld h, h                                       ; $444a: $64
    ld de, $3423                                  ; $444b: $11 $23 $34
    ld h, a                                       ; $444e: $67
    xor h                                         ; $444f: $ac
    db $dd                                        ; $4450: $dd
    call z, $eddd                                 ; $4451: $cc $dd $ed
    cp c                                          ; $4454: $b9
    sbc d                                         ; $4455: $9a
    cp h                                          ; $4456: $bc
    sbc $ff                                       ; $4457: $de $ff
    db $ec                                        ; $4459: $ec
    sub [hl]                                      ; $445a: $96
    ld h, [hl]                                    ; $445b: $66
    ld d, e                                       ; $445c: $53
    ld de, $1101                                  ; $445d: $11 $01 $11
    inc de                                        ; $4460: $13
    ld a, e                                       ; $4461: $7b
    and a                                         ; $4462: $a7
    ld d, [hl]                                    ; $4463: $56
    adc c                                         ; $4464: $89
    add h                                         ; $4465: $84
    db $10                                        ; $4466: $10
    ld [de], a                                    ; $4467: $12
    ld e, b                                       ; $4468: $58
    cp l                                          ; $4469: $bd
    db $ec                                        ; $446a: $ec
    xor d                                         ; $446b: $aa
    cp h                                          ; $446c: $bc
    ret                                           ; $446d: $c9


    ld [hl], l                                    ; $446e: $75
    ld b, l                                       ; $446f: $45
    add a                                         ; $4470: $87
    adc b                                         ; $4471: $88
    sbc d                                         ; $4472: $9a

Call_018_4473:
    sbc $ff                                       ; $4473: $de $ff

Jump_018_4475:
    db $eb                                        ; $4475: $eb
    ld [hl], e                                    ; $4476: $73
    nop                                           ; $4477: $00
    ld [de], a                                    ; $4478: $12
    ld [hl+], a                                   ; $4479: $22
    ld b, a                                       ; $447a: $47
    call $aaca                                    ; $447b: $cd $ca $aa
    and a                                         ; $447e: $a7
    ld b, d                                       ; $447f: $42
    inc [hl]                                      ; $4480: $34
    ld b, d                                       ; $4481: $42
    ld bc, $df5a                                  ; $4482: $01 $5a $df
    rst $38                                       ; $4485: $ff

Call_018_4486:
Jump_018_4486:
    xor $ed                                       ; $4486: $ee $ed

Jump_018_4488:
    ret                                           ; $4488: $c9


    ld h, h                                       ; $4489: $64
    jr nz, jr_018_449f                            ; $448a: $20 $13

    ld l, c                                       ; $448c: $69
    call c, Call_018_4595                         ; $448d: $dc $95 $45
    adc d                                         ; $4490: $8a
    sub [hl]                                      ; $4491: $96
    ld [hl+], a                                   ; $4492: $22
    ld [hl+], a                                   ; $4493: $22
    inc [hl]                                      ; $4494: $34
    ld e, b                                       ; $4495: $58
    rst $18                                       ; $4496: $df
    db $fd                                        ; $4497: $fd
    jp z, $94ab                                   ; $4498: $ca $ab $94

    ld [de], a                                    ; $449b: $12
    inc sp                                        ; $449c: $33
    inc sp                                        ; $449d: $33
    ld b, [hl]                                    ; $449e: $46

jr_018_449f:
    xor e                                         ; $449f: $ab
    cp c                                          ; $44a0: $b9
    adc c                                         ; $44a1: $89
    xor d                                         ; $44a2: $aa
    sbc b                                         ; $44a3: $98
    adc b                                         ; $44a4: $88
    adc b                                         ; $44a5: $88
    adc c                                         ; $44a6: $89
    xor l                                         ; $44a7: $ad
    xor $ca                                       ; $44a8: $ee $ca
    sbc c                                         ; $44aa: $99
    sbc d                                         ; $44ab: $9a
    sub l                                         ; $44ac: $95
    ld hl, $6813                                  ; $44ad: $21 $13 $68
    add [hl]                                      ; $44b0: $86
    ld h, [hl]                                    ; $44b1: $66
    adc d                                         ; $44b2: $8a
    cp d                                          ; $44b3: $ba
    add l                                         ; $44b4: $85
    ld b, h                                       ; $44b5: $44
    ld [hl-], a                                   ; $44b6: $32
    nop                                           ; $44b7: $00
    inc d                                         ; $44b8: $14
    ld h, [hl]                                    ; $44b9: $66
    ld h, a                                       ; $44ba: $67
    cp l                                          ; $44bb: $bd
    xor $ca                                       ; $44bc: $ee $ca
    cp h                                          ; $44be: $bc
    jp z, Jump_018_6786                           ; $44bf: $ca $86 $67

    adc c                                         ; $44c2: $89
    xor h                                         ; $44c3: $ac
    sbc $fd                                       ; $44c4: $de $fd
    call Call_018_74ca                            ; $44c6: $cd $ca $74
    inc sp                                        ; $44c9: $33
    ld b, h                                       ; $44ca: $44
    ld d, [hl]                                    ; $44cb: $56
    ld [hl], a                                    ; $44cc: $77
    ld d, l                                       ; $44cd: $55
    ld h, a                                       ; $44ce: $67
    ld h, e                                       ; $44cf: $63
    nop                                           ; $44d0: $00
    ld [hl+], a                                   ; $44d1: $22
    db $10                                        ; $44d2: $10
    ld [bc], a                                    ; $44d3: $02
    ld d, a                                       ; $44d4: $57
    add a                                         ; $44d5: $87
    ld a, b                                       ; $44d6: $78
    adc c                                         ; $44d7: $89
    xor d                                         ; $44d8: $aa
    xor d                                         ; $44d9: $aa
    cp h                                          ; $44da: $bc
    call c, $bdaa                                 ; $44db: $dc $aa $bd
    db $ed                                        ; $44de: $ed
    call z, $fcdf                                 ; $44df: $cc $df $fc
    sub a                                         ; $44e2: $97
    adc b                                         ; $44e3: $88
    add [hl]                                      ; $44e4: $86
    ld b, e                                       ; $44e5: $43
    inc sp                                        ; $44e6: $33
    inc sp                                        ; $44e7: $33
    inc sp                                        ; $44e8: $33
    inc sp                                        ; $44e9: $33
    dec [hl]                                      ; $44ea: $35
    adc c                                         ; $44eb: $89
    add [hl]                                      ; $44ec: $86
    ld b, d                                       ; $44ed: $42
    dec [hl]                                      ; $44ee: $35
    ld d, h                                       ; $44ef: $54
    ld hl, $ab37                                  ; $44f0: $21 $37 $ab
    xor b                                         ; $44f3: $a8
    sbc h                                         ; $44f4: $9c
    rst $38                                       ; $44f5: $ff
    db $ec                                        ; $44f6: $ec
    cp e                                          ; $44f7: $bb
    cp e                                          ; $44f8: $bb
    sbc b                                         ; $44f9: $98
    halt                                          ; $44fa: $76
    ld b, e                                       ; $44fb: $43
    ld c, b                                       ; $44fc: $48
    cp h                                          ; $44fd: $bc
    xor b                                         ; $44fe: $a8
    ld h, [hl]                                    ; $44ff: $66
    adc b                                         ; $4500: $88
    ld [hl], l                                    ; $4501: $75
    ld sp, $3401                                  ; $4502: $31 $01 $34
    ld d, l                                       ; $4505: $55
    ld a, d                                       ; $4506: $7a
    sbc $dc                                       ; $4507: $de $dc
    xor c                                         ; $4509: $a9
    halt                                          ; $450a: $76
    ld h, a                                       ; $450b: $67
    adc b                                         ; $450c: $88
    ld [hl], a                                    ; $450d: $77
    sbc e                                         ; $450e: $9b
    cp e                                          ; $450f: $bb
    cp e                                          ; $4510: $bb
    rst $28                                       ; $4511: $ef
    reti                                          ; $4512: $d9


    ld d, d                                       ; $4513: $52
    inc hl                                        ; $4514: $23
    ld [hl-], a                                   ; $4515: $32
    nop                                           ; $4516: $00
    inc h                                         ; $4517: $24
    ld b, [hl]                                    ; $4518: $46
    ld a, c                                       ; $4519: $79
    sbc c                                         ; $451a: $99
    add [hl]                                      ; $451b: $86
    ld d, h                                       ; $451c: $54
    ld b, h                                       ; $451d: $44
    ld b, h                                       ; $451e: $44
    ld b, l                                       ; $451f: $45
    adc b                                         ; $4520: $88
    xor h                                         ; $4521: $ac
    rst $38                                       ; $4522: $ff
    db $fd                                        ; $4523: $fd
    cp h                                          ; $4524: $bc
    db $dd                                        ; $4525: $dd
    or a                                          ; $4526: $b7
    ld b, h                                       ; $4527: $44
    ld l, c                                       ; $4528: $69
    cp h                                          ; $4529: $bc
    call z, $feef                                 ; $452a: $cc $ef $fe
    or a                                          ; $452d: $b7
    ld b, d                                       ; $452e: $42
    ld hl, $1022                                  ; $452f: $21 $22 $10
    ld bc, $4434                                  ; $4532: $01 $34 $44
    ld b, [hl]                                    ; $4535: $46
    adc c                                         ; $4536: $89
    add a                                         ; $4537: $87
    ld d, h                                       ; $4538: $54
    ld b, h                                       ; $4539: $44
    ld b, [hl]                                    ; $453a: $46
    adc d                                         ; $453b: $8a
    xor c                                         ; $453c: $a9
    sbc d                                         ; $453d: $9a
    sbc $ec                                       ; $453e: $de $ec
    xor d                                         ; $4540: $aa
    cp h                                          ; $4541: $bc
    jp z, $ab99                                   ; $4542: $ca $99 $ab

    call $ccdc                                    ; $4545: $cd $dc $cc
    cp c                                          ; $4548: $b9
    ld [hl], h                                    ; $4549: $74
    inc sp                                        ; $454a: $33
    ld b, e                                       ; $454b: $43
    db $10                                        ; $454c: $10
    inc d                                         ; $454d: $14
    ld d, h                                       ; $454e: $54
    inc sp                                        ; $454f: $33
    ld b, a                                       ; $4550: $47
    add a                                         ; $4551: $87
    ld b, d                                       ; $4552: $42
    dec [hl]                                      ; $4553: $35
    ld d, h                                       ; $4554: $54
    inc [hl]                                      ; $4555: $34
    ld l, c                                       ; $4556: $69
    sbc $db                                       ; $4557: $de $db
    xor h                                         ; $4559: $ac
    xor $c9                                       ; $455a: $ee $c9
    ld [hl], a                                    ; $455c: $77
    ld a, b                                       ; $455d: $78
    adc b                                         ; $455e: $88
    ld [hl], a                                    ; $455f: $77
    ld h, a                                       ; $4560: $67
    sbc h                                         ; $4561: $9c
    xor $c9                                       ; $4562: $ee $c9
    sbc c                                         ; $4564: $99
    sbc b                                         ; $4565: $98
    halt                                          ; $4566: $76
    ld b, e                                       ; $4567: $43
    inc sp                                        ; $4568: $33
    ld h, a                                       ; $4569: $67
    ld h, [hl]                                    ; $456a: $66
    ld h, l                                       ; $456b: $65
    ld h, [hl]                                    ; $456c: $66
    ld h, l                                       ; $456d: $65
    ld d, h                                       ; $456e: $54
    ld b, e                                       ; $456f: $43
    ld b, l                                       ; $4570: $45
    ld h, a                                       ; $4571: $67
    sbc e                                         ; $4572: $9b
    xor d                                         ; $4573: $aa
    sbc b                                         ; $4574: $98
    xor e                                         ; $4575: $ab
    cp c                                          ; $4576: $b9
    ld h, [hl]                                    ; $4577: $66
    sbc h                                         ; $4578: $9c
    or [hl]                                       ; $4579: $b6
    ld hl, $cb59                                  ; $457a: $21 $59 $cb
    sbc b                                         ; $457d: $98
    sbc c                                         ; $457e: $99
    add [hl]                                      ; $457f: $86
    ld d, h                                       ; $4580: $54
    ld l, d                                       ; $4581: $6a
    db $dd                                        ; $4582: $dd
    cp b                                          ; $4583: $b8
    ld l, b                                       ; $4584: $68

Jump_018_4585:
    cp e                                          ; $4585: $bb
    xor b                                         ; $4586: $a8
    ld a, b                                       ; $4587: $78
    sbc c                                         ; $4588: $99
    adc b                                         ; $4589: $88
    adc c                                         ; $458a: $89
    sbc b                                         ; $458b: $98
    xor e                                         ; $458c: $ab
    add h                                         ; $458d: $84
    inc [hl]                                      ; $458e: $34
    ld l, b                                       ; $458f: $68
    add h                                         ; $4590: $84
    ld [de], a                                    ; $4591: $12
    ld d, l                                       ; $4592: $55
    ld d, l                                       ; $4593: $55
    ld h, h                                       ; $4594: $64

Call_018_4595:
    ld [hl-], a                                   ; $4595: $32

Call_018_4596:
    inc hl                                        ; $4596: $23
    ld e, b                                       ; $4597: $58
    sbc b                                         ; $4598: $98
    halt                                          ; $4599: $76
    ld h, h                                       ; $459a: $64
    dec [hl]                                      ; $459b: $35
    ld a, e                                       ; $459c: $7b
    xor $db                                       ; $459d: $ee $db
    xor d                                         ; $459f: $aa
    cp h                                          ; $45a0: $bc
    jp z, $8b66                                   ; $45a1: $ca $66 $8b

    rst $28                                       ; $45a4: $ef
    db $ed                                        ; $45a5: $ed
    cp e                                          ; $45a6: $bb
    cp e                                          ; $45a7: $bb
    cp d                                          ; $45a8: $ba
    ld [hl], l                                    ; $45a9: $75
    ld b, l                                       ; $45aa: $45
    ld b, e                                       ; $45ab: $43
    db $10                                        ; $45ac: $10
    ld [de], a                                    ; $45ad: $12
    ld [hl-], a                                   ; $45ae: $32
    ld [de], a                                    ; $45af: $12
    ld d, [hl]                                    ; $45b0: $56
    ld h, [hl]                                    ; $45b1: $66
    ld d, e                                       ; $45b2: $53
    inc hl                                        ; $45b3: $23
    ld b, [hl]                                    ; $45b4: $46
    add a                                         ; $45b5: $87
    ld h, l                                       ; $45b6: $65
    ld d, l                                       ; $45b7: $55
    ld a, c                                       ; $45b8: $79
    xor e                                         ; $45b9: $ab
    sbc $fe                                       ; $45ba: $de $fe
    db $db                                        ; $45bc: $db
    cp h                                          ; $45bd: $bc
    call z, $89ba                                 ; $45be: $cc $ba $89
    sbc b                                         ; $45c1: $98
    adc b                                         ; $45c2: $88
    ld [hl], a                                    ; $45c3: $77
    adc c                                         ; $45c4: $89
    add [hl]                                      ; $45c5: $86
    ld b, c                                       ; $45c6: $41
    nop                                           ; $45c7: $00
    dec [hl]                                      ; $45c8: $35
    ld h, a                                       ; $45c9: $67
    ld h, l                                       ; $45ca: $65
    ld h, [hl]                                    ; $45cb: $66
    ld [hl], a                                    ; $45cc: $77
    ld d, h                                       ; $45cd: $54
    ld d, [hl]                                    ; $45ce: $56
    ld a, b                                       ; $45cf: $78
    add l                                         ; $45d0: $85
    ld d, [hl]                                    ; $45d1: $56
    sbc h                                         ; $45d2: $9c
    xor $cb                                       ; $45d3: $ee $cb
    call z, $97ca                                 ; $45d5: $cc $ca $97
    ld a, b                                       ; $45d8: $78
    add a                                         ; $45d9: $87
    adc c                                         ; $45da: $89
    xor e                                         ; $45db: $ab
    cp h                                          ; $45dc: $bc
    res 2, [hl]                                   ; $45dd: $cb $96
    ld [hl-], a                                   ; $45df: $32
    inc hl                                        ; $45e0: $23
    ld [hl-], a                                   ; $45e1: $32
    db $10                                        ; $45e2: $10
    ld [bc], a                                    ; $45e3: $02
    ld d, a                                       ; $45e4: $57
    adc b                                         ; $45e5: $88
    ld [hl], a                                    ; $45e6: $77
    adc c                                         ; $45e7: $89
    add a                                         ; $45e8: $87
    sbc d                                         ; $45e9: $9a
    xor c                                         ; $45ea: $a9
    add a                                         ; $45eb: $87
    adc d                                         ; $45ec: $8a
    cp e                                          ; $45ed: $bb
    cp d                                          ; $45ee: $ba
    xor e                                         ; $45ef: $ab
    call $87da                                    ; $45f0: $cd $da $87
    ld h, a                                       ; $45f3: $67
    adc b                                         ; $45f4: $88
    add a                                         ; $45f5: $87
    ld h, l                                       ; $45f6: $65
    ld d, l                                       ; $45f7: $55
    ld h, h                                       ; $45f8: $64
    ld b, h                                       ; $45f9: $44
    ld b, l                                       ; $45fa: $45
    ld [hl], a                                    ; $45fb: $77
    ld d, h                                       ; $45fc: $54
    ld [hl-], a                                   ; $45fd: $32
    inc hl                                        ; $45fe: $23
    ld l, b                                       ; $45ff: $68
    sbc d                                         ; $4600: $9a
    xor e                                         ; $4601: $ab
    cp e                                          ; $4602: $bb
    cp d                                          ; $4603: $ba
    xor c                                         ; $4604: $a9
    sub a                                         ; $4605: $97
    ld d, h                                       ; $4606: $54
    ld d, l                                       ; $4607: $55
    ld h, a                                       ; $4608: $67
    adc c                                         ; $4609: $89
    xor e                                         ; $460a: $ab
    rst $28                                       ; $460b: $ef
    ei                                            ; $460c: $fb
    sbc b                                         ; $460d: $98
    sbc e                                         ; $460e: $9b
    cp b                                          ; $460f: $b8
    ld b, b                                       ; $4610: $40
    inc d                                         ; $4611: $14
    ld [hl], a                                    ; $4612: $77
    ld h, l                                       ; $4613: $65
    ld d, a                                       ; $4614: $57
    sbc d                                         ; $4615: $9a
    xor b                                         ; $4616: $a8
    ld h, l                                       ; $4617: $65
    inc [hl]                                      ; $4618: $34
    ld h, [hl]                                    ; $4619: $66
    ld d, h                                       ; $461a: $54
    ld d, a                                       ; $461b: $57
    adc b                                         ; $461c: $88
    add a                                         ; $461d: $87
    sbc e                                         ; $461e: $9b
    cp d                                          ; $461f: $ba
    sbc b                                         ; $4620: $98
    ld h, h                                       ; $4621: $64
    ld [hl-], a                                   ; $4622: $32
    ld [hl+], a                                   ; $4623: $22
    ld [hl+], a                                   ; $4624: $22
    scf                                           ; $4625: $37
    xor l                                         ; $4626: $ad
    rst $28                                       ; $4627: $ef
    db $ed                                        ; $4628: $ed
    sbc $ee                                       ; $4629: $de $ee
    jp c, Jump_018_5776                           ; $462b: $da $76 $57

    sbc c                                         ; $462e: $99
    ld [hl], a                                    ; $462f: $77
    adc c                                         ; $4630: $89
    cp h                                          ; $4631: $bc
    cp d                                          ; $4632: $ba
    xor c                                         ; $4633: $a9
    ld [hl], l                                    ; $4634: $75
    ld sp, $0011                                  ; $4635: $31 $11 $00
    dec [hl]                                      ; $4638: $35
    ld h, a                                       ; $4639: $67
    ld h, l                                       ; $463a: $65
    ld h, a                                       ; $463b: $67
    ld h, [hl]                                    ; $463c: $66
    ld h, [hl]                                    ; $463d: $66
    ld h, [hl]                                    ; $463e: $66
    ld h, [hl]                                    ; $463f: $66
    ld d, l                                       ; $4640: $55
    ld l, b                                       ; $4641: $68
    sbc d                                         ; $4642: $9a
    sbc c                                         ; $4643: $99
    cp [hl]                                       ; $4644: $be
    rst $38                                       ; $4645: $ff
    db $fd                                        ; $4646: $fd
    adc $ff                                       ; $4647: $ce $ff
    db $db                                        ; $4649: $db
    adc b                                         ; $464a: $88
    xor e                                         ; $464b: $ab
    xor b                                         ; $464c: $a8
    ld d, e                                       ; $464d: $53
    inc hl                                        ; $464e: $23
    ld hl, $2301                                  ; $464f: $21 $01 $23
    ld sp, $4602                                  ; $4652: $31 $02 $46
    adc b                                         ; $4655: $88
    add l                                         ; $4656: $85
    ld [hl-], a                                   ; $4657: $32
    ld b, [hl]                                    ; $4658: $46
    adc d                                         ; $4659: $8a
    xor c                                         ; $465a: $a9
    sbc d                                         ; $465b: $9a
    xor d                                         ; $465c: $aa
    cp e                                          ; $465d: $bb
    cp h                                          ; $465e: $bc
    res 5, d                                      ; $465f: $cb $aa
    xor h                                         ; $4661: $ac
    sbc $b7                                       ; $4662: $de $b7
    ld b, e                                       ; $4664: $43
    ld b, a                                       ; $4665: $47
    ld [hl], l                                    ; $4666: $75
    jr nz, jr_018_466a                            ; $4667: $20 $01

    ld b, a                                       ; $4669: $47

jr_018_466a:
    sbc d                                         ; $466a: $9a
    xor b                                         ; $466b: $a8
    ld h, [hl]                                    ; $466c: $66
    adc c                                         ; $466d: $89
    sbc c                                         ; $466e: $99
    ld [hl], l                                    ; $466f: $75
    ld [hl-], a                                   ; $4670: $32
    inc hl                                        ; $4671: $23
    ld e, b                                       ; $4672: $58
    xor e                                         ; $4673: $ab

Call_018_4674:
    cp h                                          ; $4674: $bc
    call $a9cb                                    ; $4675: $cd $cb $a9
    add [hl]                                      ; $4678: $86
    ld d, l                                       ; $4679: $55
    ld h, a                                       ; $467a: $67
    adc c                                         ; $467b: $89
    sbc d                                         ; $467c: $9a
    call z, $a9bb                                 ; $467d: $cc $bb $a9
    sbc b                                         ; $4680: $98
    ld h, e                                       ; $4681: $63
    ld hl, $1300                                  ; $4682: $21 $00 $13
    ld b, [hl]                                    ; $4685: $46
    ld a, c                                       ; $4686: $79
    adc $ed                                       ; $4687: $ce $ed
    xor b                                         ; $4689: $a8
    adc b                                         ; $468a: $88
    halt                                          ; $468b: $76
    ld sp, $6813                                  ; $468c: $31 $13 $68
    xor h                                         ; $468f: $ac
    db $dd                                        ; $4690: $dd
    sbc $ee                                       ; $4691: $de $ee
    cp b                                          ; $4693: $b8
    ld d, e                                       ; $4694: $53
    inc hl                                        ; $4695: $23
    ld b, h                                       ; $4696: $44
    ld d, l                                       ; $4697: $55
    ld l, b                                       ; $4698: $68
    xor e                                         ; $4699: $ab
    cp e                                          ; $469a: $bb
    cp d                                          ; $469b: $ba
    sub a                                         ; $469c: $97
    ld d, e                                       ; $469d: $53
    ld hl, $4623                                  ; $469e: $21 $23 $46
    ld a, b                                       ; $46a1: $78
    xor e                                         ; $46a2: $ab
    rst $28                                       ; $46a3: $ef
    db $fd                                        ; $46a4: $fd
    sub [hl]                                      ; $46a5: $96
    ld b, h                                       ; $46a6: $44
    ld b, h                                       ; $46a7: $44
    ld b, h                                       ; $46a8: $44
    ld b, l                                       ; $46a9: $45
    ld h, a                                       ; $46aa: $67
    adc e                                         ; $46ab: $8b
    sbc $ec                                       ; $46ac: $de $ec
    xor d                                         ; $46ae: $aa
    xor b                                         ; $46af: $a8
    ld h, h                                       ; $46b0: $64
    ld [hl+], a                                   ; $46b1: $22
    ld b, [hl]                                    ; $46b2: $46
    ld a, b                                       ; $46b3: $78
    adc b                                         ; $46b4: $88
    sbc h                                         ; $46b5: $9c
    xor $b8                                       ; $46b6: $ee $b8
    ld d, e                                       ; $46b8: $53
    ld hl, $4512                                  ; $46b9: $21 $12 $45
    ld h, l                                       ; $46bc: $65
    ld l, c                                       ; $46bd: $69
    adc $ed                                       ; $46be: $ce $ed
    cp d                                          ; $46c0: $ba
    add [hl]                                      ; $46c1: $86
    ld b, d                                       ; $46c2: $42
    ld de, $4612                                  ; $46c3: $11 $12 $46
    adc c                                         ; $46c6: $89
    cp l                                          ; $46c7: $bd
    rst $28                                       ; $46c8: $ef
    db $fd                                        ; $46c9: $fd
    cp c                                          ; $46ca: $b9
    ld [hl], l                                    ; $46cb: $75
    ld b, e                                       ; $46cc: $43
    inc [hl]                                      ; $46cd: $34
    ld d, [hl]                                    ; $46ce: $56
    adc d                                         ; $46cf: $8a
    cp e                                          ; $46d0: $bb
    call $a7dc                                    ; $46d1: $cd $dc $a7
    ld d, [hl]                                    ; $46d4: $56
    ld h, l                                       ; $46d5: $65
    ld sp, $5702                                  ; $46d6: $31 $02 $57
    adc c                                         ; $46d9: $89
    xor h                                         ; $46da: $ac
    res 2, a                                      ; $46db: $cb $97
    ld h, [hl]                                    ; $46dd: $66
    ld d, e                                       ; $46de: $53
    db $10                                        ; $46df: $10
    inc h                                         ; $46e0: $24
    ld a, b                                       ; $46e1: $78
    sbc d                                         ; $46e2: $9a
    cp e                                          ; $46e3: $bb
    cp e                                          ; $46e4: $bb
    res 2, a                                      ; $46e5: $cb $97
    ld h, [hl]                                    ; $46e7: $66
    ld h, [hl]                                    ; $46e8: $66
    ld d, l                                       ; $46e9: $55
    ld a, c                                       ; $46ea: $79
    cp h                                          ; $46eb: $bc
    rst $18                                       ; $46ec: $df
    rst $38                                       ; $46ed: $ff
    ret                                           ; $46ee: $c9


    ld d, d                                       ; $46ef: $52
    inc h                                         ; $46f0: $24
    ld d, h                                       ; $46f1: $54
    db $10                                        ; $46f2: $10
    ld h, $9b                                     ; $46f3: $26 $9b
    cp d                                          ; $46f5: $ba
    sbc c                                         ; $46f6: $99
    sbc b                                         ; $46f7: $98
    ld [hl], h                                    ; $46f8: $74
    ld [hl-], a                                   ; $46f9: $32
    ld [hl+], a                                   ; $46fa: $22
    ld [hl+], a                                   ; $46fb: $22
    ld [hl], $9b                                  ; $46fc: $36 $9b
    sbc $ff                                       ; $46fe: $de $ff
    db $ec                                        ; $4700: $ec
    xor b                                         ; $4701: $a8
    ld h, [hl]                                    ; $4702: $66
    ld h, l                                       ; $4703: $65
    ld b, h                                       ; $4704: $44
    ld b, [hl]                                    ; $4705: $46
    sbc h                                         ; $4706: $9c
    call c, $cdbb                                 ; $4707: $dc $bb $cd
    jp z, Jump_000_1074                           ; $470a: $ca $74 $10

    ld [de], a                                    ; $470d: $12
    ld b, [hl]                                    ; $470e: $46
    ld h, [hl]                                    ; $470f: $66
    adc b                                         ; $4710: $88
    adc c                                         ; $4711: $89
    sbc b                                         ; $4712: $98
    add [hl]                                      ; $4713: $86
    ld b, d                                       ; $4714: $42
    ld [hl+], a                                   ; $4715: $22
    ld [hl+], a                                   ; $4716: $22
    inc h                                         ; $4717: $24
    ld a, d                                       ; $4718: $7a
    call z, $eecc                                 ; $4719: $cc $cc $ee
    jp c, $7976                                   ; $471c: $da $76 $79

    xor d                                         ; $471f: $aa
    adc b                                         ; $4720: $88
    sbc e                                         ; $4721: $9b
    rst $28                                       ; $4722: $ef
    db $eb                                        ; $4723: $eb
    add [hl]                                      ; $4724: $86
    ld [hl], a                                    ; $4725: $77
    ld [hl], l                                    ; $4726: $75
    ld [hl-], a                                   ; $4727: $32
    inc hl                                        ; $4728: $23
    dec [hl]                                      ; $4729: $35
    ld h, a                                       ; $472a: $67
    adc b                                         ; $472b: $88
    add a                                         ; $472c: $87
    ld [hl], a                                    ; $472d: $77
    halt                                          ; $472e: $76
    ld d, d                                       ; $472f: $52
    nop                                           ; $4730: $00
    inc de                                        ; $4731: $13
    ld l, c                                       ; $4732: $69
    xor e                                         ; $4733: $ab
    call z, $cbdd                                 ; $4734: $cc $dd $cb
    xor c                                         ; $4737: $a9
    add a                                         ; $4738: $87
    ld h, l                                       ; $4739: $65
    ld d, [hl]                                    ; $473a: $56
    adc e                                         ; $473b: $8b
    call z, $cecb                                 ; $473c: $cc $cb $ce
    xor $da                                       ; $473f: $ee $da
    ld [hl], h                                    ; $4741: $74
    ld hl, $0011                                  ; $4742: $21 $11 $00
    dec h                                         ; $4745: $25
    ld a, c                                       ; $4746: $79
    sbc c                                         ; $4747: $99
    adc b                                         ; $4748: $88
    add a                                         ; $4749: $87
    ld h, [hl]                                    ; $474a: $66
    ld d, l                                       ; $474b: $55
    ld b, d                                       ; $474c: $42
    nop                                           ; $474d: $00
    inc de                                        ; $474e: $13
    ld l, b                                       ; $474f: $68
    adc b                                         ; $4750: $88
    xor h                                         ; $4751: $ac
    sbc $eb                                       ; $4752: $de $eb
    add a                                         ; $4754: $87
    adc c                                         ; $4755: $89
    xor b                                         ; $4756: $a8
    halt                                          ; $4757: $76
    ld h, a                                       ; $4758: $67
    xor h                                         ; $4759: $ac
    rst $28                                       ; $475a: $ef
    cp $cb                                        ; $475b: $fe $cb
    sbc b                                         ; $475d: $98
    adc b                                         ; $475e: $88
    halt                                          ; $475f: $76
    ld d, h                                       ; $4760: $54
    ld b, l                                       ; $4761: $45
    ld h, a                                       ; $4762: $67
    ld [hl], a                                    ; $4763: $77
    ld [hl], a                                    ; $4764: $77
    ld d, l                                       ; $4765: $55
    ld d, l                                       ; $4766: $55
    ld b, d                                       ; $4767: $42
    nop                                           ; $4768: $00
    ld [bc], a                                    ; $4769: $02
    inc sp                                        ; $476a: $33
    inc [hl]                                      ; $476b: $34
    ld d, a                                       ; $476c: $57
    adc c                                         ; $476d: $89
    xor d                                         ; $476e: $aa
    xor d                                         ; $476f: $aa
    cp e                                          ; $4770: $bb
    cp d                                          ; $4771: $ba
    adc b                                         ; $4772: $88
    adc b                                         ; $4773: $88
    xor h                                         ; $4774: $ac
    rst $28                                       ; $4775: $ef
    xor $dc                                       ; $4776: $ee $dc
    call z, $a7cb                                 ; $4778: $cc $cb $a7
    ld h, l                                       ; $477b: $65
    ld d, [hl]                                    ; $477c: $56
    halt                                          ; $477d: $76
    ld h, [hl]                                    ; $477e: $66
    ld [hl], a                                    ; $477f: $77
    adc b                                         ; $4780: $88
    halt                                          ; $4781: $76
    ld d, e                                       ; $4782: $53
    db $10                                        ; $4783: $10
    ld bc, $2312                                  ; $4784: $01 $12 $23
    ld b, [hl]                                    ; $4787: $46
    halt                                          ; $4788: $76
    ld h, a                                       ; $4789: $67
    adc d                                         ; $478a: $8a
    xor d                                         ; $478b: $aa
    sbc c                                         ; $478c: $99
    sbc c                                         ; $478d: $99
    sbc b                                         ; $478e: $98
    adc c                                         ; $478f: $89
    xor e                                         ; $4790: $ab
    cp h                                          ; $4791: $bc
    sbc $ff                                       ; $4792: $de $ff
    db $ec                                        ; $4794: $ec
    cp d                                          ; $4795: $ba
    sbc b                                         ; $4796: $98
    ld h, l                                       ; $4797: $65
    ld b, h                                       ; $4798: $44
    ld b, l                                       ; $4799: $45
    ld b, l                                       ; $479a: $45
    ld h, a                                       ; $479b: $67
    sbc c                                         ; $479c: $99
    add [hl]                                      ; $479d: $86
    ld d, h                                       ; $479e: $54
    inc sp                                        ; $479f: $33
    ld [hl-], a                                   ; $47a0: $32
    ld hl, $2501                                  ; $47a1: $21 $01 $25
    ld a, c                                       ; $47a4: $79
    sbc d                                         ; $47a5: $9a
    cp h                                          ; $47a6: $bc
    call z, $98ba                                 ; $47a7: $cc $ba $98
    ld [hl], a                                    ; $47aa: $77
    adc b                                         ; $47ab: $88
    adc c                                         ; $47ac: $89
    sbc d                                         ; $47ad: $9a
    call $edde                                    ; $47ae: $cd $de $ed
    jp z, Jump_018_4486                           ; $47b1: $ca $86 $44

    ld b, h                                       ; $47b4: $44
    ld b, h                                       ; $47b5: $44
    ld b, h                                       ; $47b6: $44
    ld l, b                                       ; $47b7: $68
    xor c                                         ; $47b8: $a9
    add [hl]                                      ; $47b9: $86
    ld d, l                                       ; $47ba: $55
    ld h, l                                       ; $47bb: $65
    ld sp, $3501                                  ; $47bc: $31 $01 $35
    ld h, a                                       ; $47bf: $67
    adc d                                         ; $47c0: $8a
    rst $18                                       ; $47c1: $df
    rst $38                                       ; $47c2: $ff
    db $ed                                        ; $47c3: $ed
    cp d                                          ; $47c4: $ba
    sub a                                         ; $47c5: $97
    ld d, h                                       ; $47c6: $54
    ld b, h                                       ; $47c7: $44
    ld d, l                                       ; $47c8: $55
    ld l, b                                       ; $47c9: $68
    cp l                                          ; $47ca: $bd
    sbc $dd                                       ; $47cb: $de $dd
    jp z, $4386                                   ; $47cd: $ca $86 $43

    stop                                          ; $47d0: $10 $00
    inc hl                                        ; $47d2: $23
    ld d, [hl]                                    ; $47d3: $56
    adc c                                         ; $47d4: $89
    xor e                                         ; $47d5: $ab
    call z, Call_018_76b9                         ; $47d6: $cc $b9 $76
    ld h, l                                       ; $47d9: $65
    ld b, e                                       ; $47da: $43
    ld b, l                                       ; $47db: $45
    adc e                                         ; $47dc: $8b
    call z, $debc                                 ; $47dd: $cc $bc $de
    db $ec                                        ; $47e0: $ec
    sub l                                         ; $47e1: $95
    ld b, e                                       ; $47e2: $43
    inc [hl]                                      ; $47e3: $34
    ld d, [hl]                                    ; $47e4: $56
    ld a, b                                       ; $47e5: $78
    sbc d                                         ; $47e6: $9a
    call $c9ee                                    ; $47e7: $cd $ee $c9
    ld h, h                                       ; $47ea: $64
    ld hl, $0000                                  ; $47eb: $21 $00 $00
    inc h                                         ; $47ee: $24
    ld l, b                                       ; $47ef: $68
    xor h                                         ; $47f0: $ac
    rst $38                                       ; $47f1: $ff
    jp c, Jump_018_6576                           ; $47f2: $da $76 $65

    ld d, e                                       ; $47f5: $53
    ld [de], a                                    ; $47f6: $12
    dec [hl]                                      ; $47f7: $35
    adc e                                         ; $47f8: $8b
    call z, $ffde                                 ; $47f9: $cc $de $ff
    ld [$4574], a                                 ; $47fc: $ea $74 $45
    ld d, h                                       ; $47ff: $54
    inc [hl]                                      ; $4800: $34
    ld l, c                                       ; $4801: $69
    call $ecef                                    ; $4802: $cd $ef $ec
    cp c                                          ; $4805: $b9
    add [hl]                                      ; $4806: $86
    ld d, d                                       ; $4807: $52
    nop                                           ; $4808: $00
    nop                                           ; $4809: $00
    inc h                                         ; $480a: $24
    ld l, c                                       ; $480b: $69
    xor e                                         ; $480c: $ab
    call $cadd                                    ; $480d: $cd $dd $ca
    add h                                         ; $4810: $84
    jr nz, jr_018_4815                            ; $4811: $20 $02

    inc sp                                        ; $4813: $33
    ld b, l                                       ; $4814: $45

jr_018_4815:
    ld a, d                                       ; $4815: $7a
    call $cbdd                                    ; $4816: $cd $dd $cb
    xor c                                         ; $4819: $a9
    ld h, e                                       ; $481a: $63
    inc sp                                        ; $481b: $33
    ld d, [hl]                                    ; $481c: $56
    ld [hl], a                                    ; $481d: $77
    sbc h                                         ; $481e: $9c
    rst $28                                       ; $481f: $ef
    db $fd                                        ; $4820: $fd
    call z, $85ca                                 ; $4821: $cc $ca $85
    ld hl, $2411                                  ; $4824: $21 $11 $24
    ld d, a                                       ; $4827: $57
    sbc e                                         ; $4828: $9b
    call $98ca                                    ; $4829: $cd $ca $98
    ld h, h                                       ; $482c: $64
    jr nz, jr_018_482f                            ; $482d: $20 $00

jr_018_482f:
    ld de, $7b24                                  ; $482f: $11 $24 $7b
    rst $28                                       ; $4832: $ef
    db $ed                                        ; $4833: $ed
    call z, $a7cc                                 ; $4834: $cc $cc $a7
    ld d, e                                       ; $4837: $53
    inc hl                                        ; $4838: $23
    ld b, [hl]                                    ; $4839: $46
    adc d                                         ; $483a: $8a
    xor d                                         ; $483b: $aa
    cp l                                          ; $483c: $bd
    db $dd                                        ; $483d: $dd
    jp z, $2174                                   ; $483e: $ca $74 $21

    ld [hl+], a                                   ; $4841: $22
    inc hl                                        ; $4842: $23
    ld d, a                                       ; $4843: $57
    adc d                                         ; $4844: $8a
    call $86cb                                    ; $4845: $cd $cb $86
    ld h, l                                       ; $4848: $65
    ld d, h                                       ; $4849: $54
    ld hl, $5812                                  ; $484a: $21 $12 $58
    xor l                                         ; $484d: $ad
    rst $38                                       ; $484e: $ff
    db $ed                                        ; $484f: $ed
    cp h                                          ; $4850: $bc
    res 2, [hl]                                   ; $4851: $cb $96
    ld [hl-], a                                   ; $4853: $32
    inc de                                        ; $4854: $13
    ld d, a                                       ; $4855: $57
    add a                                         ; $4856: $87
    ld d, l                                       ; $4857: $55
    ld a, d                                       ; $4858: $7a
    db $dd                                        ; $4859: $dd
    and a                                         ; $485a: $a7
    ld b, e                                       ; $485b: $43
    ld b, l                                       ; $485c: $45
    ld b, e                                       ; $485d: $43
    inc hl                                        ; $485e: $23
    ld d, [hl]                                    ; $485f: $56
    adc b                                         ; $4860: $88
    adc c                                         ; $4861: $89
    xor e                                         ; $4862: $ab
    cp d                                          ; $4863: $ba
    add a                                         ; $4864: $87
    ld a, b                                       ; $4865: $78
    sbc d                                         ; $4866: $9a
    xor c                                         ; $4867: $a9
    adc c                                         ; $4868: $89
    cp l                                          ; $4869: $bd
    rst $38                                       ; $486a: $ff
    db $db                                        ; $486b: $db
    add a                                         ; $486c: $87

Call_018_486d:
    ld [hl], a                                    ; $486d: $77
    ld h, h                                       ; $486e: $64
    jr nz, jr_018_4872                            ; $486f: $20 $01

    ld b, [hl]                                    ; $4871: $46

jr_018_4872:
    halt                                          ; $4872: $76
    ld l, b                                       ; $4873: $68
    cp h                                          ; $4874: $bc
    and a                                         ; $4875: $a7
    ld d, h                                       ; $4876: $54
    ld d, h                                       ; $4877: $54
    ld hl, $8836                                  ; $4878: $21 $36 $88
    ld [hl], a                                    ; $487b: $77
    adc d                                         ; $487c: $8a
    adc $ee                                       ; $487d: $ce $ee
    cp c                                          ; $487f: $b9
    add a                                         ; $4880: $87
    adc c                                         ; $4881: $89
    cp h                                          ; $4882: $bc
    cp d                                          ; $4883: $ba
    sub a                                         ; $4884: $97
    ld a, b                                       ; $4885: $78
    adc d                                         ; $4886: $8a
    xor c                                         ; $4887: $a9
    add [hl]                                      ; $4888: $86
    ld [hl-], a                                   ; $4889: $32
    ld [hl+], a                                   ; $488a: $22
    ld b, h                                       ; $488b: $44
    ld b, l                                       ; $488c: $45
    ld l, b                                       ; $488d: $68
    adc c                                         ; $488e: $89
    sbc c                                         ; $488f: $99
    add [hl]                                      ; $4890: $86
    ld h, [hl]                                    ; $4891: $66
    ld h, [hl]                                    ; $4892: $66
    ld h, h                                       ; $4893: $64
    inc hl                                        ; $4894: $23
    ld l, b                                       ; $4895: $68
    xor e                                         ; $4896: $ab
    cp e                                          ; $4897: $bb
    cp h                                          ; $4898: $bc
    rst $38                                       ; $4899: $ff
    db $eb                                        ; $489a: $eb
    ld [hl], l                                    ; $489b: $75
    ld [hl-], a                                   ; $489c: $32
    inc [hl]                                      ; $489d: $34
    ld b, h                                       ; $489e: $44
    ld b, h                                       ; $489f: $44
    ld e, c                                       ; $48a0: $59
    call $badc                                    ; $48a1: $cd $dc $ba
    sub a                                         ; $48a4: $97
    ld h, l                                       ; $48a5: $65
    ld d, l                                       ; $48a6: $55
    ld sp, $5812                                  ; $48a7: $31 $12 $58
    sbc d                                         ; $48aa: $9a
    cp h                                          ; $48ab: $bc
    call z, $cccb                                 ; $48ac: $cc $cb $cc
    sub a                                         ; $48af: $97
    ld d, e                                       ; $48b0: $53
    dec [hl]                                      ; $48b1: $35
    ld h, a                                       ; $48b2: $67
    add a                                         ; $48b3: $87
    adc d                                         ; $48b4: $8a
    call Call_018_53d9                            ; $48b5: $cd $d9 $53
    dec [hl]                                      ; $48b8: $35
    ld d, d                                       ; $48b9: $52
    nop                                           ; $48ba: $00
    inc h                                         ; $48bb: $24
    ld h, [hl]                                    ; $48bc: $66
    ld l, b                                       ; $48bd: $68
    xor e                                         ; $48be: $ab
    jp z, $8799                                   ; $48bf: $ca $99 $87

    ld d, h                                       ; $48c2: $54
    ld b, l                                       ; $48c3: $45
    ld l, b                                       ; $48c4: $68
    sbc d                                         ; $48c5: $9a
    xor e                                         ; $48c6: $ab
    rst $18                                       ; $48c7: $df
    rst $38                                       ; $48c8: $ff
    db $ec                                        ; $48c9: $ec
    res 2, [hl]                                   ; $48ca: $cb $96
    ld d, h                                       ; $48cc: $54
    inc sp                                        ; $48cd: $33
    inc sp                                        ; $48ce: $33
    ld d, [hl]                                    ; $48cf: $56
    adc b                                         ; $48d0: $88
    sbc e                                         ; $48d1: $9b
    cp c                                          ; $48d2: $b9
    ld [hl], l                                    ; $48d3: $75
    ld d, h                                       ; $48d4: $54
    ld b, e                                       ; $48d5: $43
    db $10                                        ; $48d6: $10
    inc bc                                        ; $48d7: $03
    ld d, [hl]                                    ; $48d8: $56
    ld a, b                                       ; $48d9: $78
    sbc e                                         ; $48da: $9b
    cp e                                          ; $48db: $bb
    cp e                                          ; $48dc: $bb
    xor c                                         ; $48dd: $a9
    adc b                                         ; $48de: $88
    halt                                          ; $48df: $76
    ld h, a                                       ; $48e0: $67
    adc b                                         ; $48e1: $88
    sbc e                                         ; $48e2: $9b
    rst $18                                       ; $48e3: $df
    cp $cc                                        ; $48e4: $fe $cc
    call z, Call_018_76b9                         ; $48e6: $cc $b9 $76
    ld h, [hl]                                    ; $48e9: $66
    ld h, [hl]                                    ; $48ea: $66
    ld h, a                                       ; $48eb: $67
    halt                                          ; $48ec: $76
    ld h, [hl]                                    ; $48ed: $66
    adc c                                         ; $48ee: $89
    add l                                         ; $48ef: $85
    ld [hl-], a                                   ; $48f0: $32
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    ld de, $6823                                  ; $48f3: $11 $23 $68
    xor e                                         ; $48f6: $ab
    res 3, b                                      ; $48f7: $cb $98
    add a                                         ; $48f9: $87
    ld [hl], a                                    ; $48fa: $77
    halt                                          ; $48fb: $76
    ld a, b                                       ; $48fc: $78
    sbc d                                         ; $48fd: $9a
    cp h                                          ; $48fe: $bc
    rst $18                                       ; $48ff: $df
    rst $38                                       ; $4900: $ff
    db $ed                                        ; $4901: $ed
    call z, Call_018_76b9                         ; $4902: $cc $b9 $76
    ld d, e                                       ; $4905: $53
    inc sp                                        ; $4906: $33
    inc [hl]                                      ; $4907: $34
    ld l, b                                       ; $4908: $68
    xor e                                         ; $4909: $ab
    cp d                                          ; $490a: $ba
    add a                                         ; $490b: $87
    ld d, h                                       ; $490c: $54
    ld sp, $0000                                  ; $490d: $31 $00 $00
    inc de                                        ; $4910: $13
    ld d, a                                       ; $4911: $57
    sbc d                                         ; $4912: $9a
    sbc c                                         ; $4913: $99
    sbc d                                         ; $4914: $9a
    xor d                                         ; $4915: $aa
    sub a                                         ; $4916: $97
    ld h, l                                       ; $4917: $65
    ld b, h                                       ; $4918: $44
    ld l, b                                       ; $4919: $68
    xor e                                         ; $491a: $ab
    cp e                                          ; $491b: $bb
    sbc $ff                                       ; $491c: $de $ff
    db $ec                                        ; $491e: $ec
    sbc b                                         ; $491f: $98
    add [hl]                                      ; $4920: $86
    ld d, h                                       ; $4921: $54
    ld b, h                                       ; $4922: $44
    ld b, l                                       ; $4923: $45
    ld d, [hl]                                    ; $4924: $56
    ld a, b                                       ; $4925: $78
    sbc c                                         ; $4926: $99
    add a                                         ; $4927: $87
    ld h, h                                       ; $4928: $64
    ld b, h                                       ; $4929: $44
    ld b, e                                       ; $492a: $43
    ld [hl+], a                                   ; $492b: $22
    dec [hl]                                      ; $492c: $35
    ld l, b                                       ; $492d: $68
    adc c                                         ; $492e: $89
    xor e                                         ; $492f: $ab
    call z, $88a9                                 ; $4930: $cc $a9 $88
    add a                                         ; $4933: $87
    ld h, [hl]                                    ; $4934: $66
    ld h, a                                       ; $4935: $67
    ld a, b                                       ; $4936: $78
    adc c                                         ; $4937: $89
    xor h                                         ; $4938: $ac
    rst $28                                       ; $4939: $ef
    db $ed                                        ; $493a: $ed
    jp z, Jump_018_6597                           ; $493b: $ca $97 $65

    ld [hl-], a                                   ; $493e: $32
    ld de, $5723                                  ; $493f: $11 $23 $57
    adc b                                         ; $4942: $88
    adc c                                         ; $4943: $89
    sbc b                                         ; $4944: $98
    ld h, l                                       ; $4945: $65
    ld d, [hl]                                    ; $4946: $56
    ld [hl], a                                    ; $4947: $77
    ld h, h                                       ; $4948: $64
    ld b, l                                       ; $4949: $45
    ld a, c                                       ; $494a: $79
    cp e                                          ; $494b: $bb
    xor b                                         ; $494c: $a8
    ld a, c                                       ; $494d: $79
    cp l                                          ; $494e: $bd
    db $db                                        ; $494f: $db
    add [hl]                                      ; $4950: $86
    ld b, h                                       ; $4951: $44
    ld a, e                                       ; $4952: $7b
    call c, $88a8                                 ; $4953: $dc $a8 $88
    sbc d                                         ; $4956: $9a
    xor c                                         ; $4957: $a9
    halt                                          ; $4958: $76
    ld b, e                                       ; $4959: $43
    ld hl, $3411                                  ; $495a: $21 $11 $34
    ld b, h                                       ; $495d: $44
    ld l, b                                       ; $495e: $68
    xor e                                         ; $495f: $ab
    cp d                                          ; $4960: $ba
    sub a                                         ; $4961: $97
    ld h, l                                       ; $4962: $65
    ld d, [hl]                                    ; $4963: $56
    halt                                          ; $4964: $76
    ld d, h                                       ; $4965: $54
    ld e, c                                       ; $4966: $59
    rst $18                                       ; $4967: $df
    cp $de                                        ; $4968: $fe $de
    cp $b8                                        ; $496a: $fe $b8
    ld h, a                                       ; $496c: $67
    ld [hl], l                                    ; $496d: $75
    ld b, e                                       ; $496e: $43
    inc [hl]                                      ; $496f: $34
    ld d, [hl]                                    ; $4970: $56
    ld [hl], a                                    ; $4971: $77
    adc d                                         ; $4972: $8a
    call z, Call_018_53a8                         ; $4973: $cc $a8 $53
    inc [hl]                                      ; $4976: $34
    ld [hl-], a                                   ; $4977: $32
    ld de, $5713                                  ; $4978: $11 $13 $57
    xor h                                         ; $497b: $ac
    jp z, $cd9a                                   ; $497c: $ca $9a $cd

    ret                                           ; $497f: $c9


    ld d, e                                       ; $4980: $53
    inc hl                                        ; $4981: $23
    ld b, [hl]                                    ; $4982: $46
    ld a, b                                       ; $4983: $78
    xor l                                         ; $4984: $ad
    xor $ed                                       ; $4985: $ee $ed
    call $84cb                                    ; $4987: $cd $cb $84
    ld [hl+], a                                   ; $498a: $22
    inc [hl]                                      ; $498b: $34
    ld b, e                                       ; $498c: $43
    ld b, a                                       ; $498d: $47
    xor l                                         ; $498e: $ad
    db $ed                                        ; $498f: $ed
    res 5, c                                      ; $4990: $cb $a9
    add a                                         ; $4992: $87
    ld d, d                                       ; $4993: $52
    nop                                           ; $4994: $00
    inc de                                        ; $4995: $13
    ld b, l                                       ; $4996: $45
    ld l, b                                       ; $4997: $68
    sbc d                                         ; $4998: $9a
    cp d                                          ; $4999: $ba
    xor d                                         ; $499a: $aa
    sbc c                                         ; $499b: $99
    ld [hl], l                                    ; $499c: $75
    inc sp                                        ; $499d: $33
    ld b, h                                       ; $499e: $44
    ld hl, $9a25                                  ; $499f: $21 $25 $9a
    xor c                                         ; $49a2: $a9
    xor e                                         ; $49a3: $ab
    cp e                                          ; $49a4: $bb
    call z, Call_018_54a7                         ; $49a5: $cc $a7 $54
    ld d, a                                       ; $49a8: $57
    adc c                                         ; $49a9: $89
    cp e                                          ; $49aa: $bb
    xor d                                         ; $49ab: $aa
    cp h                                          ; $49ac: $bc
    rst $38                                       ; $49ad: $ff
    reti                                          ; $49ae: $d9


    adc b                                         ; $49af: $88
    adc b                                         ; $49b0: $88
    add [hl]                                      ; $49b1: $86
    ld b, h                                       ; $49b2: $44
    ld b, l                                       ; $49b3: $45
    ld a, c                                       ; $49b4: $79
    sbc b                                         ; $49b5: $98
    halt                                          ; $49b6: $76
    ld h, [hl]                                    ; $49b7: $66
    ld h, l                                       ; $49b8: $65
    ld b, d                                       ; $49b9: $42
    db $10                                        ; $49ba: $10
    ld bc, $6645                                  ; $49bb: $01 $45 $66
    ld h, a                                       ; $49be: $67
    sbc e                                         ; $49bf: $9b
    and a                                         ; $49c0: $a7
    ld d, h                                       ; $49c1: $54
    ld b, [hl]                                    ; $49c2: $46
    halt                                          ; $49c3: $76
    ld h, a                                       ; $49c4: $67
    sbc e                                         ; $49c5: $9b
    call $ffde                                    ; $49c6: $cd $de $ff
    db $fd                                        ; $49c9: $fd
    res 7, d                                      ; $49ca: $cb $ba
    sub a                                         ; $49cc: $97
    ld h, [hl]                                    ; $49cd: $66
    ld h, a                                       ; $49ce: $67
    adc c                                         ; $49cf: $89
    add a                                         ; $49d0: $87
    ld d, h                                       ; $49d1: $54
    ld b, [hl]                                    ; $49d2: $46
    adc b                                         ; $49d3: $88
    halt                                          ; $49d4: $76
    ld d, [hl]                                    ; $49d5: $56
    ld d, h                                       ; $49d6: $54
    ld [hl-], a                                   ; $49d7: $32
    ld [hl+], a                                   ; $49d8: $22
    inc sp                                        ; $49d9: $33
    ld b, h                                       ; $49da: $44
    ld b, e                                       ; $49db: $43
    inc sp                                        ; $49dc: $33
    ld e, b                                       ; $49dd: $58
    adc b                                         ; $49de: $88
    adc d                                         ; $49df: $8a
    rst $18                                       ; $49e0: $df
    db $fd                                        ; $49e1: $fd
    cp d                                          ; $49e2: $ba
    xor c                                         ; $49e3: $a9
    add a                                         ; $49e4: $87
    adc d                                         ; $49e5: $8a
    cp c                                          ; $49e6: $b9
    halt                                          ; $49e7: $76
    ld d, a                                       ; $49e8: $57
    xor e                                         ; $49e9: $ab
    cp c                                          ; $49ea: $b9
    ld [hl], l                                    ; $49eb: $75
    ld b, l                                       ; $49ec: $45
    adc d                                         ; $49ed: $8a
    res 2, a                                      ; $49ee: $cb $97
    adc b                                         ; $49f0: $88
    xor e                                         ; $49f1: $ab
    cp c                                          ; $49f2: $b9
    ld h, h                                       ; $49f3: $64
    ld [hl+], a                                   ; $49f4: $22
    ld [hl-], a                                   ; $49f5: $32
    db $10                                        ; $49f6: $10
    inc bc                                        ; $49f7: $03
    ld a, d                                       ; $49f8: $7a
    xor b                                         ; $49f9: $a8
    ld [hl], a                                    ; $49fa: $77
    sbc h                                         ; $49fb: $9c
    rst $38                                       ; $49fc: $ff
    or a                                          ; $49fd: $b7
    ld d, l                                       ; $49fe: $55
    adc d                                         ; $49ff: $8a
    add l                                         ; $4a00: $85
    ld [hl+], a                                   ; $4a01: $22
    ld e, e                                       ; $4a02: $5b
    cp $b7                                        ; $4a03: $fe $b7
    ld d, a                                       ; $4a05: $57
    sbc c                                         ; $4a06: $99
    ld [hl], l                                    ; $4a07: $75
    ld b, l                                       ; $4a08: $45
    ld a, b                                       ; $4a09: $78
    ld [hl], h                                    ; $4a0a: $74
    inc [hl]                                      ; $4a0b: $34
    adc h                                         ; $4a0c: $8c
    or a                                          ; $4a0d: $b7
    ld b, h                                       ; $4a0e: $44
    ld a, d                                       ; $4a0f: $7a
    cp c                                          ; $4a10: $b9
    ld [hl], l                                    ; $4a11: $75
    ld a, c                                       ; $4a12: $79
    cp d                                          ; $4a13: $ba
    sub a                                         ; $4a14: $97
    ld h, [hl]                                    ; $4a15: $66
    ld a, b                                       ; $4a16: $78
    add a                                         ; $4a17: $87
    ld d, h                                       ; $4a18: $54
    ld b, l                                       ; $4a19: $45
    adc c                                         ; $4a1a: $89
    sbc b                                         ; $4a1b: $98
    adc c                                         ; $4a1c: $89
    adc $fc                                       ; $4a1d: $ce $fc
    sub [hl]                                      ; $4a1f: $96
    ld d, [hl]                                    ; $4a20: $56
    ld [hl], l                                    ; $4a21: $75
    ld [hl-], a                                   ; $4a22: $32
    ld b, [hl]                                    ; $4a23: $46
    sbc d                                         ; $4a24: $9a
    sbc c                                         ; $4a25: $99
    xor e                                         ; $4a26: $ab
    rst $18                                       ; $4a27: $df
    db $eb                                        ; $4a28: $eb
    sub [hl]                                      ; $4a29: $96
    ld d, l                                       ; $4a2a: $55
    ld sp, $1300                                  ; $4a2b: $31 $00 $13
    ld [hl-], a                                   ; $4a2e: $32
    inc h                                         ; $4a2f: $24
    ld l, c                                       ; $4a30: $69
    xor d                                         ; $4a31: $aa
    xor c                                         ; $4a32: $a9
    sbc d                                         ; $4a33: $9a
    xor c                                         ; $4a34: $a9
    ld [hl], l                                    ; $4a35: $75
    ld [hl-], a                                   ; $4a36: $32
    dec [hl]                                      ; $4a37: $35
    ld [hl], a                                    ; $4a38: $77
    ld a, b                                       ; $4a39: $78
    xor h                                         ; $4a3a: $ac
    rst $38                                       ; $4a3b: $ff
    db $ec                                        ; $4a3c: $ec
    xor c                                         ; $4a3d: $a9
    adc b                                         ; $4a3e: $88
    halt                                          ; $4a3f: $76
    ld d, [hl]                                    ; $4a40: $56
    ld a, b                                       ; $4a41: $78
    adc c                                         ; $4a42: $89
    sbc c                                         ; $4a43: $99
    xor e                                         ; $4a44: $ab
    call z, Call_018_55a7                         ; $4a45: $cc $a7 $55
    ld b, h                                       ; $4a48: $44
    ld sp, $1100                                  ; $4a49: $31 $00 $11
    inc h                                         ; $4a4c: $24
    ld l, b                                       ; $4a4d: $68
    add a                                         ; $4a4e: $87
    adc c                                         ; $4a4f: $89
    xor d                                         ; $4a50: $aa
    xor b                                         ; $4a51: $a8
    ld [hl], l                                    ; $4a52: $75
    ld b, h                                       ; $4a53: $44
    ld d, [hl]                                    ; $4a54: $56
    ld [hl], a                                    ; $4a55: $77
    adc d                                         ; $4a56: $8a
    cp h                                          ; $4a57: $bc
    call $feef                                    ; $4a58: $cd $ef $fe
    cp b                                          ; $4a5b: $b8
    ld h, l                                       ; $4a5c: $65
    ld d, [hl]                                    ; $4a5d: $56
    ld h, [hl]                                    ; $4a5e: $66
    ld h, l                                       ; $4a5f: $65
    ld d, [hl]                                    ; $4a60: $56
    ld a, b                                       ; $4a61: $78
    adc b                                         ; $4a62: $88
    adc b                                         ; $4a63: $88
    ld [hl], a                                    ; $4a64: $77
    ld d, l                                       ; $4a65: $55
    ld d, h                                       ; $4a66: $54
    ld [hl+], a                                   ; $4a67: $22
    inc hl                                        ; $4a68: $23
    ld b, l                                       ; $4a69: $45
    ld a, b                                       ; $4a6a: $78
    add a                                         ; $4a6b: $87
    ld a, c                                       ; $4a6c: $79
    cp l                                          ; $4a6d: $bd
    cp b                                          ; $4a6e: $b8
    ld h, l                                       ; $4a6f: $65
    ld d, l                                       ; $4a70: $55
    ld h, a                                       ; $4a71: $67
    adc c                                         ; $4a72: $89
    xor e                                         ; $4a73: $ab
    rst $18                                       ; $4a74: $df
    rst $38                                       ; $4a75: $ff
    call c, $b9cb                                 ; $4a76: $dc $cb $b9
    ld h, h                                       ; $4a79: $64
    inc sp                                        ; $4a7a: $33
    inc sp                                        ; $4a7b: $33
    ld b, [hl]                                    ; $4a7c: $46
    adc b                                         ; $4a7d: $88
    add a                                         ; $4a7e: $87
    ld [hl], a                                    ; $4a7f: $77
    add a                                         ; $4a80: $87
    ld h, l                                       ; $4a81: $65
    ld [hl-], a                                   ; $4a82: $32
    ld hl, $3512                                  ; $4a83: $21 $12 $35
    ld a, b                                       ; $4a86: $78
    sbc d                                         ; $4a87: $9a
    rst $18                                       ; $4a88: $df
    cp $cc                                        ; $4a89: $fe $cc
    call z, Call_018_65b9                         ; $4a8b: $cc $b9 $65
    ld h, a                                       ; $4a8e: $67
    adc d                                         ; $4a8f: $8a
    xor e                                         ; $4a90: $ab
    call z, $dbdd                                 ; $4a91: $cc $dd $db
    sub a                                         ; $4a94: $97
    ld h, [hl]                                    ; $4a95: $66
    ld d, e                                       ; $4a96: $53
    db $10                                        ; $4a97: $10
    inc de                                        ; $4a98: $13
    ld b, h                                       ; $4a99: $44
    inc [hl]                                      ; $4a9a: $34
    ld d, l                                       ; $4a9b: $55
    ld d, l                                       ; $4a9c: $55
    ld d, l                                       ; $4a9d: $55
    ld d, h                                       ; $4a9e: $54
    ld [hl-], a                                   ; $4a9f: $32
    inc hl                                        ; $4aa0: $23
    ld b, l                                       ; $4aa1: $45
    ld l, b                                       ; $4aa2: $68
    sbc d                                         ; $4aa3: $9a
    cp h                                          ; $4aa4: $bc
    sbc $ed                                       ; $4aa5: $de $ed
    res 7, d                                      ; $4aa7: $cb $ba
    sbc c                                         ; $4aa9: $99
    xor d                                         ; $4aaa: $aa
    cp h                                          ; $4aab: $bc
    sbc $ff                                       ; $4aac: $de $ff
    call c, $a8cb                                 ; $4aae: $dc $cb $a8
    ld h, h                                       ; $4ab1: $64
    ld [hl-], a                                   ; $4ab2: $32
    ld hl, $0000                                  ; $4ab3: $21 $00 $00
    ld [de], a                                    ; $4ab6: $12
    ld b, l                                       ; $4ab7: $45
    ld a, b                                       ; $4ab8: $78
    halt                                          ; $4ab9: $76
    ld h, a                                       ; $4aba: $67
    halt                                          ; $4abb: $76
    ld b, d                                       ; $4abc: $42
    inc hl                                        ; $4abd: $23
    ld b, l                                       ; $4abe: $45
    ld d, [hl]                                    ; $4abf: $56
    adc e                                         ; $4ac0: $8b
    call z, $cdbb                                 ; $4ac1: $cc $bb $cd
    call c, $eecd                                 ; $4ac4: $dc $cd $ee
    cp d                                          ; $4ac7: $ba
    xor e                                         ; $4ac8: $ab
    call $88b9                                    ; $4ac9: $cd $b9 $88
    sbc d                                         ; $4acc: $9a
    sub a                                         ; $4acd: $97
    ld d, h                                       ; $4ace: $54
    ld b, [hl]                                    ; $4acf: $46
    add a                                         ; $4ad0: $87
    ld h, [hl]                                    ; $4ad1: $66
    ld b, e                                       ; $4ad2: $43
    inc sp                                        ; $4ad3: $33
    inc [hl]                                      ; $4ad4: $34
    ld b, h                                       ; $4ad5: $44
    ld hl, $7814                                  ; $4ad6: $21 $14 $78
    ld h, h                                       ; $4ad9: $64
    inc [hl]                                      ; $4ada: $34
    ld h, [hl]                                    ; $4adb: $66
    ld h, [hl]                                    ; $4adc: $66
    ld a, c                                       ; $4add: $79
    sbc b                                         ; $4ade: $98
    ld a, b                                       ; $4adf: $78
    sbc d                                         ; $4ae0: $9a
    xor e                                         ; $4ae1: $ab
    adc $ff                                       ; $4ae2: $ce $ff
    cp $ed                                        ; $4ae4: $fe $ed
    res 5, b                                      ; $4ae6: $cb $a8
    adc b                                         ; $4ae8: $88
    add a                                         ; $4ae9: $87
    ld d, e                                       ; $4aea: $53
    inc [hl]                                      ; $4aeb: $34
    ld l, b                                       ; $4aec: $68
    xor d                                         ; $4aed: $aa
    sbc b                                         ; $4aee: $98
    adc b                                         ; $4aef: $88
    sbc b                                         ; $4af0: $98
    ld h, e                                       ; $4af1: $63
    db $10                                        ; $4af2: $10
    ld [bc], a                                    ; $4af3: $02
    ld b, l                                       ; $4af4: $45
    ld b, e                                       ; $4af5: $43
    inc [hl]                                      ; $4af6: $34
    ld l, b                                       ; $4af7: $68
    adc c                                         ; $4af8: $89
    sbc c                                         ; $4af9: $99
    add a                                         ; $4afa: $87
    ld d, l                                       ; $4afb: $55
    ld h, a                                       ; $4afc: $67
    ld [hl], a                                    ; $4afd: $77
    ld h, a                                       ; $4afe: $67
    sbc h                                         ; $4aff: $9c
    rst $38                                       ; $4b00: $ff
    db $fd                                        ; $4b01: $fd
    call z, $dbde                                 ; $4b02: $cc $de $db
    sbc b                                         ; $4b05: $98
    add a                                         ; $4b06: $87
    ld h, l                                       ; $4b07: $65
    ld d, a                                       ; $4b08: $57
    adc c                                         ; $4b09: $89
    sbc c                                         ; $4b0a: $99
    xor d                                         ; $4b0b: $aa
    sbc c                                         ; $4b0c: $99
    halt                                          ; $4b0d: $76
    ld d, e                                       ; $4b0e: $53
    ld hl, $0010                                  ; $4b0f: $21 $10 $00
    inc h                                         ; $4b12: $24
    ld h, a                                       ; $4b13: $67
    ld a, b                                       ; $4b14: $78
    sbc e                                         ; $4b15: $9b
    call z, $87b9                                 ; $4b16: $cc $b9 $87
    ld h, l                                       ; $4b19: $65
    ld b, h                                       ; $4b1a: $44
    ld d, a                                       ; $4b1b: $57
    sbc d                                         ; $4b1c: $9a
    cp h                                          ; $4b1d: $bc
    rst $28                                       ; $4b1e: $ef
    rst $38                                       ; $4b1f: $ff
    db $ec                                        ; $4b20: $ec
    cp d                                          ; $4b21: $ba
    add l                                         ; $4b22: $85
    ld [hl-], a                                   ; $4b23: $32
    dec [hl]                                      ; $4b24: $35
    ld d, l                                       ; $4b25: $55
    ld d, l                                       ; $4b26: $55
    ld l, b                                       ; $4b27: $68
    cp h                                          ; $4b28: $bc
    jp z, Jump_018_6497                           ; $4b29: $ca $97 $64

    jr nz, jr_018_4b2e                            ; $4b2c: $20 $00

jr_018_4b2e:
    ld [de], a                                    ; $4b2e: $12
    inc [hl]                                      ; $4b2f: $34
    adc c                                         ; $4b30: $89
    adc $ee                                       ; $4b31: $ce $ee
    call c, $86ca                                 ; $4b33: $dc $ca $86
    ld b, e                                       ; $4b36: $43
    inc sp                                        ; $4b37: $33
    ld b, l                                       ; $4b38: $45
    ld a, b                                       ; $4b39: $78
    xor h                                         ; $4b3a: $ac
    sbc $ed                                       ; $4b3b: $de $ed
    res 5, b                                      ; $4b3d: $cb $a8
    ld h, e                                       ; $4b3f: $63
    db $10                                        ; $4b40: $10
    ld bc, $5734                                  ; $4b41: $01 $34 $57
    adc d                                         ; $4b44: $8a
    call z, $98ba                                 ; $4b45: $cc $ba $98
    halt                                          ; $4b48: $76
    ld b, e                                       ; $4b49: $43
    ld [hl+], a                                   ; $4b4a: $22
    inc [hl]                                      ; $4b4b: $34
    ld d, a                                       ; $4b4c: $57
    sbc e                                         ; $4b4d: $9b
    call $edff                                    ; $4b4e: $cd $ff $ed
    cp c                                          ; $4b51: $b9
    add [hl]                                      ; $4b52: $86
    ld b, e                                       ; $4b53: $43
    ld [hl+], a                                   ; $4b54: $22
    inc [hl]                                      ; $4b55: $34
    ld l, b                                       ; $4b56: $68
    xor e                                         ; $4b57: $ab
    cp e                                          ; $4b58: $bb
    cp h                                          ; $4b59: $bc
    cp c                                          ; $4b5a: $b9
    ld [hl], l                                    ; $4b5b: $75
    ld b, d                                       ; $4b5c: $42
    ld de, $3411                                  ; $4b5d: $11 $11 $34
    ld l, c                                       ; $4b60: $69
    call $bbdc                                    ; $4b61: $cd $dc $bb
    xor d                                         ; $4b64: $aa
    sub a                                         ; $4b65: $97
    ld d, h                                       ; $4b66: $54
    ld [hl-], a                                   ; $4b67: $32
    inc [hl]                                      ; $4b68: $34
    ld l, b                                       ; $4b69: $68
    xor e                                         ; $4b6a: $ab
    sbc $ee                                       ; $4b6b: $de $ee
    res 2, a                                      ; $4b6d: $cb $97
    ld d, h                                       ; $4b6f: $54
    jr nz, jr_018_4b72                            ; $4b70: $20 $00

jr_018_4b72:
    inc h                                         ; $4b72: $24
    ld l, b                                       ; $4b73: $68
    xor e                                         ; $4b74: $ab
    sbc $ee                                       ; $4b75: $de $ee
    call c, Call_018_4396                         ; $4b77: $dc $96 $43
    inc sp                                        ; $4b7a: $33
    inc [hl]                                      ; $4b7b: $34
    ld b, [hl]                                    ; $4b7c: $46
    ld a, d                                       ; $4b7d: $7a
    adc $ee                                       ; $4b7e: $ce $ee
    call c, Call_018_63b9                         ; $4b80: $dc $b9 $63
    stop                                          ; $4b83: $10 $00
    ld bc, $8a36                                  ; $4b85: $01 $36 $8a
    cp h                                          ; $4b88: $bc
    call c, $86ba                                 ; $4b89: $dc $ba $86
    ld d, h                                       ; $4b8c: $54
    ld [hl-], a                                   ; $4b8d: $32
    ld [de], a                                    ; $4b8e: $12
    ld b, [hl]                                    ; $4b8f: $46
    adc d                                         ; $4b90: $8a
    cp h                                          ; $4b91: $bc
    sbc $ff                                       ; $4b92: $de $ff
    db $ec                                        ; $4b94: $ec
    sub a                                         ; $4b95: $97
    ld h, l                                       ; $4b96: $65
    ld d, h                                       ; $4b97: $54
    ld b, [hl]                                    ; $4b98: $46
    adc d                                         ; $4b99: $8a
    xor e                                         ; $4b9a: $ab
    call $a8dc                                    ; $4b9b: $cd $dc $a8
    add a                                         ; $4b9e: $87
    ld h, e                                       ; $4b9f: $63
    db $10                                        ; $4ba0: $10
    ld bc, $2312                                  ; $4ba1: $01 $12 $23
    ld d, a                                       ; $4ba4: $57
    adc c                                         ; $4ba5: $89
    sbc d                                         ; $4ba6: $9a
    xor d                                         ; $4ba7: $aa
    sbc b                                         ; $4ba8: $98
    halt                                          ; $4ba9: $76
    ld h, l                                       ; $4baa: $65
    ld d, l                                       ; $4bab: $55
    ld h, a                                       ; $4bac: $67
    ld a, b                                       ; $4bad: $78
    sbc e                                         ; $4bae: $9b
    adc $ee                                       ; $4baf: $ce $ee
    call c, $a9ba                                 ; $4bb1: $dc $ba $a9
    adc b                                         ; $4bb4: $88
    adc b                                         ; $4bb5: $88
    ld a, b                                       ; $4bb6: $78
    adc c                                         ; $4bb7: $89
    sbc c                                         ; $4bb8: $99
    adc b                                         ; $4bb9: $88
    adc b                                         ; $4bba: $88
    add [hl]                                      ; $4bbb: $86
    ld b, d                                       ; $4bbc: $42
    inc de                                        ; $4bbd: $13
    ld d, l                                       ; $4bbe: $55
    ld b, d                                       ; $4bbf: $42
    ld [de], a                                    ; $4bc0: $12
    ld b, a                                       ; $4bc1: $47
    sbc c                                         ; $4bc2: $99
    sbc c                                         ; $4bc3: $99
    adc b                                         ; $4bc4: $88
    adc c                                         ; $4bc5: $89
    sbc b                                         ; $4bc6: $98
    ld h, h                                       ; $4bc7: $64
    ld b, l                                       ; $4bc8: $45
    ld h, a                                       ; $4bc9: $67
    add a                                         ; $4bca: $87
    adc d                                         ; $4bcb: $8a
    adc $ed                                       ; $4bcc: $ce $ed
    call z, $a9cb                                 ; $4bce: $cc $cb $a9
    add a                                         ; $4bd1: $87
    ld h, [hl]                                    ; $4bd2: $66
    ld h, [hl]                                    ; $4bd3: $66
    ld [hl], a                                    ; $4bd4: $77
    ld a, b                                       ; $4bd5: $78
    adc b                                         ; $4bd6: $88
    add a                                         ; $4bd7: $87
    ld a, b                                       ; $4bd8: $78
    add a                                         ; $4bd9: $87
    ld d, h                                       ; $4bda: $54
    ld b, e                                       ; $4bdb: $43
    inc sp                                        ; $4bdc: $33
    ld [hl+], a                                   ; $4bdd: $22
    inc [hl]                                      ; $4bde: $34
    ld l, b                                       ; $4bdf: $68
    sbc d                                         ; $4be0: $9a
    cp h                                          ; $4be1: $bc
    db $dd                                        ; $4be2: $dd
    res 7, c                                      ; $4be3: $cb $b9
    ld [hl], e                                    ; $4be5: $73
    ld de, $5534                                  ; $4be6: $11 $34 $55
    ld l, b                                       ; $4be9: $68
    xor h                                         ; $4bea: $ac
    db $dd                                        ; $4beb: $dd
    xor $ec                                       ; $4bec: $ee $ec
    sub [hl]                                      ; $4bee: $96
    ld d, l                                       ; $4bef: $55
    ld d, [hl]                                    ; $4bf0: $56
    ld h, l                                       ; $4bf1: $65
    ld b, e                                       ; $4bf2: $43
    dec [hl]                                      ; $4bf3: $35
    sbc l                                         ; $4bf4: $9d
    xor $ca                                       ; $4bf5: $ee $ca
    sbc b                                         ; $4bf7: $98
    ld h, l                                       ; $4bf8: $65
    ld b, d                                       ; $4bf9: $42
    nop                                           ; $4bfa: $00
    inc de                                        ; $4bfb: $13
    ld d, [hl]                                    ; $4bfc: $56
    ld a, b                                       ; $4bfd: $78
    xor e                                         ; $4bfe: $ab
    res 5, d                                      ; $4bff: $cb $aa
    sbc b                                         ; $4c01: $98
    halt                                          ; $4c02: $76
    ld d, h                                       ; $4c03: $54
    inc sp                                        ; $4c04: $33
    dec [hl]                                      ; $4c05: $35
    ld a, b                                       ; $4c06: $78
    xor e                                         ; $4c07: $ab
    rst $18                                       ; $4c08: $df
    rst $38                                       ; $4c09: $ff
    db $ec                                        ; $4c0a: $ec
    cp c                                          ; $4c0b: $b9
    halt                                          ; $4c0c: $76
    ld [hl-], a                                   ; $4c0d: $32
    ld de, $4523                                  ; $4c0e: $11 $23 $45
    ld l, b                                       ; $4c11: $68
    xor h                                         ; $4c12: $ac
    call c, Call_018_75b9                         ; $4c13: $dc $b9 $75
    ld b, h                                       ; $4c16: $44
    ld b, h                                       ; $4c17: $44
    ld hl, $6814                                  ; $4c18: $21 $14 $68
    xor h                                         ; $4c1b: $ac
    db $dd                                        ; $4c1c: $dd
    call z, $a7cc                                 ; $4c1d: $cc $cc $a7
    ld d, h                                       ; $4c20: $54
    ld b, l                                       ; $4c21: $45
    ld h, a                                       ; $4c22: $67
    adc b                                         ; $4c23: $88
    sbc e                                         ; $4c24: $9b
    sbc $ed                                       ; $4c25: $de $ed
    call z, $74b9                                 ; $4c27: $cc $b9 $74
    stop                                          ; $4c2a: $10 $00
    ld [de], a                                    ; $4c2c: $12
    ld b, l                                       ; $4c2d: $45
    ld a, b                                       ; $4c2e: $78
    cp h                                          ; $4c2f: $bc
    res 5, c                                      ; $4c30: $cb $a9
    add [hl]                                      ; $4c32: $86
    ld sp, $1200                                  ; $4c33: $31 $00 $12
    inc [hl]                                      ; $4c36: $34
    ld l, c                                       ; $4c37: $69
    cp [hl]                                       ; $4c38: $be
    rst $38                                       ; $4c39: $ff
    xor $ed                                       ; $4c3a: $ee $ed
    cp c                                          ; $4c3c: $b9
    halt                                          ; $4c3d: $76
    ld h, l                                       ; $4c3e: $65
    ld d, l                                       ; $4c3f: $55
    ld d, a                                       ; $4c40: $57
    sbc d                                         ; $4c41: $9a
    call z, $eecd                                 ; $4c42: $cc $cd $ee
    db $db                                        ; $4c45: $db
    sub a                                         ; $4c46: $97
    ld h, e                                       ; $4c47: $63
    db $10                                        ; $4c48: $10
    ld de, $2311                                  ; $4c49: $11 $11 $23
    ld d, a                                       ; $4c4c: $57
    sbc d                                         ; $4c4d: $9a
    xor c                                         ; $4c4e: $a9
    add a                                         ; $4c4f: $87
    ld h, h                                       ; $4c50: $64
    ld hl, $3412                                  ; $4c51: $21 $12 $34
    ld b, [hl]                                    ; $4c54: $46
    ld a, d                                       ; $4c55: $7a
    sbc $fe                                       ; $4c56: $de $fe
    call c, $a8bb                                 ; $4c58: $dc $bb $a8
    halt                                          ; $4c5b: $76
    ld a, b                                       ; $4c5c: $78
    xor d                                         ; $4c5d: $aa
    cp e                                          ; $4c5e: $bb
    cp e                                          ; $4c5f: $bb
    call $a8dc                                    ; $4c60: $cd $dc $a8
    ld [hl], a                                    ; $4c63: $77
    ld h, h                                       ; $4c64: $64
    ld [hl-], a                                   ; $4c65: $32
    ld b, [hl]                                    ; $4c66: $46
    ld h, [hl]                                    ; $4c67: $66
    ld h, [hl]                                    ; $4c68: $66
    ld h, [hl]                                    ; $4c69: $66
    ld d, l                                       ; $4c6a: $55
    ld d, h                                       ; $4c6b: $54
    inc sp                                        ; $4c6c: $33
    inc sp                                        ; $4c6d: $33
    ld [hl+], a                                   ; $4c6e: $22
    ld de, $5623                                  ; $4c6f: $11 $23 $56
    ld [hl], a                                    ; $4c72: $77
    adc c                                         ; $4c73: $89
    xor e                                         ; $4c74: $ab
    cp e                                          ; $4c75: $bb
    xor c                                         ; $4c76: $a9
    adc b                                         ; $4c77: $88
    sbc d                                         ; $4c78: $9a
    xor c                                         ; $4c79: $a9
    sbc e                                         ; $4c7a: $9b
    rst $18                                       ; $4c7b: $df
    db $fc                                        ; $4c7c: $fc
    xor d                                         ; $4c7d: $aa
    xor e                                         ; $4c7e: $ab
    cp d                                          ; $4c7f: $ba
    add a                                         ; $4c80: $87
    ld h, a                                       ; $4c81: $67
    ld [hl], a                                    ; $4c82: $77
    halt                                          ; $4c83: $76
    ld a, c                                       ; $4c84: $79
    sbc b                                         ; $4c85: $98
    ld [hl], a                                    ; $4c86: $77
    adc b                                         ; $4c87: $88
    add l                                         ; $4c88: $85
    ld sp, $1111                                  ; $4c89: $31 $11 $11
    nop                                           ; $4c8c: $00
    ld [bc], a                                    ; $4c8d: $02
    ld b, a                                       ; $4c8e: $47
    adc c                                         ; $4c8f: $89
    sbc c                                         ; $4c90: $99
    sbc c                                         ; $4c91: $99
    sbc b                                         ; $4c92: $98
    adc b                                         ; $4c93: $88
    ld [hl], a                                    ; $4c94: $77
    ld h, [hl]                                    ; $4c95: $66
    ld h, a                                       ; $4c96: $67
    sbc d                                         ; $4c97: $9a
    adc $ff                                       ; $4c98: $ce $ff
    cp $dc                                        ; $4c9a: $fe $dc
    res 5, b                                      ; $4c9c: $cb $a8
    ld h, l                                       ; $4c9e: $65
    ld b, h                                       ; $4c9f: $44
    ld d, a                                       ; $4ca0: $57
    sbc d                                         ; $4ca1: $9a
    xor d                                         ; $4ca2: $aa
    sbc b                                         ; $4ca3: $98
    adc b                                         ; $4ca4: $88
    ld h, h                                       ; $4ca5: $64
    ld sp, $1011                                  ; $4ca6: $31 $11 $10
    ld de, $8a25                                  ; $4ca9: $11 $25 $8a
    xor d                                         ; $4cac: $aa
    xor d                                         ; $4cad: $aa
    xor d                                         ; $4cae: $aa
    sub a                                         ; $4caf: $97
    ld h, h                                       ; $4cb0: $64
    inc sp                                        ; $4cb1: $33
    ld d, [hl]                                    ; $4cb2: $56
    ld [hl], a                                    ; $4cb3: $77
    ld a, b                                       ; $4cb4: $78
    xor h                                         ; $4cb5: $ac
    rst $28                                       ; $4cb6: $ef
    rst $38                                       ; $4cb7: $ff
    cp $da                                        ; $4cb8: $fe $da
    add [hl]                                      ; $4cba: $86
    ld h, [hl]                                    ; $4cbb: $66
    ld h, l                                       ; $4cbc: $65
    ld d, l                                       ; $4cbd: $55
    ld l, b                                       ; $4cbe: $68
    sbc d                                         ; $4cbf: $9a
    sbc c                                         ; $4cc0: $99
    sbc c                                         ; $4cc1: $99
    add a                                         ; $4cc2: $87
    ld h, l                                       ; $4cc3: $65
    ld b, e                                       ; $4cc4: $43
    db $10                                        ; $4cc5: $10
    inc de                                        ; $4cc6: $13
    ld d, [hl]                                    ; $4cc7: $56
    ld [hl], a                                    ; $4cc8: $77
    adc c                                         ; $4cc9: $89
    xor h                                         ; $4cca: $ac
    call c, Call_018_75b9                         ; $4ccb: $dc $b9 $75
    ld d, l                                       ; $4cce: $55
    ld d, l                                       ; $4ccf: $55
    ld d, l                                       ; $4cd0: $55
    ld l, b                                       ; $4cd1: $68
    xor h                                         ; $4cd2: $ac
    sbc $dc                                       ; $4cd3: $de $dc
    res 7, d                                      ; $4cd5: $cb $ba
    add [hl]                                      ; $4cd7: $86
    ld d, h                                       ; $4cd8: $54
    ld [hl-], a                                   ; $4cd9: $32
    inc sp                                        ; $4cda: $33
    ld d, [hl]                                    ; $4cdb: $56
    adc c                                         ; $4cdc: $89
    sbc c                                         ; $4cdd: $99
    sbc d                                         ; $4cde: $9a
    cp e                                          ; $4cdf: $bb
    and a                                         ; $4ce0: $a7
    ld d, h                                       ; $4ce1: $54
    inc sp                                        ; $4ce2: $33
    inc sp                                        ; $4ce3: $33
    ld b, [hl]                                    ; $4ce4: $46
    ld a, b                                       ; $4ce5: $78
    adc c                                         ; $4ce6: $89
    xor h                                         ; $4ce7: $ac
    xor $c9                                       ; $4ce8: $ee $c9
    ld h, h                                       ; $4cea: $64
    inc [hl]                                      ; $4ceb: $34
    ld h, [hl]                                    ; $4cec: $66
    ld d, h                                       ; $4ced: $54
    dec [hl]                                      ; $4cee: $35
    adc e                                         ; $4cef: $8b
    sbc $dd                                       ; $4cf0: $de $dd
    jp z, $4386                                   ; $4cf2: $ca $86 $43

    inc [hl]                                      ; $4cf5: $34
    ld d, [hl]                                    ; $4cf6: $56
    ld [hl], a                                    ; $4cf7: $77
    adc c                                         ; $4cf8: $89
    call $baec                                    ; $4cf9: $cd $ec $ba
    sbc c                                         ; $4cfc: $99
    add [hl]                                      ; $4cfd: $86
    ld b, e                                       ; $4cfe: $43
    db $10                                        ; $4cff: $10
    ld [bc], a                                    ; $4d00: $02
    ld b, [hl]                                    ; $4d01: $46
    ld a, b                                       ; $4d02: $78
    adc b                                         ; $4d03: $88
    sbc d                                         ; $4d04: $9a
    xor d                                         ; $4d05: $aa
    xor b                                         ; $4d06: $a8
    ld d, e                                       ; $4d07: $53
    inc sp                                        ; $4d08: $33
    ld b, h                                       ; $4d09: $44
    inc sp                                        ; $4d0a: $33
    ld e, b                                       ; $4d0b: $58
    cp l                                          ; $4d0c: $bd
    rst $38                                       ; $4d0d: $ff
    db $ed                                        ; $4d0e: $ed
    call z, $86ba                                 ; $4d0f: $cc $ba $86
    ld b, e                                       ; $4d12: $43
    ld b, l                                       ; $4d13: $45
    ld l, b                                       ; $4d14: $68
    sbc d                                         ; $4d15: $9a
    call $dddd                                    ; $4d16: $cd $dd $dd
    db $ed                                        ; $4d19: $ed
    or a                                          ; $4d1a: $b7
    ld sp, $4313                                  ; $4d1b: $31 $13 $43
    ld de, $5724                                  ; $4d1e: $11 $24 $57
    ld a, b                                       ; $4d21: $78
    ld [hl], l                                    ; $4d22: $75
    ld d, h                                       ; $4d23: $54
    ld b, e                                       ; $4d24: $43
    ld [hl+], a                                   ; $4d25: $22
    ld [hl+], a                                   ; $4d26: $22
    inc [hl]                                      ; $4d27: $34
    ld d, [hl]                                    ; $4d28: $56
    adc c                                         ; $4d29: $89
    cp l                                          ; $4d2a: $bd
    xor $dc                                       ; $4d2b: $ee $dc
    cp e                                          ; $4d2d: $bb
    cp e                                          ; $4d2e: $bb
    xor b                                         ; $4d2f: $a8
    add a                                         ; $4d30: $87
    sbc h                                         ; $4d31: $9c
    db $dd                                        ; $4d32: $dd
    rst $28                                       ; $4d33: $ef
    rst $38                                       ; $4d34: $ff
    db $ec                                        ; $4d35: $ec
    xor b                                         ; $4d36: $a8
    ld h, [hl]                                    ; $4d37: $66
    ld h, l                                       ; $4d38: $65
    ld d, e                                       ; $4d39: $53
    inc sp                                        ; $4d3a: $33
    ld b, l                                       ; $4d3b: $45
    ld h, [hl]                                    ; $4d3c: $66
    ld [hl], a                                    ; $4d3d: $77
    halt                                          ; $4d3e: $76
    ld b, h                                       ; $4d3f: $44
    ld b, h                                       ; $4d40: $44
    ld [hl-], a                                   ; $4d41: $32
    ld bc, $7835                                  ; $4d42: $01 $35 $78
    adc b                                         ; $4d45: $88
    sbc b                                         ; $4d46: $98
    adc b                                         ; $4d47: $88
    adc c                                         ; $4d48: $89
    sbc b                                         ; $4d49: $98
    adc b                                         ; $4d4a: $88
    adc c                                         ; $4d4b: $89
    sbc d                                         ; $4d4c: $9a
    cp l                                          ; $4d4d: $bd
    rst $38                                       ; $4d4e: $ff
    xor $ee                                       ; $4d4f: $ee $ee
    jp c, Jump_018_7787                           ; $4d51: $da $87 $77

    ld d, e                                       ; $4d54: $53
    ld [hl+], a                                   ; $4d55: $22
    dec [hl]                                      ; $4d56: $35
    ld h, [hl]                                    ; $4d57: $66
    ld h, l                                       ; $4d58: $65
    ld h, a                                       ; $4d59: $67
    adc b                                         ; $4d5a: $88
    halt                                          ; $4d5b: $76
    ld b, h                                       ; $4d5c: $44
    ld b, l                                       ; $4d5d: $45
    ld b, d                                       ; $4d5e: $42
    inc hl                                        ; $4d5f: $23
    ld b, [hl]                                    ; $4d60: $46
    ld a, b                                       ; $4d61: $78
    ld a, b                                       ; $4d62: $78
    sbc c                                         ; $4d63: $99
    xor d                                         ; $4d64: $aa
    sbc c                                         ; $4d65: $99
    adc b                                         ; $4d66: $88
    add a                                         ; $4d67: $87
    ld [hl], a                                    ; $4d68: $77
    adc c                                         ; $4d69: $89
    xor e                                         ; $4d6a: $ab
    call $dddd                                    ; $4d6b: $cd $dd $dd
    call c, $86b9                                 ; $4d6e: $dc $b9 $86
    ld d, h                                       ; $4d71: $54
    ld b, h                                       ; $4d72: $44
    ld b, e                                       ; $4d73: $43
    inc [hl]                                      ; $4d74: $34
    ld l, b                                       ; $4d75: $68
    xor d                                         ; $4d76: $aa
    xor d                                         ; $4d77: $aa
    sbc b                                         ; $4d78: $98
    ld [hl], l                                    ; $4d79: $75
    ld sp, $2201                                  ; $4d7a: $31 $01 $22
    ld hl, $8b25                                  ; $4d7d: $21 $25 $8b
    cp e                                          ; $4d80: $bb
    call $cadd                                    ; $4d81: $cd $dd $ca
    adc b                                         ; $4d84: $88
    adc b                                         ; $4d85: $88
    halt                                          ; $4d86: $76
    ld h, a                                       ; $4d87: $67
    sbc d                                         ; $4d88: $9a
    cp e                                          ; $4d89: $bb
    call z, $bacc                                 ; $4d8a: $cc $cc $ba
    sub a                                         ; $4d8d: $97
    ld d, l                                       ; $4d8e: $55
    ld d, l                                       ; $4d8f: $55
    ld [hl-], a                                   ; $4d90: $32
    inc [hl]                                      ; $4d91: $34
    ld d, l                                       ; $4d92: $55
    ld d, [hl]                                    ; $4d93: $56
    ld a, b                                       ; $4d94: $78
    sbc d                                         ; $4d95: $9a
    xor c                                         ; $4d96: $a9
    ld h, e                                       ; $4d97: $63
    inc [hl]                                      ; $4d98: $34
    ld h, [hl]                                    ; $4d99: $66
    ld b, e                                       ; $4d9a: $43
    inc [hl]                                      ; $4d9b: $34
    ld l, b                                       ; $4d9c: $68
    xor e                                         ; $4d9d: $ab
    res 7, d                                      ; $4d9e: $cb $ba
    cp h                                          ; $4da0: $bc
    res 3, b                                      ; $4da1: $cb $98
    adc b                                         ; $4da3: $88
    adc c                                         ; $4da4: $89
    xor c                                         ; $4da5: $a9
    adc b                                         ; $4da6: $88
    adc c                                         ; $4da7: $89
    xor e                                         ; $4da8: $ab
    cp d                                          ; $4da9: $ba
    add l                                         ; $4daa: $85
    ld b, h                                       ; $4dab: $44
    ld a, d                                       ; $4dac: $7a
    xor b                                         ; $4dad: $a8
    ld h, l                                       ; $4dae: $65
    ld l, b                                       ; $4daf: $68
    sub a                                         ; $4db0: $97
    ld b, e                                       ; $4db1: $43
    ld d, a                                       ; $4db2: $57
    ld h, e                                       ; $4db3: $63
    ld de, $6535                                  ; $4db4: $11 $35 $65
    ld d, [hl]                                    ; $4db7: $56
    ld a, c                                       ; $4db8: $79
    cp h                                          ; $4db9: $bc
    and a                                         ; $4dba: $a7
    ld b, h                                       ; $4dbb: $44
    ld l, b                                       ; $4dbc: $68
    sbc b                                         ; $4dbd: $98
    ld [hl], a                                    ; $4dbe: $77
    adc c                                         ; $4dbf: $89
    cp l                                          ; $4dc0: $bd
    xor $db                                       ; $4dc1: $ee $db
    xor c                                         ; $4dc3: $a9
    sbc b                                         ; $4dc4: $98
    halt                                          ; $4dc5: $76
    ld h, [hl]                                    ; $4dc6: $66
    ld h, a                                       ; $4dc7: $67
    ld a, b                                       ; $4dc8: $78
    sbc d                                         ; $4dc9: $9a
    xor e                                         ; $4dca: $ab
    cp e                                          ; $4dcb: $bb
    xor c                                         ; $4dcc: $a9
    add [hl]                                      ; $4dcd: $86
    ld d, h                                       ; $4dce: $54
    ld sp, $3511                                  ; $4dcf: $31 $11 $35
    ld h, [hl]                                    ; $4dd2: $66
    ld h, [hl]                                    ; $4dd3: $66
    ld a, c                                       ; $4dd4: $79
    xor e                                         ; $4dd5: $ab
    cp e                                          ; $4dd6: $bb
    sub [hl]                                      ; $4dd7: $96
    ld d, h                                       ; $4dd8: $54
    ld d, l                                       ; $4dd9: $55
    ld h, l                                       ; $4dda: $65
    ld d, [hl]                                    ; $4ddb: $56
    adc e                                         ; $4ddc: $8b
    sbc $ed                                       ; $4ddd: $de $ed
    db $dd                                        ; $4ddf: $dd
    db $dd                                        ; $4de0: $dd
    jp z, $3475                                   ; $4de1: $ca $75 $34

    ld d, l                                       ; $4de4: $55
    ld d, l                                       ; $4de5: $55
    ld d, l                                       ; $4de6: $55
    ld h, [hl]                                    ; $4de7: $66
    adc c                                         ; $4de8: $89
    sbc b                                         ; $4de9: $98
    adc b                                         ; $4dea: $88
    add a                                         ; $4deb: $87
    ld d, e                                       ; $4dec: $53
    ld [hl+], a                                   ; $4ded: $22
    ld hl, $3512                                  ; $4dee: $21 $12 $35
    ld a, b                                       ; $4df1: $78
    sbc d                                         ; $4df2: $9a
    xor d                                         ; $4df3: $aa
    xor c                                         ; $4df4: $a9
    sbc c                                         ; $4df5: $99
    sbc c                                         ; $4df6: $99
    adc b                                         ; $4df7: $88
    ld [hl], a                                    ; $4df8: $77
    sbc d                                         ; $4df9: $9a
    xor d                                         ; $4dfa: $aa
    cp h                                          ; $4dfb: $bc
    xor $dc                                       ; $4dfc: $ee $dc
    cp e                                          ; $4dfe: $bb
    sbc b                                         ; $4dff: $98
    ld h, l                                       ; $4e00: $65
    ld b, e                                       ; $4e01: $43
    ld hl, $4523                                  ; $4e02: $21 $23 $45
    ld d, [hl]                                    ; $4e05: $56
    ld h, a                                       ; $4e06: $67
    adc c                                         ; $4e07: $89
    sbc b                                         ; $4e08: $98
    ld h, h                                       ; $4e09: $64
    ld b, h                                       ; $4e0a: $44
    ld b, e                                       ; $4e0b: $43
    ld [hl+], a                                   ; $4e0c: $22
    inc sp                                        ; $4e0d: $33
    ld d, [hl]                                    ; $4e0e: $56
    adc d                                         ; $4e0f: $8a
    call $eeee                                    ; $4e10: $cd $ee $ee
    call c, $99ba                                 ; $4e13: $dc $ba $99
    add a                                         ; $4e16: $87
    ld a, b                                       ; $4e17: $78
    adc c                                         ; $4e18: $89
    sbc d                                         ; $4e19: $9a
    xor d                                         ; $4e1a: $aa
    xor e                                         ; $4e1b: $ab
    xor d                                         ; $4e1c: $aa
    sbc b                                         ; $4e1d: $98
    add a                                         ; $4e1e: $87
    ld d, e                                       ; $4e1f: $53
    ld [hl+], a                                   ; $4e20: $22
    inc [hl]                                      ; $4e21: $34
    ld [hl-], a                                   ; $4e22: $32
    inc hl                                        ; $4e23: $23
    ld d, [hl]                                    ; $4e24: $56
    ld h, [hl]                                    ; $4e25: $66
    ld d, l                                       ; $4e26: $55
    ld d, [hl]                                    ; $4e27: $56
    ld d, l                                       ; $4e28: $55
    ld d, l                                       ; $4e29: $55
    ld d, l                                       ; $4e2a: $55
    ld h, a                                       ; $4e2b: $67
    adc c                                         ; $4e2c: $89
    cp h                                          ; $4e2d: $bc
    db $dd                                        ; $4e2e: $dd
    call c, $cbcd                                 ; $4e2f: $dc $cd $cb
    xor c                                         ; $4e32: $a9
    sbc c                                         ; $4e33: $99
    sbc b                                         ; $4e34: $98
    sbc d                                         ; $4e35: $9a
    xor d                                         ; $4e36: $aa
    xor c                                         ; $4e37: $a9
    xor e                                         ; $4e38: $ab
    xor c                                         ; $4e39: $a9
    ld [hl], l                                    ; $4e3a: $75
    ld d, h                                       ; $4e3b: $54
    ld b, e                                       ; $4e3c: $43
    ld [hl+], a                                   ; $4e3d: $22
    ld [hl+], a                                   ; $4e3e: $22
    inc sp                                        ; $4e3f: $33
    inc [hl]                                      ; $4e40: $34
    ld d, [hl]                                    ; $4e41: $56
    ld a, b                                       ; $4e42: $78
    ld [hl], a                                    ; $4e43: $77
    ld h, [hl]                                    ; $4e44: $66
    ld [hl], a                                    ; $4e45: $77
    ld h, l                                       ; $4e46: $65
    inc sp                                        ; $4e47: $33
    ld b, [hl]                                    ; $4e48: $46
    ld a, b                                       ; $4e49: $78
    sbc d                                         ; $4e4a: $9a
    call $eede                                    ; $4e4b: $cd $de $ee
    db $ed                                        ; $4e4e: $ed
    res 3, b                                      ; $4e4f: $cb $98
    adc b                                         ; $4e51: $88
    add [hl]                                      ; $4e52: $86
    ld d, l                                       ; $4e53: $55
    ld l, b                                       ; $4e54: $68
    xor d                                         ; $4e55: $aa
    xor d                                         ; $4e56: $aa
    xor c                                         ; $4e57: $a9
    add a                                         ; $4e58: $87
    ld d, h                                       ; $4e59: $54
    inc sp                                        ; $4e5a: $33
    ld [hl+], a                                   ; $4e5b: $22
    inc [hl]                                      ; $4e5c: $34
    ld d, [hl]                                    ; $4e5d: $56
    ld [hl], a                                    ; $4e5e: $77
    ld [hl], a                                    ; $4e5f: $77
    adc b                                         ; $4e60: $88
    sbc c                                         ; $4e61: $99
    sub a                                         ; $4e62: $97
    ld d, h                                       ; $4e63: $54
    inc sp                                        ; $4e64: $33
    ld b, h                                       ; $4e65: $44
    ld b, h                                       ; $4e66: $44
    ld d, [hl]                                    ; $4e67: $56
    ld a, c                                       ; $4e68: $79
    cp e                                          ; $4e69: $bb
    cp h                                          ; $4e6a: $bc
    sbc $db                                       ; $4e6b: $de $db
    xor c                                         ; $4e6d: $a9
    adc b                                         ; $4e6e: $88
    halt                                          ; $4e6f: $76
    ld h, a                                       ; $4e70: $67
    adc c                                         ; $4e71: $89
    xor h                                         ; $4e72: $ac
    call z, $cdcb                                 ; $4e73: $cc $cb $cd
    jp z, $3285                                   ; $4e76: $ca $85 $32

    ld [hl+], a                                   ; $4e79: $22
    inc hl                                        ; $4e7a: $23
    inc [hl]                                      ; $4e7b: $34
    ld l, b                                       ; $4e7c: $68
    adc b                                         ; $4e7d: $88
    adc b                                         ; $4e7e: $88
    sbc c                                         ; $4e7f: $99
    add l                                         ; $4e80: $85
    ld b, d                                       ; $4e81: $42
    ld [hl+], a                                   ; $4e82: $22
    ld hl, $3512                                  ; $4e83: $21 $12 $35
    adc c                                         ; $4e86: $89
    xor d                                         ; $4e87: $aa
    xor d                                         ; $4e88: $aa
    xor d                                         ; $4e89: $aa
    xor c                                         ; $4e8a: $a9
    add a                                         ; $4e8b: $87
    ld [hl], a                                    ; $4e8c: $77
    ld [hl], a                                    ; $4e8d: $77
    adc b                                         ; $4e8e: $88
    sbc d                                         ; $4e8f: $9a
    xor e                                         ; $4e90: $ab
    cp h                                          ; $4e91: $bc
    sbc $dc                                       ; $4e92: $de $dc
    xor b                                         ; $4e94: $a8
    halt                                          ; $4e95: $76
    ld h, l                                       ; $4e96: $65
    ld b, h                                       ; $4e97: $44
    inc sp                                        ; $4e98: $33
    ld b, l                                       ; $4e99: $45
    ld a, c                                       ; $4e9a: $79
    xor c                                         ; $4e9b: $a9
    add a                                         ; $4e9c: $87
    ld a, b                                       ; $4e9d: $78
    add a                                         ; $4e9e: $87
    ld d, e                                       ; $4e9f: $53
    ld [hl+], a                                   ; $4ea0: $22
    inc sp                                        ; $4ea1: $33
    ld b, h                                       ; $4ea2: $44
    ld d, l                                       ; $4ea3: $55
    ld a, b                                       ; $4ea4: $78
    adc c                                         ; $4ea5: $89
    sbc c                                         ; $4ea6: $99
    xor e                                         ; $4ea7: $ab
    cp c                                          ; $4ea8: $b9
    ld [hl], a                                    ; $4ea9: $77
    ld a, c                                       ; $4eaa: $79
    sbc c                                         ; $4eab: $99
    sbc c                                         ; $4eac: $99
    xor e                                         ; $4ead: $ab
    call $cbcc                                    ; $4eae: $cd $cc $cb
    xor c                                         ; $4eb1: $a9
    adc b                                         ; $4eb2: $88
    ld [hl], l                                    ; $4eb3: $75
    ld b, e                                       ; $4eb4: $43
    inc [hl]                                      ; $4eb5: $34
    ld d, l                                       ; $4eb6: $55
    ld d, l                                       ; $4eb7: $55
    ld d, [hl]                                    ; $4eb8: $56
    adc c                                         ; $4eb9: $89
    xor d                                         ; $4eba: $aa
    sub a                                         ; $4ebb: $97
    ld h, [hl]                                    ; $4ebc: $66
    ld d, h                                       ; $4ebd: $54
    inc sp                                        ; $4ebe: $33
    inc [hl]                                      ; $4ebf: $34
    ld b, h                                       ; $4ec0: $44
    ld b, [hl]                                    ; $4ec1: $46
    adc d                                         ; $4ec2: $8a
    cp h                                          ; $4ec3: $bc
    res 7, e                                      ; $4ec4: $cb $bb
    call z, $86ba                                 ; $4ec6: $cc $ba $86
    ld d, l                                       ; $4ec9: $55
    ld d, l                                       ; $4eca: $55
    ld d, [hl]                                    ; $4ecb: $56
    ld a, b                                       ; $4ecc: $78
    sbc d                                         ; $4ecd: $9a
    cp h                                          ; $4ece: $bc
    res 5, c                                      ; $4ecf: $cb $a9
    add a                                         ; $4ed1: $87
    ld d, e                                       ; $4ed2: $53
    ld b, l                                       ; $4ed3: $45
    ld h, l                                       ; $4ed4: $65
    ld b, e                                       ; $4ed5: $43
    ld b, [hl]                                    ; $4ed6: $46
    adc c                                         ; $4ed7: $89
    sbc d                                         ; $4ed8: $9a
    xor c                                         ; $4ed9: $a9
    sbc b                                         ; $4eda: $98
    adc b                                         ; $4edb: $88
    add a                                         ; $4edc: $87
    ld h, l                                       ; $4edd: $65
    ld b, h                                       ; $4ede: $44
    ld b, [hl]                                    ; $4edf: $46
    adc d                                         ; $4ee0: $8a
    cp d                                          ; $4ee1: $ba
    sbc c                                         ; $4ee2: $99
    xor e                                         ; $4ee3: $ab
    cp e                                          ; $4ee4: $bb
    cp d                                          ; $4ee5: $ba
    add [hl]                                      ; $4ee6: $86
    ld b, h                                       ; $4ee7: $44
    ld d, [hl]                                    ; $4ee8: $56
    ld h, [hl]                                    ; $4ee9: $66
    ld l, b                                       ; $4eea: $68
    cp h                                          ; $4eeb: $bc
    xor b                                         ; $4eec: $a8
    ld [hl], a                                    ; $4eed: $77
    adc b                                         ; $4eee: $88
    adc b                                         ; $4eef: $88
    add a                                         ; $4ef0: $87
    ld d, h                                       ; $4ef1: $54
    ld b, [hl]                                    ; $4ef2: $46
    ld [hl], a                                    ; $4ef3: $77
    ld h, [hl]                                    ; $4ef4: $66
    ld h, a                                       ; $4ef5: $67
    adc c                                         ; $4ef6: $89
    sbc b                                         ; $4ef7: $98
    adc b                                         ; $4ef8: $88
    halt                                          ; $4ef9: $76
    ld h, [hl]                                    ; $4efa: $66
    ld h, [hl]                                    ; $4efb: $66
    ld d, h                                       ; $4efc: $54
    inc [hl]                                      ; $4efd: $34
    ld d, [hl]                                    ; $4efe: $56
    ld [hl], a                                    ; $4eff: $77
    adc c                                         ; $4f00: $89
    cp h                                          ; $4f01: $bc
    db $dd                                        ; $4f02: $dd
    db $dd                                        ; $4f03: $dd
    db $db                                        ; $4f04: $db
    xor c                                         ; $4f05: $a9
    sbc b                                         ; $4f06: $98
    ld [hl], l                                    ; $4f07: $75
    ld d, [hl]                                    ; $4f08: $56
    ld a, c                                       ; $4f09: $79
    sbc b                                         ; $4f0a: $98
    adc b                                         ; $4f0b: $88
    sbc d                                         ; $4f0c: $9a
    cp d                                          ; $4f0d: $ba
    xor d                                         ; $4f0e: $aa
    sbc b                                         ; $4f0f: $98
    add h                                         ; $4f10: $84
    ld [hl+], a                                   ; $4f11: $22
    inc [hl]                                      ; $4f12: $34
    ld b, h                                       ; $4f13: $44
    ld [hl-], a                                   ; $4f14: $32
    dec [hl]                                      ; $4f15: $35
    ld a, b                                       ; $4f16: $78
    add a                                         ; $4f17: $87
    ld h, [hl]                                    ; $4f18: $66
    ld [hl], a                                    ; $4f19: $77
    halt                                          ; $4f1a: $76
    ld d, h                                       ; $4f1b: $54
    inc [hl]                                      ; $4f1c: $34
    ld d, [hl]                                    ; $4f1d: $56
    adc b                                         ; $4f1e: $88
    adc c                                         ; $4f1f: $89
    xor e                                         ; $4f20: $ab
    cp h                                          ; $4f21: $bc
    call z, $bccb                                 ; $4f22: $cc $cb $bc
    db $dd                                        ; $4f25: $dd
    jp z, Jump_018_7887                           ; $4f26: $ca $87 $78

    add a                                         ; $4f29: $87
    ld h, a                                       ; $4f2a: $67
    ld a, b                                       ; $4f2b: $78
    adc b                                         ; $4f2c: $88
    sbc c                                         ; $4f2d: $99
    sbc b                                         ; $4f2e: $98
    ld [hl], l                                    ; $4f2f: $75
    ld [hl-], a                                   ; $4f30: $32
    inc hl                                        ; $4f31: $23
    inc sp                                        ; $4f32: $33
    ld [hl-], a                                   ; $4f33: $32
    inc [hl]                                      ; $4f34: $34
    ld d, [hl]                                    ; $4f35: $56
    ld [hl], a                                    ; $4f36: $77
    ld a, b                                       ; $4f37: $78
    adc b                                         ; $4f38: $88
    sbc c                                         ; $4f39: $99
    adc b                                         ; $4f3a: $88
    ld [hl], a                                    ; $4f3b: $77
    ld h, [hl]                                    ; $4f3c: $66
    ld h, [hl]                                    ; $4f3d: $66
    ld [hl], a                                    ; $4f3e: $77
    adc b                                         ; $4f3f: $88
    sbc d                                         ; $4f40: $9a
    xor e                                         ; $4f41: $ab
    db $dd                                        ; $4f42: $dd
    call c, $abaa                                 ; $4f43: $dc $aa $ab
    xor b                                         ; $4f46: $a8
    ld h, l                                       ; $4f47: $65
    ld h, a                                       ; $4f48: $67
    adc b                                         ; $4f49: $88
    ld [hl], a                                    ; $4f4a: $77
    adc c                                         ; $4f4b: $89
    xor d                                         ; $4f4c: $aa
    xor c                                         ; $4f4d: $a9
    add a                                         ; $4f4e: $87
    ld h, [hl]                                    ; $4f4f: $66
    ld h, [hl]                                    ; $4f50: $66
    ld d, e                                       ; $4f51: $53
    ld [hl+], a                                   ; $4f52: $22
    inc [hl]                                      ; $4f53: $34
    ld d, l                                       ; $4f54: $55
    ld h, [hl]                                    ; $4f55: $66
    ld h, a                                       ; $4f56: $67
    adc b                                         ; $4f57: $88
    adc b                                         ; $4f58: $88
    adc b                                         ; $4f59: $88
    halt                                          ; $4f5a: $76
    ld h, [hl]                                    ; $4f5b: $66
    ld h, a                                       ; $4f5c: $67
    ld a, b                                       ; $4f5d: $78
    adc b                                         ; $4f5e: $88
    sbc c                                         ; $4f5f: $99
    xor e                                         ; $4f60: $ab
    call z, $b9cc                                 ; $4f61: $cc $cc $b9
    adc b                                         ; $4f64: $88
    adc b                                         ; $4f65: $88
    ld [hl], a                                    ; $4f66: $77
    ld [hl], a                                    ; $4f67: $77
    adc b                                         ; $4f68: $88
    adc b                                         ; $4f69: $88
    adc c                                         ; $4f6a: $89
    xor d                                         ; $4f6b: $aa
    xor c                                         ; $4f6c: $a9
    adc b                                         ; $4f6d: $88
    halt                                          ; $4f6e: $76
    ld d, h                                       ; $4f6f: $54
    inc sp                                        ; $4f70: $33
    inc sp                                        ; $4f71: $33
    ld b, l                                       ; $4f72: $45
    ld a, c                                       ; $4f73: $79
    xor c                                         ; $4f74: $a9
    add a                                         ; $4f75: $87
    ld a, b                                       ; $4f76: $78
    halt                                          ; $4f77: $76
    ld b, h                                       ; $4f78: $44
    ld d, l                                       ; $4f79: $55
    ld d, h                                       ; $4f7a: $54
    ld b, [hl]                                    ; $4f7b: $46
    adc c                                         ; $4f7c: $89
    xor d                                         ; $4f7d: $aa
    xor d                                         ; $4f7e: $aa
    cp h                                          ; $4f7f: $bc
    call z, $aaba                                 ; $4f80: $cc $ba $aa
    sub a                                         ; $4f83: $97
    ld d, h                                       ; $4f84: $54
    ld d, [hl]                                    ; $4f85: $56
    ld h, [hl]                                    ; $4f86: $66
    ld a, b                                       ; $4f87: $78
    sbc c                                         ; $4f88: $99
    sbc d                                         ; $4f89: $9a
    cp e                                          ; $4f8a: $bb
    xor b                                         ; $4f8b: $a8
    halt                                          ; $4f8c: $76
    ld h, [hl]                                    ; $4f8d: $66
    ld d, l                                       ; $4f8e: $55
    ld d, l                                       ; $4f8f: $55
    ld d, l                                       ; $4f90: $55
    ld d, l                                       ; $4f91: $55
    ld a, c                                       ; $4f92: $79
    cp h                                          ; $4f93: $bc
    res 7, d                                      ; $4f94: $cb $ba
    sub a                                         ; $4f96: $97
    ld d, h                                       ; $4f97: $54
    inc sp                                        ; $4f98: $33
    ld b, h                                       ; $4f99: $44
    inc sp                                        ; $4f9a: $33
    ld b, l                                       ; $4f9b: $45
    ld a, c                                       ; $4f9c: $79
    xor d                                         ; $4f9d: $aa
    xor e                                         ; $4f9e: $ab
    cp e                                          ; $4f9f: $bb
    sub a                                         ; $4fa0: $97
    ld [hl], a                                    ; $4fa1: $77
    halt                                          ; $4fa2: $76
    ld b, d                                       ; $4fa3: $42
    dec [hl]                                      ; $4fa4: $35
    ld a, b                                       ; $4fa5: $78
    adc b                                         ; $4fa6: $88
    sbc e                                         ; $4fa7: $9b
    call Call_018_79b8                            ; $4fa8: $cd $b8 $79
    xor d                                         ; $4fab: $aa
    sub [hl]                                      ; $4fac: $96
    ld d, [hl]                                    ; $4fad: $56
    adc c                                         ; $4fae: $89
    add a                                         ; $4faf: $87
    ld l, b                                       ; $4fb0: $68
    xor e                                         ; $4fb1: $ab
    xor b                                         ; $4fb2: $a8
    ld [hl], a                                    ; $4fb3: $77
    adc c                                         ; $4fb4: $89
    add [hl]                                      ; $4fb5: $86
    ld d, l                                       ; $4fb6: $55
    ld a, c                                       ; $4fb7: $79
    add [hl]                                      ; $4fb8: $86
    ld b, h                                       ; $4fb9: $44
    ld e, b                                       ; $4fba: $58
    sbc c                                         ; $4fbb: $99
    adc b                                         ; $4fbc: $88
    adc b                                         ; $4fbd: $88
    ld [hl], a                                    ; $4fbe: $77
    ld h, l                                       ; $4fbf: $65
    ld b, e                                       ; $4fc0: $43
    ld b, l                                       ; $4fc1: $45
    ld d, h                                       ; $4fc2: $54
    ld b, [hl]                                    ; $4fc3: $46
    sbc d                                         ; $4fc4: $9a
    cp e                                          ; $4fc5: $bb
    call Call_018_76ca                            ; $4fc6: $cd $ca $76
    ld h, [hl]                                    ; $4fc9: $66
    ld d, h                                       ; $4fca: $54
    ld d, [hl]                                    ; $4fcb: $56
    ld [hl], a                                    ; $4fcc: $77
    adc c                                         ; $4fcd: $89
    cp e                                          ; $4fce: $bb
    xor c                                         ; $4fcf: $a9
    sbc d                                         ; $4fd0: $9a
    xor b                                         ; $4fd1: $a8
    ld h, l                                       ; $4fd2: $65
    ld d, l                                       ; $4fd3: $55
    ld d, l                                       ; $4fd4: $55
    ld h, a                                       ; $4fd5: $67
    halt                                          ; $4fd6: $76
    ld a, c                                       ; $4fd7: $79
    xor e                                         ; $4fd8: $ab
    call z, $a9cc                                 ; $4fd9: $cc $cc $a9
    ld [hl], a                                    ; $4fdc: $77
    ld h, [hl]                                    ; $4fdd: $66
    ld d, [hl]                                    ; $4fde: $56
    ld [hl], a                                    ; $4fdf: $77
    add [hl]                                      ; $4fe0: $86
    ld h, a                                       ; $4fe1: $67
    xor e                                         ; $4fe2: $ab
    cp c                                          ; $4fe3: $b9
    add a                                         ; $4fe4: $87
    halt                                          ; $4fe5: $76
    ld h, h                                       ; $4fe6: $64
    inc sp                                        ; $4fe7: $33
    ld b, h                                       ; $4fe8: $44
    ld b, e                                       ; $4fe9: $43
    dec [hl]                                      ; $4fea: $35
    ld a, b                                       ; $4feb: $78
    sbc b                                         ; $4fec: $98
    ld [hl], a                                    ; $4fed: $77
    ld [hl], a                                    ; $4fee: $77
    ld a, b                                       ; $4fef: $78
    add a                                         ; $4ff0: $87
    ld [hl], a                                    ; $4ff1: $77
    adc c                                         ; $4ff2: $89
    sbc c                                         ; $4ff3: $99
    sbc c                                         ; $4ff4: $99
    xor e                                         ; $4ff5: $ab
    call z, $a9cb                                 ; $4ff6: $cc $cb $a9
    sbc b                                         ; $4ff9: $98
    ld [hl], a                                    ; $4ffa: $77
    halt                                          ; $4ffb: $76
    ld h, a                                       ; $4ffc: $67
    ld a, b                                       ; $4ffd: $78
    sbc d                                         ; $4ffe: $9a
    cp e                                          ; $4fff: $bb
    xor c                                         ; $5000: $a9
    adc b                                         ; $5001: $88
    add a                                         ; $5002: $87
    ld d, h                                       ; $5003: $54
    ld b, e                                       ; $5004: $43
    ld b, e                                       ; $5005: $43
    inc sp                                        ; $5006: $33
    ld b, [hl]                                    ; $5007: $46
    ld [hl], a                                    ; $5008: $77
    ld h, l                                       ; $5009: $65
    ld l, b                                       ; $500a: $68
    sbc c                                         ; $500b: $99
    halt                                          ; $500c: $76
    ld h, a                                       ; $500d: $67
    ld [hl], a                                    ; $500e: $77
    ld [hl], a                                    ; $500f: $77
    add a                                         ; $5010: $87
    ld a, b                                       ; $5011: $78
    sbc d                                         ; $5012: $9a
    cp h                                          ; $5013: $bc
    call z, $bbbb                                 ; $5014: $cc $bb $bb
    xor c                                         ; $5017: $a9
    sbc c                                         ; $5018: $99
    adc b                                         ; $5019: $88
    halt                                          ; $501a: $76
    ld a, b                                       ; $501b: $78
    sbc c                                         ; $501c: $99
    add a                                         ; $501d: $87
    ld [hl], a                                    ; $501e: $77
    adc b                                         ; $501f: $88
    add [hl]                                      ; $5020: $86
    ld d, l                                       ; $5021: $55
    ld d, l                                       ; $5022: $55
    ld d, l                                       ; $5023: $55
    ld b, h                                       ; $5024: $44
    ld d, [hl]                                    ; $5025: $56
    ld h, [hl]                                    ; $5026: $66
    ld h, [hl]                                    ; $5027: $66
    ld a, b                                       ; $5028: $78
    sbc b                                         ; $5029: $98
    halt                                          ; $502a: $76
    ld d, [hl]                                    ; $502b: $56
    ld h, [hl]                                    ; $502c: $66
    ld d, l                                       ; $502d: $55
    ld d, l                                       ; $502e: $55
    ld l, b                                       ; $502f: $68
    sbc e                                         ; $5030: $9b
    call z, $ccbb                                 ; $5031: $cc $bb $cc
    cp d                                          ; $5034: $ba
    add a                                         ; $5035: $87
    ld [hl], a                                    ; $5036: $77
    ld [hl], a                                    ; $5037: $77
    ld [hl], a                                    ; $5038: $77
    ld [hl], a                                    ; $5039: $77
    ld a, b                                       ; $503a: $78
    adc d                                         ; $503b: $8a
    cp e                                          ; $503c: $bb
    xor c                                         ; $503d: $a9
    halt                                          ; $503e: $76
    ld [hl], a                                    ; $503f: $77
    ld h, l                                       ; $5040: $65
    ld b, h                                       ; $5041: $44
    ld d, [hl]                                    ; $5042: $56
    ld h, l                                       ; $5043: $65
    ld l, b                                       ; $5044: $68
    sbc c                                         ; $5045: $99
    sbc c                                         ; $5046: $99
    sbc c                                         ; $5047: $99
    add [hl]                                      ; $5048: $86
    ld d, l                                       ; $5049: $55
    ld d, l                                       ; $504a: $55
    ld d, h                                       ; $504b: $54
    ld b, l                                       ; $504c: $45
    ld l, b                                       ; $504d: $68
    sbc d                                         ; $504e: $9a
    xor c                                         ; $504f: $a9
    sbc c                                         ; $5050: $99
    xor d                                         ; $5051: $aa
    xor c                                         ; $5052: $a9
    halt                                          ; $5053: $76
    ld d, l                                       ; $5054: $55
    ld h, [hl]                                    ; $5055: $66
    ld h, [hl]                                    ; $5056: $66
    ld a, b                                       ; $5057: $78
    sbc d                                         ; $5058: $9a
    cp h                                          ; $5059: $bc
    res 3, b                                      ; $505a: $cb $98
    halt                                          ; $505c: $76
    ld h, l                                       ; $505d: $65
    ld d, l                                       ; $505e: $55
    ld d, [hl]                                    ; $505f: $56
    ld h, a                                       ; $5060: $67
    adc b                                         ; $5061: $88
    sbc d                                         ; $5062: $9a
    cp e                                          ; $5063: $bb
    xor c                                         ; $5064: $a9
    sbc b                                         ; $5065: $98
    add a                                         ; $5066: $87
    ld d, e                                       ; $5067: $53
    inc sp                                        ; $5068: $33
    ld b, l                                       ; $5069: $45
    ld d, [hl]                                    ; $506a: $56
    ld a, b                                       ; $506b: $78
    xor e                                         ; $506c: $ab
    cp e                                          ; $506d: $bb
    xor c                                         ; $506e: $a9
    adc b                                         ; $506f: $88
    add a                                         ; $5070: $87
    ld [hl], l                                    ; $5071: $75
    ld b, e                                       ; $5072: $43
    inc [hl]                                      ; $5073: $34
    ld d, a                                       ; $5074: $57
    sbc d                                         ; $5075: $9a
    xor d                                         ; $5076: $aa
    sbc d                                         ; $5077: $9a
    cp e                                          ; $5078: $bb
    cp c                                          ; $5079: $b9
    add [hl]                                      ; $507a: $86
    ld h, l                                       ; $507b: $65
    ld d, l                                       ; $507c: $55
    ld d, l                                       ; $507d: $55
    ld h, [hl]                                    ; $507e: $66
    ld a, b                                       ; $507f: $78
    adc d                                         ; $5080: $8a
    cp e                                          ; $5081: $bb
    cp e                                          ; $5082: $bb
    xor d                                         ; $5083: $aa
    sbc b                                         ; $5084: $98
    ld h, l                                       ; $5085: $65
    ld b, h                                       ; $5086: $44
    inc sp                                        ; $5087: $33
    inc [hl]                                      ; $5088: $34
    ld d, [hl]                                    ; $5089: $56
    ld a, c                                       ; $508a: $79
    xor e                                         ; $508b: $ab
    call z, $a8cb                                 ; $508c: $cc $cb $a8
    halt                                          ; $508f: $76
    ld h, l                                       ; $5090: $65
    ld d, l                                       ; $5091: $55
    ld b, h                                       ; $5092: $44
    ld b, [hl]                                    ; $5093: $46
    sbc d                                         ; $5094: $9a
    cp d                                          ; $5095: $ba
    xor d                                         ; $5096: $aa
    cp e                                          ; $5097: $bb
    xor b                                         ; $5098: $a8
    ld h, l                                       ; $5099: $65
    ld d, [hl]                                    ; $509a: $56
    ld h, l                                       ; $509b: $65
    ld d, l                                       ; $509c: $55
    ld a, c                                       ; $509d: $79
    sbc c                                         ; $509e: $99
    sbc d                                         ; $509f: $9a
    xor d                                         ; $50a0: $aa
    sbc c                                         ; $50a1: $99
    add a                                         ; $50a2: $87
    ld d, h                                       ; $50a3: $54
    inc [hl]                                      ; $50a4: $34
    ld b, h                                       ; $50a5: $44
    ld d, l                                       ; $50a6: $55
    ld h, a                                       ; $50a7: $67
    adc c                                         ; $50a8: $89
    xor d                                         ; $50a9: $aa
    xor d                                         ; $50aa: $aa
    sbc c                                         ; $50ab: $99
    adc b                                         ; $50ac: $88
    halt                                          ; $50ad: $76
    ld h, [hl]                                    ; $50ae: $66
    ld h, l                                       ; $50af: $65
    ld d, [hl]                                    ; $50b0: $56
    ld a, b                                       ; $50b1: $78
    sbc d                                         ; $50b2: $9a
    cp e                                          ; $50b3: $bb
    call z, $a9ba                                 ; $50b4: $cc $ba $a9
    sbc b                                         ; $50b7: $98

Call_018_50b8:
    ld h, l                                       ; $50b8: $65
    ld b, h                                       ; $50b9: $44
    ld b, l                                       ; $50ba: $45
    ld h, [hl]                                    ; $50bb: $66
    ld [hl], a                                    ; $50bc: $77
    adc b                                         ; $50bd: $88
    sbc d                                         ; $50be: $9a
    xor c                                         ; $50bf: $a9
    add a                                         ; $50c0: $87
    ld h, l                                       ; $50c1: $65
    ld b, h                                       ; $50c2: $44
    ld b, h                                       ; $50c3: $44
    ld b, h                                       ; $50c4: $44
    ld d, [hl]                                    ; $50c5: $56
    ld a, b                                       ; $50c6: $78
    sbc c                                         ; $50c7: $99
    xor d                                         ; $50c8: $aa
    xor d                                         ; $50c9: $aa
    xor d                                         ; $50ca: $aa
    xor c                                         ; $50cb: $a9
    adc b                                         ; $50cc: $88
    ld [hl], a                                    ; $50cd: $77
    ld [hl], a                                    ; $50ce: $77
    ld a, b                                       ; $50cf: $78
    xor d                                         ; $50d0: $aa
    xor d                                         ; $50d1: $aa
    cp e                                          ; $50d2: $bb
    cp e                                          ; $50d3: $bb
    xor d                                         ; $50d4: $aa
    sbc b                                         ; $50d5: $98
    halt                                          ; $50d6: $76
    ld d, h                                       ; $50d7: $54
    inc sp                                        ; $50d8: $33
    ld b, l                                       ; $50d9: $45
    ld h, [hl]                                    ; $50da: $66
    ld [hl], a                                    ; $50db: $77
    adc b                                         ; $50dc: $88
    add a                                         ; $50dd: $87
    ld [hl], a                                    ; $50de: $77
    halt                                          ; $50df: $76
    ld d, h                                       ; $50e0: $54
    ld b, h                                       ; $50e1: $44
    ld b, h                                       ; $50e2: $44
    ld b, l                                       ; $50e3: $45
    ld d, a                                       ; $50e4: $57
    adc b                                         ; $50e5: $88
    sbc d                                         ; $50e6: $9a
    xor d                                         ; $50e7: $aa
    cp e                                          ; $50e8: $bb
    cp e                                          ; $50e9: $bb
    xor c                                         ; $50ea: $a9
    adc c                                         ; $50eb: $89
    sbc c                                         ; $50ec: $99
    sbc c                                         ; $50ed: $99
    sbc c                                         ; $50ee: $99
    xor d                                         ; $50ef: $aa
    cp e                                          ; $50f0: $bb
    cp e                                          ; $50f1: $bb
    xor c                                         ; $50f2: $a9
    sbc b                                         ; $50f3: $98
    halt                                          ; $50f4: $76
    ld d, l                                       ; $50f5: $55
    ld b, h                                       ; $50f6: $44
    ld b, h                                       ; $50f7: $44
    ld d, [hl]                                    ; $50f8: $56
    ld h, [hl]                                    ; $50f9: $66
    ld h, [hl]                                    ; $50fa: $66
    ld [hl], a                                    ; $50fb: $77
    halt                                          ; $50fc: $76
    ld d, l                                       ; $50fd: $55
    ld d, l                                       ; $50fe: $55
    ld b, h                                       ; $50ff: $44
    inc [hl]                                      ; $5100: $34
    ld b, l                                       ; $5101: $45
    ld h, a                                       ; $5102: $67
    adc c                                         ; $5103: $89
    xor d                                         ; $5104: $aa
    cp e                                          ; $5105: $bb
    cp e                                          ; $5106: $bb
    cp e                                          ; $5107: $bb
    cp d                                          ; $5108: $ba
    sbc b                                         ; $5109: $98
    adc c                                         ; $510a: $89
    sbc c                                         ; $510b: $99
    adc b                                         ; $510c: $88
    ld a, b                                       ; $510d: $78
    sbc d                                         ; $510e: $9a
    xor d                                         ; $510f: $aa
    xor d                                         ; $5110: $aa
    xor c                                         ; $5111: $a9
    add [hl]                                      ; $5112: $86
    ld d, l                                       ; $5113: $55
    ld d, l                                       ; $5114: $55
    ld d, l                                       ; $5115: $55
    ld b, h                                       ; $5116: $44
    ld b, l                                       ; $5117: $45
    ld d, [hl]                                    ; $5118: $56
    ld h, [hl]                                    ; $5119: $66
    ld h, l                                       ; $511a: $65
    ld d, [hl]                                    ; $511b: $56
    ld h, [hl]                                    ; $511c: $66
    ld d, l                                       ; $511d: $55
    ld d, [hl]                                    ; $511e: $56
    ld h, a                                       ; $511f: $67
    add a                                         ; $5120: $87
    adc c                                         ; $5121: $89
    xor e                                         ; $5122: $ab
    cp e                                          ; $5123: $bb
    xor c                                         ; $5124: $a9
    sbc c                                         ; $5125: $99
    xor d                                         ; $5126: $aa
    sbc b                                         ; $5127: $98
    adc c                                         ; $5128: $89
    sbc d                                         ; $5129: $9a
    xor c                                         ; $512a: $a9
    adc b                                         ; $512b: $88
    adc c                                         ; $512c: $89
    sbc c                                         ; $512d: $99
    add a                                         ; $512e: $87
    ld [hl], a                                    ; $512f: $77
    add [hl]                                      ; $5130: $86
    ld d, h                                       ; $5131: $54
    ld d, l                                       ; $5132: $55
    ld h, [hl]                                    ; $5133: $66
    ld d, l                                       ; $5134: $55
    ld d, [hl]                                    ; $5135: $56
    ld [hl], a                                    ; $5136: $77
    ld h, [hl]                                    ; $5137: $66
    ld h, [hl]                                    ; $5138: $66
    ld h, [hl]                                    ; $5139: $66
    ld h, [hl]                                    ; $513a: $66
    ld h, [hl]                                    ; $513b: $66
    ld h, [hl]                                    ; $513c: $66
    ld a, b                                       ; $513d: $78
    adc b                                         ; $513e: $88
    sbc d                                         ; $513f: $9a
    xor d                                         ; $5140: $aa
    cp e                                          ; $5141: $bb
    xor d                                         ; $5142: $aa
    sbc c                                         ; $5143: $99
    sbc c                                         ; $5144: $99
    sbc c                                         ; $5145: $99
    sbc c                                         ; $5146: $99
    sbc b                                         ; $5147: $98
    ld [hl], a                                    ; $5148: $77
    adc b                                         ; $5149: $88
    adc b                                         ; $514a: $88
    add a                                         ; $514b: $87
    ld h, [hl]                                    ; $514c: $66
    ld h, [hl]                                    ; $514d: $66
    ld h, [hl]                                    ; $514e: $66
    ld d, l                                       ; $514f: $55
    ld h, a                                       ; $5150: $67
    add a                                         ; $5151: $87
    halt                                          ; $5152: $76
    ld h, [hl]                                    ; $5153: $66
    ld h, [hl]                                    ; $5154: $66
    ld h, [hl]                                    ; $5155: $66
    ld h, l                                       ; $5156: $65
    ld d, l                                       ; $5157: $55
    ld d, l                                       ; $5158: $55
    ld d, [hl]                                    ; $5159: $56
    ld a, c                                       ; $515a: $79
    xor e                                         ; $515b: $ab
    cp d                                          ; $515c: $ba
    xor d                                         ; $515d: $aa
    xor d                                         ; $515e: $aa
    sbc b                                         ; $515f: $98
    add [hl]                                      ; $5160: $86
    ld h, [hl]                                    ; $5161: $66
    ld a, b                                       ; $5162: $78
    sbc c                                         ; $5163: $99
    add a                                         ; $5164: $87
    adc d                                         ; $5165: $8a
    cp e                                          ; $5166: $bb
    xor b                                         ; $5167: $a8
    ld a, b                                       ; $5168: $78
    sbc b                                         ; $5169: $98
    add [hl]                                      ; $516a: $86
    ld h, l                                       ; $516b: $65
    ld d, [hl]                                    ; $516c: $56
    ld h, [hl]                                    ; $516d: $66
    ld h, l                                       ; $516e: $65
    ld h, a                                       ; $516f: $67
    adc b                                         ; $5170: $88
    adc b                                         ; $5171: $88
    adc b                                         ; $5172: $88
    adc b                                         ; $5173: $88
    add a                                         ; $5174: $87
    ld [hl], l                                    ; $5175: $75
    ld b, h                                       ; $5176: $44
    ld d, [hl]                                    ; $5177: $56
    ld h, [hl]                                    ; $5178: $66
    ld a, b                                       ; $5179: $78
    sbc d                                         ; $517a: $9a
    xor c                                         ; $517b: $a9
    sbc c                                         ; $517c: $99
    adc b                                         ; $517d: $88
    ld [hl], a                                    ; $517e: $77
    ld [hl], a                                    ; $517f: $77
    adc c                                         ; $5180: $89
    sbc c                                         ; $5181: $99
    adc b                                         ; $5182: $88
    sbc d                                         ; $5183: $9a
    cp e                                          ; $5184: $bb
    cp c                                          ; $5185: $b9
    adc b                                         ; $5186: $88
    adc b                                         ; $5187: $88
    add a                                         ; $5188: $87
    ld h, l                                       ; $5189: $65
    ld h, [hl]                                    ; $518a: $66
    ld [hl], a                                    ; $518b: $77
    ld [hl], a                                    ; $518c: $77
    ld [hl], a                                    ; $518d: $77
    adc c                                         ; $518e: $89
    sbc b                                         ; $518f: $98
    add a                                         ; $5190: $87
    ld [hl], a                                    ; $5191: $77
    ld d, h                                       ; $5192: $54
    ld b, l                                       ; $5193: $45
    ld h, [hl]                                    ; $5194: $66
    ld d, h                                       ; $5195: $54
    ld b, l                                       ; $5196: $45
    ld h, a                                       ; $5197: $67
    adc b                                         ; $5198: $88
    adc b                                         ; $5199: $88
    adc c                                         ; $519a: $89
    xor d                                         ; $519b: $aa
    sbc b                                         ; $519c: $98
    ld [hl], a                                    ; $519d: $77
    ld a, b                                       ; $519e: $78
    adc b                                         ; $519f: $88
    sbc c                                         ; $51a0: $99
    xor e                                         ; $51a1: $ab
    xor c                                         ; $51a2: $a9
    sbc d                                         ; $51a3: $9a
    cp e                                          ; $51a4: $bb
    xor c                                         ; $51a5: $a9
    adc c                                         ; $51a6: $89
    sbc b                                         ; $51a7: $98
    halt                                          ; $51a8: $76
    ld d, l                                       ; $51a9: $55
    ld d, l                                       ; $51aa: $55
    ld d, l                                       ; $51ab: $55
    ld h, [hl]                                    ; $51ac: $66
    ld d, l                                       ; $51ad: $55
    ld d, l                                       ; $51ae: $55
    ld h, a                                       ; $51af: $67
    ld h, l                                       ; $51b0: $65
    ld b, h                                       ; $51b1: $44
    ld b, l                                       ; $51b2: $45
    ld h, a                                       ; $51b3: $67
    halt                                          ; $51b4: $76
    ld h, a                                       ; $51b5: $67
    adc c                                         ; $51b6: $89
    sbc c                                         ; $51b7: $99
    adc b                                         ; $51b8: $88
    sbc c                                         ; $51b9: $99
    xor d                                         ; $51ba: $aa
    xor d                                         ; $51bb: $aa
    sbc c                                         ; $51bc: $99
    xor d                                         ; $51bd: $aa
    cp e                                          ; $51be: $bb
    xor c                                         ; $51bf: $a9
    sbc c                                         ; $51c0: $99
    sbc c                                         ; $51c1: $99
    sbc b                                         ; $51c2: $98
    add a                                         ; $51c3: $87
    ld h, [hl]                                    ; $51c4: $66
    ld h, a                                       ; $51c5: $67
    halt                                          ; $51c6: $76
    ld d, l                                       ; $51c7: $55
    ld h, [hl]                                    ; $51c8: $66
    ld h, l                                       ; $51c9: $65
    ld d, l                                       ; $51ca: $55
    ld h, l                                       ; $51cb: $65
    ld b, h                                       ; $51cc: $44
    ld b, l                                       ; $51cd: $45
    ld h, [hl]                                    ; $51ce: $66
    ld h, [hl]                                    ; $51cf: $66
    ld h, [hl]                                    ; $51d0: $66
    ld [hl], a                                    ; $51d1: $77
    adc b                                         ; $51d2: $88
    adc c                                         ; $51d3: $89
    xor c                                         ; $51d4: $a9
    adc b                                         ; $51d5: $88
    sbc d                                         ; $51d6: $9a
    xor d                                         ; $51d7: $aa
    xor c                                         ; $51d8: $a9
    sbc d                                         ; $51d9: $9a
    xor e                                         ; $51da: $ab
    cp d                                          ; $51db: $ba
    xor d                                         ; $51dc: $aa
    xor c                                         ; $51dd: $a9
    add a                                         ; $51de: $87
    ld [hl], a                                    ; $51df: $77
    add a                                         ; $51e0: $87
    ld h, [hl]                                    ; $51e1: $66
    ld h, [hl]                                    ; $51e2: $66
    ld h, l                                       ; $51e3: $65
    ld d, [hl]                                    ; $51e4: $56
    ld [hl], a                                    ; $51e5: $77
    halt                                          ; $51e6: $76
    ld h, l                                       ; $51e7: $65
    ld h, a                                       ; $51e8: $67
    halt                                          ; $51e9: $76
    ld d, h                                       ; $51ea: $54
    ld b, l                                       ; $51eb: $45
    ld h, [hl]                                    ; $51ec: $66
    ld d, l                                       ; $51ed: $55
    ld a, b                                       ; $51ee: $78
    sbc c                                         ; $51ef: $99
    sbc d                                         ; $51f0: $9a
    xor c                                         ; $51f1: $a9
    sbc b                                         ; $51f2: $98
    adc c                                         ; $51f3: $89
    adc b                                         ; $51f4: $88
    ld a, b                                       ; $51f5: $78
    adc c                                         ; $51f6: $89
    sbc c                                         ; $51f7: $99
    sbc c                                         ; $51f8: $99
    xor d                                         ; $51f9: $aa
    xor d                                         ; $51fa: $aa
    xor d                                         ; $51fb: $aa
    sbc c                                         ; $51fc: $99
    add a                                         ; $51fd: $87
    ld d, h                                       ; $51fe: $54
    ld d, l                                       ; $51ff: $55
    ld h, [hl]                                    ; $5200: $66
    ld d, l                                       ; $5201: $55
    ld h, a                                       ; $5202: $67
    adc b                                         ; $5203: $88
    adc b                                         ; $5204: $88
    sbc d                                         ; $5205: $9a
    sbc b                                         ; $5206: $98
    ld h, [hl]                                    ; $5207: $66
    ld h, [hl]                                    ; $5208: $66
    ld h, l                                       ; $5209: $65
    ld d, h                                       ; $520a: $54
    ld d, [hl]                                    ; $520b: $56
    ld a, b                                       ; $520c: $78
    adc b                                         ; $520d: $88
    sbc d                                         ; $520e: $9a
    xor d                                         ; $520f: $aa
    sbc b                                         ; $5210: $98
    add a                                         ; $5211: $87
    halt                                          ; $5212: $76
    ld h, [hl]                                    ; $5213: $66
    ld d, l                                       ; $5214: $55
    ld h, [hl]                                    ; $5215: $66
    ld a, b                                       ; $5216: $78
    sbc c                                         ; $5217: $99
    xor d                                         ; $5218: $aa
    xor d                                         ; $5219: $aa
    xor d                                         ; $521a: $aa
    sbc b                                         ; $521b: $98
    halt                                          ; $521c: $76
    ld h, [hl]                                    ; $521d: $66
    ld h, a                                       ; $521e: $67
    ld a, b                                       ; $521f: $78
    adc b                                         ; $5220: $88
    adc b                                         ; $5221: $88
    sbc c                                         ; $5222: $99
    xor d                                         ; $5223: $aa
    xor d                                         ; $5224: $aa
    sbc b                                         ; $5225: $98
    halt                                          ; $5226: $76
    ld h, [hl]                                    ; $5227: $66
    ld h, l                                       ; $5228: $65
    ld d, l                                       ; $5229: $55
    ld d, [hl]                                    ; $522a: $56
    ld h, a                                       ; $522b: $67
    ld a, b                                       ; $522c: $78
    adc b                                         ; $522d: $88
    add a                                         ; $522e: $87
    ld [hl], a                                    ; $522f: $77
    add a                                         ; $5230: $87
    halt                                          ; $5231: $76
    ld d, h                                       ; $5232: $54
    ld d, a                                       ; $5233: $57
    adc b                                         ; $5234: $88
    adc b                                         ; $5235: $88
    adc c                                         ; $5236: $89
    xor d                                         ; $5237: $aa
    sbc c                                         ; $5238: $99
    sbc b                                         ; $5239: $98
    adc b                                         ; $523a: $88
    add a                                         ; $523b: $87
    ld [hl], a                                    ; $523c: $77
    ld [hl], a                                    ; $523d: $77
    adc b                                         ; $523e: $88
    sbc c                                         ; $523f: $99
    xor d                                         ; $5240: $aa
    xor d                                         ; $5241: $aa
    xor c                                         ; $5242: $a9
    adc b                                         ; $5243: $88
    ld [hl], a                                    ; $5244: $77
    halt                                          ; $5245: $76
    ld d, l                                       ; $5246: $55
    ld d, l                                       ; $5247: $55
    ld d, [hl]                                    ; $5248: $56
    ld [hl], a                                    ; $5249: $77
    adc b                                         ; $524a: $88
    adc b                                         ; $524b: $88
    adc b                                         ; $524c: $88
    halt                                          ; $524d: $76
    ld h, [hl]                                    ; $524e: $66
    ld h, [hl]                                    ; $524f: $66
    ld d, l                                       ; $5250: $55
    ld d, [hl]                                    ; $5251: $56
    ld h, [hl]                                    ; $5252: $66
    ld [hl], a                                    ; $5253: $77
    adc d                                         ; $5254: $8a
    xor d                                         ; $5255: $aa
    sbc d                                         ; $5256: $9a
    xor d                                         ; $5257: $aa
    xor c                                         ; $5258: $a9
    adc b                                         ; $5259: $88
    adc b                                         ; $525a: $88
    add a                                         ; $525b: $87
    ld h, [hl]                                    ; $525c: $66
    ld a, b                                       ; $525d: $78
    sbc c                                         ; $525e: $99
    sbc d                                         ; $525f: $9a
    xor d                                         ; $5260: $aa
    xor c                                         ; $5261: $a9
    add a                                         ; $5262: $87
    ld h, [hl]                                    ; $5263: $66
    ld h, [hl]                                    ; $5264: $66
    ld h, [hl]                                    ; $5265: $66
    ld d, l                                       ; $5266: $55
    ld d, [hl]                                    ; $5267: $56
    ld [hl], a                                    ; $5268: $77
    adc b                                         ; $5269: $88
    adc b                                         ; $526a: $88
    add a                                         ; $526b: $87
    ld [hl], a                                    ; $526c: $77
    ld [hl], a                                    ; $526d: $77
    ld h, l                                       ; $526e: $65
    ld d, l                                       ; $526f: $55
    ld h, [hl]                                    ; $5270: $66
    ld h, a                                       ; $5271: $67
    ld a, b                                       ; $5272: $78
    adc c                                         ; $5273: $89
    sbc d                                         ; $5274: $9a
    xor d                                         ; $5275: $aa
    xor d                                         ; $5276: $aa
    sbc b                                         ; $5277: $98
    adc b                                         ; $5278: $88
    adc b                                         ; $5279: $88
    add a                                         ; $527a: $87
    ld [hl], a                                    ; $527b: $77
    ld a, b                                       ; $527c: $78
    adc c                                         ; $527d: $89
    sbc c                                         ; $527e: $99
    sbc d                                         ; $527f: $9a
    xor d                                         ; $5280: $aa
    sbc b                                         ; $5281: $98
    ld [hl], a                                    ; $5282: $77
    ld h, [hl]                                    ; $5283: $66
    ld d, l                                       ; $5284: $55
    ld d, l                                       ; $5285: $55
    ld d, l                                       ; $5286: $55
    ld d, [hl]                                    ; $5287: $56
    ld h, a                                       ; $5288: $67
    adc b                                         ; $5289: $88
    adc b                                         ; $528a: $88
    ld a, b                                       ; $528b: $78
    adc b                                         ; $528c: $88
    halt                                          ; $528d: $76
    ld h, l                                       ; $528e: $65
    ld h, [hl]                                    ; $528f: $66
    ld h, [hl]                                    ; $5290: $66
    ld h, a                                       ; $5291: $67
    adc c                                         ; $5292: $89
    sbc c                                         ; $5293: $99
    sbc d                                         ; $5294: $9a
    xor d                                         ; $5295: $aa
    xor d                                         ; $5296: $aa
    sbc b                                         ; $5297: $98
    add a                                         ; $5298: $87
    ld [hl], a                                    ; $5299: $77
    add a                                         ; $529a: $87
    ld [hl], a                                    ; $529b: $77
    ld a, b                                       ; $529c: $78
    sbc c                                         ; $529d: $99
    sbc c                                         ; $529e: $99
    sbc c                                         ; $529f: $99
    sbc b                                         ; $52a0: $98
    ld [hl], a                                    ; $52a1: $77
    ld [hl], a                                    ; $52a2: $77
    ld h, [hl]                                    ; $52a3: $66
    ld d, l                                       ; $52a4: $55
    ld d, [hl]                                    ; $52a5: $56
    ld h, [hl]                                    ; $52a6: $66
    ld h, a                                       ; $52a7: $67

Call_018_52a8:
    ld [hl], a                                    ; $52a8: $77
    ld a, b                                       ; $52a9: $78
    ld [hl], a                                    ; $52aa: $77
    add a                                         ; $52ab: $87
    halt                                          ; $52ac: $76
    ld h, [hl]                                    ; $52ad: $66
    ld h, [hl]                                    ; $52ae: $66
    ld h, [hl]                                    ; $52af: $66
    ld h, a                                       ; $52b0: $67
    adc b                                         ; $52b1: $88
    adc b                                         ; $52b2: $88
    sbc c                                         ; $52b3: $99
    xor d                                         ; $52b4: $aa
    sbc c                                         ; $52b5: $99
    adc b                                         ; $52b6: $88
    adc b                                         ; $52b7: $88
    ld [hl], a                                    ; $52b8: $77
    ld [hl], a                                    ; $52b9: $77
    adc b                                         ; $52ba: $88
    adc b                                         ; $52bb: $88
    sbc c                                         ; $52bc: $99
    sbc c                                         ; $52bd: $99
    sbc c                                         ; $52be: $99
    sbc c                                         ; $52bf: $99
    add a                                         ; $52c0: $87
    halt                                          ; $52c1: $76
    ld h, [hl]                                    ; $52c2: $66
    ld h, [hl]                                    ; $52c3: $66
    ld h, [hl]                                    ; $52c4: $66
    ld h, [hl]                                    ; $52c5: $66
    ld [hl], a                                    ; $52c6: $77
    ld [hl], a                                    ; $52c7: $77
    ld a, b                                       ; $52c8: $78
    adc b                                         ; $52c9: $88
    ld [hl], a                                    ; $52ca: $77
    ld [hl], a                                    ; $52cb: $77
    ld h, [hl]                                    ; $52cc: $66
    ld h, l                                       ; $52cd: $65
    ld d, l                                       ; $52ce: $55
    ld h, a                                       ; $52cf: $67
    adc b                                         ; $52d0: $88
    adc c                                         ; $52d1: $89
    sbc c                                         ; $52d2: $99
    sbc c                                         ; $52d3: $99
    sbc c                                         ; $52d4: $99
    sbc b                                         ; $52d5: $98
    adc b                                         ; $52d6: $88
    adc b                                         ; $52d7: $88
    adc b                                         ; $52d8: $88
    ld [hl], a                                    ; $52d9: $77
    ld a, b                                       ; $52da: $78
    adc c                                         ; $52db: $89
    sbc c                                         ; $52dc: $99
    sbc c                                         ; $52dd: $99
    sbc c                                         ; $52de: $99
    sbc b                                         ; $52df: $98
    add a                                         ; $52e0: $87
    ld [hl], a                                    ; $52e1: $77
    ld h, l                                       ; $52e2: $65
    ld d, l                                       ; $52e3: $55
    ld d, [hl]                                    ; $52e4: $56
    ld h, [hl]                                    ; $52e5: $66
    ld [hl], a                                    ; $52e6: $77
    ld a, b                                       ; $52e7: $78
    adc b                                         ; $52e8: $88
    add a                                         ; $52e9: $87
    ld [hl], a                                    ; $52ea: $77
    ld [hl], a                                    ; $52eb: $77
    ld h, [hl]                                    ; $52ec: $66
    ld h, [hl]                                    ; $52ed: $66
    ld h, [hl]                                    ; $52ee: $66
    ld [hl], a                                    ; $52ef: $77
    adc b                                         ; $52f0: $88
    sbc c                                         ; $52f1: $99
    xor d                                         ; $52f2: $aa
    xor d                                         ; $52f3: $aa
    sbc c                                         ; $52f4: $99
    sbc c                                         ; $52f5: $99
    sbc b                                         ; $52f6: $98
    adc b                                         ; $52f7: $88
    adc b                                         ; $52f8: $88
    adc b                                         ; $52f9: $88
    adc c                                         ; $52fa: $89
    sbc c                                         ; $52fb: $99
    adc b                                         ; $52fc: $88
    adc b                                         ; $52fd: $88
    adc b                                         ; $52fe: $88
    add a                                         ; $52ff: $87
    ld h, [hl]                                    ; $5300: $66
    ld d, l                                       ; $5301: $55
    ld d, l                                       ; $5302: $55
    ld d, l                                       ; $5303: $55
    ld d, l                                       ; $5304: $55
    ld h, a                                       ; $5305: $67
    ld [hl], a                                    ; $5306: $77
    ld [hl], a                                    ; $5307: $77
    adc b                                         ; $5308: $88
    adc b                                         ; $5309: $88
    add a                                         ; $530a: $87
    ld [hl], a                                    ; $530b: $77
    ld h, [hl]                                    ; $530c: $66
    ld h, [hl]                                    ; $530d: $66
    ld h, a                                       ; $530e: $67
    ld a, b                                       ; $530f: $78
    adc b                                         ; $5310: $88
    sbc c                                         ; $5311: $99
    xor d                                         ; $5312: $aa
    xor c                                         ; $5313: $a9
    sbc c                                         ; $5314: $99
    sbc c                                         ; $5315: $99
    adc b                                         ; $5316: $88
    ld [hl], a                                    ; $5317: $77
    ld [hl], a                                    ; $5318: $77
    ld [hl], a                                    ; $5319: $77
    ld [hl], a                                    ; $531a: $77
    adc b                                         ; $531b: $88
    adc b                                         ; $531c: $88
    adc b                                         ; $531d: $88
    adc b                                         ; $531e: $88
    add a                                         ; $531f: $87
    add [hl]                                      ; $5320: $86
    ld h, [hl]                                    ; $5321: $66
    ld h, [hl]                                    ; $5322: $66
    ld d, [hl]                                    ; $5323: $56
    ld h, a                                       ; $5324: $67
    ld [hl], a                                    ; $5325: $77
    ld [hl], a                                    ; $5326: $77
    ld a, b                                       ; $5327: $78
    adc b                                         ; $5328: $88
    add a                                         ; $5329: $87
    ld [hl], a                                    ; $532a: $77
    ld [hl], a                                    ; $532b: $77
    ld [hl], a                                    ; $532c: $77
    ld [hl], a                                    ; $532d: $77
    adc b                                         ; $532e: $88
    ld a, b                                       ; $532f: $78
    adc c                                         ; $5330: $89
    sbc c                                         ; $5331: $99
    sbc c                                         ; $5332: $99
    sbc c                                         ; $5333: $99
    sbc b                                         ; $5334: $98
    add a                                         ; $5335: $87
    ld [hl], a                                    ; $5336: $77
    ld [hl], a                                    ; $5337: $77
    ld [hl], a                                    ; $5338: $77
    ld [hl], a                                    ; $5339: $77
    adc b                                         ; $533a: $88
    adc b                                         ; $533b: $88
    adc b                                         ; $533c: $88
    sbc c                                         ; $533d: $99
    adc b                                         ; $533e: $88
    add a                                         ; $533f: $87
    ld h, [hl]                                    ; $5340: $66
    ld [hl], a                                    ; $5341: $77
    ld [hl], a                                    ; $5342: $77
    ld h, a                                       ; $5343: $67
    ld [hl], a                                    ; $5344: $77
    adc b                                         ; $5345: $88
    adc b                                         ; $5346: $88
    adc b                                         ; $5347: $88
    adc b                                         ; $5348: $88
    adc b                                         ; $5349: $88
    add a                                         ; $534a: $87
    ld a, b                                       ; $534b: $78
    adc b                                         ; $534c: $88
    ld [hl], a                                    ; $534d: $77
    ld [hl], a                                    ; $534e: $77
    ld [hl], a                                    ; $534f: $77
    ld h, [hl]                                    ; $5350: $66
    ld d, [hl]                                    ; $5351: $56
    ld [hl], a                                    ; $5352: $77
    adc b                                         ; $5353: $88
    ld [hl], a                                    ; $5354: $77
    ld [hl], a                                    ; $5355: $77
    ld a, b                                       ; $5356: $78
    adc b                                         ; $5357: $88
    adc b                                         ; $5358: $88
    ld [hl], a                                    ; $5359: $77
    ld h, a                                       ; $535a: $67
    ld a, b                                       ; $535b: $78
    add a                                         ; $535c: $87
    ld [hl], a                                    ; $535d: $77
    adc b                                         ; $535e: $88
    sbc c                                         ; $535f: $99
    sbc b                                         ; $5360: $98
    adc b                                         ; $5361: $88
    sbc d                                         ; $5362: $9a
    sbc c                                         ; $5363: $99
    adc c                                         ; $5364: $89
    sbc c                                         ; $5365: $99
    sbc b                                         ; $5366: $98
    adc b                                         ; $5367: $88
    adc b                                         ; $5368: $88
    add a                                         ; $5369: $87
    ld [hl], a                                    ; $536a: $77
    ld [hl], a                                    ; $536b: $77
    adc b                                         ; $536c: $88
    ld [hl], a                                    ; $536d: $77
    ld [hl], a                                    ; $536e: $77
    ld [hl], a                                    ; $536f: $77
    ld h, [hl]                                    ; $5370: $66
    ld d, [hl]                                    ; $5371: $56
    ld h, [hl]                                    ; $5372: $66
    ld [hl], a                                    ; $5373: $77
    halt                                          ; $5374: $76
    ld h, [hl]                                    ; $5375: $66
    ld h, a                                       ; $5376: $67
    add a                                         ; $5377: $87
    halt                                          ; $5378: $76
    ld [hl], a                                    ; $5379: $77
    add a                                         ; $537a: $87
    ld [hl], a                                    ; $537b: $77
    ld a, b                                       ; $537c: $78
    adc b                                         ; $537d: $88
    adc b                                         ; $537e: $88
    adc b                                         ; $537f: $88
    sbc c                                         ; $5380: $99
    sbc c                                         ; $5381: $99
    sbc c                                         ; $5382: $99
    sbc c                                         ; $5383: $99
    sbc c                                         ; $5384: $99
    adc b                                         ; $5385: $88

Jump_018_5386:
    adc b                                         ; $5386: $88
    add a                                         ; $5387: $87
    ld [hl], a                                    ; $5388: $77
    ld [hl], a                                    ; $5389: $77
    adc c                                         ; $538a: $89
    sbc b                                         ; $538b: $98
    adc b                                         ; $538c: $88
    adc c                                         ; $538d: $89
    sbc b                                         ; $538e: $98
    halt                                          ; $538f: $76
    ld h, [hl]                                    ; $5390: $66
    ld h, [hl]                                    ; $5391: $66
    ld h, [hl]                                    ; $5392: $66
    ld h, [hl]                                    ; $5393: $66
    ld [hl], a                                    ; $5394: $77
    ld a, b                                       ; $5395: $78
    adc b                                         ; $5396: $88
    adc b                                         ; $5397: $88
    add a                                         ; $5398: $87
    adc b                                         ; $5399: $88
    ld [hl], a                                    ; $539a: $77
    ld h, [hl]                                    ; $539b: $66
    ld h, [hl]                                    ; $539c: $66
    ld [hl], a                                    ; $539d: $77
    ld [hl], a                                    ; $539e: $77
    ld a, b                                       ; $539f: $78
    adc c                                         ; $53a0: $89
    sbc c                                         ; $53a1: $99
    sbc b                                         ; $53a2: $98
    adc b                                         ; $53a3: $88
    ld [hl], a                                    ; $53a4: $77
    ld [hl], a                                    ; $53a5: $77
    ld [hl], a                                    ; $53a6: $77
    ld [hl], a                                    ; $53a7: $77

Call_018_53a8:
    ld a, b                                       ; $53a8: $78
    adc b                                         ; $53a9: $88
    sbc c                                         ; $53aa: $99
    sbc c                                         ; $53ab: $99
    sbc c                                         ; $53ac: $99
    sbc b                                         ; $53ad: $98
    add a                                         ; $53ae: $87
    ld h, [hl]                                    ; $53af: $66
    ld h, [hl]                                    ; $53b0: $66
    ld h, a                                       ; $53b1: $67
    ld [hl], a                                    ; $53b2: $77
    ld [hl], a                                    ; $53b3: $77
    adc b                                         ; $53b4: $88
    adc c                                         ; $53b5: $89
    sbc c                                         ; $53b6: $99
    sbc b                                         ; $53b7: $98

Call_018_53b8:
    add a                                         ; $53b8: $87
    ld [hl], a                                    ; $53b9: $77
    ld [hl], a                                    ; $53ba: $77
    ld h, [hl]                                    ; $53bb: $66
    ld h, [hl]                                    ; $53bc: $66
    ld [hl], a                                    ; $53bd: $77
    adc b                                         ; $53be: $88
    adc b                                         ; $53bf: $88
    sbc c                                         ; $53c0: $99
    adc b                                         ; $53c1: $88
    add a                                         ; $53c2: $87
    ld [hl], a                                    ; $53c3: $77
    ld h, [hl]                                    ; $53c4: $66
    ld h, [hl]                                    ; $53c5: $66
    ld h, a                                       ; $53c6: $67
    ld a, b                                       ; $53c7: $78
    adc c                                         ; $53c8: $89
    sbc c                                         ; $53c9: $99
    sbc c                                         ; $53ca: $99
    sbc b                                         ; $53cb: $98
    add a                                         ; $53cc: $87
    ld [hl], a                                    ; $53cd: $77
    halt                                          ; $53ce: $76
    ld h, a                                       ; $53cf: $67
    add a                                         ; $53d0: $87
    ld a, b                                       ; $53d1: $78
    adc b                                         ; $53d2: $88
    adc c                                         ; $53d3: $89
    sbc c                                         ; $53d4: $99
    sbc c                                         ; $53d5: $99
    adc b                                         ; $53d6: $88
    add a                                         ; $53d7: $87
    ld [hl], a                                    ; $53d8: $77

Call_018_53d9:
    ld [hl], a                                    ; $53d9: $77
    ld [hl], a                                    ; $53da: $77
    ld [hl], a                                    ; $53db: $77
    ld [hl], a                                    ; $53dc: $77
    adc b                                         ; $53dd: $88
    adc b                                         ; $53de: $88
    adc b                                         ; $53df: $88
    adc b                                         ; $53e0: $88
    ld [hl], a                                    ; $53e1: $77
    ld [hl], a                                    ; $53e2: $77
    ld h, [hl]                                    ; $53e3: $66
    ld h, [hl]                                    ; $53e4: $66
    ld [hl], a                                    ; $53e5: $77
    ld [hl], a                                    ; $53e6: $77
    adc b                                         ; $53e7: $88
    sbc c                                         ; $53e8: $99
    sbc b                                         ; $53e9: $98
    adc b                                         ; $53ea: $88
    adc b                                         ; $53eb: $88
    ld [hl], a                                    ; $53ec: $77
    ld h, [hl]                                    ; $53ed: $66
    ld h, a                                       ; $53ee: $67
    ld [hl], a                                    ; $53ef: $77
    add a                                         ; $53f0: $87
    adc b                                         ; $53f1: $88
    sbc c                                         ; $53f2: $99
    sbc c                                         ; $53f3: $99
    sbc b                                         ; $53f4: $98
    adc b                                         ; $53f5: $88
    ld [hl], a                                    ; $53f6: $77
    ld [hl], a                                    ; $53f7: $77
    ld [hl], a                                    ; $53f8: $77
    ld [hl], a                                    ; $53f9: $77
    ld [hl], a                                    ; $53fa: $77
    adc b                                         ; $53fb: $88
    adc b                                         ; $53fc: $88
    adc b                                         ; $53fd: $88
    adc b                                         ; $53fe: $88
    adc b                                         ; $53ff: $88
    add a                                         ; $5400: $87
    ld h, [hl]                                    ; $5401: $66
    ld h, [hl]                                    ; $5402: $66
    ld h, [hl]                                    ; $5403: $66
    ld h, a                                       ; $5404: $67
    ld [hl], a                                    ; $5405: $77
    adc b                                         ; $5406: $88
    adc b                                         ; $5407: $88
    adc b                                         ; $5408: $88
    adc b                                         ; $5409: $88
    adc b                                         ; $540a: $88
    ld [hl], a                                    ; $540b: $77
    ld [hl], a                                    ; $540c: $77
    ld [hl], a                                    ; $540d: $77
    ld [hl], a                                    ; $540e: $77
    adc b                                         ; $540f: $88
    adc c                                         ; $5410: $89
    sbc c                                         ; $5411: $99
    sbc c                                         ; $5412: $99
    sbc b                                         ; $5413: $98
    adc b                                         ; $5414: $88
    add a                                         ; $5415: $87
    ld [hl], a                                    ; $5416: $77
    ld [hl], a                                    ; $5417: $77
    ld [hl], a                                    ; $5418: $77
    ld [hl], a                                    ; $5419: $77
    adc b                                         ; $541a: $88
    adc b                                         ; $541b: $88
    adc b                                         ; $541c: $88
    adc b                                         ; $541d: $88
    ld [hl], a                                    ; $541e: $77
    ld [hl], a                                    ; $541f: $77
    add [hl]                                      ; $5420: $86
    ld h, [hl]                                    ; $5421: $66
    ld h, a                                       ; $5422: $67
    ld [hl], a                                    ; $5423: $77
    ld a, b                                       ; $5424: $78
    adc b                                         ; $5425: $88
    adc b                                         ; $5426: $88
    adc b                                         ; $5427: $88
    adc b                                         ; $5428: $88
    add a                                         ; $5429: $87
    ld [hl], a                                    ; $542a: $77
    ld [hl], a                                    ; $542b: $77
    ld [hl], a                                    ; $542c: $77
    adc b                                         ; $542d: $88
    adc b                                         ; $542e: $88
    adc c                                         ; $542f: $89
    sbc c                                         ; $5430: $99
    sbc c                                         ; $5431: $99
    adc b                                         ; $5432: $88
    adc b                                         ; $5433: $88
    ld [hl], a                                    ; $5434: $77
    ld [hl], a                                    ; $5435: $77
    ld h, [hl]                                    ; $5436: $66
    ld [hl], a                                    ; $5437: $77
    ld a, b                                       ; $5438: $78
    adc b                                         ; $5439: $88
    adc b                                         ; $543a: $88
    adc b                                         ; $543b: $88
    add a                                         ; $543c: $87
    ld [hl], a                                    ; $543d: $77
    ld [hl], a                                    ; $543e: $77
    ld h, [hl]                                    ; $543f: $66
    ld h, [hl]                                    ; $5440: $66
    ld [hl], a                                    ; $5441: $77
    ld [hl], a                                    ; $5442: $77
    adc b                                         ; $5443: $88
    adc b                                         ; $5444: $88
    adc b                                         ; $5445: $88
    adc b                                         ; $5446: $88
    adc b                                         ; $5447: $88
    add a                                         ; $5448: $87
    ld [hl], a                                    ; $5449: $77
    ld [hl], a                                    ; $544a: $77
    ld a, b                                       ; $544b: $78
    adc b                                         ; $544c: $88
    adc b                                         ; $544d: $88
    adc b                                         ; $544e: $88
    sbc c                                         ; $544f: $99
    adc b                                         ; $5450: $88
    add a                                         ; $5451: $87
    ld [hl], a                                    ; $5452: $77
    halt                                          ; $5453: $76
    ld h, a                                       ; $5454: $67
    ld [hl], a                                    ; $5455: $77
    ld [hl], a                                    ; $5456: $77
    ld a, b                                       ; $5457: $78
    adc b                                         ; $5458: $88
    adc b                                         ; $5459: $88
    adc b                                         ; $545a: $88
    ld [hl], a                                    ; $545b: $77
    ld [hl], a                                    ; $545c: $77
    ld [hl], a                                    ; $545d: $77
    ld h, [hl]                                    ; $545e: $66
    ld h, a                                       ; $545f: $67
    adc b                                         ; $5460: $88
    adc b                                         ; $5461: $88
    adc b                                         ; $5462: $88
    adc c                                         ; $5463: $89
    sbc c                                         ; $5464: $99
    adc b                                         ; $5465: $88
    adc b                                         ; $5466: $88
    ld [hl], a                                    ; $5467: $77
    ld [hl], a                                    ; $5468: $77
    ld [hl], a                                    ; $5469: $77
    ld [hl], a                                    ; $546a: $77
    adc b                                         ; $546b: $88
    adc b                                         ; $546c: $88
    adc b                                         ; $546d: $88
    adc b                                         ; $546e: $88
    adc b                                         ; $546f: $88
    add a                                         ; $5470: $87
    ld [hl], a                                    ; $5471: $77
    ld h, [hl]                                    ; $5472: $66
    ld [hl], a                                    ; $5473: $77
    ld [hl], a                                    ; $5474: $77
    ld [hl], a                                    ; $5475: $77

Jump_018_5476:
    ld a, b                                       ; $5476: $78
    adc b                                         ; $5477: $88
    adc b                                         ; $5478: $88
    adc b                                         ; $5479: $88
    ld [hl], a                                    ; $547a: $77
    ld [hl], a                                    ; $547b: $77
    ld [hl], a                                    ; $547c: $77
    ld [hl], a                                    ; $547d: $77
    ld [hl], a                                    ; $547e: $77
    ld [hl], a                                    ; $547f: $77
    adc b                                         ; $5480: $88
    adc b                                         ; $5481: $88
    adc b                                         ; $5482: $88
    adc b                                         ; $5483: $88
    adc b                                         ; $5484: $88
    add a                                         ; $5485: $87
    ld [hl], a                                    ; $5486: $77
    ld [hl], a                                    ; $5487: $77
    adc b                                         ; $5488: $88
    adc b                                         ; $5489: $88
    adc b                                         ; $548a: $88
    sbc b                                         ; $548b: $98
    adc b                                         ; $548c: $88
    adc b                                         ; $548d: $88
    add a                                         ; $548e: $87
    ld [hl], a                                    ; $548f: $77
    add a                                         ; $5490: $87
    ld [hl], a                                    ; $5491: $77
    ld [hl], a                                    ; $5492: $77
    ld [hl], a                                    ; $5493: $77
    ld [hl], a                                    ; $5494: $77
    adc b                                         ; $5495: $88
    add a                                         ; $5496: $87
    ld [hl], a                                    ; $5497: $77
    ld [hl], a                                    ; $5498: $77
    ld [hl], a                                    ; $5499: $77
    ld [hl], a                                    ; $549a: $77
    ld [hl], a                                    ; $549b: $77
    ld [hl], a                                    ; $549c: $77
    ld a, b                                       ; $549d: $78
    adc b                                         ; $549e: $88
    adc b                                         ; $549f: $88
    adc b                                         ; $54a0: $88
    adc b                                         ; $54a1: $88
    adc b                                         ; $54a2: $88
    ld [hl], a                                    ; $54a3: $77
    ld [hl], a                                    ; $54a4: $77
    ld a, b                                       ; $54a5: $78

Call_018_54a6:
    adc b                                         ; $54a6: $88

Call_018_54a7:
    adc b                                         ; $54a7: $88
    adc b                                         ; $54a8: $88
    adc b                                         ; $54a9: $88
    adc b                                         ; $54aa: $88
    adc b                                         ; $54ab: $88
    add a                                         ; $54ac: $87
    ld [hl], a                                    ; $54ad: $77
    ld [hl], a                                    ; $54ae: $77
    ld [hl], a                                    ; $54af: $77
    add a                                         ; $54b0: $87
    ld a, b                                       ; $54b1: $78
    adc b                                         ; $54b2: $88
    ld [hl], a                                    ; $54b3: $77
    ld [hl], a                                    ; $54b4: $77
    ld [hl], a                                    ; $54b5: $77
    ld [hl], a                                    ; $54b6: $77

Call_018_54b7:
    ld [hl], a                                    ; $54b7: $77
    ld [hl], a                                    ; $54b8: $77
    ld [hl], a                                    ; $54b9: $77
    ld [hl], a                                    ; $54ba: $77
    ld a, b                                       ; $54bb: $78
    adc b                                         ; $54bc: $88
    adc b                                         ; $54bd: $88
    adc b                                         ; $54be: $88
    adc b                                         ; $54bf: $88
    adc b                                         ; $54c0: $88
    adc b                                         ; $54c1: $88
    add a                                         ; $54c2: $87
    ld [hl], a                                    ; $54c3: $77
    ld a, b                                       ; $54c4: $78
    adc b                                         ; $54c5: $88
    adc b                                         ; $54c6: $88
    adc b                                         ; $54c7: $88
    adc b                                         ; $54c8: $88
    adc b                                         ; $54c9: $88
    add a                                         ; $54ca: $87
    ld [hl], a                                    ; $54cb: $77
    ld [hl], a                                    ; $54cc: $77
    ld [hl], a                                    ; $54cd: $77
    ld [hl], a                                    ; $54ce: $77
    ld [hl], a                                    ; $54cf: $77
    add a                                         ; $54d0: $87
    ld [hl], a                                    ; $54d1: $77
    ld [hl], a                                    ; $54d2: $77
    ld [hl], a                                    ; $54d3: $77
    ld [hl], a                                    ; $54d4: $77
    ld [hl], a                                    ; $54d5: $77
    ld [hl], a                                    ; $54d6: $77
    ld [hl], a                                    ; $54d7: $77
    ld a, b                                       ; $54d8: $78
    adc b                                         ; $54d9: $88
    adc b                                         ; $54da: $88
    adc b                                         ; $54db: $88
    adc b                                         ; $54dc: $88
    adc b                                         ; $54dd: $88
    add a                                         ; $54de: $87
    ld [hl], a                                    ; $54df: $77
    add a                                         ; $54e0: $87
    ld [hl], a                                    ; $54e1: $77
    adc b                                         ; $54e2: $88
    adc b                                         ; $54e3: $88
    adc b                                         ; $54e4: $88
    adc b                                         ; $54e5: $88
    adc b                                         ; $54e6: $88
    ld [hl], a                                    ; $54e7: $77
    ld [hl], a                                    ; $54e8: $77
    ld [hl], a                                    ; $54e9: $77
    ld [hl], a                                    ; $54ea: $77
    ld [hl], a                                    ; $54eb: $77
    ld [hl], a                                    ; $54ec: $77
    ld [hl], a                                    ; $54ed: $77
    adc b                                         ; $54ee: $88
    adc b                                         ; $54ef: $88
    adc b                                         ; $54f0: $88
    add a                                         ; $54f1: $87
    ld [hl], a                                    ; $54f2: $77
    ld [hl], a                                    ; $54f3: $77
    ld [hl], a                                    ; $54f4: $77
    ld [hl], a                                    ; $54f5: $77
    ld a, b                                       ; $54f6: $78
    adc b                                         ; $54f7: $88
    adc b                                         ; $54f8: $88
    adc b                                         ; $54f9: $88
    adc b                                         ; $54fa: $88
    adc b                                         ; $54fb: $88
    add a                                         ; $54fc: $87
    ld [hl], a                                    ; $54fd: $77
    ld [hl], a                                    ; $54fe: $77
    ld [hl], a                                    ; $54ff: $77
    add a                                         ; $5500: $87
    ld a, b                                       ; $5501: $78
    adc b                                         ; $5502: $88
    adc b                                         ; $5503: $88
    adc b                                         ; $5504: $88
    ld [hl], a                                    ; $5505: $77
    ld [hl], a                                    ; $5506: $77
    ld [hl], a                                    ; $5507: $77
    ld [hl], a                                    ; $5508: $77
    ld [hl], a                                    ; $5509: $77
    ld [hl], a                                    ; $550a: $77
    ld a, b                                       ; $550b: $78
    adc b                                         ; $550c: $88
    adc b                                         ; $550d: $88
    adc b                                         ; $550e: $88
    adc b                                         ; $550f: $88
    add a                                         ; $5510: $87
    ld [hl], a                                    ; $5511: $77
    ld [hl], a                                    ; $5512: $77
    ld [hl], a                                    ; $5513: $77
    adc b                                         ; $5514: $88
    adc b                                         ; $5515: $88
    adc b                                         ; $5516: $88
    adc b                                         ; $5517: $88
    adc b                                         ; $5518: $88
    adc b                                         ; $5519: $88
    ld [hl], a                                    ; $551a: $77
    ld [hl], a                                    ; $551b: $77
    ld [hl], a                                    ; $551c: $77
    ld [hl], a                                    ; $551d: $77
    ld [hl], a                                    ; $551e: $77
    ld a, b                                       ; $551f: $78
    adc b                                         ; $5520: $88
    adc b                                         ; $5521: $88
    adc b                                         ; $5522: $88
    adc b                                         ; $5523: $88
    ld [hl], a                                    ; $5524: $77
    ld [hl], a                                    ; $5525: $77
    ld [hl], a                                    ; $5526: $77
    ld [hl], a                                    ; $5527: $77
    ld [hl], a                                    ; $5528: $77
    ld a, b                                       ; $5529: $78
    adc b                                         ; $552a: $88
    adc b                                         ; $552b: $88
    adc b                                         ; $552c: $88
    adc b                                         ; $552d: $88
    add a                                         ; $552e: $87
    ld [hl], a                                    ; $552f: $77
    add a                                         ; $5530: $87
    ld [hl], a                                    ; $5531: $77
    ld [hl], a                                    ; $5532: $77
    ld a, b                                       ; $5533: $78
    adc b                                         ; $5534: $88
    adc b                                         ; $5535: $88
    adc b                                         ; $5536: $88
    adc b                                         ; $5537: $88
    ld [hl], a                                    ; $5538: $77
    ld [hl], a                                    ; $5539: $77
    ld [hl], a                                    ; $553a: $77
    ld [hl], a                                    ; $553b: $77
    ld [hl], a                                    ; $553c: $77
    adc b                                         ; $553d: $88
    adc b                                         ; $553e: $88
    adc b                                         ; $553f: $88
    adc b                                         ; $5540: $88
    adc b                                         ; $5541: $88
    ld [hl], a                                    ; $5542: $77
    ld [hl], a                                    ; $5543: $77
    ld [hl], a                                    ; $5544: $77
    ld [hl], a                                    ; $5545: $77
    ld [hl], a                                    ; $5546: $77
    adc b                                         ; $5547: $88
    adc b                                         ; $5548: $88
    adc b                                         ; $5549: $88
    adc b                                         ; $554a: $88
    add a                                         ; $554b: $87
    ld [hl], a                                    ; $554c: $77
    ld [hl], a                                    ; $554d: $77
    ld [hl], a                                    ; $554e: $77
    ld [hl], a                                    ; $554f: $77
    add a                                         ; $5550: $87
    adc b                                         ; $5551: $88
    adc b                                         ; $5552: $88
    adc b                                         ; $5553: $88

Jump_018_5554:
    adc b                                         ; $5554: $88
    adc b                                         ; $5555: $88
    ld [hl], a                                    ; $5556: $77
    ld [hl], a                                    ; $5557: $77
    ld [hl], a                                    ; $5558: $77
    ld [hl], a                                    ; $5559: $77
    ld a, b                                       ; $555a: $78
    adc b                                         ; $555b: $88
    adc b                                         ; $555c: $88
    adc b                                         ; $555d: $88
    adc b                                         ; $555e: $88
    adc b                                         ; $555f: $88
    adc b                                         ; $5560: $88
    ld [hl], a                                    ; $5561: $77
    ld [hl], a                                    ; $5562: $77
    ld [hl], a                                    ; $5563: $77
    ld [hl], a                                    ; $5564: $77
    ld a, b                                       ; $5565: $78
    adc b                                         ; $5566: $88
    adc b                                         ; $5567: $88
    adc b                                         ; $5568: $88
    ld [hl], a                                    ; $5569: $77
    ld [hl], a                                    ; $556a: $77
    ld [hl], a                                    ; $556b: $77
    ld [hl], a                                    ; $556c: $77
    ld [hl], a                                    ; $556d: $77
    ld [hl], a                                    ; $556e: $77
    ld [hl], a                                    ; $556f: $77
    adc b                                         ; $5570: $88
    adc b                                         ; $5571: $88
    adc b                                         ; $5572: $88
    adc b                                         ; $5573: $88
    adc b                                         ; $5574: $88
    adc b                                         ; $5575: $88
    ld a, b                                       ; $5576: $78
    adc b                                         ; $5577: $88
    add a                                         ; $5578: $87
    ld a, b                                       ; $5579: $78
    adc b                                         ; $557a: $88
    adc b                                         ; $557b: $88
    adc b                                         ; $557c: $88
    adc b                                         ; $557d: $88
    adc b                                         ; $557e: $88
    adc b                                         ; $557f: $88
    adc b                                         ; $5580: $88
    ld [hl], a                                    ; $5581: $77
    ld [hl], a                                    ; $5582: $77
    ld [hl], a                                    ; $5583: $77
    ld [hl], a                                    ; $5584: $77
    ld [hl], a                                    ; $5585: $77
    ld [hl], a                                    ; $5586: $77
    ld [hl], a                                    ; $5587: $77
    ld [hl], a                                    ; $5588: $77
    ld [hl], a                                    ; $5589: $77
    ld [hl], a                                    ; $558a: $77
    ld [hl], a                                    ; $558b: $77
    ld [hl], a                                    ; $558c: $77
    ld [hl], a                                    ; $558d: $77
    ld a, b                                       ; $558e: $78
    adc b                                         ; $558f: $88
    add a                                         ; $5590: $87
    adc b                                         ; $5591: $88
    adc b                                         ; $5592: $88
    adc b                                         ; $5593: $88
    adc b                                         ; $5594: $88
    adc b                                         ; $5595: $88
    adc b                                         ; $5596: $88
    adc b                                         ; $5597: $88
    adc b                                         ; $5598: $88
    adc b                                         ; $5599: $88
    adc b                                         ; $559a: $88
    adc b                                         ; $559b: $88
    adc b                                         ; $559c: $88
    adc b                                         ; $559d: $88
    add a                                         ; $559e: $87
    ld [hl], a                                    ; $559f: $77
    add a                                         ; $55a0: $87
    ld [hl], a                                    ; $55a1: $77
    ld [hl], a                                    ; $55a2: $77
    ld [hl], a                                    ; $55a3: $77
    ld [hl], a                                    ; $55a4: $77
    ld [hl], a                                    ; $55a5: $77
    ld [hl], a                                    ; $55a6: $77

Call_018_55a7:
    ld [hl], a                                    ; $55a7: $77
    ld [hl], a                                    ; $55a8: $77
    ld [hl], a                                    ; $55a9: $77
    ld [hl], a                                    ; $55aa: $77
    ld [hl], a                                    ; $55ab: $77
    ld [hl], a                                    ; $55ac: $77
    add a                                         ; $55ad: $87
    ld [hl], a                                    ; $55ae: $77
    adc b                                         ; $55af: $88
    adc b                                         ; $55b0: $88
    adc b                                         ; $55b1: $88
    adc b                                         ; $55b2: $88
    adc b                                         ; $55b3: $88
    adc b                                         ; $55b4: $88
    adc b                                         ; $55b5: $88
    adc b                                         ; $55b6: $88
    adc b                                         ; $55b7: $88
    adc b                                         ; $55b8: $88
    adc b                                         ; $55b9: $88
    add a                                         ; $55ba: $87
    ld [hl], a                                    ; $55bb: $77
    ld [hl], a                                    ; $55bc: $77
    ld a, b                                       ; $55bd: $78
    ld [hl], a                                    ; $55be: $77
    adc b                                         ; $55bf: $88
    adc b                                         ; $55c0: $88
    add a                                         ; $55c1: $87
    ld [hl], a                                    ; $55c2: $77
    ld [hl], a                                    ; $55c3: $77
    ld [hl], a                                    ; $55c4: $77
    ld [hl], a                                    ; $55c5: $77
    ld [hl], a                                    ; $55c6: $77
    ld [hl], a                                    ; $55c7: $77
    ld [hl], a                                    ; $55c8: $77
    ld [hl], a                                    ; $55c9: $77
    ld [hl], a                                    ; $55ca: $77
    ld [hl], a                                    ; $55cb: $77
    ld [hl], a                                    ; $55cc: $77
    adc b                                         ; $55cd: $88
    adc b                                         ; $55ce: $88
    adc b                                         ; $55cf: $88
    adc b                                         ; $55d0: $88
    adc b                                         ; $55d1: $88
    adc b                                         ; $55d2: $88
    adc b                                         ; $55d3: $88
    adc b                                         ; $55d4: $88
    adc b                                         ; $55d5: $88
    adc b                                         ; $55d6: $88
    adc b                                         ; $55d7: $88
    adc b                                         ; $55d8: $88
    adc b                                         ; $55d9: $88
    adc b                                         ; $55da: $88
    adc b                                         ; $55db: $88
    adc b                                         ; $55dc: $88
    adc b                                         ; $55dd: $88
    adc b                                         ; $55de: $88
    adc b                                         ; $55df: $88
    add a                                         ; $55e0: $87
    ld a, b                                       ; $55e1: $78
    ld a, b                                       ; $55e2: $78
    ld a, b                                       ; $55e3: $78
    add a                                         ; $55e4: $87
    ld [hl], a                                    ; $55e5: $77
    ld [hl], a                                    ; $55e6: $77
    adc b                                         ; $55e7: $88
    ld [hl], a                                    ; $55e8: $77
    adc b                                         ; $55e9: $88
    adc b                                         ; $55ea: $88
    ld [hl], a                                    ; $55eb: $77
    ld [hl], a                                    ; $55ec: $77
    add a                                         ; $55ed: $87
    ld [hl], a                                    ; $55ee: $77
    add a                                         ; $55ef: $87
    adc b                                         ; $55f0: $88
    add a                                         ; $55f1: $87
    ld a, b                                       ; $55f2: $78
    ld a, b                                       ; $55f3: $78
    ld [hl], a                                    ; $55f4: $77
    ld [hl], a                                    ; $55f5: $77
    ld [hl], a                                    ; $55f6: $77
    ld [hl], a                                    ; $55f7: $77
    ld [hl], a                                    ; $55f8: $77
    ld [hl], a                                    ; $55f9: $77
    ld [hl], a                                    ; $55fa: $77
    ld [hl], a                                    ; $55fb: $77
    ld [hl], a                                    ; $55fc: $77
    ld [hl], a                                    ; $55fd: $77
    ld [hl], a                                    ; $55fe: $77
    ld [hl], a                                    ; $55ff: $77
    add a                                         ; $5600: $87
    ld [hl], a                                    ; $5601: $77
    ld [hl], a                                    ; $5602: $77
    ld [hl], a                                    ; $5603: $77
    ld [hl], a                                    ; $5604: $77
    ld [hl], a                                    ; $5605: $77
    ld a, b                                       ; $5606: $78
    ld [hl], a                                    ; $5607: $77
    ld [hl], a                                    ; $5608: $77
    add a                                         ; $5609: $87
    ld [hl], a                                    ; $560a: $77
    ld [hl], a                                    ; $560b: $77
    ld [hl], a                                    ; $560c: $77
    adc b                                         ; $560d: $88
    ld [hl], a                                    ; $560e: $77
    ld [hl], a                                    ; $560f: $77
    add a                                         ; $5610: $87
    ld [hl], a                                    ; $5611: $77
    ld [hl], a                                    ; $5612: $77
    ld [hl], a                                    ; $5613: $77
    ld [hl], a                                    ; $5614: $77
    add a                                         ; $5615: $87
    ld [hl], a                                    ; $5616: $77
    ld [hl], a                                    ; $5617: $77
    ld [hl], a                                    ; $5618: $77
    ld [hl], a                                    ; $5619: $77
    ld [hl], a                                    ; $561a: $77
    ld [hl], a                                    ; $561b: $77
    ld [hl], a                                    ; $561c: $77
    ld [hl], a                                    ; $561d: $77
    ld [hl], a                                    ; $561e: $77
    ld [hl], a                                    ; $561f: $77
    add a                                         ; $5620: $87
    ld [hl], a                                    ; $5621: $77

Jump_018_5622:
    ld [hl], a                                    ; $5622: $77
    ld [hl], a                                    ; $5623: $77
    ld [hl], a                                    ; $5624: $77
    ld [hl], a                                    ; $5625: $77
    ld [hl], a                                    ; $5626: $77
    ld [hl], a                                    ; $5627: $77
    ld [hl], a                                    ; $5628: $77
    ld [hl], a                                    ; $5629: $77
    ld [hl], a                                    ; $562a: $77
    add a                                         ; $562b: $87
    ld [hl], a                                    ; $562c: $77
    ld [hl], a                                    ; $562d: $77
    ld [hl], a                                    ; $562e: $77
    ld a, b                                       ; $562f: $78
    adc b                                         ; $5630: $88
    ld [hl], a                                    ; $5631: $77
    ld [hl], a                                    ; $5632: $77
    ld [hl], a                                    ; $5633: $77
    adc b                                         ; $5634: $88
    ld [hl], a                                    ; $5635: $77
    ld [hl], a                                    ; $5636: $77
    ld [hl], a                                    ; $5637: $77
    ld [hl], a                                    ; $5638: $77
    adc b                                         ; $5639: $88
    add a                                         ; $563a: $87
    ld [hl], a                                    ; $563b: $77
    ld a, b                                       ; $563c: $78
    adc b                                         ; $563d: $88
    adc b                                         ; $563e: $88
    adc b                                         ; $563f: $88
    add a                                         ; $5640: $87
    adc b                                         ; $5641: $88
    adc b                                         ; $5642: $88
    add a                                         ; $5643: $87
    adc c                                         ; $5644: $89
    add a                                         ; $5645: $87
    add a                                         ; $5646: $87
    adc c                                         ; $5647: $89
    adc b                                         ; $5648: $88
    adc b                                         ; $5649: $88
    adc b                                         ; $564a: $88
    add a                                         ; $564b: $87
    sbc b                                         ; $564c: $98
    adc c                                         ; $564d: $89
    sbc b                                         ; $564e: $98
    adc b                                         ; $564f: $88
    sbc b                                         ; $5650: $98
    adc c                                         ; $5651: $89
    adc c                                         ; $5652: $89
    sbc b                                         ; $5653: $98
    adc b                                         ; $5654: $88
    adc b                                         ; $5655: $88
    sbc c                                         ; $5656: $99
    sbc c                                         ; $5657: $99
    adc b                                         ; $5658: $88
    adc b                                         ; $5659: $88
    adc c                                         ; $565a: $89
    sbc c                                         ; $565b: $99
    sbc b                                         ; $565c: $98
    adc c                                         ; $565d: $89
    sbc c                                         ; $565e: $99
    sbc c                                         ; $565f: $99
    sbc c                                         ; $5660: $99
    adc c                                         ; $5661: $89
    xor c                                         ; $5662: $a9
    ld a, b                                       ; $5663: $78
    adc b                                         ; $5664: $88
    xor c                                         ; $5665: $a9
    sbc c                                         ; $5666: $99
    sbc c                                         ; $5667: $99
    adc b                                         ; $5668: $88
    adc c                                         ; $5669: $89
    sbc c                                         ; $566a: $99
    sbc d                                         ; $566b: $9a
    adc b                                         ; $566c: $88
    sbc c                                         ; $566d: $99
    adc b                                         ; $566e: $88
    xor d                                         ; $566f: $aa
    adc b                                         ; $5670: $88
    adc c                                         ; $5671: $89
    sbc b                                         ; $5672: $98
    adc d                                         ; $5673: $8a
    ld a, d                                       ; $5674: $7a
    xor b                                         ; $5675: $a8
    ld l, b                                       ; $5676: $68
    adc b                                         ; $5677: $88
    xor d                                         ; $5678: $aa
    sbc b                                         ; $5679: $98
    add a                                         ; $567a: $87
    sbc b                                         ; $567b: $98
    adc c                                         ; $567c: $89
    add a                                         ; $567d: $87
    xor e                                         ; $567e: $ab
    ld h, [hl]                                    ; $567f: $66
    add a                                         ; $5680: $87
    adc d                                         ; $5681: $8a
    sbc c                                         ; $5682: $99
    ld a, c                                       ; $5683: $79
    adc b                                         ; $5684: $88
    ld h, a                                       ; $5685: $67
    sbc b                                         ; $5686: $98
    adc c                                         ; $5687: $89
    add [hl]                                      ; $5688: $86
    ld a, b                                       ; $5689: $78
    add a                                         ; $568a: $87
    adc b                                         ; $568b: $88
    adc b                                         ; $568c: $88
    halt                                          ; $568d: $76
    ld [hl], a                                    ; $568e: $77
    ld a, b                                       ; $568f: $78
    ld h, [hl]                                    ; $5690: $66
    xor d                                         ; $5691: $aa
    ld b, [hl]                                    ; $5692: $46
    ld h, l                                       ; $5693: $65
    adc b                                         ; $5694: $88
    ld [hl], a                                    ; $5695: $77
    ld a, b                                       ; $5696: $78
    ld h, [hl]                                    ; $5697: $66
    ld d, [hl]                                    ; $5698: $56
    halt                                          ; $5699: $76
    ld a, b                                       ; $569a: $78
    ld [hl], l                                    ; $569b: $75
    ld h, a                                       ; $569c: $67
    ld [hl], l                                    ; $569d: $75
    halt                                          ; $569e: $76
    ld h, a                                       ; $569f: $67
    add [hl]                                      ; $56a0: $86
    ld d, l                                       ; $56a1: $55
    ld d, [hl]                                    ; $56a2: $56
    ld h, l                                       ; $56a3: $65
    halt                                          ; $56a4: $76
    ld d, [hl]                                    ; $56a5: $56
    ld h, h                                       ; $56a6: $64
    ld e, b                                       ; $56a7: $58
    add l                                         ; $56a8: $85
    ld d, h                                       ; $56a9: $54
    ld [hl], $77                                  ; $56aa: $36 $77
    ld h, l                                       ; $56ac: $65
    ld [hl], l                                    ; $56ad: $75
    ld h, e                                       ; $56ae: $63
    ld d, [hl]                                    ; $56af: $56
    ld d, [hl]                                    ; $56b0: $56
    ld [hl], l                                    ; $56b1: $75
    ld b, l                                       ; $56b2: $45
    ld h, a                                       ; $56b3: $67
    ld b, l                                       ; $56b4: $45
    ld d, l                                       ; $56b5: $55
    halt                                          ; $56b6: $76
    ld d, h                                       ; $56b7: $54

Call_018_56b8:
    ld b, h                                       ; $56b8: $44
    ld h, l                                       ; $56b9: $65
    ld d, a                                       ; $56ba: $57
    ld d, l                                       ; $56bb: $55
    ld d, l                                       ; $56bc: $55
    dec h                                         ; $56bd: $25
    sub a                                         ; $56be: $97
    ld b, l                                       ; $56bf: $45
    inc sp                                        ; $56c0: $33
    ld h, [hl]                                    ; $56c1: $66
    halt                                          ; $56c2: $76
    ld h, [hl]                                    ; $56c3: $66
    ld d, [hl]                                    ; $56c4: $56
    ld [hl], $56                                  ; $56c5: $36 $56
    ld [hl], a                                    ; $56c7: $77
    ld d, l                                       ; $56c8: $55
    ld h, a                                       ; $56c9: $67
    ld h, h                                       ; $56ca: $64
    ld h, [hl]                                    ; $56cb: $66
    ld a, b                                       ; $56cc: $78
    ld h, l                                       ; $56cd: $65
    ld d, l                                       ; $56ce: $55
    ld d, [hl]                                    ; $56cf: $56
    ld d, a                                       ; $56d0: $57
    add [hl]                                      ; $56d1: $86
    ld h, a                                       ; $56d2: $67
    ld h, [hl]                                    ; $56d3: $66
    ld h, a                                       ; $56d4: $67
    ld a, b                                       ; $56d5: $78
    halt                                          ; $56d6: $76
    ld h, h                                       ; $56d7: $64
    ld a, e                                       ; $56d8: $7b
    add h                                         ; $56d9: $84
    ld h, [hl]                                    ; $56da: $66
    ld l, c                                       ; $56db: $69
    adc b                                         ; $56dc: $88
    ld a, c                                       ; $56dd: $79
    add a                                         ; $56de: $87
    ld [hl], l                                    ; $56df: $75
    sbc b                                         ; $56e0: $98
    adc d                                         ; $56e1: $8a
    sub [hl]                                      ; $56e2: $96
    ld l, b                                       ; $56e3: $68
    sbc b                                         ; $56e4: $98
    adc c                                         ; $56e5: $89
    adc c                                         ; $56e6: $89
    xor b                                         ; $56e7: $a8
    ld a, b                                       ; $56e8: $78
    adc b                                         ; $56e9: $88
    add a                                         ; $56ea: $87
    xor d                                         ; $56eb: $aa
    adc b                                         ; $56ec: $88
    sbc c                                         ; $56ed: $99
    sbc c                                         ; $56ee: $99
    sbc c                                         ; $56ef: $99
    xor c                                         ; $56f0: $a9
    adc c                                         ; $56f1: $89
    sbc b                                         ; $56f2: $98
    xor e                                         ; $56f3: $ab
    or a                                          ; $56f4: $b7
    xor b                                         ; $56f5: $a8
    ld a, d                                       ; $56f6: $7a
    sbc d                                         ; $56f7: $9a
    xor e                                         ; $56f8: $ab
    cp c                                          ; $56f9: $b9
    and a                                         ; $56fa: $a7
    xor c                                         ; $56fb: $a9
    sbc e                                         ; $56fc: $9b
    ret                                           ; $56fd: $c9


    adc d                                         ; $56fe: $8a
    xor d                                         ; $56ff: $aa
    sbc d                                         ; $5700: $9a
    sbc d                                         ; $5701: $9a
    cp e                                          ; $5702: $bb
    sbc d                                         ; $5703: $9a
    adc c                                         ; $5704: $89
    xor c                                         ; $5705: $a9
    sbc d                                         ; $5706: $9a
    cp [hl]                                       ; $5707: $be
    or a                                          ; $5708: $b7
    add a                                         ; $5709: $87
    xor e                                         ; $570a: $ab
    cp e                                          ; $570b: $bb
    sbc h                                         ; $570c: $9c
    xor d                                         ; $570d: $aa
    adc b                                         ; $570e: $88
    xor c                                         ; $570f: $a9
    call z, $89b8                                 ; $5710: $cc $b8 $89
    xor e                                         ; $5713: $ab
    xor c                                         ; $5714: $a9
    sbc l                                         ; $5715: $9d
    xor d                                         ; $5716: $aa
    sbc b                                         ; $5717: $98
    ld l, d                                       ; $5718: $6a
    sbc b                                         ; $5719: $98
    cp e                                          ; $571a: $bb
    sbc c                                         ; $571b: $99
    add l                                         ; $571c: $85
    sbc h                                         ; $571d: $9c
    ret                                           ; $571e: $c9


    sub [hl]                                      ; $571f: $96
    ld l, d                                       ; $5720: $6a
    adc d                                         ; $5721: $8a
    xor d                                         ; $5722: $aa
    sbc c                                         ; $5723: $99
    sub [hl]                                      ; $5724: $96
    add a                                         ; $5725: $87
    adc d                                         ; $5726: $8a
    sbc c                                         ; $5727: $99
    adc d                                         ; $5728: $8a
    xor c                                         ; $5729: $a9
    ld d, [hl]                                    ; $572a: $56
    sbc d                                         ; $572b: $9a
    adc b                                         ; $572c: $88
    xor d                                         ; $572d: $aa
    ld [hl], h                                    ; $572e: $74
    ld b, a                                       ; $572f: $47
    adc $84                                       ; $5730: $ce $84
    ld h, l                                       ; $5732: $65
    ld a, b                                       ; $5733: $78
    ld a, c                                       ; $5734: $79
    cp e                                          ; $5735: $bb
    halt                                          ; $5736: $76
    ld [hl], $a9                                  ; $5737: $36 $a9
    ld [hl], a                                    ; $5739: $77
    sub a                                         ; $573a: $97
    adc b                                         ; $573b: $88
    ld [hl], l                                    ; $573c: $75
    add a                                         ; $573d: $87
    ld l, b                                       ; $573e: $68
    sbc b                                         ; $573f: $98
    add [hl]                                      ; $5740: $86
    ld b, l                                       ; $5741: $45
    ld h, [hl]                                    ; $5742: $66
    add a                                         ; $5743: $87
    ld d, [hl]                                    ; $5744: $56
    add l                                         ; $5745: $85
    ld e, c                                       ; $5746: $59
    and l                                         ; $5747: $a5
    ld h, h                                       ; $5748: $64
    ld [hl], $68                                  ; $5749: $36 $68
    add a                                         ; $574b: $87
    ld [hl], a                                    ; $574c: $77
    ld h, d                                       ; $574d: $62
    ld d, l                                       ; $574e: $55
    ld h, a                                       ; $574f: $67
    add [hl]                                      ; $5750: $86
    ld b, l                                       ; $5751: $45
    ld [hl], a                                    ; $5752: $77
    ld h, l                                       ; $5753: $65
    ld d, l                                       ; $5754: $55
    ld h, [hl]                                    ; $5755: $66
    ld h, l                                       ; $5756: $65
    ld d, h                                       ; $5757: $54
    ld d, l                                       ; $5758: $55
    ld h, a                                       ; $5759: $67
    ld h, l                                       ; $575a: $65
    ld [hl], $97                                  ; $575b: $36 $97
    ld d, h                                       ; $575d: $54
    inc [hl]                                      ; $575e: $34
    ld h, a                                       ; $575f: $67
    add [hl]                                      ; $5760: $86
    sub l                                         ; $5761: $95
    ld d, d                                       ; $5762: $52
    ld b, [hl]                                    ; $5763: $46
    ld d, a                                       ; $5764: $57
    ld [hl], a                                    ; $5765: $77
    inc [hl]                                      ; $5766: $34
    ld d, a                                       ; $5767: $57
    ld d, [hl]                                    ; $5768: $56
    ld h, l                                       ; $5769: $65
    ld h, a                                       ; $576a: $67
    ld d, l                                       ; $576b: $55
    ld b, e                                       ; $576c: $43
    ld d, [hl]                                    ; $576d: $56
    ld h, a                                       ; $576e: $67
    ld h, l                                       ; $576f: $65
    ld d, a                                       ; $5770: $57
    ld b, e                                       ; $5771: $43
    adc e                                         ; $5772: $8b
    ld h, l                                       ; $5773: $65
    ld b, c                                       ; $5774: $41
    ld e, b                                       ; $5775: $58

Jump_018_5776:
    ld [hl], a                                    ; $5776: $77
    ld a, b                                       ; $5777: $78
    ld l, b                                       ; $5778: $68
    ld h, $76                                     ; $5779: $26 $76
    ld l, d                                       ; $577b: $6a
    add e                                         ; $577c: $83
    ld [hl], a                                    ; $577d: $77
    ld [hl], l                                    ; $577e: $75
    ld [hl], l                                    ; $577f: $75
    ld l, c                                       ; $5780: $69
    sub [hl]                                      ; $5781: $96
    ld d, h                                       ; $5782: $54
    ld b, a                                       ; $5783: $47
    ld h, [hl]                                    ; $5784: $66
    sbc b                                         ; $5785: $98
    ld a, b                                       ; $5786: $78
    add [hl]                                      ; $5787: $86
    ld l, b                                       ; $5788: $68
    add [hl]                                      ; $5789: $86
    ld h, a                                       ; $578a: $67
    cp c                                          ; $578b: $b9
    ld d, a                                       ; $578c: $57
    ld b, l                                       ; $578d: $45
    adc c                                         ; $578e: $89
    sbc c                                         ; $578f: $99
    cp b                                          ; $5790: $b8
    ld [hl], e                                    ; $5791: $73
    ld d, a                                       ; $5792: $57
    ld a, c                                       ; $5793: $79
    call z, $8866                                 ; $5794: $cc $66 $88
    ld a, c                                       ; $5797: $79
    adc b                                         ; $5798: $88
    xor d                                         ; $5799: $aa
    sub a                                         ; $579a: $97
    add [hl]                                      ; $579b: $86
    adc b                                         ; $579c: $88
    adc d                                         ; $579d: $8a
    xor b                                         ; $579e: $a8
    sbc c                                         ; $579f: $99
    add a                                         ; $57a0: $87
    sbc c                                         ; $57a1: $99
    sbc e                                         ; $57a2: $9b
    sbc b                                         ; $57a3: $98
    adc c                                         ; $57a4: $89
    ld l, b                                       ; $57a5: $68
    call $8589                                    ; $57a6: $cd $89 $85
    adc c                                         ; $57a9: $89
    sbc d                                         ; $57aa: $9a
    call z, Call_018_68a8                         ; $57ab: $cc $a8 $68
    adc c                                         ; $57ae: $89
    xor l                                         ; $57af: $ad
    and a                                         ; $57b0: $a7
    adc d                                         ; $57b1: $8a
    sbc c                                         ; $57b2: $99
    xor b                                         ; $57b3: $a8
    xor h                                         ; $57b4: $ac
    cp c                                          ; $57b5: $b9
    sbc b                                         ; $57b6: $98
    ld l, b                                       ; $57b7: $68
    adc c                                         ; $57b8: $89
    res 3, d                                      ; $57b9: $cb $9a
    sbc b                                         ; $57bb: $98
    adc c                                         ; $57bc: $89
    sbc d                                         ; $57bd: $9a
    xor b                                         ; $57be: $a8
    adc c                                         ; $57bf: $89
    sbc d                                         ; $57c0: $9a
    xor c                                         ; $57c1: $a9
    adc d                                         ; $57c2: $8a
    xor c                                         ; $57c3: $a9
    sbc b                                         ; $57c4: $98
    adc b                                         ; $57c5: $88
    sbc c                                         ; $57c6: $99
    sbc c                                         ; $57c7: $99
    sbc d                                         ; $57c8: $9a
    adc b                                         ; $57c9: $88
    adc c                                         ; $57ca: $89
    sbc c                                         ; $57cb: $99
    adc b                                         ; $57cc: $88
    adc c                                         ; $57cd: $89
    xor c                                         ; $57ce: $a9
    add a                                         ; $57cf: $87
    xor b                                         ; $57d0: $a8
    sbc c                                         ; $57d1: $99
    add a                                         ; $57d2: $87
    sbc b                                         ; $57d3: $98
    add a                                         ; $57d4: $87
    ld a, c                                       ; $57d5: $79
    ld sp, hl                                     ; $57d6: $f9
    ld c, c                                       ; $57d7: $49
    ld d, [hl]                                    ; $57d8: $56
    sbc c                                         ; $57d9: $99
    sbc d                                         ; $57da: $9a
    ret                                           ; $57db: $c9


    add l                                         ; $57dc: $85
    ld d, a                                       ; $57dd: $57
    adc d                                         ; $57de: $8a
    res 0, [hl]                                   ; $57df: $cb $86
    adc b                                         ; $57e1: $88
    ld a, b                                       ; $57e2: $78
    adc b                                         ; $57e3: $88
    xor c                                         ; $57e4: $a9
    add a                                         ; $57e5: $87
    ld [hl], l                                    ; $57e6: $75
    ld a, b                                       ; $57e7: $78
    ld a, c                                       ; $57e8: $79
    and a                                         ; $57e9: $a7
    ld h, a                                       ; $57ea: $67
    halt                                          ; $57eb: $76
    adc b                                         ; $57ec: $88
    adc d                                         ; $57ed: $8a
    ld [hl], l                                    ; $57ee: $75
    ld a, b                                       ; $57ef: $78
    ld l, b                                       ; $57f0: $68
    add [hl]                                      ; $57f1: $86
    ld a, b                                       ; $57f2: $78
    ld [hl], a                                    ; $57f3: $77
    ld [hl], a                                    ; $57f4: $77
    ld d, l                                       ; $57f5: $55
    ld [hl], h                                    ; $57f6: $74
    ld l, h                                       ; $57f7: $6c
    jp Jump_000_1774                              ; $57f8: $c3 $74 $17


    ld h, a                                       ; $57fb: $67
    ld a, e                                       ; $57fc: $7b
    sub a                                         ; $57fd: $97
    ld d, c                                       ; $57fe: $51
    ld b, l                                       ; $57ff: $45
    adc d                                         ; $5800: $8a
    or [hl]                                       ; $5801: $b6
    dec [hl]                                      ; $5802: $35
    halt                                          ; $5803: $76
    ld h, [hl]                                    ; $5804: $66
    ld l, d                                       ; $5805: $6a
    sub a                                         ; $5806: $97
    ld d, l                                       ; $5807: $55
    inc sp                                        ; $5808: $33
    ld h, l                                       ; $5809: $65
    ld a, c                                       ; $580a: $79
    ld [hl], l                                    ; $580b: $75
    halt                                          ; $580c: $76
    ld b, [hl]                                    ; $580d: $46
    halt                                          ; $580e: $76
    add a                                         ; $580f: $87
    dec [hl]                                      ; $5810: $35
    ld h, [hl]                                    ; $5811: $66
    ld a, b                                       ; $5812: $78
    ld h, l                                       ; $5813: $65
    halt                                          ; $5814: $76
    ld h, [hl]                                    ; $5815: $66
    ld h, l                                       ; $5816: $65
    ld h, a                                       ; $5817: $67
    ld [hl], a                                    ; $5818: $77
    ld [hl], a                                    ; $5819: $77
    halt                                          ; $581a: $76
    halt                                          ; $581b: $76
    ld h, l                                       ; $581c: $65
    ld h, [hl]                                    ; $581d: $66
    ld [hl], h                                    ; $581e: $74
    scf                                           ; $581f: $37
    rst $20                                       ; $5820: $e7
    daa                                           ; $5821: $27
    inc h                                         ; $5822: $24
    ld [hl], a                                    ; $5823: $77
    ld a, b                                       ; $5824: $78
    cp b                                          ; $5825: $b8
    ld [hl], d                                    ; $5826: $72
    ld [hl], $68                                  ; $5827: $36 $68
    xor c                                         ; $5829: $a9
    ld d, l                                       ; $582a: $55
    ld a, b                                       ; $582b: $78
    ld d, [hl]                                    ; $582c: $56
    ld l, b                                       ; $582d: $68
    cp c                                          ; $582e: $b9
    ld [hl], l                                    ; $582f: $75
    add e                                         ; $5830: $83
    ld h, [hl]                                    ; $5831: $66

Call_018_5832:
    ld e, b                                       ; $5832: $58
    and [hl]                                      ; $5833: $a6
    ld l, b                                       ; $5834: $68
    add a                                         ; $5835: $87
    ld [hl], a                                    ; $5836: $77
    ld l, d                                       ; $5837: $6a
    add h                                         ; $5838: $84
    ld a, b                                       ; $5839: $78
    adc b                                         ; $583a: $88
    ld h, l                                       ; $583b: $65
    adc e                                         ; $583c: $8b
    sub a                                         ; $583d: $97
    add a                                         ; $583e: $87
    ld e, b                                       ; $583f: $58
    add a                                         ; $5840: $87
    sbc c                                         ; $5841: $99
    adc b                                         ; $5842: $88
    add a                                         ; $5843: $87
    ld a, b                                       ; $5844: $78
    add a                                         ; $5845: $87
    ld [hl], a                                    ; $5846: $77
    adc c                                         ; $5847: $89
    adc b                                         ; $5848: $88
    adc b                                         ; $5849: $88
    adc b                                         ; $584a: $88
    adc b                                         ; $584b: $88
    ld a, b                                       ; $584c: $78
    sub a                                         ; $584d: $97
    ld [hl], a                                    ; $584e: $77
    sub a                                         ; $584f: $97
    ld e, b                                       ; $5850: $58
    ei                                            ; $5851: $fb
    ld c, b                                       ; $5852: $48

Jump_018_5853:
    ld [hl], $a8                                  ; $5853: $36 $a8
    sbc d                                         ; $5855: $9a
    jp c, $3795                                   ; $5856: $da $95 $37

    ld a, d                                       ; $5859: $7a
    cp e                                          ; $585a: $bb
    add [hl]                                      ; $585b: $86
    adc c                                         ; $585c: $89
    adc b                                         ; $585d: $88
    ld a, b                                       ; $585e: $78
    call c, $8697                                 ; $585f: $dc $97 $86
    ld l, b                                       ; $5862: $68
    ld a, c                                       ; $5863: $79
    cp c                                          ; $5864: $b9
    adc d                                         ; $5865: $8a
    add a                                         ; $5866: $87
    sbc b                                         ; $5867: $98
    adc h                                         ; $5868: $8c
    sub [hl]                                      ; $5869: $96
    adc b                                         ; $586a: $88
    adc d                                         ; $586b: $8a
    sub a                                         ; $586c: $97
    adc d                                         ; $586d: $8a
    sbc c                                         ; $586e: $99
    halt                                          ; $586f: $76
    add a                                         ; $5870: $87
    sbc c                                         ; $5871: $99
    sbc c                                         ; $5872: $99
    sbc c                                         ; $5873: $99
    adc b                                         ; $5874: $88
    adc b                                         ; $5875: $88
    add a                                         ; $5876: $87
    ld a, b                                       ; $5877: $78
    adc b                                         ; $5878: $88
    adc b                                         ; $5879: $88
    adc b                                         ; $587a: $88
    adc b                                         ; $587b: $88
    sbc b                                         ; $587c: $98
    ld a, b                                       ; $587d: $78
    adc b                                         ; $587e: $88
    adc b                                         ; $587f: $88
    sbc c                                         ; $5880: $99
    add a                                         ; $5881: $87
    adc b                                         ; $5882: $88
    adc b                                         ; $5883: $88
    ld [hl], a                                    ; $5884: $77
    adc c                                         ; $5885: $89
    sbc c                                         ; $5886: $99
    adc b                                         ; $5887: $88
    ld a, b                                       ; $5888: $78
    ld h, l                                       ; $5889: $65
    adc a                                         ; $588a: $8f
    or e                                          ; $588b: $b3
    add h                                         ; $588c: $84
    ld e, b                                       ; $588d: $58
    adc c                                         ; $588e: $89
    adc h                                         ; $588f: $8c
    xor c                                         ; $5890: $a9
    ld b, e                                       ; $5891: $43
    halt                                          ; $5892: $76
    sbc d                                         ; $5893: $9a
    or a                                          ; $5894: $b7
    ld l, b                                       ; $5895: $68
    add [hl]                                      ; $5896: $86
    ld h, [hl]                                    ; $5897: $66
    adc h                                         ; $5898: $8c
    xor b                                         ; $5899: $a8
    ld h, a                                       ; $589a: $67
    ld b, l                                       ; $589b: $45
    halt                                          ; $589c: $76
    sbc d                                         ; $589d: $9a
    add a                                         ; $589e: $87
    sub a                                         ; $589f: $97
    ld d, a                                       ; $58a0: $57
    ld [hl], a                                    ; $58a1: $77
    and a                                         ; $58a2: $a7
    ld c, b                                       ; $58a3: $48
    ld [hl], a                                    ; $58a4: $77
    add [hl]                                      ; $58a5: $86

Call_018_58a6:
    ld h, a                                       ; $58a6: $67
    sbc b                                         ; $58a7: $98
    halt                                          ; $58a8: $76
    ld h, [hl]                                    ; $58a9: $66
    ld h, a                                       ; $58aa: $67
    ld [hl], a                                    ; $58ab: $77
    ld [hl], a                                    ; $58ac: $77
    ld h, a                                       ; $58ad: $67
    ld [hl], a                                    ; $58ae: $77
    ld h, [hl]                                    ; $58af: $66
    ld h, [hl]                                    ; $58b0: $66
    ld [hl], a                                    ; $58b1: $77
    ld a, b                                       ; $58b2: $78
    ld [hl], a                                    ; $58b3: $77
    ld [hl], a                                    ; $58b4: $77
    ld h, a                                       ; $58b5: $67
    ld [hl], a                                    ; $58b6: $77
    halt                                          ; $58b7: $76
    ld h, a                                       ; $58b8: $67
    ld [hl], a                                    ; $58b9: $77
    ld [hl], a                                    ; $58ba: $77
    halt                                          ; $58bb: $76
    ld h, [hl]                                    ; $58bc: $66
    ld h, a                                       ; $58bd: $67
    ld [hl], a                                    ; $58be: $77
    ld h, a                                       ; $58bf: $67
    add [hl]                                      ; $58c0: $86
    ld h, [hl]                                    ; $58c1: $66
    ld a, b                                       ; $58c2: $78
    add a                                         ; $58c3: $87
    ld [hl], a                                    ; $58c4: $77
    ld [hl], a                                    ; $58c5: $77
    ld h, [hl]                                    ; $58c6: $66
    ld h, [hl]                                    ; $58c7: $66
    ld h, a                                       ; $58c8: $67
    sbc b                                         ; $58c9: $98
    ld h, [hl]                                    ; $58ca: $66
    sub l                                         ; $58cb: $95
    ld [hl], a                                    ; $58cc: $77
    ld [hl], a                                    ; $58cd: $77
    add a                                         ; $58ce: $87
    ld e, b                                       ; $58cf: $58
    add a                                         ; $58d0: $87
    halt                                          ; $58d1: $76
    ld a, b                                       ; $58d2: $78
    ld [hl], a                                    ; $58d3: $77
    add a                                         ; $58d4: $87
    ld h, a                                       ; $58d5: $67
    add [hl]                                      ; $58d6: $86
    ld a, b                                       ; $58d7: $78
    add a                                         ; $58d8: $87
    ld [hl], a                                    ; $58d9: $77
    ld h, a                                       ; $58da: $67
    ld [hl], a                                    ; $58db: $77
    ld a, b                                       ; $58dc: $78
    ld a, b                                       ; $58dd: $78
    ld [hl], l                                    ; $58de: $75
    ld a, b                                       ; $58df: $78
    add a                                         ; $58e0: $87
    add a                                         ; $58e1: $87
    ld a, b                                       ; $58e2: $78
    add a                                         ; $58e3: $87
    ld [hl], a                                    ; $58e4: $77
    adc b                                         ; $58e5: $88
    add a                                         ; $58e6: $87
    adc b                                         ; $58e7: $88
    add a                                         ; $58e8: $87
    ld [hl], a                                    ; $58e9: $77
    adc b                                         ; $58ea: $88
    ld a, b                                       ; $58eb: $78
    adc b                                         ; $58ec: $88
    ld [hl], a                                    ; $58ed: $77
    adc b                                         ; $58ee: $88
    adc b                                         ; $58ef: $88
    adc b                                         ; $58f0: $88
    adc b                                         ; $58f1: $88
    adc b                                         ; $58f2: $88
    ld a, b                                       ; $58f3: $78
    sbc b                                         ; $58f4: $98
    adc b                                         ; $58f5: $88
    adc b                                         ; $58f6: $88
    adc b                                         ; $58f7: $88
    adc b                                         ; $58f8: $88
    adc b                                         ; $58f9: $88
    adc b                                         ; $58fa: $88
    adc b                                         ; $58fb: $88
    adc b                                         ; $58fc: $88
    adc b                                         ; $58fd: $88
    adc b                                         ; $58fe: $88
    adc b                                         ; $58ff: $88
    adc b                                         ; $5900: $88
    adc b                                         ; $5901: $88
    adc b                                         ; $5902: $88
    adc b                                         ; $5903: $88
    adc b                                         ; $5904: $88
    adc b                                         ; $5905: $88
    adc b                                         ; $5906: $88
    adc b                                         ; $5907: $88
    adc b                                         ; $5908: $88
    adc b                                         ; $5909: $88
    adc b                                         ; $590a: $88
    adc b                                         ; $590b: $88
    adc b                                         ; $590c: $88
    adc b                                         ; $590d: $88
    adc b                                         ; $590e: $88
    adc b                                         ; $590f: $88
    adc b                                         ; $5910: $88
    adc b                                         ; $5911: $88
    adc b                                         ; $5912: $88
    adc b                                         ; $5913: $88
    adc b                                         ; $5914: $88
    ld h, l                                       ; $5915: $65
    sbc a                                         ; $5916: $9f
    sub l                                         ; $5917: $95
    ld [hl], d                                    ; $5918: $72
    ld e, c                                       ; $5919: $59
    cp d                                          ; $591a: $ba
    adc h                                         ; $591b: $8c
    xor b                                         ; $591c: $a8
    ld [hl-], a                                   ; $591d: $32
    sbc e                                         ; $591e: $9b
    xor d                                         ; $591f: $aa
    add a                                         ; $5920: $87
    ld a, b                                       ; $5921: $78
    halt                                          ; $5922: $76
    adc c                                         ; $5923: $89
    xor h                                         ; $5924: $ac
    sub l                                         ; $5925: $95
    ld d, [hl]                                    ; $5926: $56
    ld e, c                                       ; $5927: $59
    sbc b                                         ; $5928: $98
    xor c                                         ; $5929: $a9
    halt                                          ; $592a: $76
    sbc b                                         ; $592b: $98
    ld a, b                                       ; $592c: $78
    ld a, e                                       ; $592d: $7b
    call nz, $875a                                ; $592e: $c4 $5a $87
    add a                                         ; $5931: $87
    ld e, c                                       ; $5932: $59
    sub a                                         ; $5933: $97
    sbc b                                         ; $5934: $98
    ld h, a                                       ; $5935: $67
    adc b                                         ; $5936: $88
    add a                                         ; $5937: $87
    ld a, b                                       ; $5938: $78
    adc c                                         ; $5939: $89
    add a                                         ; $593a: $87
    ld a, b                                       ; $593b: $78
    halt                                          ; $593c: $76
    adc b                                         ; $593d: $88
    adc b                                         ; $593e: $88
    add a                                         ; $593f: $87
    add a                                         ; $5940: $87
    ld a, b                                       ; $5941: $78
    halt                                          ; $5942: $76
    ld [hl], a                                    ; $5943: $77
    ld a, b                                       ; $5944: $78
    add a                                         ; $5945: $87
    sbc b                                         ; $5946: $98
    ld h, a                                       ; $5947: $67
    ld a, b                                       ; $5948: $78
    ld a, b                                       ; $5949: $78
    add [hl]                                      ; $594a: $86
    ld l, b                                       ; $594b: $68
    adc b                                         ; $594c: $88
    add [hl]                                      ; $594d: $86
    ld a, b                                       ; $594e: $78
    ld h, [hl]                                    ; $594f: $66
    add a                                         ; $5950: $87
    sbc b                                         ; $5951: $98
    ld [hl], a                                    ; $5952: $77
    ld h, [hl]                                    ; $5953: $66
    ld [hl], a                                    ; $5954: $77
    add a                                         ; $5955: $87
    ld [hl], a                                    ; $5956: $77
    ld [hl], a                                    ; $5957: $77
    ld [hl], a                                    ; $5958: $77
    ld [hl], a                                    ; $5959: $77
    halt                                          ; $595a: $76
    ld h, a                                       ; $595b: $67
    ld [hl], a                                    ; $595c: $77
    ld h, a                                       ; $595d: $67
    ld [hl], a                                    ; $595e: $77
    ld [hl], a                                    ; $595f: $77
    add [hl]                                      ; $5960: $86
    ld [hl], a                                    ; $5961: $77
    ld [hl], a                                    ; $5962: $77
    halt                                          ; $5963: $76
    ld [hl], a                                    ; $5964: $77
    ld [hl], a                                    ; $5965: $77
    ld a, b                                       ; $5966: $78
    ld [hl], a                                    ; $5967: $77
    ld h, [hl]                                    ; $5968: $66
    ld h, a                                       ; $5969: $67
    ld [hl], a                                    ; $596a: $77
    ld [hl], a                                    ; $596b: $77
    halt                                          ; $596c: $76
    ld [hl], a                                    ; $596d: $77
    ld a, b                                       ; $596e: $78
    halt                                          ; $596f: $76
    ld h, [hl]                                    ; $5970: $66
    ld a, b                                       ; $5971: $78
    ld [hl], a                                    ; $5972: $77
    add a                                         ; $5973: $87
    ld h, [hl]                                    ; $5974: $66
    ld a, b                                       ; $5975: $78
    ld [hl], a                                    ; $5976: $77
    halt                                          ; $5977: $76
    ld [hl], a                                    ; $5978: $77
    add a                                         ; $5979: $87
    ld [hl], a                                    ; $597a: $77
    ld [hl], a                                    ; $597b: $77
    ld [hl], a                                    ; $597c: $77
    ld [hl], a                                    ; $597d: $77
    ld [hl], a                                    ; $597e: $77
    ld [hl], a                                    ; $597f: $77
    add a                                         ; $5980: $87
    ld [hl], a                                    ; $5981: $77
    ld [hl], a                                    ; $5982: $77
    add a                                         ; $5983: $87
    ld [hl], a                                    ; $5984: $77
    ld a, b                                       ; $5985: $78
    ld [hl], a                                    ; $5986: $77
    ld [hl], a                                    ; $5987: $77
    ld a, b                                       ; $5988: $78
    ld [hl], a                                    ; $5989: $77
    ld [hl], a                                    ; $598a: $77
    add a                                         ; $598b: $87
    ld [hl], a                                    ; $598c: $77
    adc b                                         ; $598d: $88
    ld [hl], a                                    ; $598e: $77
    ld [hl], a                                    ; $598f: $77
    adc b                                         ; $5990: $88
    ld [hl], a                                    ; $5991: $77
    ld [hl], a                                    ; $5992: $77
    adc b                                         ; $5993: $88
    add a                                         ; $5994: $87
    ld a, b                                       ; $5995: $78
    adc b                                         ; $5996: $88
    add a                                         ; $5997: $87
    ld a, b                                       ; $5998: $78
    adc b                                         ; $5999: $88
    adc b                                         ; $599a: $88
    add a                                         ; $599b: $87
    ld a, b                                       ; $599c: $78
    adc b                                         ; $599d: $88
    adc b                                         ; $599e: $88
    ld [hl], a                                    ; $599f: $77
    adc b                                         ; $59a0: $88
    adc b                                         ; $59a1: $88
    adc b                                         ; $59a2: $88
    adc b                                         ; $59a3: $88
    sbc b                                         ; $59a4: $98
    adc b                                         ; $59a5: $88
    adc b                                         ; $59a6: $88
    adc b                                         ; $59a7: $88
    adc b                                         ; $59a8: $88
    adc b                                         ; $59a9: $88
    adc b                                         ; $59aa: $88
    adc b                                         ; $59ab: $88
    sbc c                                         ; $59ac: $99
    sbc b                                         ; $59ad: $98
    adc b                                         ; $59ae: $88
    sbc c                                         ; $59af: $99
    sbc b                                         ; $59b0: $98
    adc b                                         ; $59b1: $88
    adc b                                         ; $59b2: $88
    adc c                                         ; $59b3: $89
    sbc c                                         ; $59b4: $99
    sbc b                                         ; $59b5: $98
    ld a, b                                       ; $59b6: $78
    sbc c                                         ; $59b7: $99
    sbc b                                         ; $59b8: $98
    sbc c                                         ; $59b9: $99
    adc c                                         ; $59ba: $89
    sbc b                                         ; $59bb: $98
    sbc c                                         ; $59bc: $99
    adc c                                         ; $59bd: $89
    adc b                                         ; $59be: $88
    adc b                                         ; $59bf: $88
    adc b                                         ; $59c0: $88
    adc b                                         ; $59c1: $88
    sbc c                                         ; $59c2: $99
    adc b                                         ; $59c3: $88
    add a                                         ; $59c4: $87
    adc c                                         ; $59c5: $89
    sbc c                                         ; $59c6: $99
    sbc c                                         ; $59c7: $99
    ld a, b                                       ; $59c8: $78
    sbc b                                         ; $59c9: $98
    sbc b                                         ; $59ca: $98
    ld [hl], a                                    ; $59cb: $77
    adc b                                         ; $59cc: $88
    sbc b                                         ; $59cd: $98
    adc b                                         ; $59ce: $88
    add a                                         ; $59cf: $87
    adc b                                         ; $59d0: $88
    adc b                                         ; $59d1: $88
    add a                                         ; $59d2: $87
    ld [hl], a                                    ; $59d3: $77
    adc b                                         ; $59d4: $88
    adc b                                         ; $59d5: $88
    ld [hl], a                                    ; $59d6: $77
    adc b                                         ; $59d7: $88
    adc b                                         ; $59d8: $88
    adc b                                         ; $59d9: $88
    ld a, b                                       ; $59da: $78
    ld [hl], a                                    ; $59db: $77
    adc b                                         ; $59dc: $88
    add a                                         ; $59dd: $87
    ld [hl], a                                    ; $59de: $77
    ld a, b                                       ; $59df: $78
    add a                                         ; $59e0: $87
    ld [hl], a                                    ; $59e1: $77
    ld a, b                                       ; $59e2: $78
    ld [hl], a                                    ; $59e3: $77
    ld a, b                                       ; $59e4: $78
    ld a, b                                       ; $59e5: $78
    ld a, b                                       ; $59e6: $78
    ld h, h                                       ; $59e7: $64
    adc a                                         ; $59e8: $8f
    sub h                                         ; $59e9: $94
    ld [hl], e                                    ; $59ea: $73
    ld e, b                                       ; $59eb: $58
    sbc d                                         ; $59ec: $9a
    adc e                                         ; $59ed: $8b
    sub [hl]                                      ; $59ee: $96
    inc [hl]                                      ; $59ef: $34
    adc c                                         ; $59f0: $89
    cp d                                          ; $59f1: $ba
    halt                                          ; $59f2: $76
    ld a, b                                       ; $59f3: $78
    ld h, a                                       ; $59f4: $67
    ld h, [hl]                                    ; $59f5: $66
    xor h                                         ; $59f6: $ac
    add a                                         ; $59f7: $87
    ld b, l                                       ; $59f8: $45
    ld c, b                                       ; $59f9: $48
    sub a                                         ; $59fa: $97
    adc b                                         ; $59fb: $88
    ld a, b                                       ; $59fc: $78
    sub [hl]                                      ; $59fd: $96
    ld d, a                                       ; $59fe: $57
    and [hl]                                      ; $59ff: $a6
    add a                                         ; $5a00: $87
    ld a, b                                       ; $5a01: $78
    halt                                          ; $5a02: $76
    halt                                          ; $5a03: $76
    ld e, b                                       ; $5a04: $58
    sub a                                         ; $5a05: $97
    sub a                                         ; $5a06: $97
    ld d, [hl]                                    ; $5a07: $56
    ld h, a                                       ; $5a08: $67
    adc b                                         ; $5a09: $88
    ld [hl], a                                    ; $5a0a: $77
    ld a, b                                       ; $5a0b: $78
    add a                                         ; $5a0c: $87
    ld h, a                                       ; $5a0d: $67
    ld h, [hl]                                    ; $5a0e: $66
    ld a, b                                       ; $5a0f: $78
    sbc b                                         ; $5a10: $98
    ld h, [hl]                                    ; $5a11: $66
    ld a, b                                       ; $5a12: $78
    adc b                                         ; $5a13: $88
    halt                                          ; $5a14: $76
    ld [hl], a                                    ; $5a15: $77
    ld [hl], a                                    ; $5a16: $77
    ld h, [hl]                                    ; $5a17: $66
    adc c                                         ; $5a18: $89
    ld [hl], a                                    ; $5a19: $77
    ld h, a                                       ; $5a1a: $67
    ld [hl], a                                    ; $5a1b: $77
    ld [hl], a                                    ; $5a1c: $77
    ld a, b                                       ; $5a1d: $78
    add a                                         ; $5a1e: $87
    halt                                          ; $5a1f: $76
    add a                                         ; $5a20: $87
    add a                                         ; $5a21: $87
    ld [hl], a                                    ; $5a22: $77
    ld [hl], a                                    ; $5a23: $77
    ld [hl], a                                    ; $5a24: $77
    ld a, b                                       ; $5a25: $78
    halt                                          ; $5a26: $76
    ld a, c                                       ; $5a27: $79
    add a                                         ; $5a28: $87
    ld [hl], a                                    ; $5a29: $77
    ld [hl], a                                    ; $5a2a: $77
    add a                                         ; $5a2b: $87
    ld a, b                                       ; $5a2c: $78
    ld a, b                                       ; $5a2d: $78
    ld [hl], a                                    ; $5a2e: $77
    ld h, a                                       ; $5a2f: $67
    adc b                                         ; $5a30: $88
    adc b                                         ; $5a31: $88
    add a                                         ; $5a32: $87
    ld a, b                                       ; $5a33: $78
    adc b                                         ; $5a34: $88
    adc b                                         ; $5a35: $88
    ld [hl], a                                    ; $5a36: $77
    ld [hl], a                                    ; $5a37: $77
    adc c                                         ; $5a38: $89
    ld [hl], a                                    ; $5a39: $77
    ld h, a                                       ; $5a3a: $67
    adc c                                         ; $5a3b: $89
    sbc b                                         ; $5a3c: $98
    ld [hl], a                                    ; $5a3d: $77
    add a                                         ; $5a3e: $87
    ld a, b                                       ; $5a3f: $78
    sbc b                                         ; $5a40: $98
    ld [hl], a                                    ; $5a41: $77
    ld [hl], a                                    ; $5a42: $77
    adc b                                         ; $5a43: $88
    adc b                                         ; $5a44: $88
    adc b                                         ; $5a45: $88
    add a                                         ; $5a46: $87
    ld a, b                                       ; $5a47: $78
    adc b                                         ; $5a48: $88
    adc b                                         ; $5a49: $88
    adc b                                         ; $5a4a: $88
    add a                                         ; $5a4b: $87
    adc b                                         ; $5a4c: $88
    adc b                                         ; $5a4d: $88
    adc b                                         ; $5a4e: $88
    ld a, b                                       ; $5a4f: $78
    adc b                                         ; $5a50: $88
    adc b                                         ; $5a51: $88
    adc b                                         ; $5a52: $88
    adc b                                         ; $5a53: $88
    adc b                                         ; $5a54: $88
    adc b                                         ; $5a55: $88
    add a                                         ; $5a56: $87
    adc b                                         ; $5a57: $88
    adc b                                         ; $5a58: $88
    adc b                                         ; $5a59: $88
    adc b                                         ; $5a5a: $88
    adc b                                         ; $5a5b: $88
    adc b                                         ; $5a5c: $88
    add a                                         ; $5a5d: $87
    ld a, b                                       ; $5a5e: $78
    adc b                                         ; $5a5f: $88
    add l                                         ; $5a60: $85
    ld e, e                                       ; $5a61: $5b
    or $65                                        ; $5a62: $f6 $65
    ld d, $ab                                     ; $5a64: $16 $ab
    sbc d                                         ; $5a66: $9a
    rst $10                                       ; $5a67: $d7
    ld sp, $cc3c                                  ; $5a68: $31 $3c $cc
    and a                                         ; $5a6b: $a7
    ld b, l                                       ; $5a6c: $45
    ld h, l                                       ; $5a6d: $65
    xor h                                         ; $5a6e: $ac
    adc d                                         ; $5a6f: $8a
    and l                                         ; $5a70: $a5
    ld d, l                                       ; $5a71: $55
    ld d, [hl]                                    ; $5a72: $56
    xor d                                         ; $5a73: $aa
    sbc c                                         ; $5a74: $99
    ld [hl], h                                    ; $5a75: $74
    adc e                                         ; $5a76: $8b
    ld d, a                                       ; $5a77: $57
    adc d                                         ; $5a78: $8a
    or a                                          ; $5a79: $b7
    ld c, c                                       ; $5a7a: $49
    halt                                          ; $5a7b: $76
    ld a, b                                       ; $5a7c: $78
    ld [hl], a                                    ; $5a7d: $77
    adc b                                         ; $5a7e: $88
    ld [hl], a                                    ; $5a7f: $77
    add [hl]                                      ; $5a80: $86
    adc b                                         ; $5a81: $88
    add a                                         ; $5a82: $87
    ld a, b                                       ; $5a83: $78
    xor b                                         ; $5a84: $a8
    ld [hl], a                                    ; $5a85: $77
    halt                                          ; $5a86: $76
    sub [hl]                                      ; $5a87: $96
    ld a, c                                       ; $5a88: $79
    add a                                         ; $5a89: $87
    add [hl]                                      ; $5a8a: $86
    ld l, b                                       ; $5a8b: $68
    ld a, d                                       ; $5a8c: $7a
    halt                                          ; $5a8d: $76
    add a                                         ; $5a8e: $87
    ld l, c                                       ; $5a8f: $69
    add [hl]                                      ; $5a90: $86
    sbc c                                         ; $5a91: $99
    add a                                         ; $5a92: $87
    ld [hl], a                                    ; $5a93: $77
    adc b                                         ; $5a94: $88
    add a                                         ; $5a95: $87
    ld l, b                                       ; $5a96: $68
    sbc b                                         ; $5a97: $98
    ld [hl], a                                    ; $5a98: $77
    ld h, a                                       ; $5a99: $67
    add a                                         ; $5a9a: $87
    ld a, b                                       ; $5a9b: $78
    adc b                                         ; $5a9c: $88
    ld [hl], a                                    ; $5a9d: $77
    ld [hl], a                                    ; $5a9e: $77
    ld a, b                                       ; $5a9f: $78
    adc b                                         ; $5aa0: $88
    adc b                                         ; $5aa1: $88
    ld [hl], a                                    ; $5aa2: $77
    ld [hl], a                                    ; $5aa3: $77
    adc b                                         ; $5aa4: $88
    ld [hl], a                                    ; $5aa5: $77
    ld [hl], a                                    ; $5aa6: $77
    adc b                                         ; $5aa7: $88
    ld [hl], a                                    ; $5aa8: $77
    adc b                                         ; $5aa9: $88
    ld a, b                                       ; $5aaa: $78
    ld a, b                                       ; $5aab: $78
    add a                                         ; $5aac: $87
    ld a, b                                       ; $5aad: $78
    adc b                                         ; $5aae: $88
    ld [hl], a                                    ; $5aaf: $77
    add a                                         ; $5ab0: $87
    adc b                                         ; $5ab1: $88
    ld [hl], a                                    ; $5ab2: $77
    add a                                         ; $5ab3: $87
    ld [hl], a                                    ; $5ab4: $77
    ld a, b                                       ; $5ab5: $78
    adc b                                         ; $5ab6: $88
    adc b                                         ; $5ab7: $88
    ld [hl], l                                    ; $5ab8: $75
    ld c, l                                       ; $5ab9: $4d
    or $55                                        ; $5aba: $f6 $55
    ld h, $9a                                     ; $5abc: $26 $9a
    sbc d                                         ; $5abe: $9a
    ret c                                         ; $5abf: $d8

    ld hl, $cf37                                  ; $5ac0: $21 $37 $cf
    and [hl]                                      ; $5ac3: $a6
    ld d, h                                       ; $5ac4: $54
    ld d, [hl]                                    ; $5ac5: $56
    xor c                                         ; $5ac6: $a9
    adc h                                         ; $5ac7: $8c
    and h                                         ; $5ac8: $a4
    ld b, [hl]                                    ; $5ac9: $46
    halt                                          ; $5aca: $76
    xor b                                         ; $5acb: $a8
    ld [hl], a                                    ; $5acc: $77
    add [hl]                                      ; $5acd: $86
    sbc c                                         ; $5ace: $99
    ld d, [hl]                                    ; $5acf: $56
    adc b                                         ; $5ad0: $88
    adc b                                         ; $5ad1: $88
    ld h, a                                       ; $5ad2: $67
    add [hl]                                      ; $5ad3: $86
    ld l, c                                       ; $5ad4: $69
    ld h, a                                       ; $5ad5: $67
    sbc b                                         ; $5ad6: $98
    ld a, b                                       ; $5ad7: $78
    ld [hl], l                                    ; $5ad8: $75
    add a                                         ; $5ad9: $87
    ld [hl], a                                    ; $5ada: $77
    adc c                                         ; $5adb: $89
    adc b                                         ; $5adc: $88
    halt                                          ; $5add: $76
    ld h, a                                       ; $5ade: $67
    sub [hl]                                      ; $5adf: $96
    adc c                                         ; $5ae0: $89
    adc b                                         ; $5ae1: $88
    halt                                          ; $5ae2: $76
    ld l, b                                       ; $5ae3: $68
    adc b                                         ; $5ae4: $88
    add a                                         ; $5ae5: $87
    ld a, b                                       ; $5ae6: $78
    add a                                         ; $5ae7: $87
    ld [hl], a                                    ; $5ae8: $77
    ld a, c                                       ; $5ae9: $79
    add [hl]                                      ; $5aea: $86
    ld h, a                                       ; $5aeb: $67
    ld a, b                                       ; $5aec: $78
    add a                                         ; $5aed: $87
    ld a, b                                       ; $5aee: $78
    sbc b                                         ; $5aef: $98
    add a                                         ; $5af0: $87
    ld a, b                                       ; $5af1: $78
    adc b                                         ; $5af2: $88
    ld [hl], a                                    ; $5af3: $77
    ld a, b                                       ; $5af4: $78
    add a                                         ; $5af5: $87
    ld [hl], a                                    ; $5af6: $77
    ld [hl], a                                    ; $5af7: $77
    adc b                                         ; $5af8: $88
    adc b                                         ; $5af9: $88
    ld [hl], a                                    ; $5afa: $77
    ld [hl], a                                    ; $5afb: $77
    adc b                                         ; $5afc: $88
    adc b                                         ; $5afd: $88
    add a                                         ; $5afe: $87
    ld a, b                                       ; $5aff: $78
    add a                                         ; $5b00: $87
    add a                                         ; $5b01: $87
    ld a, b                                       ; $5b02: $78
    add a                                         ; $5b03: $87
    ld [hl], a                                    ; $5b04: $77
    ld [hl], a                                    ; $5b05: $77
    adc b                                         ; $5b06: $88
    adc b                                         ; $5b07: $88
    add a                                         ; $5b08: $87
    ld [hl], a                                    ; $5b09: $77
    adc b                                         ; $5b0a: $88
    add a                                         ; $5b0b: $87
    ld [hl], a                                    ; $5b0c: $77
    ld [hl], a                                    ; $5b0d: $77
    ld [hl], a                                    ; $5b0e: $77
    adc b                                         ; $5b0f: $88
    add a                                         ; $5b10: $87
    ld [hl], a                                    ; $5b11: $77
    ld a, b                                       ; $5b12: $78
    ld [hl], a                                    ; $5b13: $77
    adc b                                         ; $5b14: $88
    sub [hl]                                      ; $5b15: $96
    ld a, b                                       ; $5b16: $78
    ld d, a                                       ; $5b17: $57
    sbc b                                         ; $5b18: $98
    add a                                         ; $5b19: $87
    ld a, b                                       ; $5b1a: $78
    adc c                                         ; $5b1b: $89
    and a                                         ; $5b1c: $a7
    ld h, a                                       ; $5b1d: $67
    ld h, a                                       ; $5b1e: $67
    adc b                                         ; $5b1f: $88
    sub a                                         ; $5b20: $97
    ld h, [hl]                                    ; $5b21: $66
    ld l, b                                       ; $5b22: $68
    sbc c                                         ; $5b23: $99
    add a                                         ; $5b24: $87
    ld h, a                                       ; $5b25: $67
    adc b                                         ; $5b26: $88
    adc b                                         ; $5b27: $88
    ld [hl], a                                    ; $5b28: $77
    ld [hl], a                                    ; $5b29: $77
    ld a, b                                       ; $5b2a: $78
    adc b                                         ; $5b2b: $88
    ld [hl], a                                    ; $5b2c: $77
    adc b                                         ; $5b2d: $88
    ld [hl], a                                    ; $5b2e: $77
    ld a, b                                       ; $5b2f: $78
    adc b                                         ; $5b30: $88
    adc b                                         ; $5b31: $88
    ld [hl], a                                    ; $5b32: $77
    ld a, b                                       ; $5b33: $78
    adc b                                         ; $5b34: $88
    add a                                         ; $5b35: $87
    ld [hl], a                                    ; $5b36: $77
    ld a, b                                       ; $5b37: $78
    adc b                                         ; $5b38: $88
    adc b                                         ; $5b39: $88
    adc b                                         ; $5b3a: $88
    ld [hl], a                                    ; $5b3b: $77
    adc b                                         ; $5b3c: $88
    ld [hl], e                                    ; $5b3d: $73
    ld e, a                                       ; $5b3e: $5f
    db $f4                                        ; $5b3f: $f4
    ld d, l                                       ; $5b40: $55
    ld [hl], $9a                                  ; $5b41: $36 $9a
    cp c                                          ; $5b43: $b9
    xor d                                         ; $5b44: $aa
    ld de, $9e6b                                  ; $5b45: $11 $6b $9e
    and a                                         ; $5b48: $a7
    ld d, l                                       ; $5b49: $55
    ld d, a                                       ; $5b4a: $57
    and a                                         ; $5b4b: $a7
    adc d                                         ; $5b4c: $8a
    add l                                         ; $5b4d: $85
    ld e, b                                       ; $5b4e: $58
    halt                                          ; $5b4f: $76
    sub a                                         ; $5b50: $97
    adc b                                         ; $5b51: $88
    sub a                                         ; $5b52: $97
    adc b                                         ; $5b53: $88
    ld [hl], l                                    ; $5b54: $75
    adc d                                         ; $5b55: $8a
    adc b                                         ; $5b56: $88
    ld h, a                                       ; $5b57: $67
    ld d, [hl]                                    ; $5b58: $56
    ld l, b                                       ; $5b59: $68
    ld [hl], a                                    ; $5b5a: $77
    xor c                                         ; $5b5b: $a9
    adc c                                         ; $5b5c: $89
    ld b, [hl]                                    ; $5b5d: $46
    sub a                                         ; $5b5e: $97
    sbc c                                         ; $5b5f: $99
    adc b                                         ; $5b60: $88
    halt                                          ; $5b61: $76
    ld [hl], a                                    ; $5b62: $77
    ld l, b                                       ; $5b63: $68
    sub [hl]                                      ; $5b64: $96
    adc d                                         ; $5b65: $8a
    adc b                                         ; $5b66: $88
    ld h, [hl]                                    ; $5b67: $66
    ld h, a                                       ; $5b68: $67
    adc d                                         ; $5b69: $8a
    cp c                                          ; $5b6a: $b9
    halt                                          ; $5b6b: $76
    ld l, b                                       ; $5b6c: $68
    sub l                                         ; $5b6d: $95
    ld a, d                                       ; $5b6e: $7a
    ld h, l                                       ; $5b6f: $65
    ld h, a                                       ; $5b70: $67
    adc b                                         ; $5b71: $88
    and a                                         ; $5b72: $a7
    ld a, b                                       ; $5b73: $78
    adc c                                         ; $5b74: $89
    add a                                         ; $5b75: $87
    halt                                          ; $5b76: $76
    ld [hl], a                                    ; $5b77: $77
    adc c                                         ; $5b78: $89
    add [hl]                                      ; $5b79: $86
    ld l, d                                       ; $5b7a: $6a
    ld [hl], a                                    ; $5b7b: $77
    sbc c                                         ; $5b7c: $99
    add a                                         ; $5b7d: $87
    ld h, [hl]                                    ; $5b7e: $66
    ld [hl], a                                    ; $5b7f: $77
    adc b                                         ; $5b80: $88
    ld [hl], a                                    ; $5b81: $77
    sbc b                                         ; $5b82: $98
    add [hl]                                      ; $5b83: $86
    ld a, b                                       ; $5b84: $78
    adc b                                         ; $5b85: $88
    ld h, a                                       ; $5b86: $67
    sbc b                                         ; $5b87: $98
    adc b                                         ; $5b88: $88
    ld [hl], a                                    ; $5b89: $77
    adc b                                         ; $5b8a: $88
    add a                                         ; $5b8b: $87
    ld [hl], a                                    ; $5b8c: $77
    ld [hl], a                                    ; $5b8d: $77
    ld a, b                                       ; $5b8e: $78
    add a                                         ; $5b8f: $87
    adc b                                         ; $5b90: $88
    adc c                                         ; $5b91: $89
    add a                                         ; $5b92: $87
    ld a, b                                       ; $5b93: $78
    sbc b                                         ; $5b94: $98
    ld [hl], a                                    ; $5b95: $77
    adc b                                         ; $5b96: $88
    ld [hl], a                                    ; $5b97: $77
    ld a, b                                       ; $5b98: $78
    ld a, b                                       ; $5b99: $78

Jump_018_5b9a:
    add a                                         ; $5b9a: $87
    ld a, b                                       ; $5b9b: $78
    ld [hl], a                                    ; $5b9c: $77
    ld [hl], a                                    ; $5b9d: $77
    adc b                                         ; $5b9e: $88
    adc b                                         ; $5b9f: $88
    sub a                                         ; $5ba0: $97
    ld [hl], a                                    ; $5ba1: $77
    ld h, a                                       ; $5ba2: $67
    adc b                                         ; $5ba3: $88
    ld a, b                                       ; $5ba4: $78
    halt                                          ; $5ba5: $76
    add a                                         ; $5ba6: $87
    adc b                                         ; $5ba7: $88
    adc b                                         ; $5ba8: $88
    add [hl]                                      ; $5ba9: $86
    ld a, b                                       ; $5baa: $78
    ld a, b                                       ; $5bab: $78
    add a                                         ; $5bac: $87
    ld a, b                                       ; $5bad: $78
    add a                                         ; $5bae: $87
    ld [hl], a                                    ; $5baf: $77
    adc b                                         ; $5bb0: $88
    add a                                         ; $5bb1: $87
    ld h, a                                       ; $5bb2: $67
    ld [hl], a                                    ; $5bb3: $77
    ld [hl], a                                    ; $5bb4: $77
    adc b                                         ; $5bb5: $88
    add a                                         ; $5bb6: $87
    ld [hl], a                                    ; $5bb7: $77
    ld [hl], a                                    ; $5bb8: $77
    ld a, b                                       ; $5bb9: $78
    add a                                         ; $5bba: $87
    ld [hl], a                                    ; $5bbb: $77
    ld a, b                                       ; $5bbc: $78
    adc b                                         ; $5bbd: $88
    ld [hl], a                                    ; $5bbe: $77
    ld [hl], a                                    ; $5bbf: $77
    add a                                         ; $5bc0: $87
    adc b                                         ; $5bc1: $88
    adc b                                         ; $5bc2: $88
    ld [hl], a                                    ; $5bc3: $77
    ld a, b                                       ; $5bc4: $78
    add a                                         ; $5bc5: $87
    ld [hl], a                                    ; $5bc6: $77
    adc b                                         ; $5bc7: $88
    add a                                         ; $5bc8: $87
    ld a, b                                       ; $5bc9: $78
    add a                                         ; $5bca: $87
    ld [hl], a                                    ; $5bcb: $77
    add a                                         ; $5bcc: $87
    ld [hl], a                                    ; $5bcd: $77
    ld a, b                                       ; $5bce: $78
    adc b                                         ; $5bcf: $88
    add a                                         ; $5bd0: $87
    ld [hl], a                                    ; $5bd1: $77
    adc b                                         ; $5bd2: $88
    ld [hl], l                                    ; $5bd3: $75
    ld c, e                                       ; $5bd4: $4b
    ld hl, sp+$56                                 ; $5bd5: $f8 $56
    ld [hl], $9a                                  ; $5bd7: $36 $9a
    sbc c                                         ; $5bd9: $99
    or a                                          ; $5bda: $b7
    ld b, e                                       ; $5bdb: $43
    ld c, c                                       ; $5bdc: $49
    call Call_018_6495                            ; $5bdd: $cd $95 $64
    ld l, b                                       ; $5be0: $68
    sub a                                         ; $5be1: $97
    adc e                                         ; $5be2: $8b
    sub [hl]                                      ; $5be3: $96
    ld d, a                                       ; $5be4: $57
    halt                                          ; $5be5: $76
    adc b                                         ; $5be6: $88
    adc b                                         ; $5be7: $88
    add [hl]                                      ; $5be8: $86
    ld a, b                                       ; $5be9: $78
    ld d, a                                       ; $5bea: $57
    xor c                                         ; $5beb: $a9
    adc b                                         ; $5bec: $88
    ld d, [hl]                                    ; $5bed: $56
    ld l, b                                       ; $5bee: $68
    sbc b                                         ; $5bef: $98
    add [hl]                                      ; $5bf0: $86
    add a                                         ; $5bf1: $87
    adc b                                         ; $5bf2: $88
    halt                                          ; $5bf3: $76
    add a                                         ; $5bf4: $87
    adc b                                         ; $5bf5: $88
    ld a, b                                       ; $5bf6: $78
    add a                                         ; $5bf7: $87
    ld [hl], a                                    ; $5bf8: $77
    adc b                                         ; $5bf9: $88
    add a                                         ; $5bfa: $87
    ld a, b                                       ; $5bfb: $78
    adc b                                         ; $5bfc: $88
    halt                                          ; $5bfd: $76
    ld l, b                                       ; $5bfe: $68
    adc b                                         ; $5bff: $88
    sbc b                                         ; $5c00: $98
    ld a, b                                       ; $5c01: $78
    adc b                                         ; $5c02: $88
    ld [hl], a                                    ; $5c03: $77
    ld a, c                                       ; $5c04: $79
    add a                                         ; $5c05: $87
    ld [hl], a                                    ; $5c06: $77
    ld a, b                                       ; $5c07: $78
    adc b                                         ; $5c08: $88
    add a                                         ; $5c09: $87
    adc b                                         ; $5c0a: $88
    ld [hl], a                                    ; $5c0b: $77
    ld a, b                                       ; $5c0c: $78
    add a                                         ; $5c0d: $87
    adc b                                         ; $5c0e: $88
    ld [hl], a                                    ; $5c0f: $77
    add a                                         ; $5c10: $87
    ld a, b                                       ; $5c11: $78
    adc b                                         ; $5c12: $88
    ld [hl], a                                    ; $5c13: $77
    adc b                                         ; $5c14: $88
    adc b                                         ; $5c15: $88
    ld [hl], a                                    ; $5c16: $77
    ld a, b                                       ; $5c17: $78
    ld [hl], a                                    ; $5c18: $77
    adc b                                         ; $5c19: $88
    add a                                         ; $5c1a: $87
    ld h, a                                       ; $5c1b: $67
    sbc b                                         ; $5c1c: $98
    ld [hl], a                                    ; $5c1d: $77
    ld a, b                                       ; $5c1e: $78
    ld [hl], a                                    ; $5c1f: $77
    add a                                         ; $5c20: $87
    ld a, b                                       ; $5c21: $78
    add a                                         ; $5c22: $87
    ld a, b                                       ; $5c23: $78
    add a                                         ; $5c24: $87
    ld [hl], a                                    ; $5c25: $77
    adc b                                         ; $5c26: $88
    add a                                         ; $5c27: $87
    ld [hl], a                                    ; $5c28: $77
    adc b                                         ; $5c29: $88
    ld [hl], a                                    ; $5c2a: $77
    ld a, b                                       ; $5c2b: $78
    add a                                         ; $5c2c: $87
    ld a, b                                       ; $5c2d: $78
    ld [hl], a                                    ; $5c2e: $77
    ld [hl], a                                    ; $5c2f: $77
    add a                                         ; $5c30: $87
    add a                                         ; $5c31: $87
    adc b                                         ; $5c32: $88
    ld l, b                                       ; $5c33: $68
    ld [hl], a                                    ; $5c34: $77
    add a                                         ; $5c35: $87
    ld l, c                                       ; $5c36: $69
    add a                                         ; $5c37: $87
    add [hl]                                      ; $5c38: $86
    ld l, c                                       ; $5c39: $69
    ld [hl], a                                    ; $5c3a: $77
    halt                                          ; $5c3b: $76
    ld a, b                                       ; $5c3c: $78
    adc b                                         ; $5c3d: $88
    ld h, a                                       ; $5c3e: $67
    ld a, b                                       ; $5c3f: $78
    add a                                         ; $5c40: $87
    adc b                                         ; $5c41: $88
    add a                                         ; $5c42: $87
    halt                                          ; $5c43: $76
    adc b                                         ; $5c44: $88
    ld [hl], a                                    ; $5c45: $77
    ld a, b                                       ; $5c46: $78
    ld a, b                                       ; $5c47: $78
    ld [hl], a                                    ; $5c48: $77
    adc b                                         ; $5c49: $88
    add a                                         ; $5c4a: $87
    ld a, b                                       ; $5c4b: $78
    ld [hl], a                                    ; $5c4c: $77
    ld [hl], a                                    ; $5c4d: $77
    ld [hl], a                                    ; $5c4e: $77
    add a                                         ; $5c4f: $87
    add a                                         ; $5c50: $87
    adc b                                         ; $5c51: $88
    adc b                                         ; $5c52: $88
    adc b                                         ; $5c53: $88
    add a                                         ; $5c54: $87
    ld [hl], a                                    ; $5c55: $77
    ld [hl], a                                    ; $5c56: $77
    add a                                         ; $5c57: $87
    ld [hl], a                                    ; $5c58: $77
    add a                                         ; $5c59: $87
    ld [hl], a                                    ; $5c5a: $77
    add a                                         ; $5c5b: $87
    ld a, b                                       ; $5c5c: $78
    adc b                                         ; $5c5d: $88
    adc b                                         ; $5c5e: $88
    ld [hl], a                                    ; $5c5f: $77
    adc b                                         ; $5c60: $88
    ld a, b                                       ; $5c61: $78
    ld h, e                                       ; $5c62: $63
    ld e, [hl]                                    ; $5c63: $5e
    push af                                       ; $5c64: $f5
    ld h, [hl]                                    ; $5c65: $66
    ld b, a                                       ; $5c66: $47
    adc c                                         ; $5c67: $89
    sbc d                                         ; $5c68: $9a
    or l                                          ; $5c69: $b5
    ld b, e                                       ; $5c6a: $43
    ld e, d                                       ; $5c6b: $5a
    db $db                                        ; $5c6c: $db
    halt                                          ; $5c6d: $76
    ld h, h                                       ; $5c6e: $64
    ld l, c                                       ; $5c6f: $69
    sub [hl]                                      ; $5c70: $96
    adc d                                         ; $5c71: $8a
    add [hl]                                      ; $5c72: $86
    ld h, [hl]                                    ; $5c73: $66
    ld h, [hl]                                    ; $5c74: $66
    add a                                         ; $5c75: $87
    adc b                                         ; $5c76: $88
    add a                                         ; $5c77: $87
    add [hl]                                      ; $5c78: $86
    ld d, a                                       ; $5c79: $57
    sbc d                                         ; $5c7a: $9a
    adc b                                         ; $5c7b: $88
    ld d, [hl]                                    ; $5c7c: $56
    ld h, a                                       ; $5c7d: $67
    adc b                                         ; $5c7e: $88
    ld l, b                                       ; $5c7f: $68
    sub a                                         ; $5c80: $97
    ld a, b                                       ; $5c81: $78
    ld h, a                                       ; $5c82: $67
    add a                                         ; $5c83: $87
    adc b                                         ; $5c84: $88
    adc b                                         ; $5c85: $88
    add [hl]                                      ; $5c86: $86
    ld l, b                                       ; $5c87: $68
    adc b                                         ; $5c88: $88
    add a                                         ; $5c89: $87
    adc b                                         ; $5c8a: $88
    ld [hl], a                                    ; $5c8b: $77
    halt                                          ; $5c8c: $76
    ld a, c                                       ; $5c8d: $79
    add a                                         ; $5c8e: $87
    add a                                         ; $5c8f: $87
    adc c                                         ; $5c90: $89
    adc b                                         ; $5c91: $88
    ld [hl], a                                    ; $5c92: $77
    adc b                                         ; $5c93: $88
    ld [hl], a                                    ; $5c94: $77
    ld [hl], a                                    ; $5c95: $77
    adc b                                         ; $5c96: $88
    adc b                                         ; $5c97: $88
    ld a, b                                       ; $5c98: $78
    adc b                                         ; $5c99: $88
    ld [hl], a                                    ; $5c9a: $77
    adc b                                         ; $5c9b: $88
    adc b                                         ; $5c9c: $88
    ld [hl], a                                    ; $5c9d: $77
    ld a, b                                       ; $5c9e: $78
    add a                                         ; $5c9f: $87
    adc b                                         ; $5ca0: $88
    adc b                                         ; $5ca1: $88
    ld [hl], a                                    ; $5ca2: $77
    add a                                         ; $5ca3: $87
    adc b                                         ; $5ca4: $88
    ld [hl], a                                    ; $5ca5: $77
    adc b                                         ; $5ca6: $88
    adc b                                         ; $5ca7: $88
    ld [hl], a                                    ; $5ca8: $77
    ld [hl], a                                    ; $5ca9: $77
    ld a, b                                       ; $5caa: $78
    add a                                         ; $5cab: $87
    ld a, b                                       ; $5cac: $78
    adc b                                         ; $5cad: $88
    ld [hl], a                                    ; $5cae: $77
    add a                                         ; $5caf: $87
    add a                                         ; $5cb0: $87
    ld [hl], a                                    ; $5cb1: $77
    adc b                                         ; $5cb2: $88
    ld [hl], a                                    ; $5cb3: $77
    ld [hl], a                                    ; $5cb4: $77
    adc b                                         ; $5cb5: $88
    ld [hl], a                                    ; $5cb6: $77
    ld a, b                                       ; $5cb7: $78
    ld [hl], a                                    ; $5cb8: $77
    ld [hl], a                                    ; $5cb9: $77
    ld [hl], a                                    ; $5cba: $77
    ld [hl], a                                    ; $5cbb: $77
    ld a, b                                       ; $5cbc: $78
    ld [hl], a                                    ; $5cbd: $77
    ld [hl], a                                    ; $5cbe: $77
    ld a, b                                       ; $5cbf: $78
    adc b                                         ; $5cc0: $88
    ld [hl], a                                    ; $5cc1: $77
    ld [hl], a                                    ; $5cc2: $77
    ld [hl], a                                    ; $5cc3: $77
    adc b                                         ; $5cc4: $88
    add a                                         ; $5cc5: $87
    ld [hl], a                                    ; $5cc6: $77
    ld [hl], a                                    ; $5cc7: $77
    ld [hl], a                                    ; $5cc8: $77
    ld [hl], a                                    ; $5cc9: $77
    ld [hl], a                                    ; $5cca: $77
    ld [hl], a                                    ; $5ccb: $77
    add a                                         ; $5ccc: $87
    adc b                                         ; $5ccd: $88
    ld [hl], a                                    ; $5cce: $77
    adc b                                         ; $5ccf: $88
    add a                                         ; $5cd0: $87
    ld [hl], a                                    ; $5cd1: $77
    ld a, b                                       ; $5cd2: $78
    add a                                         ; $5cd3: $87
    ld [hl], a                                    ; $5cd4: $77
    adc b                                         ; $5cd5: $88
    add a                                         ; $5cd6: $87
    ld [hl], a                                    ; $5cd7: $77
    ld [hl], a                                    ; $5cd8: $77
    ld a, b                                       ; $5cd9: $78
    adc b                                         ; $5cda: $88
    halt                                          ; $5cdb: $76
    ld a, b                                       ; $5cdc: $78
    sbc b                                         ; $5cdd: $98
    add a                                         ; $5cde: $87
    ld [hl], a                                    ; $5cdf: $77
    add [hl]                                      ; $5ce0: $86
    adc d                                         ; $5ce1: $8a
    add [hl]                                      ; $5ce2: $86
    or a                                          ; $5ce3: $b7
    dec de                                        ; $5ce4: $1b
    sub c                                         ; $5ce5: $91
    xor c                                         ; $5ce6: $a9
    ld [hl], h                                    ; $5ce7: $74
    ld l, e                                       ; $5ce8: $6b
    adc b                                         ; $5ce9: $88
    add a                                         ; $5cea: $87
    adc b                                         ; $5ceb: $88
    scf                                           ; $5cec: $37
    sub l                                         ; $5ced: $95
    db $fc                                        ; $5cee: $fc
    rlca                                          ; $5cef: $07
    or l                                          ; $5cf0: $b5
    ld [hl], a                                    ; $5cf1: $77
    ld h, [hl]                                    ; $5cf2: $66
    ld a, c                                       ; $5cf3: $79
    ld a, b                                       ; $5cf4: $78
    ld a, e                                       ; $5cf5: $7b
    xor b                                         ; $5cf6: $a8
    ld h, l                                       ; $5cf7: $65
    xor e                                         ; $5cf8: $ab
    add h                                         ; $5cf9: $84
    ld l, b                                       ; $5cfa: $68
    add a                                         ; $5cfb: $87
    sub a                                         ; $5cfc: $97
    sbc c                                         ; $5cfd: $99
    ld d, a                                       ; $5cfe: $57
    halt                                          ; $5cff: $76
    or [hl]                                       ; $5d00: $b6
    ld l, b                                       ; $5d01: $68
    adc c                                         ; $5d02: $89
    and a                                         ; $5d03: $a7
    add [hl]                                      ; $5d04: $86
    ld a, e                                       ; $5d05: $7b
    halt                                          ; $5d06: $76
    add a                                         ; $5d07: $87
    ld a, b                                       ; $5d08: $78
    ld a, c                                       ; $5d09: $79
    add a                                         ; $5d0a: $87
    ld a, b                                       ; $5d0b: $78
    adc b                                         ; $5d0c: $88
    add a                                         ; $5d0d: $87
    ld [hl], a                                    ; $5d0e: $77
    sbc e                                         ; $5d0f: $9b
    add a                                         ; $5d10: $87
    ld a, c                                       ; $5d11: $79
    ld [hl], a                                    ; $5d12: $77
    adc b                                         ; $5d13: $88
    add a                                         ; $5d14: $87
    sub a                                         ; $5d15: $97
    ld h, a                                       ; $5d16: $67
    adc b                                         ; $5d17: $88
    adc b                                         ; $5d18: $88
    adc b                                         ; $5d19: $88
    halt                                          ; $5d1a: $76
    adc c                                         ; $5d1b: $89
    sbc b                                         ; $5d1c: $98
    ld [hl], a                                    ; $5d1d: $77
    ld [hl], a                                    ; $5d1e: $77
    add a                                         ; $5d1f: $87
    adc b                                         ; $5d20: $88
    adc b                                         ; $5d21: $88
    adc b                                         ; $5d22: $88
    add a                                         ; $5d23: $87
    add [hl]                                      ; $5d24: $86
    ld a, b                                       ; $5d25: $78
    adc b                                         ; $5d26: $88
    ld a, b                                       ; $5d27: $78
    adc b                                         ; $5d28: $88
    add a                                         ; $5d29: $87
    ld a, b                                       ; $5d2a: $78
    adc c                                         ; $5d2b: $89
    add a                                         ; $5d2c: $87
    ld [hl], a                                    ; $5d2d: $77
    ld [hl], a                                    ; $5d2e: $77
    adc b                                         ; $5d2f: $88
    adc b                                         ; $5d30: $88
    ld a, b                                       ; $5d31: $78
    add a                                         ; $5d32: $87
    add a                                         ; $5d33: $87
    adc b                                         ; $5d34: $88
    add a                                         ; $5d35: $87
    ld a, b                                       ; $5d36: $78
    ld [hl], a                                    ; $5d37: $77
    add a                                         ; $5d38: $87
    adc b                                         ; $5d39: $88
    add a                                         ; $5d3a: $87
    ld [hl], a                                    ; $5d3b: $77
    ld [hl], a                                    ; $5d3c: $77
    ld a, b                                       ; $5d3d: $78
    adc b                                         ; $5d3e: $88
    add a                                         ; $5d3f: $87
    adc b                                         ; $5d40: $88
    ld a, b                                       ; $5d41: $78
    add a                                         ; $5d42: $87
    ld a, b                                       ; $5d43: $78
    ld [hl], a                                    ; $5d44: $77
    adc b                                         ; $5d45: $88
    adc b                                         ; $5d46: $88
    ld [hl], a                                    ; $5d47: $77
    adc b                                         ; $5d48: $88
    ld a, b                                       ; $5d49: $78
    ld a, b                                       ; $5d4a: $78
    ld h, d                                       ; $5d4b: $62
    ld c, a                                       ; $5d4c: $4f
    db $e4                                        ; $5d4d: $e4
    ld h, [hl]                                    ; $5d4e: $66
    ld h, a                                       ; $5d4f: $67
    adc c                                         ; $5d50: $89
    sbc c                                         ; $5d51: $99
    and l                                         ; $5d52: $a5
    ld d, h                                       ; $5d53: $54
    ld l, c                                       ; $5d54: $69
    cp b                                          ; $5d55: $b8
    ld [hl], a                                    ; $5d56: $77
    add l                                         ; $5d57: $85
    ld l, c                                       ; $5d58: $69
    add [hl]                                      ; $5d59: $86
    adc d                                         ; $5d5a: $8a
    ld [hl], a                                    ; $5d5b: $77
    halt                                          ; $5d5c: $76
    ld h, [hl]                                    ; $5d5d: $66
    ld a, b                                       ; $5d5e: $78
    add a                                         ; $5d5f: $87
    adc b                                         ; $5d60: $88
    add [hl]                                      ; $5d61: $86
    ld d, a                                       ; $5d62: $57
    ld a, b                                       ; $5d63: $78
    add a                                         ; $5d64: $87
    ld [hl], a                                    ; $5d65: $77
    ld l, b                                       ; $5d66: $68
    adc b                                         ; $5d67: $88
    ld h, a                                       ; $5d68: $67
    add [hl]                                      ; $5d69: $86
    adc b                                         ; $5d6a: $88
    ld [hl], a                                    ; $5d6b: $77
    add a                                         ; $5d6c: $87
    ld [hl], a                                    ; $5d6d: $77
    ld a, b                                       ; $5d6e: $78
    add a                                         ; $5d6f: $87
    ld h, a                                       ; $5d70: $67
    adc b                                         ; $5d71: $88
    add a                                         ; $5d72: $87
    ld [hl], a                                    ; $5d73: $77
    ld [hl], a                                    ; $5d74: $77
    ld h, [hl]                                    ; $5d75: $66
    adc c                                         ; $5d76: $89
    ld [hl], a                                    ; $5d77: $77
    add a                                         ; $5d78: $87
    adc b                                         ; $5d79: $88
    ld [hl], a                                    ; $5d7a: $77
    ld [hl], a                                    ; $5d7b: $77
    adc b                                         ; $5d7c: $88
    add a                                         ; $5d7d: $87
    ld h, a                                       ; $5d7e: $67
    ld a, b                                       ; $5d7f: $78
    add a                                         ; $5d80: $87
    ld [hl], a                                    ; $5d81: $77
    ld [hl], a                                    ; $5d82: $77
    ld [hl], a                                    ; $5d83: $77
    ld [hl], a                                    ; $5d84: $77
    ld [hl], a                                    ; $5d85: $77
    ld [hl], a                                    ; $5d86: $77
    ld [hl], a                                    ; $5d87: $77
    ld [hl], a                                    ; $5d88: $77
    ld [hl], a                                    ; $5d89: $77
    ld [hl], a                                    ; $5d8a: $77
    ld [hl], a                                    ; $5d8b: $77
    adc b                                         ; $5d8c: $88
    add a                                         ; $5d8d: $87
    halt                                          ; $5d8e: $76
    ld a, b                                       ; $5d8f: $78
    adc b                                         ; $5d90: $88
    ld [hl], a                                    ; $5d91: $77
    ld [hl], a                                    ; $5d92: $77
    ld a, b                                       ; $5d93: $78
    add a                                         ; $5d94: $87
    ld a, b                                       ; $5d95: $78
    ld [hl], a                                    ; $5d96: $77
    ld [hl], a                                    ; $5d97: $77
    add a                                         ; $5d98: $87
    adc b                                         ; $5d99: $88
    ld a, b                                       ; $5d9a: $78
    ld a, b                                       ; $5d9b: $78
    ld [hl], a                                    ; $5d9c: $77
    ld a, b                                       ; $5d9d: $78
    adc b                                         ; $5d9e: $88
    ld [hl], a                                    ; $5d9f: $77
    add a                                         ; $5da0: $87
    add a                                         ; $5da1: $87
    ld a, b                                       ; $5da2: $78
    ld a, b                                       ; $5da3: $78
    ld [hl], a                                    ; $5da4: $77
    ld a, c                                       ; $5da5: $79
    add a                                         ; $5da6: $87
    ld [hl], a                                    ; $5da7: $77
    ld [hl], a                                    ; $5da8: $77
    adc b                                         ; $5da9: $88
    adc b                                         ; $5daa: $88
    ld [hl], a                                    ; $5dab: $77
    ld [hl], a                                    ; $5dac: $77
    ld a, b                                       ; $5dad: $78
    add a                                         ; $5dae: $87
    ld [hl], a                                    ; $5daf: $77
    add a                                         ; $5db0: $87
    adc b                                         ; $5db1: $88
    ld a, b                                       ; $5db2: $78
    ld [hl], a                                    ; $5db3: $77
    adc b                                         ; $5db4: $88
    add [hl]                                      ; $5db5: $86
    adc b                                         ; $5db6: $88
    ld l, c                                       ; $5db7: $69
    ld [hl], a                                    ; $5db8: $77
    add a                                         ; $5db9: $87
    ld l, b                                       ; $5dba: $68
    ld a, c                                       ; $5dbb: $79
    sub l                                         ; $5dbc: $95
    ld l, c                                       ; $5dbd: $69
    sbc b                                         ; $5dbe: $98
    ld a, b                                       ; $5dbf: $78
    add a                                         ; $5dc0: $87
    sbc c                                         ; $5dc1: $99
    ld h, a                                       ; $5dc2: $67
    adc b                                         ; $5dc3: $88
    add a                                         ; $5dc4: $87
    ld a, b                                       ; $5dc5: $78
    adc b                                         ; $5dc6: $88
    sbc b                                         ; $5dc7: $98
    ld [hl], a                                    ; $5dc8: $77
    ld a, b                                       ; $5dc9: $78
    add a                                         ; $5dca: $87
    add a                                         ; $5dcb: $87
    ld [hl], a                                    ; $5dcc: $77
    ld [hl], a                                    ; $5dcd: $77
    sub a                                         ; $5dce: $97
    adc b                                         ; $5dcf: $88
    adc c                                         ; $5dd0: $89
    add a                                         ; $5dd1: $87
    ld h, a                                       ; $5dd2: $67
    sbc b                                         ; $5dd3: $98
    ld l, b                                       ; $5dd4: $68
    adc b                                         ; $5dd5: $88
    add a                                         ; $5dd6: $87
    add a                                         ; $5dd7: $87
    ld a, b                                       ; $5dd8: $78
    ld [hl], a                                    ; $5dd9: $77
    adc c                                         ; $5dda: $89
    add a                                         ; $5ddb: $87
    ld [hl], a                                    ; $5ddc: $77
    add a                                         ; $5ddd: $87
    add a                                         ; $5dde: $87
    adc b                                         ; $5ddf: $88
    add a                                         ; $5de0: $87
    adc b                                         ; $5de1: $88
    add a                                         ; $5de2: $87
    ld [hl], a                                    ; $5de3: $77
    adc b                                         ; $5de4: $88
    adc b                                         ; $5de5: $88
    ld [hl], a                                    ; $5de6: $77
    ld a, b                                       ; $5de7: $78
    add a                                         ; $5de8: $87
    adc b                                         ; $5de9: $88
    adc b                                         ; $5dea: $88
    ld [hl], a                                    ; $5deb: $77
    ld a, b                                       ; $5dec: $78
    adc b                                         ; $5ded: $88
    add a                                         ; $5dee: $87
    adc b                                         ; $5def: $88
    adc b                                         ; $5df0: $88
    ld [hl], a                                    ; $5df1: $77
    add a                                         ; $5df2: $87
    adc b                                         ; $5df3: $88
    add a                                         ; $5df4: $87
    adc b                                         ; $5df5: $88
    ld a, b                                       ; $5df6: $78
    ld [hl], a                                    ; $5df7: $77
    adc b                                         ; $5df8: $88
    add a                                         ; $5df9: $87
    ld [hl], a                                    ; $5dfa: $77
    adc b                                         ; $5dfb: $88
    adc b                                         ; $5dfc: $88
    add a                                         ; $5dfd: $87
    add a                                         ; $5dfe: $87
    add [hl]                                      ; $5dff: $86
    dec [hl]                                      ; $5e00: $35
    db $fd                                        ; $5e01: $fd
    ld b, a                                       ; $5e02: $47
    ld h, l                                       ; $5e03: $65
    ld h, a                                       ; $5e04: $67
    sbc c                                         ; $5e05: $99
    adc c                                         ; $5e06: $89
    ld h, [hl]                                    ; $5e07: $66
    ld b, [hl]                                    ; $5e08: $46
    sbc d                                         ; $5e09: $9a
    add a                                         ; $5e0a: $87
    ld a, b                                       ; $5e0b: $78
    ld b, [hl]                                    ; $5e0c: $46
    sbc b                                         ; $5e0d: $98
    ld l, c                                       ; $5e0e: $69
    sub [hl]                                      ; $5e0f: $96
    add a                                         ; $5e10: $87
    ld h, a                                       ; $5e11: $67
    ld [hl], a                                    ; $5e12: $77
    ld a, b                                       ; $5e13: $78
    ld a, c                                       ; $5e14: $79
    adc b                                         ; $5e15: $88
    ld h, l                                       ; $5e16: $65
    ld a, b                                       ; $5e17: $78
    ld a, b                                       ; $5e18: $78
    add a                                         ; $5e19: $87
    ld [hl], a                                    ; $5e1a: $77
    add a                                         ; $5e1b: $87
    halt                                          ; $5e1c: $76
    adc b                                         ; $5e1d: $88
    ld l, b                                       ; $5e1e: $68
    add [hl]                                      ; $5e1f: $86
    add a                                         ; $5e20: $87
    ld a, b                                       ; $5e21: $78
    ld [hl], a                                    ; $5e22: $77
    adc b                                         ; $5e23: $88
    ld h, a                                       ; $5e24: $67
    ld a, b                                       ; $5e25: $78
    adc b                                         ; $5e26: $88
    ld [hl], a                                    ; $5e27: $77
    ld [hl], a                                    ; $5e28: $77
    ld [hl], a                                    ; $5e29: $77
    adc b                                         ; $5e2a: $88
    add [hl]                                      ; $5e2b: $86
    ld h, a                                       ; $5e2c: $67
    ld a, b                                       ; $5e2d: $78
    adc b                                         ; $5e2e: $88
    halt                                          ; $5e2f: $76
    add a                                         ; $5e30: $87
    add a                                         ; $5e31: $87
    ld [hl], a                                    ; $5e32: $77
    adc b                                         ; $5e33: $88
    adc b                                         ; $5e34: $88
    halt                                          ; $5e35: $76
    ld [hl], a                                    ; $5e36: $77
    add a                                         ; $5e37: $87
    ld a, b                                       ; $5e38: $78
    ld [hl], a                                    ; $5e39: $77
    ld [hl], a                                    ; $5e3a: $77
    xor b                                         ; $5e3b: $a8
    ld h, l                                       ; $5e3c: $65
    ld a, d                                       ; $5e3d: $7a
    add a                                         ; $5e3e: $87
    ld h, [hl]                                    ; $5e3f: $66
    add [hl]                                      ; $5e40: $86
    ld a, b                                       ; $5e41: $78
    ld e, e                                       ; $5e42: $5b
    and h                                         ; $5e43: $a4
    ld a, e                                       ; $5e44: $7b
    ld b, [hl]                                    ; $5e45: $46
    sub a                                         ; $5e46: $97
    ld c, c                                       ; $5e47: $49
    or h                                          ; $5e48: $b4
    ld a, h                                       ; $5e49: $7c
    adc e                                         ; $5e4a: $8b
    ld d, l                                       ; $5e4b: $55
    ld l, b                                       ; $5e4c: $68
    add [hl]                                      ; $5e4d: $86
    ld b, [hl]                                    ; $5e4e: $46
    ld a, e                                       ; $5e4f: $7b
    cp b                                          ; $5e50: $b8
    ld e, b                                       ; $5e51: $58
    add [hl]                                      ; $5e52: $86
    ld a, b                                       ; $5e53: $78
    adc c                                         ; $5e54: $89
    ld h, l                                       ; $5e55: $65
    ld l, b                                       ; $5e56: $68
    xor b                                         ; $5e57: $a8
    halt                                          ; $5e58: $76
    ld a, b                                       ; $5e59: $78
    or a                                          ; $5e5a: $b7
    ld b, [hl]                                    ; $5e5b: $46
    add [hl]                                      ; $5e5c: $86
    add a                                         ; $5e5d: $87
    adc b                                         ; $5e5e: $88
    ld a, c                                       ; $5e5f: $79
    add [hl]                                      ; $5e60: $86
    ld [hl], a                                    ; $5e61: $77
    adc b                                         ; $5e62: $88
    adc b                                         ; $5e63: $88
    halt                                          ; $5e64: $76
    ld a, b                                       ; $5e65: $78
    sbc b                                         ; $5e66: $98
    ld l, b                                       ; $5e67: $68
    add a                                         ; $5e68: $87
    ld a, b                                       ; $5e69: $78
    halt                                          ; $5e6a: $76
    ld a, b                                       ; $5e6b: $78
    ld a, b                                       ; $5e6c: $78
    add a                                         ; $5e6d: $87
    adc b                                         ; $5e6e: $88
    ld h, a                                       ; $5e6f: $67
    sbc b                                         ; $5e70: $98
    adc b                                         ; $5e71: $88
    ld [hl], a                                    ; $5e72: $77
    adc b                                         ; $5e73: $88
    halt                                          ; $5e74: $76
    add a                                         ; $5e75: $87
    adc b                                         ; $5e76: $88
    adc b                                         ; $5e77: $88
    ld a, b                                       ; $5e78: $78
    ld [hl], a                                    ; $5e79: $77
    adc b                                         ; $5e7a: $88
    adc b                                         ; $5e7b: $88
    ld a, b                                       ; $5e7c: $78
    add a                                         ; $5e7d: $87
    ld a, b                                       ; $5e7e: $78
    adc b                                         ; $5e7f: $88
    adc b                                         ; $5e80: $88
    add a                                         ; $5e81: $87
    ld [hl], a                                    ; $5e82: $77
    adc b                                         ; $5e83: $88
    add a                                         ; $5e84: $87
    adc b                                         ; $5e85: $88
    adc b                                         ; $5e86: $88
    ld [hl], a                                    ; $5e87: $77
    ld [hl], a                                    ; $5e88: $77
    adc b                                         ; $5e89: $88
    ld a, b                                       ; $5e8a: $78
    adc b                                         ; $5e8b: $88
    adc b                                         ; $5e8c: $88
    add a                                         ; $5e8d: $87
    add a                                         ; $5e8e: $87
    adc b                                         ; $5e8f: $88
    add a                                         ; $5e90: $87
    adc b                                         ; $5e91: $88
    adc b                                         ; $5e92: $88
    add a                                         ; $5e93: $87
    ld [hl], a                                    ; $5e94: $77
    add a                                         ; $5e95: $87
    inc hl                                        ; $5e96: $23
    rst $18                                       ; $5e97: $df
    ld h, [hl]                                    ; $5e98: $66
    ld h, l                                       ; $5e99: $65
    ld h, a                                       ; $5e9a: $67
    sbc c                                         ; $5e9b: $99
    adc d                                         ; $5e9c: $8a
    ld [hl], a                                    ; $5e9d: $77
    ld b, l                                       ; $5e9e: $45
    adc d                                         ; $5e9f: $8a
    and a                                         ; $5ea0: $a7
    ld l, b                                       ; $5ea1: $68
    ld h, [hl]                                    ; $5ea2: $66
    sbc b                                         ; $5ea3: $98
    ld a, b                                       ; $5ea4: $78
    and a                                         ; $5ea5: $a7
    ld h, a                                       ; $5ea6: $67
    ld [hl], a                                    ; $5ea7: $77
    ld [hl], a                                    ; $5ea8: $77
    ld a, b                                       ; $5ea9: $78
    ld a, b                                       ; $5eaa: $78
    add a                                         ; $5eab: $87
    halt                                          ; $5eac: $76
    ld a, b                                       ; $5ead: $78
    adc b                                         ; $5eae: $88
    sub a                                         ; $5eaf: $97
    ld h, [hl]                                    ; $5eb0: $66
    adc b                                         ; $5eb1: $88
    ld [hl], a                                    ; $5eb2: $77
    ld a, b                                       ; $5eb3: $78
    ld l, b                                       ; $5eb4: $68
    add a                                         ; $5eb5: $87
    ld a, b                                       ; $5eb6: $78
    ld a, b                                       ; $5eb7: $78
    add a                                         ; $5eb8: $87
    adc b                                         ; $5eb9: $88
    ld h, [hl]                                    ; $5eba: $66
    ld a, b                                       ; $5ebb: $78
    adc b                                         ; $5ebc: $88
    add a                                         ; $5ebd: $87
    ld [hl], a                                    ; $5ebe: $77
    ld [hl], a                                    ; $5ebf: $77
    adc b                                         ; $5ec0: $88
    add a                                         ; $5ec1: $87
    ld a, b                                       ; $5ec2: $78
    ld [hl], a                                    ; $5ec3: $77
    adc b                                         ; $5ec4: $88
    add a                                         ; $5ec5: $87
    ld l, b                                       ; $5ec6: $68
    add a                                         ; $5ec7: $87
    ld [hl], a                                    ; $5ec8: $77
    ld a, b                                       ; $5ec9: $78
    adc b                                         ; $5eca: $88
    add a                                         ; $5ecb: $87
    ld [hl], a                                    ; $5ecc: $77
    add a                                         ; $5ecd: $87
    ld [hl], a                                    ; $5ece: $77
    ld a, b                                       ; $5ecf: $78
    adc b                                         ; $5ed0: $88
    add a                                         ; $5ed1: $87
    ld a, b                                       ; $5ed2: $78
    ld [hl], a                                    ; $5ed3: $77
    ld a, b                                       ; $5ed4: $78
    add a                                         ; $5ed5: $87
    ld a, b                                       ; $5ed6: $78
    ld [hl], a                                    ; $5ed7: $77
    halt                                          ; $5ed8: $76
    ld a, b                                       ; $5ed9: $78
    adc b                                         ; $5eda: $88
    ld [hl], a                                    ; $5edb: $77
    ld [hl], a                                    ; $5edc: $77
    ld [hl], a                                    ; $5edd: $77
    ld a, b                                       ; $5ede: $78
    ld [hl], a                                    ; $5edf: $77
    add a                                         ; $5ee0: $87
    ld a, b                                       ; $5ee1: $78
    ld [hl], a                                    ; $5ee2: $77
    ld [hl], a                                    ; $5ee3: $77
    adc b                                         ; $5ee4: $88
    ld [hl], a                                    ; $5ee5: $77
    ld l, b                                       ; $5ee6: $68
    ld [hl], a                                    ; $5ee7: $77
    sub a                                         ; $5ee8: $97
    ld a, c                                       ; $5ee9: $79
    add [hl]                                      ; $5eea: $86
    ld [hl], a                                    ; $5eeb: $77
    adc b                                         ; $5eec: $88
    ld a, b                                       ; $5eed: $78
    add [hl]                                      ; $5eee: $86
    ld [hl], a                                    ; $5eef: $77
    adc b                                         ; $5ef0: $88
    ld h, a                                       ; $5ef1: $67
    ld [hl], a                                    ; $5ef2: $77
    ld [hl], a                                    ; $5ef3: $77
    ld a, b                                       ; $5ef4: $78
    ld a, b                                       ; $5ef5: $78
    ld [hl], a                                    ; $5ef6: $77
    ld [hl], a                                    ; $5ef7: $77
    ld a, b                                       ; $5ef8: $78
    ld a, b                                       ; $5ef9: $78
    ld [hl], a                                    ; $5efa: $77
    ld a, b                                       ; $5efb: $78
    add a                                         ; $5efc: $87
    ld [hl], a                                    ; $5efd: $77
    ld a, b                                       ; $5efe: $78
    ld a, b                                       ; $5eff: $78
    add a                                         ; $5f00: $87
    add a                                         ; $5f01: $87
    ld [hl], a                                    ; $5f02: $77
    adc b                                         ; $5f03: $88
    ld [hl], a                                    ; $5f04: $77
    ld a, b                                       ; $5f05: $78
    adc b                                         ; $5f06: $88
    add a                                         ; $5f07: $87
    ld a, b                                       ; $5f08: $78
    adc b                                         ; $5f09: $88
    add a                                         ; $5f0a: $87
    add a                                         ; $5f0b: $87
    ld a, b                                       ; $5f0c: $78
    add a                                         ; $5f0d: $87
    ld [hl], a                                    ; $5f0e: $77
    ld [hl], a                                    ; $5f0f: $77
    adc b                                         ; $5f10: $88
    adc b                                         ; $5f11: $88
    adc b                                         ; $5f12: $88
    ld [hl], a                                    ; $5f13: $77
    ld a, b                                       ; $5f14: $78
    adc b                                         ; $5f15: $88
    add a                                         ; $5f16: $87
    ld [hl], a                                    ; $5f17: $77
    ld a, b                                       ; $5f18: $78
    ld a, b                                       ; $5f19: $78
    add a                                         ; $5f1a: $87
    ld a, b                                       ; $5f1b: $78
    ld a, b                                       ; $5f1c: $78
    ld [hl], a                                    ; $5f1d: $77
    add a                                         ; $5f1e: $87
    ld a, b                                       ; $5f1f: $78
    add a                                         ; $5f20: $87
    add a                                         ; $5f21: $87
    ld a, b                                       ; $5f22: $78
    add a                                         ; $5f23: $87
    ld a, b                                       ; $5f24: $78
    ld [hl], a                                    ; $5f25: $77
    ld b, d                                       ; $5f26: $42
    xor a                                         ; $5f27: $af
    add [hl]                                      ; $5f28: $86
    ld [hl], l                                    ; $5f29: $75
    ld d, a                                       ; $5f2a: $57
    adc c                                         ; $5f2b: $89
    adc d                                         ; $5f2c: $8a
    add a                                         ; $5f2d: $87
    ld d, h                                       ; $5f2e: $54
    adc c                                         ; $5f2f: $89
    sbc b                                         ; $5f30: $98
    ld a, b                                       ; $5f31: $78
    ld [hl], l                                    ; $5f32: $75
    sbc b                                         ; $5f33: $98
    ld a, b                                       ; $5f34: $78
    xor b                                         ; $5f35: $a8
    ld h, a                                       ; $5f36: $67
    ld a, b                                       ; $5f37: $78
    ld [hl], a                                    ; $5f38: $77
    ld [hl], a                                    ; $5f39: $77
    ld a, b                                       ; $5f3a: $78
    sub a                                         ; $5f3b: $97
    ld [hl], a                                    ; $5f3c: $77
    ld [hl], a                                    ; $5f3d: $77
    add a                                         ; $5f3e: $87
    adc c                                         ; $5f3f: $89
    add a                                         ; $5f40: $87
    ld h, a                                       ; $5f41: $67
    add a                                         ; $5f42: $87
    ld a, b                                       ; $5f43: $78
    ld l, b                                       ; $5f44: $68
    halt                                          ; $5f45: $76
    adc b                                         ; $5f46: $88
    adc d                                         ; $5f47: $8a
    ld d, a                                       ; $5f48: $57
    and [hl]                                      ; $5f49: $a6
    add a                                         ; $5f4a: $87
    ld h, a                                       ; $5f4b: $67
    ld a, c                                       ; $5f4c: $79
    ld a, b                                       ; $5f4d: $78
    adc b                                         ; $5f4e: $88
    ld [hl], a                                    ; $5f4f: $77
    add a                                         ; $5f50: $87
    sub a                                         ; $5f51: $97
    ld [hl], a                                    ; $5f52: $77
    ld l, b                                       ; $5f53: $68
    adc b                                         ; $5f54: $88
    add a                                         ; $5f55: $87
    ld a, b                                       ; $5f56: $78
    ld [hl], l                                    ; $5f57: $75
    ld [hl], a                                    ; $5f58: $77
    adc b                                         ; $5f59: $88
    ld a, b                                       ; $5f5a: $78
    add a                                         ; $5f5b: $87
    ld [hl], a                                    ; $5f5c: $77
    ld [hl], a                                    ; $5f5d: $77
    adc b                                         ; $5f5e: $88
    ld [hl], a                                    ; $5f5f: $77
    add a                                         ; $5f60: $87
    ld [hl], a                                    ; $5f61: $77
    halt                                          ; $5f62: $76
    ld l, b                                       ; $5f63: $68
    adc b                                         ; $5f64: $88
    add a                                         ; $5f65: $87
    adc e                                         ; $5f66: $8b
    ld a, c                                       ; $5f67: $79
    add [hl]                                      ; $5f68: $86
    ld h, [hl]                                    ; $5f69: $66
    ld h, [hl]                                    ; $5f6a: $66
    add a                                         ; $5f6b: $87
    adc c                                         ; $5f6c: $89
    sub a                                         ; $5f6d: $97
    ld l, b                                       ; $5f6e: $68
    ld a, b                                       ; $5f6f: $78
    adc b                                         ; $5f70: $88
    adc b                                         ; $5f71: $88
    ld h, a                                       ; $5f72: $67
    ld h, a                                       ; $5f73: $67
    adc b                                         ; $5f74: $88
    adc b                                         ; $5f75: $88
    add a                                         ; $5f76: $87
    add a                                         ; $5f77: $87
    ld h, a                                       ; $5f78: $67
    add a                                         ; $5f79: $87
    ld [hl], a                                    ; $5f7a: $77
    ld [hl], a                                    ; $5f7b: $77
    adc c                                         ; $5f7c: $89
    add [hl]                                      ; $5f7d: $86
    ld [hl], a                                    ; $5f7e: $77
    ld a, b                                       ; $5f7f: $78
    add a                                         ; $5f80: $87
    ld a, b                                       ; $5f81: $78
    ld a, b                                       ; $5f82: $78
    adc b                                         ; $5f83: $88
    adc b                                         ; $5f84: $88
    add a                                         ; $5f85: $87
    add a                                         ; $5f86: $87
    ld h, [hl]                                    ; $5f87: $66
    adc b                                         ; $5f88: $88
    add a                                         ; $5f89: $87
    ld [hl], a                                    ; $5f8a: $77
    sbc c                                         ; $5f8b: $99
    ld [hl], a                                    ; $5f8c: $77
    adc b                                         ; $5f8d: $88
    adc b                                         ; $5f8e: $88
    ld a, b                                       ; $5f8f: $78
    add a                                         ; $5f90: $87
    ld a, b                                       ; $5f91: $78
    ld [hl], a                                    ; $5f92: $77
    ld a, b                                       ; $5f93: $78
    ld [hl], a                                    ; $5f94: $77
    ld [hl], a                                    ; $5f95: $77
    adc b                                         ; $5f96: $88
    ld a, b                                       ; $5f97: $78
    add a                                         ; $5f98: $87
    ld a, b                                       ; $5f99: $78
    ld [hl], a                                    ; $5f9a: $77
    add a                                         ; $5f9b: $87
    ld [hl], a                                    ; $5f9c: $77
    adc b                                         ; $5f9d: $88
    ld [hl], a                                    ; $5f9e: $77
    ld [hl], a                                    ; $5f9f: $77
    add a                                         ; $5fa0: $87
    ld a, b                                       ; $5fa1: $78
    add a                                         ; $5fa2: $87
    ld [hl], a                                    ; $5fa3: $77
    ld a, b                                       ; $5fa4: $78
    adc b                                         ; $5fa5: $88
    add a                                         ; $5fa6: $87
    ld [hl], a                                    ; $5fa7: $77
    ld [hl], a                                    ; $5fa8: $77
    ld a, b                                       ; $5fa9: $78
    add a                                         ; $5faa: $87
    ld [hl], a                                    ; $5fab: $77
    add a                                         ; $5fac: $87
    ld [hl], a                                    ; $5fad: $77
    ld a, b                                       ; $5fae: $78
    ld [hl], a                                    ; $5faf: $77
    adc b                                         ; $5fb0: $88
    add a                                         ; $5fb1: $87
    ld [hl], a                                    ; $5fb2: $77
    ld [hl], a                                    ; $5fb3: $77
    add a                                         ; $5fb4: $87
    ld a, b                                       ; $5fb5: $78
    ld [hl], a                                    ; $5fb6: $77
    ld a, b                                       ; $5fb7: $78
    add a                                         ; $5fb8: $87
    add a                                         ; $5fb9: $87
    ld [hl], a                                    ; $5fba: $77
    ld a, b                                       ; $5fbb: $78
    adc b                                         ; $5fbc: $88
    add a                                         ; $5fbd: $87

jr_018_5fbe:
    ld [hl], a                                    ; $5fbe: $77
    ld [hl], a                                    ; $5fbf: $77
    add a                                         ; $5fc0: $87
    ld [hl], a                                    ; $5fc1: $77
    add l                                         ; $5fc2: $85
    jr z, jr_018_5fbe                             ; $5fc3: $28 $f9

    ld d, a                                       ; $5fc5: $57
    ld h, l                                       ; $5fc6: $65
    ld a, b                                       ; $5fc7: $78
    sbc c                                         ; $5fc8: $99
    xor c                                         ; $5fc9: $a9
    halt                                          ; $5fca: $76
    ld b, a                                       ; $5fcb: $47
    sbc c                                         ; $5fcc: $99
    add a                                         ; $5fcd: $87
    add a                                         ; $5fce: $87
    ld e, b                                       ; $5fcf: $58
    sub a                                         ; $5fd0: $97
    adc c                                         ; $5fd1: $89
    add [hl]                                      ; $5fd2: $86
    ld [hl], a                                    ; $5fd3: $77
    ld a, b                                       ; $5fd4: $78
    ld a, b                                       ; $5fd5: $78
    halt                                          ; $5fd6: $76
    ld a, b                                       ; $5fd7: $78
    adc b                                         ; $5fd8: $88
    ld [hl], a                                    ; $5fd9: $77
    ld a, b                                       ; $5fda: $78
    adc b                                         ; $5fdb: $88
    halt                                          ; $5fdc: $76
    ld a, b                                       ; $5fdd: $78
    ld h, [hl]                                    ; $5fde: $66
    add a                                         ; $5fdf: $87
    sbc b                                         ; $5fe0: $98
    ld l, b                                       ; $5fe1: $68
    sub [hl]                                      ; $5fe2: $96
    sub [hl]                                      ; $5fe3: $96
    ld l, b                                       ; $5fe4: $68
    adc b                                         ; $5fe5: $88
    ld [hl], a                                    ; $5fe6: $77
    ld a, b                                       ; $5fe7: $78
    ld a, b                                       ; $5fe8: $78
    add a                                         ; $5fe9: $87
    add a                                         ; $5fea: $87
    halt                                          ; $5feb: $76
    ld a, b                                       ; $5fec: $78
    adc c                                         ; $5fed: $89
    add a                                         ; $5fee: $87
    ld a, b                                       ; $5fef: $78
    ld h, a                                       ; $5ff0: $67
    add a                                         ; $5ff1: $87
    add a                                         ; $5ff2: $87
    ld a, b                                       ; $5ff3: $78
    ld [hl], a                                    ; $5ff4: $77
    ld [hl], a                                    ; $5ff5: $77
    adc b                                         ; $5ff6: $88
    adc c                                         ; $5ff7: $89
    halt                                          ; $5ff8: $76
    ld a, b                                       ; $5ff9: $78
    adc b                                         ; $5ffa: $88
    add a                                         ; $5ffb: $87
    adc b                                         ; $5ffc: $88
    add a                                         ; $5ffd: $87
    ld [hl], a                                    ; $5ffe: $77
    ld a, b                                       ; $5fff: $78
    add a                                         ; $6000: $87
    adc b                                         ; $6001: $88
    ld [hl], a                                    ; $6002: $77
    adc b                                         ; $6003: $88
    ld [hl], a                                    ; $6004: $77
    add a                                         ; $6005: $87
    ld a, b                                       ; $6006: $78
    sbc b                                         ; $6007: $98
    ld [hl], a                                    ; $6008: $77
    add a                                         ; $6009: $87
    ld a, b                                       ; $600a: $78
    adc b                                         ; $600b: $88
    ld [hl], a                                    ; $600c: $77
    adc b                                         ; $600d: $88
    adc b                                         ; $600e: $88
    ld [hl], a                                    ; $600f: $77
    add a                                         ; $6010: $87
    add a                                         ; $6011: $87
    ld a, b                                       ; $6012: $78
    add a                                         ; $6013: $87
    add a                                         ; $6014: $87
    ld a, b                                       ; $6015: $78
    ld [hl], a                                    ; $6016: $77
    ld [hl], a                                    ; $6017: $77
    add a                                         ; $6018: $87
    add a                                         ; $6019: $87
    sbc b                                         ; $601a: $98
    ld [hl], a                                    ; $601b: $77
    ld a, b                                       ; $601c: $78
    add a                                         ; $601d: $87
    ld a, b                                       ; $601e: $78
    ld [hl], a                                    ; $601f: $77
    adc b                                         ; $6020: $88
    add a                                         ; $6021: $87
    adc b                                         ; $6022: $88
    ld [hl], a                                    ; $6023: $77
    ld a, b                                       ; $6024: $78
    adc b                                         ; $6025: $88
    ld [hl], a                                    ; $6026: $77
    ld [hl], a                                    ; $6027: $77
    adc b                                         ; $6028: $88
    add a                                         ; $6029: $87
    ld a, b                                       ; $602a: $78
    add a                                         ; $602b: $87
    ld a, b                                       ; $602c: $78
    adc b                                         ; $602d: $88
    adc b                                         ; $602e: $88
    ld [hl], a                                    ; $602f: $77
    add a                                         ; $6030: $87
    ld a, b                                       ; $6031: $78
    adc b                                         ; $6032: $88
    ld [hl], a                                    ; $6033: $77
    ld a, b                                       ; $6034: $78
    add a                                         ; $6035: $87
    add a                                         ; $6036: $87
    ld a, b                                       ; $6037: $78
    add a                                         ; $6038: $87
    ld [hl], a                                    ; $6039: $77
    adc b                                         ; $603a: $88
    add a                                         ; $603b: $87
    ld a, b                                       ; $603c: $78
    ld a, b                                       ; $603d: $78
    add a                                         ; $603e: $87
    adc b                                         ; $603f: $88
    add a                                         ; $6040: $87
    ld [hl], a                                    ; $6041: $77
    inc sp                                        ; $6042: $33
    rst $08                                       ; $6043: $cf
    halt                                          ; $6044: $76
    halt                                          ; $6045: $76
    ld d, a                                       ; $6046: $57
    adc c                                         ; $6047: $89
    sbc e                                         ; $6048: $9b
    add a                                         ; $6049: $87
    ld b, l                                       ; $604a: $45
    adc c                                         ; $604b: $89
    sub a                                         ; $604c: $97
    adc b                                         ; $604d: $88
    ld h, l                                       ; $604e: $65
    sbc b                                         ; $604f: $98
    adc c                                         ; $6050: $89
    and a                                         ; $6051: $a7
    ld h, a                                       ; $6052: $67
    ld a, b                                       ; $6053: $78
    add a                                         ; $6054: $87
    add a                                         ; $6055: $87
    ld l, b                                       ; $6056: $68
    adc b                                         ; $6057: $88
    add [hl]                                      ; $6058: $86
    adc b                                         ; $6059: $88
    ld a, b                                       ; $605a: $78
    add a                                         ; $605b: $87
    ld a, b                                       ; $605c: $78
    add a                                         ; $605d: $87
    ld h, a                                       ; $605e: $67
    ld a, b                                       ; $605f: $78
    adc b                                         ; $6060: $88
    add a                                         ; $6061: $87
    ld a, b                                       ; $6062: $78
    ld [hl], a                                    ; $6063: $77
    adc b                                         ; $6064: $88
    adc b                                         ; $6065: $88
    ld h, [hl]                                    ; $6066: $66
    ld [hl], a                                    ; $6067: $77
    adc b                                         ; $6068: $88
    add a                                         ; $6069: $87
    ld [hl], a                                    ; $606a: $77
    ld [hl], a                                    ; $606b: $77
    ld a, b                                       ; $606c: $78
    sub a                                         ; $606d: $97
    ld [hl], a                                    ; $606e: $77
    ld [hl], a                                    ; $606f: $77
    add a                                         ; $6070: $87
    add a                                         ; $6071: $87
    ld a, b                                       ; $6072: $78
    ld [hl], a                                    ; $6073: $77
    ld [hl], a                                    ; $6074: $77
    adc b                                         ; $6075: $88
    add a                                         ; $6076: $87
    add a                                         ; $6077: $87
    ld [hl], a                                    ; $6078: $77
    add a                                         ; $6079: $87
    ld [hl], a                                    ; $607a: $77
    ld a, b                                       ; $607b: $78
    adc b                                         ; $607c: $88
    add [hl]                                      ; $607d: $86
    ld a, b                                       ; $607e: $78
    adc b                                         ; $607f: $88
    add a                                         ; $6080: $87
    ld [hl], a                                    ; $6081: $77
    adc b                                         ; $6082: $88
    add a                                         ; $6083: $87
    ld [hl], a                                    ; $6084: $77
    ld [hl], a                                    ; $6085: $77
    adc b                                         ; $6086: $88
    ld [hl], a                                    ; $6087: $77
    ld [hl], a                                    ; $6088: $77
    ld [hl], a                                    ; $6089: $77
    ld a, b                                       ; $608a: $78
    ld h, [hl]                                    ; $608b: $66
    adc c                                         ; $608c: $89
    adc b                                         ; $608d: $88
    add a                                         ; $608e: $87
    sub a                                         ; $608f: $97
    and a                                         ; $6090: $a7
    ld l, b                                       ; $6091: $68
    ld h, [hl]                                    ; $6092: $66
    adc b                                         ; $6093: $88
    add h                                         ; $6094: $84
    ld a, l                                       ; $6095: $7d
    ld [hl], a                                    ; $6096: $77
    halt                                          ; $6097: $76
    sub [hl]                                      ; $6098: $96
    adc d                                         ; $6099: $8a
    ld h, a                                       ; $609a: $67
    call nz, Call_018_486d                        ; $609b: $c4 $6d $48
    add h                                         ; $609e: $84
    ld a, b                                       ; $609f: $78
    adc b                                         ; $60a0: $88
    adc b                                         ; $60a1: $88
    sub a                                         ; $60a2: $97
    ld a, b                                       ; $60a3: $78
    ld l, c                                       ; $60a4: $69
    add a                                         ; $60a5: $87
    ld h, l                                       ; $60a6: $65
    adc c                                         ; $60a7: $89
    adc d                                         ; $60a8: $8a
    add [hl]                                      ; $60a9: $86
    ld [hl], l                                    ; $60aa: $75
    ld e, d                                       ; $60ab: $5a
    adc c                                         ; $60ac: $89
    add l                                         ; $60ad: $85
    ld a, c                                       ; $60ae: $79
    adc c                                         ; $60af: $89
    add a                                         ; $60b0: $87
    ld a, b                                       ; $60b1: $78
    add a                                         ; $60b2: $87
    halt                                          ; $60b3: $76
    halt                                          ; $60b4: $76
    xor c                                         ; $60b5: $a9
    add a                                         ; $60b6: $87
    sbc b                                         ; $60b7: $98
    ld l, b                                       ; $60b8: $68
    ld [hl], a                                    ; $60b9: $77
    adc b                                         ; $60ba: $88
    ld [hl], a                                    ; $60bb: $77
    adc b                                         ; $60bc: $88
    ld [hl], a                                    ; $60bd: $77
    adc b                                         ; $60be: $88
    ld a, b                                       ; $60bf: $78
    adc b                                         ; $60c0: $88
    add a                                         ; $60c1: $87
    add a                                         ; $60c2: $87
    ld [hl], a                                    ; $60c3: $77
    ld a, b                                       ; $60c4: $78
    adc b                                         ; $60c5: $88
    ld [hl], a                                    ; $60c6: $77
    ld l, b                                       ; $60c7: $68
    add a                                         ; $60c8: $87
    adc b                                         ; $60c9: $88
    ld [hl], a                                    ; $60ca: $77
    ld [hl], a                                    ; $60cb: $77
    ld a, b                                       ; $60cc: $78
    adc b                                         ; $60cd: $88
    adc b                                         ; $60ce: $88
    ld a, b                                       ; $60cf: $78
    adc b                                         ; $60d0: $88
    ld [hl], a                                    ; $60d1: $77
    adc b                                         ; $60d2: $88
    add a                                         ; $60d3: $87
    ld a, b                                       ; $60d4: $78
    adc b                                         ; $60d5: $88
    halt                                          ; $60d6: $76
    adc c                                         ; $60d7: $89
    adc b                                         ; $60d8: $88
    add a                                         ; $60d9: $87
    ld [hl], a                                    ; $60da: $77
    ld a, b                                       ; $60db: $78
    ld a, b                                       ; $60dc: $78
    adc b                                         ; $60dd: $88
    add a                                         ; $60de: $87
    ld a, b                                       ; $60df: $78
    adc b                                         ; $60e0: $88
    adc b                                         ; $60e1: $88
    add a                                         ; $60e2: $87
    ld [hl], a                                    ; $60e3: $77
    adc b                                         ; $60e4: $88
    adc b                                         ; $60e5: $88
    ld [hl], a                                    ; $60e6: $77
    adc b                                         ; $60e7: $88
    add a                                         ; $60e8: $87
    ld a, b                                       ; $60e9: $78
    adc b                                         ; $60ea: $88
    add a                                         ; $60eb: $87
    adc b                                         ; $60ec: $88
    add a                                         ; $60ed: $87
    ld a, b                                       ; $60ee: $78
    adc b                                         ; $60ef: $88
    adc b                                         ; $60f0: $88
    ld a, b                                       ; $60f1: $78
    add a                                         ; $60f2: $87
    adc b                                         ; $60f3: $88
    ld a, b                                       ; $60f4: $78
    add a                                         ; $60f5: $87
    halt                                          ; $60f6: $76
    dec d                                         ; $60f7: $15
    db $fd                                        ; $60f8: $fd
    ld h, [hl]                                    ; $60f9: $66
    ld [hl], l                                    ; $60fa: $75
    ld h, a                                       ; $60fb: $67
    adc c                                         ; $60fc: $89
    xor d                                         ; $60fd: $aa
    halt                                          ; $60fe: $76
    ld b, [hl]                                    ; $60ff: $46
    adc d                                         ; $6100: $8a
    add a                                         ; $6101: $87
    adc b                                         ; $6102: $88
    ld d, a                                       ; $6103: $57
    sub [hl]                                      ; $6104: $96
    adc d                                         ; $6105: $8a
    add a                                         ; $6106: $87
    ld [hl], a                                    ; $6107: $77
    ld a, b                                       ; $6108: $78
    ld [hl], a                                    ; $6109: $77
    add a                                         ; $610a: $87
    ld a, b                                       ; $610b: $78
    adc b                                         ; $610c: $88
    ld [hl], a                                    ; $610d: $77
    ld [hl], a                                    ; $610e: $77
    adc b                                         ; $610f: $88
    add a                                         ; $6110: $87
    add a                                         ; $6111: $87
    add a                                         ; $6112: $87
    add a                                         ; $6113: $87
    adc b                                         ; $6114: $88
    ld a, b                                       ; $6115: $78
    add a                                         ; $6116: $87
    ld a, b                                       ; $6117: $78
    ld a, b                                       ; $6118: $78
    adc b                                         ; $6119: $88
    add a                                         ; $611a: $87
    ld h, a                                       ; $611b: $67
    ld a, b                                       ; $611c: $78
    adc b                                         ; $611d: $88
    add a                                         ; $611e: $87
    ld [hl], a                                    ; $611f: $77
    add a                                         ; $6120: $87
    adc b                                         ; $6121: $88
    sub a                                         ; $6122: $97
    ld [hl], a                                    ; $6123: $77
    ld [hl], a                                    ; $6124: $77
    ld a, b                                       ; $6125: $78
    add a                                         ; $6126: $87
    add a                                         ; $6127: $87
    ld [hl], a                                    ; $6128: $77
    ld a, b                                       ; $6129: $78
    adc b                                         ; $612a: $88
    adc b                                         ; $612b: $88
    halt                                          ; $612c: $76
    ld [hl], a                                    ; $612d: $77
    add a                                         ; $612e: $87
    ld [hl], a                                    ; $612f: $77
    add a                                         ; $6130: $87
    adc b                                         ; $6131: $88
    add a                                         ; $6132: $87
    ld [hl], a                                    ; $6133: $77
    ld [hl], a                                    ; $6134: $77
    add a                                         ; $6135: $87
    add a                                         ; $6136: $87
    adc b                                         ; $6137: $88
    ld [hl], a                                    ; $6138: $77
    ld [hl], a                                    ; $6139: $77
    ld a, b                                       ; $613a: $78
    adc b                                         ; $613b: $88
    ld [hl], a                                    ; $613c: $77
    ld [hl], a                                    ; $613d: $77
    ld [hl], a                                    ; $613e: $77
    adc b                                         ; $613f: $88
    add a                                         ; $6140: $87
    ld a, b                                       ; $6141: $78
    add [hl]                                      ; $6142: $86
    adc b                                         ; $6143: $88
    ld [hl], a                                    ; $6144: $77
    add [hl]                                      ; $6145: $86
    ld a, b                                       ; $6146: $78
    adc b                                         ; $6147: $88
    ld a, b                                       ; $6148: $78
    ld [hl], a                                    ; $6149: $77
    ld [hl], a                                    ; $614a: $77
    ld a, b                                       ; $614b: $78
    ld a, b                                       ; $614c: $78
    add a                                         ; $614d: $87
    adc b                                         ; $614e: $88
    ld [hl], a                                    ; $614f: $77
    adc b                                         ; $6150: $88
    add a                                         ; $6151: $87
    ld [hl], a                                    ; $6152: $77
    ld a, b                                       ; $6153: $78
    add a                                         ; $6154: $87
    adc b                                         ; $6155: $88
    add a                                         ; $6156: $87
    ld [hl], a                                    ; $6157: $77
    ld a, b                                       ; $6158: $78
    adc b                                         ; $6159: $88
    ld a, b                                       ; $615a: $78
    ld a, b                                       ; $615b: $78
    adc b                                         ; $615c: $88
    ld a, b                                       ; $615d: $78
    ld [hl], a                                    ; $615e: $77
    ld [hl], a                                    ; $615f: $77
    adc b                                         ; $6160: $88
    sbc c                                         ; $6161: $99
    ld [hl], a                                    ; $6162: $77
    add a                                         ; $6163: $87
    ld a, b                                       ; $6164: $78
    ld a, b                                       ; $6165: $78
    adc b                                         ; $6166: $88
    ld [hl], a                                    ; $6167: $77
    ld a, b                                       ; $6168: $78
    adc b                                         ; $6169: $88
    ld a, c                                       ; $616a: $79
    ld [hl], a                                    ; $616b: $77
    add a                                         ; $616c: $87
    add [hl]                                      ; $616d: $86
    adc b                                         ; $616e: $88
    add a                                         ; $616f: $87
    adc b                                         ; $6170: $88
    ld [hl], a                                    ; $6171: $77
    sbc b                                         ; $6172: $98
    ld [hl], a                                    ; $6173: $77
    ld [hl], a                                    ; $6174: $77
    ld a, b                                       ; $6175: $78
    adc b                                         ; $6176: $88
    add a                                         ; $6177: $87
    ld [hl], a                                    ; $6178: $77
    add a                                         ; $6179: $87
    ld a, b                                       ; $617a: $78
    ld [hl], a                                    ; $617b: $77
    ld [hl], a                                    ; $617c: $77
    ld a, b                                       ; $617d: $78
    adc b                                         ; $617e: $88
    halt                                          ; $617f: $76
    add a                                         ; $6180: $87
    add a                                         ; $6181: $87
    sub a                                         ; $6182: $97
    add a                                         ; $6183: $87
    ld [hl], a                                    ; $6184: $77
    add [hl]                                      ; $6185: $86
    ld a, b                                       ; $6186: $78
    sub a                                         ; $6187: $97
    ld l, c                                       ; $6188: $69
    adc d                                         ; $6189: $8a
    ld e, c                                       ; $618a: $59
    add a                                         ; $618b: $87
    halt                                          ; $618c: $76
    add [hl]                                      ; $618d: $86
    ld a, c                                       ; $618e: $79
    ld [hl], a                                    ; $618f: $77
    add a                                         ; $6190: $87
    ld a, b                                       ; $6191: $78
    ld a, d                                       ; $6192: $7a
    sub [hl]                                      ; $6193: $96
    ld [hl], a                                    ; $6194: $77
    ld a, c                                       ; $6195: $79
    ld [hl], a                                    ; $6196: $77
    add a                                         ; $6197: $87
    adc b                                         ; $6198: $88
    adc b                                         ; $6199: $88
    add a                                         ; $619a: $87
    add a                                         ; $619b: $87
    adc b                                         ; $619c: $88
    ld [hl], a                                    ; $619d: $77
    ld l, b                                       ; $619e: $68
    sbc b                                         ; $619f: $98
    adc b                                         ; $61a0: $88
    ld d, c                                       ; $61a1: $51
    adc a                                         ; $61a2: $8f
    sub l                                         ; $61a3: $95
    halt                                          ; $61a4: $76
    ld d, a                                       ; $61a5: $57
    ld a, c                                       ; $61a6: $79
    sbc e                                         ; $61a7: $9b

Call_018_61a8:
    sub a                                         ; $61a8: $97

Call_018_61a9:
    ld d, h                                       ; $61a9: $54
    ld a, c                                       ; $61aa: $79
    sub a                                         ; $61ab: $97
    ld a, b                                       ; $61ac: $78
    add l                                         ; $61ad: $85
    adc b                                         ; $61ae: $88
    adc c                                         ; $61af: $89
    sub a                                         ; $61b0: $97
    ld h, [hl]                                    ; $61b1: $66
    ld a, b                                       ; $61b2: $78
    add a                                         ; $61b3: $87
    ld a, b                                       ; $61b4: $78
    ld [hl], a                                    ; $61b5: $77
    adc b                                         ; $61b6: $88
    add a                                         ; $61b7: $87
    ld [hl], a                                    ; $61b8: $77

Call_018_61b9:
    ld a, b                                       ; $61b9: $78
    adc b                                         ; $61ba: $88
    ld a, b                                       ; $61bb: $78
    ld [hl], a                                    ; $61bc: $77
    ld [hl], a                                    ; $61bd: $77
    ld a, b                                       ; $61be: $78
    ld a, b                                       ; $61bf: $78
    adc b                                         ; $61c0: $88
    adc b                                         ; $61c1: $88
    add a                                         ; $61c2: $87
    add a                                         ; $61c3: $87
    add a                                         ; $61c4: $87
    halt                                          ; $61c5: $76
    ld [hl], a                                    ; $61c6: $77
    adc b                                         ; $61c7: $88
    add a                                         ; $61c8: $87
    ld [hl], a                                    ; $61c9: $77
    ld [hl], a                                    ; $61ca: $77
    ld a, b                                       ; $61cb: $78
    sbc b                                         ; $61cc: $98
    ld [hl], a                                    ; $61cd: $77
    ld [hl], a                                    ; $61ce: $77
    ld a, b                                       ; $61cf: $78
    adc b                                         ; $61d0: $88
    ld [hl], a                                    ; $61d1: $77
    ld [hl], a                                    ; $61d2: $77
    ld [hl], a                                    ; $61d3: $77
    adc b                                         ; $61d4: $88
    adc b                                         ; $61d5: $88
    add [hl]                                      ; $61d6: $86
    ld h, a                                       ; $61d7: $67
    add a                                         ; $61d8: $87
    add a                                         ; $61d9: $87
    ld a, b                                       ; $61da: $78
    adc b                                         ; $61db: $88
    add a                                         ; $61dc: $87
    ld h, a                                       ; $61dd: $67
    add [hl]                                      ; $61de: $86
    ld a, b                                       ; $61df: $78
    adc b                                         ; $61e0: $88
    adc b                                         ; $61e1: $88
    add a                                         ; $61e2: $87
    ld a, b                                       ; $61e3: $78
    add a                                         ; $61e4: $87
    ld a, b                                       ; $61e5: $78
    add a                                         ; $61e6: $87
    ld [hl], a                                    ; $61e7: $77
    ld [hl], a                                    ; $61e8: $77
    adc b                                         ; $61e9: $88
    ld [hl], a                                    ; $61ea: $77
    ld l, b                                       ; $61eb: $68
    adc b                                         ; $61ec: $88
    ld [hl], a                                    ; $61ed: $77
    adc b                                         ; $61ee: $88
    ld a, b                                       ; $61ef: $78
    add a                                         ; $61f0: $87
    adc b                                         ; $61f1: $88
    ld [hl], a                                    ; $61f2: $77
    add a                                         ; $61f3: $87
    ld a, b                                       ; $61f4: $78
    ld [hl], a                                    ; $61f5: $77
    add a                                         ; $61f6: $87
    adc b                                         ; $61f7: $88
    adc b                                         ; $61f8: $88
    ld [hl], a                                    ; $61f9: $77
    ld [hl], a                                    ; $61fa: $77
    ld a, c                                       ; $61fb: $79
    halt                                          ; $61fc: $76
    add a                                         ; $61fd: $87
    ld [hl], a                                    ; $61fe: $77
    adc b                                         ; $61ff: $88
    adc b                                         ; $6200: $88
    add a                                         ; $6201: $87
    ld l, b                                       ; $6202: $68
    adc b                                         ; $6203: $88
    add a                                         ; $6204: $87
    add a                                         ; $6205: $87
    adc b                                         ; $6206: $88
    ld a, b                                       ; $6207: $78
    add a                                         ; $6208: $87
    ld [hl], a                                    ; $6209: $77
    ld [hl], a                                    ; $620a: $77
    adc c                                         ; $620b: $89
    adc b                                         ; $620c: $88
    ld [hl], a                                    ; $620d: $77
    ld a, b                                       ; $620e: $78
    add a                                         ; $620f: $87
    adc b                                         ; $6210: $88
    add a                                         ; $6211: $87
    ld [hl], a                                    ; $6212: $77
    ld [hl], a                                    ; $6213: $77
    sbc b                                         ; $6214: $98
    adc b                                         ; $6215: $88
    ld a, b                                       ; $6216: $78
    ld h, a                                       ; $6217: $67
    adc b                                         ; $6218: $88
    adc b                                         ; $6219: $88
    add a                                         ; $621a: $87
    ld a, b                                       ; $621b: $78
    adc b                                         ; $621c: $88
    ld a, c                                       ; $621d: $79
    ld [hl], a                                    ; $621e: $77
    ld a, b                                       ; $621f: $78
    adc b                                         ; $6220: $88
    adc b                                         ; $6221: $88
    adc b                                         ; $6222: $88
    ld a, b                                       ; $6223: $78
    adc b                                         ; $6224: $88
    ld [hl], a                                    ; $6225: $77
    ld a, b                                       ; $6226: $78
    adc b                                         ; $6227: $88
    ld a, b                                       ; $6228: $78
    adc b                                         ; $6229: $88
    adc b                                         ; $622a: $88
    ld [hl], a                                    ; $622b: $77
    ld a, b                                       ; $622c: $78
    ld a, b                                       ; $622d: $78
    add a                                         ; $622e: $87
    adc b                                         ; $622f: $88
    adc b                                         ; $6230: $88
    add a                                         ; $6231: $87
    ld a, b                                       ; $6232: $78
    adc b                                         ; $6233: $88
    add a                                         ; $6234: $87
    ld [hl], a                                    ; $6235: $77
    adc b                                         ; $6236: $88
    adc b                                         ; $6237: $88
    ld [hl], a                                    ; $6238: $77
    ld [hl], a                                    ; $6239: $77
    ld a, b                                       ; $623a: $78
    adc b                                         ; $623b: $88
    add a                                         ; $623c: $87
    add a                                         ; $623d: $87
    add a                                         ; $623e: $87
    ld a, b                                       ; $623f: $78
    add a                                         ; $6240: $87
    adc b                                         ; $6241: $88
    ld a, b                                       ; $6242: $78
    adc b                                         ; $6243: $88
    add a                                         ; $6244: $87
    ld a, b                                       ; $6245: $78
    adc b                                         ; $6246: $88
    adc b                                         ; $6247: $88
    ld [hl], a                                    ; $6248: $77
    ld [hl], a                                    ; $6249: $77
    halt                                          ; $624a: $76
    ld h, $fc                                     ; $624b: $26 $fc
    ld d, [hl]                                    ; $624d: $56
    ld h, h                                       ; $624e: $64
    ld h, a                                       ; $624f: $67
    sbc d                                         ; $6250: $9a
    cp d                                          ; $6251: $ba
    ld [hl], l                                    ; $6252: $75
    ld b, a                                       ; $6253: $47
    sbc d                                         ; $6254: $9a
    ld [hl], a                                    ; $6255: $77
    adc b                                         ; $6256: $88
    ld d, a                                       ; $6257: $57
    adc b                                         ; $6258: $88
    sbc d                                         ; $6259: $9a
    ld [hl], a                                    ; $625a: $77
    ld [hl], a                                    ; $625b: $77
    ld a, b                                       ; $625c: $78
    ld [hl], a                                    ; $625d: $77
    add a                                         ; $625e: $87
    ld a, b                                       ; $625f: $78
    add a                                         ; $6260: $87
    ld [hl], a                                    ; $6261: $77
    ld [hl], a                                    ; $6262: $77
    adc b                                         ; $6263: $88
    adc b                                         ; $6264: $88
    ld [hl], a                                    ; $6265: $77
    ld [hl], a                                    ; $6266: $77
    ld [hl], a                                    ; $6267: $77
    sbc b                                         ; $6268: $98
    ld a, b                                       ; $6269: $78
    ld [hl], a                                    ; $626a: $77
    adc b                                         ; $626b: $88
    ld a, b                                       ; $626c: $78
    adc b                                         ; $626d: $88
    ld [hl], a                                    ; $626e: $77
    ld h, a                                       ; $626f: $67
    add a                                         ; $6270: $87
    sbc b                                         ; $6271: $98
    add a                                         ; $6272: $87
    ld [hl], a                                    ; $6273: $77
    ld [hl], a                                    ; $6274: $77
    adc c                                         ; $6275: $89
    sub a                                         ; $6276: $97
    ld a, b                                       ; $6277: $78
    ld [hl], a                                    ; $6278: $77
    ld a, b                                       ; $6279: $78
    adc b                                         ; $627a: $88
    ld [hl], a                                    ; $627b: $77
    ld [hl], a                                    ; $627c: $77
    ld a, b                                       ; $627d: $78
    add a                                         ; $627e: $87
    adc c                                         ; $627f: $89
    add a                                         ; $6280: $87
    adc b                                         ; $6281: $88
    ld [hl], a                                    ; $6282: $77
    add a                                         ; $6283: $87
    adc b                                         ; $6284: $88
    adc b                                         ; $6285: $88
    add a                                         ; $6286: $87
    ld a, b                                       ; $6287: $78
    ld [hl], a                                    ; $6288: $77
    adc b                                         ; $6289: $88
    add a                                         ; $628a: $87
    adc b                                         ; $628b: $88
    ld a, b                                       ; $628c: $78
    ld [hl], a                                    ; $628d: $77
    ld h, a                                       ; $628e: $67
    adc d                                         ; $628f: $8a
    add [hl]                                      ; $6290: $86
    adc c                                         ; $6291: $89
    add a                                         ; $6292: $87
    cp b                                          ; $6293: $b8
    inc [hl]                                      ; $6294: $34
    cp d                                          ; $6295: $ba
    ld h, a                                       ; $6296: $67
    halt                                          ; $6297: $76
    ld h, [hl]                                    ; $6298: $66
    and [hl]                                      ; $6299: $a6
    ld l, h                                       ; $629a: $6c
    or l                                          ; $629b: $b5
    ld l, c                                       ; $629c: $69
    ld e, b                                       ; $629d: $58
    add [hl]                                      ; $629e: $86
    ld [hl], a                                    ; $629f: $77
    ld e, b                                       ; $62a0: $58
    sbc c                                         ; $62a1: $99
    adc b                                         ; $62a2: $88
    sub [hl]                                      ; $62a3: $96
    ld l, b                                       ; $62a4: $68
    ld [hl], a                                    ; $62a5: $77
    halt                                          ; $62a6: $76
    adc d                                         ; $62a7: $8a
    xor d                                         ; $62a8: $aa
    ld h, [hl]                                    ; $62a9: $66
    ld [hl], a                                    ; $62aa: $77
    ld [hl], a                                    ; $62ab: $77
    ld h, a                                       ; $62ac: $67
    adc b                                         ; $62ad: $88
    sbc c                                         ; $62ae: $99
    ld [hl], a                                    ; $62af: $77
    adc b                                         ; $62b0: $88
    adc c                                         ; $62b1: $89
    halt                                          ; $62b2: $76
    ld h, a                                       ; $62b3: $67
    add a                                         ; $62b4: $87
    sbc c                                         ; $62b5: $99
    adc b                                         ; $62b6: $88
    sub [hl]                                      ; $62b7: $96
    ld l, c                                       ; $62b8: $69
    ld [hl], a                                    ; $62b9: $77
    sbc c                                         ; $62ba: $99
    ld [hl], a                                    ; $62bb: $77
    adc b                                         ; $62bc: $88
    ld a, b                                       ; $62bd: $78
    adc b                                         ; $62be: $88
    adc b                                         ; $62bf: $88
    add a                                         ; $62c0: $87
    adc b                                         ; $62c1: $88
    adc b                                         ; $62c2: $88
    adc b                                         ; $62c3: $88
    add a                                         ; $62c4: $87
    adc b                                         ; $62c5: $88
    adc b                                         ; $62c6: $88
    adc b                                         ; $62c7: $88
    ld a, b                                       ; $62c8: $78
    adc b                                         ; $62c9: $88
    adc b                                         ; $62ca: $88
    add a                                         ; $62cb: $87
    ld [hl], a                                    ; $62cc: $77
    adc b                                         ; $62cd: $88
    adc b                                         ; $62ce: $88
    adc b                                         ; $62cf: $88
    add a                                         ; $62d0: $87
    add a                                         ; $62d1: $87
    adc c                                         ; $62d2: $89
    add a                                         ; $62d3: $87
    ld [hl], a                                    ; $62d4: $77
    adc b                                         ; $62d5: $88
    add a                                         ; $62d6: $87
    add a                                         ; $62d7: $87
    ld [hl], a                                    ; $62d8: $77
    adc b                                         ; $62d9: $88
    add a                                         ; $62da: $87
    ld a, b                                       ; $62db: $78
    adc b                                         ; $62dc: $88
    ld [hl], a                                    ; $62dd: $77
    adc b                                         ; $62de: $88
    ld [hl], a                                    ; $62df: $77
    add a                                         ; $62e0: $87
    adc b                                         ; $62e1: $88
    ld a, b                                       ; $62e2: $78
    ld [hl], a                                    ; $62e3: $77
    adc b                                         ; $62e4: $88
    adc b                                         ; $62e5: $88
    ld a, b                                       ; $62e6: $78
    ld [hl], a                                    ; $62e7: $77
    ld [hl], a                                    ; $62e8: $77
    adc b                                         ; $62e9: $88
    adc b                                         ; $62ea: $88
    ld a, b                                       ; $62eb: $78
    add a                                         ; $62ec: $87
    ld a, b                                       ; $62ed: $78
    add a                                         ; $62ee: $87
    ld [hl], a                                    ; $62ef: $77
    adc b                                         ; $62f0: $88
    ld a, b                                       ; $62f1: $78
    ld a, b                                       ; $62f2: $78
    adc c                                         ; $62f3: $89
    ld l, b                                       ; $62f4: $68
    add a                                         ; $62f5: $87
    add a                                         ; $62f6: $87
    adc b                                         ; $62f7: $88
    sub a                                         ; $62f8: $97
    ld l, b                                       ; $62f9: $68
    adc c                                         ; $62fa: $89
    adc b                                         ; $62fb: $88
    ld h, a                                       ; $62fc: $67
    adc b                                         ; $62fd: $88
    add [hl]                                      ; $62fe: $86
    add a                                         ; $62ff: $87
    adc b                                         ; $6300: $88
    add a                                         ; $6301: $87
    ld a, b                                       ; $6302: $78
    add a                                         ; $6303: $87
    adc b                                         ; $6304: $88
    sbc b                                         ; $6305: $98
    ld [hl], a                                    ; $6306: $77
    add a                                         ; $6307: $87
    ld a, b                                       ; $6308: $78
    ld [hl], a                                    ; $6309: $77
    adc c                                         ; $630a: $89
    add a                                         ; $630b: $87
    halt                                          ; $630c: $76
    ld l, c                                       ; $630d: $69
    add l                                         ; $630e: $85
    sbc b                                         ; $630f: $98
    add [hl]                                      ; $6310: $86
    sbc c                                         ; $6311: $99
    ld l, b                                       ; $6312: $68
    ld [hl], a                                    ; $6313: $77
    adc b                                         ; $6314: $88
    ld [hl], a                                    ; $6315: $77
    add [hl]                                      ; $6316: $86
    adc b                                         ; $6317: $88
    ld a, c                                       ; $6318: $79
    add a                                         ; $6319: $87
    ld [hl], a                                    ; $631a: $77
    add a                                         ; $631b: $87
    adc b                                         ; $631c: $88
    ld [hl], a                                    ; $631d: $77
    adc b                                         ; $631e: $88
    halt                                          ; $631f: $76
    adc b                                         ; $6320: $88
    ld a, c                                       ; $6321: $79
    ld [hl], a                                    ; $6322: $77
    adc b                                         ; $6323: $88
    ld [hl], a                                    ; $6324: $77
    add [hl]                                      ; $6325: $86
    ld a, c                                       ; $6326: $79
    halt                                          ; $6327: $76
    adc b                                         ; $6328: $88
    ld a, b                                       ; $6329: $78
    add a                                         ; $632a: $87
    ld [hl], a                                    ; $632b: $77
    ld a, b                                       ; $632c: $78
    add a                                         ; $632d: $87
    ld [hl], a                                    ; $632e: $77
    adc b                                         ; $632f: $88
    add a                                         ; $6330: $87
    adc b                                         ; $6331: $88
    ld [hl], a                                    ; $6332: $77
    ld h, a                                       ; $6333: $67
    adc b                                         ; $6334: $88
    sub a                                         ; $6335: $97
    ld [hl], a                                    ; $6336: $77
    sbc c                                         ; $6337: $99
    add a                                         ; $6338: $87
    ld h, a                                       ; $6339: $67
    ld a, b                                       ; $633a: $78
    ld h, a                                       ; $633b: $67
    add a                                         ; $633c: $87
    add a                                         ; $633d: $87
    halt                                          ; $633e: $76
    sbc b                                         ; $633f: $98
    adc b                                         ; $6340: $88
    adc b                                         ; $6341: $88
    ld h, a                                       ; $6342: $67
    ld a, b                                       ; $6343: $78
    adc b                                         ; $6344: $88
    adc b                                         ; $6345: $88
    ld l, b                                       ; $6346: $68
    ld a, b                                       ; $6347: $78
    adc b                                         ; $6348: $88
    add l                                         ; $6349: $85
    add a                                         ; $634a: $87
    add [hl]                                      ; $634b: $86
    ld a, b                                       ; $634c: $78
    adc b                                         ; $634d: $88
    ld a, b                                       ; $634e: $78
    add a                                         ; $634f: $87
    adc b                                         ; $6350: $88
    add a                                         ; $6351: $87
    add a                                         ; $6352: $87
    adc b                                         ; $6353: $88
    add a                                         ; $6354: $87
    ld [hl], a                                    ; $6355: $77
    ld l, b                                       ; $6356: $68
    adc b                                         ; $6357: $88
    ld a, b                                       ; $6358: $78
    add a                                         ; $6359: $87
    sbc b                                         ; $635a: $98
    adc b                                         ; $635b: $88
    add [hl]                                      ; $635c: $86
    ld l, c                                       ; $635d: $69
    add a                                         ; $635e: $87
    adc b                                         ; $635f: $88
    add a                                         ; $6360: $87
    adc b                                         ; $6361: $88
    adc b                                         ; $6362: $88
    add a                                         ; $6363: $87
    add a                                         ; $6364: $87
    ld [hl], a                                    ; $6365: $77
    ld a, b                                       ; $6366: $78
    adc b                                         ; $6367: $88
    ld a, b                                       ; $6368: $78
    ld [hl], a                                    ; $6369: $77
    adc b                                         ; $636a: $88
    ld [hl], a                                    ; $636b: $77
    add a                                         ; $636c: $87
    adc b                                         ; $636d: $88
    add a                                         ; $636e: $87
    adc b                                         ; $636f: $88
    adc b                                         ; $6370: $88
    add a                                         ; $6371: $87
    adc b                                         ; $6372: $88
    add a                                         ; $6373: $87
    ld [hl], a                                    ; $6374: $77
    add a                                         ; $6375: $87

Call_018_6376:
    adc b                                         ; $6376: $88
    add a                                         ; $6377: $87
    adc b                                         ; $6378: $88
    adc b                                         ; $6379: $88
    add a                                         ; $637a: $87
    adc b                                         ; $637b: $88
    sub a                                         ; $637c: $97
    ld sp, $86bf                                  ; $637d: $31 $bf $86
    add h                                         ; $6380: $84
    ld d, a                                       ; $6381: $57
    ld a, d                                       ; $6382: $7a
    cp e                                          ; $6383: $bb
    add a                                         ; $6384: $87
    ld b, h                                       ; $6385: $44
    ld a, d                                       ; $6386: $7a
    sub a                                         ; $6387: $97
    ld a, b                                       ; $6388: $78
    ld [hl], l                                    ; $6389: $75
    adc b                                         ; $638a: $88
    sbc c                                         ; $638b: $99
    add a                                         ; $638c: $87
    ld [hl], a                                    ; $638d: $77
    add a                                         ; $638e: $87
    add a                                         ; $638f: $87
    add a                                         ; $6390: $87
    adc b                                         ; $6391: $88
    adc b                                         ; $6392: $88
    halt                                          ; $6393: $76
    ld a, b                                       ; $6394: $78
    adc b                                         ; $6395: $88
    add a                                         ; $6396: $87
    add a                                         ; $6397: $87

Jump_018_6398:
    ld h, a                                       ; $6398: $67
    ld a, b                                       ; $6399: $78
    adc b                                         ; $639a: $88
    ld a, b                                       ; $639b: $78
    ld a, b                                       ; $639c: $78
    ld a, b                                       ; $639d: $78
    add a                                         ; $639e: $87
    ld a, b                                       ; $639f: $78
    add a                                         ; $63a0: $87
    halt                                          ; $63a1: $76
    ld a, b                                       ; $63a2: $78
    adc b                                         ; $63a3: $88
    adc b                                         ; $63a4: $88
    ld [hl], a                                    ; $63a5: $77
    ld [hl], a                                    ; $63a6: $77
    adc b                                         ; $63a7: $88
    add a                                         ; $63a8: $87
    ld [hl], a                                    ; $63a9: $77
    halt                                          ; $63aa: $76
    ld a, b                                       ; $63ab: $78
    sbc b                                         ; $63ac: $98
    halt                                          ; $63ad: $76
    adc d                                         ; $63ae: $8a
    ld l, c                                       ; $63af: $69
    add a                                         ; $63b0: $87
    ld [hl], a                                    ; $63b1: $77
    sub [hl]                                      ; $63b2: $96
    add a                                         ; $63b3: $87
    ld a, d                                       ; $63b4: $7a
    add a                                         ; $63b5: $87
    ld h, [hl]                                    ; $63b6: $66
    sbc b                                         ; $63b7: $98

Call_018_63b8:
    adc c                                         ; $63b8: $89

Call_018_63b9:
    ld e, b                                       ; $63b9: $58
    sub [hl]                                      ; $63ba: $96
    ld l, c                                       ; $63bb: $69
    add a                                         ; $63bc: $87
    add [hl]                                      ; $63bd: $86
    ld a, b                                       ; $63be: $78
    add a                                         ; $63bf: $87
    add a                                         ; $63c0: $87
    sbc b                                         ; $63c1: $98
    add a                                         ; $63c2: $87
    ld [hl], a                                    ; $63c3: $77
    add a                                         ; $63c4: $87
    ld [hl], a                                    ; $63c5: $77
    adc c                                         ; $63c6: $89
    adc c                                         ; $63c7: $89
    ld [hl], a                                    ; $63c8: $77

Call_018_63c9:
    ld h, [hl]                                    ; $63c9: $66
    adc c                                         ; $63ca: $89
    ld [hl], a                                    ; $63cb: $77
    sub a                                         ; $63cc: $97
    adc b                                         ; $63cd: $88
    add a                                         ; $63ce: $87
    ld a, b                                       ; $63cf: $78
    adc b                                         ; $63d0: $88
    add a                                         ; $63d1: $87
    add [hl]                                      ; $63d2: $86
    ld [hl], a                                    ; $63d3: $77
    adc c                                         ; $63d4: $89
    adc b                                         ; $63d5: $88
    ld [hl], a                                    ; $63d6: $77
    ld [hl], a                                    ; $63d7: $77
    ld [hl], a                                    ; $63d8: $77
    adc c                                         ; $63d9: $89
    add a                                         ; $63da: $87
    add a                                         ; $63db: $87
    ld [hl], a                                    ; $63dc: $77
    ld a, b                                       ; $63dd: $78
    ld a, b                                       ; $63de: $78
    sbc b                                         ; $63df: $98
    adc b                                         ; $63e0: $88
    ld h, a                                       ; $63e1: $67
    ld a, b                                       ; $63e2: $78
    ld [hl], a                                    ; $63e3: $77
    add a                                         ; $63e4: $87
    ld [hl], a                                    ; $63e5: $77
    adc b                                         ; $63e6: $88
    adc b                                         ; $63e7: $88
    ld a, b                                       ; $63e8: $78
    ld [hl], a                                    ; $63e9: $77
    ld a, b                                       ; $63ea: $78
    ld [hl], a                                    ; $63eb: $77
    ld [hl], a                                    ; $63ec: $77
    add a                                         ; $63ed: $87
    ld a, b                                       ; $63ee: $78
    add a                                         ; $63ef: $87
    add a                                         ; $63f0: $87
    adc b                                         ; $63f1: $88
    ld [hl], a                                    ; $63f2: $77
    ld a, b                                       ; $63f3: $78
    ld [hl], a                                    ; $63f4: $77
    ld a, b                                       ; $63f5: $78
    ld a, b                                       ; $63f6: $78
    ld [hl], a                                    ; $63f7: $77
    sub a                                         ; $63f8: $97
    adc c                                         ; $63f9: $89
    ld [hl], a                                    ; $63fa: $77
    ld a, b                                       ; $63fb: $78
    adc b                                         ; $63fc: $88
    ld [hl], a                                    ; $63fd: $77
    add a                                         ; $63fe: $87
    ld a, b                                       ; $63ff: $78
    adc b                                         ; $6400: $88
    add a                                         ; $6401: $87
    halt                                          ; $6402: $76
    sbc b                                         ; $6403: $98
    adc b                                         ; $6404: $88
    add a                                         ; $6405: $87
    ld a, b                                       ; $6406: $78
    ld l, d                                       ; $6407: $6a
    ld h, l                                       ; $6408: $65
    ld a, b                                       ; $6409: $78
    add a                                         ; $640a: $87
    and [hl]                                      ; $640b: $a6
    adc b                                         ; $640c: $88
    sub a                                         ; $640d: $97
    ld a, b                                       ; $640e: $78
    ld [hl], a                                    ; $640f: $77
    adc b                                         ; $6410: $88
    adc b                                         ; $6411: $88
    ld e, b                                       ; $6412: $58
    sbc b                                         ; $6413: $98
    adc c                                         ; $6414: $89
    ld [hl], a                                    ; $6415: $77
    sbc b                                         ; $6416: $98
    adc b                                         ; $6417: $88
    ld [hl], a                                    ; $6418: $77
    add a                                         ; $6419: $87
    ld [hl], a                                    ; $641a: $77
    adc b                                         ; $641b: $88
    ld a, c                                       ; $641c: $79
    add a                                         ; $641d: $87
    adc b                                         ; $641e: $88
    ld a, b                                       ; $641f: $78
    add a                                         ; $6420: $87
    sbc c                                         ; $6421: $99
    ld [hl], a                                    ; $6422: $77
    adc b                                         ; $6423: $88
    adc b                                         ; $6424: $88
    ld [hl], a                                    ; $6425: $77
    ld [hl], a                                    ; $6426: $77
    adc b                                         ; $6427: $88
    ld [hl], a                                    ; $6428: $77
    ld [hl], a                                    ; $6429: $77
    adc b                                         ; $642a: $88
    ld [hl], a                                    ; $642b: $77
    adc b                                         ; $642c: $88
    ld a, b                                       ; $642d: $78
    add a                                         ; $642e: $87
    adc b                                         ; $642f: $88
    adc b                                         ; $6430: $88
    adc b                                         ; $6431: $88
    add a                                         ; $6432: $87
    add a                                         ; $6433: $87
    add a                                         ; $6434: $87
    ld a, b                                       ; $6435: $78
    add a                                         ; $6436: $87
    adc b                                         ; $6437: $88
    adc b                                         ; $6438: $88
    add a                                         ; $6439: $87
    ld a, b                                       ; $643a: $78
    adc b                                         ; $643b: $88
    ld [hl], a                                    ; $643c: $77
    ld a, b                                       ; $643d: $78
    adc b                                         ; $643e: $88
    adc b                                         ; $643f: $88
    add a                                         ; $6440: $87
    halt                                          ; $6441: $76
    ld d, $fd                                     ; $6442: $16 $fd
    ld h, l                                       ; $6444: $65
    ld d, l                                       ; $6445: $55
    ld h, a                                       ; $6446: $67
    sbc d                                         ; $6447: $9a
    cp d                                          ; $6448: $ba
    ld h, h                                       ; $6449: $64
    ld b, a                                       ; $644a: $47
    adc d                                         ; $644b: $8a
    ld [hl], a                                    ; $644c: $77
    add a                                         ; $644d: $87
    ld h, a                                       ; $644e: $67
    ld a, b                                       ; $644f: $78
    sbc c                                         ; $6450: $99
    ld [hl], a                                    ; $6451: $77
    ld [hl], a                                    ; $6452: $77
    ld [hl], a                                    ; $6453: $77
    ld [hl], a                                    ; $6454: $77
    adc b                                         ; $6455: $88
    adc b                                         ; $6456: $88
    sub a                                         ; $6457: $97
    ld d, a                                       ; $6458: $57
    xor b                                         ; $6459: $a8
    ld [hl], a                                    ; $645a: $77
    adc b                                         ; $645b: $88
    ld a, c                                       ; $645c: $79
    ld h, [hl]                                    ; $645d: $66
    adc b                                         ; $645e: $88
    halt                                          ; $645f: $76
    adc c                                         ; $6460: $89
    adc b                                         ; $6461: $88
    sbc b                                         ; $6462: $98
    ld h, [hl]                                    ; $6463: $66
    xor b                                         ; $6464: $a8
    ld a, b                                       ; $6465: $78
    ld d, [hl]                                    ; $6466: $56
    ld h, a                                       ; $6467: $67
    xor c                                         ; $6468: $a9
    add a                                         ; $6469: $87
    ld [hl], a                                    ; $646a: $77
    ld h, a                                       ; $646b: $67
    and [hl]                                      ; $646c: $a6
    adc c                                         ; $646d: $89
    halt                                          ; $646e: $76
    adc b                                         ; $646f: $88
    add a                                         ; $6470: $87
    add a                                         ; $6471: $87
    ld [hl], a                                    ; $6472: $77
    adc c                                         ; $6473: $89
    ld [hl], a                                    ; $6474: $77
    ld a, c                                       ; $6475: $79
    add a                                         ; $6476: $87
    add [hl]                                      ; $6477: $86
    ld [hl], a                                    ; $6478: $77
    add a                                         ; $6479: $87
    adc b                                         ; $647a: $88
    add [hl]                                      ; $647b: $86
    ld [hl], a                                    ; $647c: $77
    ld [hl], a                                    ; $647d: $77
    ld [hl], a                                    ; $647e: $77
    ld a, b                                       ; $647f: $78
    adc b                                         ; $6480: $88
    add a                                         ; $6481: $87
    adc b                                         ; $6482: $88
    ld a, b                                       ; $6483: $78
    ld [hl], a                                    ; $6484: $77
    ld [hl], a                                    ; $6485: $77
    adc b                                         ; $6486: $88
    ld [hl], a                                    ; $6487: $77
    adc b                                         ; $6488: $88
    add a                                         ; $6489: $87
    ld [hl], a                                    ; $648a: $77
    add a                                         ; $648b: $87
    ld a, b                                       ; $648c: $78
    adc b                                         ; $648d: $88
    ld a, b                                       ; $648e: $78
    ld [hl], a                                    ; $648f: $77
    add a                                         ; $6490: $87
    sbc b                                         ; $6491: $98
    adc b                                         ; $6492: $88
    ld h, a                                       ; $6493: $67
    ld [hl], a                                    ; $6494: $77

Call_018_6495:
    adc b                                         ; $6495: $88
    adc b                                         ; $6496: $88

Jump_018_6497:
    ld [hl], a                                    ; $6497: $77
    adc b                                         ; $6498: $88
    add a                                         ; $6499: $87
    ld [hl], a                                    ; $649a: $77
    ld [hl], a                                    ; $649b: $77
    adc b                                         ; $649c: $88
    ld [hl], a                                    ; $649d: $77
    ld [hl], a                                    ; $649e: $77
    adc b                                         ; $649f: $88
    add a                                         ; $64a0: $87
    adc b                                         ; $64a1: $88
    ld [hl], a                                    ; $64a2: $77
    ld a, b                                       ; $64a3: $78
    add a                                         ; $64a4: $87
    ld [hl], a                                    ; $64a5: $77
    ld [hl], a                                    ; $64a6: $77
    add a                                         ; $64a7: $87
    ld a, b                                       ; $64a8: $78
    ld [hl], a                                    ; $64a9: $77
    ld a, b                                       ; $64aa: $78
    sbc b                                         ; $64ab: $98
    ld [hl], a                                    ; $64ac: $77
    ld [hl], a                                    ; $64ad: $77
    adc b                                         ; $64ae: $88
    ld a, b                                       ; $64af: $78
    add a                                         ; $64b0: $87
    adc b                                         ; $64b1: $88
    sbc b                                         ; $64b2: $98
    ld h, a                                       ; $64b3: $67
    sub a                                         ; $64b4: $97
    ld a, c                                       ; $64b5: $79
    adc b                                         ; $64b6: $88
    add a                                         ; $64b7: $87
    ld a, b                                       ; $64b8: $78
    adc b                                         ; $64b9: $88
    ld [hl], a                                    ; $64ba: $77
    ld a, b                                       ; $64bb: $78
    ld a, b                                       ; $64bc: $78
    sbc c                                         ; $64bd: $99
    add a                                         ; $64be: $87
    ld [hl], a                                    ; $64bf: $77
    adc b                                         ; $64c0: $88
    adc b                                         ; $64c1: $88
    ld a, c                                       ; $64c2: $79
    add a                                         ; $64c3: $87
    ld a, b                                       ; $64c4: $78
    sbc c                                         ; $64c5: $99
    add [hl]                                      ; $64c6: $86
    add a                                         ; $64c7: $87
    and [hl]                                      ; $64c8: $a6
    ld a, b                                       ; $64c9: $78
    ld a, c                                       ; $64ca: $79
    add a                                         ; $64cb: $87
    adc b                                         ; $64cc: $88
    adc b                                         ; $64cd: $88
    adc b                                         ; $64ce: $88
    ld a, b                                       ; $64cf: $78
    adc c                                         ; $64d0: $89
    ld [hl], a                                    ; $64d1: $77
    adc b                                         ; $64d2: $88
    adc b                                         ; $64d3: $88
    add a                                         ; $64d4: $87
    adc b                                         ; $64d5: $88
    ld a, b                                       ; $64d6: $78
    add a                                         ; $64d7: $87
    adc b                                         ; $64d8: $88
    adc b                                         ; $64d9: $88
    adc b                                         ; $64da: $88
    adc b                                         ; $64db: $88
    adc b                                         ; $64dc: $88
    add a                                         ; $64dd: $87
    add a                                         ; $64de: $87
    ld [hl], a                                    ; $64df: $77
    adc d                                         ; $64e0: $8a
    add a                                         ; $64e1: $87
    ld [hl], a                                    ; $64e2: $77
    adc b                                         ; $64e3: $88
    adc b                                         ; $64e4: $88
    adc b                                         ; $64e5: $88
    ld [hl], a                                    ; $64e6: $77
    adc b                                         ; $64e7: $88
    add a                                         ; $64e8: $87
    adc b                                         ; $64e9: $88
    adc b                                         ; $64ea: $88
    adc b                                         ; $64eb: $88
    adc b                                         ; $64ec: $88
    add a                                         ; $64ed: $87
    adc b                                         ; $64ee: $88
    add a                                         ; $64ef: $87
    adc b                                         ; $64f0: $88
    ld a, b                                       ; $64f1: $78
    adc b                                         ; $64f2: $88
    adc b                                         ; $64f3: $88
    ld a, c                                       ; $64f4: $79
    halt                                          ; $64f5: $76
    ld a, b                                       ; $64f6: $78
    ld a, b                                       ; $64f7: $78
    add a                                         ; $64f8: $87
    add a                                         ; $64f9: $87
    ld a, b                                       ; $64fa: $78
    sbc b                                         ; $64fb: $98
    ld a, b                                       ; $64fc: $78
    ld [hl], a                                    ; $64fd: $77
    ld a, b                                       ; $64fe: $78
    ld [hl], a                                    ; $64ff: $77
    ld e, b                                       ; $6500: $58
    cp c                                          ; $6501: $b9
    ld d, e                                       ; $6502: $53
    cp l                                          ; $6503: $bd
    ld c, h                                       ; $6504: $4c
    ld h, [hl]                                    ; $6505: $66
    ld b, a                                       ; $6506: $47
    ld h, a                                       ; $6507: $67
    ld a, c                                       ; $6508: $79
    adc b                                         ; $6509: $88
    push de                                       ; $650a: $d5
    ld h, [hl]                                    ; $650b: $66
    sbc d                                         ; $650c: $9a
    ld [hl], a                                    ; $650d: $77
    ld h, l                                       ; $650e: $65
    sub a                                         ; $650f: $97
    adc b                                         ; $6510: $88
    ld a, d                                       ; $6511: $7a
    add l                                         ; $6512: $85
    adc b                                         ; $6513: $88
    ld a, b                                       ; $6514: $78
    ld h, l                                       ; $6515: $65
    adc b                                         ; $6516: $88
    ld a, b                                       ; $6517: $78
    ld a, b                                       ; $6518: $78
    sub a                                         ; $6519: $97
    ld a, b                                       ; $651a: $78
    add a                                         ; $651b: $87
    ld [hl], a                                    ; $651c: $77
    ld h, a                                       ; $651d: $67
    adc b                                         ; $651e: $88
    adc c                                         ; $651f: $89
    add a                                         ; $6520: $87
    add a                                         ; $6521: $87
    ld a, b                                       ; $6522: $78
    ld [hl], a                                    ; $6523: $77
    ld [hl], a                                    ; $6524: $77

jr_018_6525:
    adc b                                         ; $6525: $88
    ld [hl], a                                    ; $6526: $77
    halt                                          ; $6527: $76
    jr jr_018_6525                                ; $6528: $18 $fb

    ld h, l                                       ; $652a: $65
    ld d, l                                       ; $652b: $55
    ld l, b                                       ; $652c: $68
    xor d                                         ; $652d: $aa
    cp c                                          ; $652e: $b9
    ld d, h                                       ; $652f: $54
    ld d, a                                       ; $6530: $57
    sbc d                                         ; $6531: $9a
    ld l, b                                       ; $6532: $68
    sub [hl]                                      ; $6533: $96
    ld h, a                                       ; $6534: $67
    ld a, c                                       ; $6535: $79
    sbc b                                         ; $6536: $98
    ld [hl], a                                    ; $6537: $77
    ld a, b                                       ; $6538: $78
    ld h, [hl]                                    ; $6539: $66
    ld a, b                                       ; $653a: $78
    adc b                                         ; $653b: $88
    adc b                                         ; $653c: $88
    add [hl]                                      ; $653d: $86
    ld h, a                                       ; $653e: $67
    adc b                                         ; $653f: $88
    add a                                         ; $6540: $87
    ld a, b                                       ; $6541: $78
    halt                                          ; $6542: $76
    ld a, b                                       ; $6543: $78
    add a                                         ; $6544: $87
    add a                                         ; $6545: $87
    adc b                                         ; $6546: $88
    adc b                                         ; $6547: $88
    add a                                         ; $6548: $87
    ld [hl], a                                    ; $6549: $77
    ld a, b                                       ; $654a: $78
    halt                                          ; $654b: $76
    ld h, a                                       ; $654c: $67
    adc b                                         ; $654d: $88
    adc b                                         ; $654e: $88
    add a                                         ; $654f: $87
    add a                                         ; $6550: $87
    ld [hl], a                                    ; $6551: $77
    ld a, b                                       ; $6552: $78
    add a                                         ; $6553: $87
    ld [hl], a                                    ; $6554: $77
    ld [hl], a                                    ; $6555: $77
    adc b                                         ; $6556: $88
    ld [hl], a                                    ; $6557: $77
    adc b                                         ; $6558: $88
    ld [hl], a                                    ; $6559: $77
    ld a, b                                       ; $655a: $78
    adc b                                         ; $655b: $88
    adc b                                         ; $655c: $88
    ld [hl], a                                    ; $655d: $77
    ld a, b                                       ; $655e: $78
    adc b                                         ; $655f: $88
    add a                                         ; $6560: $87
    ld [hl], a                                    ; $6561: $77
    adc c                                         ; $6562: $89
    add a                                         ; $6563: $87
    add a                                         ; $6564: $87
    ld [hl], a                                    ; $6565: $77
    adc c                                         ; $6566: $89
    adc b                                         ; $6567: $88
    add a                                         ; $6568: $87
    ld a, b                                       ; $6569: $78
    ld a, b                                       ; $656a: $78
    ld a, c                                       ; $656b: $79
    add a                                         ; $656c: $87
    ld a, b                                       ; $656d: $78
    adc b                                         ; $656e: $88
    add a                                         ; $656f: $87
    adc b                                         ; $6570: $88
    add a                                         ; $6571: $87
    add a                                         ; $6572: $87
    adc b                                         ; $6573: $88
    ld a, b                                       ; $6574: $78
    adc b                                         ; $6575: $88

Jump_018_6576:
    ld a, d                                       ; $6576: $7a

Call_018_6577:
    ld a, e                                       ; $6577: $7b
    ld a, [hl-]                                   ; $6578: $3a
    sub h                                         ; $6579: $94
    ld l, c                                       ; $657a: $69
    ld d, l                                       ; $657b: $55
    adc c                                         ; $657c: $89
    ld a, b                                       ; $657d: $78
    xor c                                         ; $657e: $a9
    adc b                                         ; $657f: $88
    add [hl]                                      ; $6580: $86
    ld a, c                                       ; $6581: $79
    ld a, b                                       ; $6582: $78
    add a                                         ; $6583: $87
    adc b                                         ; $6584: $88
    ld [hl], a                                    ; $6585: $77
    add a                                         ; $6586: $87

Call_018_6587:
    adc b                                         ; $6587: $88
    sub a                                         ; $6588: $97
    adc b                                         ; $6589: $88
    sub a                                         ; $658a: $97
    ld [hl], a                                    ; $658b: $77
    adc b                                         ; $658c: $88
    ld a, b                                       ; $658d: $78
    adc b                                         ; $658e: $88
    add a                                         ; $658f: $87
    adc b                                         ; $6590: $88
    adc c                                         ; $6591: $89
    ld [hl], a                                    ; $6592: $77
    adc b                                         ; $6593: $88
    sbc b                                         ; $6594: $98
    ld a, b                                       ; $6595: $78
    ld a, b                                       ; $6596: $78

Jump_018_6597:
    adc c                                         ; $6597: $89
    ld [hl], a                                    ; $6598: $77
    ld [hl], a                                    ; $6599: $77
    sbc b                                         ; $659a: $98
    adc b                                         ; $659b: $88
    ld a, b                                       ; $659c: $78
    add a                                         ; $659d: $87
    adc b                                         ; $659e: $88
    add a                                         ; $659f: $87
    adc b                                         ; $65a0: $88
    ld a, c                                       ; $65a1: $79
    add a                                         ; $65a2: $87
    ld a, b                                       ; $65a3: $78
    ld [hl], a                                    ; $65a4: $77
    adc b                                         ; $65a5: $88
    ld a, b                                       ; $65a6: $78
    add a                                         ; $65a7: $87

Call_018_65a8:
    adc b                                         ; $65a8: $88
    adc b                                         ; $65a9: $88
    ld a, b                                       ; $65aa: $78
    add a                                         ; $65ab: $87
    ld h, [hl]                                    ; $65ac: $66
    sbc c                                         ; $65ad: $99
    add l                                         ; $65ae: $85
    sbc e                                         ; $65af: $9b
    ld l, d                                       ; $65b0: $6a
    ld h, a                                       ; $65b1: $67
    adc b                                         ; $65b2: $88
    ld [hl], h                                    ; $65b3: $74
    ld l, d                                       ; $65b4: $6a
    halt                                          ; $65b5: $76
    adc c                                         ; $65b6: $89

Call_018_65b7:
    and a                                         ; $65b7: $a7

Call_018_65b8:
    ld b, h                                       ; $65b8: $44

Call_018_65b9:
    db $db                                        ; $65b9: $db
    dec h                                         ; $65ba: $25
    ld c, h                                       ; $65bb: $4c
    ld h, c                                       ; $65bc: $61
    reti                                          ; $65bd: $d9


    ld a, e                                       ; $65be: $7b
    ld [hl], h                                    ; $65bf: $74
    add a                                         ; $65c0: $87
    ld l, c                                       ; $65c1: $69
    halt                                          ; $65c2: $76
    halt                                          ; $65c3: $76
    ld a, b                                       ; $65c4: $78
    xor c                                         ; $65c5: $a9
    ld e, b                                       ; $65c6: $58
    ld [hl], a                                    ; $65c7: $77
    add l                                         ; $65c8: $85
    ld h, a                                       ; $65c9: $67
    adc b                                         ; $65ca: $88
    sbc b                                         ; $65cb: $98
    sbc d                                         ; $65cc: $9a
    ld b, a                                       ; $65cd: $47
    ld h, [hl]                                    ; $65ce: $66
    add a                                         ; $65cf: $87
    ld h, a                                       ; $65d0: $67
    ld a, c                                       ; $65d1: $79
    ld a, b                                       ; $65d2: $78
    halt                                          ; $65d3: $76
    ld a, b                                       ; $65d4: $78
    add a                                         ; $65d5: $87
    ld [hl], a                                    ; $65d6: $77
    ld e, b                                       ; $65d7: $58
    add a                                         ; $65d8: $87
    adc b                                         ; $65d9: $88
    add a                                         ; $65da: $87
    halt                                          ; $65db: $76
    ld h, a                                       ; $65dc: $67
    ld [hl], a                                    ; $65dd: $77
    adc b                                         ; $65de: $88
    ld [hl], a                                    ; $65df: $77
    add a                                         ; $65e0: $87
    add a                                         ; $65e1: $87
    ld [hl], a                                    ; $65e2: $77
    ld [hl], a                                    ; $65e3: $77
    ld h, a                                       ; $65e4: $67
    add a                                         ; $65e5: $87
    ld a, b                                       ; $65e6: $78
    adc b                                         ; $65e7: $88
    ld a, b                                       ; $65e8: $78
    add a                                         ; $65e9: $87
    ld [hl], a                                    ; $65ea: $77
    adc c                                         ; $65eb: $89
    ld [hl], a                                    ; $65ec: $77
    ld [hl], a                                    ; $65ed: $77
    add a                                         ; $65ee: $87
    ld [hl], a                                    ; $65ef: $77
    add a                                         ; $65f0: $87
    ld a, b                                       ; $65f1: $78
    ld a, b                                       ; $65f2: $78
    add a                                         ; $65f3: $87
    ld [hl], a                                    ; $65f4: $77
    adc b                                         ; $65f5: $88
    ld [hl], a                                    ; $65f6: $77
    add a                                         ; $65f7: $87
    adc b                                         ; $65f8: $88
    adc b                                         ; $65f9: $88
    sbc b                                         ; $65fa: $98
    ld e, b                                       ; $65fb: $58
    halt                                          ; $65fc: $76
    add [hl]                                      ; $65fd: $86
    halt                                          ; $65fe: $76
    ld l, d                                       ; $65ff: $6a
    adc b                                         ; $6600: $88
    sbc c                                         ; $6601: $99
    ld [hl], a                                    ; $6602: $77
    halt                                          ; $6603: $76
    ld a, c                                       ; $6604: $79
    ld [hl], a                                    ; $6605: $77
    adc b                                         ; $6606: $88
    ld a, b                                       ; $6607: $78
    add a                                         ; $6608: $87
    ld a, b                                       ; $6609: $78
    ld a, b                                       ; $660a: $78
    add a                                         ; $660b: $87
    adc b                                         ; $660c: $88
    add a                                         ; $660d: $87
    ld [hl], a                                    ; $660e: $77
    adc b                                         ; $660f: $88
    add l                                         ; $6610: $85
    add hl, de                                    ; $6611: $19
    ld sp, hl                                     ; $6612: $f9
    ld h, [hl]                                    ; $6613: $66
    ld h, [hl]                                    ; $6614: $66
    ld [hl], a                                    ; $6615: $77
    sbc d                                         ; $6616: $9a
    ret z                                         ; $6617: $c8

    ld d, l                                       ; $6618: $55
    ld d, a                                       ; $6619: $57
    sbc c                                         ; $661a: $99
    ld l, d                                       ; $661b: $6a
    add [hl]                                      ; $661c: $86
    add a                                         ; $661d: $87
    ld a, c                                       ; $661e: $79
    sbc b                                         ; $661f: $98
    adc b                                         ; $6620: $88
    add a                                         ; $6621: $87
    ld h, a                                       ; $6622: $67
    ld a, b                                       ; $6623: $78
    sbc d                                         ; $6624: $9a
    adc b                                         ; $6625: $88
    ld h, a                                       ; $6626: $67
    ld h, a                                       ; $6627: $67
    sbc b                                         ; $6628: $98
    adc b                                         ; $6629: $88
    ld a, b                                       ; $662a: $78
    ld [hl], a                                    ; $662b: $77
    adc b                                         ; $662c: $88
    ld a, b                                       ; $662d: $78
    add a                                         ; $662e: $87
    ld a, b                                       ; $662f: $78
    sub a                                         ; $6630: $97
    adc b                                         ; $6631: $88
    add a                                         ; $6632: $87
    adc b                                         ; $6633: $88
    ld [hl], a                                    ; $6634: $77
    ld a, b                                       ; $6635: $78
    adc b                                         ; $6636: $88
    adc b                                         ; $6637: $88
    ld [hl], a                                    ; $6638: $77
    ld a, b                                       ; $6639: $78
    ld a, b                                       ; $663a: $78
    add a                                         ; $663b: $87
    ld [hl], a                                    ; $663c: $77
    add a                                         ; $663d: $87
    ld a, b                                       ; $663e: $78
    adc c                                         ; $663f: $89
    sub a                                         ; $6640: $97
    ld a, d                                       ; $6641: $7a
    ld h, l                                       ; $6642: $65
    add a                                         ; $6643: $87
    ld h, [hl]                                    ; $6644: $66
    sbc c                                         ; $6645: $99
    ld a, b                                       ; $6646: $78
    adc c                                         ; $6647: $89
    add a                                         ; $6648: $87
    add l                                         ; $6649: $85
    adc b                                         ; $664a: $88
    adc b                                         ; $664b: $88
    ld [hl], a                                    ; $664c: $77
    adc b                                         ; $664d: $88
    ld e, b                                       ; $664e: $58
    sub a                                         ; $664f: $97
    adc b                                         ; $6650: $88
    sub [hl]                                      ; $6651: $96
    sbc d                                         ; $6652: $9a
    ld d, [hl]                                    ; $6653: $56
    add a                                         ; $6654: $87
    add a                                         ; $6655: $87
    sbc b                                         ; $6656: $98
    add [hl]                                      ; $6657: $86
    ld [hl], a                                    ; $6658: $77
    ld [hl], a                                    ; $6659: $77
    sbc b                                         ; $665a: $98
    sub [hl]                                      ; $665b: $96
    ld e, c                                       ; $665c: $59
    add [hl]                                      ; $665d: $86
    ld a, c                                       ; $665e: $79
    sbc b                                         ; $665f: $98
    add [hl]                                      ; $6660: $86
    ld a, b                                       ; $6661: $78
    ld [hl], a                                    ; $6662: $77
    ld [hl], a                                    ; $6663: $77
    adc c                                         ; $6664: $89
    add l                                         ; $6665: $85
    ld a, b                                       ; $6666: $78
    ld [hl], a                                    ; $6667: $77
    ld a, b                                       ; $6668: $78
    halt                                          ; $6669: $76
    ld l, b                                       ; $666a: $68
    xor b                                         ; $666b: $a8
    ld l, b                                       ; $666c: $68
    add [hl]                                      ; $666d: $86
    add a                                         ; $666e: $87
    adc b                                         ; $666f: $88
    add a                                         ; $6670: $87
    ld [hl], a                                    ; $6671: $77
    add a                                         ; $6672: $87
    sbc b                                         ; $6673: $98
    ld [hl], a                                    ; $6674: $77
    ld a, b                                       ; $6675: $78
    ld a, b                                       ; $6676: $78
    ld [hl], a                                    ; $6677: $77
    ld [hl], a                                    ; $6678: $77
    ld a, b                                       ; $6679: $78
    ld a, b                                       ; $667a: $78
    add a                                         ; $667b: $87
    adc b                                         ; $667c: $88
    ld [hl], a                                    ; $667d: $77
    ld [hl], a                                    ; $667e: $77
    ld [hl], a                                    ; $667f: $77
    adc b                                         ; $6680: $88
    add a                                         ; $6681: $87
    ld [hl], a                                    ; $6682: $77
    ld [hl], a                                    ; $6683: $77
    ld a, b                                       ; $6684: $78
    ld [hl], a                                    ; $6685: $77
    ld [hl], a                                    ; $6686: $77
    ld a, b                                       ; $6687: $78
    add a                                         ; $6688: $87
    ld a, b                                       ; $6689: $78
    sbc b                                         ; $668a: $98
    ld h, [hl]                                    ; $668b: $66
    adc b                                         ; $668c: $88
    add a                                         ; $668d: $87
    halt                                          ; $668e: $76
    ld [hl], a                                    ; $668f: $77
    adc b                                         ; $6690: $88
    sbc b                                         ; $6691: $98
    sub [hl]                                      ; $6692: $96
    sbc b                                         ; $6693: $98
    and [hl]                                      ; $6694: $a6
    ld b, l                                       ; $6695: $45
    or [hl]                                       ; $6696: $b6
    ld h, $79                                     ; $6697: $26 $79
    adc b                                         ; $6699: $88
    adc h                                         ; $669a: $8c
    add a                                         ; $669b: $87
    ld h, l                                       ; $669c: $65
    add a                                         ; $669d: $87
    ld a, b                                       ; $669e: $78
    ld l, b                                       ; $669f: $68
    adc b                                         ; $66a0: $88
    ld h, a                                       ; $66a1: $67
    ld l, b                                       ; $66a2: $68
    adc b                                         ; $66a3: $88
    ld [hl], a                                    ; $66a4: $77
    ld a, c                                       ; $66a5: $79
    add [hl]                                      ; $66a6: $86
    halt                                          ; $66a7: $76
    sub a                                         ; $66a8: $97
    ld a, c                                       ; $66a9: $79
    ld a, b                                       ; $66aa: $78
    add [hl]                                      ; $66ab: $86
    ld [hl], a                                    ; $66ac: $77
    adc c                                         ; $66ad: $89
    sbc b                                         ; $66ae: $98
    ld h, l                                       ; $66af: $65
    adc b                                         ; $66b0: $88
    adc c                                         ; $66b1: $89
    ld a, c                                       ; $66b2: $79
    sub a                                         ; $66b3: $97
    ld h, a                                       ; $66b4: $67
    adc b                                         ; $66b5: $88
    ld h, a                                       ; $66b6: $67
    halt                                          ; $66b7: $76
    adc b                                         ; $66b8: $88
    sbc b                                         ; $66b9: $98
    sub a                                         ; $66ba: $97
    halt                                          ; $66bb: $76
    ld a, d                                       ; $66bc: $7a
    adc b                                         ; $66bd: $88
    ld a, b                                       ; $66be: $78
    halt                                          ; $66bf: $76
    adc c                                         ; $66c0: $89
    adc b                                         ; $66c1: $88
    ld [hl], a                                    ; $66c2: $77
    ld a, c                                       ; $66c3: $79
    add a                                         ; $66c4: $87
    adc b                                         ; $66c5: $88
    adc b                                         ; $66c6: $88
    ld [hl], a                                    ; $66c7: $77
    adc b                                         ; $66c8: $88
    adc b                                         ; $66c9: $88
    ld a, b                                       ; $66ca: $78
    ld a, b                                       ; $66cb: $78
    ld [hl], a                                    ; $66cc: $77
    adc b                                         ; $66cd: $88
    adc b                                         ; $66ce: $88
    adc b                                         ; $66cf: $88
    adc b                                         ; $66d0: $88
    add a                                         ; $66d1: $87
    ld a, b                                       ; $66d2: $78
    adc b                                         ; $66d3: $88
    add a                                         ; $66d4: $87
    adc b                                         ; $66d5: $88
    add a                                         ; $66d6: $87
    adc b                                         ; $66d7: $88
    adc b                                         ; $66d8: $88
    adc b                                         ; $66d9: $88
    ld a, b                                       ; $66da: $78
    ld [hl], a                                    ; $66db: $77
    adc b                                         ; $66dc: $88
    sub a                                         ; $66dd: $97
    ld [hl], a                                    ; $66de: $77
    add a                                         ; $66df: $87
    adc b                                         ; $66e0: $88
    halt                                          ; $66e1: $76
    adc b                                         ; $66e2: $88
    adc b                                         ; $66e3: $88
    sbc b                                         ; $66e4: $98
    adc b                                         ; $66e5: $88
    ld a, c                                       ; $66e6: $79
    ld [hl], l                                    ; $66e7: $75
    sub a                                         ; $66e8: $97
    ld d, [hl]                                    ; $66e9: $56
    adc b                                         ; $66ea: $88
    adc b                                         ; $66eb: $88
    sbc d                                         ; $66ec: $9a
    ld [hl], a                                    ; $66ed: $77
    halt                                          ; $66ee: $76
    add a                                         ; $66ef: $87
    adc b                                         ; $66f0: $88
    ld a, b                                       ; $66f1: $78
    adc b                                         ; $66f2: $88
    ld [hl], a                                    ; $66f3: $77
    ld [hl], a                                    ; $66f4: $77
    adc b                                         ; $66f5: $88
    ld a, b                                       ; $66f6: $78
    adc b                                         ; $66f7: $88
    add [hl]                                      ; $66f8: $86
    ld [hl], a                                    ; $66f9: $77
    adc b                                         ; $66fa: $88
    add a                                         ; $66fb: $87
    ld d, c                                       ; $66fc: $51
    xor a                                         ; $66fd: $af
    sub [hl]                                      ; $66fe: $96
    ld d, [hl]                                    ; $66ff: $56
    ld d, a                                       ; $6700: $57
    ld a, c                                       ; $6701: $79
    sbc h                                         ; $6702: $9c
    add [hl]                                      ; $6703: $86
    ld d, [hl]                                    ; $6704: $56
    ld a, c                                       ; $6705: $79
    add [hl]                                      ; $6706: $86
    sub a                                         ; $6707: $97
    ld a, b                                       ; $6708: $78
    ld [hl], a                                    ; $6709: $77
    adc b                                         ; $670a: $88
    add a                                         ; $670b: $87
    add a                                         ; $670c: $87
    ld h, [hl]                                    ; $670d: $66
    ld [hl], a                                    ; $670e: $77
    adc c                                         ; $670f: $89
    xor b                                         ; $6710: $a8
    add [hl]                                      ; $6711: $86
    ld [hl], a                                    ; $6712: $77
    ld l, c                                       ; $6713: $69
    sub a                                         ; $6714: $97
    add [hl]                                      ; $6715: $86
    add a                                         ; $6716: $87
    ld h, a                                       ; $6717: $67
    ld a, d                                       ; $6718: $7a
    sub h                                         ; $6719: $94
    ld [hl], a                                    ; $671a: $77
    ld a, b                                       ; $671b: $78
    adc c                                         ; $671c: $89
    ld a, b                                       ; $671d: $78
    add a                                         ; $671e: $87
    ld l, c                                       ; $671f: $69
    adc b                                         ; $6720: $88
    halt                                          ; $6721: $76
    ld a, b                                       ; $6722: $78
    add [hl]                                      ; $6723: $86
    adc c                                         ; $6724: $89
    adc b                                         ; $6725: $88
    halt                                          ; $6726: $76
    adc b                                         ; $6727: $88
    ld [hl], a                                    ; $6728: $77
    ld [hl], a                                    ; $6729: $77
    adc c                                         ; $672a: $89
    sbc b                                         ; $672b: $98
    add a                                         ; $672c: $87
    ld l, c                                       ; $672d: $69
    ld h, l                                       ; $672e: $65
    sub [hl]                                      ; $672f: $96
    adc b                                         ; $6730: $88
    ld l, c                                       ; $6731: $69
    adc b                                         ; $6732: $88
    adc b                                         ; $6733: $88
    ld a, c                                       ; $6734: $79
    add l                                         ; $6735: $85
    add a                                         ; $6736: $87
    ld a, b                                       ; $6737: $78
    ld a, b                                       ; $6738: $78
    ld a, b                                       ; $6739: $78
    ld [hl], a                                    ; $673a: $77
    ld [hl], a                                    ; $673b: $77
    add a                                         ; $673c: $87
    adc b                                         ; $673d: $88
    sub a                                         ; $673e: $97
    ld h, a                                       ; $673f: $67
    add a                                         ; $6740: $87
    ld a, c                                       ; $6741: $79
    adc b                                         ; $6742: $88
    halt                                          ; $6743: $76
    adc b                                         ; $6744: $88
    add a                                         ; $6745: $87
    ld h, a                                       ; $6746: $67
    add a                                         ; $6747: $87
    add a                                         ; $6748: $87
    adc b                                         ; $6749: $88
    ld [hl], a                                    ; $674a: $77
    sbc b                                         ; $674b: $98
    ld a, b                                       ; $674c: $78
    ld [hl], a                                    ; $674d: $77
    halt                                          ; $674e: $76
    ld a, b                                       ; $674f: $78
    adc b                                         ; $6750: $88
    add a                                         ; $6751: $87
    adc b                                         ; $6752: $88
    add a                                         ; $6753: $87
    ld [hl], a                                    ; $6754: $77
    ld [hl], a                                    ; $6755: $77
    ld a, b                                       ; $6756: $78
    add a                                         ; $6757: $87
    add a                                         ; $6758: $87
    add a                                         ; $6759: $87
    ld [hl], a                                    ; $675a: $77
    ld a, b                                       ; $675b: $78
    ld [hl], a                                    ; $675c: $77
    ld a, b                                       ; $675d: $78
    adc b                                         ; $675e: $88
    adc b                                         ; $675f: $88
    add a                                         ; $6760: $87
    adc b                                         ; $6761: $88
    ld [hl], a                                    ; $6762: $77
    adc b                                         ; $6763: $88
    adc b                                         ; $6764: $88
    ld [hl], a                                    ; $6765: $77
    ld a, b                                       ; $6766: $78
    add a                                         ; $6767: $87
    adc b                                         ; $6768: $88
    add a                                         ; $6769: $87
    ld [hl], a                                    ; $676a: $77
    ld [hl], a                                    ; $676b: $77
    adc b                                         ; $676c: $88
    adc b                                         ; $676d: $88
    ld [hl], a                                    ; $676e: $77
    ld a, b                                       ; $676f: $78
    adc b                                         ; $6770: $88
    add a                                         ; $6771: $87
    ld [hl], a                                    ; $6772: $77
    add a                                         ; $6773: $87
    adc b                                         ; $6774: $88

Jump_018_6775:
    add a                                         ; $6775: $87
    sbc b                                         ; $6776: $98
    ld a, b                                       ; $6777: $78
    ld [hl], a                                    ; $6778: $77
    ld a, b                                       ; $6779: $78
    ld [hl], a                                    ; $677a: $77
    ld [hl], a                                    ; $677b: $77
    sbc c                                         ; $677c: $99
    adc b                                         ; $677d: $88
    adc b                                         ; $677e: $88
    ld e, b                                       ; $677f: $58
    sub a                                         ; $6780: $97
    ld a, b                                       ; $6781: $78
    ld a, b                                       ; $6782: $78
    ld a, b                                       ; $6783: $78
    adc b                                         ; $6784: $88
    adc b                                         ; $6785: $88

Jump_018_6786:
    ld a, d                                       ; $6786: $7a
    ld l, c                                       ; $6787: $69
    or l                                          ; $6788: $b5
    or [hl]                                       ; $6789: $b6
    ld a, d                                       ; $678a: $7a
    add hl, de                                    ; $678b: $19
    or c                                          ; $678c: $b1
    ld c, e                                       ; $678d: $4b
    adc b                                         ; $678e: $88
    adc b                                         ; $678f: $88
    cp d                                          ; $6790: $ba
    ld d, [hl]                                    ; $6791: $56
    ld a, b                                       ; $6792: $78
    add [hl]                                      ; $6793: $86
    and [hl]                                      ; $6794: $a6
    ld a, c                                       ; $6795: $79
    sub a                                         ; $6796: $97
    add [hl]                                      ; $6797: $86
    ld a, c                                       ; $6798: $79
    adc b                                         ; $6799: $88
    add a                                         ; $679a: $87
    sbc b                                         ; $679b: $98
    ld h, a                                       ; $679c: $67
    ld a, b                                       ; $679d: $78
    adc b                                         ; $679e: $88
    ld a, c                                       ; $679f: $79
    add a                                         ; $67a0: $87
    add a                                         ; $67a1: $87
    adc c                                         ; $67a2: $89
    ld [hl], a                                    ; $67a3: $77
    ld a, b                                       ; $67a4: $78
    add a                                         ; $67a5: $87
    adc c                                         ; $67a6: $89
    adc b                                         ; $67a7: $88
    adc b                                         ; $67a8: $88
    ld [hl], a                                    ; $67a9: $77
    ld [hl], a                                    ; $67aa: $77
    ld [hl], a                                    ; $67ab: $77
    adc b                                         ; $67ac: $88
    sbc b                                         ; $67ad: $98
    adc b                                         ; $67ae: $88
    ld a, b                                       ; $67af: $78
    add a                                         ; $67b0: $87
    add a                                         ; $67b1: $87
    add a                                         ; $67b2: $87
    add a                                         ; $67b3: $87
    adc b                                         ; $67b4: $88
    adc b                                         ; $67b5: $88
    adc b                                         ; $67b6: $88
    ld [hl], a                                    ; $67b7: $77
    adc b                                         ; $67b8: $88
    add a                                         ; $67b9: $87
    adc c                                         ; $67ba: $89
    adc b                                         ; $67bb: $88
    add a                                         ; $67bc: $87
    sbc c                                         ; $67bd: $99
    add e                                         ; $67be: $83
    adc b                                         ; $67bf: $88
    adc e                                         ; $67c0: $8b
    ld d, h                                       ; $67c1: $54
    ld l, b                                       ; $67c2: $68
    adc c                                         ; $67c3: $89
    xor c                                         ; $67c4: $a9
    sub h                                         ; $67c5: $94
    ld l, c                                       ; $67c6: $69
    add a                                         ; $67c7: $87
    add a                                         ; $67c8: $87
    add [hl]                                      ; $67c9: $86
    ld a, c                                       ; $67ca: $79
    adc b                                         ; $67cb: $88
    ld [hl], a                                    ; $67cc: $77
    ld a, b                                       ; $67cd: $78
    adc b                                         ; $67ce: $88
    ld [hl], a                                    ; $67cf: $77
    adc b                                         ; $67d0: $88
    ld [hl], a                                    ; $67d1: $77
    add a                                         ; $67d2: $87
    adc b                                         ; $67d3: $88
    ld [hl], a                                    ; $67d4: $77
    ld [hl], a                                    ; $67d5: $77
    ld [hl], a                                    ; $67d6: $77
    ld a, b                                       ; $67d7: $78
    ld a, b                                       ; $67d8: $78
    ld a, b                                       ; $67d9: $78
    add a                                         ; $67da: $87
    ld a, b                                       ; $67db: $78
    add a                                         ; $67dc: $87
    ld a, b                                       ; $67dd: $78
    add a                                         ; $67de: $87
    ld [hl], a                                    ; $67df: $77
    adc b                                         ; $67e0: $88
    add a                                         ; $67e1: $87
    ld [hl], a                                    ; $67e2: $77
    ld a, b                                       ; $67e3: $78
    adc b                                         ; $67e4: $88
    ld a, b                                       ; $67e5: $78
    add a                                         ; $67e6: $87
    add [hl]                                      ; $67e7: $86
    rla                                           ; $67e8: $17
    ld a, [$5666]                                 ; $67e9: $fa $66 $56
    add a                                         ; $67ec: $87
    adc c                                         ; $67ed: $89
    cp b                                          ; $67ee: $b8
    ld h, l                                       ; $67ef: $65
    ld h, a                                       ; $67f0: $67
    sbc b                                         ; $67f1: $98
    ld a, d                                       ; $67f2: $7a
    ld a, c                                       ; $67f3: $79
    and [hl]                                      ; $67f4: $a6
    ld h, a                                       ; $67f5: $67
    sub [hl]                                      ; $67f6: $96
    ld a, b                                       ; $67f7: $78
    halt                                          ; $67f8: $76
    ld h, a                                       ; $67f9: $67
    sbc b                                         ; $67fa: $98
    adc d                                         ; $67fb: $8a
    ld [hl], a                                    ; $67fc: $77
    ld [hl], l                                    ; $67fd: $75
    ld a, b                                       ; $67fe: $78
    adc c                                         ; $67ff: $89
    add [hl]                                      ; $6800: $86
    ld a, b                                       ; $6801: $78
    ld [hl], a                                    ; $6802: $77
    ld [hl], a                                    ; $6803: $77
    add a                                         ; $6804: $87
    ld a, b                                       ; $6805: $78
    adc b                                         ; $6806: $88
    adc b                                         ; $6807: $88
    ld a, b                                       ; $6808: $78
    add [hl]                                      ; $6809: $86
    ld a, b                                       ; $680a: $78
    add a                                         ; $680b: $87
    add a                                         ; $680c: $87
    adc b                                         ; $680d: $88
    adc b                                         ; $680e: $88
    ld a, b                                       ; $680f: $78
    add a                                         ; $6810: $87
    ld a, c                                       ; $6811: $79
    add a                                         ; $6812: $87
    ld a, b                                       ; $6813: $78
    add a                                         ; $6814: $87
    add a                                         ; $6815: $87
    ld e, c                                       ; $6816: $59
    ld a, b                                       ; $6817: $78
    ld [hl], a                                    ; $6818: $77
    add a                                         ; $6819: $87
    adc c                                         ; $681a: $89
    halt                                          ; $681b: $76
    ld a, b                                       ; $681c: $78
    ld a, c                                       ; $681d: $79
    add [hl]                                      ; $681e: $86
    adc c                                         ; $681f: $89
    add a                                         ; $6820: $87
    adc b                                         ; $6821: $88
    add a                                         ; $6822: $87
    ld [hl], a                                    ; $6823: $77
    add a                                         ; $6824: $87
    ld h, a                                       ; $6825: $67
    adc c                                         ; $6826: $89
    add a                                         ; $6827: $87
    ld a, b                                       ; $6828: $78
    add a                                         ; $6829: $87
    ld [hl], a                                    ; $682a: $77
    adc b                                         ; $682b: $88
    ld a, b                                       ; $682c: $78
    ld [hl], a                                    ; $682d: $77
    add a                                         ; $682e: $87
    ld a, b                                       ; $682f: $78
    add a                                         ; $6830: $87
    add a                                         ; $6831: $87
    add a                                         ; $6832: $87
    adc b                                         ; $6833: $88
    adc b                                         ; $6834: $88
    ld [hl], a                                    ; $6835: $77
    ld a, b                                       ; $6836: $78
    ld a, b                                       ; $6837: $78
    adc b                                         ; $6838: $88
    ld a, b                                       ; $6839: $78
    ld a, b                                       ; $683a: $78
    ld [hl], a                                    ; $683b: $77
    sub [hl]                                      ; $683c: $96
    ld l, b                                       ; $683d: $68
    ld a, c                                       ; $683e: $79
    add a                                         ; $683f: $87
    add a                                         ; $6840: $87
    ld [hl], a                                    ; $6841: $77
    add a                                         ; $6842: $87
    sub a                                         ; $6843: $97
    ld a, b                                       ; $6844: $78
    ld l, b                                       ; $6845: $68
    ld a, c                                       ; $6846: $79
    ld [hl], l                                    ; $6847: $75
    and [hl]                                      ; $6848: $a6
    ld a, c                                       ; $6849: $79
    halt                                          ; $684a: $76
    sbc b                                         ; $684b: $98
    ld [hl], a                                    ; $684c: $77
    add a                                         ; $684d: $87
    adc b                                         ; $684e: $88
    add a                                         ; $684f: $87
    ld h, a                                       ; $6850: $67
    adc b                                         ; $6851: $88
    add a                                         ; $6852: $87
    ld h, l                                       ; $6853: $65
    ld a, b                                       ; $6854: $78
    add a                                         ; $6855: $87
    add a                                         ; $6856: $87
    sub [hl]                                      ; $6857: $96
    adc c                                         ; $6858: $89
    ld a, b                                       ; $6859: $78
    halt                                          ; $685a: $76
    adc b                                         ; $685b: $88
    ld a, b                                       ; $685c: $78
    adc b                                         ; $685d: $88
    ld [hl], a                                    ; $685e: $77
    adc b                                         ; $685f: $88
    add a                                         ; $6860: $87
    ld [hl], a                                    ; $6861: $77
    ld a, b                                       ; $6862: $78
    ld [hl], a                                    ; $6863: $77
    adc b                                         ; $6864: $88
    add a                                         ; $6865: $87
    adc b                                         ; $6866: $88
    ld [hl], a                                    ; $6867: $77
    ld [hl], a                                    ; $6868: $77
    ld [hl], a                                    ; $6869: $77
    add a                                         ; $686a: $87
    adc b                                         ; $686b: $88
    ld a, b                                       ; $686c: $78
    adc b                                         ; $686d: $88
    add a                                         ; $686e: $87
    ld a, b                                       ; $686f: $78
    add a                                         ; $6870: $87
    adc b                                         ; $6871: $88
    ld a, b                                       ; $6872: $78
    adc b                                         ; $6873: $88
    ret z                                         ; $6874: $c8

Jump_018_6875:
    ld d, a                                       ; $6875: $57
    sbc b                                         ; $6876: $98
    ld h, l                                       ; $6877: $65
    ld [hl], e                                    ; $6878: $73
    inc l                                         ; $6879: $2c
    sub a                                         ; $687a: $97
    adc e                                         ; $687b: $8b
    add [hl]                                      ; $687c: $86
    add [hl]                                      ; $687d: $86
    ld a, b                                       ; $687e: $78
    add a                                         ; $687f: $87
    adc b                                         ; $6880: $88
    ld a, c                                       ; $6881: $79
    add a                                         ; $6882: $87
    ld h, a                                       ; $6883: $67
    adc b                                         ; $6884: $88
    adc b                                         ; $6885: $88
    adc b                                         ; $6886: $88
    ld [hl], a                                    ; $6887: $77
    ld a, b                                       ; $6888: $78
    adc c                                         ; $6889: $89
    ld [hl], a                                    ; $688a: $77
    adc b                                         ; $688b: $88
    adc b                                         ; $688c: $88
    add a                                         ; $688d: $87
    ld [hl], a                                    ; $688e: $77
    ld [hl], a                                    ; $688f: $77
    adc b                                         ; $6890: $88
    adc b                                         ; $6891: $88
    adc b                                         ; $6892: $88
    adc b                                         ; $6893: $88
    ld [hl], a                                    ; $6894: $77
    ld [hl], a                                    ; $6895: $77
    ld [hl], a                                    ; $6896: $77
    ld a, b                                       ; $6897: $78
    ld [hl], e                                    ; $6898: $73
    ccf                                           ; $6899: $3f
    or $65                                        ; $689a: $f6 $65
    ld e, b                                       ; $689c: $58
    ld a, b                                       ; $689d: $78
    sbc e                                         ; $689e: $9b
    and [hl]                                      ; $689f: $a6
    ld d, [hl]                                    ; $68a0: $56
    ld [hl], a                                    ; $68a1: $77
    sub [hl]                                      ; $68a2: $96
    adc c                                         ; $68a3: $89
    add a                                         ; $68a4: $87
    halt                                          ; $68a5: $76
    adc b                                         ; $68a6: $88
    add a                                         ; $68a7: $87

Call_018_68a8:
    adc b                                         ; $68a8: $88
    halt                                          ; $68a9: $76
    ld h, a                                       ; $68aa: $67
    sbc b                                         ; $68ab: $98
    sbc b                                         ; $68ac: $98
    ld h, a                                       ; $68ad: $67
    halt                                          ; $68ae: $76
    adc b                                         ; $68af: $88
    sbc b                                         ; $68b0: $98
    halt                                          ; $68b1: $76
    ld a, b                                       ; $68b2: $78
    ld [hl], a                                    ; $68b3: $77
    adc b                                         ; $68b4: $88
    ld [hl], a                                    ; $68b5: $77
    ld a, b                                       ; $68b6: $78
    adc b                                         ; $68b7: $88
    adc b                                         ; $68b8: $88
    halt                                          ; $68b9: $76
    ld [hl], a                                    ; $68ba: $77
    ld a, b                                       ; $68bb: $78
    sub a                                         ; $68bc: $97
    adc b                                         ; $68bd: $88
    add a                                         ; $68be: $87
    adc b                                         ; $68bf: $88
    add a                                         ; $68c0: $87
    add a                                         ; $68c1: $87
    ld [hl], a                                    ; $68c2: $77
    ld a, b                                       ; $68c3: $78
    ld a, b                                       ; $68c4: $78
    adc b                                         ; $68c5: $88
    add a                                         ; $68c6: $87
    ld [hl], a                                    ; $68c7: $77
    adc b                                         ; $68c8: $88
    ld a, b                                       ; $68c9: $78
    ld [hl], a                                    ; $68ca: $77
    adc b                                         ; $68cb: $88
    ld [hl], a                                    ; $68cc: $77
    ld a, b                                       ; $68cd: $78
    ld [hl], a                                    ; $68ce: $77
    sub a                                         ; $68cf: $97
    ld l, d                                       ; $68d0: $6a
    add a                                         ; $68d1: $87
    adc b                                         ; $68d2: $88
    add a                                         ; $68d3: $87
    ld a, b                                       ; $68d4: $78
    adc b                                         ; $68d5: $88
    ld h, a                                       ; $68d6: $67
    ld a, b                                       ; $68d7: $78
    adc d                                         ; $68d8: $8a
    add a                                         ; $68d9: $87
    ld h, [hl]                                    ; $68da: $66
    adc d                                         ; $68db: $8a
    ld [hl], a                                    ; $68dc: $77
    ld d, a                                       ; $68dd: $57
    ld e, c                                       ; $68de: $59
    sbc b                                         ; $68df: $98
    sbc d                                         ; $68e0: $9a
    ld e, b                                       ; $68e1: $58
    pop bc                                        ; $68e2: $c1
    adc e                                         ; $68e3: $8b
    ld b, h                                       ; $68e4: $44
    and l                                         ; $68e5: $a5
    ld c, e                                       ; $68e6: $4b
    adc b                                         ; $68e7: $88
    add a                                         ; $68e8: $87
    rst $00                                       ; $68e9: $c7
    ld l, c                                       ; $68ea: $69
    add a                                         ; $68eb: $87
    ld [hl], a                                    ; $68ec: $77
    sbc c                                         ; $68ed: $99
    ld l, b                                       ; $68ee: $68
    sub a                                         ; $68ef: $97
    add e                                         ; $68f0: $83
    sbc c                                         ; $68f1: $99
    adc e                                         ; $68f2: $8b
    ld d, [hl]                                    ; $68f3: $56
    and a                                         ; $68f4: $a7
    ld a, b                                       ; $68f5: $78
    ld a, b                                       ; $68f6: $78
    ld a, b                                       ; $68f7: $78
    ld [hl], a                                    ; $68f8: $77
    ld l, c                                       ; $68f9: $69
    add a                                         ; $68fa: $87
    and a                                         ; $68fb: $a7
    ld c, b                                       ; $68fc: $48
    sub a                                         ; $68fd: $97
    add a                                         ; $68fe: $87
    sbc c                                         ; $68ff: $99
    add a                                         ; $6900: $87
    ld a, b                                       ; $6901: $78
    ld a, b                                       ; $6902: $78
    add [hl]                                      ; $6903: $86
    ld h, a                                       ; $6904: $67
    add [hl]                                      ; $6905: $86
    adc c                                         ; $6906: $89
    ld [hl], a                                    ; $6907: $77
    ld a, c                                       ; $6908: $79
    add a                                         ; $6909: $87
    ld a, b                                       ; $690a: $78
    ld [hl], a                                    ; $690b: $77
    sbc b                                         ; $690c: $98
    ld [hl], a                                    ; $690d: $77
    ld h, a                                       ; $690e: $67
    ld [hl], a                                    ; $690f: $77
    adc b                                         ; $6910: $88
    add a                                         ; $6911: $87
    ld a, b                                       ; $6912: $78
    adc b                                         ; $6913: $88
    adc b                                         ; $6914: $88
    ld [hl], a                                    ; $6915: $77
    ld [hl], a                                    ; $6916: $77
    ld a, b                                       ; $6917: $78
    adc b                                         ; $6918: $88
    ld [hl], a                                    ; $6919: $77
    ld [hl], a                                    ; $691a: $77
    ld [hl], a                                    ; $691b: $77
    ld [hl], a                                    ; $691c: $77
    add a                                         ; $691d: $87
    ld [hl], a                                    ; $691e: $77
    add a                                         ; $691f: $87
    adc b                                         ; $6920: $88
    ld a, b                                       ; $6921: $78
    adc b                                         ; $6922: $88
    add a                                         ; $6923: $87
    ld [hl], a                                    ; $6924: $77
    add a                                         ; $6925: $87
    ld l, b                                       ; $6926: $68
    ld [hl], a                                    ; $6927: $77
    sub a                                         ; $6928: $97
    sbc b                                         ; $6929: $98
    ld h, l                                       ; $692a: $65
    ld a, c                                       ; $692b: $79
    ld l, b                                       ; $692c: $68
    adc b                                         ; $692d: $88
    ld a, b                                       ; $692e: $78
    ld a, b                                       ; $692f: $78
    adc b                                         ; $6930: $88
    ld a, b                                       ; $6931: $78
    adc b                                         ; $6932: $88
    add [hl]                                      ; $6933: $86
    ld [hl], a                                    ; $6934: $77
    ld [hl], a                                    ; $6935: $77
    ld [hl], a                                    ; $6936: $77
    add a                                         ; $6937: $87
    adc b                                         ; $6938: $88
    ld a, b                                       ; $6939: $78
    ld [hl], a                                    ; $693a: $77
    ld a, b                                       ; $693b: $78
    add a                                         ; $693c: $87
    ld a, b                                       ; $693d: $78
    ld a, b                                       ; $693e: $78
    adc b                                         ; $693f: $88
    add a                                         ; $6940: $87
    ld [hl], a                                    ; $6941: $77
    add a                                         ; $6942: $87
    add a                                         ; $6943: $87
    add a                                         ; $6944: $87
    adc b                                         ; $6945: $88
    ld [hl], a                                    ; $6946: $77
    adc b                                         ; $6947: $88
    add a                                         ; $6948: $87
    add a                                         ; $6949: $87
    adc b                                         ; $694a: $88
    add a                                         ; $694b: $87
    add a                                         ; $694c: $87
    ld [hl], a                                    ; $694d: $77
    ld [hl], a                                    ; $694e: $77
    ld b, d                                       ; $694f: $42
    rst $28                                       ; $6950: $ef
    ld h, [hl]                                    ; $6951: $66
    ld b, [hl]                                    ; $6952: $46
    add a                                         ; $6953: $87
    adc c                                         ; $6954: $89
    xor d                                         ; $6955: $aa
    ld [hl], l                                    ; $6956: $75
    ld h, [hl]                                    ; $6957: $66
    ld a, c                                       ; $6958: $79
    ld l, c                                       ; $6959: $69
    xor b                                         ; $695a: $a8
    add a                                         ; $695b: $87
    ld h, a                                       ; $695c: $67
    adc b                                         ; $695d: $88
    ld a, b                                       ; $695e: $78
    add a                                         ; $695f: $87
    ld d, a                                       ; $6960: $57
    adc b                                         ; $6961: $88
    sbc b                                         ; $6962: $98
    ld [hl], a                                    ; $6963: $77
    sub [hl]                                      ; $6964: $96
    add [hl]                                      ; $6965: $86
    sbc d                                         ; $6966: $9a
    ld l, b                                       ; $6967: $68
    add l                                         ; $6968: $85
    ld c, d                                       ; $6969: $4a
    add [hl]                                      ; $696a: $86
    sbc c                                         ; $696b: $99
    add [hl]                                      ; $696c: $86
    ld a, b                                       ; $696d: $78
    adc c                                         ; $696e: $89
    ld a, b                                       ; $696f: $78
    ld h, a                                       ; $6970: $67
    ld l, b                                       ; $6971: $68
    sbc b                                         ; $6972: $98
    add [hl]                                      ; $6973: $86
    adc c                                         ; $6974: $89
    ld a, b                                       ; $6975: $78
    adc b                                         ; $6976: $88
    add a                                         ; $6977: $87
    ld a, b                                       ; $6978: $78
    add a                                         ; $6979: $87
    ld a, b                                       ; $697a: $78
    adc b                                         ; $697b: $88
    add a                                         ; $697c: $87
    adc b                                         ; $697d: $88
    ld a, b                                       ; $697e: $78
    ld [hl], a                                    ; $697f: $77
    adc b                                         ; $6980: $88
    ld h, a                                       ; $6981: $67
    adc b                                         ; $6982: $88
    adc b                                         ; $6983: $88
    add a                                         ; $6984: $87
    ld [hl], a                                    ; $6985: $77
    add a                                         ; $6986: $87
    adc b                                         ; $6987: $88
    ld a, b                                       ; $6988: $78
    adc b                                         ; $6989: $88
    ld [hl], a                                    ; $698a: $77
    ld a, b                                       ; $698b: $78
    add a                                         ; $698c: $87
    adc b                                         ; $698d: $88
    add a                                         ; $698e: $87
    adc b                                         ; $698f: $88
    add a                                         ; $6990: $87
    add a                                         ; $6991: $87
    ld a, b                                       ; $6992: $78
    ld a, b                                       ; $6993: $78
    add a                                         ; $6994: $87
    adc b                                         ; $6995: $88
    adc b                                         ; $6996: $88
    adc b                                         ; $6997: $88
    halt                                          ; $6998: $76
    add a                                         ; $6999: $87
    adc b                                         ; $699a: $88
    ld a, b                                       ; $699b: $78
    halt                                          ; $699c: $76
    ld a, c                                       ; $699d: $79
    add a                                         ; $699e: $87
    ld a, b                                       ; $699f: $78
    add [hl]                                      ; $69a0: $86
    ld a, c                                       ; $69a1: $79
    ld a, b                                       ; $69a2: $78
    ld [hl], a                                    ; $69a3: $77
    adc b                                         ; $69a4: $88
    add a                                         ; $69a5: $87
    ld a, b                                       ; $69a6: $78
    add a                                         ; $69a7: $87
    ld [hl], a                                    ; $69a8: $77
    add a                                         ; $69a9: $87
    add a                                         ; $69aa: $87
    ld a, b                                       ; $69ab: $78
    ld a, b                                       ; $69ac: $78
    ld [hl], a                                    ; $69ad: $77
    adc b                                         ; $69ae: $88
    halt                                          ; $69af: $76
    add a                                         ; $69b0: $87
    add a                                         ; $69b1: $87
    ld a, b                                       ; $69b2: $78
    ld [hl], a                                    ; $69b3: $77
    add a                                         ; $69b4: $87
    ld a, c                                       ; $69b5: $79
    ld l, b                                       ; $69b6: $68
    adc b                                         ; $69b7: $88
    add a                                         ; $69b8: $87
    add a                                         ; $69b9: $87
    add [hl]                                      ; $69ba: $86
    adc b                                         ; $69bb: $88
    ld a, b                                       ; $69bc: $78
    ld [hl], a                                    ; $69bd: $77
    add a                                         ; $69be: $87
    sub a                                         ; $69bf: $97
    adc b                                         ; $69c0: $88
    ld [hl], a                                    ; $69c1: $77
    add a                                         ; $69c2: $87
    ld a, b                                       ; $69c3: $78
    sub a                                         ; $69c4: $97
    ld l, b                                       ; $69c5: $68
    ld a, b                                       ; $69c6: $78
    add a                                         ; $69c7: $87
    ld h, [hl]                                    ; $69c8: $66
    ld a, b                                       ; $69c9: $78
    adc b                                         ; $69ca: $88
    adc b                                         ; $69cb: $88
    ld [hl], a                                    ; $69cc: $77
    ld a, b                                       ; $69cd: $78
    ld [hl], a                                    ; $69ce: $77
    ld a, b                                       ; $69cf: $78
    add a                                         ; $69d0: $87
    ld [hl], a                                    ; $69d1: $77
    ld [hl], a                                    ; $69d2: $77
    adc b                                         ; $69d3: $88
    adc b                                         ; $69d4: $88
    ld a, b                                       ; $69d5: $78
    adc b                                         ; $69d6: $88
    add a                                         ; $69d7: $87
    ld l, b                                       ; $69d8: $68
    add a                                         ; $69d9: $87
    ld [hl], a                                    ; $69da: $77
    ld h, a                                       ; $69db: $67
    ld l, c                                       ; $69dc: $69
    sub a                                         ; $69dd: $97
    add a                                         ; $69de: $87
    add a                                         ; $69df: $87
    add a                                         ; $69e0: $87
    sub a                                         ; $69e1: $97
    halt                                          ; $69e2: $76
    adc b                                         ; $69e3: $88
    ld l, b                                       ; $69e4: $68
    add a                                         ; $69e5: $87
    add a                                         ; $69e6: $87
    ld [hl], a                                    ; $69e7: $77
    add a                                         ; $69e8: $87
    adc b                                         ; $69e9: $88
    adc b                                         ; $69ea: $88
    add a                                         ; $69eb: $87
    ld [hl], a                                    ; $69ec: $77
    add [hl]                                      ; $69ed: $86
    sub a                                         ; $69ee: $97
    add [hl]                                      ; $69ef: $86
    sbc c                                         ; $69f0: $99
    and h                                         ; $69f1: $a4
    rr b                                          ; $69f2: $cb $18
    add [hl]                                      ; $69f4: $86
    and d                                         ; $69f5: $a2
    dec c                                         ; $69f6: $0d
    push bc                                       ; $69f7: $c5
    add a                                         ; $69f8: $87
    sbc l                                         ; $69f9: $9d
    ld [hl], $aa                                  ; $69fa: $36 $aa
    ld h, a                                       ; $69fc: $67
    add a                                         ; $69fd: $87
    ld a, b                                       ; $69fe: $78
    halt                                          ; $69ff: $76
    xor e                                         ; $6a00: $ab
    ld d, $ac                                     ; $6a01: $16 $ac
    ld h, a                                       ; $6a03: $67
    add a                                         ; $6a04: $87
    add a                                         ; $6a05: $87
    add a                                         ; $6a06: $87
    ld a, c                                       ; $6a07: $79
    ld [hl], h                                    ; $6a08: $74
    push hl                                       ; $6a09: $e5
    adc b                                         ; $6a0a: $88
    ld e, h                                       ; $6a0b: $5c
    halt                                          ; $6a0c: $76
    add l                                         ; $6a0d: $85
    ld [hl], a                                    ; $6a0e: $77
    xor b                                         ; $6a0f: $a8
    add a                                         ; $6a10: $87
    add a                                         ; $6a11: $87
    ld [hl], a                                    ; $6a12: $77
    add l                                         ; $6a13: $85
    add a                                         ; $6a14: $87
    adc b                                         ; $6a15: $88
    sub a                                         ; $6a16: $97
    ld c, d                                       ; $6a17: $4a
    sub a                                         ; $6a18: $97
    sub a                                         ; $6a19: $97
    ld l, c                                       ; $6a1a: $69
    ld a, c                                       ; $6a1b: $79
    ld a, b                                       ; $6a1c: $78
    add [hl]                                      ; $6a1d: $86
    xor b                                         ; $6a1e: $a8
    ld a, b                                       ; $6a1f: $78
    adc c                                         ; $6a20: $89
    ld [hl], a                                    ; $6a21: $77
    add a                                         ; $6a22: $87
    add a                                         ; $6a23: $87
    adc b                                         ; $6a24: $88
    add a                                         ; $6a25: $87
    ld a, c                                       ; $6a26: $79
    adc b                                         ; $6a27: $88
    adc b                                         ; $6a28: $88
    ld [hl], a                                    ; $6a29: $77
    adc b                                         ; $6a2a: $88
    add a                                         ; $6a2b: $87
    ld a, b                                       ; $6a2c: $78
    sbc b                                         ; $6a2d: $98
    adc b                                         ; $6a2e: $88
    ld a, b                                       ; $6a2f: $78
    add a                                         ; $6a30: $87
    ld a, b                                       ; $6a31: $78
    sbc b                                         ; $6a32: $98
    ld a, b                                       ; $6a33: $78
    ld [hl], a                                    ; $6a34: $77
    ld a, b                                       ; $6a35: $78
    sub [hl]                                      ; $6a36: $96
    adc c                                         ; $6a37: $89
    halt                                          ; $6a38: $76
    sbc d                                         ; $6a39: $9a
    ld h, a                                       ; $6a3a: $67
    adc c                                         ; $6a3b: $89
    add [hl]                                      ; $6a3c: $86
    ld a, c                                       ; $6a3d: $79
    add [hl]                                      ; $6a3e: $86
    sub a                                         ; $6a3f: $97
    sub a                                         ; $6a40: $97
    add a                                         ; $6a41: $87
    adc c                                         ; $6a42: $89
    ld a, b                                       ; $6a43: $78
    add a                                         ; $6a44: $87
    add a                                         ; $6a45: $87
    ld [hl], a                                    ; $6a46: $77
    adc b                                         ; $6a47: $88
    ld a, b                                       ; $6a48: $78
    add a                                         ; $6a49: $87
    add a                                         ; $6a4a: $87
    ld [hl], a                                    ; $6a4b: $77
    adc b                                         ; $6a4c: $88
    ld a, b                                       ; $6a4d: $78
    add a                                         ; $6a4e: $87
    sbc b                                         ; $6a4f: $98
    adc b                                         ; $6a50: $88
    add a                                         ; $6a51: $87
    ld a, b                                       ; $6a52: $78
    ld a, b                                       ; $6a53: $78
    adc b                                         ; $6a54: $88
    adc b                                         ; $6a55: $88
    sbc b                                         ; $6a56: $98
    sub a                                         ; $6a57: $97
    ld e, b                                       ; $6a58: $58
    sub a                                         ; $6a59: $97
    ld a, b                                       ; $6a5a: $78
    halt                                          ; $6a5b: $76
    ld e, d                                       ; $6a5c: $5a
    or [hl]                                       ; $6a5d: $b6
    add a                                         ; $6a5e: $87
    and a                                         ; $6a5f: $a7
    sub [hl]                                      ; $6a60: $96
    ld a, c                                       ; $6a61: $79
    sub l                                         ; $6a62: $95
    ld a, c                                       ; $6a63: $79
    adc b                                         ; $6a64: $88
    ld l, c                                       ; $6a65: $69
    sub a                                         ; $6a66: $97
    add a                                         ; $6a67: $87
    adc b                                         ; $6a68: $88
    ld a, b                                       ; $6a69: $78
    add a                                         ; $6a6a: $87
    ld [hl], a                                    ; $6a6b: $77
    sbc b                                         ; $6a6c: $98
    ld [hl], a                                    ; $6a6d: $77
    adc b                                         ; $6a6e: $88
    ld [hl], a                                    ; $6a6f: $77
    add a                                         ; $6a70: $87
    ld a, b                                       ; $6a71: $78
    add a                                         ; $6a72: $87
    adc b                                         ; $6a73: $88
    ld a, b                                       ; $6a74: $78
    ld [hl], a                                    ; $6a75: $77
    add a                                         ; $6a76: $87
    add a                                         ; $6a77: $87
    ld a, b                                       ; $6a78: $78
    adc b                                         ; $6a79: $88
    ld a, b                                       ; $6a7a: $78
    add a                                         ; $6a7b: $87
    add a                                         ; $6a7c: $87
    adc b                                         ; $6a7d: $88
    ld a, b                                       ; $6a7e: $78
    ld [hl], a                                    ; $6a7f: $77
    sub l                                         ; $6a80: $95
    ld a, d                                       ; $6a81: $7a
    sbc b                                         ; $6a82: $98
    ld l, b                                       ; $6a83: $68
    adc b                                         ; $6a84: $88
    sub l                                         ; $6a85: $95
    ld d, [hl]                                    ; $6a86: $56
    sbc b                                         ; $6a87: $98
    adc b                                         ; $6a88: $88
    sbc b                                         ; $6a89: $98
    ld h, a                                       ; $6a8a: $67
    adc c                                         ; $6a8b: $89
    ld h, [hl]                                    ; $6a8c: $66
    add a                                         ; $6a8d: $87
    ld a, b                                       ; $6a8e: $78
    ld a, b                                       ; $6a8f: $78
    adc b                                         ; $6a90: $88
    ld [hl], a                                    ; $6a91: $77
    adc b                                         ; $6a92: $88
    ld a, b                                       ; $6a93: $78
    halt                                          ; $6a94: $76
    ld a, b                                       ; $6a95: $78
    adc b                                         ; $6a96: $88
    ld a, b                                       ; $6a97: $78
    ld [hl], a                                    ; $6a98: $77
    ld a, c                                       ; $6a99: $79
    and h                                         ; $6a9a: $a4
    and l                                         ; $6a9b: $a5
    sbc c                                         ; $6a9c: $99
    ld b, a                                       ; $6a9d: $47
    and e                                         ; $6a9e: $a3
    ld e, e                                       ; $6a9f: $5b
    add a                                         ; $6aa0: $87
    sub a                                         ; $6aa1: $97
    sbc b                                         ; $6aa2: $98
    ld h, a                                       ; $6aa3: $67
    adc b                                         ; $6aa4: $88
    ld [hl], a                                    ; $6aa5: $77
    ld [hl], a                                    ; $6aa6: $77
    adc b                                         ; $6aa7: $88
    ld [hl], a                                    ; $6aa8: $77
    add a                                         ; $6aa9: $87
    ld a, b                                       ; $6aaa: $78
    ld a, b                                       ; $6aab: $78
    add a                                         ; $6aac: $87
    ld h, a                                       ; $6aad: $67
    adc b                                         ; $6aae: $88
    ld [hl], a                                    ; $6aaf: $77
    adc b                                         ; $6ab0: $88
    add a                                         ; $6ab1: $87
    ld a, b                                       ; $6ab2: $78
    add l                                         ; $6ab3: $85
    add hl, hl                                    ; $6ab4: $29
    ld sp, hl                                     ; $6ab5: $f9
    ld h, [hl]                                    ; $6ab6: $66
    ld d, a                                       ; $6ab7: $57
    add a                                         ; $6ab8: $87
    adc d                                         ; $6ab9: $8a
    xor b                                         ; $6aba: $a8
    ld d, [hl]                                    ; $6abb: $56
    ld h, [hl]                                    ; $6abc: $66
    add a                                         ; $6abd: $87
    adc d                                         ; $6abe: $8a
    sub a                                         ; $6abf: $97
    add a                                         ; $6ac0: $87
    ld [hl], a                                    ; $6ac1: $77
    ld [hl], a                                    ; $6ac2: $77
    adc c                                         ; $6ac3: $89
    add a                                         ; $6ac4: $87
    ld d, a                                       ; $6ac5: $57
    sbc c                                         ; $6ac6: $99
    adc b                                         ; $6ac7: $88
    ld [hl], a                                    ; $6ac8: $77
    ld h, a                                       ; $6ac9: $67
    adc b                                         ; $6aca: $88
    sbc b                                         ; $6acb: $98
    add a                                         ; $6acc: $87
    ld [hl], a                                    ; $6acd: $77
    ld a, b                                       ; $6ace: $78
    sub a                                         ; $6acf: $97
    add a                                         ; $6ad0: $87
    ld [hl], a                                    ; $6ad1: $77
    adc b                                         ; $6ad2: $88
    adc b                                         ; $6ad3: $88
    halt                                          ; $6ad4: $76
    ld [hl], a                                    ; $6ad5: $77
    ld a, b                                       ; $6ad6: $78
    adc b                                         ; $6ad7: $88
    add a                                         ; $6ad8: $87
    add a                                         ; $6ad9: $87
    adc b                                         ; $6ada: $88
    adc b                                         ; $6adb: $88
    add a                                         ; $6adc: $87
    add a                                         ; $6add: $87
    ld [hl], a                                    ; $6ade: $77
    adc b                                         ; $6adf: $88
    adc b                                         ; $6ae0: $88
    ld [hl], a                                    ; $6ae1: $77
    add a                                         ; $6ae2: $87
    ld a, b                                       ; $6ae3: $78
    adc b                                         ; $6ae4: $88
    add a                                         ; $6ae5: $87
    ld a, b                                       ; $6ae6: $78
    ld a, b                                       ; $6ae7: $78
    adc b                                         ; $6ae8: $88
    add a                                         ; $6ae9: $87
    ld a, b                                       ; $6aea: $78
    adc b                                         ; $6aeb: $88
    add a                                         ; $6aec: $87
    ld a, b                                       ; $6aed: $78
    add a                                         ; $6aee: $87
    ld [hl], a                                    ; $6aef: $77
    add a                                         ; $6af0: $87
    ld [hl], a                                    ; $6af1: $77
    adc b                                         ; $6af2: $88
    add a                                         ; $6af3: $87
    ld a, b                                       ; $6af4: $78
    ld [hl], a                                    ; $6af5: $77
    ld [hl], a                                    ; $6af6: $77
    adc b                                         ; $6af7: $88
    adc b                                         ; $6af8: $88
    ld a, b                                       ; $6af9: $78
    add a                                         ; $6afa: $87
    ld a, b                                       ; $6afb: $78
    add a                                         ; $6afc: $87
    ld a, b                                       ; $6afd: $78
    adc b                                         ; $6afe: $88
    adc b                                         ; $6aff: $88
    adc b                                         ; $6b00: $88
    ld a, b                                       ; $6b01: $78
    adc b                                         ; $6b02: $88
    ld [hl], a                                    ; $6b03: $77
    adc d                                         ; $6b04: $8a
    add a                                         ; $6b05: $87
    dec sp                                        ; $6b06: $3b
    or d                                          ; $6b07: $b2
    sub $56                                       ; $6b08: $d6 $56
    ld l, d                                       ; $6b0a: $6a
    adc b                                         ; $6b0b: $88
    ld a, b                                       ; $6b0c: $78
    sbc c                                         ; $6b0d: $99
    ld h, l                                       ; $6b0e: $65
    xor e                                         ; $6b0f: $ab
    ld d, l                                       ; $6b10: $55
    halt                                          ; $6b11: $76
    adc d                                         ; $6b12: $8a

jr_018_6b13:
    and h                                         ; $6b13: $a4
    sbc c                                         ; $6b14: $99
    ld h, a                                       ; $6b15: $67
    add [hl]                                      ; $6b16: $86
    add a                                         ; $6b17: $87
    adc b                                         ; $6b18: $88
    add a                                         ; $6b19: $87
    sub a                                         ; $6b1a: $97
    ld a, [hl-]                                   ; $6b1b: $3a
    sub [hl]                                      ; $6b1c: $96
    sub a                                         ; $6b1d: $97
    adc b                                         ; $6b1e: $88
    ld [hl], a                                    ; $6b1f: $77
    sbc b                                         ; $6b20: $98
    halt                                          ; $6b21: $76
    ld l, c                                       ; $6b22: $69
    adc b                                         ; $6b23: $88
    sbc b                                         ; $6b24: $98
    ld [hl], l                                    ; $6b25: $75
    ld a, c                                       ; $6b26: $79
    sbc b                                         ; $6b27: $98
    ld a, b                                       ; $6b28: $78
    ld [hl], a                                    ; $6b29: $77
    ld h, a                                       ; $6b2a: $67
    adc c                                         ; $6b2b: $89
    sub a                                         ; $6b2c: $97
    ld a, b                                       ; $6b2d: $78
    add a                                         ; $6b2e: $87
    add a                                         ; $6b2f: $87
    add a                                         ; $6b30: $87
    ld [hl], a                                    ; $6b31: $77
    adc b                                         ; $6b32: $88
    ld a, b                                       ; $6b33: $78
    add a                                         ; $6b34: $87
    add a                                         ; $6b35: $87
    adc b                                         ; $6b36: $88
    add a                                         ; $6b37: $87
    ld h, a                                       ; $6b38: $67
    adc b                                         ; $6b39: $88
    adc b                                         ; $6b3a: $88
    ld a, b                                       ; $6b3b: $78
    add a                                         ; $6b3c: $87
    add a                                         ; $6b3d: $87
    add a                                         ; $6b3e: $87
    ld [hl], a                                    ; $6b3f: $77
    adc b                                         ; $6b40: $88
    ld a, b                                       ; $6b41: $78
    ld a, b                                       ; $6b42: $78
    ld [hl], a                                    ; $6b43: $77
    add a                                         ; $6b44: $87
    adc b                                         ; $6b45: $88
    ld [hl], a                                    ; $6b46: $77
    adc b                                         ; $6b47: $88
    ld a, b                                       ; $6b48: $78
    ld [hl], a                                    ; $6b49: $77
    add a                                         ; $6b4a: $87
    ld [hl], a                                    ; $6b4b: $77
    ld [hl], a                                    ; $6b4c: $77
    ld a, b                                       ; $6b4d: $78
    adc b                                         ; $6b4e: $88
    ld a, b                                       ; $6b4f: $78
    add a                                         ; $6b50: $87
    ld a, b                                       ; $6b51: $78
    add a                                         ; $6b52: $87
    ld a, b                                       ; $6b53: $78
    add a                                         ; $6b54: $87
    ld a, b                                       ; $6b55: $78
    add a                                         ; $6b56: $87
    ld a, b                                       ; $6b57: $78
    adc b                                         ; $6b58: $88
    ld l, b                                       ; $6b59: $68
    add a                                         ; $6b5a: $87
    adc b                                         ; $6b5b: $88
    adc b                                         ; $6b5c: $88
    ld [hl], a                                    ; $6b5d: $77
    ld a, c                                       ; $6b5e: $79
    ld l, e                                       ; $6b5f: $6b
    scf                                           ; $6b60: $37
    ret nc                                        ; $6b61: $d0

    ld l, d                                       ; $6b62: $6a
    sbc d                                         ; $6b63: $9a
    ld a, c                                       ; $6b64: $79
    ld h, a                                       ; $6b65: $67
    add a                                         ; $6b66: $87
    ld l, c                                       ; $6b67: $69
    ld [hl], a                                    ; $6b68: $77
    ld [hl], l                                    ; $6b69: $75
    cp c                                          ; $6b6a: $b9
    ld h, a                                       ; $6b6b: $67
    adc c                                         ; $6b6c: $89
    adc c                                         ; $6b6d: $89
    ld c, b                                       ; $6b6e: $48
    sbc b                                         ; $6b6f: $98
    ld h, a                                       ; $6b70: $67
    sub a                                         ; $6b71: $97
    ld [hl], a                                    ; $6b72: $77
    adc b                                         ; $6b73: $88
    ld a, b                                       ; $6b74: $78
    adc b                                         ; $6b75: $88
    add a                                         ; $6b76: $87
    ld a, c                                       ; $6b77: $79
    ld [hl], a                                    ; $6b78: $77
    adc c                                         ; $6b79: $89
    ld [hl], a                                    ; $6b7a: $77
    adc b                                         ; $6b7b: $88
    adc b                                         ; $6b7c: $88
    halt                                          ; $6b7d: $76
    rst $00                                       ; $6b7e: $c7
    add hl, sp                                    ; $6b7f: $39
    sbc e                                         ; $6b80: $9b
    add hl, de                                    ; $6b81: $19
    sbc b                                         ; $6b82: $98
    sub l                                         ; $6b83: $95
    ld e, d                                       ; $6b84: $5a
    sbc d                                         ; $6b85: $9a
    ld d, a                                       ; $6b86: $57
    add [hl]                                      ; $6b87: $86
    sub [hl]                                      ; $6b88: $96
    ld l, b                                       ; $6b89: $68
    sbc c                                         ; $6b8a: $99
    jr c, jr_018_6b13                             ; $6b8b: $38 $86

    adc b                                         ; $6b8d: $88
    ld a, c                                       ; $6b8e: $79
    adc c                                         ; $6b8f: $89
    sub a                                         ; $6b90: $97
    halt                                          ; $6b91: $76
    add a                                         ; $6b92: $87
    adc b                                         ; $6b93: $88
    ld h, [hl]                                    ; $6b94: $66
    adc b                                         ; $6b95: $88
    sub a                                         ; $6b96: $97
    ld l, b                                       ; $6b97: $68
    sub [hl]                                      ; $6b98: $96
    ld a, b                                       ; $6b99: $78
    ld a, b                                       ; $6b9a: $78
    ld h, a                                       ; $6b9b: $67
    sub a                                         ; $6b9c: $97
    ld a, b                                       ; $6b9d: $78
    ld a, b                                       ; $6b9e: $78
    ld a, b                                       ; $6b9f: $78
    adc b                                         ; $6ba0: $88
    sub a                                         ; $6ba1: $97
    ld h, a                                       ; $6ba2: $67
    adc c                                         ; $6ba3: $89
    adc b                                         ; $6ba4: $88
    ld a, c                                       ; $6ba5: $79
    add l                                         ; $6ba6: $85
    ld l, b                                       ; $6ba7: $68
    ld [hl], a                                    ; $6ba8: $77
    ld a, b                                       ; $6ba9: $78
    halt                                          ; $6baa: $76
    adc c                                         ; $6bab: $89
    adc c                                         ; $6bac: $89
    ld l, b                                       ; $6bad: $68
    ld l, b                                       ; $6bae: $68
    add [hl]                                      ; $6baf: $86
    add a                                         ; $6bb0: $87
    ld h, a                                       ; $6bb1: $67
    ld [hl], a                                    ; $6bb2: $77
    add a                                         ; $6bb3: $87
    add a                                         ; $6bb4: $87
    adc b                                         ; $6bb5: $88
    ld l, b                                       ; $6bb6: $68
    ld [hl], a                                    ; $6bb7: $77
    ld [hl], a                                    ; $6bb8: $77
    ld [hl], a                                    ; $6bb9: $77
    adc b                                         ; $6bba: $88
    ld [hl], a                                    ; $6bbb: $77
    ld a, b                                       ; $6bbc: $78
    adc b                                         ; $6bbd: $88
    ld h, a                                       ; $6bbe: $67
    add a                                         ; $6bbf: $87
    adc b                                         ; $6bc0: $88
    ld [hl], a                                    ; $6bc1: $77
    ld [hl], a                                    ; $6bc2: $77
    adc b                                         ; $6bc3: $88
    ld [hl], a                                    ; $6bc4: $77
    add a                                         ; $6bc5: $87
    ld [hl], a                                    ; $6bc6: $77
    ld a, b                                       ; $6bc7: $78
    ld [hl], a                                    ; $6bc8: $77
    adc b                                         ; $6bc9: $88
    ld a, b                                       ; $6bca: $78
    ld a, b                                       ; $6bcb: $78
    add a                                         ; $6bcc: $87
    ld [hl], a                                    ; $6bcd: $77
    adc b                                         ; $6bce: $88
    adc b                                         ; $6bcf: $88
    add a                                         ; $6bd0: $87
    adc b                                         ; $6bd1: $88
    adc b                                         ; $6bd2: $88
    adc b                                         ; $6bd3: $88
    adc b                                         ; $6bd4: $88
    ld [hl], a                                    ; $6bd5: $77
    add a                                         ; $6bd6: $87
    ld a, b                                       ; $6bd7: $78
    adc b                                         ; $6bd8: $88
    ld a, b                                       ; $6bd9: $78
    adc b                                         ; $6bda: $88
    adc b                                         ; $6bdb: $88
    adc b                                         ; $6bdc: $88
    ld [hl], a                                    ; $6bdd: $77
    adc b                                         ; $6bde: $88
    add hl, sp                                    ; $6bdf: $39
    or [hl]                                       ; $6be0: $b6
    sub a                                         ; $6be1: $97
    ld l, c                                       ; $6be2: $69
    jp nz, Jump_018_5b9a                          ; $6be3: $c2 $9a $5b

    rla                                           ; $6be6: $17
    ldh [$7e], a                                  ; $6be7: $e0 $7e
    ld a, b                                       ; $6be9: $78
    ld e, d                                       ; $6bea: $5a
    add [hl]                                      ; $6beb: $86
    and h                                         ; $6bec: $a4
    cp d                                          ; $6bed: $ba
    ld d, [hl]                                    ; $6bee: $56
    ld a, e                                       ; $6bef: $7b
    sbc c                                         ; $6bf0: $99
    ld d, l                                       ; $6bf1: $55
    xor b                                         ; $6bf2: $a8
    ld a, c                                       ; $6bf3: $79
    ld l, e                                       ; $6bf4: $6b
    sub a                                         ; $6bf5: $97
    ld h, l                                       ; $6bf6: $65
    sbc c                                         ; $6bf7: $99
    ld [hl], a                                    ; $6bf8: $77
    adc c                                         ; $6bf9: $89
    add a                                         ; $6bfa: $87
    ld a, b                                       ; $6bfb: $78
    sub a                                         ; $6bfc: $97
    ld a, b                                       ; $6bfd: $78
    adc c                                         ; $6bfe: $89
    ld [hl], a                                    ; $6bff: $77
    adc b                                         ; $6c00: $88
    adc b                                         ; $6c01: $88
    ld a, b                                       ; $6c02: $78
    add a                                         ; $6c03: $87
    ld a, b                                       ; $6c04: $78
    adc b                                         ; $6c05: $88
    ld a, b                                       ; $6c06: $78
    ld a, b                                       ; $6c07: $78
    sub l                                         ; $6c08: $95
    adc e                                         ; $6c09: $8b
    add a                                         ; $6c0a: $87
    ld a, c                                       ; $6c0b: $79
    ld a, c                                       ; $6c0c: $79
    add [hl]                                      ; $6c0d: $86
    ld d, a                                       ; $6c0e: $57
    sbc b                                         ; $6c0f: $98
    adc b                                         ; $6c10: $88
    add [hl]                                      ; $6c11: $86
    ld a, b                                       ; $6c12: $78
    sub a                                         ; $6c13: $97
    ld [hl], a                                    ; $6c14: $77
    adc b                                         ; $6c15: $88
    ld a, b                                       ; $6c16: $78
    adc b                                         ; $6c17: $88
    ld a, b                                       ; $6c18: $78
    ld [hl], a                                    ; $6c19: $77
    adc b                                         ; $6c1a: $88
    ld [hl], a                                    ; $6c1b: $77
    ld [hl], a                                    ; $6c1c: $77
    adc b                                         ; $6c1d: $88
    adc b                                         ; $6c1e: $88
    add a                                         ; $6c1f: $87
    add a                                         ; $6c20: $87
    ld [hl], a                                    ; $6c21: $77
    ld a, b                                       ; $6c22: $78
    add a                                         ; $6c23: $87
    ld a, b                                       ; $6c24: $78
    adc b                                         ; $6c25: $88
    add a                                         ; $6c26: $87
    ld a, b                                       ; $6c27: $78
    ld a, b                                       ; $6c28: $78
    ld [hl], a                                    ; $6c29: $77
    ld a, b                                       ; $6c2a: $78
    adc b                                         ; $6c2b: $88
    ld a, b                                       ; $6c2c: $78
    ld [hl], a                                    ; $6c2d: $77
    add a                                         ; $6c2e: $87
    ld a, b                                       ; $6c2f: $78
    adc b                                         ; $6c30: $88
    ld [hl], a                                    ; $6c31: $77
    adc b                                         ; $6c32: $88
    add a                                         ; $6c33: $87
    ld a, b                                       ; $6c34: $78
    add a                                         ; $6c35: $87
    adc b                                         ; $6c36: $88
    ld [hl], a                                    ; $6c37: $77
    add a                                         ; $6c38: $87
    ld [hl], a                                    ; $6c39: $77
    ld a, b                                       ; $6c3a: $78
    add a                                         ; $6c3b: $87
    add a                                         ; $6c3c: $87
    ld [hl], a                                    ; $6c3d: $77
    add a                                         ; $6c3e: $87
    add a                                         ; $6c3f: $87
    adc c                                         ; $6c40: $89
    ld h, c                                       ; $6c41: $61
    ccf                                           ; $6c42: $3f
    rst $30                                       ; $6c43: $f7
    ld h, l                                       ; $6c44: $65
    scf                                           ; $6c45: $37
    add a                                         ; $6c46: $87
    res 0, [hl]                                   ; $6c47: $cb $86
    ld b, [hl]                                    ; $6c49: $46
    ld b, a                                       ; $6c4a: $47
    adc c                                         ; $6c4b: $89
    cp d                                          ; $6c4c: $ba
    halt                                          ; $6c4d: $76
    halt                                          ; $6c4e: $76
    ld d, a                                       ; $6c4f: $57
    sbc b                                         ; $6c50: $98
    sbc b                                         ; $6c51: $98
    ld h, [hl]                                    ; $6c52: $66
    ld l, b                                       ; $6c53: $68
    add a                                         ; $6c54: $87
    sbc b                                         ; $6c55: $98
    ld [hl], a                                    ; $6c56: $77
    ld a, b                                       ; $6c57: $78
    add a                                         ; $6c58: $87
    adc c                                         ; $6c59: $89
    ld h, a                                       ; $6c5a: $67
    ld [hl], a                                    ; $6c5b: $77
    sub a                                         ; $6c5c: $97
    ld [hl], a                                    ; $6c5d: $77
    ld [hl], a                                    ; $6c5e: $77
    adc b                                         ; $6c5f: $88
    adc b                                         ; $6c60: $88
    ld [hl], a                                    ; $6c61: $77
    ld [hl], a                                    ; $6c62: $77
    ld a, b                                       ; $6c63: $78
    adc b                                         ; $6c64: $88
    adc b                                         ; $6c65: $88
    halt                                          ; $6c66: $76
    adc b                                         ; $6c67: $88
    adc b                                         ; $6c68: $88
    add a                                         ; $6c69: $87
    ld a, b                                       ; $6c6a: $78
    ld [hl], a                                    ; $6c6b: $77
    ld a, b                                       ; $6c6c: $78
    ld [hl], a                                    ; $6c6d: $77
    adc b                                         ; $6c6e: $88
    ld [hl], a                                    ; $6c6f: $77
    adc b                                         ; $6c70: $88
    add a                                         ; $6c71: $87
    adc b                                         ; $6c72: $88
    add a                                         ; $6c73: $87
    add a                                         ; $6c74: $87
    ld a, b                                       ; $6c75: $78
    adc b                                         ; $6c76: $88
    ld [hl], a                                    ; $6c77: $77
    adc b                                         ; $6c78: $88
    add a                                         ; $6c79: $87
    ld a, b                                       ; $6c7a: $78
    ld a, b                                       ; $6c7b: $78
    add a                                         ; $6c7c: $87
    ld [hl], a                                    ; $6c7d: $77
    add a                                         ; $6c7e: $87
    ld a, b                                       ; $6c7f: $78
    adc b                                         ; $6c80: $88
    adc b                                         ; $6c81: $88
    add a                                         ; $6c82: $87
    ld a, b                                       ; $6c83: $78
    ld [hl], a                                    ; $6c84: $77
    adc b                                         ; $6c85: $88
    adc b                                         ; $6c86: $88
    ld [hl], a                                    ; $6c87: $77
    add a                                         ; $6c88: $87
    ld a, b                                       ; $6c89: $78
    adc b                                         ; $6c8a: $88
    ld a, b                                       ; $6c8b: $78
    add a                                         ; $6c8c: $87
    adc b                                         ; $6c8d: $88
    ld [hl], a                                    ; $6c8e: $77
    ld a, b                                       ; $6c8f: $78
    add a                                         ; $6c90: $87
    adc b                                         ; $6c91: $88
    ld [hl], a                                    ; $6c92: $77
    adc b                                         ; $6c93: $88
    add a                                         ; $6c94: $87
    add a                                         ; $6c95: $87
    ld [hl], a                                    ; $6c96: $77
    adc b                                         ; $6c97: $88
    adc b                                         ; $6c98: $88
    ld a, b                                       ; $6c99: $78
    ld [hl], a                                    ; $6c9a: $77
    ld a, b                                       ; $6c9b: $78
    ld a, b                                       ; $6c9c: $78
    ld a, b                                       ; $6c9d: $78
    adc b                                         ; $6c9e: $88
    ld a, b                                       ; $6c9f: $78
    sbc b                                         ; $6ca0: $98
    ld [hl], h                                    ; $6ca1: $74
    xor c                                         ; $6ca2: $a9
    and d                                         ; $6ca3: $a2
    ld l, a                                       ; $6ca4: $6f
    ld b, $f4                                     ; $6ca5: $06 $f4
    sub a                                         ; $6ca7: $97
    ld h, a                                       ; $6ca8: $67
    add a                                         ; $6ca9: $87
    sbc b                                         ; $6caa: $98
    add a                                         ; $6cab: $87
    add a                                         ; $6cac: $87
    adc c                                         ; $6cad: $89
    ld h, l                                       ; $6cae: $65
    add l                                         ; $6caf: $85
    adc e                                         ; $6cb0: $8b
    sub l                                         ; $6cb1: $95
    ld a, c                                       ; $6cb2: $79
    ld h, a                                       ; $6cb3: $67
    ld l, d                                       ; $6cb4: $6a
    adc b                                         ; $6cb5: $88
    ld l, b                                       ; $6cb6: $68
    halt                                          ; $6cb7: $76
    ld a, b                                       ; $6cb8: $78
    ld a, b                                       ; $6cb9: $78
    adc b                                         ; $6cba: $88
    adc b                                         ; $6cbb: $88
    ld [hl], a                                    ; $6cbc: $77
    adc b                                         ; $6cbd: $88
    halt                                          ; $6cbe: $76
    ld a, b                                       ; $6cbf: $78
    adc b                                         ; $6cc0: $88
    ld a, b                                       ; $6cc1: $78
    ld a, b                                       ; $6cc2: $78
    ld [hl], a                                    ; $6cc3: $77
    adc b                                         ; $6cc4: $88
    add a                                         ; $6cc5: $87
    ld a, b                                       ; $6cc6: $78
    add a                                         ; $6cc7: $87
    add a                                         ; $6cc8: $87
    ld a, b                                       ; $6cc9: $78
    ld a, b                                       ; $6cca: $78
    adc b                                         ; $6ccb: $88
    ld [hl], a                                    ; $6ccc: $77
    add a                                         ; $6ccd: $87
    add a                                         ; $6cce: $87
    ld [hl], a                                    ; $6ccf: $77
    add a                                         ; $6cd0: $87
    adc c                                         ; $6cd1: $89
    add a                                         ; $6cd2: $87
    ld [hl], a                                    ; $6cd3: $77
    ld [hl], a                                    ; $6cd4: $77
    add a                                         ; $6cd5: $87
    ld a, c                                       ; $6cd6: $79
    adc b                                         ; $6cd7: $88
    ld a, b                                       ; $6cd8: $78
    ld [hl], a                                    ; $6cd9: $77
    add [hl]                                      ; $6cda: $86
    ld h, a                                       ; $6cdb: $67
    adc b                                         ; $6cdc: $88
    sub a                                         ; $6cdd: $97
    add a                                         ; $6cde: $87
    ld a, b                                       ; $6cdf: $78
    add a                                         ; $6ce0: $87
    ld h, a                                       ; $6ce1: $67
    ld a, b                                       ; $6ce2: $78
    ld [hl], a                                    ; $6ce3: $77
    ld a, b                                       ; $6ce4: $78
    adc b                                         ; $6ce5: $88
    ld a, b                                       ; $6ce6: $78
    add a                                         ; $6ce7: $87
    ld [hl], a                                    ; $6ce8: $77
    ld [hl], a                                    ; $6ce9: $77
    ld a, b                                       ; $6cea: $78
    add a                                         ; $6ceb: $87
    ld [hl], a                                    ; $6cec: $77
    ld [hl], a                                    ; $6ced: $77
    adc b                                         ; $6cee: $88
    ld a, b                                       ; $6cef: $78
    add a                                         ; $6cf0: $87
    ld [hl], a                                    ; $6cf1: $77
    sub a                                         ; $6cf2: $97
    ld [hl], a                                    ; $6cf3: $77
    adc b                                         ; $6cf4: $88
    ld [hl], a                                    ; $6cf5: $77
    adc b                                         ; $6cf6: $88
    ld [hl], a                                    ; $6cf7: $77
    adc b                                         ; $6cf8: $88
    ld [hl], a                                    ; $6cf9: $77
    adc b                                         ; $6cfa: $88
    adc b                                         ; $6cfb: $88
    ld [hl], a                                    ; $6cfc: $77
    ld a, b                                       ; $6cfd: $78
    adc b                                         ; $6cfe: $88
    adc b                                         ; $6cff: $88
    add a                                         ; $6d00: $87
    ld a, b                                       ; $6d01: $78
    ld a, b                                       ; $6d02: $78
    adc b                                         ; $6d03: $88
    sbc b                                         ; $6d04: $98
    ld a, b                                       ; $6d05: $78
    sub [hl]                                      ; $6d06: $96
    ld [hl], a                                    ; $6d07: $77
    adc b                                         ; $6d08: $88
    ld e, b                                       ; $6d09: $58
    sbc b                                         ; $6d0a: $98
    add a                                         ; $6d0b: $87
    ld a, b                                       ; $6d0c: $78
    add a                                         ; $6d0d: $87
    sub a                                         ; $6d0e: $97
    ld a, d                                       ; $6d0f: $7a
    add l                                         ; $6d10: $85
    ld l, e                                       ; $6d11: $6b
    adc d                                         ; $6d12: $8a
    halt                                          ; $6d13: $76
    sub b                                         ; $6d14: $90
    sbc h                                         ; $6d15: $9c
    or [hl]                                       ; $6d16: $b6
    ld h, l                                       ; $6d17: $65
    sbc b                                         ; $6d18: $98
    adc c                                         ; $6d19: $89
    adc b                                         ; $6d1a: $88
    ld c, c                                       ; $6d1b: $49
    sub [hl]                                      ; $6d1c: $96
    ld a, c                                       ; $6d1d: $79
    halt                                          ; $6d1e: $76
    adc b                                         ; $6d1f: $88
    adc c                                         ; $6d20: $89
    add a                                         ; $6d21: $87
    sub l                                         ; $6d22: $95
    ld e, c                                       ; $6d23: $59
    sub [hl]                                      ; $6d24: $96
    sbc b                                         ; $6d25: $98
    sbc b                                         ; $6d26: $98
    ld [hl], a                                    ; $6d27: $77
    ld a, b                                       ; $6d28: $78
    ld h, a                                       ; $6d29: $67
    adc b                                         ; $6d2a: $88
    ld a, b                                       ; $6d2b: $78
    ld a, b                                       ; $6d2c: $78
    and [hl]                                      ; $6d2d: $a6
    ld l, b                                       ; $6d2e: $68
    adc b                                         ; $6d2f: $88
    adc b                                         ; $6d30: $88
    add a                                         ; $6d31: $87
    ld l, b                                       ; $6d32: $68
    add a                                         ; $6d33: $87
    ld a, b                                       ; $6d34: $78
    add a                                         ; $6d35: $87
    adc c                                         ; $6d36: $89
    add a                                         ; $6d37: $87
    adc b                                         ; $6d38: $88
    ld a, b                                       ; $6d39: $78
    ld [hl], a                                    ; $6d3a: $77
    ld [hl], a                                    ; $6d3b: $77
    adc b                                         ; $6d3c: $88
    ld [hl], a                                    ; $6d3d: $77
    sub a                                         ; $6d3e: $97
    ld a, b                                       ; $6d3f: $78
    add a                                         ; $6d40: $87
    ld a, b                                       ; $6d41: $78
    add a                                         ; $6d42: $87
    ld a, b                                       ; $6d43: $78
    adc b                                         ; $6d44: $88
    ld [hl], a                                    ; $6d45: $77
    ld a, b                                       ; $6d46: $78
    adc b                                         ; $6d47: $88
    ld [hl], a                                    ; $6d48: $77
    ld [hl], a                                    ; $6d49: $77
    adc b                                         ; $6d4a: $88
    ld [hl], a                                    ; $6d4b: $77
    add [hl]                                      ; $6d4c: $86
    add a                                         ; $6d4d: $87
    ld l, d                                       ; $6d4e: $6a
    ld e, h                                       ; $6d4f: $5c
    add l                                         ; $6d50: $85
    adc c                                         ; $6d51: $89
    and [hl]                                      ; $6d52: $a6
    halt                                          ; $6d53: $76
    ld [hl], a                                    ; $6d54: $77
    ld a, b                                       ; $6d55: $78
    adc c                                         ; $6d56: $89
    sub d                                         ; $6d57: $92
    sbc e                                         ; $6d58: $9b
    sub h                                         ; $6d59: $94
    ld l, d                                       ; $6d5a: $6a
    ld d, e                                       ; $6d5b: $53
    ret z                                         ; $6d5c: $c8

    add a                                         ; $6d5d: $87
    ld a, c                                       ; $6d5e: $79
    ld e, c                                       ; $6d5f: $59
    ld h, [hl]                                    ; $6d60: $66
    or a                                          ; $6d61: $b7
    ld h, a                                       ; $6d62: $67
    adc d                                         ; $6d63: $8a
    sub [hl]                                      ; $6d64: $96
    ld b, a                                       ; $6d65: $47
    adc b                                         ; $6d66: $88
    sub a                                         ; $6d67: $97
    ld a, c                                       ; $6d68: $79
    ld h, a                                       ; $6d69: $67
    ld l, c                                       ; $6d6a: $69
    sub a                                         ; $6d6b: $97
    ld l, c                                       ; $6d6c: $69
    sbc b                                         ; $6d6d: $98
    halt                                          ; $6d6e: $76
    adc b                                         ; $6d6f: $88
    add [hl]                                      ; $6d70: $86
    adc b                                         ; $6d71: $88
    ld [hl], a                                    ; $6d72: $77
    add a                                         ; $6d73: $87
    adc b                                         ; $6d74: $88
    ld a, b                                       ; $6d75: $78
    ld a, b                                       ; $6d76: $78
    ld a, b                                       ; $6d77: $78
    add a                                         ; $6d78: $87
    ld [hl], a                                    ; $6d79: $77
    adc b                                         ; $6d7a: $88
    ld [hl], a                                    ; $6d7b: $77
    ld a, b                                       ; $6d7c: $78
    add a                                         ; $6d7d: $87
    add a                                         ; $6d7e: $87
    ld a, b                                       ; $6d7f: $78
    add a                                         ; $6d80: $87
    ld [hl], a                                    ; $6d81: $77
    ld a, b                                       ; $6d82: $78
    adc b                                         ; $6d83: $88
    adc b                                         ; $6d84: $88
    ld a, b                                       ; $6d85: $78
    ld [hl], a                                    ; $6d86: $77
    ld h, a                                       ; $6d87: $67
    adc b                                         ; $6d88: $88
    add a                                         ; $6d89: $87
    ld [hl], a                                    ; $6d8a: $77
    ld a, b                                       ; $6d8b: $78
    add a                                         ; $6d8c: $87
    ld h, a                                       ; $6d8d: $67
    add a                                         ; $6d8e: $87
    adc b                                         ; $6d8f: $88
    ld h, a                                       ; $6d90: $67
    add [hl]                                      ; $6d91: $86
    ld l, b                                       ; $6d92: $68
    adc b                                         ; $6d93: $88
    add a                                         ; $6d94: $87
    adc b                                         ; $6d95: $88
    ld l, b                                       ; $6d96: $68
    ld a, b                                       ; $6d97: $78
    add [hl]                                      ; $6d98: $86
    add a                                         ; $6d99: $87
    ld a, c                                       ; $6d9a: $79
    adc b                                         ; $6d9b: $88
    add a                                         ; $6d9c: $87
    ld [hl], a                                    ; $6d9d: $77
    ld a, b                                       ; $6d9e: $78
    ld a, b                                       ; $6d9f: $78
    adc b                                         ; $6da0: $88
    ld a, b                                       ; $6da1: $78
    adc b                                         ; $6da2: $88
    ld a, b                                       ; $6da3: $78
    ld [hl], a                                    ; $6da4: $77
    adc b                                         ; $6da5: $88
    add a                                         ; $6da6: $87
    ld a, b                                       ; $6da7: $78
    adc b                                         ; $6da8: $88
    ld [hl], a                                    ; $6da9: $77
    ld a, b                                       ; $6daa: $78
    add a                                         ; $6dab: $87
    adc b                                         ; $6dac: $88
    adc b                                         ; $6dad: $88
    adc b                                         ; $6dae: $88
    ld [hl], a                                    ; $6daf: $77
    adc b                                         ; $6db0: $88
    adc b                                         ; $6db1: $88
    ld [hl], a                                    ; $6db2: $77
    adc b                                         ; $6db3: $88
    adc b                                         ; $6db4: $88
    ld [hl], a                                    ; $6db5: $77
    adc b                                         ; $6db6: $88
    add [hl]                                      ; $6db7: $86
    adc b                                         ; $6db8: $88
    ld a, b                                       ; $6db9: $78
    sbc b                                         ; $6dba: $98
    ld a, b                                       ; $6dbb: $78
    ld l, b                                       ; $6dbc: $68
    adc b                                         ; $6dbd: $88
    ld [hl], a                                    ; $6dbe: $77
    adc b                                         ; $6dbf: $88
    add a                                         ; $6dc0: $87
    adc b                                         ; $6dc1: $88
    ld a, b                                       ; $6dc2: $78
    add a                                         ; $6dc3: $87
    adc b                                         ; $6dc4: $88
    adc b                                         ; $6dc5: $88
    add a                                         ; $6dc6: $87
    adc b                                         ; $6dc7: $88
    xor e                                         ; $6dc8: $ab
    rla                                           ; $6dc9: $17
    xor e                                         ; $6dca: $ab
    ld h, e                                       ; $6dcb: $63
    sbc b                                         ; $6dcc: $98
    ld b, h                                       ; $6dcd: $44
    db $dd                                        ; $6dce: $dd
    ld b, a                                       ; $6dcf: $47
    and l                                         ; $6dd0: $a5
    or a                                          ; $6dd1: $b7
    ld c, d                                       ; $6dd2: $4a
    adc b                                         ; $6dd3: $88
    ld l, b                                       ; $6dd4: $68
    adc c                                         ; $6dd5: $89
    add l                                         ; $6dd6: $85
    add a                                         ; $6dd7: $87
    xor c                                         ; $6dd8: $a9
    ld [hl], a                                    ; $6dd9: $77
    ld a, c                                       ; $6dda: $79
    ld h, e                                       ; $6ddb: $63
    xor d                                         ; $6ddc: $aa
    ld [hl], a                                    ; $6ddd: $77
    adc d                                         ; $6dde: $8a
    add a                                         ; $6ddf: $87
    add a                                         ; $6de0: $87
    sbc b                                         ; $6de1: $98
    ld l, b                                       ; $6de2: $68
    adc b                                         ; $6de3: $88
    adc b                                         ; $6de4: $88
    ld a, b                                       ; $6de5: $78
    add a                                         ; $6de6: $87
    add a                                         ; $6de7: $87
    ld a, b                                       ; $6de8: $78
    ld [hl], a                                    ; $6de9: $77
    sub h                                         ; $6dea: $94
    cp b                                          ; $6deb: $b8
    ld e, [hl]                                    ; $6dec: $5e
    ld d, h                                       ; $6ded: $54
    xor b                                         ; $6dee: $a8
    add a                                         ; $6def: $87
    ld b, [hl]                                    ; $6df0: $46
    xor c                                         ; $6df1: $a9
    ld d, [hl]                                    ; $6df2: $56
    sbc d                                         ; $6df3: $9a
    ld e, b                                       ; $6df4: $58
    and [hl]                                      ; $6df5: $a6
    ld a, b                                       ; $6df6: $78
    ld a, b                                       ; $6df7: $78
    ld a, b                                       ; $6df8: $78
    ld h, a                                       ; $6df9: $67
    adc b                                         ; $6dfa: $88
    ld [hl], a                                    ; $6dfb: $77
    adc b                                         ; $6dfc: $88
    ld [hl], a                                    ; $6dfd: $77
    add a                                         ; $6dfe: $87
    adc c                                         ; $6dff: $89
    sbc b                                         ; $6e00: $98
    halt                                          ; $6e01: $76
    adc c                                         ; $6e02: $89
    ld [hl], a                                    ; $6e03: $77
    sub a                                         ; $6e04: $97
    ld l, c                                       ; $6e05: $69
    add a                                         ; $6e06: $87
    adc c                                         ; $6e07: $89
    ld a, b                                       ; $6e08: $78
    add a                                         ; $6e09: $87
    ld h, a                                       ; $6e0a: $67
    ld [hl], a                                    ; $6e0b: $77
    adc b                                         ; $6e0c: $88
    add a                                         ; $6e0d: $87
    add a                                         ; $6e0e: $87
    adc b                                         ; $6e0f: $88
    add a                                         ; $6e10: $87
    ld a, b                                       ; $6e11: $78
    add a                                         ; $6e12: $87
    adc b                                         ; $6e13: $88
    ld [hl], a                                    ; $6e14: $77
    ld a, b                                       ; $6e15: $78
    add a                                         ; $6e16: $87
    ld [hl], a                                    ; $6e17: $77
    ld [hl], a                                    ; $6e18: $77
    add a                                         ; $6e19: $87
    adc b                                         ; $6e1a: $88
    add a                                         ; $6e1b: $87
    add a                                         ; $6e1c: $87
    ld [hl], a                                    ; $6e1d: $77
    add a                                         ; $6e1e: $87
    add a                                         ; $6e1f: $87
    add a                                         ; $6e20: $87
    halt                                          ; $6e21: $76
    cp c                                          ; $6e22: $b9
    ld [hl], l                                    ; $6e23: $75
    ld e, e                                       ; $6e24: $5b
    sub a                                         ; $6e25: $97
    ld e, b                                       ; $6e26: $58
    ld d, e                                       ; $6e27: $53
    cp c                                          ; $6e28: $b9
    xor c                                         ; $6e29: $a9
    dec de                                        ; $6e2a: $1b
    sub l                                         ; $6e2b: $95
    add [hl]                                      ; $6e2c: $86
    adc c                                         ; $6e2d: $89
    ld [hl], l                                    ; $6e2e: $75
    adc c                                         ; $6e2f: $89
    sub [hl]                                      ; $6e30: $96
    ld h, l                                       ; $6e31: $65
    sbc c                                         ; $6e32: $99
    add a                                         ; $6e33: $87
    ld l, c                                       ; $6e34: $69
    halt                                          ; $6e35: $76
    ld h, a                                       ; $6e36: $67
    sub a                                         ; $6e37: $97
    ld a, b                                       ; $6e38: $78
    and a                                         ; $6e39: $a7
    ld h, [hl]                                    ; $6e3a: $66
    adc b                                         ; $6e3b: $88
    ld [hl], a                                    ; $6e3c: $77
    adc b                                         ; $6e3d: $88
    ld a, b                                       ; $6e3e: $78
    ld a, b                                       ; $6e3f: $78
    add a                                         ; $6e40: $87
    ld a, b                                       ; $6e41: $78
    add a                                         ; $6e42: $87
    add a                                         ; $6e43: $87
    add a                                         ; $6e44: $87
    ld [hl], a                                    ; $6e45: $77
    ld [hl], a                                    ; $6e46: $77
    adc b                                         ; $6e47: $88
    ld [hl], a                                    ; $6e48: $77
    adc b                                         ; $6e49: $88
    add a                                         ; $6e4a: $87
    add a                                         ; $6e4b: $87
    ld [hl], a                                    ; $6e4c: $77
    ld a, b                                       ; $6e4d: $78
    add a                                         ; $6e4e: $87
    ld a, b                                       ; $6e4f: $78
    adc b                                         ; $6e50: $88
    adc b                                         ; $6e51: $88
    adc b                                         ; $6e52: $88
    ld [hl], a                                    ; $6e53: $77
    adc b                                         ; $6e54: $88
    ld [hl], a                                    ; $6e55: $77
    ld [hl], a                                    ; $6e56: $77
    adc b                                         ; $6e57: $88
    ld [hl], a                                    ; $6e58: $77
    add a                                         ; $6e59: $87
    adc b                                         ; $6e5a: $88
    add a                                         ; $6e5b: $87
    add a                                         ; $6e5c: $87
    ld a, b                                       ; $6e5d: $78
    adc b                                         ; $6e5e: $88
    adc b                                         ; $6e5f: $88
    add a                                         ; $6e60: $87
    ld l, b                                       ; $6e61: $68
    ld [hl], a                                    ; $6e62: $77
    adc b                                         ; $6e63: $88
    ld h, a                                       ; $6e64: $67
    sbc b                                         ; $6e65: $98
    ld h, a                                       ; $6e66: $67
    sub a                                         ; $6e67: $97
    add a                                         ; $6e68: $87
    adc b                                         ; $6e69: $88
    adc c                                         ; $6e6a: $89
    ld e, c                                       ; $6e6b: $59
    halt                                          ; $6e6c: $76
    adc d                                         ; $6e6d: $8a
    sub a                                         ; $6e6e: $97
    add e                                         ; $6e6f: $83
    sbc e                                         ; $6e70: $9b
    ld h, a                                       ; $6e71: $67
    ld a, c                                       ; $6e72: $79
    ld [hl], e                                    ; $6e73: $73
    adc d                                         ; $6e74: $8a
    sbc d                                         ; $6e75: $9a
    ld e, c                                       ; $6e76: $59
    sbc b                                         ; $6e77: $98
    halt                                          ; $6e78: $76
    adc b                                         ; $6e79: $88
    ld h, a                                       ; $6e7a: $67
    ld l, d                                       ; $6e7b: $6a
    adc b                                         ; $6e7c: $88
    halt                                          ; $6e7d: $76
    adc c                                         ; $6e7e: $89
    sub a                                         ; $6e7f: $97
    adc b                                         ; $6e80: $88
    sub a                                         ; $6e81: $97
    ld a, b                                       ; $6e82: $78
    sub a                                         ; $6e83: $97
    ld [hl], a                                    ; $6e84: $77
    adc c                                         ; $6e85: $89
    ld [hl], a                                    ; $6e86: $77
    ld a, b                                       ; $6e87: $78
    add a                                         ; $6e88: $87
    ld a, c                                       ; $6e89: $79
    adc b                                         ; $6e8a: $88
    adc b                                         ; $6e8b: $88
    ld a, b                                       ; $6e8c: $78
    ld a, b                                       ; $6e8d: $78
    adc b                                         ; $6e8e: $88
    ld [hl], a                                    ; $6e8f: $77
    adc b                                         ; $6e90: $88
    adc b                                         ; $6e91: $88
    add a                                         ; $6e92: $87
    adc b                                         ; $6e93: $88
    add a                                         ; $6e94: $87
    add a                                         ; $6e95: $87
    adc b                                         ; $6e96: $88
    ld l, e                                       ; $6e97: $6b
    ld h, a                                       ; $6e98: $67
    sub l                                         ; $6e99: $95
    adc d                                         ; $6e9a: $8a
    add a                                         ; $6e9b: $87
    ld [hl], a                                    ; $6e9c: $77
    ld a, c                                       ; $6e9d: $79
    ld a, b                                       ; $6e9e: $78
    ld l, c                                       ; $6e9f: $69
    add [hl]                                      ; $6ea0: $86
    adc c                                         ; $6ea1: $89
    ld [hl], a                                    ; $6ea2: $77
    sub a                                         ; $6ea3: $97
    sbc b                                         ; $6ea4: $98
    ld l, b                                       ; $6ea5: $68
    adc b                                         ; $6ea6: $88
    sub h                                         ; $6ea7: $94
    ld a, c                                       ; $6ea8: $79
    ld l, b                                       ; $6ea9: $68
    ld [hl], a                                    ; $6eaa: $77
    sub [hl]                                      ; $6eab: $96
    ld l, d                                       ; $6eac: $6a
    adc c                                         ; $6ead: $89
    ld l, c                                       ; $6eae: $69
    ld [hl], a                                    ; $6eaf: $77
    add [hl]                                      ; $6eb0: $86
    add a                                         ; $6eb1: $87
    add a                                         ; $6eb2: $87
    ld a, c                                       ; $6eb3: $79
    ld a, b                                       ; $6eb4: $78
    add a                                         ; $6eb5: $87
    add a                                         ; $6eb6: $87
    add a                                         ; $6eb7: $87
    ld l, b                                       ; $6eb8: $68
    add a                                         ; $6eb9: $87
    ld [hl], a                                    ; $6eba: $77
    add a                                         ; $6ebb: $87
    add a                                         ; $6ebc: $87
    ld a, b                                       ; $6ebd: $78
    ld [hl], a                                    ; $6ebe: $77
    ld a, b                                       ; $6ebf: $78
    add a                                         ; $6ec0: $87
    ld a, b                                       ; $6ec1: $78
    ld [hl], a                                    ; $6ec2: $77
    adc b                                         ; $6ec3: $88
    ld [hl], a                                    ; $6ec4: $77
    ld a, b                                       ; $6ec5: $78
    ld [hl], a                                    ; $6ec6: $77
    adc b                                         ; $6ec7: $88
    ld a, b                                       ; $6ec8: $78
    ld [hl], a                                    ; $6ec9: $77
    ld [hl], a                                    ; $6eca: $77
    ld [hl], a                                    ; $6ecb: $77
    add a                                         ; $6ecc: $87
    add a                                         ; $6ecd: $87
    ld a, b                                       ; $6ece: $78
    ld [hl], a                                    ; $6ecf: $77
    add a                                         ; $6ed0: $87
    ld [hl], a                                    ; $6ed1: $77
    ld a, b                                       ; $6ed2: $78
    add a                                         ; $6ed3: $87
    ld a, b                                       ; $6ed4: $78
    add a                                         ; $6ed5: $87
    adc b                                         ; $6ed6: $88
    ld [hl], a                                    ; $6ed7: $77
    ld [hl], a                                    ; $6ed8: $77
    adc b                                         ; $6ed9: $88
    ld h, a                                       ; $6eda: $67
    adc b                                         ; $6edb: $88
    ld [hl], a                                    ; $6edc: $77
    add [hl]                                      ; $6edd: $86
    ld a, b                                       ; $6ede: $78
    add a                                         ; $6edf: $87
    add a                                         ; $6ee0: $87
    add a                                         ; $6ee1: $87
    adc b                                         ; $6ee2: $88
    add [hl]                                      ; $6ee3: $86
    adc b                                         ; $6ee4: $88
    ld [hl], a                                    ; $6ee5: $77
    ld a, b                                       ; $6ee6: $78
    ld [hl], a                                    ; $6ee7: $77
    ld [hl], a                                    ; $6ee8: $77
    add a                                         ; $6ee9: $87
    ld [hl], a                                    ; $6eea: $77
    adc b                                         ; $6eeb: $88
    ld [hl], a                                    ; $6eec: $77
    ld a, b                                       ; $6eed: $78
    add a                                         ; $6eee: $87
    ld a, c                                       ; $6eef: $79
    add a                                         ; $6ef0: $87
    ld a, b                                       ; $6ef1: $78
    ld [hl], a                                    ; $6ef2: $77
    ld [hl], a                                    ; $6ef3: $77
    sbc b                                         ; $6ef4: $98
    add hl, sp                                    ; $6ef5: $39
    sub a                                         ; $6ef6: $97
    ld [hl], a                                    ; $6ef7: $77
    add a                                         ; $6ef8: $87
    ld b, a                                       ; $6ef9: $47
    xor b                                         ; $6efa: $a8
    add [hl]                                      ; $6efb: $86
    sub a                                         ; $6efc: $97
    add a                                         ; $6efd: $87
    ld a, b                                       ; $6efe: $78
    adc b                                         ; $6eff: $88
    ld l, b                                       ; $6f00: $68
    add a                                         ; $6f01: $87
    ld [hl], a                                    ; $6f02: $77
    add a                                         ; $6f03: $87
    adc b                                         ; $6f04: $88
    add a                                         ; $6f05: $87
    adc b                                         ; $6f06: $88
    ld [hl], a                                    ; $6f07: $77
    add a                                         ; $6f08: $87
    adc b                                         ; $6f09: $88
    adc b                                         ; $6f0a: $88
    ld [hl], a                                    ; $6f0b: $77
    ld a, b                                       ; $6f0c: $78
    ld a, c                                       ; $6f0d: $79
    ld a, b                                       ; $6f0e: $78
    ld a, b                                       ; $6f0f: $78
    adc b                                         ; $6f10: $88
    sub a                                         ; $6f11: $97
    add h                                         ; $6f12: $84
    sbc b                                         ; $6f13: $98
    sbc c                                         ; $6f14: $99
    ld c, b                                       ; $6f15: $48
    ld l, e                                       ; $6f16: $6b
    adc b                                         ; $6f17: $88
    ld l, b                                       ; $6f18: $68
    ld l, c                                       ; $6f19: $69
    adc c                                         ; $6f1a: $89
    ld d, a                                       ; $6f1b: $57
    add a                                         ; $6f1c: $87
    adc b                                         ; $6f1d: $88
    sub [hl]                                      ; $6f1e: $96
    ld a, c                                       ; $6f1f: $79
    ld l, b                                       ; $6f20: $68
    ld l, c                                       ; $6f21: $69
    xor b                                         ; $6f22: $a8
    ld [hl], a                                    ; $6f23: $77
    ld a, b                                       ; $6f24: $78
    add a                                         ; $6f25: $87
    adc b                                         ; $6f26: $88
    ld a, b                                       ; $6f27: $78
    add [hl]                                      ; $6f28: $86
    ld a, b                                       ; $6f29: $78
    adc b                                         ; $6f2a: $88
    adc b                                         ; $6f2b: $88
    adc b                                         ; $6f2c: $88
    ld a, b                                       ; $6f2d: $78
    add a                                         ; $6f2e: $87
    ld [hl], a                                    ; $6f2f: $77
    adc b                                         ; $6f30: $88
    add a                                         ; $6f31: $87
    add a                                         ; $6f32: $87
    ld a, b                                       ; $6f33: $78
    adc b                                         ; $6f34: $88
    add a                                         ; $6f35: $87
    ld [hl], a                                    ; $6f36: $77
    add a                                         ; $6f37: $87
    add a                                         ; $6f38: $87
    adc b                                         ; $6f39: $88
    adc b                                         ; $6f3a: $88
    adc b                                         ; $6f3b: $88
    ld [hl], a                                    ; $6f3c: $77
    add a                                         ; $6f3d: $87
    add a                                         ; $6f3e: $87
    adc c                                         ; $6f3f: $89
    ld l, b                                       ; $6f40: $68
    sub l                                         ; $6f41: $95
    adc b                                         ; $6f42: $88
    ld a, b                                       ; $6f43: $78
    add [hl]                                      ; $6f44: $86
    adc b                                         ; $6f45: $88
    adc b                                         ; $6f46: $88
    ld a, b                                       ; $6f47: $78
    add a                                         ; $6f48: $87
    add [hl]                                      ; $6f49: $86
    ld a, b                                       ; $6f4a: $78
    adc b                                         ; $6f4b: $88
    adc b                                         ; $6f4c: $88
    ld a, b                                       ; $6f4d: $78
    ld a, b                                       ; $6f4e: $78
    add a                                         ; $6f4f: $87
    adc b                                         ; $6f50: $88
    add a                                         ; $6f51: $87
    ld a, b                                       ; $6f52: $78
    add a                                         ; $6f53: $87
    ld l, b                                       ; $6f54: $68
    sbc b                                         ; $6f55: $98
    ld [hl], a                                    ; $6f56: $77
    add [hl]                                      ; $6f57: $86
    ld l, e                                       ; $6f58: $6b
    ld [hl], a                                    ; $6f59: $77
    adc b                                         ; $6f5a: $88
    adc b                                         ; $6f5b: $88
    add a                                         ; $6f5c: $87
    sub a                                         ; $6f5d: $97
    ld a, b                                       ; $6f5e: $78
    ld a, b                                       ; $6f5f: $78
    add a                                         ; $6f60: $87
    adc b                                         ; $6f61: $88
    ld a, b                                       ; $6f62: $78
    add a                                         ; $6f63: $87
    ld [hl], a                                    ; $6f64: $77
    sub a                                         ; $6f65: $97
    ld a, b                                       ; $6f66: $78
    ld a, b                                       ; $6f67: $78
    add a                                         ; $6f68: $87
    add a                                         ; $6f69: $87
    adc b                                         ; $6f6a: $88
    ld [hl], a                                    ; $6f6b: $77
    halt                                          ; $6f6c: $76
    ld a, b                                       ; $6f6d: $78
    adc b                                         ; $6f6e: $88
    add a                                         ; $6f6f: $87
    add a                                         ; $6f70: $87
    ld [hl], a                                    ; $6f71: $77
    add a                                         ; $6f72: $87
    add a                                         ; $6f73: $87
    ld [hl], a                                    ; $6f74: $77
    ld [hl], a                                    ; $6f75: $77
    adc b                                         ; $6f76: $88
    ld a, b                                       ; $6f77: $78
    ld [hl], a                                    ; $6f78: $77
    ld a, b                                       ; $6f79: $78
    add a                                         ; $6f7a: $87
    ld a, b                                       ; $6f7b: $78
    add a                                         ; $6f7c: $87
    ld [hl], a                                    ; $6f7d: $77
    ld [hl], a                                    ; $6f7e: $77
    ld a, b                                       ; $6f7f: $78
    add a                                         ; $6f80: $87
    add a                                         ; $6f81: $87
    ld [hl], a                                    ; $6f82: $77
    ld [hl], a                                    ; $6f83: $77
    add a                                         ; $6f84: $87
    ld [hl], a                                    ; $6f85: $77
    add a                                         ; $6f86: $87
    ld [hl], a                                    ; $6f87: $77
    adc b                                         ; $6f88: $88
    ld [hl], a                                    ; $6f89: $77
    ld a, b                                       ; $6f8a: $78
    ld [hl], a                                    ; $6f8b: $77
    ld a, b                                       ; $6f8c: $78
    add a                                         ; $6f8d: $87
    add a                                         ; $6f8e: $87
    ld a, b                                       ; $6f8f: $78
    add a                                         ; $6f90: $87
    ld [hl], a                                    ; $6f91: $77
    ld [hl], a                                    ; $6f92: $77
    ld a, b                                       ; $6f93: $78
    ld a, b                                       ; $6f94: $78
    ld [hl], a                                    ; $6f95: $77
    add a                                         ; $6f96: $87
    ld [hl], a                                    ; $6f97: $77
    ld a, b                                       ; $6f98: $78
    ld a, b                                       ; $6f99: $78
    ld a, b                                       ; $6f9a: $78
    add a                                         ; $6f9b: $87
    ld [hl], a                                    ; $6f9c: $77
    adc b                                         ; $6f9d: $88
    add a                                         ; $6f9e: $87
    add a                                         ; $6f9f: $87
    add a                                         ; $6fa0: $87
    ld a, b                                       ; $6fa1: $78
    ld [hl], a                                    ; $6fa2: $77
    adc b                                         ; $6fa3: $88
    add a                                         ; $6fa4: $87
    ld a, b                                       ; $6fa5: $78
    adc b                                         ; $6fa6: $88
    ld [hl], a                                    ; $6fa7: $77
    ld a, b                                       ; $6fa8: $78
    adc b                                         ; $6fa9: $88
    adc b                                         ; $6faa: $88
    add a                                         ; $6fab: $87
    ld a, b                                       ; $6fac: $78
    ld a, b                                       ; $6fad: $78
    add a                                         ; $6fae: $87
    add a                                         ; $6faf: $87
    adc b                                         ; $6fb0: $88
    adc b                                         ; $6fb1: $88
    ld [hl], a                                    ; $6fb2: $77
    adc b                                         ; $6fb3: $88
    adc b                                         ; $6fb4: $88
    adc b                                         ; $6fb5: $88
    adc b                                         ; $6fb6: $88
    adc b                                         ; $6fb7: $88
    adc b                                         ; $6fb8: $88
    adc b                                         ; $6fb9: $88
    adc b                                         ; $6fba: $88
    adc b                                         ; $6fbb: $88
    adc b                                         ; $6fbc: $88
    adc b                                         ; $6fbd: $88
    adc b                                         ; $6fbe: $88
    adc b                                         ; $6fbf: $88
    add a                                         ; $6fc0: $87
    ld [hl], a                                    ; $6fc1: $77
    adc b                                         ; $6fc2: $88
    adc b                                         ; $6fc3: $88
    ld a, b                                       ; $6fc4: $78
    ld [hl], a                                    ; $6fc5: $77
    adc b                                         ; $6fc6: $88
    ld a, b                                       ; $6fc7: $78
    ld [hl], a                                    ; $6fc8: $77
    add a                                         ; $6fc9: $87
    ld [hl], a                                    ; $6fca: $77
    ld [hl], a                                    ; $6fcb: $77
    add a                                         ; $6fcc: $87
    ld a, b                                       ; $6fcd: $78
    ld [hl], a                                    ; $6fce: $77
    adc b                                         ; $6fcf: $88
    adc b                                         ; $6fd0: $88
    adc b                                         ; $6fd1: $88
    adc b                                         ; $6fd2: $88
    add a                                         ; $6fd3: $87
    ld [hl], a                                    ; $6fd4: $77
    ld [hl], a                                    ; $6fd5: $77
    ld [hl], a                                    ; $6fd6: $77
    ld [hl], a                                    ; $6fd7: $77
    ld a, b                                       ; $6fd8: $78
    sub a                                         ; $6fd9: $97
    adc c                                         ; $6fda: $89
    ld h, a                                       ; $6fdb: $67
    xor b                                         ; $6fdc: $a8
    ld a, b                                       ; $6fdd: $78
    adc b                                         ; $6fde: $88
    add [hl]                                      ; $6fdf: $86
    ld h, a                                       ; $6fe0: $67
    ld h, a                                       ; $6fe1: $67
    add [hl]                                      ; $6fe2: $86
    ld e, c                                       ; $6fe3: $59
    add a                                         ; $6fe4: $87
    adc c                                         ; $6fe5: $89
    adc b                                         ; $6fe6: $88
    adc c                                         ; $6fe7: $89
    sbc b                                         ; $6fe8: $98
    ld h, [hl]                                    ; $6fe9: $66
    halt                                          ; $6fea: $76
    ld d, a                                       ; $6feb: $57
    halt                                          ; $6fec: $76
    ld [hl], a                                    ; $6fed: $77
    adc d                                         ; $6fee: $8a
    cp b                                          ; $6fef: $b8
    adc e                                         ; $6ff0: $8b
    ld a, c                                       ; $6ff1: $79
    cp b                                          ; $6ff2: $b8
    adc b                                         ; $6ff3: $88
    ld [hl], a                                    ; $6ff4: $77
    ld h, e                                       ; $6ff5: $63
    ld b, l                                       ; $6ff6: $45
    ld a, c                                       ; $6ff7: $79
    add l                                         ; $6ff8: $85
    ld a, c                                       ; $6ff9: $79
    sbc c                                         ; $6ffa: $99
    adc b                                         ; $6ffb: $88
    sbc c                                         ; $6ffc: $99
    sbc d                                         ; $6ffd: $9a
    sub [hl]                                      ; $6ffe: $96
    ld b, l                                       ; $6fff: $45
    ld h, l                                       ; $7000: $65
    ld h, a                                       ; $7001: $67
    ld [hl], a                                    ; $7002: $77
    adc b                                         ; $7003: $88
    xor h                                         ; $7004: $ac
    xor b                                         ; $7005: $a8
    sub a                                         ; $7006: $97
    adc c                                         ; $7007: $89
    add a                                         ; $7008: $87
    add a                                         ; $7009: $87
    halt                                          ; $700a: $76
    ld b, h                                       ; $700b: $44
    ld d, [hl]                                    ; $700c: $56
    adc c                                         ; $700d: $89
    ld h, a                                       ; $700e: $67
    adc c                                         ; $700f: $89
    xor c                                         ; $7010: $a9
    adc b                                         ; $7011: $88
    sbc c                                         ; $7012: $99
    add a                                         ; $7013: $87
    ld h, [hl]                                    ; $7014: $66
    ld d, h                                       ; $7015: $54
    ld a, b                                       ; $7016: $78
    ld h, l                                       ; $7017: $65
    ld [hl], a                                    ; $7018: $77
    adc d                                         ; $7019: $8a
    bit 7, b                                      ; $701a: $cb $78
    sbc b                                         ; $701c: $98
    sbc b                                         ; $701d: $98
    ld d, l                                       ; $701e: $55
    add a                                         ; $701f: $87
    inc [hl]                                      ; $7020: $34
    halt                                          ; $7021: $76
    ld a, d                                       ; $7022: $7a
    sub a                                         ; $7023: $97
    adc d                                         ; $7024: $8a
    add a                                         ; $7025: $87
    sbc c                                         ; $7026: $99
    ld a, b                                       ; $7027: $78
    sub a                                         ; $7028: $97
    ld [hl], $84                                  ; $7029: $36 $84
    ld c, d                                       ; $702b: $4a
    and [hl]                                      ; $702c: $a6
    ld b, a                                       ; $702d: $47
    ld a, c                                       ; $702e: $79
    rst $18                                       ; $702f: $df
    or [hl]                                       ; $7030: $b6
    add a                                         ; $7031: $87
    ld e, b                                       ; $7032: $58
    ld [hl], d                                    ; $7033: $72
    ld c, b                                       ; $7034: $48
    ld h, e                                       ; $7035: $63
    ld d, a                                       ; $7036: $57
    ld a, c                                       ; $7037: $79
    db $db                                        ; $7038: $db
    ld l, b                                       ; $7039: $68
    ret                                           ; $703a: $c9


    ld e, b                                       ; $703b: $58
    sub a                                         ; $703c: $97
    ld [hl], a                                    ; $703d: $77
    ld d, l                                       ; $703e: $55
    halt                                          ; $703f: $76
    ld l, b                                       ; $7040: $68
    ld [hl], a                                    ; $7041: $77
    add a                                         ; $7042: $87
    ld l, b                                       ; $7043: $68
    rst $08                                       ; $7044: $cf
    rst $00                                       ; $7045: $c7
    ld [hl], l                                    ; $7046: $75
    ld d, a                                       ; $7047: $57
    halt                                          ; $7048: $76
    ld h, [hl]                                    ; $7049: $66
    ld h, [hl]                                    ; $704a: $66
    ld a, b                                       ; $704b: $78
    ld a, b                                       ; $704c: $78
    sbc c                                         ; $704d: $99
    adc c                                         ; $704e: $89
    sub a                                         ; $704f: $97
    adc c                                         ; $7050: $89
    add l                                         ; $7051: $85
    ld [hl], a                                    ; $7052: $77
    ld d, [hl]                                    ; $7053: $56
    sub a                                         ; $7054: $97
    ld l, c                                       ; $7055: $69
    sub a                                         ; $7056: $97
    ld h, a                                       ; $7057: $67
    ld [hl], a                                    ; $7058: $77
    xor a                                         ; $7059: $af
    jp hl                                         ; $705a: $e9


    ld h, e                                       ; $705b: $63
    ld b, [hl]                                    ; $705c: $46
    ld a, b                                       ; $705d: $78
    halt                                          ; $705e: $76
    ld a, b                                       ; $705f: $78
    add a                                         ; $7060: $87
    adc c                                         ; $7061: $89
    sbc c                                         ; $7062: $99
    sbc c                                         ; $7063: $99
    ld [hl], l                                    ; $7064: $75
    ld l, b                                       ; $7065: $68
    halt                                          ; $7066: $76
    ld a, b                                       ; $7067: $78
    ld a, b                                       ; $7068: $78
    sub l                                         ; $7069: $95
    ld l, b                                       ; $706a: $68
    adc b                                         ; $706b: $88
    ld [hl], a                                    ; $706c: $77
    adc b                                         ; $706d: $88
    cp a                                          ; $706e: $bf
    ret c                                         ; $706f: $d8

    ld d, e                                       ; $7070: $53
    ld b, e                                       ; $7071: $43
    ld l, b                                       ; $7072: $68
    add a                                         ; $7073: $87
    adc c                                         ; $7074: $89
    sbc b                                         ; $7075: $98
    adc b                                         ; $7076: $88
    add a                                         ; $7077: $87
    adc b                                         ; $7078: $88
    ld [hl], a                                    ; $7079: $77
    ld [hl], a                                    ; $707a: $77
    ld [hl], a                                    ; $707b: $77
    halt                                          ; $707c: $76
    ld l, c                                       ; $707d: $69
    sub [hl]                                      ; $707e: $96
    ld a, b                                       ; $707f: $78
    adc b                                         ; $7080: $88
    halt                                          ; $7081: $76
    ld a, b                                       ; $7082: $78
    xor l                                         ; $7083: $ad
    ld [$1175], a                                 ; $7084: $ea $75 $11
    ld b, [hl]                                    ; $7087: $46
    sbc d                                         ; $7088: $9a
    xor d                                         ; $7089: $aa
    add a                                         ; $708a: $87
    ld a, b                                       ; $708b: $78
    ld h, [hl]                                    ; $708c: $66
    ld [hl], a                                    ; $708d: $77
    ld [hl], a                                    ; $708e: $77
    add a                                         ; $708f: $87
    adc b                                         ; $7090: $88
    sbc b                                         ; $7091: $98
    ld b, h                                       ; $7092: $44
    ld a, b                                       ; $7093: $78
    adc d                                         ; $7094: $8a
    xor e                                         ; $7095: $ab
    sub [hl]                                      ; $7096: $96
    ld d, l                                       ; $7097: $55
    ld l, d                                       ; $7098: $6a
    sbc $ca                                       ; $7099: $de $ca
    ld d, c                                       ; $709b: $51
    inc bc                                        ; $709c: $03
    ld d, a                                       ; $709d: $57
    cp [hl]                                       ; $709e: $be
    ret                                           ; $709f: $c9


    add l                                         ; $70a0: $85
    ld d, [hl]                                    ; $70a1: $56
    ld d, [hl]                                    ; $70a2: $56
    adc b                                         ; $70a3: $88
    sbc d                                         ; $70a4: $9a
    sbc b                                         ; $70a5: $98
    ld h, [hl]                                    ; $70a6: $66
    ld h, h                                       ; $70a7: $64
    ld b, a                                       ; $70a8: $47
    sbc d                                         ; $70a9: $9a
    xor c                                         ; $70aa: $a9
    adc b                                         ; $70ab: $88
    ld d, l                                       ; $70ac: $55
    adc d                                         ; $70ad: $8a
    call Call_018_54b7                            ; $70ae: $cd $b7 $54
    inc h                                         ; $70b1: $24
    ld l, c                                       ; $70b2: $69
    xor d                                         ; $70b3: $aa
    cp d                                          ; $70b4: $ba
    ld h, l                                       ; $70b5: $65
    ld h, [hl]                                    ; $70b6: $66
    ld h, [hl]                                    ; $70b7: $66
    ld h, a                                       ; $70b8: $67
    ld [hl], a                                    ; $70b9: $77
    sbc e                                         ; $70ba: $9b
    jp c, $0162                                   ; $70bb: $da $62 $01

    add hl, sp                                    ; $70be: $39
    rst $28                                       ; $70bf: $ef
    db $ed                                        ; $70c0: $ed
    ld h, e                                       ; $70c1: $63
    ld [bc], a                                    ; $70c2: $02
    ld e, b                                       ; $70c3: $58
    sbc $a9                                       ; $70c4: $de $a9
    add h                                         ; $70c6: $84
    inc hl                                        ; $70c7: $23
    ld e, b                                       ; $70c8: $58
    xor d                                         ; $70c9: $aa
    xor c                                         ; $70ca: $a9
    halt                                          ; $70cb: $76
    ld [hl], a                                    ; $70cc: $77
    halt                                          ; $70cd: $76
    adc b                                         ; $70ce: $88
    adc c                                         ; $70cf: $89
    xor c                                         ; $70d0: $a9
    halt                                          ; $70d1: $76
    ld d, l                                       ; $70d2: $55
    ld d, [hl]                                    ; $70d3: $56
    adc d                                         ; $70d4: $8a
    xor c                                         ; $70d5: $a9
    sub a                                         ; $70d6: $97
    ld [hl], a                                    ; $70d7: $77
    ld a, b                                       ; $70d8: $78
    adc b                                         ; $70d9: $88
    halt                                          ; $70da: $76
    ld l, b                                       ; $70db: $68
    sbc b                                         ; $70dc: $98
    add a                                         ; $70dd: $87
    ld h, a                                       ; $70de: $67
    ld h, [hl]                                    ; $70df: $66
    adc b                                         ; $70e0: $88
    adc b                                         ; $70e1: $88
    adc b                                         ; $70e2: $88
    ld [hl], a                                    ; $70e3: $77
    ld [hl], l                                    ; $70e4: $75
    ld e, b                                       ; $70e5: $58
    xor e                                         ; $70e6: $ab
    add [hl]                                      ; $70e7: $86
    ld h, h                                       ; $70e8: $64
    inc [hl]                                      ; $70e9: $34
    ld a, l                                       ; $70ea: $7d
    cp $b9                                        ; $70eb: $fe $b9
    ld b, c                                       ; $70ed: $41
    inc bc                                        ; $70ee: $03
    ld h, a                                       ; $70ef: $67
    cp a                                          ; $70f0: $bf
    jp c, Jump_000_3274                           ; $70f1: $da $74 $32

    ld c, b                                       ; $70f4: $48
    sbc d                                         ; $70f5: $9a
    cp c                                          ; $70f6: $b9
    halt                                          ; $70f7: $76
    ld d, a                                       ; $70f8: $57
    sbc b                                         ; $70f9: $98
    add [hl]                                      ; $70fa: $86
    ld b, a                                       ; $70fb: $47
    adc b                                         ; $70fc: $88
    ld h, a                                       ; $70fd: $67
    sbc b                                         ; $70fe: $98
    sbc h                                         ; $70ff: $9c
    ld [$2363], a                                 ; $7100: $ea $63 $23
    ld l, b                                       ; $7103: $68
    xor h                                         ; $7104: $ac
    xor b                                         ; $7105: $a8
    sbc c                                         ; $7106: $99
    ld [hl], l                                    ; $7107: $75
    halt                                          ; $7108: $76
    ld d, l                                       ; $7109: $55
    ld a, d                                       ; $710a: $7a
    xor d                                         ; $710b: $aa
    xor b                                         ; $710c: $a8
    ld [hl], l                                    ; $710d: $75
    ld b, l                                       ; $710e: $45
    ld l, b                                       ; $710f: $68
    adc b                                         ; $7110: $88
    sbc e                                         ; $7111: $9b
    and a                                         ; $7112: $a7
    ld a, b                                       ; $7113: $78
    adc c                                         ; $7114: $89
    sbc c                                         ; $7115: $99
    sub a                                         ; $7116: $97
    ld h, l                                       ; $7117: $65
    ld h, a                                       ; $7118: $67
    adc b                                         ; $7119: $88
    sbc c                                         ; $711a: $99
    adc c                                         ; $711b: $89
    adc b                                         ; $711c: $88
    add a                                         ; $711d: $87
    halt                                          ; $711e: $76
    ld a, c                                       ; $711f: $79
    sub a                                         ; $7120: $97
    ld d, [hl]                                    ; $7121: $56
    ld [hl], a                                    ; $7122: $77
    adc b                                         ; $7123: $88
    adc b                                         ; $7124: $88
    ld h, l                                       ; $7125: $65
    ld d, a                                       ; $7126: $57
    rst $08                                       ; $7127: $cf
    db $eb                                        ; $7128: $eb
    ld [hl], e                                    ; $7129: $73
    inc h                                         ; $712a: $24
    ld d, [hl]                                    ; $712b: $56
    adc d                                         ; $712c: $8a
    cp h                                          ; $712d: $bc
    sub a                                         ; $712e: $97
    ld [hl], h                                    ; $712f: $74
    dec [hl]                                      ; $7130: $35
    adc c                                         ; $7131: $89
    sbc e                                         ; $7132: $9b
    cp c                                          ; $7133: $b9
    ld d, h                                       ; $7134: $54
    ld h, [hl]                                    ; $7135: $66
    ld [hl], a                                    ; $7136: $77
    ld d, a                                       ; $7137: $57
    adc b                                         ; $7138: $88
    ld h, l                                       ; $7139: $65
    ld a, c                                       ; $713a: $79
    rst $08                                       ; $713b: $cf
    ld a, [$0240]                                 ; $713c: $fa $40 $02
    ld e, c                                       ; $713f: $59
    rst $18                                       ; $7140: $df
    ret                                           ; $7141: $c9


    ld d, d                                       ; $7142: $52
    dec [hl]                                      ; $7143: $35
    ld a, c                                       ; $7144: $79
    cp h                                          ; $7145: $bc
    xor b                                         ; $7146: $a8
    ld h, [hl]                                    ; $7147: $66
    ld d, l                                       ; $7148: $55
    ld h, a                                       ; $7149: $67
    adc c                                         ; $714a: $89
    adc b                                         ; $714b: $88
    add a                                         ; $714c: $87
    ld h, a                                       ; $714d: $67
    ld a, b                                       ; $714e: $78
    cp e                                          ; $714f: $bb
    cp c                                          ; $7150: $b9
    ld [hl], l                                    ; $7151: $75
    inc [hl]                                      ; $7152: $34
    ld a, c                                       ; $7153: $79
    xor c                                         ; $7154: $a9
    sbc b                                         ; $7155: $98
    ld h, [hl]                                    ; $7156: $66
    ld h, [hl]                                    ; $7157: $66
    ld a, b                                       ; $7158: $78
    sbc d                                         ; $7159: $9a
    xor d                                         ; $715a: $aa
    add [hl]                                      ; $715b: $86
    ld [hl-], a                                   ; $715c: $32
    ld c, b                                       ; $715d: $48
    cp h                                          ; $715e: $bc
    xor b                                         ; $715f: $a8
    ld h, l                                       ; $7160: $65
    ld b, [hl]                                    ; $7161: $46
    adc d                                         ; $7162: $8a
    db $dd                                        ; $7163: $dd
    or a                                          ; $7164: $b7
    ld b, d                                       ; $7165: $42
    dec [hl]                                      ; $7166: $35
    adc d                                         ; $7167: $8a
    cp d                                          ; $7168: $ba
    sbc b                                         ; $7169: $98
    ld h, h                                       ; $716a: $64
    ld b, l                                       ; $716b: $45
    ld a, c                                       ; $716c: $79
    xor e                                         ; $716d: $ab
    xor c                                         ; $716e: $a9
    halt                                          ; $716f: $76
    ld b, e                                       ; $7170: $43
    ld d, a                                       ; $7171: $57
    sbc c                                         ; $7172: $99
    xor b                                         ; $7173: $a8
    ld h, l                                       ; $7174: $65
    ld d, a                                       ; $7175: $57
    xor [hl]                                      ; $7176: $ae
    db $fc                                        ; $7177: $fc
    add h                                         ; $7178: $84
    ld [bc], a                                    ; $7179: $02
    ld b, a                                       ; $717a: $47
    cp l                                          ; $717b: $bd
    res 2, [hl]                                   ; $717c: $cb $96
    ld [hl-], a                                   ; $717e: $32
    ld b, a                                       ; $717f: $47
    xor h                                         ; $7180: $ac
    jp z, Jump_018_4475                           ; $7181: $ca $75 $44

    ld d, [hl]                                    ; $7184: $56
    adc d                                         ; $7185: $8a
    sbc b                                         ; $7186: $98
    ld [hl], l                                    ; $7187: $75
    ld d, a                                       ; $7188: $57
    xor l                                         ; $7189: $ad
    db $eb                                        ; $718a: $eb
    sub h                                         ; $718b: $94
    ld [bc], a                                    ; $718c: $02
    ld b, a                                       ; $718d: $47
    cp l                                          ; $718e: $bd
    db $db                                        ; $718f: $db
    add l                                         ; $7190: $85
    inc sp                                        ; $7191: $33
    ld b, a                                       ; $7192: $47
    xor h                                         ; $7193: $ac
    cp c                                          ; $7194: $b9
    add a                                         ; $7195: $87
    ld h, h                                       ; $7196: $64
    ld d, l                                       ; $7197: $55
    ld d, a                                       ; $7198: $57
    xor d                                         ; $7199: $aa
    sub a                                         ; $719a: $97
    ld a, b                                       ; $719b: $78
    ld a, b                                       ; $719c: $78
    adc c                                         ; $719d: $89
    xor e                                         ; $719e: $ab
    and [hl]                                      ; $719f: $a6
    ld b, h                                       ; $71a0: $44
    ld d, a                                       ; $71a1: $57
    sbc d                                         ; $71a2: $9a
    xor b                                         ; $71a3: $a8
    ld h, l                                       ; $71a4: $65
    ld [hl], a                                    ; $71a5: $77
    ld a, b                                       ; $71a6: $78
    sbc d                                         ; $71a7: $9a
    sbc b                                         ; $71a8: $98
    ld [hl], a                                    ; $71a9: $77
    ld h, [hl]                                    ; $71aa: $66
    ld h, [hl]                                    ; $71ab: $66
    ld h, a                                       ; $71ac: $67
    adc b                                         ; $71ad: $88
    add a                                         ; $71ae: $87
    ld h, l                                       ; $71af: $65
    adc b                                         ; $71b0: $88
    xor a                                         ; $71b1: $af
    jp hl                                         ; $71b2: $e9


    ld [hl], c                                    ; $71b3: $71
    inc bc                                        ; $71b4: $03
    ld l, c                                       ; $71b5: $69
    call Call_018_65a8                            ; $71b6: $cd $a8 $65
    ld b, h                                       ; $71b9: $44
    ld e, b                                       ; $71ba: $58
    call Call_018_63b8                            ; $71bb: $cd $b8 $63
    dec [hl]                                      ; $71be: $35
    ld l, b                                       ; $71bf: $68
    xor c                                         ; $71c0: $a9
    halt                                          ; $71c1: $76
    ld h, [hl]                                    ; $71c2: $66
    ld h, a                                       ; $71c3: $67
    xor a                                         ; $71c4: $af
    ld a, [$0382]                                 ; $71c5: $fa $82 $03
    ld l, c                                       ; $71c8: $69
    db $dd                                        ; $71c9: $dd
    xor b                                         ; $71ca: $a8
    ld d, l                                       ; $71cb: $55
    ld b, h                                       ; $71cc: $44
    ld l, c                                       ; $71cd: $69
    cp h                                          ; $71ce: $bc
    cp b                                          ; $71cf: $b8
    ld h, [hl]                                    ; $71d0: $66
    ld d, l                                       ; $71d1: $55
    ld [hl], a                                    ; $71d2: $77
    adc c                                         ; $71d3: $89
    ld [hl], a                                    ; $71d4: $77
    ld a, b                                       ; $71d5: $78
    sbc c                                         ; $71d6: $99
    halt                                          ; $71d7: $76
    ld a, b                                       ; $71d8: $78
    sbc d                                         ; $71d9: $9a
    xor d                                         ; $71da: $aa
    add h                                         ; $71db: $84
    ld d, l                                       ; $71dc: $55
    ld l, b                                       ; $71dd: $68
    xor d                                         ; $71de: $aa
    sub a                                         ; $71df: $97
    ld h, [hl]                                    ; $71e0: $66
    halt                                          ; $71e1: $76
    ld h, a                                       ; $71e2: $67
    adc d                                         ; $71e3: $8a
    xor d                                         ; $71e4: $aa
    sub a                                         ; $71e5: $97
    inc sp                                        ; $71e6: $33
    ld b, [hl]                                    ; $71e7: $46
    adc c                                         ; $71e8: $89
    xor d                                         ; $71e9: $aa
    ld [hl], l                                    ; $71ea: $75
    ld d, a                                       ; $71eb: $57
    xor a                                         ; $71ec: $af
    ld [$0371], a                                 ; $71ed: $ea $71 $03
    ld l, c                                       ; $71f0: $69
    db $dd                                        ; $71f1: $dd
    cp c                                          ; $71f2: $b9
    ld h, h                                       ; $71f3: $64
    ld [hl+], a                                   ; $71f4: $22
    ld e, b                                       ; $71f5: $58
    cp l                                          ; $71f6: $bd
    ret                                           ; $71f7: $c9


    halt                                          ; $71f8: $76
    ld d, h                                       ; $71f9: $54
    ld b, [hl]                                    ; $71fa: $46
    adc b                                         ; $71fb: $88
    sbc c                                         ; $71fc: $99
    halt                                          ; $71fd: $76
    ld d, [hl]                                    ; $71fe: $56
    sbc l                                         ; $71ff: $9d
    db $ec                                        ; $7200: $ec
    sub e                                         ; $7201: $93
    inc bc                                        ; $7202: $03
    ld e, c                                       ; $7203: $59
    call $85ca                                    ; $7204: $cd $ca $85
    inc sp                                        ; $7207: $33
    ld [hl], $9c                                  ; $7208: $36 $9c
    res 2, l                                      ; $720a: $cb $95
    ld b, l                                       ; $720c: $45
    ld d, [hl]                                    ; $720d: $56
    adc c                                         ; $720e: $89
    sbc b                                         ; $720f: $98
    add [hl]                                      ; $7210: $86
    ld d, l                                       ; $7211: $55
    ld a, e                                       ; $7212: $7b
    cp $a7                                        ; $7213: $fe $a7
    jr nz, jr_018_724d                            ; $7215: $20 $36

    sbc h                                         ; $7217: $9c
    db $ed                                        ; $7218: $ed
    xor b                                         ; $7219: $a8
    ld d, d                                       ; $721a: $52
    inc de                                        ; $721b: $13
    ld l, b                                       ; $721c: $68
    xor h                                         ; $721d: $ac
    ret                                           ; $721e: $c9


    ld [hl], a                                    ; $721f: $77
    ld d, h                                       ; $7220: $54
    ld h, [hl]                                    ; $7221: $66
    ld h, a                                       ; $7222: $67
    adc c                                         ; $7223: $89
    sbc b                                         ; $7224: $98
    ld a, c                                       ; $7225: $79
    call z, Call_018_41a7                         ; $7226: $cc $a7 $41
    dec h                                         ; $7229: $25
    sbc h                                         ; $722a: $9c
    xor $c9                                       ; $722b: $ee $c9
    ld h, c                                       ; $722d: $61
    ld [bc], a                                    ; $722e: $02
    ld e, b                                       ; $722f: $58
    call $86b9                                    ; $7230: $cd $b9 $86
    inc [hl]                                      ; $7233: $34
    ld h, a                                       ; $7234: $67
    adc b                                         ; $7235: $88
    adc b                                         ; $7236: $88
    halt                                          ; $7237: $76
    adc h                                         ; $7238: $8c
    db $fc                                        ; $7239: $fc
    sub l                                         ; $723a: $95
    ld bc, $9e35                                  ; $723b: $01 $35 $9e
    db $fd                                        ; $723e: $fd
    cp b                                          ; $723f: $b8
    jr nc, jr_018_7256                            ; $7240: $30 $14

    adc e                                         ; $7242: $8b
    jp z, Jump_018_5386                           ; $7243: $ca $86 $53

    ld e, b                                       ; $7246: $58
    adc b                                         ; $7247: $88
    sbc d                                         ; $7248: $9a
    xor c                                         ; $7249: $a9
    ld [hl], l                                    ; $724a: $75
    ld d, a                                       ; $724b: $57
    sbc h                                         ; $724c: $9c

jr_018_724d:
    reti                                          ; $724d: $d9


    ld b, d                                       ; $724e: $42
    dec [hl]                                      ; $724f: $35
    adc d                                         ; $7250: $8a
    call z, $85ca                                 ; $7251: $cc $ca $85
    ld [hl+], a                                   ; $7254: $22
    ld b, a                                       ; $7255: $47

jr_018_7256:
    xor h                                         ; $7256: $ac
    xor b                                         ; $7257: $a8
    ld d, h                                       ; $7258: $54
    ld [hl], $8a                                  ; $7259: $36 $8a
    xor c                                         ; $725b: $a9
    add a                                         ; $725c: $87
    ld h, l                                       ; $725d: $65
    ld d, [hl]                                    ; $725e: $56
    sbc h                                         ; $725f: $9c
    db $ed                                        ; $7260: $ed
    and h                                         ; $7261: $a4
    ld bc, $8d25                                  ; $7262: $01 $25 $8d
    rst $38                                       ; $7265: $ff
    cp c                                          ; $7266: $b9
    ld b, b                                       ; $7267: $40
    inc bc                                        ; $7268: $03
    ld l, d                                       ; $7269: $6a
    db $ed                                        ; $726a: $ed
    and a                                         ; $726b: $a7
    ld b, d                                       ; $726c: $42
    ld b, l                                       ; $726d: $45
    adc d                                         ; $726e: $8a
    xor c                                         ; $726f: $a9
    add [hl]                                      ; $7270: $86
    ld d, l                                       ; $7271: $55
    ld l, d                                       ; $7272: $6a
    xor $a8                                       ; $7273: $ee $a8
    ld b, b                                       ; $7275: $40
    inc de                                        ; $7276: $13
    ld l, c                                       ; $7277: $69
    rst $18                                       ; $7278: $df
    ld [$1283], a                                 ; $7279: $ea $83 $12
    ld [hl], $be                                  ; $727c: $36 $be
    db $db                                        ; $727e: $db
    add h                                         ; $727f: $84
    inc d                                         ; $7280: $14
    ld d, a                                       ; $7281: $57
    adc d                                         ; $7282: $8a
    xor c                                         ; $7283: $a9
    halt                                          ; $7284: $76
    ld a, h                                       ; $7285: $7c
    db $ec                                        ; $7286: $ec
    ld [hl], l                                    ; $7287: $75
    jr nz, jr_018_72c0                            ; $7288: $20 $36

    adc h                                         ; $728a: $8c
    xor $c9                                       ; $728b: $ee $c9
    ld d, b                                       ; $728d: $50
    inc d                                         ; $728e: $14
    ld l, b                                       ; $728f: $68
    xor h                                         ; $7290: $ac
    bit 6, e                                      ; $7291: $cb $73
    inc [hl]                                      ; $7293: $34
    ld d, [hl]                                    ; $7294: $56
    adc e                                         ; $7295: $8b
    cp d                                          ; $7296: $ba
    xor d                                         ; $7297: $aa
    xor c                                         ; $7298: $a9
    ld h, h                                       ; $7299: $64
    ld b, h                                       ; $729a: $44
    ld b, [hl]                                    ; $729b: $46
    xor h                                         ; $729c: $ac
    res 2, a                                      ; $729d: $cb $97
    ld h, [hl]                                    ; $729f: $66
    ld h, [hl]                                    ; $72a0: $66
    ld d, a                                       ; $72a1: $57
    adc c                                         ; $72a2: $89
    sbc b                                         ; $72a3: $98
    add a                                         ; $72a4: $87
    ld [hl], l                                    ; $72a5: $75
    ld d, [hl]                                    ; $72a6: $56
    ld a, b                                       ; $72a7: $78
    sbc e                                         ; $72a8: $9b
    jp z, Jump_000_3653                           ; $72a9: $ca $53 $36

    sbc d                                         ; $72ac: $9a
    cp e                                          ; $72ad: $bb
    sub a                                         ; $72ae: $97
    ld h, l                                       ; $72af: $65
    ld b, h                                       ; $72b0: $44
    ld l, b                                       ; $72b1: $68
    cp [hl]                                       ; $72b2: $be
    jp c, Jump_000_2273                           ; $72b3: $da $73 $22

    ld b, a                                       ; $72b6: $47
    xor h                                         ; $72b7: $ac
    ret                                           ; $72b8: $c9


    ld d, l                                       ; $72b9: $55
    ld d, l                                       ; $72ba: $55
    ld h, a                                       ; $72bb: $67
    adc b                                         ; $72bc: $88
    adc b                                         ; $72bd: $88
    sbc b                                         ; $72be: $98
    ld l, b                                       ; $72bf: $68

jr_018_72c0:
    call z, Call_018_4486                         ; $72c0: $cc $86 $44
    ld b, l                                       ; $72c3: $45
    adc d                                         ; $72c4: $8a
    cp l                                          ; $72c5: $bd
    jp c, Jump_000_0173                           ; $72c6: $da $73 $01

    ld [hl], $ae                                  ; $72c9: $36 $ae
    db $db                                        ; $72cb: $db
    add l                                         ; $72cc: $85
    inc sp                                        ; $72cd: $33
    ld b, l                                       ; $72ce: $45
    ld a, c                                       ; $72cf: $79
    sbc d                                         ; $72d0: $9a
    cp e                                          ; $72d1: $bb
    xor b                                         ; $72d2: $a8
    xor d                                         ; $72d3: $aa
    ld h, e                                       ; $72d4: $63
    inc hl                                        ; $72d5: $23
    ld l, b                                       ; $72d6: $68
    cp l                                          ; $72d7: $bd
    db $db                                        ; $72d8: $db
    xor b                                         ; $72d9: $a8
    ld b, b                                       ; $72da: $40
    dec d                                         ; $72db: $15
    ld l, e                                       ; $72dc: $6b
    call z, Call_000_32b7                         ; $72dd: $cc $b7 $32
    ld b, l                                       ; $72e0: $45
    ld a, c                                       ; $72e1: $79
    call Call_018_76c9                            ; $72e2: $cd $c9 $76
    ld d, l                                       ; $72e5: $55
    ld d, a                                       ; $72e6: $57
    adc c                                         ; $72e7: $89
    sbc c                                         ; $72e8: $99
    xor c                                         ; $72e9: $a9
    add a                                         ; $72ea: $87
    ld [hl], a                                    ; $72eb: $77
    ld a, b                                       ; $72ec: $78
    sbc b                                         ; $72ed: $98
    add a                                         ; $72ee: $87
    ld [hl], a                                    ; $72ef: $77
    add a                                         ; $72f0: $87
    ld a, b                                       ; $72f1: $78
    add a                                         ; $72f2: $87
    ld [hl], a                                    ; $72f3: $77
    ld [hl], a                                    ; $72f4: $77
    ld [hl], a                                    ; $72f5: $77
    sbc l                                         ; $72f6: $9d
    rst $10                                       ; $72f7: $d7
    ld d, [hl]                                    ; $72f8: $56
    ld h, l                                       ; $72f9: $65
    ld b, l                                       ; $72fa: $45
    adc e                                         ; $72fb: $8b
    sbc c                                         ; $72fc: $99
    sbc b                                         ; $72fd: $98
    sbc c                                         ; $72fe: $99
    ld d, [hl]                                    ; $72ff: $56
    ld h, [hl]                                    ; $7300: $66
    add a                                         ; $7301: $87
    ld e, b                                       ; $7302: $58
    sbc c                                         ; $7303: $99
    halt                                          ; $7304: $76
    ld h, a                                       ; $7305: $67
    ld h, l                                       ; $7306: $65
    ld l, b                                       ; $7307: $68
    adc c                                         ; $7308: $89
    adc b                                         ; $7309: $88
    cp l                                          ; $730a: $bd
    ld [hl], l                                    ; $730b: $75
    sbc b                                         ; $730c: $98
    ld b, c                                       ; $730d: $41
    daa                                           ; $730e: $27
    cp h                                          ; $730f: $bc
    call z, Call_000_2295                         ; $7310: $cc $95 $22
    ld b, [hl]                                    ; $7313: $46
    ld a, c                                       ; $7314: $79
    cp e                                          ; $7315: $bb
    call z, $0194                                 ; $7316: $cc $94 $01
    ld d, [hl]                                    ; $7319: $56
    xor l                                         ; $731a: $ad
    db $eb                                        ; $731b: $eb
    add h                                         ; $731c: $84
    inc h                                         ; $731d: $24
    ld b, [hl]                                    ; $731e: $46
    adc h                                         ; $731f: $8c
    db $fd                                        ; $7320: $fd
    sub a                                         ; $7321: $97
    ld hl, $8c45                                  ; $7322: $21 $45 $8c
    db $ed                                        ; $7325: $ed
    xor b                                         ; $7326: $a8
    ld sp, $6824                                  ; $7327: $31 $24 $68
    call Call_018_63c9                            ; $732a: $cd $c9 $63
    ld b, [hl]                                    ; $732d: $46
    xor [hl]                                      ; $732e: $ae
    or h                                          ; $732f: $b4
    ld [hl+], a                                   ; $7330: $22
    ld d, [hl]                                    ; $7331: $56
    sbc h                                         ; $7332: $9c
    ret z                                         ; $7333: $c8

    ld d, l                                       ; $7334: $55
    ld h, [hl]                                    ; $7335: $66
    sbc l                                         ; $7336: $9d
    db $ec                                        ; $7337: $ec
    and [hl]                                      ; $7338: $a6
    ld b, d                                       ; $7339: $42
    inc d                                         ; $733a: $14
    adc d                                         ; $733b: $8a
    call Call_018_52a8                            ; $733c: $cd $a8 $52
    inc [hl]                                      ; $733f: $34
    ld d, a                                       ; $7340: $57
    xor h                                         ; $7341: $ac
    cp e                                          ; $7342: $bb
    sbc b                                         ; $7343: $98
    ld d, h                                       ; $7344: $54
    ld b, l                                       ; $7345: $45
    ld d, a                                       ; $7346: $57
    sbc h                                         ; $7347: $9c
    call c, Call_018_4595                         ; $7348: $dc $95 $45
    adc c                                         ; $734b: $89
    adc b                                         ; $734c: $88
    add a                                         ; $734d: $87
    ld h, [hl]                                    ; $734e: $66
    adc d                                         ; $734f: $8a
    xor b                                         ; $7350: $a8
    ld h, h                                       ; $7351: $64
    dec [hl]                                      ; $7352: $35
    adc c                                         ; $7353: $89
    xor h                                         ; $7354: $ac
    and a                                         ; $7355: $a7
    ld d, e                                       ; $7356: $53
    inc [hl]                                      ; $7357: $34
    ld a, e                                       ; $7358: $7b
    rst $38                                       ; $7359: $ff
    xor b                                         ; $735a: $a8
    ld d, l                                       ; $735b: $55
    ld [hl-], a                                   ; $735c: $32
    ld b, a                                       ; $735d: $47
    sbc d                                         ; $735e: $9a
    cp d                                          ; $735f: $ba
    xor c                                         ; $7360: $a9
    ld h, l                                       ; $7361: $65
    ld d, h                                       ; $7362: $54
    scf                                           ; $7363: $37
    cp [hl]                                       ; $7364: $be
    ld [$1361], a                                 ; $7365: $ea $61 $13
    ld a, d                                       ; $7368: $7a
    sbc $c8                                       ; $7369: $de $c8
    ld hl, $9b46                                  ; $736b: $21 $46 $9b
    xor $96                                       ; $736e: $ee $96
    ld d, l                                       ; $7370: $55
    ld h, l                                       ; $7371: $65
    ld a, e                                       ; $7372: $7b
    or a                                          ; $7373: $b7
    ld b, [hl]                                    ; $7374: $46
    adc b                                         ; $7375: $88
    halt                                          ; $7376: $76
    add a                                         ; $7377: $87
    ld l, b                                       ; $7378: $68
    sbc d                                         ; $7379: $9a
    and a                                         ; $737a: $a7
    ld e, b                                       ; $737b: $58
    ld [hl], l                                    ; $737c: $75
    dec [hl]                                      ; $737d: $35
    adc d                                         ; $737e: $8a
    sbc b                                         ; $737f: $98
    add a                                         ; $7380: $87
    ld d, [hl]                                    ; $7381: $56
    sbc e                                         ; $7382: $9b
    cp d                                          ; $7383: $ba
    sbc b                                         ; $7384: $98
    ld [hl], e                                    ; $7385: $73
    dec d                                         ; $7386: $15
    adc c                                         ; $7387: $89
    xor d                                         ; $7388: $aa
    xor b                                         ; $7389: $a8
    ld d, e                                       ; $738a: $53
    ld e, b                                       ; $738b: $58
    sbc e                                         ; $738c: $9b
    cp e                                          ; $738d: $bb
    and l                                         ; $738e: $a5
    inc hl                                        ; $738f: $23
    scf                                           ; $7390: $37
    sbc d                                         ; $7391: $9a
    jp z, Jump_018_6875                           ; $7392: $ca $75 $68

    xor e                                         ; $7395: $ab
    xor b                                         ; $7396: $a8
    ld d, e                                       ; $7397: $53
    ld d, [hl]                                    ; $7398: $56
    ld a, d                                       ; $7399: $7a
    xor d                                         ; $739a: $aa
    add l                                         ; $739b: $85
    ld l, c                                       ; $739c: $69
    xor e                                         ; $739d: $ab
    xor c                                         ; $739e: $a9
    ld [hl], c                                    ; $739f: $71
    inc b                                         ; $73a0: $04
    ld l, c                                       ; $73a1: $69
    xor d                                         ; $73a2: $aa
    xor c                                         ; $73a3: $a9
    halt                                          ; $73a4: $76
    sbc h                                         ; $73a5: $9c
    cp c                                          ; $73a6: $b9
    ld [hl], h                                    ; $73a7: $74
    ld [bc], a                                    ; $73a8: $02
    ld l, b                                       ; $73a9: $68
    db $db                                        ; $73aa: $db
    add a                                         ; $73ab: $87
    ld d, h                                       ; $73ac: $54
    ld l, c                                       ; $73ad: $69
    call Call_018_50b8                            ; $73ae: $cd $b8 $50
    daa                                           ; $73b1: $27
    sbc h                                         ; $73b2: $9c
    sbc b                                         ; $73b3: $98
    add a                                         ; $73b4: $87
    ld h, a                                       ; $73b5: $67
    xor e                                         ; $73b6: $ab
    jp z, $0561                                   ; $73b7: $ca $61 $05

Call_018_73ba:
    adc l                                         ; $73ba: $8d
    reti                                          ; $73bb: $d9


    ld h, h                                       ; $73bc: $64
    ld b, l                                       ; $73bd: $45
    sbc e                                         ; $73be: $9b
    res 4, [hl]                                   ; $73bf: $cb $a6
    ld bc, $ee69                                  ; $73c1: $01 $69 $ee
    and a                                         ; $73c4: $a7
    ld b, d                                       ; $73c5: $42
    ld h, $9c                                     ; $73c6: $26 $9c
    bit 6, c                                      ; $73c8: $cb $71
    dec d                                         ; $73ca: $15
    adc h                                         ; $73cb: $8c
    db $db                                        ; $73cc: $db
    ld [hl], h                                    ; $73cd: $74
    ld b, l                                       ; $73ce: $45
    ld a, c                                       ; $73cf: $79
    cp h                                          ; $73d0: $bc
    ret                                           ; $73d1: $c9


    ld d, c                                       ; $73d2: $51
    dec h                                         ; $73d3: $25
    sbc e                                         ; $73d4: $9b
    xor b                                         ; $73d5: $a8
    add a                                         ; $73d6: $87
    halt                                          ; $73d7: $76
    adc d                                         ; $73d8: $8a
    cp d                                          ; $73d9: $ba
    add [hl]                                      ; $73da: $86
    ld [hl-], a                                   ; $73db: $32
    ld c, b                                       ; $73dc: $48
    cp d                                          ; $73dd: $ba
    add [hl]                                      ; $73de: $86
    ld h, a                                       ; $73df: $67
    adc b                                         ; $73e0: $88
    sbc d                                         ; $73e1: $9a
    res 0, l                                      ; $73e2: $cb $85
    ld [bc], a                                    ; $73e4: $02
    ld l, b                                       ; $73e5: $68
    cp c                                          ; $73e6: $b9
    ld a, b                                       ; $73e7: $78
    halt                                          ; $73e8: $76
    ld a, c                                       ; $73e9: $79
    call z, Call_018_61a8                         ; $73ea: $cc $a8 $61
    dec b                                         ; $73ed: $05
    ld a, e                                       ; $73ee: $7b
    and [hl]                                      ; $73ef: $a6
    ld h, [hl]                                    ; $73f0: $66
    ld h, a                                       ; $73f1: $67
    cp l                                          ; $73f2: $bd
    ret                                           ; $73f3: $c9


    add h                                         ; $73f4: $84
    ld [bc], a                                    ; $73f5: $02
    ld l, b                                       ; $73f6: $68
    res 2, [hl]                                   ; $73f7: $cb $96
    ld b, e                                       ; $73f9: $43
    ld e, c                                       ; $73fa: $59
    db $dd                                        ; $73fb: $dd
    xor c                                         ; $73fc: $a9
    ld d, c                                       ; $73fd: $51
    ld d, $7b                                     ; $73fe: $16 $7b
    cp d                                          ; $7400: $ba
    sub [hl]                                      ; $7401: $96
    ld d, a                                       ; $7402: $57
    xor e                                         ; $7403: $ab
    cp c                                          ; $7404: $b9
    ld [hl], d                                    ; $7405: $72
    dec d                                         ; $7406: $15
    adc e                                         ; $7407: $8b
    cp c                                          ; $7408: $b9
    halt                                          ; $7409: $76
    ld d, [hl]                                    ; $740a: $56
    xor h                                         ; $740b: $ac
    res 2, h                                      ; $740c: $cb $94
    ld [bc], a                                    ; $740e: $02
    ld l, b                                       ; $740f: $68
    res 5, b                                      ; $7410: $cb $a8
    ld h, h                                       ; $7412: $64
    ld e, b                                       ; $7413: $58
    xor e                                         ; $7414: $ab
    cp c                                          ; $7415: $b9
    ld b, c                                       ; $7416: $41
    ld [hl], $9b                                  ; $7417: $36 $9b
    xor c                                         ; $7419: $a9
    add a                                         ; $741a: $87
    ld [hl], a                                    ; $741b: $77
    sbc c                                         ; $741c: $99
    sbc d                                         ; $741d: $9a
    sub h                                         ; $741e: $94
    inc [hl]                                      ; $741f: $34
    ld e, c                                       ; $7420: $59
    xor d                                         ; $7421: $aa
    sbc c                                         ; $7422: $99
    halt                                          ; $7423: $76
    ld h, a                                       ; $7424: $67
    adc d                                         ; $7425: $8a
    cp c                                          ; $7426: $b9
    ld b, l                                       ; $7427: $45
    ld d, a                                       ; $7428: $57
    add a                                         ; $7429: $87
    adc c                                         ; $742a: $89
    xor d                                         ; $742b: $aa
    sbc d                                         ; $742c: $9a
    sub [hl]                                      ; $742d: $96
    ld b, l                                       ; $742e: $45
    ld b, e                                       ; $742f: $43
    ld l, c                                       ; $7430: $69
    call z, Call_018_43b8                         ; $7431: $cc $b8 $43
    ld b, a                                       ; $7434: $47
    db $dd                                        ; $7435: $dd
    adc b                                         ; $7436: $88
    ld d, e                                       ; $7437: $53
    inc hl                                        ; $7438: $23
    ld a, d                                       ; $7439: $7a
    cp $97                                        ; $743a: $fe $97
    ld b, d                                       ; $743c: $42
    ld [hl], $9a                                  ; $743d: $36 $9a
    xor e                                         ; $743f: $ab
    sub [hl]                                      ; $7440: $96
    ld d, h                                       ; $7441: $54
    ld a, c                                       ; $7442: $79
    add a                                         ; $7443: $87
    ld h, l                                       ; $7444: $65
    ld a, e                                       ; $7445: $7b
    db $eb                                        ; $7446: $eb
    sub [hl]                                      ; $7447: $96
    ld h, h                                       ; $7448: $64
    inc [hl]                                      ; $7449: $34
    ld a, d                                       ; $744a: $7a
    db $fd                                        ; $744b: $fd
    sbc b                                         ; $744c: $98
    ld d, h                                       ; $744d: $54
    dec [hl]                                      ; $744e: $35
    ld a, b                                       ; $744f: $78
    sbc d                                         ; $7450: $9a
    add l                                         ; $7451: $85
    ld a, b                                       ; $7452: $78
    sbc c                                         ; $7453: $99
    halt                                          ; $7454: $76
    ld d, h                                       ; $7455: $54
    ld d, a                                       ; $7456: $57

Jump_018_7457:
    rst $08                                       ; $7457: $cf
    cp b                                          ; $7458: $b8
    ld h, e                                       ; $7459: $63
    inc sp                                        ; $745a: $33
    ld d, a                                       ; $745b: $57
    cp a                                          ; $745c: $bf
    cp b                                          ; $745d: $b8
    ld d, l                                       ; $745e: $55
    ld [hl], l                                    ; $745f: $75
    ld b, [hl]                                    ; $7460: $46
    ld a, c                                       ; $7461: $79
    sub [hl]                                      ; $7462: $96
    ld a, d                                       ; $7463: $7a
    xor b                                         ; $7464: $a8
    ld d, h                                       ; $7465: $54
    ld b, h                                       ; $7466: $44
    ld h, a                                       ; $7467: $67
    sbc [hl]                                      ; $7468: $9e
    jp hl                                         ; $7469: $e9


    add e                                         ; $746a: $83
    inc [hl]                                      ; $746b: $34
    ld d, a                                       ; $746c: $57
    sbc [hl]                                      ; $746d: $9e
    ld [$8686], a                                 ; $746e: $ea $86 $86
    ld b, h                                       ; $7471: $44
    ld h, a                                       ; $7472: $67
    sbc c                                         ; $7473: $99
    ld a, b                                       ; $7474: $78
    xor c                                         ; $7475: $a9
    ld [hl], l                                    ; $7476: $75
    inc [hl]                                      ; $7477: $34
    ld d, [hl]                                    ; $7478: $56
    ld a, c                                       ; $7479: $79
    rst $28                                       ; $747a: $ef
    sbc b                                         ; $747b: $98
    inc [hl]                                      ; $747c: $34
    ld d, h                                       ; $747d: $54
    ld l, b                                       ; $747e: $68
    rst $18                                       ; $747f: $df
    ret                                           ; $7480: $c9


    ld h, a                                       ; $7481: $67
    ld [hl], h                                    ; $7482: $74
    inc [hl]                                      ; $7483: $34
    ld l, b                                       ; $7484: $68
    xor d                                         ; $7485: $aa
    sbc e                                         ; $7486: $9b
    and [hl]                                      ; $7487: $a6
    inc sp                                        ; $7488: $33
    ld b, l                                       ; $7489: $45
    ld l, b                                       ; $748a: $68
    sbc h                                         ; $748b: $9c
    db $fc                                        ; $748c: $fc
    add l                                         ; $748d: $85
    dec h                                         ; $748e: $25
    ld b, l                                       ; $748f: $45
    ld l, d                                       ; $7490: $6a
    rst $18                                       ; $7491: $df
    ret z                                         ; $7492: $c8

    ld [hl], a                                    ; $7493: $77
    ld h, d                                       ; $7494: $62
    inc h                                         ; $7495: $24
    adc e                                         ; $7496: $8b
    jp z, $7499                                   ; $7497: $ca $99 $74

    inc [hl]                                      ; $749a: $34
    ld d, [hl]                                    ; $749b: $56
    ld a, b                                       ; $749c: $78
    xor [hl]                                      ; $749d: $ae
    jp hl                                         ; $749e: $e9


    add e                                         ; $749f: $83
    ld h, h                                       ; $74a0: $64
    ld b, l                                       ; $74a1: $45
    adc e                                         ; $74a2: $8b
    db $fd                                        ; $74a3: $fd
    sbc c                                         ; $74a4: $99
    ld [hl], h                                    ; $74a5: $74
    ld [de], a                                    ; $74a6: $12
    ld l, b                                       ; $74a7: $68

Call_018_74a8:
    call $85a9                                    ; $74a8: $cd $a9 $85
    inc [hl]                                      ; $74ab: $34
    ld d, [hl]                                    ; $74ac: $56
    adc b                                         ; $74ad: $88
    adc b                                         ; $74ae: $88
    rst $08                                       ; $74af: $cf
    xor b                                         ; $74b0: $a8
    ld b, h                                       ; $74b1: $44

jr_018_74b2:
    ld b, h                                       ; $74b2: $44
    ld e, b                                       ; $74b3: $58
    xor a                                         ; $74b4: $af
    reti                                          ; $74b5: $d9


    sub [hl]                                      ; $74b6: $96
    ld [hl-], a                                   ; $74b7: $32
    ld h, $8c                                     ; $74b8: $26 $8c
    jp c, Jump_018_7587                           ; $74ba: $da $87 $75

    ld d, l                                       ; $74bd: $55
    ld d, a                                       ; $74be: $57
    ld h, [hl]                                    ; $74bf: $66
    adc d                                         ; $74c0: $8a
    cp $97                                        ; $74c1: $fe $97
    inc sp                                        ; $74c3: $33
    inc [hl]                                      ; $74c4: $34
    ld l, b                                       ; $74c5: $68
    rst $18                                       ; $74c6: $df
    cp d                                          ; $74c7: $ba
    ld [hl], h                                    ; $74c8: $74
    ld [hl-], a                                   ; $74c9: $32

Call_018_74ca:
    ld b, [hl]                                    ; $74ca: $46
    sbc e                                         ; $74cb: $9b
    cp c                                          ; $74cc: $b9
    adc b                                         ; $74cd: $88
    ld h, a                                       ; $74ce: $67
    add a                                         ; $74cf: $87
    ld h, h                                       ; $74d0: $64
    dec [hl]                                      ; $74d1: $35
    ld a, e                                       ; $74d2: $7b
    db $fd                                        ; $74d3: $fd
    xor b                                         ; $74d4: $a8
    ld b, h                                       ; $74d5: $44
    inc hl                                        ; $74d6: $23
    ld l, c                                       ; $74d7: $69
    db $ed                                        ; $74d8: $ed
    xor c                                         ; $74d9: $a9
    ld [hl], l                                    ; $74da: $75
    ld b, c                                       ; $74db: $41
    scf                                           ; $74dc: $37
    xor e                                         ; $74dd: $ab
    sbc b                                         ; $74de: $98
    sbc d                                         ; $74df: $9a
    add [hl]                                      ; $74e0: $86
    ld b, l                                       ; $74e1: $45
    adc c                                         ; $74e2: $89
    ld [hl], e                                    ; $74e3: $73
    jr c, jr_018_74b2                             ; $74e4: $38 $cc

    sbc c                                         ; $74e6: $99
    adc c                                         ; $74e7: $89
    ld [hl], l                                    ; $74e8: $75
    inc h                                         ; $74e9: $24
    xor e                                         ; $74ea: $ab
    cp c                                          ; $74eb: $b9
    ld h, a                                       ; $74ec: $67
    add [hl]                                      ; $74ed: $86
    ld b, h                                       ; $74ee: $44
    ld a, e                                       ; $74ef: $7b
    ret                                           ; $74f0: $c9


    ld h, [hl]                                    ; $74f1: $66
    adc b                                         ; $74f2: $88
    ld h, l                                       ; $74f3: $65
    ld h, a                                       ; $74f4: $67
    sbc e                                         ; $74f5: $9b
    and a                                         ; $74f6: $a7
    ld h, h                                       ; $74f7: $64
    ld b, a                                       ; $74f8: $47
    ld a, d                                       ; $74f9: $7a
    xor d                                         ; $74fa: $aa
    sbc b                                         ; $74fb: $98
    ld [hl], a                                    ; $74fc: $77
    ld d, h                                       ; $74fd: $54
    ld l, b                                       ; $74fe: $68
    add [hl]                                      ; $74ff: $86
    ld l, c                                       ; $7500: $69
    xor d                                         ; $7501: $aa
    halt                                          ; $7502: $76
    ld [hl], a                                    ; $7503: $77
    ld h, [hl]                                    ; $7504: $66
    ld l, b                                       ; $7505: $68
    sbc b                                         ; $7506: $98
    halt                                          ; $7507: $76
    adc e                                         ; $7508: $8b
    db $eb                                        ; $7509: $eb
    ld h, d                                       ; $750a: $62
    inc h                                         ; $750b: $24
    ld h, a                                       ; $750c: $67
    xor e                                         ; $750d: $ab
    call $30b7                                    ; $750e: $cd $b7 $30
    inc h                                         ; $7511: $24
    ld a, c                                       ; $7512: $79
    adc $eb                                       ; $7513: $ce $eb
    ld [hl], e                                    ; $7515: $73
    inc h                                         ; $7516: $24
    ld d, [hl]                                    ; $7517: $56
    ld a, c                                       ; $7518: $79
    res 2, [hl]                                   ; $7519: $cb $96
    ld d, [hl]                                    ; $751b: $56
    cp [hl]                                       ; $751c: $be
    or [hl]                                       ; $751d: $b6
    db $10                                        ; $751e: $10
    ld d, l                                       ; $751f: $55
    adc d                                         ; $7520: $8a
    rst $28                                       ; $7521: $ef
    ret z                                         ; $7522: $c8

    ld d, b                                       ; $7523: $50
    dec d                                         ; $7524: $15
    ld a, d                                       ; $7525: $7a
    cp h                                          ; $7526: $bc
    db $db                                        ; $7527: $db
    add h                                         ; $7528: $84
    inc hl                                        ; $7529: $23
    ld d, [hl]                                    ; $752a: $56
    ld [hl], a                                    ; $752b: $77
    adc h                                         ; $752c: $8c
    ret                                           ; $752d: $c9


    halt                                          ; $752e: $76
    adc e                                         ; $752f: $8b
    ret                                           ; $7530: $c9


    ld b, b                                       ; $7531: $40
    inc h                                         ; $7532: $24
    ld l, c                                       ; $7533: $69
    rst $18                                       ; $7534: $df
    jp c, Jump_000_1273                           ; $7535: $da $73 $12

    ld b, a                                       ; $7538: $47
    xor h                                         ; $7539: $ac
    db $dd                                        ; $753a: $dd
    or a                                          ; $753b: $b7
    ld sp, $7836                                  ; $753c: $31 $36 $78
    sbc d                                         ; $753f: $9a
    cp e                                          ; $7540: $bb
    add l                                         ; $7541: $85
    ld d, a                                       ; $7542: $57
    xor l                                         ; $7543: $ad
    or l                                          ; $7544: $b5
    nop                                           ; $7545: $00
    ld d, a                                       ; $7546: $57
    cp h                                          ; $7547: $bc
    call c, $30b7                                 ; $7548: $dc $b7 $30
    inc d                                         ; $754b: $14
    adc h                                         ; $754c: $8c
    db $db                                        ; $754d: $db
    xor c                                         ; $754e: $a9
    ld h, l                                       ; $754f: $65
    ld hl, $8a56                                  ; $7550: $21 $56 $8a
    sbc h                                         ; $7553: $9c
    ret                                           ; $7554: $c9


    ld [hl], h                                    ; $7555: $74
    ld b, [hl]                                    ; $7556: $46
    xor l                                         ; $7557: $ad
    and e                                         ; $7558: $a3
    dec h                                         ; $7559: $25
    adc d                                         ; $755a: $8a
    sbc b                                         ; $755b: $98
    xor d                                         ; $755c: $aa
    cp c                                          ; $755d: $b9
    ld d, d                                       ; $755e: $52
    ld b, a                                       ; $755f: $47
    adc c                                         ; $7560: $89
    sbc b                                         ; $7561: $98
    adc b                                         ; $7562: $88
    adc c                                         ; $7563: $89
    ld h, e                                       ; $7564: $63
    ld b, [hl]                                    ; $7565: $46
    adc b                                         ; $7566: $88
    sbc h                                         ; $7567: $9c
    cp b                                          ; $7568: $b8
    ld b, d                                       ; $7569: $42
    ld b, a                                       ; $756a: $47
    cp [hl]                                       ; $756b: $be
    rst $00                                       ; $756c: $c7
    ld [hl-], a                                   ; $756d: $32
    ld b, l                                       ; $756e: $45
    ld a, d                                       ; $756f: $7a
    sbc $b9                                       ; $7570: $de $b9
    ld d, b                                       ; $7572: $50
    inc d                                         ; $7573: $14
    ld a, d                                       ; $7574: $7a
    xor e                                         ; $7575: $ab
    res 0, h                                      ; $7576: $cb $84
    inc hl                                        ; $7578: $23
    ld l, b                                       ; $7579: $68
    sbc b                                         ; $757a: $98
    sbc d                                         ; $757b: $9a
    add [hl]                                      ; $757c: $86
    ld b, h                                       ; $757d: $44
    ld l, e                                       ; $757e: $6b
    db $fd                                        ; $757f: $fd
    add h                                         ; $7580: $84
    inc bc                                        ; $7581: $03
    ld d, a                                       ; $7582: $57
    xor l                                         ; $7583: $ad
    db $ec                                        ; $7584: $ec
    sub a                                         ; $7585: $97
    db $10                                        ; $7586: $10

Jump_018_7587:
    ld b, [hl]                                    ; $7587: $46
    sbc e                                         ; $7588: $9b
    cp h                                          ; $7589: $bc
    cp b                                          ; $758a: $b8
    ld h, e                                       ; $758b: $63
    inc sp                                        ; $758c: $33
    ld b, [hl]                                    ; $758d: $46
    sbc e                                         ; $758e: $9b
    call z, $3485                                 ; $758f: $cc $85 $34
    ld a, e                                       ; $7592: $7b
    ld [$2572], a                                 ; $7593: $ea $72 $25
    ld l, c                                       ; $7596: $69
    adc $da                                       ; $7597: $ce $da
    ld [hl], e                                    ; $7599: $73
    inc de                                        ; $759a: $13
    ld l, c                                       ; $759b: $69
    call z, $86b9                                 ; $759c: $cc $b9 $86
    ld b, e                                       ; $759f: $43
    ld b, [hl]                                    ; $75a0: $46
    ld a, c                                       ; $75a1: $79
    xor e                                         ; $75a2: $ab
    xor b                                         ; $75a3: $a8
    ld d, l                                       ; $75a4: $55
    ld h, [hl]                                    ; $75a5: $66
    ld a, e                                       ; $75a6: $7b
    db $fc                                        ; $75a7: $fc
    ld [hl], h                                    ; $75a8: $74
    inc h                                         ; $75a9: $24

Call_018_75aa:
    ld d, a                                       ; $75aa: $57
    sbc e                                         ; $75ab: $9b
    call z, $31b7                                 ; $75ac: $cc $b7 $31
    ld b, [hl]                                    ; $75af: $46
    adc c                                         ; $75b0: $89
    sbc e                                         ; $75b1: $9b
    ret                                           ; $75b2: $c9


    ld h, h                                       ; $75b3: $64
    ld d, [hl]                                    ; $75b4: $56
    ld d, [hl]                                    ; $75b5: $56
    adc c                                         ; $75b6: $89
    xor c                                         ; $75b7: $a9
    add a                                         ; $75b8: $87

Call_018_75b9:
    ld h, [hl]                                    ; $75b9: $66
    adc h                                         ; $75ba: $8c
    jp hl                                         ; $75bb: $e9


    ld b, c                                       ; $75bc: $41
    ld b, [hl]                                    ; $75bd: $46
    ld a, c                                       ; $75be: $79
    cp l                                          ; $75bf: $bd
    res 0, h                                      ; $75c0: $cb $84
    ld [bc], a                                    ; $75c2: $02
    ld d, a                                       ; $75c3: $57
    xor d                                         ; $75c4: $aa
    cp h                                          ; $75c5: $bc
    cp b                                          ; $75c6: $b8
    ld d, h                                       ; $75c7: $54
    ld b, e                                       ; $75c8: $43
    ld b, l                                       ; $75c9: $45
    sbc l                                         ; $75ca: $9d
    jp c, Jump_018_4585                           ; $75cb: $da $85 $45

    ld a, e                                       ; $75ce: $7b
    reti                                          ; $75cf: $d9


    ld b, d                                       ; $75d0: $42
    ld d, a                                       ; $75d1: $57
    adc c                                         ; $75d2: $89
    cp h                                          ; $75d3: $bc
    cp c                                          ; $75d4: $b9
    ld d, c                                       ; $75d5: $51
    inc h                                         ; $75d6: $24
    ld a, d                                       ; $75d7: $7a
    cp d                                          ; $75d8: $ba
    xor e                                         ; $75d9: $ab
    and [hl]                                      ; $75da: $a6
    inc sp                                        ; $75db: $33
    ld b, l                                       ; $75dc: $45
    ld a, c                                       ; $75dd: $79
    cp h                                          ; $75de: $bc
    cp c                                          ; $75df: $b9
    add h                                         ; $75e0: $84
    inc [hl]                                      ; $75e1: $34
    ld l, e                                       ; $75e2: $6b
    db $fc                                        ; $75e3: $fc
    ld [hl], h                                    ; $75e4: $74
    dec [hl]                                      ; $75e5: $35
    ld d, [hl]                                    ; $75e6: $56
    sbc e                                         ; $75e7: $9b
    call c, $1296                                 ; $75e8: $dc $96 $12
    ld d, a                                       ; $75eb: $57
    sbc d                                         ; $75ec: $9a
    cp l                                          ; $75ed: $bd
    or [hl]                                       ; $75ee: $b6
    ld b, h                                       ; $75ef: $44
    ld h, l                                       ; $75f0: $65
    ld h, a                                       ; $75f1: $67
    sbc d                                         ; $75f2: $9a
    cp c                                          ; $75f3: $b9
    ld h, h                                       ; $75f4: $64
    ld b, [hl]                                    ; $75f5: $46
    cp a                                          ; $75f6: $bf
    rst $00                                       ; $75f7: $c7
    ld sp, $8a56                                  ; $75f8: $31 $56 $8a
    call Call_018_61b9                            ; $75fb: $cd $b9 $61
    dec d                                         ; $75fe: $15
    ld l, d                                       ; $75ff: $6a
    cp d                                          ; $7600: $ba
    cp d                                          ; $7601: $ba
    add [hl]                                      ; $7602: $86
    inc [hl]                                      ; $7603: $34
    ld d, [hl]                                    ; $7604: $56
    ld h, [hl]                                    ; $7605: $66
    adc h                                         ; $7606: $8c
    ret                                           ; $7607: $c9


    ld h, e                                       ; $7608: $63
    ld b, a                                       ; $7609: $47
    cp l                                          ; $760a: $bd
    sub h                                         ; $760b: $94
    inc h                                         ; $760c: $24
    ld a, b                                       ; $760d: $78
    sbc d                                         ; $760e: $9a
    cp h                                          ; $760f: $bc
    and a                                         ; $7610: $a7
    jr nz, @+$38                                  ; $7611: $20 $36

    xor h                                         ; $7613: $ac
    xor d                                         ; $7614: $aa
    cp c                                          ; $7615: $b9
    ld h, e                                       ; $7616: $63
    dec [hl]                                      ; $7617: $35
    ld [hl], a                                    ; $7618: $77
    ld h, a                                       ; $7619: $67
    sbc h                                         ; $761a: $9c
    cp b                                          ; $761b: $b8
    ld h, l                                       ; $761c: $65
    ld d, [hl]                                    ; $761d: $56
    xor l                                         ; $761e: $ad
    or [hl]                                       ; $761f: $b6
    ld b, l                                       ; $7620: $45
    ld h, [hl]                                    ; $7621: $66
    ld a, b                                       ; $7622: $78
    xor h                                         ; $7623: $ac
    ret                                           ; $7624: $c9


    ld d, d                                       ; $7625: $52
    dec h                                         ; $7626: $25
    adc c                                         ; $7627: $89
    xor e                                         ; $7628: $ab
    res 0, h                                      ; $7629: $cb $84
    inc [hl]                                      ; $762b: $34
    ld h, [hl]                                    ; $762c: $66
    ld [hl], a                                    ; $762d: $77
    sbc e                                         ; $762e: $9b
    jp z, Jump_000_3663                           ; $762f: $ca $63 $36

    cp a                                          ; $7632: $bf
    push bc                                       ; $7633: $c5
    inc sp                                        ; $7634: $33
    halt                                          ; $7635: $76
    ld a, b                                       ; $7636: $78
    adc $c8                                       ; $7637: $ce $c8
    ld d, b                                       ; $7639: $50
    ld h, $7a                                     ; $763a: $26 $7a
    cp e                                          ; $763c: $bb
    bit 6, e                                      ; $763d: $cb $73
    ld [hl], $66                                  ; $763f: $36 $66
    ld d, a                                       ; $7641: $57
    xor h                                         ; $7642: $ac
    cp b                                          ; $7643: $b8
    ld b, h                                       ; $7644: $44
    adc h                                         ; $7645: $8c
    reti                                          ; $7646: $d9


    ld sp, $8a46                                  ; $7647: $31 $46 $8a
    cp l                                          ; $764a: $bd
    ret                                           ; $764b: $c9


    ld [hl], d                                    ; $764c: $72
    inc bc                                        ; $764d: $03
    ld d, a                                       ; $764e: $57
    call $98cb                                    ; $764f: $cd $cb $98
    ld b, c                                       ; $7652: $41
    inc [hl]                                      ; $7653: $34
    ld d, a                                       ; $7654: $57
    adc e                                         ; $7655: $8b
    call c, Call_000_3596                         ; $7656: $dc $96 $35
    ld a, d                                       ; $7659: $7a
    cp c                                          ; $765a: $b9
    ld h, [hl]                                    ; $765b: $66
    ld a, b                                       ; $765c: $78
    adc b                                         ; $765d: $88
    sbc e                                         ; $765e: $9b
    xor c                                         ; $765f: $a9
    ld d, e                                       ; $7660: $53
    inc [hl]                                      ; $7661: $34
    ld a, d                                       ; $7662: $7a
    cp e                                          ; $7663: $bb
    cp c                                          ; $7664: $b9
    add [hl]                                      ; $7665: $86
    inc [hl]                                      ; $7666: $34
    ld d, a                                       ; $7667: $57
    adc b                                         ; $7668: $88
    adc d                                         ; $7669: $8a
    xor c                                         ; $766a: $a9
    ld [hl], h                                    ; $766b: $74
    ld b, a                                       ; $766c: $47
    cp h                                          ; $766d: $bc
    sub [hl]                                      ; $766e: $96
    ld b, l                                       ; $766f: $45
    ld h, a                                       ; $7670: $67
    adc c                                         ; $7671: $89
    call z, Call_000_30a8                         ; $7672: $cc $a8 $30
    ld b, l                                       ; $7675: $45
    ld a, d                                       ; $7676: $7a
    cp h                                          ; $7677: $bc
    cp c                                          ; $7678: $b9
    ld [hl], e                                    ; $7679: $73
    dec [hl]                                      ; $767a: $35
    ld h, a                                       ; $767b: $67
    ld a, b                                       ; $767c: $78
    sbc b                                         ; $767d: $98
    adc b                                         ; $767e: $88
    add a                                         ; $767f: $87
    sbc h                                         ; $7680: $9c
    or [hl]                                       ; $7681: $b6
    ld [de], a                                    ; $7682: $12
    ld d, a                                       ; $7683: $57
    sbc h                                         ; $7684: $9c
    call c, Call_018_61a9                         ; $7685: $dc $a9 $61
    inc b                                         ; $7688: $04
    ld h, a                                       ; $7689: $67
    xor h                                         ; $768a: $ac
    db $db                                        ; $768b: $db
    sub a                                         ; $768c: $97
    ld b, e                                       ; $768d: $43
    ld d, l                                       ; $768e: $55
    ld l, b                                       ; $768f: $68
    adc d                                         ; $7690: $8a
    xor d                                         ; $7691: $aa
    sub a                                         ; $7692: $97
    ld d, a                                       ; $7693: $57
    xor e                                         ; $7694: $ab
    add h                                         ; $7695: $84
    dec [hl]                                      ; $7696: $35
    ld a, c                                       ; $7697: $79

Jump_018_7698:
    cp h                                          ; $7698: $bc
    res 2, a                                      ; $7699: $cb $97
    jr nc, jr_018_76d2                            ; $769b: $30 $35

    ld a, d                                       ; $769d: $7a
    call Call_018_63b9                            ; $769e: $cd $b9 $63
    dec h                                         ; $76a1: $25
    ld h, a                                       ; $76a2: $67
    sbc c                                         ; $76a3: $99
    xor c                                         ; $76a4: $a9
    adc b                                         ; $76a5: $88
    halt                                          ; $76a6: $76
    ld a, c                                       ; $76a7: $79
    jp z, Jump_000_3653                           ; $76a8: $ca $53 $36

    adc c                                         ; $76ab: $89
    cp h                                          ; $76ac: $bc
    res 2, l                                      ; $76ad: $cb $95
    db $10                                        ; $76af: $10
    ld [hl], $8b                                  ; $76b0: $36 $8b
    call z, Call_018_53b8                         ; $76b2: $cc $b8 $53
    dec h                                         ; $76b5: $25
    ld a, b                                       ; $76b6: $78
    xor d                                         ; $76b7: $aa
    xor d                                         ; $76b8: $aa

Call_018_76b9:
    ld h, l                                       ; $76b9: $65
    ld h, [hl]                                    ; $76ba: $66
    adc h                                         ; $76bb: $8c
    ret z                                         ; $76bc: $c8

    ld d, d                                       ; $76bd: $52
    ld d, [hl]                                    ; $76be: $56
    ld a, c                                       ; $76bf: $79
    cp l                                          ; $76c0: $bd
    jp c, $0184                                   ; $76c1: $da $84 $01

    ld b, [hl]                                    ; $76c4: $46
    sbc d                                         ; $76c5: $9a
    cp l                                          ; $76c6: $bd
    ret z                                         ; $76c7: $c8

    ld d, d                                       ; $76c8: $52

Call_018_76c9:
    dec [hl]                                      ; $76c9: $35

Call_018_76ca:
    ld l, b                                       ; $76ca: $68
    xor d                                         ; $76cb: $aa
    xor d                                         ; $76cc: $aa
    sbc b                                         ; $76cd: $98
    ld d, e                                       ; $76ce: $53
    scf                                           ; $76cf: $37
    adc $95                                       ; $76d0: $ce $95

jr_018_76d2:
    ld b, [hl]                                    ; $76d2: $46
    ld h, a                                       ; $76d3: $67
    adc c                                         ; $76d4: $89
    call z, $20b7                                 ; $76d5: $cc $b7 $20
    ld b, [hl]                                    ; $76d8: $46
    adc e                                         ; $76d9: $8b
    call Call_000_32c8                            ; $76da: $cd $c8 $32
    ld d, [hl]                                    ; $76dd: $56
    ld a, b                                       ; $76de: $78
    sbc d                                         ; $76df: $9a
    xor c                                         ; $76e0: $a9
    add [hl]                                      ; $76e1: $86
    ld d, [hl]                                    ; $76e2: $56
    sbc e                                         ; $76e3: $9b
    or a                                          ; $76e4: $b7
    ld b, h                                       ; $76e5: $44
    ld d, a                                       ; $76e6: $57
    sbc d                                         ; $76e7: $9a
    cp h                                          ; $76e8: $bc
    jp z, Jump_000_0362                           ; $76e9: $ca $62 $03

    ld d, a                                       ; $76ec: $57
    xor e                                         ; $76ed: $ab
    call c, Call_018_43a6                         ; $76ee: $dc $a6 $43
    inc [hl]                                      ; $76f1: $34
    ld a, c                                       ; $76f2: $79
    res 7, d                                      ; $76f3: $cb $ba
    add h                                         ; $76f5: $84
    inc hl                                        ; $76f6: $23
    ld l, d                                       ; $76f7: $6a
    jp z, $8788                                   ; $76f8: $ca $88 $87

    ld h, [hl]                                    ; $76fb: $66
    ld a, b                                       ; $76fc: $78
    xor h                                         ; $76fd: $ac
    reti                                          ; $76fe: $d9


    ld b, e                                       ; $76ff: $43
    inc sp                                        ; $7700: $33
    ld d, a                                       ; $7701: $57
    xor l                                         ; $7702: $ad
    db $ec                                        ; $7703: $ec
    add l                                         ; $7704: $85
    ld [hl-], a                                   ; $7705: $32
    dec [hl]                                      ; $7706: $35
    adc e                                         ; $7707: $8b
    call Call_018_42b8                            ; $7708: $cd $b8 $42
    ld b, l                                       ; $770b: $45
    ld e, d                                       ; $770c: $5a
    xor c                                         ; $770d: $a9
    xor b                                         ; $770e: $a8
    add [hl]                                      ; $770f: $86
    ld b, [hl]                                    ; $7710: $46
    adc b                                         ; $7711: $88
    xor h                                         ; $7712: $ac
    add sp, $32                                   ; $7713: $e8 $32
    inc h                                         ; $7715: $24
    ld a, c                                       ; $7716: $79
    rst $08                                       ; $7717: $cf
    reti                                          ; $7718: $d9


    ld [hl], l                                    ; $7719: $75
    ld hl, $bd47                                  ; $771a: $21 $47 $bd
    jp z, Jump_018_6775                           ; $771d: $ca $75 $67

    ld d, h                                       ; $7720: $54
    ld h, a                                       ; $7721: $67
    adc b                                         ; $7722: $88
    adc b                                         ; $7723: $88
    adc c                                         ; $7724: $89
    cp e                                          ; $7725: $bb
    sbc b                                         ; $7726: $98
    halt                                          ; $7727: $76
    ld b, d                                       ; $7728: $42
    ld [hl], $8b                                  ; $7729: $36 $8b
    db $dd                                        ; $772b: $dd
    or a                                          ; $772c: $b7
    ld d, h                                       ; $772d: $54
    ld b, e                                       ; $772e: $43
    ld e, b                                       ; $772f: $58
    xor e                                         ; $7730: $ab
    xor d                                         ; $7731: $aa
    sbc c                                         ; $7732: $99
    add [hl]                                      ; $7733: $86
    ld sp, $8c15                                  ; $7734: $31 $15 $8c
    db $db                                        ; $7737: $db
    cp c                                          ; $7738: $b9
    ld h, h                                       ; $7739: $64
    inc sp                                        ; $773a: $33
    ld l, h                                       ; $773b: $6c
    ei                                            ; $773c: $fb
    ld h, e                                       ; $773d: $63
    inc [hl]                                      ; $773e: $34
    ld e, b                                       ; $773f: $58
    xor h                                         ; $7740: $ac
    db $dd                                        ; $7741: $dd
    and h                                         ; $7742: $a4
    ld [de], a                                    ; $7743: $12
    ld d, a                                       ; $7744: $57
    adc c                                         ; $7745: $89
    cp [hl]                                       ; $7746: $be
    reti                                          ; $7747: $d9


    jr nc, jr_018_775e                            ; $7748: $30 $14

    ld l, c                                       ; $774a: $69
    cp e                                          ; $774b: $bb
    res 2, a                                      ; $774c: $cb $97
    ld b, c                                       ; $774e: $41
    add hl, sp                                    ; $774f: $39
    rst $38                                       ; $7750: $ff
    ld [hl], e                                    ; $7751: $73
    ld [hl], $57                                  ; $7752: $36 $57
    adc d                                         ; $7754: $8a
    call Call_000_30c8                            ; $7755: $cd $c8 $30
    scf                                           ; $7758: $37
    sbc c                                         ; $7759: $99
    adc c                                         ; $775a: $89
    call Call_000_2295                            ; $775b: $cd $95 $22

jr_018_775e:
    ld b, l                                       ; $775e: $45
    ld a, b                                       ; $775f: $78
    cp [hl]                                       ; $7760: $be
    ei                                            ; $7761: $fb
    add d                                         ; $7762: $82
    inc bc                                        ; $7763: $03
    ld e, c                                       ; $7764: $59
    db $dd                                        ; $7765: $dd
    xor b                                         ; $7766: $a8
    ld h, [hl]                                    ; $7767: $66
    ld b, l                                       ; $7768: $45
    ld l, c                                       ; $7769: $69
    sbc d                                         ; $776a: $9a
    xor c                                         ; $776b: $a9
    ld h, h                                       ; $776c: $64
    ld b, [hl]                                    ; $776d: $46
    adc c                                         ; $776e: $89
    xor d                                         ; $776f: $aa
    sub a                                         ; $7770: $97
    ld h, [hl]                                    ; $7771: $66
    halt                                          ; $7772: $76
    ld b, [hl]                                    ; $7773: $46
    sbc e                                         ; $7774: $9b
    jp c, Jump_018_4488                           ; $7775: $da $88 $44

    ld d, h                                       ; $7778: $54
    ld e, c                                       ; $7779: $59
    sbc $a8                                       ; $777a: $de $a8
    ld h, h                                       ; $777c: $64
    ld b, h                                       ; $777d: $44
    ld [hl], a                                    ; $777e: $77
    sbc h                                         ; $777f: $9c
    db $eb                                        ; $7780: $eb
    ld [hl], e                                    ; $7781: $73
    inc de                                        ; $7782: $13
    ld d, a                                       ; $7783: $57
    sbc h                                         ; $7784: $9c
    res 4, a                                      ; $7785: $cb $a7

Jump_018_7787:
    ld [hl+], a                                   ; $7787: $22
    ld [hl], $9b                                  ; $7788: $36 $9b
    res 0, a                                      ; $778a: $cb $87
    ld d, l                                       ; $778c: $55
    ld b, h                                       ; $778d: $44
    ld a, d                                       ; $778e: $7a
    cp $87                                        ; $778f: $fe $87
    inc [hl]                                      ; $7791: $34
    ld b, [hl]                                    ; $7792: $46
    adc e                                         ; $7793: $8b
    db $dd                                        ; $7794: $dd
    cp b                                          ; $7795: $b8
    ld b, b                                       ; $7796: $40
    dec h                                         ; $7797: $25
    ld a, e                                       ; $7798: $7b
    db $dd                                        ; $7799: $dd
    cp b                                          ; $779a: $b8
    ld d, h                                       ; $779b: $54
    inc sp                                        ; $779c: $33
    ld e, b                                       ; $779d: $58
    cp h                                          ; $779e: $bc
    xor c                                         ; $779f: $a9
    adc b                                         ; $77a0: $88
    ld d, h                                       ; $77a1: $54
    ld d, l                                       ; $77a2: $55
    ld a, c                                       ; $77a3: $79
    call Call_018_4596                            ; $77a4: $cd $96 $45
    ld a, b                                       ; $77a7: $78
    adc c                                         ; $77a8: $89
    sbc c                                         ; $77a9: $99
    add a                                         ; $77aa: $87
    ld d, h                                       ; $77ab: $54
    ld b, a                                       ; $77ac: $47
    xor h                                         ; $77ad: $ac
    xor b                                         ; $77ae: $a8
    ld [hl], a                                    ; $77af: $77
    add [hl]                                      ; $77b0: $86
    ld b, l                                       ; $77b1: $45
    sbc c                                         ; $77b2: $99
    sbc d                                         ; $77b3: $9a
    xor c                                         ; $77b4: $a9
    ld h, h                                       ; $77b5: $64
    ld d, [hl]                                    ; $77b6: $56
    ld h, [hl]                                    ; $77b7: $66
    sbc e                                         ; $77b8: $9b
    adc $b4                                       ; $77b9: $ce $b4
    ld sp, $ac47                                  ; $77bb: $31 $47 $ac
    cp e                                          ; $77be: $bb
    xor b                                         ; $77bf: $a8
    ld sp, $8c14                                  ; $77c0: $31 $14 $8c
    db $db                                        ; $77c3: $db
    sub a                                         ; $77c4: $97
    ld d, [hl]                                    ; $77c5: $56
    ld h, h                                       ; $77c6: $64
    ld l, b                                       ; $77c7: $68
    sbc d                                         ; $77c8: $9a
    xor c                                         ; $77c9: $a9
    ld h, h                                       ; $77ca: $64
    ld h, a                                       ; $77cb: $67
    ld h, a                                       ; $77cc: $67
    adc c                                         ; $77cd: $89
    rst $08                                       ; $77ce: $cf
    push bc                                       ; $77cf: $c5
    ld hl, $bc37                                  ; $77d0: $21 $37 $bc
    res 4, a                                      ; $77d3: $cb $a7
    jr nc, jr_018_77dc                            ; $77d5: $30 $05

    xor h                                         ; $77d7: $ac
    db $db                                        ; $77d8: $db
    add [hl]                                      ; $77d9: $86
    halt                                          ; $77da: $76
    ld d, l                                       ; $77db: $55

jr_018_77dc:
    ld h, a                                       ; $77dc: $67
    adc e                                         ; $77dd: $8b
    cp b                                          ; $77de: $b8
    ld h, l                                       ; $77df: $65
    add [hl]                                      ; $77e0: $86
    ld h, [hl]                                    ; $77e1: $66
    sbc c                                         ; $77e2: $99
    cp d                                          ; $77e3: $ba
    xor b                                         ; $77e4: $a8
    ld d, h                                       ; $77e5: $54
    ld h, a                                       ; $77e6: $67
    sbc d                                         ; $77e7: $9a
    xor c                                         ; $77e8: $a9
    ld h, l                                       ; $77e9: $65
    ld d, [hl]                                    ; $77ea: $56
    ld a, b                                       ; $77eb: $78
    halt                                          ; $77ec: $76
    ld a, b                                       ; $77ed: $78
    xor d                                         ; $77ee: $aa
    xor c                                         ; $77ef: $a9
    add [hl]                                      ; $77f0: $86
    inc [hl]                                      ; $77f1: $34
    ld a, d                                       ; $77f2: $7a
    cp c                                          ; $77f3: $b9
    adc b                                         ; $77f4: $88
    ld h, e                                       ; $77f5: $63
    ld c, b                                       ; $77f6: $48
    sbc b                                         ; $77f7: $98
    ld a, e                                       ; $77f8: $7b
    jp hl                                         ; $77f9: $e9


    ld d, l                                       ; $77fa: $55
    halt                                          ; $77fb: $76
    ld d, a                                       ; $77fc: $57
    adc b                                         ; $77fd: $88
    adc b                                         ; $77fe: $88
    cp d                                          ; $77ff: $ba
    ld h, l                                       ; $7800: $65
    ld d, [hl]                                    ; $7801: $56
    ld h, a                                       ; $7802: $67
    adc d                                         ; $7803: $8a
    cp e                                          ; $7804: $bb
    cp c                                          ; $7805: $b9
    ld d, e                                       ; $7806: $53
    ld b, h                                       ; $7807: $44
    ld l, b                                       ; $7808: $68
    xor d                                         ; $7809: $aa
    add a                                         ; $780a: $87
    adc b                                         ; $780b: $88
    ld d, e                                       ; $780c: $53
    ld b, a                                       ; $780d: $47
    cp a                                          ; $780e: $bf
    cp b                                          ; $780f: $b8
    add h                                         ; $7810: $84
    inc [hl]                                      ; $7811: $34
    ld d, [hl]                                    ; $7812: $56
    ld a, d                                       ; $7813: $7a
    db $ed                                        ; $7814: $ed
    sub l                                         ; $7815: $95
    inc hl                                        ; $7816: $23
    ld b, [hl]                                    ; $7817: $46
    adc e                                         ; $7818: $8b
    db $dd                                        ; $7819: $dd
    cp c                                          ; $781a: $b9
    ld [hl], c                                    ; $781b: $71
    inc b                                         ; $781c: $04
    ld e, c                                       ; $781d: $59
    cp e                                          ; $781e: $bb
    xor b                                         ; $781f: $a8
    add a                                         ; $7820: $87
    ld h, [hl]                                    ; $7821: $66
    ld h, a                                       ; $7822: $67
    adc d                                         ; $7823: $8a
    ret                                           ; $7824: $c9


    ld d, h                                       ; $7825: $54
    ld d, [hl]                                    ; $7826: $56
    adc b                                         ; $7827: $88
    sbc c                                         ; $7828: $99
    sbc c                                         ; $7829: $99
    ld h, e                                       ; $782a: $63
    inc [hl]                                      ; $782b: $34
    ld a, e                                       ; $782c: $7b
    call c, Call_018_55a7                         ; $782d: $dc $a7 $55
    ld d, l                                       ; $7830: $55
    inc [hl]                                      ; $7831: $34
    sbc h                                         ; $7832: $9c
    ret                                           ; $7833: $c9


    sbc b                                         ; $7834: $98
    ld h, l                                       ; $7835: $65
    ld d, h                                       ; $7836: $54
    ld d, a                                       ; $7837: $57
    sbc l                                         ; $7838: $9d
    db $ed                                        ; $7839: $ed
    sub h                                         ; $783a: $94
    inc [hl]                                      ; $783b: $34
    inc hl                                        ; $783c: $23
    ld l, e                                       ; $783d: $6b
    xor $b7                                       ; $783e: $ee $b7
    ld [hl-], a                                   ; $7840: $32
    ld b, [hl]                                    ; $7841: $46
    ld a, b                                       ; $7842: $78
    sbc e                                         ; $7843: $9b
    res 2, a                                      ; $7844: $cb $97
    ld b, e                                       ; $7846: $43
    ld b, l                                       ; $7847: $45
    ld a, d                                       ; $7848: $7a
    xor d                                         ; $7849: $aa
    ret                                           ; $784a: $c9


    ld h, l                                       ; $784b: $65
    ld d, b                                       ; $784c: $50
    ld e, c                                       ; $784d: $59
    xor [hl]                                      ; $784e: $ae
    db $eb                                        ; $784f: $eb
    add h                                         ; $7850: $84
    inc d                                         ; $7851: $14
    ld b, l                                       ; $7852: $45
    adc d                                         ; $7853: $8a
    adc $a6                                       ; $7854: $ce $a6
    ld d, e                                       ; $7856: $53
    dec [hl]                                      ; $7857: $35
    ld l, b                                       ; $7858: $68
    xor h                                         ; $7859: $ac
    db $db                                        ; $785a: $db
    sub [hl]                                      ; $785b: $96
    ld [hl+], a                                   ; $785c: $22
    dec [hl]                                      ; $785d: $35
    ld a, d                                       ; $785e: $7a
    call z, Call_018_74a8                         ; $785f: $cc $a8 $74
    inc hl                                        ; $7862: $23
    ld a, e                                       ; $7863: $7b
    db $ec                                        ; $7864: $ec
    sub l                                         ; $7865: $95
    dec [hl]                                      ; $7866: $35
    ld d, [hl]                                    ; $7867: $56
    ld a, b                                       ; $7868: $78
    cp [hl]                                       ; $7869: $be
    add sp, $21                                   ; $786a: $e8 $21
    inc [hl]                                      ; $786c: $34
    ld l, c                                       ; $786d: $69
    call $83dc                                    ; $786e: $cd $dc $83
    ld bc, $9c36                                  ; $7871: $01 $36 $9c
    db $ec                                        ; $7874: $ec
    xor b                                         ; $7875: $a8
    ld h, e                                       ; $7876: $63
    inc hl                                        ; $7877: $23
    ld d, a                                       ; $7878: $57
    rst $08                                       ; $7879: $cf
    ret c                                         ; $787a: $d8

    ld b, d                                       ; $787b: $42
    dec [hl]                                      ; $787c: $35
    ld l, b                                       ; $787d: $68
    sbc e                                         ; $787e: $9b
    db $ed                                        ; $787f: $ed
    sub h                                         ; $7880: $94
    ld [de], a                                    ; $7881: $12
    ld c, b                                       ; $7882: $48
    call Call_018_76ca                            ; $7883: $cd $ca $76
    ld b, e                                       ; $7886: $43

Jump_018_7887:
    dec [hl]                                      ; $7887: $35
    ld a, d                                       ; $7888: $7a
    call z, Call_018_65a8                         ; $7889: $cc $a8 $65
    ld h, [hl]                                    ; $788c: $66
    ld h, h                                       ; $788d: $64
    ld a, d                                       ; $788e: $7a
    res 2, a                                      ; $788f: $cb $97
    ld h, [hl]                                    ; $7891: $66
    ld b, [hl]                                    ; $7892: $46
    halt                                          ; $7893: $76
    ld a, c                                       ; $7894: $79
    cp l                                          ; $7895: $bd
    sbc b                                         ; $7896: $98
    halt                                          ; $7897: $76
    ld b, l                                       ; $7898: $45
    ld h, [hl]                                    ; $7899: $66
    ld a, c                                       ; $789a: $79
    cp e                                          ; $789b: $bb
    and a                                         ; $789c: $a7
    ld d, h                                       ; $789d: $54
    ld b, l                                       ; $789e: $45
    ld l, c                                       ; $789f: $69
    cp h                                          ; $78a0: $bc
    cp b                                          ; $78a1: $b8
    ld [hl], l                                    ; $78a2: $75
    ld [hl-], a                                   ; $78a3: $32
    ld d, a                                       ; $78a4: $57
    xor e                                         ; $78a5: $ab
    cp e                                          ; $78a6: $bb
    ld [hl], h                                    ; $78a7: $74
    ld b, [hl]                                    ; $78a8: $46
    ld h, [hl]                                    ; $78a9: $66
    ld a, c                                       ; $78aa: $79
    rst $28                                       ; $78ab: $ef
    xor b                                         ; $78ac: $a8
    ld d, e                                       ; $78ad: $53
    inc h                                         ; $78ae: $24
    ld e, b                                       ; $78af: $58
    xor h                                         ; $78b0: $ac
    db $eb                                        ; $78b1: $eb
    ld [hl], h                                    ; $78b2: $74
    ld [de], a                                    ; $78b3: $12
    ld b, a                                       ; $78b4: $47
    sbc h                                         ; $78b5: $9c
    db $ec                                        ; $78b6: $ec
    sub a                                         ; $78b7: $97
    ld h, l                                       ; $78b8: $65
    ld [hl+], a                                   ; $78b9: $22
    ld a, d                                       ; $78ba: $7a
    cp d                                          ; $78bb: $ba
    sbc c                                         ; $78bc: $99
    ld h, h                                       ; $78bd: $64
    ld h, [hl]                                    ; $78be: $66
    ld h, [hl]                                    ; $78bf: $66
    xor a                                         ; $78c0: $af
    ret c                                         ; $78c1: $d8

    ld b, e                                       ; $78c2: $43
    ld d, l                                       ; $78c3: $55
    ld l, d                                       ; $78c4: $6a
    call z, Call_018_73ba                         ; $78c5: $cc $ba $73
    inc de                                        ; $78c8: $13
    ld l, b                                       ; $78c9: $68
    cp e                                          ; $78ca: $bb
    db $db                                        ; $78cb: $db
    add l                                         ; $78cc: $85
    ld b, l                                       ; $78cd: $45
    ld h, l                                       ; $78ce: $65
    ld e, b                                       ; $78cf: $58
    res 2, a                                      ; $78d0: $cb $97
    ld h, [hl]                                    ; $78d2: $66
    ld h, a                                       ; $78d3: $67
    add a                                         ; $78d4: $87
    ld [hl], a                                    ; $78d5: $77
    adc d                                         ; $78d6: $8a
    xor c                                         ; $78d7: $a9
    sbc b                                         ; $78d8: $98
    ld [hl], l                                    ; $78d9: $75
    ld d, [hl]                                    ; $78da: $56
    ld h, a                                       ; $78db: $67
    adc d                                         ; $78dc: $8a
    xor c                                         ; $78dd: $a9
    add a                                         ; $78de: $87
    ld h, l                                       ; $78df: $65
    ld h, a                                       ; $78e0: $67
    adc c                                         ; $78e1: $89
    sbc c                                         ; $78e2: $99
    sbc d                                         ; $78e3: $9a
    sub h                                         ; $78e4: $94
    dec h                                         ; $78e5: $25
    adc c                                         ; $78e6: $89
    sbc d                                         ; $78e7: $9a
    xor b                                         ; $78e8: $a8
    ld [hl], a                                    ; $78e9: $77
    ld [hl], e                                    ; $78ea: $73
    dec [hl]                                      ; $78eb: $35
    sbc [hl]                                      ; $78ec: $9e
    ld a, [$3395]                                 ; $78ed: $fa $95 $33
    inc sp                                        ; $78f0: $33
    ld a, c                                       ; $78f1: $79
    xor $b8                                       ; $78f2: $ee $b8
    ld d, c                                       ; $78f4: $51
    inc [hl]                                      ; $78f5: $34
    ld l, b                                       ; $78f6: $68
    xor h                                         ; $78f7: $ac
    res 2, [hl]                                   ; $78f8: $cb $96
    ld b, e                                       ; $78fa: $43
    dec h                                         ; $78fb: $25
    adc d                                         ; $78fc: $8a
    res 5, c                                      ; $78fd: $cb $a9
    ld d, e                                       ; $78ff: $53
    inc [hl]                                      ; $7900: $34
    ld l, b                                       ; $7901: $68
    rst $08                                       ; $7902: $cf
    jp c, Jump_000_2354                           ; $7903: $da $54 $23

    ld e, b                                       ; $7906: $58
    xor l                                         ; $7907: $ad
    db $eb                                        ; $7908: $eb
    add h                                         ; $7909: $84
    inc de                                        ; $790a: $13
    ld d, a                                       ; $790b: $57
    sbc e                                         ; $790c: $9b
    call z, Call_018_53b8                         ; $790d: $cc $b8 $53
    ld b, h                                       ; $7910: $44
    ld b, a                                       ; $7911: $47
    cp h                                          ; $7912: $bc
    cp d                                          ; $7913: $ba
    add l                                         ; $7914: $85
    inc [hl]                                      ; $7915: $34
    ld l, b                                       ; $7916: $68
    sbc b                                         ; $7917: $98
    ld a, c                                       ; $7918: $79
    cp h                                          ; $7919: $bc
    sub a                                         ; $791a: $97
    ld h, h                                       ; $791b: $64
    ld d, [hl]                                    ; $791c: $56
    ld [hl], a                                    ; $791d: $77
    adc c                                         ; $791e: $89
    cp e                                          ; $791f: $bb
    sub [hl]                                      ; $7920: $96
    ld b, e                                       ; $7921: $43

Jump_018_7922:
    ld d, a                                       ; $7922: $57
    adc c                                         ; $7923: $89
    xor e                                         ; $7924: $ab
    xor c                                         ; $7925: $a9
    ld [hl], l                                    ; $7926: $75
    ld d, l                                       ; $7927: $55
    ld b, l                                       ; $7928: $45
    xor l                                         ; $7929: $ad
    cp b                                          ; $792a: $b8
    ld h, l                                       ; $792b: $65
    ld h, l                                       ; $792c: $65
    ld h, [hl]                                    ; $792d: $66
    ld l, c                                       ; $792e: $69
    adc $d7                                       ; $792f: $ce $d7
    ld b, l                                       ; $7931: $45
    dec [hl]                                      ; $7932: $35
    ld h, l                                       ; $7933: $65
    sbc e                                         ; $7934: $9b
    call z, Call_018_6376                         ; $7935: $cc $76 $63
    ld b, l                                       ; $7938: $45
    ld l, c                                       ; $7939: $69
    cp l                                          ; $793a: $bd
    cp b                                          ; $793b: $b8
    ld h, [hl]                                    ; $793c: $66
    ld h, a                                       ; $793d: $67
    ld h, [hl]                                    ; $793e: $66
    ld d, a                                       ; $793f: $57
    xor e                                         ; $7940: $ab
    cp b                                          ; $7941: $b8
    ld d, [hl]                                    ; $7942: $56
    halt                                          ; $7943: $76
    ld h, a                                       ; $7944: $67
    adc c                                         ; $7945: $89
    sbc d                                         ; $7946: $9a
    cp $40                                        ; $7947: $fe $40
    ld e, c                                       ; $7949: $59
    ld b, h                                       ; $794a: $44
    ld a, e                                       ; $794b: $7b
    call Call_000_20d9                            ; $794c: $cd $d9 $20
    dec [hl]                                      ; $794f: $35
    ld l, b                                       ; $7950: $68
    adc $ea                                       ; $7951: $ce $ea
    ld h, h                                       ; $7953: $64
    inc sp                                        ; $7954: $33
    ld d, h                                       ; $7955: $54
    ld c, e                                       ; $7956: $4b
    jp c, $b59b                                   ; $7957: $da $9b $b5

    ld bc, $ac46                                  ; $795a: $01 $46 $ac
    call c, Call_018_65b7                         ; $795d: $dc $b7 $65
    ld sp, $ce37                                  ; $7960: $31 $37 $ce
    db $db                                        ; $7963: $db
    ld h, h                                       ; $7964: $64
    inc [hl]                                      ; $7965: $34
    ld d, [hl]                                    ; $7966: $56
    sbc e                                         ; $7967: $9b
    res 7, b                                      ; $7968: $cb $b8
    ld b, e                                       ; $796a: $43
    dec [hl]                                      ; $796b: $35
    adc d                                         ; $796c: $8a
    add a                                         ; $796d: $87
    xor e                                         ; $796e: $ab
    add l                                         ; $796f: $85
    adc b                                         ; $7970: $88
    ld d, h                                       ; $7971: $54
    sbc b                                         ; $7972: $98
    ld a, c                                       ; $7973: $79
    call z, Call_018_6577                         ; $7974: $cc $77 $65
    ld h, e                                       ; $7977: $63
    ld d, a                                       ; $7978: $57
    sbc h                                         ; $7979: $9c
    cp d                                          ; $797a: $ba
    sub [hl]                                      ; $797b: $96
    ld b, l                                       ; $797c: $45
    ld b, l                                       ; $797d: $45
    ld a, d                                       ; $797e: $7a
    cp e                                          ; $797f: $bb
    cp c                                          ; $7980: $b9
    ld h, h                                       ; $7981: $64
    inc [hl]                                      ; $7982: $34
    ld l, b                                       ; $7983: $68
    sbc e                                         ; $7984: $9b
    jp c, Jump_018_5476                           ; $7985: $da $76 $54

    ld d, [hl]                                    ; $7988: $56
    ld a, b                                       ; $7989: $78
    adc c                                         ; $798a: $89
    xor $52                                       ; $798b: $ee $52
    ld h, [hl]                                    ; $798d: $66
    inc [hl]                                      ; $798e: $34
    ld a, h                                       ; $798f: $7c
    db $ed                                        ; $7990: $ed
    ret z                                         ; $7991: $c8

    inc hl                                        ; $7992: $23
    inc [hl]                                      ; $7993: $34
    ld l, c                                       ; $7994: $69
    call Call_018_65b8                            ; $7995: $cd $b8 $65
    ld b, e                                       ; $7998: $43
    ld l, b                                       ; $7999: $68
    ld l, d                                       ; $799a: $6a
    ei                                            ; $799b: $fb
    ld d, [hl]                                    ; $799c: $56
    ld h, l                                       ; $799d: $65
    ld b, l                                       ; $799e: $45
    adc d                                         ; $799f: $8a
    xor d                                         ; $79a0: $aa
    cp d                                          ; $79a1: $ba
    sub l                                         ; $79a2: $95
    inc sp                                        ; $79a3: $33
    ld d, [hl]                                    ; $79a4: $56
    sbc l                                         ; $79a5: $9d
    db $eb                                        ; $79a6: $eb
    add l                                         ; $79a7: $85
    inc sp                                        ; $79a8: $33
    ld d, [hl]                                    ; $79a9: $56
    adc c                                         ; $79aa: $89
    xor d                                         ; $79ab: $aa
    jp z, Jump_018_5554                           ; $79ac: $ca $54 $55

    ld d, a                                       ; $79af: $57
    xor l                                         ; $79b0: $ad
    cp b                                          ; $79b1: $b8
    add a                                         ; $79b2: $87
    ld d, l                                       ; $79b3: $55
    ld d, [hl]                                    ; $79b4: $56
    ld [hl], a                                    ; $79b5: $77
    sbc e                                         ; $79b6: $9b
    xor b                                         ; $79b7: $a8

Call_018_79b8:
jr_018_79b8:
    ld d, l                                       ; $79b8: $55
    ld a, b                                       ; $79b9: $78
    adc d                                         ; $79ba: $8a
    halt                                          ; $79bb: $76
    ld a, c                                       ; $79bc: $79
    add l                                         ; $79bd: $85
    adc e                                         ; $79be: $8b
    and l                                         ; $79bf: $a5
    ld d, a                                       ; $79c0: $57
    ld h, l                                       ; $79c1: $65
    adc l                                         ; $79c2: $8d
    rst $10                                       ; $79c3: $d7
    ld d, [hl]                                    ; $79c4: $56
    add e                                         ; $79c5: $83
    ld c, b                                       ; $79c6: $48
    db $dd                                        ; $79c7: $dd
    and a                                         ; $79c8: $a7
    ld [hl], h                                    ; $79c9: $74
    inc [hl]                                      ; $79ca: $34
    ld a, c                                       ; $79cb: $79
    xor d                                         ; $79cc: $aa
    cp d                                          ; $79cd: $ba
    ld h, e                                       ; $79ce: $63
    jr c, jr_018_79b8                             ; $79cf: $38 $e7

    ld a, c                                       ; $79d1: $79
    ld d, a                                       ; $79d2: $57
    add a                                         ; $79d3: $87
    adc b                                         ; $79d4: $88
    adc b                                         ; $79d5: $88
    ld h, [hl]                                    ; $79d6: $66
    ld [hl], a                                    ; $79d7: $77
    ld h, a                                       ; $79d8: $67
    adc c                                         ; $79d9: $89
    adc c                                         ; $79da: $89
    ld [hl], a                                    ; $79db: $77
    ld h, [hl]                                    ; $79dc: $66
    ld a, b                                       ; $79dd: $78
    xor d                                         ; $79de: $aa
    add [hl]                                      ; $79df: $86
    add a                                         ; $79e0: $87
    halt                                          ; $79e1: $76
    ld a, b                                       ; $79e2: $78
    adc b                                         ; $79e3: $88
    sbc c                                         ; $79e4: $99
    ld [hl], l                                    ; $79e5: $75
    ld e, c                                       ; $79e6: $59
    cp d                                          ; $79e7: $ba
    add a                                         ; $79e8: $87
    ld h, h                                       ; $79e9: $64
    adc b                                         ; $79ea: $88
    add a                                         ; $79eb: $87
    ld a, c                                       ; $79ec: $79
    and a                                         ; $79ed: $a7
    ld d, [hl]                                    ; $79ee: $56
    ld h, l                                       ; $79ef: $65
    adc l                                         ; $79f0: $8d
    ld hl, sp+$44                                 ; $79f1: $f8 $44
    ld b, a                                       ; $79f3: $47
    ld h, [hl]                                    ; $79f4: $66
    xor h                                         ; $79f5: $ac
    cp h                                          ; $79f6: $bc
    add e                                         ; $79f7: $83
    inc hl                                        ; $79f8: $23
    ld e, c                                       ; $79f9: $59
    sbc d                                         ; $79fa: $9a
    bit 6, [hl]                                   ; $79fb: $cb $76
    ld b, [hl]                                    ; $79fd: $46
    ld l, b                                       ; $79fe: $68
    add a                                         ; $79ff: $87
    add hl, sp                                    ; $7a00: $39
    db $ed                                        ; $7a01: $ed
    ld h, d                                       ; $7a02: $62
    ld a, d                                       ; $7a03: $7a
    ld d, h                                       ; $7a04: $54
    add a                                         ; $7a05: $87
    ld [hl], a                                    ; $7a06: $77
    adc $a5                                       ; $7a07: $ce $a5
    ld d, e                                       ; $7a09: $53
    ld [hl], $8b                                  ; $7a0a: $36 $8b
    reti                                          ; $7a0c: $d9


    ld [hl], a                                    ; $7a0d: $77
    ld h, l                                       ; $7a0e: $65
    inc [hl]                                      ; $7a0f: $34
    adc b                                         ; $7a10: $88
    sbc e                                         ; $7a11: $9b
    ret                                           ; $7a12: $c9


    ld h, l                                       ; $7a13: $65
    ld d, [hl]                                    ; $7a14: $56
    ld a, b                                       ; $7a15: $78
    sbc d                                         ; $7a16: $9a
    and [hl]                                      ; $7a17: $a6
    ld e, b                                       ; $7a18: $58
    sbc b                                         ; $7a19: $98
    ld a, b                                       ; $7a1a: $78
    ld [hl], l                                    ; $7a1b: $75
    ld h, a                                       ; $7a1c: $67
    ld [hl], a                                    ; $7a1d: $77
    xor a                                         ; $7a1e: $af
    rst $10                                       ; $7a1f: $d7
    ld h, h                                       ; $7a20: $64
    inc h                                         ; $7a21: $24
    ld e, c                                       ; $7a22: $59
    call c, Call_018_75aa                         ; $7a23: $dc $aa $75
    ld hl, $bd58                                  ; $7a26: $21 $58 $bd
    ret                                           ; $7a29: $c9


    ld h, h                                       ; $7a2a: $64
    ld h, a                                       ; $7a2b: $67
    ld h, a                                       ; $7a2c: $67
    sbc d                                         ; $7a2d: $9a
    sub [hl]                                      ; $7a2e: $96
    ld e, c                                       ; $7a2f: $59
    and a                                         ; $7a30: $a7
    ld l, b                                       ; $7a31: $68
    add a                                         ; $7a32: $87
    ld d, [hl]                                    ; $7a33: $56
    adc b                                         ; $7a34: $88
    adc h                                         ; $7a35: $8c
    or [hl]                                       ; $7a36: $b6
    halt                                          ; $7a37: $76
    ld d, a                                       ; $7a38: $57
    ld l, c                                       ; $7a39: $69
    xor b                                         ; $7a3a: $a8
    adc c                                         ; $7a3b: $89
    add a                                         ; $7a3c: $87
    ld h, l                                       ; $7a3d: $65
    ld h, a                                       ; $7a3e: $67
    ld a, b                                       ; $7a3f: $78
    sbc c                                         ; $7a40: $99
    sbc c                                         ; $7a41: $99
    sub a                                         ; $7a42: $97
    ld d, [hl]                                    ; $7a43: $56
    ld h, a                                       ; $7a44: $67
    adc c                                         ; $7a45: $89
    sbc b                                         ; $7a46: $98
    cp c                                          ; $7a47: $b9
    ld d, [hl]                                    ; $7a48: $56
    ld h, [hl]                                    ; $7a49: $66
    ld h, [hl]                                    ; $7a4a: $66
    adc b                                         ; $7a4b: $88
    ld [hl], a                                    ; $7a4c: $77
    rst $08                                       ; $7a4d: $cf
    and d                                         ; $7a4e: $a2
    dec h                                         ; $7a4f: $25
    ld d, [hl]                                    ; $7a50: $56
    ld a, c                                       ; $7a51: $79
    call c, Call_018_41ba                         ; $7a52: $dc $ba $41
    inc [hl]                                      ; $7a55: $34
    ld l, c                                       ; $7a56: $69
    xor e                                         ; $7a57: $ab
    cp d                                          ; $7a58: $ba
    halt                                          ; $7a59: $76
    ld d, [hl]                                    ; $7a5a: $56
    ld h, a                                       ; $7a5b: $67
    halt                                          ; $7a5c: $76
    ld l, e                                       ; $7a5d: $6b
    ei                                            ; $7a5e: $fb
    inc sp                                        ; $7a5f: $33
    add [hl]                                      ; $7a60: $86
    ld b, a                                       ; $7a61: $47
    xor c                                         ; $7a62: $a9
    sbc c                                         ; $7a63: $99
    xor d                                         ; $7a64: $aa
    halt                                          ; $7a65: $76
    ld d, e                                       ; $7a66: $53
    ld e, b                                       ; $7a67: $58
    sbc e                                         ; $7a68: $9b
    cp c                                          ; $7a69: $b9
    add l                                         ; $7a6a: $85
    ld d, [hl]                                    ; $7a6b: $56
    ld h, [hl]                                    ; $7a6c: $66
    adc c                                         ; $7a6d: $89

jr_018_7a6e:
    xor d                                         ; $7a6e: $aa
    add a                                         ; $7a6f: $87
    ld h, [hl]                                    ; $7a70: $66
    ld a, b                                       ; $7a71: $78
    sbc b                                         ; $7a72: $98
    adc b                                         ; $7a73: $88
    ld h, h                                       ; $7a74: $64
    ld e, d                                       ; $7a75: $5a
    ret                                           ; $7a76: $c9


    ld h, a                                       ; $7a77: $67
    ld [hl], l                                    ; $7a78: $75
    ld b, l                                       ; $7a79: $45
    ld [hl], a                                    ; $7a7a: $77
    adc e                                         ; $7a7b: $8b
    db $fc                                        ; $7a7c: $fc
    ld d, h                                       ; $7a7d: $54
    inc hl                                        ; $7a7e: $23
    ld l, b                                       ; $7a7f: $68
    sbc e                                         ; $7a80: $9b
    reti                                          ; $7a81: $d9


    halt                                          ; $7a82: $76
    ld [hl], l                                    ; $7a83: $75
    inc sp                                        ; $7a84: $33
    ld a, c                                       ; $7a85: $79
    xor d                                         ; $7a86: $aa
    cp c                                          ; $7a87: $b9
    ld a, b                                       ; $7a88: $78
    and l                                         ; $7a89: $a5
    ld b, l                                       ; $7a8a: $45
    ld e, b                                       ; $7a8b: $58
    xor c                                         ; $7a8c: $a9
    xor d                                         ; $7a8d: $aa
    adc b                                         ; $7a8e: $88
    ld h, e                                       ; $7a8f: $63
    ld b, l                                       ; $7a90: $45
    ld a, c                                       ; $7a91: $79
    xor c                                         ; $7a92: $a9
    xor e                                         ; $7a93: $ab
    halt                                          ; $7a94: $76
    ld d, l                                       ; $7a95: $55
    ld d, [hl]                                    ; $7a96: $56
    adc d                                         ; $7a97: $8a
    cp d                                          ; $7a98: $ba
    adc b                                         ; $7a99: $88
    add l                                         ; $7a9a: $85
    ld b, l                                       ; $7a9b: $45
    ld l, c                                       ; $7a9c: $69
    xor d                                         ; $7a9d: $aa
    and a                                         ; $7a9e: $a7
    ld [hl], $cf                                  ; $7a9f: $36 $cf
    sub d                                         ; $7aa1: $92
    ld [hl+], a                                   ; $7aa2: $22
    ld l, b                                       ; $7aa3: $68
    sbc d                                         ; $7aa4: $9a
    res 2, [hl]                                   ; $7aa5: $cb $96
    ld d, h                                       ; $7aa7: $54
    ld [hl+], a                                   ; $7aa8: $22
    adc e                                         ; $7aa9: $8b
    call Call_018_43d8                            ; $7aaa: $cd $d8 $43
    inc [hl]                                      ; $7aad: $34
    ld l, c                                       ; $7aae: $69
    cp l                                          ; $7aaf: $bd
    or a                                          ; $7ab0: $b7
    ld b, [hl]                                    ; $7ab1: $46
    ld [hl], l                                    ; $7ab2: $75
    ld a, c                                       ; $7ab3: $79
    xor b                                         ; $7ab4: $a8
    ld [hl], a                                    ; $7ab5: $77
    ld [hl], a                                    ; $7ab6: $77
    adc e                                         ; $7ab7: $8b
    or a                                          ; $7ab8: $b7
    ld [hl], l                                    ; $7ab9: $75
    ld h, a                                       ; $7aba: $67
    ld h, a                                       ; $7abb: $67
    sbc d                                         ; $7abc: $9a
    sbc b                                         ; $7abd: $98
    adc b                                         ; $7abe: $88
    ld h, h                                       ; $7abf: $64
    ld d, a                                       ; $7ac0: $57
    adc c                                         ; $7ac1: $89
    sbc c                                         ; $7ac2: $99
    add a                                         ; $7ac3: $87
    ld h, a                                       ; $7ac4: $67
    ld [hl], a                                    ; $7ac5: $77
    ld a, b                                       ; $7ac6: $78
    sbc b                                         ; $7ac7: $98
    ld [hl], a                                    ; $7ac8: $77
    adc b                                         ; $7ac9: $88
    ld h, [hl]                                    ; $7aca: $66
    adc b                                         ; $7acb: $88
    ld [hl], a                                    ; $7acc: $77
    halt                                          ; $7acd: $76
    ld h, a                                       ; $7ace: $67
    cp a                                          ; $7acf: $bf
    add b                                         ; $7ad0: $80
    ld e, c                                       ; $7ad1: $59
    sub l                                         ; $7ad2: $95
    ld c, b                                       ; $7ad3: $48
    res 1, b                                      ; $7ad4: $cb $88
    add [hl]                                      ; $7ad6: $86
    ld b, d                                       ; $7ad7: $42
    ld e, c                                       ; $7ad8: $59
    xor d                                         ; $7ad9: $aa
    xor c                                         ; $7ada: $a9
    add [hl]                                      ; $7adb: $86
    ld h, a                                       ; $7adc: $67
    ld [hl], a                                    ; $7add: $77
    ld a, b                                       ; $7ade: $78
    cp c                                          ; $7adf: $b9
    ld e, b                                       ; $7ae0: $58
    add a                                         ; $7ae1: $87
    ld h, a                                       ; $7ae2: $67
    sub l                                         ; $7ae3: $95
    jr z, jr_018_7a6e                             ; $7ae4: $28 $88

    sbc [hl]                                      ; $7ae6: $9e
    rst $20                                       ; $7ae7: $e7
    ld [hl-], a                                   ; $7ae8: $32
    dec h                                         ; $7ae9: $25
    adc c                                         ; $7aea: $89
    cp l                                          ; $7aeb: $bd
    rst $00                                       ; $7aec: $c7
    ld d, l                                       ; $7aed: $55
    ld b, e                                       ; $7aee: $43
    ld l, c                                       ; $7aef: $69
    xor d                                         ; $7af0: $aa
    cp h                                          ; $7af1: $bc
    sub h                                         ; $7af2: $94
    dec h                                         ; $7af3: $25
    ld a, b                                       ; $7af4: $78
    sbc c                                         ; $7af5: $99
    xor c                                         ; $7af6: $a9
    sbc c                                         ; $7af7: $99
    ld [hl], d                                    ; $7af8: $72
    add hl, hl                                    ; $7af9: $29
    cp c                                          ; $7afa: $b9
    ld a, b                                       ; $7afb: $78
    add a                                         ; $7afc: $87
    ld d, a                                       ; $7afd: $57
    adc b                                         ; $7afe: $88
    adc d                                         ; $7aff: $8a
    sbc c                                         ; $7b00: $99
    add l                                         ; $7b01: $85
    ld d, a                                       ; $7b02: $57
    adc b                                         ; $7b03: $88
    adc b                                         ; $7b04: $88
    add a                                         ; $7b05: $87
    ld [hl], a                                    ; $7b06: $77
    add a                                         ; $7b07: $87
    ld h, a                                       ; $7b08: $67
    adc b                                         ; $7b09: $88
    ld [hl], a                                    ; $7b0a: $77
    adc c                                         ; $7b0b: $89
    sbc b                                         ; $7b0c: $98
    halt                                          ; $7b0d: $76
    ld h, a                                       ; $7b0e: $67
    ld [hl], a                                    ; $7b0f: $77
    adc c                                         ; $7b10: $89
    sbc b                                         ; $7b11: $98
    ld [hl], l                                    ; $7b12: $75
    ld d, a                                       ; $7b13: $57
    ld [hl], a                                    ; $7b14: $77
    ld a, b                                       ; $7b15: $78

jr_018_7b16:
    adc h                                         ; $7b16: $8c
    or $26                                        ; $7b17: $f6 $26
    ld d, [hl]                                    ; $7b19: $56
    ld b, l                                       ; $7b1a: $45
    cp [hl]                                       ; $7b1b: $be
    ret                                           ; $7b1c: $c9


    ld h, [hl]                                    ; $7b1d: $66
    ld d, e                                       ; $7b1e: $53
    daa                                           ; $7b1f: $27
    sbc e                                         ; $7b20: $9b
    xor h                                         ; $7b21: $ac
    xor b                                         ; $7b22: $a8
    ld d, h                                       ; $7b23: $54
    ld b, [hl]                                    ; $7b24: $46
    ld [hl], a                                    ; $7b25: $77
    adc d                                         ; $7b26: $8a
    cp c                                          ; $7b27: $b9
    add [hl]                                      ; $7b28: $86
    halt                                          ; $7b29: $76
    ld h, [hl]                                    ; $7b2a: $66
    ld [hl], a                                    ; $7b2b: $77
    sbc b                                         ; $7b2c: $98
    adc c                                         ; $7b2d: $89
    call z, Call_018_4473                         ; $7b2e: $cc $73 $44
    ld c, b                                       ; $7b31: $48
    cp l                                          ; $7b32: $bd
    ret                                           ; $7b33: $c9


    ld [hl], l                                    ; $7b34: $75
    inc [hl]                                      ; $7b35: $34
    ld h, a                                       ; $7b36: $67
    adc c                                         ; $7b37: $89
    sbc d                                         ; $7b38: $9a
    xor c                                         ; $7b39: $a9
    halt                                          ; $7b3a: $76
    ld d, l                                       ; $7b3b: $55
    ld [hl], a                                    ; $7b3c: $77
    adc c                                         ; $7b3d: $89
    sbc c                                         ; $7b3e: $99
    sbc b                                         ; $7b3f: $98
    add l                                         ; $7b40: $85
    dec [hl]                                      ; $7b41: $35
    sbc d                                         ; $7b42: $9a
    add a                                         ; $7b43: $87
    adc b                                         ; $7b44: $88
    ld [hl], a                                    ; $7b45: $77
    halt                                          ; $7b46: $76
    ld a, e                                       ; $7b47: $7b
    or [hl]                                       ; $7b48: $b6
    ld d, l                                       ; $7b49: $55
    ld e, b                                       ; $7b4a: $58
    cp c                                          ; $7b4b: $b9
    ld [hl], a                                    ; $7b4c: $77
    adc b                                         ; $7b4d: $88
    ld h, [hl]                                    ; $7b4e: $66
    ld [hl], a                                    ; $7b4f: $77
    adc b                                         ; $7b50: $88
    sbc d                                         ; $7b51: $9a
    sub a                                         ; $7b52: $97
    ld h, a                                       ; $7b53: $67
    ld [hl], a                                    ; $7b54: $77
    adc b                                         ; $7b55: $88
    ld [hl], a                                    ; $7b56: $77
    sbc b                                         ; $7b57: $98
    halt                                          ; $7b58: $76
    ld a, e                                       ; $7b59: $7b
    or e                                          ; $7b5a: $b3
    jr jr_018_7b16                                ; $7b5b: $18 $b9

    ld [hl], l                                    ; $7b5d: $75
    ld l, c                                       ; $7b5e: $69
    rst $38                                       ; $7b5f: $ff
    ld b, e                                       ; $7b60: $43
    inc [hl]                                      ; $7b61: $34
    ld a, b                                       ; $7b62: $78
    sbc e                                         ; $7b63: $9b
    res 4, h                                      ; $7b64: $cb $a4
    ld b, e                                       ; $7b66: $43
    ld b, a                                       ; $7b67: $47
    cp d                                          ; $7b68: $ba
    xor e                                         ; $7b69: $ab
    and [hl]                                      ; $7b6a: $a6
    ld d, l                                       ; $7b6b: $55
    ld h, a                                       ; $7b6c: $67
    adc c                                         ; $7b6d: $89
    sbc b                                         ; $7b6e: $98
    halt                                          ; $7b6f: $76
    adc c                                         ; $7b70: $89
    add l                                         ; $7b71: $85
    ld l, b                                       ; $7b72: $68
    sbc b                                         ; $7b73: $98
    ld d, [hl]                                    ; $7b74: $56
    add [hl]                                      ; $7b75: $86
    ld a, e                                       ; $7b76: $7b
    xor $51                                       ; $7b77: $ee $51
    ld [hl+], a                                   ; $7b79: $22
    ld l, b                                       ; $7b7a: $68
    adc $c8                                       ; $7b7b: $ce $c8
    ld h, l                                       ; $7b7d: $65
    ld b, h                                       ; $7b7e: $44
    ld l, c                                       ; $7b7f: $69
    xor c                                         ; $7b80: $a9
    adc d                                         ; $7b81: $8a
    add [hl]                                      ; $7b82: $86
    ld h, [hl]                                    ; $7b83: $66
    ld a, b                                       ; $7b84: $78
    adc b                                         ; $7b85: $88
    ld [hl], a                                    ; $7b86: $77
    adc b                                         ; $7b87: $88
    sbc b                                         ; $7b88: $98
    ld d, l                                       ; $7b89: $55
    cp [hl]                                       ; $7b8a: $be
    ld [hl], e                                    ; $7b8b: $73
    ld b, [hl]                                    ; $7b8c: $46
    ld a, b                                       ; $7b8d: $78
    sbc c                                         ; $7b8e: $99
    adc h                                         ; $7b8f: $8c
    push hl                                       ; $7b90: $e5
    inc h                                         ; $7b91: $24
    inc bc                                        ; $7b92: $03
    call $b9cb                                    ; $7b93: $cd $cb $b9
    ld h, d                                       ; $7b96: $62
    ld b, [hl]                                    ; $7b97: $46
    ld a, c                                       ; $7b98: $79
    cp d                                          ; $7b99: $ba
    xor c                                         ; $7b9a: $a9
    halt                                          ; $7b9b: $76
    ld [hl], a                                    ; $7b9c: $77
    halt                                          ; $7b9d: $76
    ld h, [hl]                                    ; $7b9e: $66
    sbc d                                         ; $7b9f: $9a
    xor b                                         ; $7ba0: $a8
    ld h, h                                       ; $7ba1: $64
    ld l, e                                       ; $7ba2: $6b
    and e                                         ; $7ba3: $a3
    add hl, sp                                    ; $7ba4: $39
    xor b                                         ; $7ba5: $a8
    ld [hl], a                                    ; $7ba6: $77
    ld a, c                                       ; $7ba7: $79
    db $db                                        ; $7ba8: $db
    ld [hl-], a                                   ; $7ba9: $32
    ld b, l                                       ; $7baa: $45
    adc d                                         ; $7bab: $8a
    cp d                                          ; $7bac: $ba

jr_018_7bad:
    xor b                                         ; $7bad: $a8
    ld h, l                                       ; $7bae: $65
    ld d, l                                       ; $7baf: $55
    ld l, b                                       ; $7bb0: $68
    sbc c                                         ; $7bb1: $99
    xor d                                         ; $7bb2: $aa
    add [hl]                                      ; $7bb3: $86
    ld h, [hl]                                    ; $7bb4: $66
    ld h, [hl]                                    ; $7bb5: $66
    adc b                                         ; $7bb6: $88
    adc b                                         ; $7bb7: $88
    sbc b                                         ; $7bb8: $98
    ld [hl], l                                    ; $7bb9: $75
    adc h                                         ; $7bba: $8c
    ld h, d                                       ; $7bbb: $62
    ld a, c                                       ; $7bbc: $79
    add [hl]                                      ; $7bbd: $86
    ld a, d                                       ; $7bbe: $7a
    adc b                                         ; $7bbf: $88
    db $ec                                        ; $7bc0: $ec
    inc sp                                        ; $7bc1: $33
    inc h                                         ; $7bc2: $24
    adc c                                         ; $7bc3: $89
    cp l                                          ; $7bc4: $bd
    xor b                                         ; $7bc5: $a8
    ld h, h                                       ; $7bc6: $64
    ld h, [hl]                                    ; $7bc7: $66
    ld d, a                                       ; $7bc8: $57
    adc b                                         ; $7bc9: $88
    xor e                                         ; $7bca: $ab
    and a                                         ; $7bcb: $a7
    ld h, l                                       ; $7bcc: $65
    ld h, [hl]                                    ; $7bcd: $66
    ld [hl], a                                    ; $7bce: $77
    adc c                                         ; $7bcf: $89
    xor c                                         ; $7bd0: $a9
    add l                                         ; $7bd1: $85
    jr c, jr_018_7bad                             ; $7bd2: $38 $d9

    inc [hl]                                      ; $7bd4: $34
    sbc c                                         ; $7bd5: $99
    ld h, [hl]                                    ; $7bd6: $66
    sbc c                                         ; $7bd7: $99
    cp a                                          ; $7bd8: $bf
    sub c                                         ; $7bd9: $91
    jr nz, jr_018_7c35                            ; $7bda: $20 $59

    call $84da                                    ; $7bdc: $cd $da $84
    inc d                                         ; $7bdf: $14
    ld d, a                                       ; $7be0: $57
    xor e                                         ; $7be1: $ab
    sbc d                                         ; $7be2: $9a
    sub [hl]                                      ; $7be3: $96
    ld d, [hl]                                    ; $7be4: $56
    ld [hl], a                                    ; $7be5: $77
    ld [hl], a                                    ; $7be6: $77
    ld a, b                                       ; $7be7: $78
    sbc d                                         ; $7be8: $9a
    sub a                                         ; $7be9: $97
    ld b, [hl]                                    ; $7bea: $46
    xor c                                         ; $7beb: $a9
    ld d, l                                       ; $7bec: $55
    ld a, b                                       ; $7bed: $78
    ld [hl], a                                    ; $7bee: $77
    sbc e                                         ; $7bef: $9b
    jp z, Jump_000_1371                           ; $7bf0: $ca $71 $13

    ld a, e                                       ; $7bf3: $7b
    db $dd                                        ; $7bf4: $dd
    cp c                                          ; $7bf5: $b9
    ld d, h                                       ; $7bf6: $54
    inc hl                                        ; $7bf7: $23
    ld l, d                                       ; $7bf8: $6a
    cp d                                          ; $7bf9: $ba
    xor d                                         ; $7bfa: $aa
    add l                                         ; $7bfb: $85
    ld b, [hl]                                    ; $7bfc: $46
    ld a, b                                       ; $7bfd: $78
    adc b                                         ; $7bfe: $88
    adc b                                         ; $7bff: $88
    sbc c                                         ; $7c00: $99
    add a                                         ; $7c01: $87
    ld d, h                                       ; $7c02: $54
    sbc a                                         ; $7c03: $9f
    sub c                                         ; $7c04: $91
    ld e, d                                       ; $7c05: $5a
    and a                                         ; $7c06: $a7
    ld l, b                                       ; $7c07: $68
    sbc c                                         ; $7c08: $99
    cp b                                          ; $7c09: $b8
    ld b, l                                       ; $7c0a: $45
    ld h, a                                       ; $7c0b: $67
    adc b                                         ; $7c0c: $88
    sbc d                                         ; $7c0d: $9a
    sub a                                         ; $7c0e: $97
    ld [hl], a                                    ; $7c0f: $77
    add a                                         ; $7c10: $87
    ld h, [hl]                                    ; $7c11: $66
    ld [hl], a                                    ; $7c12: $77
    adc c                                         ; $7c13: $89
    sbc c                                         ; $7c14: $99
    sbc b                                         ; $7c15: $98
    ld h, h                                       ; $7c16: $64
    ld d, [hl]                                    ; $7c17: $56
    ld a, c                                       ; $7c18: $79
    xor c                                         ; $7c19: $a9
    adc b                                         ; $7c1a: $88
    ld [hl], e                                    ; $7c1b: $73
    ld e, l                                       ; $7c1c: $5d
    or d                                          ; $7c1d: $b2
    ld l, e                                       ; $7c1e: $6b
    sub [hl]                                      ; $7c1f: $96
    ld h, a                                       ; $7c20: $67
    ld a, b                                       ; $7c21: $78
    jp z, Jump_018_7457                           ; $7c22: $ca $57 $74

    ld l, c                                       ; $7c25: $69
    sbc c                                         ; $7c26: $99
    sbc b                                         ; $7c27: $98
    add a                                         ; $7c28: $87
    ld [hl], l                                    ; $7c29: $75
    ld b, [hl]                                    ; $7c2a: $46
    adc b                                         ; $7c2b: $88
    sbc d                                         ; $7c2c: $9a
    sbc b                                         ; $7c2d: $98
    ld [hl], l                                    ; $7c2e: $75
    ld b, [hl]                                    ; $7c2f: $46
    add a                                         ; $7c30: $87
    adc c                                         ; $7c31: $89
    xor c                                         ; $7c32: $a9
    add a                                         ; $7c33: $87
    ld h, h                                       ; $7c34: $64

jr_018_7c35:
    ld c, c                                       ; $7c35: $49
    reti                                          ; $7c36: $d9


    ld e, b                                       ; $7c37: $58
    sbc b                                         ; $7c38: $98
    ld h, l                                       ; $7c39: $65
    ld d, l                                       ; $7c3a: $55
    sbc a                                         ; $7c3b: $9f
    sub $64                                       ; $7c3c: $d6 $64
    ld b, a                                       ; $7c3e: $47
    ld a, b                                       ; $7c3f: $78
    sbc d                                         ; $7c40: $9a
    xor c                                         ; $7c41: $a9
    ld h, a                                       ; $7c42: $67
    ld h, l                                       ; $7c43: $65
    ld d, [hl]                                    ; $7c44: $56
    adc d                                         ; $7c45: $8a
    cp c                                          ; $7c46: $b9
    halt                                          ; $7c47: $76
    ld h, [hl]                                    ; $7c48: $66
    ld a, b                                       ; $7c49: $78
    add a                                         ; $7c4a: $87
    sbc d                                         ; $7c4b: $9a
    and a                                         ; $7c4c: $a7
    ld h, h                                       ; $7c4d: $64
    ld c, c                                       ; $7c4e: $49
    jp c, $9855                                   ; $7c4f: $da $55 $98

    ld h, l                                       ; $7c52: $65
    ld h, a                                       ; $7c53: $67
    cp a                                          ; $7c54: $bf
    and l                                         ; $7c55: $a5
    ld d, e                                       ; $7c56: $53
    ld b, [hl]                                    ; $7c57: $46
    adc c                                         ; $7c58: $89
    cp d                                          ; $7c59: $ba
    add [hl]                                      ; $7c5a: $86
    ld h, a                                       ; $7c5b: $67
    ld h, l                                       ; $7c5c: $65
    ld h, a                                       ; $7c5d: $67
    adc e                                         ; $7c5e: $8b
    and a                                         ; $7c5f: $a7
    ld h, a                                       ; $7c60: $67
    ld [hl], a                                    ; $7c61: $77
    adc b                                         ; $7c62: $88
    ld [hl], a                                    ; $7c63: $77
    sbc b                                         ; $7c64: $98
    adc b                                         ; $7c65: $88
    ld h, [hl]                                    ; $7c66: $66
    ld a, c                                       ; $7c67: $79
    and a                                         ; $7c68: $a7
    ld d, [hl]                                    ; $7c69: $56
    adc b                                         ; $7c6a: $88
    ld [hl], a                                    ; $7c6b: $77
    ld a, b                                       ; $7c6c: $78
    xor [hl]                                      ; $7c6d: $ae
    call nz, Call_018_5832                        ; $7c6e: $c4 $32 $58
    xor e                                         ; $7c71: $ab
    cp e                                          ; $7c72: $bb
    add [hl]                                      ; $7c73: $86
    ld b, h                                       ; $7c74: $44
    ld h, [hl]                                    ; $7c75: $66
    ld a, c                                       ; $7c76: $79
    xor d                                         ; $7c77: $aa
    xor b                                         ; $7c78: $a8
    ld d, [hl]                                    ; $7c79: $56
    ld [hl], a                                    ; $7c7a: $77
    ld a, b                                       ; $7c7b: $78
    adc c                                         ; $7c7c: $89
    sbc c                                         ; $7c7d: $99
    sbc b                                         ; $7c7e: $98
    ld [hl], l                                    ; $7c7f: $75
    ld e, b                                       ; $7c80: $58
    sbc c                                         ; $7c81: $99
    ld [hl], a                                    ; $7c82: $77
    halt                                          ; $7c83: $76
    ld l, c                                       ; $7c84: $69
    xor c                                         ; $7c85: $a9
    cp h                                          ; $7c86: $bc
    ld h, e                                       ; $7c87: $63
    ld d, h                                       ; $7c88: $54
    ld l, d                                       ; $7c89: $6a
    call c, Call_018_6587                         ; $7c8a: $dc $87 $65
    ld d, [hl]                                    ; $7c8d: $56
    ld [hl], a                                    ; $7c8e: $77
    sbc c                                         ; $7c8f: $99
    add a                                         ; $7c90: $87
    add a                                         ; $7c91: $87
    ld a, b                                       ; $7c92: $78
    add a                                         ; $7c93: $87
    adc c                                         ; $7c94: $89
    add a                                         ; $7c95: $87
    ld [hl], a                                    ; $7c96: $77
    ld a, b                                       ; $7c97: $78
    sbc b                                         ; $7c98: $98
    ld h, [hl]                                    ; $7c99: $66
    sbc c                                         ; $7c9a: $99
    ld h, h                                       ; $7c9b: $64
    ld h, a                                       ; $7c9c: $67
    sbc d                                         ; $7c9d: $9a
    sbc b                                         ; $7c9e: $98
    ld a, b                                       ; $7c9f: $78
    jp z, Jump_018_7922                           ; $7ca0: $ca $22 $79

    xor c                                         ; $7ca3: $a9
    halt                                          ; $7ca4: $76
    adc c                                         ; $7ca5: $89
    add a                                         ; $7ca6: $87
    ld h, l                                       ; $7ca7: $65
    ld h, a                                       ; $7ca8: $67
    adc b                                         ; $7ca9: $88
    sbc d                                         ; $7caa: $9a
    sub [hl]                                      ; $7cab: $96
    ld d, a                                       ; $7cac: $57
    xor e                                         ; $7cad: $ab
    ld h, d                                       ; $7cae: $62
    ld c, b                                       ; $7caf: $48
    db $db                                        ; $7cb0: $db
    add a                                         ; $7cb1: $87
    ld d, e                                       ; $7cb2: $53
    ld e, b                                       ; $7cb3: $58
    adc c                                         ; $7cb4: $89
    sub a                                         ; $7cb5: $97
    ld a, b                                       ; $7cb6: $78
    adc b                                         ; $7cb7: $88
    adc b                                         ; $7cb8: $88
    add a                                         ; $7cb9: $87
    ld h, [hl]                                    ; $7cba: $66
    ld h, a                                       ; $7cbb: $67
    xor d                                         ; $7cbc: $aa

jr_018_7cbd:
    add a                                         ; $7cbd: $87
    add [hl]                                      ; $7cbe: $86
    ld h, a                                       ; $7cbf: $67
    ld h, [hl]                                    ; $7cc0: $66
    adc c                                         ; $7cc1: $89
    adc b                                         ; $7cc2: $88
    adc b                                         ; $7cc3: $88
    add a                                         ; $7cc4: $87
    ld h, [hl]                                    ; $7cc5: $66
    ld a, b                                       ; $7cc6: $78
    add a                                         ; $7cc7: $87
    adc d                                         ; $7cc8: $8a
    xor b                                         ; $7cc9: $a8
    halt                                          ; $7cca: $76
    ld h, a                                       ; $7ccb: $67
    sbc b                                         ; $7ccc: $98
    adc b                                         ; $7ccd: $88
    add a                                         ; $7cce: $87
    ld [hl], a                                    ; $7ccf: $77
    add a                                         ; $7cd0: $87
    adc b                                         ; $7cd1: $88
    ld a, b                                       ; $7cd2: $78
    sbc b                                         ; $7cd3: $98
    halt                                          ; $7cd4: $76
    ld h, a                                       ; $7cd5: $67
    sbc c                                         ; $7cd6: $99
    add a                                         ; $7cd7: $87
    adc b                                         ; $7cd8: $88
    add a                                         ; $7cd9: $87
    halt                                          ; $7cda: $76
    ld a, b                                       ; $7cdb: $78
    adc b                                         ; $7cdc: $88
    sbc c                                         ; $7cdd: $99
    add [hl]                                      ; $7cde: $86
    ld b, l                                       ; $7cdf: $45
    adc b                                         ; $7ce0: $88
    ld [hl], a                                    ; $7ce1: $77
    xor a                                         ; $7ce2: $af
    push de                                       ; $7ce3: $d5
    ld [de], a                                    ; $7ce4: $12
    ld l, c                                       ; $7ce5: $69
    sbc c                                         ; $7ce6: $99
    cp e                                          ; $7ce7: $bb
    add l                                         ; $7ce8: $85
    ld d, a                                       ; $7ce9: $57
    add a                                         ; $7cea: $87
    ld h, a                                       ; $7ceb: $67
    sbc c                                         ; $7cec: $99
    ld a, b                                       ; $7ced: $78
    adc c                                         ; $7cee: $89
    sub a                                         ; $7cef: $97
    add [hl]                                      ; $7cf0: $86
    ld h, a                                       ; $7cf1: $67
    adc b                                         ; $7cf2: $88
    adc c                                         ; $7cf3: $89
    xor d                                         ; $7cf4: $aa
    add [hl]                                      ; $7cf5: $86
    ld b, h                                       ; $7cf6: $44
    ld d, a                                       ; $7cf7: $57
    sbc e                                         ; $7cf8: $9b
    cp c                                          ; $7cf9: $b9
    ld h, h                                       ; $7cfa: $64
    ld d, [hl]                                    ; $7cfb: $56
    ld a, c                                       ; $7cfc: $79
    cp d                                          ; $7cfd: $ba
    add a                                         ; $7cfe: $87
    adc c                                         ; $7cff: $89
    add e                                         ; $7d00: $83
    jr c, jr_018_7cbd                             ; $7d01: $38 $ba

    add a                                         ; $7d03: $87
    ld a, b                                       ; $7d04: $78
    add a                                         ; $7d05: $87
    ld h, l                                       ; $7d06: $65
    ld h, a                                       ; $7d07: $67
    adc d                                         ; $7d08: $8a
    cp c                                          ; $7d09: $b9
    ld h, l                                       ; $7d0a: $65
    ld h, a                                       ; $7d0b: $67
    adc b                                         ; $7d0c: $88
    adc c                                         ; $7d0d: $89
    sbc b                                         ; $7d0e: $98
    ld [hl], a                                    ; $7d0f: $77
    add [hl]                                      ; $7d10: $86
    ld l, b                                       ; $7d11: $68
    xor d                                         ; $7d12: $aa
    add [hl]                                      ; $7d13: $86
    ld h, l                                       ; $7d14: $65
    ld h, a                                       ; $7d15: $67
    adc b                                         ; $7d16: $88
    adc d                                         ; $7d17: $8a
    jp z, $3852                                   ; $7d18: $ca $52 $38

    cp d                                          ; $7d1b: $ba
    adc c                                         ; $7d1c: $89
    sub a                                         ; $7d1d: $97
    ld h, [hl]                                    ; $7d1e: $66
    ld a, b                                       ; $7d1f: $78
    add a                                         ; $7d20: $87
    ld h, [hl]                                    ; $7d21: $66
    adc b                                         ; $7d22: $88
    sbc d                                         ; $7d23: $9a
    xor c                                         ; $7d24: $a9
    ld h, [hl]                                    ; $7d25: $66
    ld h, l                                       ; $7d26: $65
    ld l, b                                       ; $7d27: $68
    sbc c                                         ; $7d28: $99
    sbc c                                         ; $7d29: $99
    adc b                                         ; $7d2a: $88
    halt                                          ; $7d2b: $76
    ld d, [hl]                                    ; $7d2c: $56
    ld a, b                                       ; $7d2d: $78
    adc b                                         ; $7d2e: $88
    adc b                                         ; $7d2f: $88
    sub a                                         ; $7d30: $97
    ld l, c                                       ; $7d31: $69
    ret                                           ; $7d32: $c9


    ld [hl+], a                                   ; $7d33: $22
    ld l, d                                       ; $7d34: $6a
    ret                                           ; $7d35: $c9


    ld [hl], a                                    ; $7d36: $77
    ld a, b                                       ; $7d37: $78
    add a                                         ; $7d38: $87
    halt                                          ; $7d39: $76
    ld b, h                                       ; $7d3a: $44
    ld a, d                                       ; $7d3b: $7a
    cp d                                          ; $7d3c: $ba
    adc b                                         ; $7d3d: $88
    add a                                         ; $7d3e: $87
    ld d, l                                       ; $7d3f: $55
    adc b                                         ; $7d40: $88
    adc c                                         ; $7d41: $89
    sbc c                                         ; $7d42: $99
    add [hl]                                      ; $7d43: $86
    ld h, [hl]                                    ; $7d44: $66
    ld a, b                                       ; $7d45: $78
    add a                                         ; $7d46: $87
    ld a, c                                       ; $7d47: $79
    sbc b                                         ; $7d48: $98
    ld h, l                                       ; $7d49: $65
    ld d, [hl]                                    ; $7d4a: $56
    ld a, c                                       ; $7d4b: $79
    call c, Call_018_4674                         ; $7d4c: $dc $74 $46
    ld [hl], a                                    ; $7d4f: $77
    adc c                                         ; $7d50: $89
    sbc d                                         ; $7d51: $9a
    sbc b                                         ; $7d52: $98
    ld h, l                                       ; $7d53: $65
    ld b, [hl]                                    ; $7d54: $46
    ld a, c                                       ; $7d55: $79
    xor c                                         ; $7d56: $a9
    sbc b                                         ; $7d57: $98
    add [hl]                                      ; $7d58: $86
    ld h, [hl]                                    ; $7d59: $66
    ld a, b                                       ; $7d5a: $78
    adc b                                         ; $7d5b: $88
    adc b                                         ; $7d5c: $88
    ld a, b                                       ; $7d5d: $78
    adc b                                         ; $7d5e: $88
    ld [hl], a                                    ; $7d5f: $77
    adc b                                         ; $7d60: $88
    halt                                          ; $7d61: $76
    adc b                                         ; $7d62: $88
    ld h, h                                       ; $7d63: $64
    ld l, b                                       ; $7d64: $68
    xor l                                         ; $7d65: $ad
    ld hl, sp+$21                                 ; $7d66: $f8 $21
    ld b, a                                       ; $7d68: $47
    sbc d                                         ; $7d69: $9a
    xor c                                         ; $7d6a: $a9
    adc c                                         ; $7d6b: $89
    add a                                         ; $7d6c: $87
    ld h, h                                       ; $7d6d: $64
    ld b, a                                       ; $7d6e: $47
    adc b                                         ; $7d6f: $88
    xor d                                         ; $7d70: $aa
    sub a                                         ; $7d71: $97
    ld h, a                                       ; $7d72: $67
    ld [hl], a                                    ; $7d73: $77
    ld [hl], a                                    ; $7d74: $77
    ld a, b                                       ; $7d75: $78
    sbc c                                         ; $7d76: $99
    add a                                         ; $7d77: $87
    add a                                         ; $7d78: $87
    ld a, b                                       ; $7d79: $78
    add [hl]                                      ; $7d7a: $86
    ld e, b                                       ; $7d7b: $58
    xor b                                         ; $7d7c: $a8
    ld d, l                                       ; $7d7d: $55
    ld a, b                                       ; $7d7e: $78
    sbc l                                         ; $7d7f: $9d
    push bc                                       ; $7d80: $c5
    ld [hl+], a                                   ; $7d81: $22
    ld a, c                                       ; $7d82: $79
    sbc c                                         ; $7d83: $99
    adc b                                         ; $7d84: $88
    adc c                                         ; $7d85: $89
    add a                                         ; $7d86: $87
    ld [hl], l                                    ; $7d87: $75
    ld d, a                                       ; $7d88: $57
    adc c                                         ; $7d89: $89
    xor c                                         ; $7d8a: $a9
    sbc b                                         ; $7d8b: $98
    add [hl]                                      ; $7d8c: $86
    ld d, [hl]                                    ; $7d8d: $56
    ld [hl], a                                    ; $7d8e: $77
    adc b                                         ; $7d8f: $88
    sbc b                                         ; $7d90: $98
    adc b                                         ; $7d91: $88
    add a                                         ; $7d92: $87
    ld a, b                                       ; $7d93: $78
    ld h, l                                       ; $7d94: $65
    ld a, d                                       ; $7d95: $7a
    cp b                                          ; $7d96: $b8
    ld b, l                                       ; $7d97: $45
    ld a, b                                       ; $7d98: $78
    cp [hl]                                       ; $7d99: $be
    and e                                         ; $7d9a: $a3
    inc h                                         ; $7d9b: $24
    adc c                                         ; $7d9c: $89
    adc b                                         ; $7d9d: $88
    adc b                                         ; $7d9e: $88
    sbc c                                         ; $7d9f: $99
    add a                                         ; $7da0: $87
    ld h, l                                       ; $7da1: $65
    ld h, a                                       ; $7da2: $67
    adc c                                         ; $7da3: $89
    sbc c                                         ; $7da4: $99
    adc b                                         ; $7da5: $88
    halt                                          ; $7da6: $76
    ld h, [hl]                                    ; $7da7: $66
    adc c                                         ; $7da8: $89
    sbc b                                         ; $7da9: $98
    add a                                         ; $7daa: $87
    ld a, b                                       ; $7dab: $78
    add a                                         ; $7dac: $87
    adc b                                         ; $7dad: $88
    halt                                          ; $7dae: $76
    adc d                                         ; $7daf: $8a
    add l                                         ; $7db0: $85
    ld b, [hl]                                    ; $7db1: $46
    adc d                                         ; $7db2: $8a
    xor $72                                       ; $7db3: $ee $72
    dec d                                         ; $7db5: $15
    adc c                                         ; $7db6: $89
    sbc b                                         ; $7db7: $98
    adc c                                         ; $7db8: $89
    xor c                                         ; $7db9: $a9
    halt                                          ; $7dba: $76
    ld b, l                                       ; $7dbb: $45
    ld a, b                                       ; $7dbc: $78
    sbc c                                         ; $7dbd: $99
    sbc d                                         ; $7dbe: $9a
    sbc b                                         ; $7dbf: $98
    ld h, l                                       ; $7dc0: $65
    ld h, a                                       ; $7dc1: $67
    adc c                                         ; $7dc2: $89
    sbc b                                         ; $7dc3: $98
    halt                                          ; $7dc4: $76
    ld a, b                                       ; $7dc5: $78
    adc c                                         ; $7dc6: $89
    sub [hl]                                      ; $7dc7: $96
    ld d, a                                       ; $7dc8: $57
    sbc c                                         ; $7dc9: $99
    ld h, l                                       ; $7dca: $65
    ld l, b                                       ; $7dcb: $68
    sbc l                                         ; $7dcc: $9d
    rst $20                                       ; $7dcd: $e7
    ld hl, $9958                                  ; $7dce: $21 $58 $99
    adc b                                         ; $7dd1: $88
    adc c                                         ; $7dd2: $89
    adc b                                         ; $7dd3: $88
    ld [hl], l                                    ; $7dd4: $75
    ld b, [hl]                                    ; $7dd5: $46
    ld a, c                                       ; $7dd6: $79
    xor c                                         ; $7dd7: $a9
    sbc b                                         ; $7dd8: $98
    ld [hl], a                                    ; $7dd9: $77
    ld h, [hl]                                    ; $7dda: $66
    ld [hl], a                                    ; $7ddb: $77
    adc b                                         ; $7ddc: $88
    adc b                                         ; $7ddd: $88
    ld a, b                                       ; $7dde: $78
    adc b                                         ; $7ddf: $88
    add a                                         ; $7de0: $87
    ld d, l                                       ; $7de1: $55
    adc d                                         ; $7de2: $8a
    sub [hl]                                      ; $7de3: $96
    ld h, [hl]                                    ; $7de4: $66
    ld l, b                                       ; $7de5: $68
    rst $08                                       ; $7de6: $cf
    and e                                         ; $7de7: $a3
    inc de                                        ; $7de8: $13
    ld a, b                                       ; $7de9: $78
    xor b                                         ; $7dea: $a8
    sbc b                                         ; $7deb: $98
    adc c                                         ; $7dec: $89
    adc b                                         ; $7ded: $88
    ld h, h                                       ; $7dee: $64
    ld d, [hl]                                    ; $7def: $56
    adc c                                         ; $7df0: $89
    xor d                                         ; $7df1: $aa
    sbc b                                         ; $7df2: $98
    halt                                          ; $7df3: $76
    ld h, a                                       ; $7df4: $67
    ld [hl], a                                    ; $7df5: $77
    ld a, b                                       ; $7df6: $78
    adc b                                         ; $7df7: $88
    adc b                                         ; $7df8: $88
    adc b                                         ; $7df9: $88
    ld [hl], l                                    ; $7dfa: $75
    ld d, a                                       ; $7dfb: $57
    xor d                                         ; $7dfc: $aa
    ld h, l                                       ; $7dfd: $65
    ld h, [hl]                                    ; $7dfe: $66
    ld l, d                                       ; $7dff: $6a
    rst $38                                       ; $7e00: $ff
    ld h, d                                       ; $7e01: $62
    dec d                                         ; $7e02: $15
    ld a, b                                       ; $7e03: $78
    xor c                                         ; $7e04: $a9
    sbc b                                         ; $7e05: $98
    adc c                                         ; $7e06: $89
    sbc b                                         ; $7e07: $98
    ld d, h                                       ; $7e08: $54
    ld d, [hl]                                    ; $7e09: $56
    ld a, c                                       ; $7e0a: $79
    cp e                                          ; $7e0b: $bb
    sbc b                                         ; $7e0c: $98
    halt                                          ; $7e0d: $76
    ld [hl], a                                    ; $7e0e: $77
    ld h, a                                       ; $7e0f: $67
    adc b                                         ; $7e10: $88
    adc c                                         ; $7e11: $89
    sbc c                                         ; $7e12: $99
    adc b                                         ; $7e13: $88
    ld [hl], l                                    ; $7e14: $75
    ld e, b                                       ; $7e15: $58
    cp d                                          ; $7e16: $ba
    ld h, h                                       ; $7e17: $64
    ld b, [hl]                                    ; $7e18: $46
    adc e                                         ; $7e19: $8b
    xor $81                                       ; $7e1a: $ee $81
    inc de                                        ; $7e1c: $13
    ld a, b                                       ; $7e1d: $78
    xor c                                         ; $7e1e: $a9
    adc b                                         ; $7e1f: $88
    adc c                                         ; $7e20: $89
    sbc c                                         ; $7e21: $99
    ld [hl], h                                    ; $7e22: $74
    ld [hl], $79                                  ; $7e23: $36 $79
    xor e                                         ; $7e25: $ab
    sbc b                                         ; $7e26: $98
    ld [hl], a                                    ; $7e27: $77
    ld [hl], a                                    ; $7e28: $77
    ld h, [hl]                                    ; $7e29: $66
    ld l, b                                       ; $7e2a: $68
    sbc c                                         ; $7e2b: $99
    adc b                                         ; $7e2c: $88
    adc b                                         ; $7e2d: $88
    add a                                         ; $7e2e: $87
    ld h, a                                       ; $7e2f: $67
    sbc e                                         ; $7e30: $9b
    sub h                                         ; $7e31: $94
    inc d                                         ; $7e32: $14
    sbc e                                         ; $7e33: $9b
    xor h                                         ; $7e34: $ac
    ld hl, sp+$12                                 ; $7e35: $f8 $12
    ld l, c                                       ; $7e37: $69
    ld a, c                                       ; $7e38: $79
    ld [hl], a                                    ; $7e39: $77
    adc c                                         ; $7e3a: $89
    cp e                                          ; $7e3b: $bb
    and l                                         ; $7e3c: $a5
    inc de                                        ; $7e3d: $13
    ld h, a                                       ; $7e3e: $67
    sbc d                                         ; $7e3f: $9a
    cp c                                          ; $7e40: $b9
    halt                                          ; $7e41: $76
    halt                                          ; $7e42: $76
    ld h, a                                       ; $7e43: $67
    adc c                                         ; $7e44: $89
    add [hl]                                      ; $7e45: $86
    ld h, a                                       ; $7e46: $67
    adc b                                         ; $7e47: $88
    adc c                                         ; $7e48: $89
    sub a                                         ; $7e49: $97
    ld a, b                                       ; $7e4a: $78
    sub a                                         ; $7e4b: $97
    ld [hl-], a                                   ; $7e4c: $32
    ld e, c                                       ; $7e4d: $59
    xor c                                         ; $7e4e: $a9
    sbc h                                         ; $7e4f: $9c
    or l                                          ; $7e50: $b5
    ld d, l                                       ; $7e51: $55
    ld h, h                                       ; $7e52: $64
    ld l, b                                       ; $7e53: $68
    adc d                                         ; $7e54: $8a
    xor d                                         ; $7e55: $aa
    adc b                                         ; $7e56: $88
    ld [hl], h                                    ; $7e57: $74
    ld b, [hl]                                    ; $7e58: $46
    ld a, c                                       ; $7e59: $79
    xor c                                         ; $7e5a: $a9
    adc b                                         ; $7e5b: $88
    ld h, [hl]                                    ; $7e5c: $66
    ld a, d                                       ; $7e5d: $7a
    ret                                           ; $7e5e: $c9


    ld h, h                                       ; $7e5f: $64
    ld d, [hl]                                    ; $7e60: $56
    adc c                                         ; $7e61: $89
    sbc c                                         ; $7e62: $99
    sbc d                                         ; $7e63: $9a
    sub a                                         ; $7e64: $97
    ld h, a                                       ; $7e65: $67
    add a                                         ; $7e66: $87
    ld h, [hl]                                    ; $7e67: $66
    ld a, b                                       ; $7e68: $78
    adc b                                         ; $7e69: $88
    cp a                                          ; $7e6a: $bf
    jp Jump_018_5622                              ; $7e6b: $c3 $22 $56


    sbc e                                         ; $7e6e: $9b
    xor b                                         ; $7e6f: $a8
    ld l, b                                       ; $7e70: $68
    xor e                                         ; $7e71: $ab
    ld [hl], e                                    ; $7e72: $73
    ld d, a                                       ; $7e73: $57
    ld h, a                                       ; $7e74: $67
    adc c                                         ; $7e75: $89
    ld [hl], l                                    ; $7e76: $75
    adc h                                         ; $7e77: $8c
    jp c, $3563                                   ; $7e78: $da $63 $35

    ld h, a                                       ; $7e7b: $67
    xor e                                         ; $7e7c: $ab
    xor c                                         ; $7e7d: $a9
    adc b                                         ; $7e7e: $88
    add [hl]                                      ; $7e7f: $86
    ld d, a                                       ; $7e80: $57
    add a                                         ; $7e81: $87
    ld b, e                                       ; $7e82: $43
    ld l, e                                       ; $7e83: $6b
    db $db                                        ; $7e84: $db
    adc d                                         ; $7e85: $8a
    or l                                          ; $7e86: $b5
    dec [hl]                                      ; $7e87: $35
    ld [hl], a                                    ; $7e88: $77
    ld a, b                                       ; $7e89: $78
    ld a, c                                       ; $7e8a: $79
    sbc b                                         ; $7e8b: $98
    adc d                                         ; $7e8c: $8a
    or [hl]                                       ; $7e8d: $b6
    inc h                                         ; $7e8e: $24
    inc [hl]                                      ; $7e8f: $34
    ld l, d                                       ; $7e90: $6a
    xor $b7                                       ; $7e91: $ee $b7
    ld d, h                                       ; $7e93: $54
    ld b, l                                       ; $7e94: $45
    ld [hl], a                                    ; $7e95: $77
    adc b                                         ; $7e96: $88
    sbc d                                         ; $7e97: $9a
    sub a                                         ; $7e98: $97
    ld a, b                                       ; $7e99: $78
    sbc b                                         ; $7e9a: $98
    ld h, l                                       ; $7e9b: $65
    ld h, [hl]                                    ; $7e9c: $66
    ld h, a                                       ; $7e9d: $67
    sbc d                                         ; $7e9e: $9a
    add [hl]                                      ; $7e9f: $86
    ld h, a                                       ; $7ea0: $67
    xor l                                         ; $7ea1: $ad
    and l                                         ; $7ea2: $a5
    ld [hl+], a                                   ; $7ea3: $22
    adc b                                         ; $7ea4: $88
    ret                                           ; $7ea5: $c9


    ld [hl], a                                    ; $7ea6: $77
    adc d                                         ; $7ea7: $8a
    sbc c                                         ; $7ea8: $99
    ld d, b                                       ; $7ea9: $50
    ld h, $bf                                     ; $7eaa: $26 $bf
    jp c, Jump_018_5853                           ; $7eac: $da $53 $58

    sbc d                                         ; $7eaf: $9a
    sub a                                         ; $7eb0: $97
    ld d, l                                       ; $7eb1: $55
    ld a, c                                       ; $7eb2: $79
    xor d                                         ; $7eb3: $aa
    add a                                         ; $7eb4: $87
    ld [hl], a                                    ; $7eb5: $77
    ld h, [hl]                                    ; $7eb6: $66
    adc c                                         ; $7eb7: $89
    sub a                                         ; $7eb8: $97
    ld h, [hl]                                    ; $7eb9: $66
    adc d                                         ; $7eba: $8a
    xor b                                         ; $7ebb: $a8
    halt                                          ; $7ebc: $76
    ld l, b                                       ; $7ebd: $68
    sbc b                                         ; $7ebe: $98
    ld [hl], l                                    ; $7ebf: $75
    adc d                                         ; $7ec0: $8a
    sub a                                         ; $7ec1: $97
    ld h, a                                       ; $7ec2: $67
    ld h, l                                       ; $7ec3: $65
    ld a, c                                       ; $7ec4: $79
    xor b                                         ; $7ec5: $a8
    ld a, b                                       ; $7ec6: $78
    adc c                                         ; $7ec7: $89
    add [hl]                                      ; $7ec8: $86
    ld h, a                                       ; $7ec9: $67
    ld [hl], a                                    ; $7eca: $77
    adc c                                         ; $7ecb: $89
    add a                                         ; $7ecc: $87
    adc b                                         ; $7ecd: $88
    ld [hl], a                                    ; $7ece: $77
    ld [hl], a                                    ; $7ecf: $77
    ld h, [hl]                                    ; $7ed0: $66
    ld a, b                                       ; $7ed1: $78
    xor c                                         ; $7ed2: $a9
    halt                                          ; $7ed3: $76
    ld h, [hl]                                    ; $7ed4: $66
    ld h, a                                       ; $7ed5: $67
    sbc c                                         ; $7ed6: $99
    add a                                         ; $7ed7: $87
    ld h, a                                       ; $7ed8: $67
    adc b                                         ; $7ed9: $88
    sbc c                                         ; $7eda: $99
    ld [hl], l                                    ; $7edb: $75
    ld b, l                                       ; $7edc: $45
    ld a, b                                       ; $7edd: $78
    adc b                                         ; $7ede: $88
    sbc l                                         ; $7edf: $9d
    or h                                          ; $7ee0: $b4
    inc hl                                        ; $7ee1: $23
    adc b                                         ; $7ee2: $88
    adc c                                         ; $7ee3: $89
    halt                                          ; $7ee4: $76
    ld l, c                                       ; $7ee5: $69
    cp h                                          ; $7ee6: $bc
    and l                                         ; $7ee7: $a5
    inc hl                                        ; $7ee8: $23
    ld a, c                                       ; $7ee9: $79
    sbc c                                         ; $7eea: $99
    halt                                          ; $7eeb: $76
    ld l, b                                       ; $7eec: $68
    sbc d                                         ; $7eed: $9a
    sub a                                         ; $7eee: $97
    ld d, l                                       ; $7eef: $55
    ld d, l                                       ; $7ef0: $55
    adc e                                         ; $7ef1: $8b
    ret z                                         ; $7ef2: $c8

    ld [hl], a                                    ; $7ef3: $77
    add a                                         ; $7ef4: $87
    ld h, [hl]                                    ; $7ef5: $66
    ld [hl], a                                    ; $7ef6: $77
    add a                                         ; $7ef7: $87
    adc c                                         ; $7ef8: $89
    xor b                                         ; $7ef9: $a8
    halt                                          ; $7efa: $76
    ld h, [hl]                                    ; $7efb: $66
    ld h, a                                       ; $7efc: $67
    add a                                         ; $7efd: $87
    ld h, [hl]                                    ; $7efe: $66
    adc e                                         ; $7eff: $8b
    ret c                                         ; $7f00: $d8

    ld b, h                                       ; $7f01: $44
    ld [hl], a                                    ; $7f02: $77
    ld l, c                                       ; $7f03: $69
    add [hl]                                      ; $7f04: $86
    ld l, b                                       ; $7f05: $68
    xor d                                         ; $7f06: $aa
    sub a                                         ; $7f07: $97
    ld h, l                                       ; $7f08: $65
    ld d, [hl]                                    ; $7f09: $56
    ld a, c                                       ; $7f0a: $79
    adc b                                         ; $7f0b: $88
    ld a, b                                       ; $7f0c: $78
    ld a, b                                       ; $7f0d: $78
    sbc d                                         ; $7f0e: $9a
    sub [hl]                                      ; $7f0f: $96
    ld b, l                                       ; $7f10: $45
    ld h, [hl]                                    ; $7f11: $66
    ld a, c                                       ; $7f12: $79
    cp e                                          ; $7f13: $bb
    add a                                         ; $7f14: $87
    ld h, a                                       ; $7f15: $67
    ld a, b                                       ; $7f16: $78
    sbc b                                         ; $7f17: $98
    ld h, l                                       ; $7f18: $65
    ld l, b                                       ; $7f19: $68
    sbc d                                         ; $7f1a: $9a
    sbc b                                         ; $7f1b: $98
    halt                                          ; $7f1c: $76
    ld h, a                                       ; $7f1d: $67
    adc c                                         ; $7f1e: $89
    halt                                          ; $7f1f: $76
    ld l, c                                       ; $7f20: $69
    bit 6, [hl]                                   ; $7f21: $cb $76
    halt                                          ; $7f23: $76
    scf                                           ; $7f24: $37
    sbc d                                         ; $7f25: $9a
    sbc c                                         ; $7f26: $99
    xor c                                         ; $7f27: $a9
    add a                                         ; $7f28: $87
    halt                                          ; $7f29: $76
    ld d, l                                       ; $7f2a: $55
    ld a, c                                       ; $7f2b: $79
    sbc c                                         ; $7f2c: $99
    add a                                         ; $7f2d: $87
    ld a, b                                       ; $7f2e: $78
    adc b                                         ; $7f2f: $88
    sbc b                                         ; $7f30: $98
    ld [hl], l                                    ; $7f31: $75
    ld d, [hl]                                    ; $7f32: $56
    ld a, c                                       ; $7f33: $79
    sbc c                                         ; $7f34: $99
    add a                                         ; $7f35: $87
    ld h, [hl]                                    ; $7f36: $66
    adc c                                         ; $7f37: $89
    add a                                         ; $7f38: $87
    halt                                          ; $7f39: $76
    ld h, a                                       ; $7f3a: $67
    sbc d                                         ; $7f3b: $9a
    sub a                                         ; $7f3c: $97
    ld h, l                                       ; $7f3d: $65
    ld h, a                                       ; $7f3e: $67
    adc c                                         ; $7f3f: $89
    add a                                         ; $7f40: $87
    ld h, [hl]                                    ; $7f41: $66
    adc e                                         ; $7f42: $8b
    sub [hl]                                      ; $7f43: $96
    ld h, a                                       ; $7f44: $67
    halt                                          ; $7f45: $76
    adc b                                         ; $7f46: $88
    add [hl]                                      ; $7f47: $86
    ld a, c                                       ; $7f48: $79
    sbc c                                         ; $7f49: $99
    add a                                         ; $7f4a: $87
    halt                                          ; $7f4b: $76
    ld h, [hl]                                    ; $7f4c: $66
    adc c                                         ; $7f4d: $89
    sub a                                         ; $7f4e: $97
    ld [hl], a                                    ; $7f4f: $77
    adc b                                         ; $7f50: $88
    adc b                                         ; $7f51: $88
    ld [hl], a                                    ; $7f52: $77
    ld h, [hl]                                    ; $7f53: $66
    ld a, b                                       ; $7f54: $78
    adc b                                         ; $7f55: $88
    ld [hl], a                                    ; $7f56: $77
    ld a, b                                       ; $7f57: $78
    adc b                                         ; $7f58: $88
    add a                                         ; $7f59: $87
    ld [hl], a                                    ; $7f5a: $77
    ld [hl], a                                    ; $7f5b: $77
    adc b                                         ; $7f5c: $88
    add a                                         ; $7f5d: $87
    ld [hl], a                                    ; $7f5e: $77
    ld a, b                                       ; $7f5f: $78
    sbc b                                         ; $7f60: $98
    ld [hl], a                                    ; $7f61: $77
    ld [hl], a                                    ; $7f62: $77
    ld h, a                                       ; $7f63: $67
    adc b                                         ; $7f64: $88
    adc c                                         ; $7f65: $89
    sbc b                                         ; $7f66: $98
    ld [hl], a                                    ; $7f67: $77
    ld h, l                                       ; $7f68: $65
    ld a, b                                       ; $7f69: $78
    adc b                                         ; $7f6a: $88
    adc c                                         ; $7f6b: $89
    add a                                         ; $7f6c: $87
    ld a, b                                       ; $7f6d: $78
    adc b                                         ; $7f6e: $88
    add a                                         ; $7f6f: $87
    add [hl]                                      ; $7f70: $86
    ld h, a                                       ; $7f71: $67
    adc c                                         ; $7f72: $89
    adc b                                         ; $7f73: $88
    adc b                                         ; $7f74: $88
    ld [hl], a                                    ; $7f75: $77
    ld a, b                                       ; $7f76: $78
    add a                                         ; $7f77: $87
    ld h, a                                       ; $7f78: $67
    adc b                                         ; $7f79: $88
    adc b                                         ; $7f7a: $88
    add a                                         ; $7f7b: $87
    ld [hl], a                                    ; $7f7c: $77
    ld a, b                                       ; $7f7d: $78
    adc b                                         ; $7f7e: $88
    ld [hl], a                                    ; $7f7f: $77
    add a                                         ; $7f80: $87
    adc b                                         ; $7f81: $88
    adc b                                         ; $7f82: $88
    ld a, b                                       ; $7f83: $78
    ld [hl], a                                    ; $7f84: $77
    ld [hl], a                                    ; $7f85: $77
    ld [hl], a                                    ; $7f86: $77
    ld [hl], a                                    ; $7f87: $77
    adc b                                         ; $7f88: $88
    adc c                                         ; $7f89: $89
    add a                                         ; $7f8a: $87
    ld h, [hl]                                    ; $7f8b: $66
    ld a, b                                       ; $7f8c: $78
    sbc d                                         ; $7f8d: $9a
    sub a                                         ; $7f8e: $97
    ld [hl], a                                    ; $7f8f: $77
    add [hl]                                      ; $7f90: $86
    ld l, b                                       ; $7f91: $68
    sbc b                                         ; $7f92: $98
    adc b                                         ; $7f93: $88
    add a                                         ; $7f94: $87
    ld [hl], a                                    ; $7f95: $77
    ld [hl], a                                    ; $7f96: $77
    adc b                                         ; $7f97: $88
    adc b                                         ; $7f98: $88
    adc b                                         ; $7f99: $88
    ld [hl], a                                    ; $7f9a: $77
    ld a, b                                       ; $7f9b: $78
    ld [hl], a                                    ; $7f9c: $77
    adc b                                         ; $7f9d: $88
    add a                                         ; $7f9e: $87
    ld [hl], a                                    ; $7f9f: $77
    add a                                         ; $7fa0: $87
    ld a, b                                       ; $7fa1: $78
    adc b                                         ; $7fa2: $88
    ld [hl], a                                    ; $7fa3: $77
    ld [hl], a                                    ; $7fa4: $77
    ld [hl], a                                    ; $7fa5: $77
    ld a, b                                       ; $7fa6: $78
    add a                                         ; $7fa7: $87
    ld a, b                                       ; $7fa8: $78
    adc b                                         ; $7fa9: $88
    ld [hl], a                                    ; $7faa: $77
    ld a, b                                       ; $7fab: $78
    adc b                                         ; $7fac: $88
    adc b                                         ; $7fad: $88
    adc b                                         ; $7fae: $88
    ld [hl], a                                    ; $7faf: $77
    add a                                         ; $7fb0: $87
    adc b                                         ; $7fb1: $88
    adc b                                         ; $7fb2: $88
    add a                                         ; $7fb3: $87
    ld [hl], a                                    ; $7fb4: $77
    ld [hl], a                                    ; $7fb5: $77
    adc b                                         ; $7fb6: $88
    adc c                                         ; $7fb7: $89
    adc b                                         ; $7fb8: $88
    ld [hl], a                                    ; $7fb9: $77
    ld [hl], a                                    ; $7fba: $77
    ld a, b                                       ; $7fbb: $78
    adc d                                         ; $7fbc: $8a
    xor b                                         ; $7fbd: $a8
    ld h, a                                       ; $7fbe: $67
    add a                                         ; $7fbf: $87
    ld h, [hl]                                    ; $7fc0: $66
    ld a, b                                       ; $7fc1: $78
    adc b                                         ; $7fc2: $88
    sbc c                                         ; $7fc3: $99
    add a                                         ; $7fc4: $87
    ld h, [hl]                                    ; $7fc5: $66
    ld a, b                                       ; $7fc6: $78
    sbc b                                         ; $7fc7: $98
    adc b                                         ; $7fc8: $88
    halt                                          ; $7fc9: $76
    ld a, b                                       ; $7fca: $78
    adc b                                         ; $7fcb: $88
    adc b                                         ; $7fcc: $88
    adc b                                         ; $7fcd: $88
    add a                                         ; $7fce: $87
    ld [hl], a                                    ; $7fcf: $77
    add a                                         ; $7fd0: $87
    ld a, b                                       ; $7fd1: $78
    adc c                                         ; $7fd2: $89
    adc b                                         ; $7fd3: $88
    ld [hl], a                                    ; $7fd4: $77
    ld [hl], a                                    ; $7fd5: $77
    adc b                                         ; $7fd6: $88
    add a                                         ; $7fd7: $87
    ld [hl], a                                    ; $7fd8: $77
    ld a, b                                       ; $7fd9: $78
    adc b                                         ; $7fda: $88
    ld [hl], a                                    ; $7fdb: $77
    adc b                                         ; $7fdc: $88
    adc b                                         ; $7fdd: $88
    adc b                                         ; $7fde: $88
    add a                                         ; $7fdf: $87
    add a                                         ; $7fe0: $87
    ld a, b                                       ; $7fe1: $78
    adc b                                         ; $7fe2: $88
    adc b                                         ; $7fe3: $88
    ld [hl], a                                    ; $7fe4: $77
    ld [hl], a                                    ; $7fe5: $77
    ld a, b                                       ; $7fe6: $78
    adc b                                         ; $7fe7: $88
    adc b                                         ; $7fe8: $88
    add a                                         ; $7fe9: $87
    ld [hl], a                                    ; $7fea: $77
    ld [hl], a                                    ; $7feb: $77
    adc b                                         ; $7fec: $88
    sbc d                                         ; $7fed: $9a
    sub a                                         ; $7fee: $97
    ld h, a                                       ; $7fef: $67
    add [hl]                                      ; $7ff0: $86
    ld h, a                                       ; $7ff1: $67
    adc b                                         ; $7ff2: $88
    adc b                                         ; $7ff3: $88
    adc b                                         ; $7ff4: $88
    ld [hl], a                                    ; $7ff5: $77
    ld [hl], a                                    ; $7ff6: $77
    adc b                                         ; $7ff7: $88
    ld [hl], a                                    ; $7ff8: $77
    adc b                                         ; $7ff9: $88
    add a                                         ; $7ffa: $87
    ld a, b                                       ; $7ffb: $78
    add a                                         ; $7ffc: $87
    ld [hl], a                                    ; $7ffd: $77
    adc b                                         ; $7ffe: $88
    adc b                                         ; $7fff: $88
