; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0f7", ROMX[$4000], BANK[$f7]

Call_0f7_4000:
    rst $30                                       ; $4000: $f7

Jump_0f7_4001:
    rrca                                          ; $4001: $0f
    dec b                                         ; $4002: $05
    ld hl, sp+$07                                 ; $4003: $f8 $07
    ei                                            ; $4005: $fb
    ld b, $f7                                     ; $4006: $06 $f7
    push af                                       ; $4008: $f5
    ld a, [c]                                     ; $4009: $f2
    db $fd                                        ; $400a: $fd
    ld a, [$0205]                                 ; $400b: $fa $05 $02
    db $f4                                        ; $400e: $f4
    ld [bc], a                                    ; $400f: $02
    db $fd                                        ; $4010: $fd
    add l                                         ; $4011: $85
    nop                                           ; $4012: $00
    ld b, b                                       ; $4013: $40
    nop                                           ; $4014: $00
    ld b, b                                       ; $4015: $40
    nop                                           ; $4016: $00
    ld [bc], a                                    ; $4017: $02
    ld b, b                                       ; $4018: $40
    sub a                                         ; $4019: $97
    add h                                         ; $401a: $84
    ld b, h                                       ; $401b: $44
    xor c                                         ; $401c: $a9
    ld b, h                                       ; $401d: $44
    xor e                                         ; $401e: $ab
    ld bc, $30e6                                  ; $401f: $01 $e6 $30
    ld a, a                                       ; $4022: $7f
    and [hl]                                      ; $4023: $a6
    rst $38                                       ; $4024: $ff
    sub e                                         ; $4025: $93
    rst $28                                       ; $4026: $ef
    inc hl                                        ; $4027: $23
    rst $18                                       ; $4028: $df
    dec c                                         ; $4029: $0d
    di                                            ; $402a: $f3
    cp e                                          ; $402b: $bb
    rst $00                                       ; $402c: $c7
    jp Jump_0f7_5eff                              ; $402d: $c3 $ff $5e


    ld a, [hl]                                    ; $4030: $7e
    ld [bc], a                                    ; $4031: $02
    db $38, $85                                   ; $4032: $38 $85
    nop                                           ; $4034: $00
    ld b, b                                       ; $4035: $40
    nop                                           ; $4036: $00
    ld b, b                                       ; $4037: $40
    nop                                           ; $4038: $00
    ld [bc], a                                    ; $4039: $02
    ld b, b                                       ; $403a: $40
    sbc [hl]                                      ; $403b: $9e
    add b                                         ; $403c: $80
    ld b, b                                       ; $403d: $40
    and b                                         ; $403e: $a0
    ld b, b                                       ; $403f: $40
    and b                                         ; $4040: $a0
    nop                                           ; $4041: $00
    ld h, d                                       ; $4042: $62
    ld [bc], a                                    ; $4043: $02
    db $e4                                        ; $4044: $e4
    ld b, d                                       ; $4045: $42
    cp l                                          ; $4046: $bd
    ld h, b                                       ; $4047: $60
    sbc [hl]                                      ; $4048: $9e
    db $fc                                        ; $4049: $fc
    ld [bc], a                                    ; $404a: $02
    cp [hl]                                       ; $404b: $be
    ld b, c                                       ; $404c: $41
    ret                                           ; $404d: $c9


    scf                                           ; $404e: $37
    ld a, [$0307]                                 ; $404f: $fa $07 $03
    rst $38                                       ; $4052: $ff
    ret z                                         ; $4053: $c8

    rst $30                                       ; $4054: $f7
    nop                                           ; $4055: $00
    ld [$0800], sp                                ; $4056: $08 $00 $08
    nop                                           ; $4059: $00
    ld [bc], a                                    ; $405a: $02
    ld [$9091], sp                                ; $405b: $08 $91 $90
    adc b                                         ; $405e: $88
    call nc, $b458                                ; $405f: $d4 $58 $b4
    ld d, b                                       ; $4062: $50
    cp [hl]                                       ; $4063: $be
    ld h, $d9                                     ; $4064: $26 $d9
    cp $01                                        ; $4066: $fe $01
    pop bc                                        ; $4068: $c1
    ccf                                           ; $4069: $3f
    ld a, d                                       ; $406a: $7a
    sbc [hl]                                      ; $406b: $9e
    sbc b                                         ; $406c: $98
    ld hl, sp+$02                                 ; $406d: $f8 $02
    ldh [rTMA], a                                 ; $406f: $e0 $06
    nop                                           ; $4071: $00
    ld [bc], a                                    ; $4072: $02
    add b                                         ; $4073: $80
    ld e, $00                                     ; $4074: $1e $00
    adc d                                         ; $4076: $8a
    sub a                                         ; $4077: $97
    add sp, $3f                                   ; $4078: $e8 $3f
    ret nz                                        ; $407a: $c0

    adc [hl]                                      ; $407b: $8e
    pop af                                        ; $407c: $f1
    ld h, c                                       ; $407d: $61
    ld a, a                                       ; $407e: $7f
    inc a                                         ; $407f: $3c
    ld a, $02                                     ; $4080: $3e $02
    jr jr_0f7_4098                                ; $4082: $18 $14

    nop                                           ; $4084: $00
    rst $38                                       ; $4085: $ff
    ld de, $f806                                  ; $4086: $11 $06 $f8
    rlca                                          ; $4089: $07
    ei                                            ; $408a: $fb
    ld b, $f4                                     ; $408b: $06 $f4
    push af                                       ; $408d: $f5
    rst $28                                       ; $408e: $ef
    db $fd                                        ; $408f: $fd
    push af                                       ; $4090: $f5
    dec b                                         ; $4091: $05
    rst $38                                       ; $4092: $ff
    db $f4                                        ; $4093: $f4
    rst $38                                       ; $4094: $ff
    db $fc                                        ; $4095: $fc
    rst $38                                       ; $4096: $ff
    inc b                                         ; $4097: $04

jr_0f7_4098:
    and a                                         ; $4098: $a7
    nop                                           ; $4099: $00
    ld b, b                                       ; $409a: $40
    nop                                           ; $409b: $00
    ld b, b                                       ; $409c: $40
    nop                                           ; $409d: $00
    ld b, b                                       ; $409e: $40
    nop                                           ; $409f: $00
    ld b, h                                       ; $40a0: $44
    ld b, b                                       ; $40a1: $40
    and h                                         ; $40a2: $a4
    ld b, b                                       ; $40a3: $40
    and h                                         ; $40a4: $a4
    ld b, h                                       ; $40a5: $44
    xor b                                         ; $40a6: $a8
    call nz, Call_0f7_4daa                        ; $40a7: $c4 $aa $4d
    ld c, e                                       ; $40aa: $4b
    ld [bc], a                                    ; $40ab: $02
    ld b, a                                       ; $40ac: $47
    ld bc, $0806                                  ; $40ad: $01 $06 $08
    ld a, a                                       ; $40b0: $7f
    cp d                                          ; $40b1: $ba
    db $dd                                        ; $40b2: $dd
    ld a, [hl]                                    ; $40b3: $7e
    sbc c                                         ; $40b4: $99
    ld b, h                                       ; $40b5: $44
    cp e                                          ; $40b6: $bb
    inc sp                                        ; $40b7: $33
    rst $08                                       ; $40b8: $cf
    nop                                           ; $40b9: $00
    ld b, b                                       ; $40ba: $40
    nop                                           ; $40bb: $00
    ld b, b                                       ; $40bc: $40
    nop                                           ; $40bd: $00
    ld b, b                                       ; $40be: $40
    nop                                           ; $40bf: $00
    ld [bc], a                                    ; $40c0: $02
    ld b, b                                       ; $40c1: $40
    sbc [hl]                                      ; $40c2: $9e
    and b                                         ; $40c3: $a0
    ld b, b                                       ; $40c4: $40
    and b                                         ; $40c5: $a0
    ld b, b                                       ; $40c6: $40
    and d                                         ; $40c7: $a2
    ld b, b                                       ; $40c8: $40
    and d                                         ; $40c9: $a2
    ld b, b                                       ; $40ca: $40
    ld b, d                                       ; $40cb: $42
    ld [bc], a                                    ; $40cc: $02
    ld b, h                                       ; $40cd: $44
    ld [bc], a                                    ; $40ce: $02
    dec b                                         ; $40cf: $05
    ld b, $05                                     ; $40d0: $06 $05
    ld b, [hl]                                    ; $40d2: $46
    ld l, $68                                     ; $40d3: $2e $68
    sub [hl]                                      ; $40d5: $96
    cp $01                                        ; $40d6: $fe $01
    cp h                                          ; $40d8: $bc
    ld b, e                                       ; $40d9: $43
    nop                                           ; $40da: $00
    ld [$0800], sp                                ; $40db: $08 $00 $08
    nop                                           ; $40de: $00
    ld [$0200], sp                                ; $40df: $08 $00 $02
    ld [$5497], sp                                ; $40e2: $08 $97 $54
    ld [$0854], sp                                ; $40e5: $08 $54 $08
    ld d, h                                       ; $40e8: $54
    ld e, b                                       ; $40e9: $58
    sub h                                         ; $40ea: $94
    ld c, b                                       ; $40eb: $48
    xor b                                         ; $40ec: $a8
    ld b, b                                       ; $40ed: $40
    xor b                                         ; $40ee: $a8

jr_0f7_40ef:
    and b                                         ; $40ef: $a0
    ld h, b                                       ; $40f0: $60
    jr nz, jr_0f7_40ef                            ; $40f1: $20 $fc

    ld c, h                                       ; $40f3: $4c
    or d                                          ; $40f4: $b2
    cp $01                                        ; $40f5: $fe $01
    ld sp, hl                                     ; $40f7: $f9
    rlca                                          ; $40f8: $07
    and c                                         ; $40f9: $a1
    ld e, a                                       ; $40fa: $5f
    ld b, $00                                     ; $40fb: $06 $00
    inc b                                         ; $40fd: $04
    add b                                         ; $40fe: $80
    add d                                         ; $40ff: $82
    ld b, a                                       ; $4100: $47
    ld a, a                                       ; $4101: $7f
    ld [bc], a                                    ; $4102: $02
    ld a, [hl]                                    ; $4103: $7e
    ld [bc], a                                    ; $4104: $02
    jr c, jr_0f7_4117                             ; $4105: $38 $10

    nop                                           ; $4107: $00
    add c                                         ; $4108: $81
    ld a, l                                       ; $4109: $7d
    ld [bc], a                                    ; $410a: $02
    inc bc                                        ; $410b: $03
    adc d                                         ; $410c: $8a
    ld a, a                                       ; $410d: $7f
    ld b, l                                       ; $410e: $45
    dec sp                                        ; $410f: $3b
    ld a, $41                                     ; $4110: $3e $41
    ld e, $61                                     ; $4112: $1e $61
    rst $10                                       ; $4114: $d7
    add sp, $28                                   ; $4115: $e8 $28

jr_0f7_4117:
    inc bc                                        ; $4117: $03
    ccf                                           ; $4118: $3f
    ld [bc], a                                    ; $4119: $02
    jr jr_0f7_412a                                ; $411a: $18 $0e

    nop                                           ; $411c: $00
    ld [bc], a                                    ; $411d: $02
    add b                                         ; $411e: $80
    add c                                         ; $411f: $81
    nop                                           ; $4120: $00
    inc bc                                        ; $4121: $03
    add b                                         ; $4122: $80
    add c                                         ; $4123: $81
    nop                                           ; $4124: $00
    ld [bc], a                                    ; $4125: $02
    add b                                         ; $4126: $80
    ld [bc], a                                    ; $4127: $02
    nop                                           ; $4128: $00
    add l                                         ; $4129: $85

jr_0f7_412a:
    add b                                         ; $412a: $80
    ld b, a                                       ; $412b: $47
    cp c                                          ; $412c: $b9

jr_0f7_412d:
    jr nc, jr_0f7_412d                            ; $412d: $30 $fe

    ld [bc], a                                    ; $412f: $02
    call c, Call_000_000e                         ; $4130: $dc $0e $00
    rst $38                                       ; $4133: $ff
    inc de                                        ; $4134: $13
    rlca                                          ; $4135: $07
    ld hl, sp+$07                                 ; $4136: $f8 $07
    ei                                            ; $4138: $fb
    ld b, $f1                                     ; $4139: $06 $f1
    push af                                       ; $413b: $f5
    db $ec                                        ; $413c: $ec
    db $fd                                        ; $413d: $fd
    ld a, [c]                                     ; $413e: $f2
    inc b                                         ; $413f: $04
    db $fc                                        ; $4140: $fc
    db $f4                                        ; $4141: $f4
    db $fc                                        ; $4142: $fc
    db $fc                                        ; $4143: $fc
    db $fc                                        ; $4144: $fc
    inc b                                         ; $4145: $04
    db $fc                                        ; $4146: $fc
    dec b                                         ; $4147: $05
    add e                                         ; $4148: $83
    nop                                           ; $4149: $00
    ld b, b                                       ; $414a: $40
    nop                                           ; $414b: $00
    ld [bc], a                                    ; $414c: $02
    ld b, b                                       ; $414d: $40
    sbc [hl]                                      ; $414e: $9e
    add b                                         ; $414f: $80
    ld b, b                                       ; $4150: $40
    and h                                         ; $4151: $a4
    ld b, b                                       ; $4152: $40
    and h                                         ; $4153: $a4
    ld b, b                                       ; $4154: $40
    inc h                                         ; $4155: $24
    ld b, b                                       ; $4156: $40
    ld b, h                                       ; $4157: $44
    inc b                                         ; $4158: $04
    ld c, d                                       ; $4159: $4a
    inc b                                         ; $415a: $04
    ld a, [bc]                                    ; $415b: $0a
    inc c                                         ; $415c: $0c
    ld a, [bc]                                    ; $415d: $0a
    ld [$000e], sp                                ; $415e: $08 $0e $00
    inc b                                         ; $4161: $04
    ld [bc], a                                    ; $4162: $02
    rlca                                          ; $4163: $07
    dec c                                         ; $4164: $0d
    ld c, [hl]                                    ; $4165: $4e
    add hl, de                                    ; $4166: $19
    ld e, [hl]                                    ; $4167: $5e
    inc l                                         ; $4168: $2c
    ld a, a                                       ; $4169: $7f
    nop                                           ; $416a: $00
    ld b, b                                       ; $416b: $40
    nop                                           ; $416c: $00
    ld [bc], a                                    ; $416d: $02
    ld b, b                                       ; $416e: $40
    adc [hl]                                      ; $416f: $8e
    add b                                         ; $4170: $80
    ld b, b                                       ; $4171: $40
    and b                                         ; $4172: $a0
    ld b, b                                       ; $4173: $40
    and b                                         ; $4174: $a0
    ld b, b                                       ; $4175: $40
    jr nz, jr_0f7_41b8                            ; $4176: $20 $40

jr_0f7_4178:
    ld b, d                                       ; $4178: $42
    nop                                           ; $4179: $00
    ld b, d                                       ; $417a: $42
    nop                                           ; $417b: $00
    ld [bc], a                                    ; $417c: $02
    nop                                           ; $417d: $00
    ld [bc], a                                    ; $417e: $02
    ld [bc], a                                    ; $417f: $02
    adc [hl]                                      ; $4180: $8e
    dec b                                         ; $4181: $05
    ld [bc], a                                    ; $4182: $02
    dec b                                         ; $4183: $05
    ld [bc], a                                    ; $4184: $02
    dec b                                         ; $4185: $05
    ld [bc], a                                    ; $4186: $02
    dec b                                         ; $4187: $05
    ld [bc], a                                    ; $4188: $02
    ld b, d                                       ; $4189: $42
    ld b, b                                       ; $418a: $40
    or b                                          ; $418b: $b0
    nop                                           ; $418c: $00
    inc b                                         ; $418d: $04
    nop                                           ; $418e: $00
    ld [bc], a                                    ; $418f: $02
    inc b                                         ; $4190: $04
    adc h                                         ; $4191: $8c
    ld [$0a04], sp                                ; $4192: $08 $04 $0a
    inc b                                         ; $4195: $04
    ld a, [bc]                                    ; $4196: $0a
    ld b, $22                                     ; $4197: $06 $22
    inc b                                         ; $4199: $04
    inc h                                         ; $419a: $24
    nop                                           ; $419b: $00
    inc h                                         ; $419c: $24
    nop                                           ; $419d: $00
    ld [bc], a                                    ; $419e: $02
    jr nz, @-$71                                  ; $419f: $20 $8d

    ld d, b                                       ; $41a1: $50
    jr nz, jr_0f7_41f4                            ; $41a2: $20 $50

    jr nz, jr_0f7_41f6                            ; $41a4: $20 $50

    jr nz, jr_0f7_4178                            ; $41a6: $20 $d0

    ld b, b                                       ; $41a8: $40
    xor b                                         ; $41a9: $a8
    adc b                                         ; $41aa: $88
    or $ac                                        ; $41ab: $f6 $ac
    db $d3                                        ; $41ad: $d3
    ld a, [bc]                                    ; $41ae: $0a
    nop                                           ; $41af: $00
    adc d                                         ; $41b0: $8a
    ld c, c                                       ; $41b1: $49
    halt                                          ; $41b2: $76
    ld e, $61                                     ; $41b3: $1e $61
    add [hl]                                      ; $41b5: $86
    ld sp, hl                                     ; $41b6: $f9
    ld d, c                                       ; $41b7: $51

jr_0f7_41b8:
    ld a, a                                       ; $41b8: $7f
    ld [hl], a                                    ; $41b9: $77
    ld a, a                                       ; $41ba: $7f
    ld [bc], a                                    ; $41bb: $02
    ld e, $0a                                     ; $41bc: $1e $0a
    nop                                           ; $41be: $00
    sub e                                         ; $41bf: $93
    jr nc, jr_0f7_420e                            ; $41c0: $30 $4c

    ld a, h                                       ; $41c2: $7c
    inc bc                                        ; $41c3: $03
    ld e, h                                       ; $41c4: $5c
    inc hl                                        ; $41c5: $23
    ld h, l                                       ; $41c6: $65
    dec de                                        ; $41c7: $1b
    ld l, c                                       ; $41c8: $69
    rra                                           ; $41c9: $1f
    add hl, de                                    ; $41ca: $19
    rst $38                                       ; $41cb: $ff
    ld [hl], $c9                                  ; $41cc: $36 $c9
    sbc [hl]                                      ; $41ce: $9e
    pop hl                                        ; $41cf: $e1
    rst $20                                       ; $41d0: $e7
    ld hl, sp+$28                                 ; $41d1: $f8 $28
    inc bc                                        ; $41d3: $03
    ccf                                           ; $41d4: $3f
    ld [bc], a                                    ; $41d5: $02
    jr jr_0f7_41ec                                ; $41d6: $18 $14

    nop                                           ; $41d8: $00
    adc d                                         ; $41d9: $8a
    ld a, [hl]                                    ; $41da: $7e
    add c                                         ; $41db: $81
    ld sp, hl                                     ; $41dc: $f9
    rlca                                          ; $41dd: $07
    db $e3                                        ; $41de: $e3
    rra                                           ; $41df: $1f

jr_0f7_41e0:
    ld c, [hl]                                    ; $41e0: $4e
    or d                                          ; $41e1: $b2
    jr nc, jr_0f7_41e0                            ; $41e2: $30 $fc

    ld [bc], a                                    ; $41e4: $02
    jr jr_0f7_41fb                                ; $41e5: $18 $14

    nop                                           ; $41e7: $00
    ld [bc], a                                    ; $41e8: $02
    ld bc, $0012                                  ; $41e9: $01 $12 $00

jr_0f7_41ec:
    rst $38                                       ; $41ec: $ff
    ld de, $f806                                  ; $41ed: $11 $06 $f8
    rlca                                          ; $41f0: $07
    ei                                            ; $41f1: $fb
    ld b, $ed                                     ; $41f2: $06 $ed

jr_0f7_41f4:
    or $e8                                        ; $41f4: $f6 $e8

jr_0f7_41f6:
    cp $ee                                        ; $41f6: $fe $ee
    inc bc                                        ; $41f8: $03
    ld hl, sp-$0b                                 ; $41f9: $f8 $f5

jr_0f7_41fb:
    ld hl, sp-$03                                 ; $41fb: $f8 $fd
    ld hl, sp+$05                                 ; $41fd: $f8 $05
    add e                                         ; $41ff: $83
    nop                                           ; $4200: $00

Jump_0f7_4201:
    add b                                         ; $4201: $80
    nop                                           ; $4202: $00
    ld [bc], a                                    ; $4203: $02
    add b                                         ; $4204: $80
    adc b                                         ; $4205: $88
    nop                                           ; $4206: $00
    add b                                         ; $4207: $80
    ld c, b                                       ; $4208: $48
    add b                                         ; $4209: $80
    ld c, b                                       ; $420a: $48
    nop                                           ; $420b: $00
    adc b                                         ; $420c: $88
    nop                                           ; $420d: $00

jr_0f7_420e:
    ld [bc], a                                    ; $420e: $02
    ld [$148b], sp                                ; $420f: $08 $8b $14
    ld [$0814], sp                                ; $4212: $08 $14 $08
    inc d                                         ; $4215: $14
    ld [$0014], sp                                ; $4216: $08 $14 $00
    ld [$0800], sp                                ; $4219: $08 $00 $08
    dec b                                         ; $421c: $05
    nop                                           ; $421d: $00
    add h                                         ; $421e: $84
    inc bc                                        ; $421f: $03
    nop                                           ; $4220: $00
    add b                                         ; $4221: $80

Call_0f7_4222:
    nop                                           ; $4222: $00
    ld [bc], a                                    ; $4223: $02
    add b                                         ; $4224: $80
    add a                                         ; $4225: $87
    nop                                           ; $4226: $00
    add b                                         ; $4227: $80
    ld b, b                                       ; $4228: $40
    add b                                         ; $4229: $80
    ld b, b                                       ; $422a: $40
    nop                                           ; $422b: $00
    add b                                         ; $422c: $80
    inc bc                                        ; $422d: $03
    nop                                           ; $422e: $00
    add [hl]                                      ; $422f: $86
    inc b                                         ; $4230: $04
    nop                                           ; $4231: $00
    inc b                                         ; $4232: $04
    nop                                           ; $4233: $00
    inc b                                         ; $4234: $04
    nop                                           ; $4235: $00
    ld [bc], a                                    ; $4236: $02
    inc b                                         ; $4237: $04
    adc h                                         ; $4238: $8c
    ld a, [bc]                                    ; $4239: $0a
    inc b                                         ; $423a: $04
    ld a, [bc]                                    ; $423b: $0a
    inc b                                         ; $423c: $04
    ld a, [bc]                                    ; $423d: $0a
    inc b                                         ; $423e: $04
    ld a, [bc]                                    ; $423f: $0a
    nop                                           ; $4240: $00
    dec b                                         ; $4241: $05
    nop                                           ; $4242: $00
    ld [bc], a                                    ; $4243: $02
    nop                                           ; $4244: $00
    ld [bc], a                                    ; $4245: $02
    ld [bc], a                                    ; $4246: $02
    adc h                                         ; $4247: $8c
    nop                                           ; $4248: $00
    ld [bc], a                                    ; $4249: $02
    ld bc, $0102                                  ; $424a: $01 $02 $01
    nop                                           ; $424d: $00
    ld [de], a                                    ; $424e: $12
    nop                                           ; $424f: $00
    stop                                          ; $4250: $10 $00
    stop                                          ; $4252: $10 $00
    ld [bc], a                                    ; $4254: $02
    db $10                                        ; $4255: $10
    adc l                                         ; $4256: $8d
    ld [$a810], sp                                ; $4257: $08 $10 $a8
    db $10                                        ; $425a: $10
    jr z, jr_0f7_426d                             ; $425b: $28 $10

    jr z, jr_0f7_425f                             ; $425d: $28 $00

jr_0f7_425f:
    stop                                          ; $425f: $10 $00
    stop                                          ; $4261: $10 $00
    and b                                         ; $4263: $a0
    dec bc                                        ; $4264: $0b
    nop                                           ; $4265: $00
    adc a                                         ; $4266: $8f
    inc bc                                        ; $4267: $03
    ld [bc], a                                    ; $4268: $02
    dec bc                                        ; $4269: $0b
    rrca                                          ; $426a: $0f
    cpl                                           ; $426b: $2f
    dec b                                         ; $426c: $05

jr_0f7_426d:
    ccf                                           ; $426d: $3f
    ld e, c                                       ; $426e: $59
    ld h, a                                       ; $426f: $67
    inc a                                         ; $4270: $3c
    jp $ff83                                      ; $4271: $c3 $83 $ff


    di                                            ; $4274: $f3
    rst $38                                       ; $4275: $ff
    ld [bc], a                                    ; $4276: $02
    ld a, h                                       ; $4277: $7c
    ld [bc], a                                    ; $4278: $02
    jr c, jr_0f7_4282                             ; $4279: $38 $07

    nop                                           ; $427b: $00
    sub a                                         ; $427c: $97
    jr nc, jr_0f7_429f                            ; $427d: $30 $20

    ld e, b                                       ; $427f: $58
    ld a, b                                       ; $4280: $78
    inc b                                         ; $4281: $04

jr_0f7_4282:
    call c, $e220                                 ; $4282: $dc $20 $e2
    dec e                                         ; $4285: $1d
    ld l, [hl]                                    ; $4286: $6e
    sbc a                                         ; $4287: $9f

Call_0f7_4288:
    sub [hl]                                      ; $4288: $96
    rst $38                                       ; $4289: $ff
    ld c, e                                       ; $428a: $4b
    or [hl]                                       ; $428b: $b6
    sbc a                                         ; $428c: $9f
    ldh [$7f], a                                  ; $428d: $e0 $7f
    add b                                         ; $428f: $80
    and [hl]                                      ; $4290: $a6
    reti                                          ; $4291: $d9


    ld e, c                                       ; $4292: $59
    ld a, a                                       ; $4293: $7f
    ld [bc], a                                    ; $4294: $02
    jr nc, jr_0f7_42a5                            ; $4295: $30 $0e

    nop                                           ; $4297: $00
    sub d                                         ; $4298: $92
    add b                                         ; $4299: $80
    ld d, b                                       ; $429a: $50
    ret nc                                        ; $429b: $d0

    inc l                                         ; $429c: $2c
    ld a, h                                       ; $429d: $7c
    add d                                         ; $429e: $82

jr_0f7_429f:
    sbc $21                                       ; $429f: $de $21
    ld a, [de]                                    ; $42a1: $1a
    push hl                                       ; $42a2: $e5
    push de                                       ; $42a3: $d5
    cpl                                           ; $42a4: $2f

jr_0f7_42a5:
    ld l, [hl]                                    ; $42a5: $6e
    sbc [hl]                                      ; $42a6: $9e
    sbc h                                         ; $42a7: $9c
    db $ec                                        ; $42a8: $ec
    ret nz                                        ; $42a9: $c0

    ldh a, [rSC]                                  ; $42aa: $f0 $02
    jr nz, @+$01                                  ; $42ac: $20 $ff

    inc de                                        ; $42ae: $13
    rlca                                          ; $42af: $07
    ld hl, sp+$07                                 ; $42b0: $f8 $07
    ei                                            ; $42b2: $fb
    ld b, $eb                                     ; $42b3: $06 $eb
    push af                                       ; $42b5: $f5
    and $fd                                       ; $42b6: $e6 $fd
    db $ec                                        ; $42b8: $ec
    inc bc                                        ; $42b9: $03
    db $fd                                        ; $42ba: $fd
    push af                                       ; $42bb: $f5
    ei                                            ; $42bc: $fb
    db $fd                                        ; $42bd: $fd
    db $fd                                        ; $42be: $fd
    dec b                                         ; $42bf: $05
    ld [bc], a                                    ; $42c0: $02
    ld b, $81                                     ; $42c1: $06 $81
    nop                                           ; $42c3: $00
    ld [bc], a                                    ; $42c4: $02
    ld b, b                                       ; $42c5: $40
    adc h                                         ; $42c6: $8c
    nop                                           ; $42c7: $00
    ld b, b                                       ; $42c8: $40
    jr nz, jr_0f7_430b                            ; $42c9: $20 $40

    inc h                                         ; $42cb: $24
    nop                                           ; $42cc: $00
    ld b, h                                       ; $42cd: $44
    inc b                                         ; $42ce: $04
    ld [bc], a                                    ; $42cf: $02
    inc b                                         ; $42d0: $04
    ld [bc], a                                    ; $42d1: $02
    inc b                                         ; $42d2: $04
    ld [bc], a                                    ; $42d3: $02
    nop                                           ; $42d4: $00
    add c                                         ; $42d5: $81
    inc b                                         ; $42d6: $04
    rrca                                          ; $42d7: $0f
    nop                                           ; $42d8: $00
    ld [bc], a                                    ; $42d9: $02
    ld b, b                                       ; $42da: $40
    add a                                         ; $42db: $87
    nop                                           ; $42dc: $00
    ld b, b                                       ; $42dd: $40
    jr nz, jr_0f7_4320                            ; $42de: $20 $40

    jr nz, jr_0f7_42e2                            ; $42e0: $20 $00

jr_0f7_42e2:
    ld b, b                                       ; $42e2: $40
    rlca                                          ; $42e3: $07
    nop                                           ; $42e4: $00
    add d                                         ; $42e5: $82
    ld [bc], a                                    ; $42e6: $02
    nop                                           ; $42e7: $00
    ld [bc], a                                    ; $42e8: $02
    ld [bc], a                                    ; $42e9: $02
    add h                                         ; $42ea: $84
    ld bc, $0102                                  ; $42eb: $01 $02 $01
    ld [bc], a                                    ; $42ee: $02
    ld [bc], a                                    ; $42ef: $02
    nop                                           ; $42f0: $00
    add c                                         ; $42f1: $81
    ld [bc], a                                    ; $42f2: $02
    dec b                                         ; $42f3: $05
    nop                                           ; $42f4: $00
    ld [bc], a                                    ; $42f5: $02
    ld [bc], a                                    ; $42f6: $02
    add a                                         ; $42f7: $87
    nop                                           ; $42f8: $00
    ld [bc], a                                    ; $42f9: $02
    ld bc, $0102                                  ; $42fa: $01 $02 $01
    nop                                           ; $42fd: $00
    ld [bc], a                                    ; $42fe: $02
    rlca                                          ; $42ff: $07
    nop                                           ; $4300: $00
    add d                                         ; $4301: $82
    stop                                          ; $4302: $10 $00
    ld [bc], a                                    ; $4304: $02
    db $10                                        ; $4305: $10
    add h                                         ; $4306: $84
    ld [$0810], sp                                ; $4307: $08 $10 $08
    db $10                                        ; $430a: $10

jr_0f7_430b:
    ld [bc], a                                    ; $430b: $02
    nop                                           ; $430c: $00
    add c                                         ; $430d: $81
    db $10                                        ; $430e: $10
    inc b                                         ; $430f: $04
    nop                                           ; $4310: $00
    ld [bc], a                                    ; $4311: $02
    ld bc, $0690                                  ; $4312: $01 $90 $06
    rlca                                          ; $4315: $07

jr_0f7_4316:
    inc c                                         ; $4316: $0c
    rrca                                          ; $4317: $0f
    ld d, $3f                                     ; $4318: $16 $3f
    ld c, c                                       ; $431a: $49
    halt                                          ; $431b: $76
    ld e, $61                                     ; $431c: $1e $61
    add [hl]                                      ; $431e: $86
    ld sp, hl                                     ; $431f: $f9

jr_0f7_4320:
    ld d, c                                       ; $4320: $51
    ld a, a                                       ; $4321: $7f
    ld [hl], a                                    ; $4322: $77
    ld a, a                                       ; $4323: $7f
    ld [bc], a                                    ; $4324: $02
    ld e, $0c                                     ; $4325: $1e $0c
    nop                                           ; $4327: $00
    sub l                                         ; $4328: $95
    jr nz, jr_0f7_4343                            ; $4329: $20 $18

    jr nc, jr_0f7_437c                            ; $432b: $30 $4f

    ld a, [hl]                                    ; $432d: $7e
    add c                                         ; $432e: $81
    call c, $e523                                 ; $432f: $dc $23 $e5
    dec de                                        ; $4332: $1b
    ld l, c                                       ; $4333: $69
    sbc a                                         ; $4334: $9f
    add hl, de                                    ; $4335: $19
    rst $38                                       ; $4336: $ff
    ld [hl], $c9                                  ; $4337: $36 $c9
    sbc [hl]                                      ; $4339: $9e
    pop hl                                        ; $433a: $e1
    rst $20                                       ; $433b: $e7
    ld hl, sp+$28                                 ; $433c: $f8 $28
    inc bc                                        ; $433e: $03
    ccf                                           ; $433f: $3f
    ld [bc], a                                    ; $4340: $02
    jr jr_0f7_434a                                ; $4341: $18 $07

jr_0f7_4343:
    nop                                           ; $4343: $00
    sub e                                         ; $4344: $93
    add b                                         ; $4345: $80
    nop                                           ; $4346: $00
    ret nz                                        ; $4347: $c0

    ld b, b                                       ; $4348: $40
    and b                                         ; $4349: $a0

jr_0f7_434a:
    add b                                         ; $434a: $80
    db $fc                                        ; $434b: $fc
    xor h                                         ; $434c: $ac
    db $d3                                        ; $434d: $d3
    ld a, [hl]                                    ; $434e: $7e
    add c                                         ; $434f: $81
    ld sp, hl                                     ; $4350: $f9
    rlca                                          ; $4351: $07
    db $e3                                        ; $4352: $e3
    rra                                           ; $4353: $1f

jr_0f7_4354:
    ld c, [hl]                                    ; $4354: $4e
    or d                                          ; $4355: $b2
    jr nc, jr_0f7_4354                            ; $4356: $30 $fc

    ld [bc], a                                    ; $4358: $02
    jr jr_0f7_4365                                ; $4359: $18 $0a

    nop                                           ; $435b: $00
    ld [bc], a                                    ; $435c: $02
    ld bc, $001e                                  ; $435d: $01 $1e $00
    rst $38                                       ; $4360: $ff
    rlca                                          ; $4361: $07
    ld bc, $08f8                                  ; $4362: $01 $f8 $08

jr_0f7_4365:
    rst $30                                       ; $4365: $f7
    add hl, bc                                    ; $4366: $09
    db $fd                                        ; $4367: $fd
    db $fc                                        ; $4368: $fc
    ld [bc], a                                    ; $4369: $02
    ld [$1c02], sp                                ; $436a: $08 $02 $1c
    add [hl]                                      ; $436d: $86
    ld [hl+], a                                   ; $436e: $22
    ld a, $6f                                     ; $436f: $3e $6f
    ld [hl], e                                    ; $4371: $73
    ld h, $3e                                     ; $4372: $26 $3e
    ld [bc], a                                    ; $4374: $02
    inc e                                         ; $4375: $1c
    ld [bc], a                                    ; $4376: $02
    ld [$0012], sp                                ; $4377: $08 $12 $00
    rst $38                                       ; $437a: $ff
    add hl, bc                                    ; $437b: $09

jr_0f7_437c:
    ld [bc], a                                    ; $437c: $02
    ld hl, sp+$08                                 ; $437d: $f8 $08
    rst $30                                       ; $437f: $f7
    add hl, bc                                    ; $4380: $09
    db $fc                                        ; $4381: $fc
    db $fc                                        ; $4382: $fc
    db $fc                                        ; $4383: $fc
    db $fd                                        ; $4384: $fd
    ld [bc], a                                    ; $4385: $02
    jr z, jr_0f7_4316                             ; $4386: $28 $8e

    ld [hl], $3e                                  ; $4388: $36 $3e
    ld l, e                                       ; $438a: $6b
    ld [hl], a                                    ; $438b: $77
    sbc l                                         ; $438c: $9d
    db $e3                                        ; $438d: $e3
    ld e, c                                       ; $438e: $59
    ld h, a                                       ; $438f: $67
    or h                                          ; $4390: $b4
    bit 0, e                                      ; $4391: $cb $43
    ld a, a                                       ; $4393: $7f
    ld l, $3e                                     ; $4394: $2e $3e
    ld [bc], a                                    ; $4396: $02
    inc h                                         ; $4397: $24
    inc d                                         ; $4398: $14
    nop                                           ; $4399: $00
    ld [bc], a                                    ; $439a: $02
    ld bc, $0004                                  ; $439b: $01 $04 $00
    ld [bc], a                                    ; $439e: $02
    ld bc, $0012                                  ; $439f: $01 $12 $00
    rst $38                                       ; $43a2: $ff
    dec bc                                        ; $43a3: $0b
    inc bc                                        ; $43a4: $03
    ld hl, sp+$08                                 ; $43a5: $f8 $08
    rst $30                                       ; $43a7: $f7
    add hl, bc                                    ; $43a8: $09
    rst $30                                       ; $43a9: $f7
    ld hl, sp-$05                                 ; $43aa: $f8 $fb
    nop                                           ; $43ac: $00
    ld [bc], a                                    ; $43ad: $02
    ld bc, $029c                                  ; $43ae: $01 $9c $02
    ld c, $37                                     ; $43b1: $0e $37
    add hl, hl                                    ; $43b3: $29
    ld b, b                                       ; $43b4: $40

jr_0f7_43b5:
    ld [hl], b                                    ; $43b5: $70
    ld b, b                                       ; $43b6: $40
    nop                                           ; $43b7: $00
    ld [bc], a                                    ; $43b8: $02
    jp nz, $8706                                  ; $43b9: $c2 $06 $87

    ld a, [bc]                                    ; $43bc: $0a
    adc a                                         ; $43bd: $8f
    sbc l                                         ; $43be: $9d
    sbc [hl]                                      ; $43bf: $9e
    dec bc                                        ; $43c0: $0b
    inc c                                         ; $43c1: $0c
    inc de                                        ; $43c2: $13
    inc e                                         ; $43c3: $1c
    ld a, [bc]                                    ; $43c4: $0a
    dec c                                         ; $43c5: $0d
    jr jr_0f7_43e7                                ; $43c6: $18 $1f

    dec c                                         ; $43c8: $0d
    rrca                                          ; $43c9: $0f
    ld b, $07                                     ; $43ca: $06 $07
    ld [bc], a                                    ; $43cc: $02
    ld [bc], a                                    ; $43cd: $02
    ld [bc], a                                    ; $43ce: $02
    nop                                           ; $43cf: $00
    ld [bc], a                                    ; $43d0: $02
    ret nz                                        ; $43d1: $c0

    sbc h                                         ; $43d2: $9c
    or b                                          ; $43d3: $b0
    ldh a, [$58]                                  ; $43d4: $f0 $58
    ld hl, sp-$44                                 ; $43d6: $f8 $bc
    ld a, h                                       ; $43d8: $7c
    db $e4                                        ; $43d9: $e4
    inc e                                         ; $43da: $1c

jr_0f7_43db:
    jr nz, jr_0f7_43b5                            ; $43db: $20 $d8

    inc [hl]                                      ; $43dd: $34
    call c, Call_000_3ccc                         ; $43de: $dc $cc $3c
    jr c, jr_0f7_43db                             ; $43e1: $38 $f8

    or b                                          ; $43e3: $b0
    ldh a, [$a1]                                  ; $43e4: $f0 $a1
    and b                                         ; $43e6: $a0

jr_0f7_43e7:
    nop                                           ; $43e7: $00
    ld bc, $0503                                  ; $43e8: $01 $03 $05
    ld a, d                                       ; $43eb: $7a
    ld b, [hl]                                    ; $43ec: $46
    jr z, jr_0f7_4427                             ; $43ed: $28 $38

    ld [bc], a                                    ; $43ef: $02
    nop                                           ; $43f0: $00
    ld [bc], a                                    ; $43f1: $02
    ld bc, $0086                                  ; $43f2: $01 $86 $00
    ld bc, $0100                                  ; $43f5: $01 $00 $01
    nop                                           ; $43f8: $00
    ld bc, $0018                                  ; $43f9: $01 $18 $00
    rst $38                                       ; $43fc: $ff
    dec c                                         ; $43fd: $0d
    inc b                                         ; $43fe: $04
    ld hl, sp+$08                                 ; $43ff: $f8 $08
    rst $30                                       ; $4401: $f7
    add hl, bc                                    ; $4402: $09
    or $fa                                        ; $4403: $f6 $fa
    or $02                                        ; $4405: $f6 $02
    ld b, $f7                                     ; $4407: $06 $f7
    ld b, $fc                                     ; $4409: $06 $fc
    add h                                         ; $440b: $84
    nop                                           ; $440c: $00
    rrca                                          ; $440d: $0f
    nop                                           ; $440e: $00
    jr nz, jr_0f7_4415                            ; $440f: $20 $04

    nop                                           ; $4411: $00
    ld [bc], a                                    ; $4412: $02
    dec bc                                        ; $4413: $0b
    ld [bc], a                                    ; $4414: $02

jr_0f7_4415:
    rra                                           ; $4415: $1f
    sbc [hl]                                      ; $4416: $9e
    ld a, [hl-]                                   ; $4417: $3a
    ccf                                           ; $4418: $3f
    ld d, b                                       ; $4419: $50
    ld a, a                                       ; $441a: $7f
    rst $20                                       ; $441b: $e7
    ld hl, sp+$6e                                 ; $441c: $f8 $6e
    ld [hl], c                                    ; $441e: $71
    xor h                                         ; $441f: $ac
    di                                            ; $4420: $f3
    ld c, [hl]                                    ; $4421: $4e
    ld [hl], c                                    ; $4422: $71
    rst $20                                       ; $4423: $e7
    ld hl, sp+$50                                 ; $4424: $f8 $50
    ld a, a                                       ; $4426: $7f

jr_0f7_4427:
    dec [hl]                                      ; $4427: $35
    ccf                                           ; $4428: $3f
    ld a, [de]                                    ; $4429: $1a
    rra                                           ; $442a: $1f
    and b                                         ; $442b: $a0
    ldh [$4c], a                                  ; $442c: $e0 $4c
    inc a                                         ; $442e: $3c
    ld [de], a                                    ; $442f: $12
    ld c, $01                                     ; $4430: $0e $01
    rlca                                          ; $4432: $07
    ld [bc], a                                    ; $4433: $02
    ld bc, $c002                                  ; $4434: $01 $02 $c0
    sub b                                         ; $4437: $90
    ld h, b                                       ; $4438: $60
    ldh [$b0], a                                  ; $4439: $e0 $b0
    ldh a, [$38]                                  ; $443b: $f0 $38
    ld hl, sp-$68                                 ; $443d: $f8 $98
    ld a, b                                       ; $443f: $78
    or b                                          ; $4440: $b0
    ld [hl], b                                    ; $4441: $70
    ld [$58f8], sp                                ; $4442: $08 $f8 $58
    ld hl, sp+$30                                 ; $4445: $f8 $30
    ldh a, [rSC]                                  ; $4447: $f0 $02
    ldh [rSC], a                                  ; $4449: $e0 $02
    ret nz                                        ; $444b: $c0

    adc d                                         ; $444c: $8a
    ld b, c                                       ; $444d: $41
    add c                                         ; $444e: $81
    and b                                         ; $444f: $a0
    ret nz                                        ; $4450: $c0

    ld d, b                                       ; $4451: $50
    ld h, b                                       ; $4452: $60
    inc h                                         ; $4453: $24
    ld a, [hl-]                                   ; $4454: $3a
    inc c                                         ; $4455: $0c
    rrca                                          ; $4456: $0f
    ld d, $00                                     ; $4457: $16 $00
    ld [bc], a                                    ; $4459: $02
    ld a, [bc]                                    ; $445a: $0a
    dec b                                         ; $445b: $05
    nop                                           ; $445c: $00
    add e                                         ; $445d: $83
    ld bc, $1e00                                  ; $445e: $01 $00 $1e
    ld d, $00                                     ; $4461: $16 $00
    rst $38                                       ; $4463: $ff
    inc de                                        ; $4464: $13
    rlca                                          ; $4465: $07
    ld hl, sp+$08                                 ; $4466: $f8 $08
    rst $30                                       ; $4468: $f7
    add hl, bc                                    ; $4469: $09
    db $f4                                        ; $446a: $f4
    ld a, [c]                                     ; $446b: $f2
    db $f4                                        ; $446c: $f4
    ld a, [$02f9]                                 ; $446d: $fa $f9 $02
    ld a, [$0407]                                 ; $4470: $fa $07 $04
    db $f4                                        ; $4473: $f4
    inc b                                         ; $4474: $04
    ld a, [$0404]                                 ; $4475: $fa $04 $04
    ld [bc], a                                    ; $4478: $02
    dec b                                         ; $4479: $05
    sbc [hl]                                      ; $447a: $9e
    ld [$160f], sp                                ; $447b: $08 $0f $16
    add hl, de                                    ; $447e: $19
    inc l                                         ; $447f: $2c
    inc sp                                        ; $4480: $33
    ld d, h                                       ; $4481: $54
    ld l, d                                       ; $4482: $6a
    ld c, d                                       ; $4483: $4a
    halt                                          ; $4484: $76
    ld [hl], b                                    ; $4485: $70
    ld c, h                                       ; $4486: $4c
    and b                                         ; $4487: $a0
    ret c                                         ; $4488: $d8

    jr nc, @+$4a                                  ; $4489: $30 $48

    ldh [$90], a                                  ; $448b: $e0 $90
    ret nz                                        ; $448d: $c0

    and b                                         ; $448e: $a0
    ld hl, $c151                                  ; $448f: $21 $51 $c1
    or c                                          ; $4492: $b1
    and b                                         ; $4493: $a0
    ret nz                                        ; $4494: $c0

    ld h, c                                       ; $4495: $61
    ld d, c                                       ; $4496: $51
    ld b, b                                       ; $4497: $40
    ld [hl], b                                    ; $4498: $70
    ld [bc], a                                    ; $4499: $02
    add b                                         ; $449a: $80

jr_0f7_449b:
    adc b                                         ; $449b: $88
    nop                                           ; $449c: $00
    ret nz                                        ; $449d: $c0

    nop                                           ; $449e: $00
    add b                                         ; $449f: $80
    nop                                           ; $44a0: $00
    ret nz                                        ; $44a1: $c0

    nop                                           ; $44a2: $00
    add b                                         ; $44a3: $80
    ld [bc], a                                    ; $44a4: $02
    ld a, [bc]                                    ; $44a5: $0a
    sub h                                         ; $44a6: $94
    ld sp, $7c3f                                  ; $44a7: $31 $3f $7c
    ld a, a                                       ; $44aa: $7f
    push bc                                       ; $44ab: $c5
    ld a, [$e09f]                                 ; $44ac: $fa $9f $e0
    ld e, a                                       ; $44af: $5f
    ldh [$39], a                                  ; $44b0: $e0 $39
    add $92                                       ; $44b2: $c6 $92
    db $ed                                        ; $44b4: $ed
    rst $30                                       ; $44b5: $f7
    ret z                                         ; $44b6: $c8

    ld d, a                                       ; $44b7: $57
    add sp, -$16                                  ; $44b8: $e8 $ea
    push af                                       ; $44ba: $f5
    ld [bc], a                                    ; $44bb: $02
    add d                                         ; $44bc: $82
    sub [hl]                                      ; $44bd: $96
    ldh [$e1], a                                  ; $44be: $e0 $e1
    or b                                          ; $44c0: $b0
    ldh a, [rNR23]                                ; $44c1: $f0 $18
    ld hl, sp-$28                                 ; $44c3: $f8 $d8
    jr c, jr_0f7_449b                             ; $44c5: $38 $d4

    inc a                                         ; $44c7: $3c
    db $f4                                        ; $44c8: $f4
    inc e                                         ; $44c9: $1c
    ret nc                                        ; $44ca: $d0

    jr c, @-$1a                                   ; $44cb: $38 $e4

    inc e                                         ; $44cd: $1c
    call nc, $a83c                                ; $44ce: $d4 $3c $a8
    ld a, b                                       ; $44d1: $78
    jr @-$06                                      ; $44d2: $18 $f8

    ld [bc], a                                    ; $44d4: $02
    ldh a, [$86]                                  ; $44d5: $f0 $86
    ld h, c                                       ; $44d7: $61
    pop hl                                        ; $44d8: $e1
    add b                                         ; $44d9: $80
    add e                                         ; $44da: $83
    ld bc, $020a                                  ; $44db: $01 $0a $02
    db $10                                        ; $44de: $10
    adc c                                         ; $44df: $89
    ld [$0418], sp                                ; $44e0: $08 $18 $04
    inc e                                         ; $44e3: $1c
    ld [bc], a                                    ; $44e4: $02
    ld c, $06                                     ; $44e5: $0e $06
    ld a, [bc]                                    ; $44e7: $0a
    dec b                                         ; $44e8: $05
    ld [bc], a                                    ; $44e9: $02
    inc bc                                        ; $44ea: $03
    add h                                         ; $44eb: $84
    dec c                                         ; $44ec: $0d
    inc b                                         ; $44ed: $04
    ld a, [bc]                                    ; $44ee: $0a
    inc bc                                        ; $44ef: $03
    ld [bc], a                                    ; $44f0: $02
    dec b                                         ; $44f1: $05
    sub e                                         ; $44f2: $93
    dec bc                                        ; $44f3: $0b
    ld [$0516], sp                                ; $44f4: $08 $16 $05
    dec de                                        ; $44f7: $1b
    ld c, $12                                     ; $44f8: $0e $12
    db $10                                        ; $44fa: $10
    inc c                                         ; $44fb: $0c
    ld a, [bc]                                    ; $44fc: $0a
    ld d, $34                                     ; $44fd: $16 $34
    call z, $a3c3                                 ; $44ff: $cc $c3 $a3
    ld b, c                                       ; $4502: $41
    ld h, c                                       ; $4503: $61
    jr nz, jr_0f7_4536                            ; $4504: $20 $30

    ld [bc], a                                    ; $4506: $02
    jr jr_0f7_450b                                ; $4507: $18 $02

    inc b                                         ; $4509: $04
    rla                                           ; $450a: $17

jr_0f7_450b:
    nop                                           ; $450b: $00
    add l                                         ; $450c: $85
    ccf                                           ; $450d: $3f
    add hl, hl                                    ; $450e: $29
    ccf                                           ; $450f: $3f
    inc sp                                        ; $4510: $33
    ccf                                           ; $4511: $3f
    ld [bc], a                                    ; $4512: $02
    dec b                                         ; $4513: $05
    inc hl                                        ; $4514: $23
    nop                                           ; $4515: $00
    add l                                         ; $4516: $85
    ld h, b                                       ; $4517: $60
    dec c                                         ; $4518: $0d
    inc sp                                        ; $4519: $33
    ld d, d                                       ; $451a: $52
    ld a, [hl]                                    ; $451b: $7e
    ld [bc], a                                    ; $451c: $02
    inc [hl]                                      ; $451d: $34
    ld c, $00                                     ; $451e: $0e $00
    rst $38                                       ; $4520: $ff
    ld de, $f806                                  ; $4521: $11 $06 $f8
    ld [$09f7], sp                                ; $4524: $08 $f7 $09
    di                                            ; $4527: $f3
    db $f4                                        ; $4528: $f4
    ld a, [c]                                     ; $4529: $f2
    db $fc                                        ; $452a: $fc
    db $f4                                        ; $452b: $f4
    inc b                                         ; $452c: $04
    nop                                           ; $452d: $00
    dec b                                         ; $452e: $05
    ld [bc], a                                    ; $452f: $02
    ld a, [$fd02]                                 ; $4530: $fa $02 $fd
    ld [bc], a                                    ; $4533: $02
    inc bc                                        ; $4534: $03
    sbc d                                         ; $4535: $9a

jr_0f7_4536:
    inc b                                         ; $4536: $04
    rlca                                          ; $4537: $07
    dec bc                                        ; $4538: $0b
    inc c                                         ; $4539: $0c
    ld d, $19                                     ; $453a: $16 $19
    dec bc                                        ; $453c: $0b
    dec d                                         ; $453d: $15
    inc l                                         ; $453e: $2c
    ld [hl-], a                                   ; $453f: $32
    ld d, b                                       ; $4540: $50
    ld l, h                                       ; $4541: $6c
    ld h, b                                       ; $4542: $60
    ld d, b                                       ; $4543: $50
    and c                                         ; $4544: $a1
    pop de                                        ; $4545: $d1
    inc bc                                        ; $4546: $03
    ld h, e                                       ; $4547: $63
    add d                                         ; $4548: $82
    jp $c301                                      ; $4549: $c3 $01 $c3


    add h                                         ; $454c: $84
    add a                                         ; $454d: $87
    add [hl]                                      ; $454e: $86
    rst $00                                       ; $454f: $c7
    ld [bc], a                                    ; $4550: $02
    ld b, e                                       ; $4551: $43
    add d                                         ; $4552: $82
    ld b, l                                       ; $4553: $45
    ld b, a                                       ; $4554: $47
    ld [bc], a                                    ; $4555: $02
    jp c, Jump_000_138a                           ; $4556: $da $8a $13

    db $ed                                        ; $4559: $ed
    xor h                                         ; $455a: $ac
    ld d, e                                       ; $455b: $53
    ldh a, [rIF]                                  ; $455c: $f0 $0f
    add b                                         ; $455e: $80
    ld l, l                                       ; $455f: $6d
    nop                                           ; $4560: $00
    add b                                         ; $4561: $80
    ld [bc], a                                    ; $4562: $02
    nop                                           ; $4563: $00
    ld [bc], a                                    ; $4564: $02
    ld a, [hl+]                                   ; $4565: $2a
    sub h                                         ; $4566: $94
    rst $00                                       ; $4567: $c7
    rst $38                                       ; $4568: $ff
    ld a, [c]                                     ; $4569: $f2
    rst $38                                       ; $456a: $ff
    ld e, h                                       ; $456b: $5c
    db $e3                                        ; $456c: $e3
    ccf                                           ; $456d: $3f
    ret nz                                        ; $456e: $c0

    ld b, a                                       ; $456f: $47
    cp b                                          ; $4570: $b8
    inc sp                                        ; $4571: $33
    call z, $847b                                 ; $4572: $cc $7b $84
    scf                                           ; $4575: $37
    ret z                                         ; $4576: $c8

    nop                                           ; $4577: $00
    add b                                         ; $4578: $80
    nop                                           ; $4579: $00
    add b                                         ; $457a: $80
    ld [$0200], sp                                ; $457b: $08 $00 $02
    add b                                         ; $457e: $80
    ld [bc], a                                    ; $457f: $02
    ret nz                                        ; $4580: $c0

    sub b                                         ; $4581: $90
    ld h, b                                       ; $4582: $60
    ldh [$60], a                                  ; $4583: $e0 $60
    ldh [rHDMA1], a                               ; $4585: $e0 $51
    pop af                                        ; $4587: $f1
    ret nc                                        ; $4588: $d0

    ld [hl], b                                    ; $4589: $70
    ld b, b                                       ; $458a: $40
    pop hl                                        ; $458b: $e1
    sub b                                         ; $458c: $90
    ld [hl], b                                    ; $458d: $70
    db $10                                        ; $458e: $10
    pop af                                        ; $458f: $f1
    and b                                         ; $4590: $a0
    pop hl                                        ; $4591: $e1
    inc b                                         ; $4592: $04
    ld bc, $0081                                  ; $4593: $01 $81 $00
    inc bc                                        ; $4596: $03
    ld bc, $c092                                  ; $4597: $01 $92 $c0
    add $85                                       ; $459a: $c6 $85
    adc e                                         ; $459c: $8b
    ld [bc], a                                    ; $459d: $02
    ld c, $2a                                     ; $459e: $0e $2a
    ld [hl], $14                                  ; $45a0: $36 $14
    ld l, h                                       ; $45a2: $6c
    ld d, b                                       ; $45a3: $50
    xor b                                         ; $45a4: $a8
    ld l, b                                       ; $45a5: $68
    sbc b                                         ; $45a6: $98
    ret nc                                        ; $45a7: $d0

    jr nc, @+$22                                  ; $45a8: $30 $20

    ldh [rSC], a                                  ; $45aa: $e0 $02
    add b                                         ; $45ac: $80
    inc b                                         ; $45ad: $04
    nop                                           ; $45ae: $00
    adc d                                         ; $45af: $8a
    rra                                           ; $45b0: $1f
    jr nz, @-$10                                  ; $45b1: $20 $ee

    pop af                                        ; $45b3: $f1
    ret nz                                        ; $45b4: $c0

    rst $38                                       ; $45b5: $ff
    ld l, c                                       ; $45b6: $69
    ld a, a                                       ; $45b7: $7f
    inc sp                                        ; $45b8: $33
    ccf                                           ; $45b9: $3f
    ld [bc], a                                    ; $45ba: $02
    dec b                                         ; $45bb: $05
    inc b                                         ; $45bc: $04
    nop                                           ; $45bd: $00

jr_0f7_45be:
    adc b                                         ; $45be: $88
    ld [bc], a                                    ; $45bf: $02
    ld d, $18                                     ; $45c0: $16 $18
    daa                                           ; $45c2: $27
    inc e                                         ; $45c3: $1c
    inc hl                                        ; $45c4: $23
    add hl, de                                    ; $45c5: $19
    ld d, $02                                     ; $45c6: $16 $02
    dec bc                                        ; $45c8: $0b
    ld b, $00                                     ; $45c9: $06 $00
    add l                                         ; $45cb: $85
    ld b, $00                                     ; $45cc: $06 $00
    inc b                                         ; $45ce: $04
    ld [bc], a                                    ; $45cf: $02
    nop                                           ; $45d0: $00

jr_0f7_45d1:
    inc bc                                        ; $45d1: $03
    rlca                                          ; $45d2: $07
    add d                                         ; $45d3: $82
    inc bc                                        ; $45d4: $03
    rlca                                          ; $45d5: $07
    ld [bc], a                                    ; $45d6: $02
    inc b                                         ; $45d7: $04
    inc bc                                        ; $45d8: $03
    nop                                           ; $45d9: $00
    ld [bc], a                                    ; $45da: $02
    ld bc, $0687                                  ; $45db: $01 $87 $06
    rlca                                          ; $45de: $07
    nop                                           ; $45df: $00
    dec b                                         ; $45e0: $05
    ld [bc], a                                    ; $45e1: $02
    nop                                           ; $45e2: $00
    rlca                                          ; $45e3: $07
    ld [bc], a                                    ; $45e4: $02
    inc bc                                        ; $45e5: $03
    ld b, $00                                     ; $45e6: $06 $00
    rst $38                                       ; $45e8: $ff
    ld de, $f806                                  ; $45e9: $11 $06 $f8
    ld [$09f7], sp                                ; $45ec: $08 $f7 $09
    di                                            ; $45ef: $f3
    rst $30                                       ; $45f0: $f7
    ld a, [c]                                     ; $45f1: $f2
    rst $38                                       ; $45f2: $ff
    di                                            ; $45f3: $f3
    dec b                                         ; $45f4: $05
    ld [bc], a                                    ; $45f5: $02
    db $f4                                        ; $45f6: $f4
    ld [bc], a                                    ; $45f7: $02
    db $fc                                        ; $45f8: $fc
    ld [bc], a                                    ; $45f9: $02
    ld bc, $0702                                  ; $45fa: $01 $02 $07
    add [hl]                                      ; $45fd: $86
    add hl, bc                                    ; $45fe: $09
    ld c, $10                                     ; $45ff: $0e $10
    dec de                                        ; $4601: $1b
    jr nz, jr_0f7_4634                            ; $4602: $20 $30

    ld [bc], a                                    ; $4604: $02

Jump_0f7_4605:
    jr nz, jr_0f7_4609                            ; $4605: $20 $02

    nop                                           ; $4607: $00
    ld [bc], a                                    ; $4608: $02

jr_0f7_4609:
    add c                                         ; $4609: $81
    add d                                         ; $460a: $82
    ld b, $07                                     ; $460b: $06 $07
    ld [bc], a                                    ; $460d: $02
    rrca                                          ; $460e: $0f
    adc [hl]                                      ; $460f: $8e
    add hl, de                                    ; $4610: $19
    ld e, $13                                     ; $4611: $1e $13
    inc e                                         ; $4613: $1c
    daa                                           ; $4614: $27
    jr c, jr_0f7_462a                             ; $4615: $38 $13

    inc e                                         ; $4617: $1c
    scf                                           ; $4618: $37
    jr c, jr_0f7_4626                             ; $4619: $38 $0b

    inc e                                         ; $461b: $1c
    dec hl                                        ; $461c: $2b
    inc a                                         ; $461d: $3c
    ld [bc], a                                    ; $461e: $02
    or $88                                        ; $461f: $f6 $88
    ld e, c                                       ; $4621: $59
    and a                                         ; $4622: $a7
    xor a                                         ; $4623: $af
    ld d, b                                       ; $4624: $50
    dec b                                         ; $4625: $05

jr_0f7_4626:
    cp d                                          ; $4626: $ba
    nop                                           ; $4627: $00
    dec b                                         ; $4628: $05
    inc b                                         ; $4629: $04

jr_0f7_462a:
    nop                                           ; $462a: $00
    ld [bc], a                                    ; $462b: $02
    jr nz, jr_0f7_45be                            ; $462c: $20 $90

    ld e, h                                       ; $462e: $5c
    db $fc                                        ; $462f: $fc
    adc [hl]                                      ; $4630: $8e
    cp $d3                                        ; $4631: $fe $d3
    cpl                                           ; $4633: $2f

jr_0f7_4634:
    db $eb                                        ; $4634: $eb
    rla                                           ; $4635: $17
    xor $13                                       ; $4636: $ee $13
    ld c, e                                       ; $4638: $4b
    or a                                          ; $4639: $b7

jr_0f7_463a:
    sbc [hl]                                      ; $463a: $9e
    ld h, e                                       ; $463b: $63
    ld sp, hl                                     ; $463c: $f9
    rlca                                          ; $463d: $07
    ld [bc], a                                    ; $463e: $02
    jr nz, jr_0f7_45d1                            ; $463f: $20 $90

    ld [$1438], sp                                ; $4641: $08 $38 $14
    inc l                                         ; $4644: $2c
    ld a, [hl+]                                   ; $4645: $2a
    ld d, $0d                                     ; $4646: $16 $0d
    inc sp                                        ; $4648: $33
    inc b                                         ; $4649: $04
    ld a, [de]                                    ; $464a: $1a
    rlca                                          ; $464b: $07
    add hl, de                                    ; $464c: $19
    dec b                                         ; $464d: $05
    dec bc                                        ; $464e: $0b
    nop                                           ; $464f: $00
    ld b, $04                                     ; $4650: $06 $04
    nop                                           ; $4652: $00
    ld b, $20                                     ; $4653: $06 $20
    ld [bc], a                                    ; $4655: $02
    nop                                           ; $4656: $00
    add d                                         ; $4657: $82
    jr nz, jr_0f7_463a                            ; $4658: $20 $e0

    ld [bc], a                                    ; $465a: $02
    nop                                           ; $465b: $00
    inc b                                         ; $465c: $04
    inc bc                                        ; $465d: $03
    sub d                                         ; $465e: $92
    ld bc, $2061                                  ; $465f: $01 $61 $20
    ret nc                                        ; $4662: $d0

    and b                                         ; $4663: $a0
    ret nc                                        ; $4664: $d0

    jr nc, jr_0f7_46af                            ; $4665: $30 $48

    jr nc, jr_0f7_46b5                            ; $4667: $30 $4c

    ld e, h                                       ; $4669: $5c
    ld h, d                                       ; $466a: $62
    ld a, [hl+]                                   ; $466b: $2a
    dec [hl]                                      ; $466c: $35
    inc de                                        ; $466d: $13
    inc e                                         ; $466e: $1c
    ld b, $07                                     ; $466f: $06 $07
    ld [bc], a                                    ; $4671: $02
    ld bc, $0006                                  ; $4672: $01 $06 $00
    adc d                                         ; $4675: $8a
    rra                                           ; $4676: $1f
    nop                                           ; $4677: $00
    sub h                                         ; $4678: $94
    db $eb                                        ; $4679: $eb
    ld b, d                                       ; $467a: $42
    rst $38                                       ; $467b: $ff
    and a                                         ; $467c: $a7
    rst $38                                       ; $467d: $ff
    db $dd                                        ; $467e: $dd
    rst $38                                       ; $467f: $ff
    ld [bc], a                                    ; $4680: $02
    ld a, [hl+]                                   ; $4681: $2a
    ld b, $00                                     ; $4682: $06 $00
    add [hl]                                      ; $4684: $86
    ld b, b                                       ; $4685: $40
    push de                                       ; $4686: $d5
    sub $29                                       ; $4687: $d6 $29
    ld l, e                                       ; $4689: $6b
    sub a                                         ; $468a: $97
    ld [bc], a                                    ; $468b: $02
    cp h                                          ; $468c: $bc
    rlca                                          ; $468d: $07
    nop                                           ; $468e: $00
    add l                                         ; $468f: $85
    db $10                                        ; $4690: $10
    inc d                                         ; $4691: $14
    inc e                                         ; $4692: $1c
    inc c                                         ; $4693: $0c
    inc e                                         ; $4694: $1c
    ld [bc], a                                    ; $4695: $02
    jr jr_0f7_469a                                ; $4696: $18 $02

    db $10                                        ; $4698: $10
    inc b                                         ; $4699: $04

jr_0f7_469a:
    nop                                           ; $469a: $00
    ld [bc], a                                    ; $469b: $02
    ld bc, $0602                                  ; $469c: $01 $02 $06
    add h                                         ; $469f: $84
    inc b                                         ; $46a0: $04
    inc c                                         ; $46a1: $0c
    ld [$0218], sp                                ; $46a2: $08 $18 $02
    db $10                                        ; $46a5: $10
    ld [$ff00], sp                                ; $46a6: $08 $00 $ff
    ld de, $f806                                  ; $46a9: $11 $06 $f8
    ld [$09f7], sp                                ; $46ac: $08 $f7 $09

jr_0f7_46af:
    db $fd                                        ; $46af: $fd
    ld a, [c]                                     ; $46b0: $f2
    push af                                       ; $46b1: $f5
    ld a, [$02f4]                                 ; $46b2: $fa $f4 $02

jr_0f7_46b5:
    or $07                                        ; $46b5: $f6 $07
    inc b                                         ; $46b7: $04
    ld a, [$ff04]                                 ; $46b8: $fa $04 $ff
    sub a                                         ; $46bb: $97
    nop                                           ; $46bc: $00
    jr nz, jr_0f7_4700                            ; $46bd: $20 $41

    ld [hl], c                                    ; $46bf: $71
    xor b                                         ; $46c0: $a8
    ret c                                         ; $46c1: $d8

    pop hl                                        ; $46c2: $e1
    sbc c                                         ; $46c3: $99
    pop hl                                        ; $46c4: $e1
    sub c                                         ; $46c5: $91
    ld sp, $e049                                  ; $46c6: $31 $49 $e0
    sub b                                         ; $46c9: $90
    jr nz, jr_0f7_471c                            ; $46ca: $20 $50

    sub b                                         ; $46cc: $90
    add sp, $40                                   ; $46cd: $e8 $40
    ld a, b                                       ; $46cf: $78
    ld e, h                                       ; $46d0: $5c
    ld h, h                                       ; $46d1: $64
    ld [$1602], sp                                ; $46d2: $08 $02 $16
    add l                                         ; $46d5: $85
    add hl, de                                    ; $46d6: $19
    add hl, bc                                    ; $46d7: $09
    ld c, $02                                     ; $46d8: $0e $02
    inc bc                                        ; $46da: $03
    ld [bc], a                                    ; $46db: $02
    nop                                           ; $46dc: $00
    ld [bc], a                                    ; $46dd: $02
    inc bc                                        ; $46de: $03
    ld b, $00                                     ; $46df: $06 $00
    ld [bc], a                                    ; $46e1: $02
    ld a, [bc]                                    ; $46e2: $0a
    sub [hl]                                      ; $46e3: $96
    ld sp, $7c3f                                  ; $46e4: $31 $3f $7c
    ld a, a                                       ; $46e7: $7f
    push bc                                       ; $46e8: $c5
    ld a, [$e0df]                                 ; $46e9: $fa $df $e0
    ld e, a                                       ; $46ec: $5f
    ldh [$bd], a                                  ; $46ed: $e0 $bd
    jp nz, $e41b                                  ; $46ef: $c2 $1b $e4

    ld a, c                                       ; $46f2: $79
    add $5c                                       ; $46f3: $c6 $5c
    db $e3                                        ; $46f5: $e3
    db $eb                                        ; $46f6: $eb
    db $f4                                        ; $46f7: $f4
    ret nz                                        ; $46f8: $c0

    rst $38                                       ; $46f9: $ff
    ld [bc], a                                    ; $46fa: $02
    ret c                                         ; $46fb: $d8

    sbc [hl]                                      ; $46fc: $9e
    sub d                                         ; $46fd: $92
    xor $0c                                       ; $46fe: $ee $0c

jr_0f7_4700:
    inc sp                                        ; $4700: $33
    inc bc                                        ; $4701: $03
    inc c                                         ; $4702: $0c
    nop                                           ; $4703: $00
    inc bc                                        ; $4704: $03

jr_0f7_4705:
    add d                                         ; $4705: $82
    add e                                         ; $4706: $83
    ld h, b                                       ; $4707: $60
    ldh [rSVBK], a                                ; $4708: $e0 $70
    pop af                                        ; $470a: $f1
    jr jr_0f7_4705                                ; $470b: $18 $f8

    cp b                                          ; $470d: $b8
    ld a, b                                       ; $470e: $78
    call nc, $943c                                ; $470f: $d4 $3c $94
    ld a, h                                       ; $4712: $7c
    ret nc                                        ; $4713: $d0

    jr c, jr_0f7_469a                             ; $4714: $38 $84

    ld a, h                                       ; $4716: $7c
    ld d, b                                       ; $4717: $50
    cp b                                          ; $4718: $b8
    adc b                                         ; $4719: $88
    ld a, b                                       ; $471a: $78
    ld [bc], a                                    ; $471b: $02

jr_0f7_471c:
    db $10                                        ; $471c: $10
    sbc d                                         ; $471d: $9a
    ld [$1018], sp                                ; $471e: $08 $18 $10
    ld [$061a], sp                                ; $4721: $08 $1a $06
    ld [bc], a                                    ; $4724: $02
    ld e, $09                                     ; $4725: $1e $09
    rla                                           ; $4727: $17
    inc c                                         ; $4728: $0c
    ld [de], a                                    ; $4729: $12
    rlca                                          ; $472a: $07
    add hl, bc                                    ; $472b: $09
    inc c                                         ; $472c: $0c
    ld [de], a                                    ; $472d: $12
    dec b                                         ; $472e: $05
    dec bc                                        ; $472f: $0b
    dec c                                         ; $4730: $0d
    inc de                                        ; $4731: $13
    dec b                                         ; $4732: $05
    dec de                                        ; $4733: $1b
    ld [bc], a                                    ; $4734: $02
    ld c, $00                                     ; $4735: $0e $00
    inc b                                         ; $4737: $04
    ld b, $00                                     ; $4738: $06 $00
    add h                                         ; $473a: $84
    ld a, c                                       ; $473b: $79
    ld a, a                                       ; $473c: $7f
    inc [hl]                                      ; $473d: $34
    ccf                                           ; $473e: $3f
    ld [bc], a                                    ; $473f: $02
    dec b                                         ; $4740: $05
    inc bc                                        ; $4741: $03
    nop                                           ; $4742: $00
    add l                                         ; $4743: $85
    add b                                         ; $4744: $80
    and b                                         ; $4745: $a0
    ld h, b                                       ; $4746: $60
    ld e, [hl]                                    ; $4747: $5e
    cp [hl]                                       ; $4748: $be
    ld [bc], a                                    ; $4749: $02
    ret c                                         ; $474a: $d8

    ld c, $00                                     ; $474b: $0e $00
    add d                                         ; $474d: $82
    dec bc                                        ; $474e: $0b
    rra                                           ; $474f: $1f
    ld [bc], a                                    ; $4750: $02
    ld e, $82                                     ; $4751: $1e $82
    inc c                                         ; $4753: $0c
    inc e                                         ; $4754: $1c
    ld [bc], a                                    ; $4755: $02
    db $10                                        ; $4756: $10
    jr jr_0f7_4759                                ; $4757: $18 $00

jr_0f7_4759:
    rst $38                                       ; $4759: $ff
    inc de                                        ; $475a: $13
    rlca                                          ; $475b: $07
    ld hl, sp+$08                                 ; $475c: $f8 $08
    rst $30                                       ; $475e: $f7
    add hl, bc                                    ; $475f: $09
    db $f4                                        ; $4760: $f4
    ld a, [c]                                     ; $4761: $f2
    db $f4                                        ; $4762: $f4
    ld a, [$02f7]                                 ; $4763: $fa $f7 $02
    ld sp, hl                                     ; $4766: $f9
    rlca                                          ; $4767: $07
    inc b                                         ; $4768: $04
    db $f4                                        ; $4769: $f4
    inc b                                         ; $476a: $04
    ei                                            ; $476b: $fb
    inc b                                         ; $476c: $04
    dec b                                         ; $476d: $05
    ld [bc], a                                    ; $476e: $02
    ld bc, $099e                                  ; $476f: $01 $9e $09
    ld c, $17                                     ; $4772: $0e $17
    jr jr_0f7_47a4                                ; $4774: $18 $2e

    ld sp, $2a14                                  ; $4776: $31 $14 $2a
    ld [$7434], sp                                ; $4779: $08 $34 $74
    ld c, h                                       ; $477c: $4c
    and b                                         ; $477d: $a0
    ret c                                         ; $477e: $d8

    jr nc, @+$4a                                  ; $477f: $30 $48

    ldh [$90], a                                  ; $4781: $e0 $90
    add b                                         ; $4783: $80
    ldh a, [$31]                                  ; $4784: $f0 $31
    ld d, c                                       ; $4786: $51
    add c                                         ; $4787: $81
    pop hl                                        ; $4788: $e1
    and b                                         ; $4789: $a0
    ret nc                                        ; $478a: $d0

    ld b, c                                       ; $478b: $41
    ld [hl], c                                    ; $478c: $71
    ld d, b                                       ; $478d: $50
    ld [hl], b                                    ; $478e: $70
    inc bc                                        ; $478f: $03
    add b                                         ; $4790: $80
    add l                                         ; $4791: $85
    ld b, b                                       ; $4792: $40
    add b                                         ; $4793: $80

jr_0f7_4794:
    ld b, b                                       ; $4794: $40
    nop                                           ; $4795: $00
    add b                                         ; $4796: $80
    ld [bc], a                                    ; $4797: $02
    nop                                           ; $4798: $00
    ld [bc], a                                    ; $4799: $02
    ld a, [bc]                                    ; $479a: $0a
    sub h                                         ; $479b: $94
    ld sp, $7c3f                                  ; $479c: $31 $3f $7c
    ld a, a                                       ; $479f: $7f
    rst $00                                       ; $47a0: $c7
    ld hl, sp-$72                                 ; $47a1: $f8 $8e
    pop af                                        ; $47a3: $f1

jr_0f7_47a4:
    ld e, a                                       ; $47a4: $5f
    ldh [$39], a                                  ; $47a5: $e0 $39
    add $92                                       ; $47a7: $c6 $92
    db $ed                                        ; $47a9: $ed

jr_0f7_47aa:
    rst $30                                       ; $47aa: $f7
    ret z                                         ; $47ab: $c8

    ld d, a                                       ; $47ac: $57
    add sp, -$16                                  ; $47ad: $e8 $ea
    push af                                       ; $47af: $f5
    ld [bc], a                                    ; $47b0: $02
    inc b                                         ; $47b1: $04
    ld [bc], a                                    ; $47b2: $02
    nop                                           ; $47b3: $00
    ld [bc], a                                    ; $47b4: $02
    add c                                         ; $47b5: $81
    ld [bc], a                                    ; $47b6: $02
    ldh [$94], a                                  ; $47b7: $e0 $94
    or b                                          ; $47b9: $b0
    ldh a, [rNR23]                                ; $47ba: $f0 $18
    ld hl, sp-$28                                 ; $47bc: $f8 $d8
    jr c, jr_0f7_4794                             ; $47be: $38 $d4

    inc a                                         ; $47c0: $3c
    db $f4                                        ; $47c1: $f4
    inc e                                         ; $47c2: $1c
    ret nc                                        ; $47c3: $d0

    jr c, jr_0f7_47aa                             ; $47c4: $38 $e4

    inc e                                         ; $47c6: $1c
    call nc, $883c                                ; $47c7: $d4 $3c $88
    ld a, b                                       ; $47ca: $78
    ld e, b                                       ; $47cb: $58
    ld hl, sp+$02                                 ; $47cc: $f8 $02
    ldh a, [$82]                                  ; $47ce: $f0 $82
    ld h, c                                       ; $47d0: $61
    pop hl                                        ; $47d1: $e1
    ld [bc], a                                    ; $47d2: $02
    db $10                                        ; $47d3: $10
    and b                                         ; $47d4: $a0
    ld [$0818], sp                                ; $47d5: $08 $18 $08
    jr jr_0f7_47de                                ; $47d8: $18 $04

    inc c                                         ; $47da: $0c
    ld [bc], a                                    ; $47db: $02
    ld c, $06                                     ; $47dc: $0e $06

jr_0f7_47de:
    ld a, [bc]                                    ; $47de: $0a
    dec b                                         ; $47df: $05
    dec bc                                        ; $47e0: $0b
    inc bc                                        ; $47e1: $03
    dec b                                         ; $47e2: $05
    inc b                                         ; $47e3: $04
    ld a, [bc]                                    ; $47e4: $0a
    inc bc                                        ; $47e5: $03
    dec c                                         ; $47e6: $0d
    rlca                                          ; $47e7: $07
    add hl, bc                                    ; $47e8: $09
    inc c                                         ; $47e9: $0c
    ld [de], a                                    ; $47ea: $12
    dec b                                         ; $47eb: $05
    dec de                                        ; $47ec: $1b
    ld c, $12                                     ; $47ed: $0e $12
    db $10                                        ; $47ef: $10
    inc l                                         ; $47f0: $2c
    ld a, [hl+]                                   ; $47f1: $2a
    ld d, [hl]                                    ; $47f2: $56
    add e                                         ; $47f3: $83
    jp Jump_0f7_6102                              ; $47f4: $c3 $02 $61


    ld [bc], a                                    ; $47f7: $02
    ld h, b                                       ; $47f8: $60
    ld [bc], a                                    ; $47f9: $02
    jr nc, @+$04                                  ; $47fa: $30 $02

    ld [$0017], sp                                ; $47fc: $08 $17 $00
    add l                                         ; $47ff: $85
    ld a, [hl]                                    ; $4800: $7e
    ld d, d                                       ; $4801: $52
    ld a, [hl]                                    ; $4802: $7e
    ld h, [hl]                                    ; $4803: $66
    ld a, [hl]                                    ; $4804: $7e
    ld [bc], a                                    ; $4805: $02
    dec bc                                        ; $4806: $0b
    ld hl, $8700                                  ; $4807: $21 $00 $87
    ld b, b                                       ; $480a: $40
    dec a                                         ; $480b: $3d
    jp $867a                                      ; $480c: $c3 $7a $86


    inc h                                         ; $480f: $24
    call c, Call_0f7_6802                         ; $4810: $dc $02 $68
    ld c, $00                                     ; $4813: $0e $00
    rst $38                                       ; $4815: $ff
    ld de, $f806                                  ; $4816: $11 $06 $f8
    ld [$09f7], sp                                ; $4819: $08 $f7 $09
    di                                            ; $481c: $f3
    db $f4                                        ; $481d: $f4
    ld a, [c]                                     ; $481e: $f2
    db $fc                                        ; $481f: $fc
    ld a, [$0004]                                 ; $4820: $fa $04 $00
    dec b                                         ; $4823: $05
    ld [bc], a                                    ; $4824: $02
    ld a, [$fd02]                                 ; $4825: $fa $02 $fd
    ld [bc], a                                    ; $4828: $02
    rlca                                          ; $4829: $07
    sbc d                                         ; $482a: $9a
    nop                                           ; $482b: $00
    rlca                                          ; $482c: $07
    dec d                                         ; $482d: $15
    ld a, [de]                                    ; $482e: $1a
    inc l                                         ; $482f: $2c
    inc sp                                        ; $4830: $33
    ld d, b                                       ; $4831: $50
    ld l, [hl]                                    ; $4832: $6e
    ld d, b                                       ; $4833: $50
    ld l, b                                       ; $4834: $68
    xor b                                         ; $4835: $a8
    ret c                                         ; $4836: $d8

    and b                                         ; $4837: $a0
    ret nz                                        ; $4838: $c0

    ld bc, $c361                                  ; $4839: $01 $61 $c3
    and e                                         ; $483c: $a3
    add d                                         ; $483d: $82
    jp $c3c1                                      ; $483e: $c3 $c1 $c3


    ld b, h                                       ; $4841: $44
    ld b, a                                       ; $4842: $47
    add $c7                                       ; $4843: $c6 $c7
    ld [bc], a                                    ; $4845: $02
    ld b, e                                       ; $4846: $43
    add d                                         ; $4847: $82
    ld b, l                                       ; $4848: $45
    ld b, a                                       ; $4849: $47
    ld [bc], a                                    ; $484a: $02
    call c, Call_0f7_4288                         ; $484b: $dc $88 $42
    cp [hl]                                       ; $484e: $be
    db $fc                                        ; $484f: $fc
    inc bc                                        ; $4850: $03
    call z, Call_000_0233                         ; $4851: $cc $33 $02
    xor [hl]                                      ; $4854: $ae
    inc b                                         ; $4855: $04
    nop                                           ; $4856: $00
    ld [bc], a                                    ; $4857: $02
    ld a, [hl+]                                   ; $4858: $2a
    sub b                                         ; $4859: $90
    rst $00                                       ; $485a: $c7
    rst $38                                       ; $485b: $ff
    ld a, [c]                                     ; $485c: $f2
    rst $38                                       ; $485d: $ff
    inc d                                         ; $485e: $14
    db $eb                                        ; $485f: $eb
    cp a                                          ; $4860: $bf
    ret nz                                        ; $4861: $c0

    ld b, a                                       ; $4862: $47
    cp b                                          ; $4863: $b8
    inc sp                                        ; $4864: $33
    call z, $847b                                 ; $4865: $cc $7b $84
    scf                                           ; $4868: $37
    ret z                                         ; $4869: $c8

    ld [bc], a                                    ; $486a: $02
    add b                                         ; $486b: $80
    ld [bc], a                                    ; $486c: $02
    ret nz                                        ; $486d: $c0

    sub a                                         ; $486e: $97
    ld h, b                                       ; $486f: $60
    ldh [$60], a                                  ; $4870: $e0 $60
    ldh [rHDMA1], a                               ; $4872: $e0 $51
    pop af                                        ; $4874: $f1
    pop de                                        ; $4875: $d1
    ld [hl], c                                    ; $4876: $71
    ld b, b                                       ; $4877: $40
    pop hl                                        ; $4878: $e1
    sub b                                         ; $4879: $90
    ld [hl], c                                    ; $487a: $71
    ld d, b                                       ; $487b: $50
    pop af                                        ; $487c: $f1
    ld hl, $60e0                                  ; $487d: $21 $e0 $60
    db $e3                                        ; $4880: $e3
    pop bc                                        ; $4881: $c1
    jp nz, $8182                                  ; $4882: $c2 $82 $81

    ld [bc], a                                    ; $4885: $02
    ld [bc], a                                    ; $4886: $02
    dec c                                         ; $4887: $0d
    add e                                         ; $4888: $83
    inc de                                        ; $4889: $13
    dec d                                         ; $488a: $15
    ld l, e                                       ; $488b: $6b
    ld [bc], a                                    ; $488c: $02
    ld bc, $0002                                  ; $488d: $01 $02 $00
    ld b, $01                                     ; $4890: $06 $01
    ld [bc], a                                    ; $4892: $02

jr_0f7_4893:
    nop                                           ; $4893: $00
    inc b                                         ; $4894: $04
    ld bc, $0004                                  ; $4895: $01 $04 $00
    adc b                                         ; $4898: $88
    db $f4                                        ; $4899: $f4
    inc c                                         ; $489a: $0c
    xor b                                         ; $489b: $a8
    ld e, b                                       ; $489c: $58
    nop                                           ; $489d: $00
    ldh [$60], a                                  ; $489e: $e0 $60
    ldh [rSC], a                                  ; $48a0: $e0 $02
    add b                                         ; $48a2: $80
    ld [bc], a                                    ; $48a3: $02
    nop                                           ; $48a4: $00
    adc d                                         ; $48a5: $8a
    rra                                           ; $48a6: $1f
    jr nz, jr_0f7_4893                            ; $48a7: $20 $ea

    push af                                       ; $48a9: $f5
    ret nz                                        ; $48aa: $c0

    rst $38                                       ; $48ab: $ff
    ld l, c                                       ; $48ac: $69
    ld a, a                                       ; $48ad: $7f
    inc sp                                        ; $48ae: $33
    ccf                                           ; $48af: $3f
    ld [bc], a                                    ; $48b0: $02
    dec b                                         ; $48b1: $05
    dec b                                         ; $48b2: $05
    nop                                           ; $48b3: $00
    add a                                         ; $48b4: $87
    ld c, $06                                     ; $48b5: $0e $06
    add hl, de                                    ; $48b7: $19
    inc bc                                        ; $48b8: $03
    inc e                                         ; $48b9: $1c
    ld [$020f], sp                                ; $48ba: $08 $0f $02
    rlca                                          ; $48bd: $07
    ld b, $00                                     ; $48be: $06 $00
    add l                                         ; $48c0: $85
    ld b, $00                                     ; $48c1: $06 $00
    inc b                                         ; $48c3: $04
    ld [bc], a                                    ; $48c4: $02
    nop                                           ; $48c5: $00
    inc bc                                        ; $48c6: $03
    ld b, $82                                     ; $48c7: $06 $82
    ld [bc], a                                    ; $48c9: $02
    ld b, $02                                     ; $48ca: $06 $02
    inc b                                         ; $48cc: $04
    dec b                                         ; $48cd: $05
    nop                                           ; $48ce: $00
    add a                                         ; $48cf: $87
    dec b                                         ; $48d0: $05
    rlca                                          ; $48d1: $07
    nop                                           ; $48d2: $00
    rlca                                          ; $48d3: $07
    nop                                           ; $48d4: $00
    ld [bc], a                                    ; $48d5: $02
    dec b                                         ; $48d6: $05
    ld [bc], a                                    ; $48d7: $02
    inc bc                                        ; $48d8: $03
    ld b, $00                                     ; $48d9: $06 $00
    rst $38                                       ; $48db: $ff
    ld de, $f806                                  ; $48dc: $11 $06 $f8
    ld [$09f7], sp                                ; $48df: $08 $f7 $09
    ld a, [c]                                     ; $48e2: $f2
    ld hl, sp-$0e                                 ; $48e3: $f8 $f2
    nop                                           ; $48e5: $00
    di                                            ; $48e6: $f3
    dec b                                         ; $48e7: $05
    ld [bc], a                                    ; $48e8: $02
    db $f4                                        ; $48e9: $f4
    ld [bc], a                                    ; $48ea: $02
    db $fc                                        ; $48eb: $fc
    ld [bc], a                                    ; $48ec: $02
    ld bc, $0102                                  ; $48ed: $01 $02 $01
    adc d                                         ; $48f0: $8a
    ld b, $07                                     ; $48f1: $06 $07
    dec bc                                        ; $48f3: $0b
    inc c                                         ; $48f4: $0c
    nop                                           ; $48f5: $00
    ld c, $20                                     ; $48f6: $0e $20
    jr c, jr_0f7_493a                             ; $48f8: $38 $40

    ld h, b                                       ; $48fa: $60
    ld [bc], a                                    ; $48fb: $02
    ld b, b                                       ; $48fc: $40
    ld [bc], a                                    ; $48fd: $02
    add d                                         ; $48fe: $82
    add d                                         ; $48ff: $82
    inc c                                         ; $4900: $0c
    rrca                                          ; $4901: $0f
    ld [bc], a                                    ; $4902: $02
    rra                                           ; $4903: $1f
    adc h                                         ; $4904: $8c
    ld [hl-], a                                   ; $4905: $32
    dec a                                         ; $4906: $3d
    daa                                           ; $4907: $27
    jr c, jr_0f7_4959                             ; $4908: $38 $4f

    ld [hl], b                                    ; $490a: $70
    ld h, $39                                     ; $490b: $26 $39
    ld l, a                                       ; $490d: $6f
    ld [hl], b                                    ; $490e: $70
    rla                                           ; $490f: $17
    jr c, jr_0f7_4914                             ; $4910: $38 $02

    db $f4                                        ; $4912: $f4
    adc h                                         ; $4913: $8c

jr_0f7_4914:
    inc sp                                        ; $4914: $33
    rst $08                                       ; $4915: $cf
    sbc $21                                       ; $4916: $de $21
    dec bc                                        ; $4918: $0b
    db $f4                                        ; $4919: $f4
    ld bc, $020a                                  ; $491a: $01 $0a $02
    inc bc                                        ; $491d: $03
    nop                                           ; $491e: $00
    ld bc, $4002                                  ; $491f: $01 $02 $40
    sub b                                         ; $4922: $90
    cp b                                          ; $4923: $b8
    ld hl, sp+$1c                                 ; $4924: $f8 $1c
    db $fc                                        ; $4926: $fc
    and [hl]                                      ; $4927: $a6
    ld e, [hl]                                    ; $4928: $5e
    sub $2e                                       ; $4929: $d6 $2e
    db $dd                                        ; $492b: $dd
    daa                                           ; $492c: $27
    sub a                                         ; $492d: $97
    ld l, a                                       ; $492e: $6f
    dec a                                         ; $492f: $3d
    rst $00                                       ; $4930: $c7
    ld a, [c]                                     ; $4931: $f2
    ld c, $02                                     ; $4932: $0e $02
    db $10                                        ; $4934: $10
    sub b                                         ; $4935: $90
    nop                                           ; $4936: $00
    db $10                                        ; $4937: $10
    inc d                                         ; $4938: $14
    inc c                                         ; $4939: $0c

jr_0f7_493a:
    ld a, [bc]                                    ; $493a: $0a
    ld d, $19                                     ; $493b: $16 $19
    rlca                                          ; $493d: $07
    inc c                                         ; $493e: $0c
    ld [de], a                                    ; $493f: $12
    dec b                                         ; $4940: $05
    dec de                                        ; $4941: $1b
    ld de, $041f                                  ; $4942: $11 $1f $04
    ld b, $0c                                     ; $4945: $06 $0c
    nop                                           ; $4947: $00
    add h                                         ; $4948: $84
    and b                                         ; $4949: $a0
    ldh [rTIMA], a                                ; $494a: $e0 $05
    rlca                                          ; $494c: $07
    inc b                                         ; $494d: $04
    inc bc                                        ; $494e: $03
    sub d                                         ; $494f: $92
    ld bc, $8061                                  ; $4950: $01 $61 $80
    ld hl, sp-$50                                 ; $4953: $f8 $b0
    ret z                                         ; $4955: $c8

    jr nc, jr_0f7_49a4                            ; $4956: $30 $4c

    sbc d                                         ; $4958: $9a

jr_0f7_4959:
    and $54                                       ; $4959: $e6 $54
    ld l, d                                       ; $495b: $6a
    ld a, [hl+]                                   ; $495c: $2a
    dec [hl]                                      ; $495d: $35
    inc bc                                        ; $495e: $03
    inc c                                         ; $495f: $0c
    ld c, $0f                                     ; $4960: $0e $0f
    ld [bc], a                                    ; $4962: $02
    ld bc, $0006                                  ; $4963: $01 $06 $00
    adc d                                         ; $4966: $8a
    ld a, a                                       ; $4967: $7f
    add b                                         ; $4968: $80
    sub h                                         ; $4969: $94
    db $eb                                        ; $496a: $eb
    ld [bc], a                                    ; $496b: $02
    rst $38                                       ; $496c: $ff
    and a                                         ; $496d: $a7
    rst $38                                       ; $496e: $ff
    db $dd                                        ; $496f: $dd
    rst $38                                       ; $4970: $ff
    ld [bc], a                                    ; $4971: $02
    ld a, [hl+]                                   ; $4972: $2a
    dec b                                         ; $4973: $05
    nop                                           ; $4974: $00
    add a                                         ; $4975: $87
    add b                                         ; $4976: $80
    and b                                         ; $4977: $a0
    ld a, e                                       ; $4978: $7b
    sub $29                                       ; $4979: $d6 $29
    ld l, e                                       ; $497b: $6b
    sub a                                         ; $497c: $97
    ld [bc], a                                    ; $497d: $02
    ld a, h                                       ; $497e: $7c
    rlca                                          ; $497f: $07
    nop                                           ; $4980: $00
    add l                                         ; $4981: $85
    db $10                                        ; $4982: $10
    inc d                                         ; $4983: $14
    inc e                                         ; $4984: $1c
    inc c                                         ; $4985: $0c
    inc e                                         ; $4986: $1c
    ld [bc], a                                    ; $4987: $02
    jr jr_0f7_498c                                ; $4988: $18 $02

    db $10                                        ; $498a: $10
    ld [bc], a                                    ; $498b: $02

jr_0f7_498c:
    ld bc, $0203                                  ; $498c: $01 $03 $02
    add l                                         ; $498f: $85

jr_0f7_4990:
    ld b, $04                                     ; $4990: $06 $04
    inc e                                         ; $4992: $1c
    stop                                          ; $4993: $10 $00
    ld [bc], a                                    ; $4995: $02
    db $10                                        ; $4996: $10
    ld a, [bc]                                    ; $4997: $0a
    nop                                           ; $4998: $00
    rst $38                                       ; $4999: $ff
    ld de, $f806                                  ; $499a: $11 $06 $f8
    ld [$09f7], sp                                ; $499d: $08 $f7 $09
    nop                                           ; $49a0: $00
    pop af                                        ; $49a1: $f1
    db $f4                                        ; $49a2: $f4
    ld sp, hl                                     ; $49a3: $f9

jr_0f7_49a4:
    inc b                                         ; $49a4: $04
    ld sp, hl                                     ; $49a5: $f9
    ld a, [c]                                     ; $49a6: $f2
    ld bc, $0102                                  ; $49a7: $01 $02 $01
    db $f4                                        ; $49aa: $f4
    add hl, bc                                    ; $49ab: $09
    sbc b                                         ; $49ac: $98
    jr nz, @+$32                                  ; $49ad: $20 $30

    ld d, b                                       ; $49af: $50
    ld l, h                                       ; $49b0: $6c
    ld e, b                                       ; $49b1: $58
    ld h, h                                       ; $49b2: $64
    cp b                                          ; $49b3: $b8
    call nz, Call_0f7_6c10                        ; $49b4: $c4 $10 $6c
    ld e, b                                       ; $49b7: $58
    ld h, h                                       ; $49b8: $64
    ld c, b                                       ; $49b9: $48
    halt                                          ; $49ba: $76
    jr nc, jr_0f7_49eb                            ; $49bb: $30 $2e

    inc b                                         ; $49bd: $04
    dec sp                                        ; $49be: $3b
    ld a, $31                                     ; $49bf: $3e $31
    dec bc                                        ; $49c1: $0b
    inc c                                         ; $49c2: $0c
    rrca                                          ; $49c3: $0f
    inc c                                         ; $49c4: $0c
    ld [bc], a                                    ; $49c5: $02
    inc bc                                        ; $49c6: $03
    ld b, $00                                     ; $49c7: $06 $00
    add h                                         ; $49c9: $84
    ld b, $07                                     ; $49ca: $06 $07
    ld [$020a], sp                                ; $49cc: $08 $0a $02
    db $10                                        ; $49cf: $10
    inc b                                         ; $49d0: $04
    nop                                           ; $49d1: $00
    ld [bc], a                                    ; $49d2: $02
    dec b                                         ; $49d3: $05
    sbc d                                         ; $49d4: $9a
    jr jr_0f7_49f6                                ; $49d5: $18 $1f

jr_0f7_49d7:
    ld a, $3f                                     ; $49d7: $3e $3f
    ld h, d                                       ; $49d9: $62
    ld a, l                                       ; $49da: $7d
    ld l, a                                       ; $49db: $6f
    ld [hl], b                                    ; $49dc: $70
    xor a                                         ; $49dd: $af
    ldh a, [$5e]                                  ; $49de: $f0 $5e
    ld h, c                                       ; $49e0: $61
    adc l                                         ; $49e1: $8d
    ld a, [c]                                     ; $49e2: $f2
    cp h                                          ; $49e3: $bc
    db $e3                                        ; $49e4: $e3
    xor [hl]                                      ; $49e5: $ae
    pop af                                        ; $49e6: $f1
    ld [hl], l                                    ; $49e7: $75
    ld a, d                                       ; $49e8: $7a
    ld h, b                                       ; $49e9: $60
    ld a, a                                       ; $49ea: $7f

jr_0f7_49eb:
    inc a                                         ; $49eb: $3c
    ccf                                           ; $49ec: $3f
    ld a, [de]                                    ; $49ed: $1a
    rra                                           ; $49ee: $1f
    ld [bc], a                                    ; $49ef: $02
    ld [bc], a                                    ; $49f0: $02
    inc bc                                        ; $49f1: $03
    nop                                           ; $49f2: $00
    adc c                                         ; $49f3: $89
    add b                                         ; $49f4: $80
    nop                                           ; $49f5: $00

jr_0f7_49f6:
    ldh [rLCDC], a                                ; $49f6: $e0 $40
    cp d                                          ; $49f8: $ba
    ld a, d                                       ; $49f9: $7a
    add l                                         ; $49fa: $85
    call nc, Call_000_02fc                        ; $49fb: $d4 $fc $02
    jr z, jr_0f7_4a0a                             ; $49fe: $28 $0a

    nop                                           ; $4a00: $00
    ld [bc], a                                    ; $4a01: $02
    jr z, jr_0f7_4990                             ; $4a02: $28 $8c

    ld d, [hl]                                    ; $4a04: $56
    ld a, [hl]                                    ; $4a05: $7e
    cp l                                          ; $4a06: $bd
    ld b, e                                       ; $4a07: $43
    dec b                                         ; $4a08: $05
    cp d                                          ; $4a09: $ba

jr_0f7_4a0a:
    ld bc, $000e                                  ; $4a0a: $01 $0e $00
    inc bc                                        ; $4a0d: $03
    nop                                           ; $4a0e: $00
    ld bc, $4002                                  ; $4a0f: $01 $02 $40
    sub [hl]                                      ; $4a12: $96
    or b                                          ; $4a13: $b0
    ldh a, [$38]                                  ; $4a14: $f0 $38
    ld hl, sp-$74                                 ; $4a16: $f8 $8c
    ld a, h                                       ; $4a18: $7c
    call c, $ea3c                                 ; $4a19: $dc $3c $ea
    ld e, $ca                                     ; $4a1c: $1e $ca

jr_0f7_4a1e:
    ld a, $e8                                     ; $4a1e: $3e $e8
    inc e                                         ; $4a20: $1c
    jp nz, $283e                                  ; $4a21: $c2 $3e $28

    call c, $3cd4                                 ; $4a24: $dc $d4 $3c
    inc c                                         ; $4a27: $0c
    db $fc                                        ; $4a28: $fc
    ld [bc], a                                    ; $4a29: $02
    ld hl, sp-$7e                                 ; $4a2a: $f8 $82
    jr nc, jr_0f7_4a1e                            ; $4a2c: $30 $f0

    ld [bc], a                                    ; $4a2e: $02
    ret nz                                        ; $4a2f: $c0

jr_0f7_4a30:
    inc b                                         ; $4a30: $04
    nop                                           ; $4a31: $00
    ld [bc], a                                    ; $4a32: $02
    db $10                                        ; $4a33: $10
    add d                                         ; $4a34: $82
    jr nz, jr_0f7_49d7                            ; $4a35: $20 $a0

    ld [bc], a                                    ; $4a37: $02
    ret nz                                        ; $4a38: $c0

    ld a, [bc]                                    ; $4a39: $0a
    nop                                           ; $4a3a: $00
    ld [bc], a                                    ; $4a3b: $02
    add b                                         ; $4a3c: $80
    sbc b                                         ; $4a3d: $98
    ldh [$60], a                                  ; $4a3e: $e0 $60
    and b                                         ; $4a40: $a0
    ld h, b                                       ; $4a41: $60
    ld hl, sp+$18                                 ; $4a42: $f8 $18
    ld b, b                                       ; $4a44: $40
    cp b                                          ; $4a45: $b8
    jr jr_0f7_4a30                                ; $4a46: $18 $e8

    inc h                                         ; $4a48: $24
    call c, $4c34                                 ; $4a49: $dc $34 $4c
    db $10                                        ; $4a4c: $10
    ld l, h                                       ; $4a4d: $6c
    ld [hl-], a                                   ; $4a4e: $32
    ld c, [hl]                                    ; $4a4f: $4e
    inc d                                         ; $4a50: $14
    ld l, h                                       ; $4a51: $6c
    ld b, h                                       ; $4a52: $44
    ld a, h                                       ; $4a53: $7c
    nop                                           ; $4a54: $00
    db $10                                        ; $4a55: $10
    ld b, $00                                     ; $4a56: $06 $00
    rst $38                                       ; $4a58: $ff
    dec bc                                        ; $4a59: $0b
    inc bc                                        ; $4a5a: $03
    ld hl, sp+$08                                 ; $4a5b: $f8 $08
    rst $30                                       ; $4a5d: $f7
    add hl, bc                                    ; $4a5e: $09
    ld hl, sp-$0b                                 ; $4a5f: $f8 $f5
    ld a, [$fdfd]                                 ; $4a61: $fa $fd $fd
    inc b                                         ; $4a64: $04
    ld [bc], a                                    ; $4a65: $02
    jr jr_0f7_49f6                                ; $4a66: $18 $8e

    inc [hl]                                      ; $4a68: $34
    inc l                                         ; $4a69: $2c
    ld d, b                                       ; $4a6a: $50
    ld l, b                                       ; $4a6b: $68
    ld [hl], b                                    ; $4a6c: $70
    ld b, b                                       ; $4a6d: $40
    and b                                         ; $4a6e: $a0
    ret nz                                        ; $4a6f: $c0

    ld [bc], a                                    ; $4a70: $02
    ld [c], a                                     ; $4a71: $e2
    push bc                                       ; $4a72: $c5
    add l                                         ; $4a73: $85
    add d                                         ; $4a74: $82
    ld [c], a                                     ; $4a75: $e2
    ld [bc], a                                    ; $4a76: $02
    push bc                                       ; $4a77: $c5
    ld [bc], a                                    ; $4a78: $02
    ld b, d                                       ; $4a79: $42
    ld [bc], a                                    ; $4a7a: $02
    ld b, l                                       ; $4a7b: $45
    ld [bc], a                                    ; $4a7c: $02
    jr nz, @+$04                                  ; $4a7d: $20 $02

    ld bc, $0006                                  ; $4a7f: $01 $06 $00
    ld [bc], a                                    ; $4a82: $02
    ld e, b                                       ; $4a83: $58
    ld [bc], a                                    ; $4a84: $02
    xor d                                         ; $4a85: $aa
    sub h                                         ; $4a86: $94
    ld d, b                                       ; $4a87: $50
    ld d, h                                       ; $4a88: $54
    add d                                         ; $4a89: $82
    xor d                                         ; $4a8a: $aa
    add hl, sp                                    ; $4a8b: $39
    ld h, l                                       ; $4a8c: $65
    inc [hl]                                      ; $4a8d: $34
    jp z, $9b65                                   ; $4a8e: $ca $65 $9b

    ld [hl], d                                    ; $4a91: $72
    adc [hl]                                      ; $4a92: $8e
    jr nc, jr_0f7_4ae2                            ; $4a93: $30 $4d

    adc b                                         ; $4a95: $88
    cp d                                          ; $4a96: $ba
    inc b                                         ; $4a97: $04
    ld d, h                                       ; $4a98: $54
    and d                                         ; $4a99: $a2
    xor d                                         ; $4a9a: $aa
    ld [bc], a                                    ; $4a9b: $02
    ld d, h                                       ; $4a9c: $54
    ld b, $00                                     ; $4a9d: $06 $00
    ld [bc], a                                    ; $4a9f: $02
    ld b, h                                       ; $4aa0: $44
    sub h                                         ; $4aa1: $94
    jr nz, @+$24                                  ; $4aa2: $20 $22

    ld h, b                                       ; $4aa4: $60
    ld h, d                                       ; $4aa5: $62
    ld bc, $2103                                  ; $4aa6: $01 $03 $21
    ld h, e                                       ; $4aa9: $63
    dec h                                         ; $4aaa: $25
    inc hl                                        ; $4aab: $23
    ld b, h                                       ; $4aac: $44
    ld b, e                                       ; $4aad: $43
    dec b                                         ; $4aae: $05
    inc bc                                        ; $4aaf: $03
    ld a, [bc]                                    ; $4ab0: $0a
    ld b, $0a                                     ; $4ab1: $06 $0a
    ld d, $24                                     ; $4ab3: $16 $24
    inc a                                         ; $4ab5: $3c
    ld [bc], a                                    ; $4ab6: $02
    jr jr_0f7_4ac1                                ; $4ab7: $18 $08

    nop                                           ; $4ab9: $00
    rst $38                                       ; $4aba: $ff
    rlca                                          ; $4abb: $07
    ld bc, $08f8                                  ; $4abc: $01 $f8 $08
    pop af                                        ; $4abf: $f1
    ld [bc], a                                    ; $4ac0: $02

jr_0f7_4ac1:
    db $fd                                        ; $4ac1: $fd
    ei                                            ; $4ac2: $fb
    add [hl]                                      ; $4ac3: $86
    ld [bc], a                                    ; $4ac4: $02
    ld b, $05                                     ; $4ac5: $06 $05
    dec bc                                        ; $4ac7: $0b
    add hl, bc                                    ; $4ac8: $09
    rrca                                          ; $4ac9: $0f
    ld [bc], a                                    ; $4aca: $02
    ld b, $18                                     ; $4acb: $06 $18
    nop                                           ; $4acd: $00
    rst $38                                       ; $4ace: $ff
    rlca                                          ; $4acf: $07
    ld bc, $08f8                                  ; $4ad0: $01 $f8 $08
    pop af                                        ; $4ad3: $f1

jr_0f7_4ad4:
    ld [bc], a                                    ; $4ad4: $02
    db $fd                                        ; $4ad5: $fd
    ei                                            ; $4ad6: $fb
    add [hl]                                      ; $4ad7: $86
    inc b                                         ; $4ad8: $04
    ld b, $0a                                     ; $4ad9: $06 $0a
    dec c                                         ; $4adb: $0d
    add hl, bc                                    ; $4adc: $09
    rrca                                          ; $4add: $0f
    ld [bc], a                                    ; $4ade: $02
    ld b, $18                                     ; $4adf: $06 $18
    nop                                           ; $4ae1: $00

jr_0f7_4ae2:
    rst $38                                       ; $4ae2: $ff
    rlca                                          ; $4ae3: $07
    ld bc, $08f8                                  ; $4ae4: $01 $f8 $08
    pop af                                        ; $4ae7: $f1
    ld [bc], a                                    ; $4ae8: $02
    db $fd                                        ; $4ae9: $fd
    ei                                            ; $4aea: $fb
    ld [bc], a                                    ; $4aeb: $02
    ld b, $86                                     ; $4aec: $06 $86
    add hl, bc                                    ; $4aee: $09
    rrca                                          ; $4aef: $0f
    ld a, [bc]                                    ; $4af0: $0a
    dec c                                         ; $4af1: $0d
    inc b                                         ; $4af2: $04
    ld b, $18                                     ; $4af3: $06 $18
    nop                                           ; $4af5: $00
    rst $38                                       ; $4af6: $ff
    rlca                                          ; $4af7: $07
    ld bc, $08f8                                  ; $4af8: $01 $f8 $08
    pop af                                        ; $4afb: $f1
    ld [bc], a                                    ; $4afc: $02
    db $fd                                        ; $4afd: $fd
    ei                                            ; $4afe: $fb
    ld [bc], a                                    ; $4aff: $02
    ld b, $86                                     ; $4b00: $06 $86
    add hl, bc                                    ; $4b02: $09
    rrca                                          ; $4b03: $0f
    dec b                                         ; $4b04: $05
    dec bc                                        ; $4b05: $0b
    ld [bc], a                                    ; $4b06: $02
    ld b, $18                                     ; $4b07: $06 $18
    nop                                           ; $4b09: $00
    rst $38                                       ; $4b0a: $ff
    add hl, bc                                    ; $4b0b: $09
    ld [bc], a                                    ; $4b0c: $02
    ld hl, sp+$08                                 ; $4b0d: $f8 $08
    pop af                                        ; $4b0f: $f1
    ld [bc], a                                    ; $4b10: $02
    ld a, [$faf9]                                 ; $4b11: $fa $f9 $fa
    nop                                           ; $4b14: $00
    inc b                                         ; $4b15: $04
    ld b, c                                       ; $4b16: $41
    adc b                                         ; $4b17: $88
    nop                                           ; $4b18: $00
    ld b, c                                       ; $4b19: $41
    and d                                         ; $4b1a: $a2
    db $e3                                        ; $4b1b: $e3
    and d                                         ; $4b1c: $a2
    db $e3                                        ; $4b1d: $e3
    and d                                         ; $4b1e: $a2
    db $e3                                        ; $4b1f: $e3
    ld [bc], a                                    ; $4b20: $02
    ld b, c                                       ; $4b21: $41
    ld [de], a                                    ; $4b22: $12
    nop                                           ; $4b23: $00
    inc b                                         ; $4b24: $04
    ld [bc], a                                    ; $4b25: $02
    adc b                                         ; $4b26: $88
    nop                                           ; $4b27: $00
    ld [bc], a                                    ; $4b28: $02
    ld b, l                                       ; $4b29: $45
    ld b, a                                       ; $4b2a: $47
    ld b, l                                       ; $4b2b: $45
    ld b, a                                       ; $4b2c: $47
    ld b, l                                       ; $4b2d: $45
    ld b, a                                       ; $4b2e: $47
    ld [bc], a                                    ; $4b2f: $02
    ld [bc], a                                    ; $4b30: $02
    ld [de], a                                    ; $4b31: $12
    nop                                           ; $4b32: $00
    rst $38                                       ; $4b33: $ff
    dec bc                                        ; $4b34: $0b
    inc bc                                        ; $4b35: $03
    ld hl, sp+$08                                 ; $4b36: $f8 $08
    pop af                                        ; $4b38: $f1
    ld [bc], a                                    ; $4b39: $02
    or $f8                                        ; $4b3a: $f6 $f8
    or $00                                        ; $4b3c: $f6 $00
    or $01                                        ; $4b3e: $f6 $01
    ld [bc], a                                    ; $4b40: $02
    nop                                           ; $4b41: $00
    inc b                                         ; $4b42: $04
    jr nz, jr_0f7_4ad4                            ; $4b43: $20 $8f

    ld bc, $5121                                  ; $4b45: $01 $21 $51
    ld [hl], c                                    ; $4b48: $71
    ld d, c                                       ; $4b49: $51

Call_0f7_4b4a:
    ld [hl], c                                    ; $4b4a: $71
    ld d, d                                       ; $4b4b: $52
    ld [hl], e                                    ; $4b4c: $73
    xor d                                         ; $4b4d: $aa
    db $db                                        ; $4b4e: $db
    xor c                                         ; $4b4f: $a9
    reti                                          ; $4b50: $d9


    ld d, b                                       ; $4b51: $50
    ld [hl], b                                    ; $4b52: $70
    nop                                           ; $4b53: $00
    inc bc                                        ; $4b54: $03
    jr nz, jr_0f7_4b5f                            ; $4b55: $20 $08

    nop                                           ; $4b57: $00
    ld [bc], a                                    ; $4b58: $02
    add b                                         ; $4b59: $80
    ld [bc], a                                    ; $4b5a: $02
    add d                                         ; $4b5b: $82
    sub d                                         ; $4b5c: $92
    ld [bc], a                                    ; $4b5d: $02
    add d                                         ; $4b5e: $82

jr_0f7_4b5f:
    ld b, b                                       ; $4b5f: $40
    jp nz, $c745                                  ; $4b60: $c2 $45 $c7

    ld b, l                                       ; $4b63: $45
    rst $00                                       ; $4b64: $c7
    and l                                         ; $4b65: $a5
    ld h, a                                       ; $4b66: $67
    xor d                                         ; $4b67: $aa
    ld l, l                                       ; $4b68: $6d
    ld c, d                                       ; $4b69: $4a
    call $8705                                    ; $4b6a: $cd $05 $87
    add b                                         ; $4b6d: $80
    add d                                         ; $4b6e: $82
    ld [bc], a                                    ; $4b6f: $02
    ld [bc], a                                    ; $4b70: $02
    ld d, $00                                     ; $4b71: $16 $00
    inc b                                         ; $4b73: $04
    ld bc, $000e                                  ; $4b74: $01 $0e $00
    rst $38                                       ; $4b77: $ff
    dec c                                         ; $4b78: $0d
    inc b                                         ; $4b79: $04
    ld hl, sp+$08                                 ; $4b7a: $f8 $08
    pop af                                        ; $4b7c: $f1
    ld [bc], a                                    ; $4b7d: $02
    pop af                                        ; $4b7e: $f1
    ld hl, sp-$11                                 ; $4b7f: $f8 $ef
    nop                                           ; $4b81: $00
    db $fc                                        ; $4b82: $fc
    ld bc, $f9ff                                  ; $4b83: $01 $ff $f9
    ld [bc], a                                    ; $4b86: $02
    jr nz, @+$04                                  ; $4b87: $20 $02

    ld hl, $019c                                  ; $4b89: $21 $9c $01
    ld hl, $7151                                  ; $4b8c: $21 $51 $71
    ld d, c                                       ; $4b8f: $51
    ld [hl], c                                    ; $4b90: $71
    ld d, c                                       ; $4b91: $51
    ld [hl], c                                    ; $4b92: $71
    ld d, c                                       ; $4b93: $51
    ld [hl], c                                    ; $4b94: $71
    ld d, c                                       ; $4b95: $51
    ld [hl], c                                    ; $4b96: $71
    ld d, c                                       ; $4b97: $51
    ld [hl], c                                    ; $4b98: $71
    ld d, d                                       ; $4b99: $52
    ld [hl], e                                    ; $4b9a: $73
    ld d, d                                       ; $4b9b: $52
    ld [hl], e                                    ; $4b9c: $73
    xor d                                         ; $4b9d: $aa
    db $db                                        ; $4b9e: $db
    xor c                                         ; $4b9f: $a9
    reti                                          ; $4ba0: $d9


    xor c                                         ; $4ba1: $a9
    reti                                          ; $4ba2: $d9


    ld d, b                                       ; $4ba3: $50
    ld [hl], b                                    ; $4ba4: $70
    ld d, b                                       ; $4ba5: $50
    ld [hl], b                                    ; $4ba6: $70
    inc b                                         ; $4ba7: $04
    add b                                         ; $4ba8: $80
    sbc h                                         ; $4ba9: $9c
    ld [bc], a                                    ; $4baa: $02
    add d                                         ; $4bab: $82
    ld b, d                                       ; $4bac: $42
    jp nz, $c240                                  ; $4bad: $c2 $40 $c2

    ld b, l                                       ; $4bb0: $45
    rst $00                                       ; $4bb1: $c7
    ld b, l                                       ; $4bb2: $45
    rst $00                                       ; $4bb3: $c7
    ld b, l                                       ; $4bb4: $45
    rst $00                                       ; $4bb5: $c7
    ld b, l                                       ; $4bb6: $45
    rst $00                                       ; $4bb7: $c7
    ld b, l                                       ; $4bb8: $45
    rst $00                                       ; $4bb9: $c7
    ld b, l                                       ; $4bba: $45
    rst $00                                       ; $4bbb: $c7
    and l                                         ; $4bbc: $a5
    ld h, a                                       ; $4bbd: $67
    and l                                         ; $4bbe: $a5
    ld h, a                                       ; $4bbf: $67
    xor d                                         ; $4bc0: $aa
    ld l, l                                       ; $4bc1: $6d
    ld c, d                                       ; $4bc2: $4a
    call $cd4a                                    ; $4bc3: $cd $4a $cd
    ld b, $01                                     ; $4bc6: $06 $01
    add l                                         ; $4bc8: $85
    ld a, [bc]                                    ; $4bc9: $0a
    ld c, $0a                                     ; $4bca: $0e $0a
    ld c, $00                                     ; $4bcc: $0e $00
    inc bc                                        ; $4bce: $03
    inc b                                         ; $4bcf: $04
    inc de                                        ; $4bd0: $13
    nop                                           ; $4bd1: $00
    inc bc                                        ; $4bd2: $03
    ld bc, $0081                                  ; $4bd3: $01 $81 $00
    inc bc                                        ; $4bd6: $03
    ld b, b                                       ; $4bd7: $40
    jr jr_0f7_4bda                                ; $4bd8: $18 $00

jr_0f7_4bda:
    rst $38                                       ; $4bda: $ff
    dec c                                         ; $4bdb: $0d
    inc b                                         ; $4bdc: $04
    ld hl, sp+$08                                 ; $4bdd: $f8 $08
    pop af                                        ; $4bdf: $f1
    ld [bc], a                                    ; $4be0: $02
    ldh a, [$f8]                                  ; $4be1: $f0 $f8
    db $ed                                        ; $4be3: $ed
    nop                                           ; $4be4: $00
    ei                                            ; $4be5: $fb
    ld bc, $f9fd                                  ; $4be6: $01 $fd $f9
    inc b                                         ; $4be9: $04
    ld hl, $019c                                  ; $4bea: $21 $9c $01
    ld hl, $7151                                  ; $4bed: $21 $51 $71
    ld d, c                                       ; $4bf0: $51
    ld [hl], c                                    ; $4bf1: $71
    ld d, c                                       ; $4bf2: $51
    ld [hl], c                                    ; $4bf3: $71
    ld d, c                                       ; $4bf4: $51
    ld [hl], c                                    ; $4bf5: $71
    ld d, c                                       ; $4bf6: $51
    ld [hl], c                                    ; $4bf7: $71
    ld d, d                                       ; $4bf8: $52
    ld [hl], e                                    ; $4bf9: $73
    ld d, d                                       ; $4bfa: $52
    ld [hl], e                                    ; $4bfb: $73
    ld d, d                                       ; $4bfc: $52
    ld [hl], e                                    ; $4bfd: $73
    xor d                                         ; $4bfe: $aa
    db $db                                        ; $4bff: $db
    xor d                                         ; $4c00: $aa
    db $db                                        ; $4c01: $db
    xor c                                         ; $4c02: $a9
    reti                                          ; $4c03: $d9


    xor c                                         ; $4c04: $a9
    reti                                          ; $4c05: $d9


    xor b                                         ; $4c06: $a8
    ret c                                         ; $4c07: $d8

    inc b                                         ; $4c08: $04
    add b                                         ; $4c09: $80
    sbc h                                         ; $4c0a: $9c
    nop                                           ; $4c0b: $00
    add b                                         ; $4c0c: $80
    ld b, d                                       ; $4c0d: $42
    jp nz, $c242                                  ; $4c0e: $c2 $42 $c2

    ld b, b                                       ; $4c11: $40
    jp nz, $c745                                  ; $4c12: $c2 $45 $c7

    ld b, l                                       ; $4c15: $45
    rst $00                                       ; $4c16: $c7
    ld b, l                                       ; $4c17: $45
    rst $00                                       ; $4c18: $c7
    ld b, l                                       ; $4c19: $45
    rst $00                                       ; $4c1a: $c7
    ld b, l                                       ; $4c1b: $45
    rst $00                                       ; $4c1c: $c7
    and l                                         ; $4c1d: $a5
    ld h, a                                       ; $4c1e: $67
    and l                                         ; $4c1f: $a5
    ld h, a                                       ; $4c20: $67
    and l                                         ; $4c21: $a5
    ld h, a                                       ; $4c22: $67
    xor d                                         ; $4c23: $aa
    ld l, l                                       ; $4c24: $6d
    xor d                                         ; $4c25: $aa
    ld l, l                                       ; $4c26: $6d
    inc b                                         ; $4c27: $04
    ld bc, $958b                                  ; $4c28: $01 $8b $95
    sbc e                                         ; $4c2b: $9b
    sub l                                         ; $4c2c: $95
    sbc e                                         ; $4c2d: $9b
    dec d                                         ; $4c2e: $15
    dec de                                        ; $4c2f: $1b
    ld a, [bc]                                    ; $4c30: $0a
    ld c, $0a                                     ; $4c31: $0e $0a
    ld c, $00                                     ; $4c33: $0e $00
    inc bc                                        ; $4c35: $03
    inc b                                         ; $4c36: $04
    rrca                                          ; $4c37: $0f
    nop                                           ; $4c38: $00
    adc d                                         ; $4c39: $8a
    ld bc, $0100                                  ; $4c3a: $01 $00 $01
    nop                                           ; $4c3d: $00
    ld bc, $e1a1                                  ; $4c3e: $01 $a1 $e1
    and b                                         ; $4c41: $a0
    ldh [rP1], a                                  ; $4c42: $e0 $00
    inc bc                                        ; $4c44: $03
    ld b, b                                       ; $4c45: $40
    ld [de], a                                    ; $4c46: $12
    nop                                           ; $4c47: $00
    rst $38                                       ; $4c48: $ff
    rrca                                          ; $4c49: $0f
    dec b                                         ; $4c4a: $05
    ld hl, sp+$08                                 ; $4c4b: $f8 $08
    pop af                                        ; $4c4d: $f1
    ld [bc], a                                    ; $4c4e: $02
    xor $f8                                       ; $4c4f: $ee $f8
    db $eb                                        ; $4c51: $eb
    nop                                           ; $4c52: $00
    ld a, [$fb01]                                 ; $4c53: $fa $01 $fb
    ld hl, sp-$05                                 ; $4c56: $f8 $fb
    ld sp, hl                                     ; $4c58: $f9
    ld [bc], a                                    ; $4c59: $02
    ld bc, $2104                                  ; $4c5a: $01 $04 $21
    sbc d                                         ; $4c5d: $9a
    ld bc, $5121                                  ; $4c5e: $01 $21 $51
    ld [hl], c                                    ; $4c61: $71
    ld d, c                                       ; $4c62: $51
    ld [hl], c                                    ; $4c63: $71
    ld d, c                                       ; $4c64: $51
    ld [hl], c                                    ; $4c65: $71
    ld d, c                                       ; $4c66: $51
    ld [hl], c                                    ; $4c67: $71
    ld d, d                                       ; $4c68: $52
    ld [hl], e                                    ; $4c69: $73
    ld d, d                                       ; $4c6a: $52
    ld [hl], e                                    ; $4c6b: $73
    ld d, d                                       ; $4c6c: $52
    ld [hl], e                                    ; $4c6d: $73
    ld d, d                                       ; $4c6e: $52
    ld [hl], e                                    ; $4c6f: $73
    xor d                                         ; $4c70: $aa
    db $db                                        ; $4c71: $db
    xor d                                         ; $4c72: $aa
    db $db                                        ; $4c73: $db
    xor d                                         ; $4c74: $aa
    db $db                                        ; $4c75: $db
    xor c                                         ; $4c76: $a9
    reti                                          ; $4c77: $d9


    inc b                                         ; $4c78: $04
    add b                                         ; $4c79: $80
    sbc h                                         ; $4c7a: $9c
    nop                                           ; $4c7b: $00
    add b                                         ; $4c7c: $80
    ld b, b                                       ; $4c7d: $40
    ret nz                                        ; $4c7e: $c0

    ld b, d                                       ; $4c7f: $42
    jp nz, $c242                                  ; $4c80: $c2 $42 $c2

    ld b, b                                       ; $4c83: $40
    jp nz, $c745                                  ; $4c84: $c2 $45 $c7

    ld b, l                                       ; $4c87: $45
    rst $00                                       ; $4c88: $c7
    ld b, l                                       ; $4c89: $45
    rst $00                                       ; $4c8a: $c7
    ld b, l                                       ; $4c8b: $45
    rst $00                                       ; $4c8c: $c7
    and l                                         ; $4c8d: $a5
    ld h, a                                       ; $4c8e: $67
    and l                                         ; $4c8f: $a5
    ld h, a                                       ; $4c90: $67
    and l                                         ; $4c91: $a5
    ld h, a                                       ; $4c92: $67
    and l                                         ; $4c93: $a5
    ld h, a                                       ; $4c94: $67
    xor d                                         ; $4c95: $aa
    ld l, l                                       ; $4c96: $6d
    ld [bc], a                                    ; $4c97: $02
    ld bc, $5591                                  ; $4c98: $01 $91 $55
    db $db                                        ; $4c9b: $db
    ld d, l                                       ; $4c9c: $55
    db $db                                        ; $4c9d: $db
    sub l                                         ; $4c9e: $95
    sbc e                                         ; $4c9f: $9b
    sub l                                         ; $4ca0: $95
    sbc e                                         ; $4ca1: $9b
    dec d                                         ; $4ca2: $15
    dec de                                        ; $4ca3: $1b
    dec d                                         ; $4ca4: $15
    dec de                                        ; $4ca5: $1b
    ld a, [bc]                                    ; $4ca6: $0a
    ld c, $0a                                     ; $4ca7: $0e $0a
    ld c, $00                                     ; $4ca9: $0e $00
    inc bc                                        ; $4cab: $03
    inc b                                         ; $4cac: $04
    stop                                          ; $4cad: $10 $00
    adc e                                         ; $4caf: $8b
    xor c                                         ; $4cb0: $a9
    reti                                          ; $4cb1: $d9


    xor b                                         ; $4cb2: $a8
    ret c                                         ; $4cb3: $d8

    xor b                                         ; $4cb4: $a8
    ret c                                         ; $4cb5: $d8

    ld d, b                                       ; $4cb6: $50
    ld [hl], b                                    ; $4cb7: $70
    ld d, b                                       ; $4cb8: $50
    ld [hl], b                                    ; $4cb9: $70
    nop                                           ; $4cba: $00
    inc bc                                        ; $4cbb: $03
    jr nz, jr_0f7_4cca                            ; $4cbc: $20 $0c

    nop                                           ; $4cbe: $00
    add e                                         ; $4cbf: $83
    ld bc, $0100                                  ; $4cc0: $01 $00 $01
    ld [bc], a                                    ; $4cc3: $02
    nop                                           ; $4cc4: $00
    add h                                         ; $4cc5: $84
    ld bc, $0100                                  ; $4cc6: $01 $00 $01
    nop                                           ; $4cc9: $00

jr_0f7_4cca:
    inc bc                                        ; $4cca: $03
    ld bc, $0014                                  ; $4ccb: $01 $14 $00
    rst $38                                       ; $4cce: $ff
    rrca                                          ; $4ccf: $0f
    dec b                                         ; $4cd0: $05
    ld hl, sp+$08                                 ; $4cd1: $f8 $08
    pop af                                        ; $4cd3: $f1
    ld [bc], a                                    ; $4cd4: $02
    jp hl                                         ; $4cd5: $e9


    ld sp, hl                                     ; $4cd6: $f9
    db $ec                                        ; $4cd7: $ec
    ld bc, $f8f9                                  ; $4cd8: $01 $f9 $f8
    ld sp, hl                                     ; $4cdb: $f9
    nop                                           ; $4cdc: $00
    ld sp, hl                                     ; $4cdd: $f9
    ld bc, $0104                                  ; $4cde: $01 $04 $01
    sbc h                                         ; $4ce1: $9c
    nop                                           ; $4ce2: $00
    ld bc, $0302                                  ; $4ce3: $01 $02 $03
    ld [bc], a                                    ; $4ce6: $02
    inc bc                                        ; $4ce7: $03
    ld b, d                                       ; $4ce8: $42
    ld b, e                                       ; $4ce9: $43
    ld b, d                                       ; $4cea: $42
    ld b, e                                       ; $4ceb: $43
    ld [bc], a                                    ; $4cec: $02
    ld b, e                                       ; $4ced: $43
    and d                                         ; $4cee: $a2
    db $e3                                        ; $4cef: $e3
    and d                                         ; $4cf0: $a2
    db $e3                                        ; $4cf1: $e3
    and d                                         ; $4cf2: $a2
    db $e3                                        ; $4cf3: $e3
    and l                                         ; $4cf4: $a5
    and $a5                                       ; $4cf5: $e6 $a5
    and $a5                                       ; $4cf7: $e6 $a5
    and $a5                                       ; $4cf9: $e6 $a5
    and $a5                                       ; $4cfb: $e6 $a5
    and $04                                       ; $4cfd: $e6 $04
    add b                                         ; $4cff: $80
    inc b                                         ; $4d00: $04
    add h                                         ; $4d01: $84
    xor a                                         ; $4d02: $af
    add b                                         ; $4d03: $80
    add h                                         ; $4d04: $84
    adc d                                         ; $4d05: $8a
    adc [hl]                                      ; $4d06: $8e
    adc d                                         ; $4d07: $8a
    adc [hl]                                      ; $4d08: $8e
    adc d                                         ; $4d09: $8a
    adc [hl]                                      ; $4d0a: $8e
    ld c, d                                       ; $4d0b: $4a
    adc $4a                                       ; $4d0c: $ce $4a
    adc $4a                                       ; $4d0e: $ce $4a
    adc $4a                                       ; $4d10: $ce $4a
    adc $4a                                       ; $4d12: $ce $4a
    adc $55                                       ; $4d14: $ce $55
    db $db                                        ; $4d16: $db
    ld d, l                                       ; $4d17: $55
    db $db                                        ; $4d18: $db
    ld d, l                                       ; $4d19: $55
    db $db                                        ; $4d1a: $db
    xor d                                         ; $4d1b: $aa
    db $db                                        ; $4d1c: $db
    xor d                                         ; $4d1d: $aa
    db $db                                        ; $4d1e: $db
    xor d                                         ; $4d1f: $aa
    db $db                                        ; $4d20: $db
    xor d                                         ; $4d21: $aa
    db $db                                        ; $4d22: $db
    xor c                                         ; $4d23: $a9
    reti                                          ; $4d24: $d9


    xor c                                         ; $4d25: $a9
    reti                                          ; $4d26: $d9


    xor b                                         ; $4d27: $a8
    ret c                                         ; $4d28: $d8

    xor b                                         ; $4d29: $a8
    ret c                                         ; $4d2a: $d8

    xor b                                         ; $4d2b: $a8

jr_0f7_4d2c:
    ret c                                         ; $4d2c: $d8

    ld d, b                                       ; $4d2d: $50
    ld [hl], b                                    ; $4d2e: $70
    ld d, b                                       ; $4d2f: $50
    ld [hl], b                                    ; $4d30: $70
    nop                                           ; $4d31: $00
    inc bc                                        ; $4d32: $03
    jr nz, jr_0f7_4d3b                            ; $4d33: $20 $06

    nop                                           ; $4d35: $00
    sub a                                         ; $4d36: $97
    add b                                         ; $4d37: $80
    nop                                           ; $4d38: $00
    add b                                         ; $4d39: $80
    nop                                           ; $4d3a: $00

jr_0f7_4d3b:
    add b                                         ; $4d3b: $80
    nop                                           ; $4d3c: $00
    xor d                                         ; $4d3d: $aa
    ld l, l                                       ; $4d3e: $6d
    ld c, d                                       ; $4d3f: $4a
    call $cd4a                                    ; $4d40: $cd $4a $cd
    ld a, [bc]                                    ; $4d43: $0a
    adc l                                         ; $4d44: $8d
    adc d                                         ; $4d45: $8a
    adc l                                         ; $4d46: $8d
    ld a, [bc]                                    ; $4d47: $0a
    dec c                                         ; $4d48: $0d
    dec b                                         ; $4d49: $05
    rlca                                          ; $4d4a: $07
    dec b                                         ; $4d4b: $05
    rlca                                          ; $4d4c: $07
    nop                                           ; $4d4d: $00
    inc bc                                        ; $4d4e: $03
    ld [bc], a                                    ; $4d4f: $02
    inc c                                         ; $4d50: $0c
    nop                                           ; $4d51: $00
    inc c                                         ; $4d52: $0c
    ld bc, $000e                                  ; $4d53: $01 $0e $00
    rst $38                                       ; $4d56: $ff
    rrca                                          ; $4d57: $0f
    dec b                                         ; $4d58: $05
    ld hl, sp+$08                                 ; $4d59: $f8 $08
    pop af                                        ; $4d5b: $f1
    ld [bc], a                                    ; $4d5c: $02
    add sp, -$07                                  ; $4d5d: $e8 $f9
    db $ec                                        ; $4d5f: $ec
    nop                                           ; $4d60: $00
    ld hl, sp-$08                                 ; $4d61: $f8 $f8
    ld hl, sp+$00                                 ; $4d63: $f8 $00
    ld hl, sp+$01                                 ; $4d65: $f8 $01
    inc b                                         ; $4d67: $04
    ld bc, $009c                                  ; $4d68: $01 $9c $00
    ld bc, $0100                                  ; $4d6b: $01 $00 $01
    nop                                           ; $4d6e: $00
    ld bc, $4140                                  ; $4d6f: $01 $40 $41
    ld b, b                                       ; $4d72: $40
    ld b, c                                       ; $4d73: $41
    nop                                           ; $4d74: $00
    ld b, c                                       ; $4d75: $41
    ld [bc], a                                    ; $4d76: $02
    ld b, e                                       ; $4d77: $43
    nop                                           ; $4d78: $00
    ld b, c                                       ; $4d79: $41
    ld [bc], a                                    ; $4d7a: $02
    ld b, e                                       ; $4d7b: $43
    ld hl, $2160                                  ; $4d7c: $21 $60 $21
    ld h, b                                       ; $4d7f: $60
    dec b                                         ; $4d80: $05
    ld b, [hl]                                    ; $4d81: $46
    add c                                         ; $4d82: $81
    jp nz, $c281                                  ; $4d83: $c2 $81 $c2

    ld [bc], a                                    ; $4d86: $02
    ld b, b                                       ; $4d87: $40
    ld [bc], a                                    ; $4d88: $02
    ld b, d                                       ; $4d89: $42
    ld [bc], a                                    ; $4d8a: $02
    ld [bc], a                                    ; $4d8b: $02
    or c                                          ; $4d8c: $b1
    nop                                           ; $4d8d: $00
    ld [bc], a                                    ; $4d8e: $02
    ld b, b                                       ; $4d8f: $40
    ld b, d                                       ; $4d90: $42
    nop                                           ; $4d91: $00
    ld [bc], a                                    ; $4d92: $02
    inc b                                         ; $4d93: $04
    ld b, $00                                     ; $4d94: $06 $00
    ld [bc], a                                    ; $4d96: $02
    ld bc, $0143                                  ; $4d97: $01 $43 $01
    inc bc                                        ; $4d9a: $03
    inc b                                         ; $4d9b: $04
    ld b, [hl]                                    ; $4d9c: $46
    jr nz, jr_0f7_4dc1                            ; $4d9d: $20 $22

    and d                                         ; $4d9f: $a2
    jr nz, jr_0f7_4d2c                            ; $4da0: $20 $8a

    ld c, h                                       ; $4da2: $4c
    add d                                         ; $4da3: $82
    ld b, b                                       ; $4da4: $40
    and d                                         ; $4da5: $a2
    ld hl, $0222                                  ; $4da6: $21 $22 $02
    ld [hl+], a                                   ; $4da9: $22

Call_0f7_4daa:
    ld d, e                                       ; $4daa: $53
    and d                                         ; $4dab: $a2
    add d                                         ; $4dac: $82
    and d                                         ; $4dad: $a2
    db $d3                                        ; $4dae: $d3
    jr z, jr_0f7_4dc9                             ; $4daf: $28 $18

    add hl, hl                                    ; $4db1: $29
    add hl, bc                                    ; $4db2: $09
    and b                                         ; $4db3: $a0
    ret nz                                        ; $4db4: $c0

    jr nz, jr_0f7_4e07                            ; $4db5: $20 $50

    jr z, @+$1a                                   ; $4db7: $28 $18

    db $10                                        ; $4db9: $10
    jr nc, jr_0f7_4dfc                            ; $4dba: $30 $40

    ld h, b                                       ; $4dbc: $60
    nop                                           ; $4dbd: $00
    inc bc                                        ; $4dbe: $03
    jr nz, jr_0f7_4dcf                            ; $4dbf: $20 $0e

jr_0f7_4dc1:
    nop                                           ; $4dc1: $00
    adc a                                         ; $4dc2: $8f
    ld [bc], a                                    ; $4dc3: $02
    add c                                         ; $4dc4: $81
    ld [bc], a                                    ; $4dc5: $02
    add h                                         ; $4dc6: $84
    ld a, [bc]                                    ; $4dc7: $0a
    adc h                                         ; $4dc8: $8c

jr_0f7_4dc9:
    add d                                         ; $4dc9: $82
    add c                                         ; $4dca: $81
    ld [bc], a                                    ; $4dcb: $02
    ld bc, $0604                                  ; $4dcc: $01 $04 $06

jr_0f7_4dcf:
    ld bc, $0003                                  ; $4dcf: $01 $03 $00
    inc bc                                        ; $4dd2: $03
    ld [bc], a                                    ; $4dd3: $02
    ld c, $00                                     ; $4dd4: $0e $00
    ld [bc], a                                    ; $4dd6: $02
    ld bc, $0006                                  ; $4dd7: $01 $06 $00
    ld [bc], a                                    ; $4dda: $02
    ld bc, $000e                                  ; $4ddb: $01 $0e $00
    rst $38                                       ; $4dde: $ff
    rrca                                          ; $4ddf: $0f
    dec b                                         ; $4de0: $05
    ld hl, sp+$08                                 ; $4de1: $f8 $08
    pop af                                        ; $4de3: $f1
    ld [bc], a                                    ; $4de4: $02
    rst $20                                       ; $4de5: $e7
    ld sp, hl                                     ; $4de6: $f9
    ld [$f700], a                                 ; $4de7: $ea $00 $f7
    ld hl, sp-$09                                 ; $4dea: $f8 $f7
    nop                                           ; $4dec: $00
    rst $30                                       ; $4ded: $f7
    ld bc, $0104                                  ; $4dee: $01 $04 $01
    sbc e                                         ; $4df1: $9b
    nop                                           ; $4df2: $00
    ld bc, $0100                                  ; $4df3: $01 $00 $01
    nop                                           ; $4df6: $00
    ld bc, $4140                                  ; $4df7: $01 $40 $41
    ld b, b                                       ; $4dfa: $40
    ld b, c                                       ; $4dfb: $41

jr_0f7_4dfc:
    ld [bc], a                                    ; $4dfc: $02
    ld b, e                                       ; $4dfd: $43
    nop                                           ; $4dfe: $00
    ld b, c                                       ; $4dff: $41
    nop                                           ; $4e00: $00
    ld b, c                                       ; $4e01: $41
    jr nz, jr_0f7_4e65                            ; $4e02: $20 $61

    ld hl, $0160                                  ; $4e04: $21 $60 $01

jr_0f7_4e07:
    ld b, b                                       ; $4e07: $40
    add c                                         ; $4e08: $81
    jp nz, Jump_0f7_4605                          ; $4e09: $c2 $05 $46

    ld bc, $4003                                  ; $4e0c: $01 $03 $40
    ld [bc], a                                    ; $4e0f: $02
    nop                                           ; $4e10: $00
    ld [bc], a                                    ; $4e11: $02
    ld b, d                                       ; $4e12: $42
    ld [bc], a                                    ; $4e13: $02
    ld [bc], a                                    ; $4e14: $02
    and a                                         ; $4e15: $a7
    nop                                           ; $4e16: $00
    ld [bc], a                                    ; $4e17: $02
    nop                                           ; $4e18: $00
    ld [bc], a                                    ; $4e19: $02
    inc b                                         ; $4e1a: $04
    ld b, $00                                     ; $4e1b: $06 $00
    ld [bc], a                                    ; $4e1d: $02
    ld bc, $2143                                  ; $4e1e: $01 $43 $21
    ld h, e                                       ; $4e21: $63
    nop                                           ; $4e22: $00
    ld [bc], a                                    ; $4e23: $02
    nop                                           ; $4e24: $00
    ld [bc], a                                    ; $4e25: $02
    nop                                           ; $4e26: $00
    ld [bc], a                                    ; $4e27: $02
    add d                                         ; $4e28: $82
    nop                                           ; $4e29: $00
    adc d                                         ; $4e2a: $8a
    ld c, h                                       ; $4e2b: $4c
    add d                                         ; $4e2c: $82
    nop                                           ; $4e2d: $00
    jr nz, jr_0f7_4e30                            ; $4e2e: $20 $00

jr_0f7_4e30:
    jr nz, jr_0f7_4e42                            ; $4e30: $20 $10

    jr z, jr_0f7_4e3c                             ; $4e32: $28 $08

    ld hl, $2001                                  ; $4e34: $21 $01 $20
    db $10                                        ; $4e37: $10
    and b                                         ; $4e38: $a0
    ret nc                                        ; $4e39: $d0

    jr nz, jr_0f7_4e3c                            ; $4e3a: $20 $00

jr_0f7_4e3c:
    jr nz, jr_0f7_4e40                            ; $4e3c: $20 $02

    nop                                           ; $4e3e: $00
    add h                                         ; $4e3f: $84

jr_0f7_4e40:
    jr nz, jr_0f7_4e52                            ; $4e40: $20 $10

jr_0f7_4e42:
    jr nc, jr_0f7_4e44                            ; $4e42: $30 $00

jr_0f7_4e44:
    inc bc                                        ; $4e44: $03
    jr nz, @+$10                                  ; $4e45: $20 $0e

    nop                                           ; $4e47: $00
    adc a                                         ; $4e48: $8f
    ld [bc], a                                    ; $4e49: $02
    add b                                         ; $4e4a: $80
    ld [bc], a                                    ; $4e4b: $02
    add c                                         ; $4e4c: $81
    ld [bc], a                                    ; $4e4d: $02
    add h                                         ; $4e4e: $84
    adc d                                         ; $4e4f: $8a
    adc h                                         ; $4e50: $8c
    ld [bc], a                                    ; $4e51: $02

jr_0f7_4e52:
    nop                                           ; $4e52: $00
    ld bc, $0003                                  ; $4e53: $01 $03 $00
    ld [bc], a                                    ; $4e56: $02
    nop                                           ; $4e57: $00
    inc bc                                        ; $4e58: $03
    ld [bc], a                                    ; $4e59: $02
    stop                                          ; $4e5a: $10 $00
    ld [bc], a                                    ; $4e5c: $02
    ld bc, $0016                                  ; $4e5d: $01 $16 $00
    rst $38                                       ; $4e60: $ff
    dec c                                         ; $4e61: $0d
    inc b                                         ; $4e62: $04
    ld hl, sp+$08                                 ; $4e63: $f8 $08

jr_0f7_4e65:
    pop af                                        ; $4e65: $f1
    ld [bc], a                                    ; $4e66: $02
    push hl                                       ; $4e67: $e5
    ld sp, hl                                     ; $4e68: $f9
    add sp, $00                                   ; $4e69: $e8 $00
    push af                                       ; $4e6b: $f5
    ld sp, hl                                     ; $4e6c: $f9
    push af                                       ; $4e6d: $f5
    rst $38                                       ; $4e6e: $ff
    inc b                                         ; $4e6f: $04
    ld bc, $009b                                  ; $4e70: $01 $9b $00
    ld bc, $0100                                  ; $4e73: $01 $00 $01
    nop                                           ; $4e76: $00
    ld bc, $0100                                  ; $4e77: $01 $00 $01
    ld b, b                                       ; $4e7a: $40
    ld b, c                                       ; $4e7b: $41
    ld b, b                                       ; $4e7c: $40
    ld b, c                                       ; $4e7d: $41
    ld [bc], a                                    ; $4e7e: $02
    ld b, e                                       ; $4e7f: $43
    jr nz, jr_0f7_4ee3                            ; $4e80: $20 $61

    ld hl, $0160                                  ; $4e82: $21 $60 $01
    ld b, b                                       ; $4e85: $40
    ld bc, $8140                                  ; $4e86: $01 $40 $81
    jp nz, Jump_0f7_4201                          ; $4e89: $c2 $01 $42

    ld bc, $4005                                  ; $4e8c: $01 $05 $40
    ld [bc], a                                    ; $4e8f: $02
    nop                                           ; $4e90: $00
    inc b                                         ; $4e91: $04
    ld [bc], a                                    ; $4e92: $02
    xor c                                         ; $4e93: $a9
    nop                                           ; $4e94: $00
    ld [bc], a                                    ; $4e95: $02
    inc b                                         ; $4e96: $04
    ld b, $00                                     ; $4e97: $06 $00
    ld [bc], a                                    ; $4e99: $02
    ld bc, $0143                                  ; $4e9a: $01 $43 $01
    ld b, e                                       ; $4e9d: $43
    nop                                           ; $4e9e: $00
    ld [bc], a                                    ; $4e9f: $02
    nop                                           ; $4ea0: $00
    ld [bc], a                                    ; $4ea1: $02
    nop                                           ; $4ea2: $00
    ld [bc], a                                    ; $4ea3: $02
    add d                                         ; $4ea4: $82
    ld b, h                                       ; $4ea5: $44
    ld [bc], a                                    ; $4ea6: $02
    add b                                         ; $4ea7: $80
    ld [bc], a                                    ; $4ea8: $02
    add c                                         ; $4ea9: $81
    ld b, b                                       ; $4eaa: $40
    jr nz, jr_0f7_4eed                            ; $4eab: $20 $40

    nop                                           ; $4ead: $00
    ld b, d                                       ; $4eae: $42
    ld [bc], a                                    ; $4eaf: $02
    ld b, b                                       ; $4eb0: $40
    add c                                         ; $4eb1: $81
    ld b, c                                       ; $4eb2: $41
    ld hl, $2040                                  ; $4eb3: $21 $40 $20
    ld b, b                                       ; $4eb6: $40
    nop                                           ; $4eb7: $00
    add b                                         ; $4eb8: $80
    ret nz                                        ; $4eb9: $c0

    nop                                           ; $4eba: $00
    ld b, b                                       ; $4ebb: $40
    nop                                           ; $4ebc: $00
    inc bc                                        ; $4ebd: $03
    ld b, b                                       ; $4ebe: $40
    stop                                          ; $4ebf: $10 $00
    adc l                                         ; $4ec1: $8d
    ld bc, $0102                                  ; $4ec2: $01 $02 $01
    ld [bc], a                                    ; $4ec5: $02
    ld bc, $0100                                  ; $4ec6: $01 $00 $01
    nop                                           ; $4ec9: $00
    ld [bc], a                                    ; $4eca: $02
    inc bc                                        ; $4ecb: $03
    nop                                           ; $4ecc: $00
    ld bc, $0300                                  ; $4ecd: $01 $00 $03
    ld bc, $000a                                  ; $4ed0: $01 $0a $00
    rst $38                                       ; $4ed3: $ff
    dec c                                         ; $4ed4: $0d
    inc b                                         ; $4ed5: $04
    ld hl, sp+$08                                 ; $4ed6: $f8 $08
    pop af                                        ; $4ed8: $f1
    ld [bc], a                                    ; $4ed9: $02
    push hl                                       ; $4eda: $e5
    ld sp, hl                                     ; $4edb: $f9
    jp hl                                         ; $4edc: $e9


    nop                                           ; $4edd: $00
    push af                                       ; $4ede: $f5
    ld sp, hl                                     ; $4edf: $f9
    push af                                       ; $4ee0: $f5
    nop                                           ; $4ee1: $00
    inc b                                         ; $4ee2: $04

jr_0f7_4ee3:
    ld bc, $009c                                  ; $4ee3: $01 $9c $00
    ld bc, $0100                                  ; $4ee6: $01 $00 $01
    nop                                           ; $4ee9: $00
    ld bc, $4140                                  ; $4eea: $01 $40 $41

jr_0f7_4eed:
    ld b, d                                       ; $4eed: $42
    ld b, e                                       ; $4eee: $43
    nop                                           ; $4eef: $00
    ld b, c                                       ; $4ef0: $41
    nop                                           ; $4ef1: $00
    ld b, c                                       ; $4ef2: $41
    ld bc, $2140                                  ; $4ef3: $01 $40 $21
    ld h, b                                       ; $4ef6: $60
    ld bc, $8142                                  ; $4ef7: $01 $42 $81
    jp nz, Jump_0f7_4001                          ; $4efa: $c2 $01 $40

    ld b, c                                       ; $4efd: $41
    nop                                           ; $4efe: $00
    ld b, c                                       ; $4eff: $41
    jr nz, jr_0f7_4f04                            ; $4f00: $20 $02

    ld b, b                                       ; $4f02: $40
    ld [bc], a                                    ; $4f03: $02

jr_0f7_4f04:
    ld b, d                                       ; $4f04: $42
    ld [bc], a                                    ; $4f05: $02
    ld [bc], a                                    ; $4f06: $02
    adc l                                         ; $4f07: $8d
    nop                                           ; $4f08: $00
    ld [bc], a                                    ; $4f09: $02
    nop                                           ; $4f0a: $00
    ld [bc], a                                    ; $4f0b: $02
    inc b                                         ; $4f0c: $04
    ld b, [hl]                                    ; $4f0d: $46
    ld bc, $0143                                  ; $4f0e: $01 $43 $01
    inc bc                                        ; $4f11: $03
    nop                                           ; $4f12: $00
    ld [bc], a                                    ; $4f13: $02
    nop                                           ; $4f14: $00
    ld [bc], a                                    ; $4f15: $02
    ld [bc], a                                    ; $4f16: $02
    sbc b                                         ; $4f17: $98
    ld b, b                                       ; $4f18: $40
    ld [bc], a                                    ; $4f19: $02
    inc b                                         ; $4f1a: $04

jr_0f7_4f1b:
    ld [bc], a                                    ; $4f1b: $02
    add b                                         ; $4f1c: $80
    ld [bc], a                                    ; $4f1d: $02
    add c                                         ; $4f1e: $81
    add d                                         ; $4f1f: $82
    add h                                         ; $4f20: $84
    add d                                         ; $4f21: $82
    add h                                         ; $4f22: $84
    ld b, d                                       ; $4f23: $42
    ld [bc], a                                    ; $4f24: $02

jr_0f7_4f25:
    ld b, b                                       ; $4f25: $40
    jr nz, jr_0f7_4f68                            ; $4f26: $20 $40

    and b                                         ; $4f28: $a0
    ld b, b                                       ; $4f29: $40
    nop                                           ; $4f2a: $00
    ld b, b                                       ; $4f2b: $40
    nop                                           ; $4f2c: $00
    jr nz, jr_0f7_4f8f                            ; $4f2d: $20 $60

    nop                                           ; $4f2f: $00
    inc bc                                        ; $4f30: $03
    ld b, b                                       ; $4f31: $40
    jr jr_0f7_4f34                                ; $4f32: $18 $00

jr_0f7_4f34:
    add l                                         ; $4f34: $85
    ld [bc], a                                    ; $4f35: $02
    nop                                           ; $4f36: $00
    ld bc, $0003                                  ; $4f37: $01 $03 $00
    inc bc                                        ; $4f3a: $03
    ld [bc], a                                    ; $4f3b: $02
    stop                                          ; $4f3c: $10 $00
    rst $38                                       ; $4f3e: $ff
    rrca                                          ; $4f3f: $0f
    dec b                                         ; $4f40: $05
    rst $30                                       ; $4f41: $f7
    ld [$09f8], sp                                ; $4f42: $08 $f8 $09
    push af                                       ; $4f45: $f5
    ld sp, hl                                     ; $4f46: $f9
    push af                                       ; $4f47: $f5
    ld bc, $03fc                                  ; $4f48: $01 $fc $03
    dec b                                         ; $4f4b: $05
    ld sp, hl                                     ; $4f4c: $f9
    dec b                                         ; $4f4d: $05
    db $fd                                        ; $4f4e: $fd
    sbc b                                         ; $4f4f: $98
    ld [$540b], sp                                ; $4f50: $08 $0b $54
    ld d, [hl]                                    ; $4f53: $56
    ld a, [bc]                                    ; $4f54: $0a
    dec bc                                        ; $4f55: $0b
    inc d                                         ; $4f56: $14
    dec d                                         ; $4f57: $15
    ld [$500b], sp                                ; $4f58: $08 $0b $50
    ld d, a                                       ; $4f5b: $57
    xor b                                         ; $4f5c: $a8
    adc e                                         ; $4f5d: $8b
    ld d, h                                       ; $4f5e: $54
    ld b, h                                       ; $4f5f: $44
    xor d                                         ; $4f60: $aa
    xor b                                         ; $4f61: $a8
    dec d                                         ; $4f62: $15
    db $10                                        ; $4f63: $10
    ld a, [hl+]                                   ; $4f64: $2a
    jr z, jr_0f7_4f6c                             ; $4f65: $28 $05

    nop                                           ; $4f67: $00

jr_0f7_4f68:
    ld [bc], a                                    ; $4f68: $02
    ld a, [bc]                                    ; $4f69: $0a
    adc b                                         ; $4f6a: $88
    dec d                                         ; $4f6b: $15

jr_0f7_4f6c:
    db $10                                        ; $4f6c: $10
    ld a, [bc]                                    ; $4f6d: $0a
    ld a, b                                       ; $4f6e: $78
    dec b                                         ; $4f6f: $05
    ld b, b                                       ; $4f70: $40
    jr z, jr_0f7_4f1b                             ; $4f71: $28 $a8

    ld [bc], a                                    ; $4f73: $02
    inc d                                         ; $4f74: $14
    add d                                         ; $4f75: $82
    ld a, [hl+]                                   ; $4f76: $2a
    xor d                                         ; $4f77: $aa
    ld [bc], a                                    ; $4f78: $02
    ld d, b                                       ; $4f79: $50
    add [hl]                                      ; $4f7a: $86
    jr z, jr_0f7_4f25                             ; $4f7b: $28 $a8

    ld d, b                                       ; $4f7d: $50
    sub b                                         ; $4f7e: $90
    ld [hl+], a                                   ; $4f7f: $22
    ld [bc], a                                    ; $4f80: $02
    ld [bc], a                                    ; $4f81: $02
    ld d, l                                       ; $4f82: $55
    add d                                         ; $4f83: $82
    and d                                         ; $4f84: $a2
    ld [hl+], a                                   ; $4f85: $22
    ld [bc], a                                    ; $4f86: $02
    ld d, l                                       ; $4f87: $55
    adc h                                         ; $4f88: $8c
    xor b                                         ; $4f89: $a8
    nop                                           ; $4f8a: $00
    ld d, l                                       ; $4f8b: $55
    dec b                                         ; $4f8c: $05
    xor b                                         ; $4f8d: $a8
    nop                                           ; $4f8e: $00

jr_0f7_4f8f:
    ld d, l                                       ; $4f8f: $55
    dec b                                         ; $4f90: $05
    xor d                                         ; $4f91: $aa
    ld a, [bc]                                    ; $4f92: $0a
    ld d, h                                       ; $4f93: $54
    inc b                                         ; $4f94: $04
    ld [bc], a                                    ; $4f95: $02
    ld bc, $0010                                  ; $4f96: $01 $10 $00
    adc b                                         ; $4f99: $88
    adc b                                         ; $4f9a: $88
    ld [$1050], sp                                ; $4f9b: $08 $50 $10
    xor b                                         ; $4f9e: $a8
    ld [$1050], sp                                ; $4f9f: $08 $50 $10
    ld [bc], a                                    ; $4fa2: $02
    jr z, jr_0f7_4fa7                             ; $4fa3: $28 $02

    ld d, h                                       ; $4fa5: $54
    ld [bc], a                                    ; $4fa6: $02

jr_0f7_4fa7:
    nop                                           ; $4fa7: $00
    adc d                                         ; $4fa8: $8a
    ld a, [bc]                                    ; $4fa9: $0a
    jr c, jr_0f7_4ff1                             ; $4faa: $38 $45

    ld h, l                                       ; $4fac: $65
    ld a, [bc]                                    ; $4fad: $0a
    ld [hl], d                                    ; $4fae: $72
    dec b                                         ; $4faf: $05
    pop af                                        ; $4fb0: $f1
    add b                                         ; $4fb1: $80
    ldh [rSC], a                                  ; $4fb2: $e0 $02
    dec b                                         ; $4fb4: $05
    ld [bc], a                                    ; $4fb5: $02
    jr z, jr_0f7_4fca                             ; $4fb6: $28 $12

    nop                                           ; $4fb8: $00
    add h                                         ; $4fb9: $84
    ld [$0400], sp                                ; $4fba: $08 $00 $04
    nop                                           ; $4fbd: $00
    ld [bc], a                                    ; $4fbe: $02
    ld [$0002], sp                                ; $4fbf: $08 $02 $00
    ld [bc], a                                    ; $4fc2: $02
    ld [$0004], sp                                ; $4fc3: $08 $04 $00
    ld [bc], a                                    ; $4fc6: $02
    ld bc, $0010                                  ; $4fc7: $01 $10 $00

jr_0f7_4fca:
    rst $38                                       ; $4fca: $ff
    rrca                                          ; $4fcb: $0f
    dec b                                         ; $4fcc: $05
    rst $30                                       ; $4fcd: $f7
    ld [$09f8], sp                                ; $4fce: $08 $f8 $09
    pop af                                        ; $4fd1: $f1
    ld sp, hl                                     ; $4fd2: $f9
    db $f4                                        ; $4fd3: $f4
    ld bc, $03f7                                  ; $4fd4: $01 $f7 $03
    ld bc, $01f9                                  ; $4fd7: $01 $f9 $01
    ld bc, $0086                                  ; $4fda: $01 $86 $00
    jr nz, jr_0f7_4fdf                            ; $4fdd: $20 $00

jr_0f7_4fdf:
    ld [hl], b                                    ; $4fdf: $70
    ld [bc], a                                    ; $4fe0: $02
    ld [hl+], a                                   ; $4fe1: $22
    ld [bc], a                                    ; $4fe2: $02
    dec b                                         ; $4fe3: $05
    ld [bc], a                                    ; $4fe4: $02
    ld [bc], a                                    ; $4fe5: $02
    ld [bc], a                                    ; $4fe6: $02
    dec b                                         ; $4fe7: $05
    ld [bc], a                                    ; $4fe8: $02
    nop                                           ; $4fe9: $00
    add d                                         ; $4fea: $82
    dec b                                         ; $4feb: $05
    inc b                                         ; $4fec: $04
    ld [bc], a                                    ; $4fed: $02
    ld a, [hl+]                                   ; $4fee: $2a
    ld [bc], a                                    ; $4fef: $02
    dec b                                         ; $4ff0: $05

jr_0f7_4ff1:
    ld [bc], a                                    ; $4ff1: $02
    ld [$1402], sp                                ; $4ff2: $08 $02 $14
    sbc b                                         ; $4ff5: $98
    ld a, [bc]                                    ; $4ff6: $0a
    ld [bc], a                                    ; $4ff7: $02
    ld d, l                                       ; $4ff8: $55
    ld d, b                                       ; $4ff9: $50
    xor d                                         ; $4ffa: $aa
    xor b                                         ; $4ffb: $a8
    ld d, l                                       ; $4ffc: $55
    ld d, b                                       ; $4ffd: $50
    nop                                           ; $4ffe: $00
    ld c, $80                                     ; $4fff: $0e $80
    adc b                                         ; $5001: $88
    nop                                           ; $5002: $00
    ld b, $a2                                     ; $5003: $06 $a2
    and [hl]                                      ; $5005: $a6
    ld b, c                                       ; $5006: $41
    ld c, a                                       ; $5007: $4f
    and b                                         ; $5008: $a0
    cp [hl]                                       ; $5009: $be
    ld d, c                                       ; $500a: $51
    ld e, l                                       ; $500b: $5d
    ld [hl+], a                                   ; $500c: $22
    jr nz, jr_0f7_5011                            ; $500d: $20 $02

    ld d, l                                       ; $500f: $55
    add d                                         ; $5010: $82

jr_0f7_5011:
    and d                                         ; $5011: $a2
    ld [hl+], a                                   ; $5012: $22
    ld [bc], a                                    ; $5013: $02
    ld d, l                                       ; $5014: $55
    adc d                                         ; $5015: $8a
    xor b                                         ; $5016: $a8
    jr z, jr_0f7_506e                             ; $5017: $28 $55

    dec b                                         ; $5019: $05
    xor d                                         ; $501a: $aa
    ld a, [bc]                                    ; $501b: $0a
    ld d, l                                       ; $501c: $55
    ld de, $28aa                                  ; $501d: $11 $aa $28
    ld [bc], a                                    ; $5020: $02
    ld [bc], a                                    ; $5021: $02
    ld b, $00                                     ; $5022: $06 $00
    ld [bc], a                                    ; $5024: $02
    ld [bc], a                                    ; $5025: $02
    ld [bc], a                                    ; $5026: $02
    nop                                           ; $5027: $00
    ld [bc], a                                    ; $5028: $02
    ld [bc], a                                    ; $5029: $02
    ld [$0200], sp                                ; $502a: $08 $00 $02
    ld bc, $0202                                  ; $502d: $01 $02 $02
    ld [bc], a                                    ; $5030: $02
    ld d, l                                       ; $5031: $55
    ld [bc], a                                    ; $5032: $02
    adc d                                         ; $5033: $8a
    ld [bc], a                                    ; $5034: $02
    ld d, b                                       ; $5035: $50
    add h                                         ; $5036: $84
    xor d                                         ; $5037: $aa
    and b                                         ; $5038: $a0
    dec d                                         ; $5039: $15
    ld de, $2a02                                  ; $503a: $11 $02 $2a
    adc [hl]                                      ; $503d: $8e
    inc b                                         ; $503e: $04
    rlca                                          ; $503f: $07
    ld [$440a], sp                                ; $5040: $08 $0a $44
    ld b, c                                       ; $5043: $41
    ld a, [hl+]                                   ; $5044: $2a
    ld hl, $4754                                  ; $5045: $21 $54 $47
    xor b                                         ; $5048: $a8
    xor a                                         ; $5049: $af
    ld d, h                                       ; $504a: $54
    ld d, a                                       ; $504b: $57
    ld [bc], a                                    ; $504c: $02
    jr z, jr_0f7_505f                             ; $504d: $28 $10

    nop                                           ; $504f: $00
    add d                                         ; $5050: $82
    ld b, b                                       ; $5051: $40
    ret nz                                        ; $5052: $c0

    ld [bc], a                                    ; $5053: $02
    add b                                         ; $5054: $80
    adc b                                         ; $5055: $88
    ld b, b                                       ; $5056: $40
    ret nz                                        ; $5057: $c0

    xor b                                         ; $5058: $a8
    ld [$8555], sp                                ; $5059: $08 $55 $85

jr_0f7_505c:
    ld a, [hl+]                                   ; $505c: $2a
    xor d                                         ; $505d: $aa
    ld [bc], a                                    ; $505e: $02

jr_0f7_505f:
    ld d, l                                       ; $505f: $55
    ld [bc], a                                    ; $5060: $02
    ld a, [bc]                                    ; $5061: $0a
    ld a, [bc]                                    ; $5062: $0a
    nop                                           ; $5063: $00
    rst $38                                       ; $5064: $ff
    ld de, $f706                                  ; $5065: $11 $06 $f7
    ld [$09f8], sp                                ; $5068: $08 $f8 $09
    ldh a, [$f5]                                  ; $506b: $f0 $f5
    ld a, [c]                                     ; $506d: $f2

jr_0f7_506e:
    db $fd                                        ; $506e: $fd
    ldh a, [$03]                                  ; $506f: $f0 $03
    nop                                           ; $5071: $00
    rst $30                                       ; $5072: $f7
    nop                                           ; $5073: $00
    rst $38                                       ; $5074: $ff
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    adc [hl]                                      ; $5077: $8e
    nop                                           ; $5078: $00
    ld [hl], b                                    ; $5079: $70
    nop                                           ; $507a: $00
    ld b, b                                       ; $507b: $40
    ld bc, $0231                                  ; $507c: $01 $31 $02
    ld [hl+], a                                   ; $507f: $22
    ld bc, $0271                                  ; $5080: $01 $71 $02
    ld a, [c]                                     ; $5083: $f2
    nop                                           ; $5084: $00
    ld h, b                                       ; $5085: $60
    ld [bc], a                                    ; $5086: $02
    nop                                           ; $5087: $00
    ld [bc], a                                    ; $5088: $02
    dec b                                         ; $5089: $05
    ld [bc], a                                    ; $508a: $02
    ld a, [bc]                                    ; $508b: $0a
    ld [bc], a                                    ; $508c: $02
    dec b                                         ; $508d: $05
    ld [bc], a                                    ; $508e: $02
    ld a, [bc]                                    ; $508f: $0a
    ld [bc], a                                    ; $5090: $02
    ld bc, $0202                                  ; $5091: $01 $02 $02
    ld [bc], a                                    ; $5094: $02
    dec b                                         ; $5095: $05
    ld [bc], a                                    ; $5096: $02
    nop                                           ; $5097: $00
    ld [bc], a                                    ; $5098: $02
    ld b, b                                       ; $5099: $40
    ld [bc], a                                    ; $509a: $02
    adc d                                         ; $509b: $8a
    ld [bc], a                                    ; $509c: $02
    ld d, h                                       ; $509d: $54
    xor b                                         ; $509e: $a8
    xor d                                         ; $509f: $aa
    adc d                                         ; $50a0: $8a
    ld d, h                                       ; $50a1: $54
    ld b, b                                       ; $50a2: $40
    and d                                         ; $50a3: $a2
    add d                                         ; $50a4: $82
    ld d, l                                       ; $50a5: $55
    ld bc, $0aaa                                  ; $50a6: $01 $aa $0a
    ld d, l                                       ; $50a9: $55
    dec d                                         ; $50aa: $15
    xor d                                         ; $50ab: $aa
    ld a, [bc]                                    ; $50ac: $0a
    ld d, h                                       ; $50ad: $54
    nop                                           ; $50ae: $00
    xor d                                         ; $50af: $aa
    add d                                         ; $50b0: $82
    ld d, l                                       ; $50b1: $55
    ld b, l                                       ; $50b2: $45
    xor d                                         ; $50b3: $aa
    adc d                                         ; $50b4: $8a
    ld d, l                                       ; $50b5: $55
    nop                                           ; $50b6: $00
    xor d                                         ; $50b7: $aa
    add b                                         ; $50b8: $80
    nop                                           ; $50b9: $00
    rlca                                          ; $50ba: $07
    nop                                           ; $50bb: $00
    inc b                                         ; $50bc: $04
    nop                                           ; $50bd: $00
    inc bc                                        ; $50be: $03
    nop                                           ; $50bf: $00
    ld [bc], a                                    ; $50c0: $02
    nop                                           ; $50c1: $00
    rlca                                          ; $50c2: $07
    nop                                           ; $50c3: $00
    rrca                                          ; $50c4: $0f
    db $10                                        ; $50c5: $10
    ld d, $02                                     ; $50c6: $16 $02
    jr z, jr_0f7_50cc                             ; $50c8: $28 $02

    inc d                                         ; $50ca: $14
    ld [bc], a                                    ; $50cb: $02

jr_0f7_50cc:
    jr z, jr_0f7_50d4                             ; $50cc: $28 $06

    nop                                           ; $50ce: $00
    ld [bc], a                                    ; $50cf: $02
    jr nz, jr_0f7_50d4                            ; $50d0: $20 $02

    nop                                           ; $50d2: $00
    ld [bc], a                                    ; $50d3: $02

jr_0f7_50d4:
    jr z, jr_0f7_505c                             ; $50d4: $28 $86

    inc b                                         ; $50d6: $04
    inc c                                         ; $50d7: $0c
    ld b, b                                       ; $50d8: $40
    ld e, h                                       ; $50d9: $5c
    or l                                          ; $50da: $b5
    cp l                                          ; $50db: $bd
    ld [bc], a                                    ; $50dc: $02
    ld d, d                                       ; $50dd: $52
    add h                                         ; $50de: $84
    and l                                         ; $50df: $a5
    and h                                         ; $50e0: $a4
    ld [hl+], a                                   ; $50e1: $22
    jr nz, jr_0f7_50e6                            ; $50e2: $20 $02

    dec d                                         ; $50e4: $15
    add h                                         ; $50e5: $84

jr_0f7_50e6:
    ld a, [hl+]                                   ; $50e6: $2a
    ld [hl+], a                                   ; $50e7: $22
    ld d, h                                       ; $50e8: $54
    ld d, b                                       ; $50e9: $50
    ld [bc], a                                    ; $50ea: $02
    ld a, [bc]                                    ; $50eb: $0a
    ld [bc], a                                    ; $50ec: $02
    inc d                                         ; $50ed: $14
    ld a, [bc]                                    ; $50ee: $0a
    nop                                           ; $50ef: $00
    ld [bc], a                                    ; $50f0: $02
    ld bc, $0292                                  ; $50f1: $01 $92 $02
    nop                                           ; $50f4: $00
    ld d, l                                       ; $50f5: $55
    dec b                                         ; $50f6: $05
    xor b                                         ; $50f7: $a8
    xor e                                         ; $50f8: $ab
    ld d, c                                       ; $50f9: $51
    inc de                                        ; $50fa: $13
    xor d                                         ; $50fb: $aa
    dec hl                                        ; $50fc: $2b
    ld d, h                                       ; $50fd: $54
    ld d, l                                       ; $50fe: $55
    adc b                                         ; $50ff: $88
    adc e                                         ; $5100: $8b
    ld b, b                                       ; $5101: $40
    ld b, a                                       ; $5102: $47
    adc b                                         ; $5103: $88
    adc e                                         ; $5104: $8b
    ld c, $00                                     ; $5105: $0e $00
    ld [bc], a                                    ; $5107: $02
    ld bc, $0003                                  ; $5108: $01 $03 $00
    add c                                         ; $510b: $81
    ld bc, $0003                                  ; $510c: $01 $03 $00
    add c                                         ; $510f: $81
    ld bc, $0003                                  ; $5110: $01 $03 $00
    add e                                         ; $5113: $83
    ld bc, $0100                                  ; $5114: $01 $00 $01
    ld c, $00                                     ; $5117: $0e $00
    rst $38                                       ; $5119: $ff
    ld de, $f706                                  ; $511a: $11 $06 $f7
    ld [$09f8], sp                                ; $511d: $08 $f8 $09
    db $f4                                        ; $5120: $f4
    or $f3                                        ; $5121: $f6 $f3
    cp $f7                                        ; $5123: $fe $f7
    inc bc                                        ; $5125: $03
    inc bc                                        ; $5126: $03
    push af                                       ; $5127: $f5
    inc bc                                        ; $5128: $03
    db $fd                                        ; $5129: $fd
    inc bc                                        ; $512a: $03
    cp $92                                        ; $512b: $fe $92
    nop                                           ; $512d: $00
    ld c, $05                                     ; $512e: $0e $05
    dec c                                         ; $5130: $0d
    nop                                           ; $5131: $00
    ld b, $01                                     ; $5132: $06 $01
    dec b                                         ; $5134: $05
    nop                                           ; $5135: $00
    ld c, $01                                     ; $5136: $0e $01
    rra                                           ; $5138: $1f
    ld [hl+], a                                   ; $5139: $22
    ld l, $15                                     ; $513a: $2e $15
    ld de, $202a                                  ; $513c: $11 $2a $20
    ld [bc], a                                    ; $513f: $02
    dec b                                         ; $5140: $05
    ld [bc], a                                    ; $5141: $02
    ld a, [bc]                                    ; $5142: $0a
    adc d                                         ; $5143: $8a
    ld bc, $02e1                                  ; $5144: $01 $e1 $02
    add d                                         ; $5147: $82
    dec b                                         ; $5148: $05
    ld h, h                                       ; $5149: $64
    ld a, [bc]                                    ; $514a: $0a
    ld c, d                                       ; $514b: $4a
    dec d                                         ; $514c: $15
    push af                                       ; $514d: $f5
    ld [bc], a                                    ; $514e: $02
    inc d                                         ; $514f: $14
    ld [bc], a                                    ; $5150: $02
    xor b                                         ; $5151: $a8
    ld [bc], a                                    ; $5152: $02
    inc d                                         ; $5153: $14
    add h                                         ; $5154: $84
    xor b                                         ; $5155: $a8
    adc b                                         ; $5156: $88
    ld d, c                                       ; $5157: $51
    ld b, c                                       ; $5158: $41
    ld [bc], a                                    ; $5159: $02
    xor d                                         ; $515a: $aa
    add h                                         ; $515b: $84
    ld d, l                                       ; $515c: $55
    ld b, l                                       ; $515d: $45
    ld a, [hl+]                                   ; $515e: $2a
    ld [bc], a                                    ; $515f: $02
    ld [bc], a                                    ; $5160: $02
    ld d, h                                       ; $5161: $54
    adc [hl]                                      ; $5162: $8e
    xor b                                         ; $5163: $a8
    adc b                                         ; $5164: $88
    ld d, l                                       ; $5165: $55
    dec d                                         ; $5166: $15
    xor d                                         ; $5167: $aa
    ld a, [bc]                                    ; $5168: $0a
    ld d, l                                       ; $5169: $55
    dec b                                         ; $516a: $05
    xor d                                         ; $516b: $aa
    adc d                                         ; $516c: $8a
    ld d, l                                       ; $516d: $55
    ld b, l                                       ; $516e: $45
    xor d                                         ; $516f: $aa
    ld [hl+], a                                   ; $5170: $22
    ld [bc], a                                    ; $5171: $02
    ld [$1002], sp                                ; $5172: $08 $02 $10
    ld [bc], a                                    ; $5175: $02
    ld [$1002], sp                                ; $5176: $08 $02 $10
    ld [$8e00], sp                                ; $5179: $08 $00 $8e
    ld [$100f], sp                                ; $517c: $08 $0f $10
    inc d                                         ; $517f: $14
    ld [$100b], sp                                ; $5180: $08 $0b $10
    ld [de], a                                    ; $5183: $12
    and b                                         ; $5184: $a0
    and a                                         ; $5185: $a7
    db $10                                        ; $5186: $10
    rra                                           ; $5187: $1f
    and b                                         ; $5188: $a0
    and [hl]                                      ; $5189: $a6
    inc b                                         ; $518a: $04
    nop                                           ; $518b: $00
    add [hl]                                      ; $518c: $86
    dec b                                         ; $518d: $05
    ldh a, [$0a]                                  ; $518e: $f0 $0a
    ld l, b                                       ; $5190: $68
    dec d                                         ; $5191: $15
    db $10                                        ; $5192: $10
    ld [bc], a                                    ; $5193: $02
    ld a, [bc]                                    ; $5194: $0a
    ld [bc], a                                    ; $5195: $02
    dec d                                         ; $5196: $15
    ld [bc], a                                    ; $5197: $02
    ld [bc], a                                    ; $5198: $02
    ld [bc], a                                    ; $5199: $02
    dec b                                         ; $519a: $05
    stop                                          ; $519b: $10 $00
    adc b                                         ; $519d: $88
    jr z, jr_0f7_51c0                             ; $519e: $28 $20

    ld d, h                                       ; $51a0: $54
    ld b, h                                       ; $51a1: $44
    xor b                                         ; $51a2: $a8
    and b                                         ; $51a3: $a0
    ld d, h                                       ; $51a4: $54
    ld b, h                                       ; $51a5: $44
    ld [bc], a                                    ; $51a6: $02
    and d                                         ; $51a7: $a2
    ld [bc], a                                    ; $51a8: $02
    dec d                                         ; $51a9: $15
    ld [bc], a                                    ; $51aa: $02
    and d                                         ; $51ab: $a2
    ld [bc], a                                    ; $51ac: $02
    dec b                                         ; $51ad: $05
    jr jr_0f7_51b0                                ; $51ae: $18 $00

jr_0f7_51b0:
    ld [bc], a                                    ; $51b0: $02
    ld bc, $0002                                  ; $51b1: $01 $02 $00
    ld [bc], a                                    ; $51b4: $02
    ld bc, $0012                                  ; $51b5: $01 $12 $00
    rst $38                                       ; $51b8: $ff
    rrca                                          ; $51b9: $0f
    dec b                                         ; $51ba: $05
    rst $30                                       ; $51bb: $f7
    ld [$09f8], sp                                ; $51bc: $08 $f8 $09
    db $f4                                        ; $51bf: $f4

jr_0f7_51c0:
    or $f5                                        ; $51c0: $f6 $f5
    cp $fb                                        ; $51c2: $fe $fb
    nop                                           ; $51c4: $00
    inc b                                         ; $51c5: $04
    rst $30                                       ; $51c6: $f7
    inc b                                         ; $51c7: $04
    ld hl, sp+$02                                 ; $51c8: $f8 $02
    dec b                                         ; $51ca: $05
    ld [bc], a                                    ; $51cb: $02
    ld a, [bc]                                    ; $51cc: $0a
    add [hl]                                      ; $51cd: $86
    dec b                                         ; $51ce: $05
    ld bc, $0002                                  ; $51cf: $01 $02 $00
    ld [bc], a                                    ; $51d2: $02
    nop                                           ; $51d3: $00
    ld [bc], a                                    ; $51d4: $02
    dec b                                         ; $51d5: $05
    ld [bc], a                                    ; $51d6: $02
    ld [bc], a                                    ; $51d7: $02
    ld [bc], a                                    ; $51d8: $02
    dec b                                         ; $51d9: $05
    ld [bc], a                                    ; $51da: $02
    ld a, [bc]                                    ; $51db: $0a
    add [hl]                                      ; $51dc: $86
    ld d, l                                       ; $51dd: $55
    ld b, l                                       ; $51de: $45
    xor d                                         ; $51df: $aa
    and b                                         ; $51e0: $a0
    ld d, l                                       ; $51e1: $55
    ld d, b                                       ; $51e2: $50
    ld [bc], a                                    ; $51e3: $02
    and d                                         ; $51e4: $a2
    ld [bc], a                                    ; $51e5: $02
    dec b                                         ; $51e6: $05
    ld [bc], a                                    ; $51e7: $02
    ld a, [hl+]                                   ; $51e8: $2a
    sbc h                                         ; $51e9: $9c
    ld d, c                                       ; $51ea: $51
    ld e, [hl]                                    ; $51eb: $5e
    nop                                           ; $51ec: $00
    ld [hl], b                                    ; $51ed: $70

jr_0f7_51ee:
    nop                                           ; $51ee: $00
    ld b, b                                       ; $51ef: $40
    dec b                                         ; $51f0: $05
    dec [hl]                                      ; $51f1: $35
    adc d                                         ; $51f2: $8a
    xor d                                         ; $51f3: $aa
    dec b                                         ; $51f4: $05
    ld [hl], c                                    ; $51f5: $71
    ld a, [bc]                                    ; $51f6: $0a
    ld hl, sp+$11                                 ; $51f7: $f8 $11
    ld [hl], c                                    ; $51f9: $71
    xor d                                         ; $51fa: $aa
    xor b                                         ; $51fb: $a8
    ld d, c                                       ; $51fc: $51
    db $10                                        ; $51fd: $10
    xor d                                         ; $51fe: $aa
    ld a, [bc]                                    ; $51ff: $0a
    ld d, h                                       ; $5200: $54
    inc d                                         ; $5201: $14
    xor d                                         ; $5202: $aa
    ld [bc], a                                    ; $5203: $02
    ld d, l                                       ; $5204: $55
    ld b, c                                       ; $5205: $41
    ld [bc], a                                    ; $5206: $02
    xor d                                         ; $5207: $aa
    add h                                         ; $5208: $84
    ld d, l                                       ; $5209: $55
    dec b                                         ; $520a: $05
    xor d                                         ; $520b: $aa
    adc d                                         ; $520c: $8a
    ld [bc], a                                    ; $520d: $02
    ld bc, $0202                                  ; $520e: $01 $02 $02
    ld [bc], a                                    ; $5211: $02
    ld bc, $0202                                  ; $5212: $01 $02 $02
    ld [bc], a                                    ; $5215: $02
    nop                                           ; $5216: $00
    ld [bc], a                                    ; $5217: $02
    ld [bc], a                                    ; $5218: $02
    ld [bc], a                                    ; $5219: $02
    nop                                           ; $521a: $00
    ld [bc], a                                    ; $521b: $02
    ld [bc], a                                    ; $521c: $02
    inc b                                         ; $521d: $04
    nop                                           ; $521e: $00
    ld [bc], a                                    ; $521f: $02
    ld b, h                                       ; $5220: $44
    add h                                         ; $5221: $84
    xor d                                         ; $5222: $aa
    and d                                         ; $5223: $a2
    ld d, h                                       ; $5224: $54

Jump_0f7_5225:
    ld b, h                                       ; $5225: $44
    ld [bc], a                                    ; $5226: $02
    ld a, [bc]                                    ; $5227: $0a
    ld [bc], a                                    ; $5228: $02
    inc d                                         ; $5229: $14
    ld [bc], a                                    ; $522a: $02
    nop                                           ; $522b: $00
    adc h                                         ; $522c: $8c
    ld b, h                                       ; $522d: $44
    ld d, b                                       ; $522e: $50
    and d                                         ; $522f: $a2
    xor [hl]                                      ; $5230: $ae
    ld b, l                                       ; $5231: $45
    ld c, l                                       ; $5232: $4d
    ld [hl+], a                                   ; $5233: $22
    ld a, $41                                     ; $5234: $3e $41
    ld a, l                                       ; $5236: $7d
    add b                                         ; $5237: $80
    sbc b                                         ; $5238: $98
    ld [bc], a                                    ; $5239: $02
    dec b                                         ; $523a: $05
    ld [bc], a                                    ; $523b: $02
    jr z, @+$14                                   ; $523c: $28 $12

    nop                                           ; $523e: $00
    add c                                         ; $523f: $81
    ld bc, $0003                                  ; $5240: $01 $03 $00
    ld [bc], a                                    ; $5243: $02
    ld bc, $0002                                  ; $5244: $01 $02 $00
    ld [bc], a                                    ; $5247: $02
    ld bc, $0014                                  ; $5248: $01 $14 $00
    rst $38                                       ; $524b: $ff
    rrca                                          ; $524c: $0f
    dec b                                         ; $524d: $05
    rst $30                                       ; $524e: $f7
    ld [$09f8], sp                                ; $524f: $08 $f8 $09
    pop af                                        ; $5252: $f1
    rst $30                                       ; $5253: $f7
    db $f4                                        ; $5254: $f4
    rst $38                                       ; $5255: $ff
    db $f4                                        ; $5256: $f4
    nop                                           ; $5257: $00
    ld bc, $01f7                                  ; $5258: $01 $f7 $01
    rst $38                                       ; $525b: $ff
    add [hl]                                      ; $525c: $86
    nop                                           ; $525d: $00
    ld [$1c00], sp                                ; $525e: $08 $00 $1c
    nop                                           ; $5261: $00
    ld [$0004], sp                                ; $5262: $08 $04 $00
    ld [bc], a                                    ; $5265: $02
    inc d                                         ; $5266: $14
    ld [bc], a                                    ; $5267: $02
    jr z, jr_0f7_51ee                             ; $5268: $28 $84

    dec d                                         ; $526a: $15
    ld de, $202a                                  ; $526b: $11 $2a $20
    ld [bc], a                                    ; $526e: $02
    dec b                                         ; $526f: $05
    ld [bc], a                                    ; $5270: $02
    ld [$1502], sp                                ; $5271: $08 $02 $15
    add h                                         ; $5274: $84
    ld a, [bc]                                    ; $5275: $0a
    ld [$5055], sp                                ; $5276: $08 $55 $50
    ld [bc], a                                    ; $5279: $02
    xor d                                         ; $527a: $aa
    and h                                         ; $527b: $a4
    ld d, l                                       ; $527c: $55
    ld d, b                                       ; $527d: $50
    nop                                           ; $527e: $00
    inc bc                                        ; $527f: $03
    nop                                           ; $5280: $00
    ld [bc], a                                    ; $5281: $02
    inc d                                         ; $5282: $14
    dec d                                         ; $5283: $15
    jr z, jr_0f7_52af                             ; $5284: $28 $29

    inc d                                         ; $5286: $14
    rla                                           ; $5287: $17
    xor b                                         ; $5288: $a8
    adc a                                         ; $5289: $8f
    ld d, b                                       ; $528a: $50
    ld b, e                                       ; $528b: $43
    xor d                                         ; $528c: $aa
    adc d                                         ; $528d: $8a
    ld d, h                                       ; $528e: $54
    inc d                                         ; $528f: $14
    xor d                                         ; $5290: $aa
    adc d                                         ; $5291: $8a
    ld d, h                                       ; $5292: $54
    inc d                                         ; $5293: $14
    xor b                                         ; $5294: $a8
    ld [$0555], sp                                ; $5295: $08 $55 $05
    xor d                                         ; $5298: $aa
    and d                                         ; $5299: $a2
    ld d, l                                       ; $529a: $55
    ld d, c                                       ; $529b: $51
    xor d                                         ; $529c: $aa
    ld [hl+], a                                   ; $529d: $22
    nop                                           ; $529e: $00
    ld bc, $0003                                  ; $529f: $01 $03 $00
    add c                                         ; $52a2: $81
    ld bc, $0003                                  ; $52a3: $01 $03 $00
    add e                                         ; $52a6: $83
    ld bc, $0100                                  ; $52a7: $01 $00 $01
    inc d                                         ; $52aa: $14
    nop                                           ; $52ab: $00
    adc h                                         ; $52ac: $8c
    xor d                                         ; $52ad: $aa
    xor b                                         ; $52ae: $a8

jr_0f7_52af:
    dec d                                         ; $52af: $15
    inc d                                         ; $52b0: $14
    ld a, [hl+]                                   ; $52b1: $2a
    jr z, jr_0f7_52b9                             ; $52b2: $28 $05

    ld bc, $000a                                  ; $52b4: $01 $0a $00
    ld b, l                                       ; $52b7: $45
    ld b, c                                       ; $52b8: $41

jr_0f7_52b9:
    ld [bc], a                                    ; $52b9: $02
    ld a, [hl+]                                   ; $52ba: $2a
    ld [bc], a                                    ; $52bb: $02
    ld d, l                                       ; $52bc: $55
    add d                                         ; $52bd: $82
    jr z, jr_0f7_52e9                             ; $52be: $28 $29

    ld [bc], a                                    ; $52c0: $02
    dec b                                         ; $52c1: $05
    ld [bc], a                                    ; $52c2: $02
    ld [$0010], sp                                ; $52c3: $08 $10 $00
    adc [hl]                                      ; $52c6: $8e
    inc d                                         ; $52c7: $14
    db $f4                                        ; $52c8: $f4
    ld [hl+], a                                   ; $52c9: $22
    and d                                         ; $52ca: $a2
    dec d                                         ; $52cb: $15
    ld [hl], l                                    ; $52cc: $75
    xor d                                         ; $52cd: $aa
    ld [$e505], a                                 ; $52ce: $ea $05 $e5
    ld a, [bc]                                    ; $52d1: $0a

jr_0f7_52d2:
    ld [$c000], a                                 ; $52d2: $ea $00 $c0
    inc c                                         ; $52d5: $0c
    nop                                           ; $52d6: $00
    rst $38                                       ; $52d7: $ff
    ld de, $f706                                  ; $52d8: $11 $06 $f7
    ld [$09f8], sp                                ; $52db: $08 $f8 $09
    ldh a, [$f5]                                  ; $52de: $f0 $f5
    di                                            ; $52e0: $f3
    db $fd                                        ; $52e1: $fd
    ldh a, [$03]                                  ; $52e2: $f0 $03
    nop                                           ; $52e4: $00
    or $00                                        ; $52e5: $f6 $00
    cp $00                                        ; $52e7: $fe $00

jr_0f7_52e9:
    nop                                           ; $52e9: $00
    adc [hl]                                      ; $52ea: $8e
    nop                                           ; $52eb: $00
    ld [hl], b                                    ; $52ec: $70
    nop                                           ; $52ed: $00
    ld b, b                                       ; $52ee: $40
    nop                                           ; $52ef: $00
    jr nc, jr_0f7_52f2                            ; $52f0: $30 $00

jr_0f7_52f2:
    jr nz, jr_0f7_52f4                            ; $52f2: $20 $00

jr_0f7_52f4:
    ld [hl], b                                    ; $52f4: $70
    nop                                           ; $52f5: $00
    ldh a, [rSB]                                  ; $52f6: $f0 $01
    ld h, c                                       ; $52f8: $61
    ld [bc], a                                    ; $52f9: $02
    ld [bc], a                                    ; $52fa: $02
    ld [bc], a                                    ; $52fb: $02
    ld bc, $0a02                                  ; $52fc: $01 $02 $0a
    add [hl]                                      ; $52ff: $86
    dec d                                         ; $5300: $15
    inc d                                         ; $5301: $14
    ld a, [bc]                                    ; $5302: $0a
    ld [$1015], sp                                ; $5303: $08 $15 $10
    ld [bc], a                                    ; $5306: $02
    ld [bc], a                                    ; $5307: $02
    ld [bc], a                                    ; $5308: $02
    dec b                                         ; $5309: $05
    ld [bc], a                                    ; $530a: $02
    ld [bc], a                                    ; $530b: $02
    ld [bc], a                                    ; $530c: $02
    jr z, jr_0f7_5311                             ; $530d: $28 $02

    ld d, b                                       ; $530f: $50
    ld [bc], a                                    ; $5310: $02

jr_0f7_5311:
    jr z, jr_0f7_5315                             ; $5311: $28 $02

    ld d, b                                       ; $5313: $50
    ld [bc], a                                    ; $5314: $02

jr_0f7_5315:
    adc d                                         ; $5315: $8a
    ld [bc], a                                    ; $5316: $02
    ld d, h                                       ; $5317: $54
    ld [bc], a                                    ; $5318: $02
    adc d                                         ; $5319: $8a
    add h                                         ; $531a: $84
    ld d, h                                       ; $531b: $54
    inc d                                         ; $531c: $14
    and b                                         ; $531d: $a0
    jr nz, jr_0f7_5322                            ; $531e: $20 $02

    ld d, h                                       ; $5320: $54
    add d                                         ; $5321: $82

jr_0f7_5322:
    xor b                                         ; $5322: $a8

Call_0f7_5323:
    adc b                                         ; $5323: $88
    ld [bc], a                                    ; $5324: $02
    dec d                                         ; $5325: $15
    sub [hl]                                      ; $5326: $96
    xor b                                         ; $5327: $a8
    nop                                           ; $5328: $00
    ld d, l                                       ; $5329: $55
    ld de, $02aa                                  ; $532a: $11 $aa $02
    ld d, l                                       ; $532d: $55
    dec b                                         ; $532e: $05
    nop                                           ; $532f: $00
    rlca                                          ; $5330: $07
    nop                                           ; $5331: $00
    inc b                                         ; $5332: $04
    nop                                           ; $5333: $00
    inc bc                                        ; $5334: $03
    nop                                           ; $5335: $00
    ld [bc], a                                    ; $5336: $02
    nop                                           ; $5337: $00
    rlca                                          ; $5338: $07
    nop                                           ; $5339: $00
    rrca                                          ; $533a: $0f
    nop                                           ; $533b: $00
    ld b, $0c                                     ; $533c: $06 $0c
    nop                                           ; $533e: $00
    ld [bc], a                                    ; $533f: $02
    jr z, jr_0f7_5344                             ; $5340: $28 $02

    db $10                                        ; $5342: $10
    ld [bc], a                                    ; $5343: $02

jr_0f7_5344:
    jr z, jr_0f7_52d2                             ; $5344: $28 $8c

    ld a, [bc]                                    ; $5346: $0a
    ld c, $50                                     ; $5347: $0e $50
    ld e, [hl]                                    ; $5349: $5e
    and d                                         ; $534a: $a2
    and h                                         ; $534b: $a4
    ld d, l                                       ; $534c: $55
    ld b, b                                       ; $534d: $40
    xor d                                         ; $534e: $aa
    and b                                         ; $534f: $a0
    dec d                                         ; $5350: $15
    inc d                                         ; $5351: $14
    ld [bc], a                                    ; $5352: $02
    ld a, [hl+]                                   ; $5353: $2a
    adc b                                         ; $5354: $88
    dec b                                         ; $5355: $05
    inc b                                         ; $5356: $04
    ld a, [hl+]                                   ; $5357: $2a
    jr z, jr_0f7_536f                             ; $5358: $28 $15

    db $10                                        ; $535a: $10
    ld a, [bc]                                    ; $535b: $0a
    ld [$0010], sp                                ; $535c: $08 $10 $00
    adc [hl]                                      ; $535f: $8e
    ld d, h                                       ; $5360: $54
    dec d                                         ; $5361: $15
    xor d                                         ; $5362: $aa
    dec bc                                        ; $5363: $0b
    ld d, l                                       ; $5364: $55
    dec d                                         ; $5365: $15
    xor d                                         ; $5366: $aa
    ld a, [hl+]                                   ; $5367: $2a
    ld d, b                                       ; $5368: $50
    ld de, $aba8                                  ; $5369: $11 $a8 $ab
    ld d, b                                       ; $536c: $50
    ld d, c                                       ; $536d: $51
    ld [bc], a                                    ; $536e: $02

jr_0f7_536f:
    adc d                                         ; $536f: $8a
    ld [bc], a                                    ; $5370: $02
    ld d, h                                       ; $5371: $54
    ld [bc], a                                    ; $5372: $02
    add d                                         ; $5373: $82
    ld [bc], a                                    ; $5374: $02
    inc d                                         ; $5375: $14
    inc b                                         ; $5376: $04
    nop                                           ; $5377: $00
    ld [bc], a                                    ; $5378: $02
    ld [bc], a                                    ; $5379: $02
    ld [bc], a                                    ; $537a: $02
    nop                                           ; $537b: $00
    ld [bc], a                                    ; $537c: $02
    ld [bc], a                                    ; $537d: $02
    add d                                         ; $537e: $82
    nop                                           ; $537f: $00
    inc bc                                        ; $5380: $03
    ld [bc], a                                    ; $5381: $02
    ld [bc], a                                    ; $5382: $02
    adc d                                         ; $5383: $8a
    nop                                           ; $5384: $00
    inc bc                                        ; $5385: $03
    nop                                           ; $5386: $00
    ld [bc], a                                    ; $5387: $02
    nop                                           ; $5388: $00
    inc bc                                        ; $5389: $03
    nop                                           ; $538a: $00
    inc bc                                        ; $538b: $03
    nop                                           ; $538c: $00
    ld [bc], a                                    ; $538d: $02
    inc c                                         ; $538e: $0c
    nop                                           ; $538f: $00
    rst $38                                       ; $5390: $ff
    rrca                                          ; $5391: $0f
    dec b                                         ; $5392: $05
    rst $30                                       ; $5393: $f7
    ld [$09f8], sp                                ; $5394: $08 $f8 $09
    db $f4                                        ; $5397: $f4
    or $f7                                        ; $5398: $f6 $f7
    cp $fd                                        ; $539a: $fe $fd
    inc bc                                        ; $539c: $03
    inc b                                         ; $539d: $04
    push af                                       ; $539e: $f5
    inc b                                         ; $539f: $04
    db $fc                                        ; $53a0: $fc
    adc [hl]                                      ; $53a1: $8e
    nop                                           ; $53a2: $00
    ld c, $00                                     ; $53a3: $0e $00
    ld [$0600], sp                                ; $53a5: $08 $00 $06
    nop                                           ; $53a8: $00
    inc b                                         ; $53a9: $04
    nop                                           ; $53aa: $00
    ld c, $40                                     ; $53ab: $0e $40
    ld e, [hl]                                    ; $53ad: $5e
    ld [hl+], a                                   ; $53ae: $22
    ld l, $02                                     ; $53af: $2e $02
    ld d, l                                       ; $53b1: $55
    ld [bc], a                                    ; $53b2: $02
    ld [bc], a                                    ; $53b3: $02
    ld [bc], a                                    ; $53b4: $02
    dec b                                         ; $53b5: $05
    adc h                                         ; $53b6: $8c
    ld a, [bc]                                    ; $53b7: $0a
    ld [$e405], sp                                ; $53b8: $08 $05 $e4
    ld a, [bc]                                    ; $53bb: $0a
    adc b                                         ; $53bc: $88
    dec d                                         ; $53bd: $15
    ld [hl], h                                    ; $53be: $74
    and d                                         ; $53bf: $a2
    ldh [$15], a                                  ; $53c0: $e0 $15
    push af                                       ; $53c2: $f5
    ld [bc], a                                    ; $53c3: $02
    ld d, b                                       ; $53c4: $50
    ld [bc], a                                    ; $53c5: $02
    add b                                         ; $53c6: $80
    ld [bc], a                                    ; $53c7: $02
    ld d, h                                       ; $53c8: $54
    ld [bc], a                                    ; $53c9: $02
    xor b                                         ; $53ca: $a8
    ld [bc], a                                    ; $53cb: $02
    inc d                                         ; $53cc: $14
    sub [hl]                                      ; $53cd: $96
    xor b                                         ; $53ce: $a8
    adc b                                         ; $53cf: $88
    ld d, c                                       ; $53d0: $51
    ld b, c                                       ; $53d1: $41
    xor d                                         ; $53d2: $aa
    ld a, [hl+]                                   ; $53d3: $2a
    ld d, c                                       ; $53d4: $51
    ld de, $0aaa                                  ; $53d5: $11 $aa $0a
    ld d, h                                       ; $53d8: $54
    inc d                                         ; $53d9: $14
    xor d                                         ; $53da: $aa
    jr nz, @+$57                                  ; $53db: $20 $55

    nop                                           ; $53dd: $00
    xor d                                         ; $53de: $aa
    ld a, [bc]                                    ; $53df: $0a
    ld d, l                                       ; $53e0: $55
    dec d                                         ; $53e1: $15
    xor d                                         ; $53e2: $aa
    ld a, [hl+]                                   ; $53e3: $2a
    ld [bc], a                                    ; $53e4: $02
    ld [$1002], sp                                ; $53e5: $08 $02 $10
    adc [hl]                                      ; $53e8: $8e
    ld [$100f], sp                                ; $53e9: $08 $0f $10
    inc d                                         ; $53ec: $14
    nop                                           ; $53ed: $00
    inc bc                                        ; $53ee: $03
    db $10                                        ; $53ef: $10
    ld [de], a                                    ; $53f0: $12
    nop                                           ; $53f1: $00
    rlca                                          ; $53f2: $07
    db $10                                        ; $53f3: $10
    rra                                           ; $53f4: $1f
    nop                                           ; $53f5: $00
    ld b, $02                                     ; $53f6: $06 $02
    nop                                           ; $53f8: $00
    ld [bc], a                                    ; $53f9: $02
    jr nz, jr_0f7_53fe                            ; $53fa: $20 $02

    ld b, b                                       ; $53fc: $40
    ld [bc], a                                    ; $53fd: $02

jr_0f7_53fe:
    nop                                           ; $53fe: $00
    ld [bc], a                                    ; $53ff: $02
    ld b, b                                       ; $5400: $40
    ld [bc], a                                    ; $5401: $02
    nop                                           ; $5402: $00
    ld [bc], a                                    ; $5403: $02
    ld b, b                                       ; $5404: $40
    add [hl]                                      ; $5405: $86
    dec b                                         ; $5406: $05
    push af                                       ; $5407: $f5
    ld a, [bc]                                    ; $5408: $0a
    ld l, d                                       ; $5409: $6a
    ld bc, $0200                                  ; $540a: $01 $00 $02
    ld [bc], a                                    ; $540d: $02
    add d                                         ; $540e: $82
    ld de, $0210                                  ; $540f: $11 $10 $02
    ld a, [bc]                                    ; $5412: $0a
    ld [bc], a                                    ; $5413: $02
    dec b                                         ; $5414: $05
    ld [bc], a                                    ; $5415: $02
    ld a, [bc]                                    ; $5416: $0a
    ld [de], a                                    ; $5417: $12
    nop                                           ; $5418: $00
    ld [bc], a                                    ; $5419: $02
    ld b, b                                       ; $541a: $40
    ld [bc], a                                    ; $541b: $02
    nop                                           ; $541c: $00
    add h                                         ; $541d: $84
    ld d, h                                       ; $541e: $54
    inc b                                         ; $541f: $04
    ld a, [hl+]                                   ; $5420: $2a
    ld a, [bc]                                    ; $5421: $0a
    ld [bc], a                                    ; $5422: $02
    ld d, h                                       ; $5423: $54
    ld [bc], a                                    ; $5424: $02
    ld [hl+], a                                   ; $5425: $22
    ld [bc], a                                    ; $5426: $02
    inc d                                         ; $5427: $14
    ld [bc], a                                    ; $5428: $02
    ld [hl+], a                                   ; $5429: $22
    ld [bc], a                                    ; $542a: $02
    dec b                                         ; $542b: $05
    inc c                                         ; $542c: $0c
    nop                                           ; $542d: $00
    rst $38                                       ; $542e: $ff
    rlca                                          ; $542f: $07
    ld bc, $0cef                                  ; $5430: $01 $ef $0c
    ld sp, hl                                     ; $5433: $f9
    ld [$f1fb], sp                                ; $5434: $08 $fb $f1
    add h                                         ; $5437: $84
    ld b, $05                                     ; $5438: $06 $05
    ld b, $05                                     ; $543a: $06 $05
    inc e                                         ; $543c: $1c
    nop                                           ; $543d: $00
    rst $38                                       ; $543e: $ff
    rlca                                          ; $543f: $07
    ld bc, $0cef                                  ; $5440: $01 $ef $0c
    ld sp, hl                                     ; $5443: $f9
    ld [$f0f7], sp                                ; $5444: $08 $f7 $f0
    add c                                         ; $5447: $81
    inc b                                         ; $5448: $04
    ld [bc], a                                    ; $5449: $02
    ld [bc], a                                    ; $544a: $02
    add e                                         ; $544b: $83
    dec b                                         ; $544c: $05
    ld [bc], a                                    ; $544d: $02
    dec b                                         ; $544e: $05
    ld [bc], a                                    ; $544f: $02
    ld b, $18                                     ; $5450: $06 $18
    nop                                           ; $5452: $00
    rst $38                                       ; $5453: $ff
    rlca                                          ; $5454: $07
    ld bc, $0cef                                  ; $5455: $01 $ef $0c
    ld sp, hl                                     ; $5458: $f9
    ld [$edf6], sp                                ; $5459: $08 $f6 $ed
    add e                                         ; $545c: $83
    nop                                           ; $545d: $00
    ld b, $07                                     ; $545e: $06 $07
    ld [bc], a                                    ; $5460: $02
    add hl, bc                                    ; $5461: $09
    add c                                         ; $5462: $81
    rlca                                          ; $5463: $07
    ld a, [de]                                    ; $5464: $1a
    nop                                           ; $5465: $00
    rst $38                                       ; $5466: $ff
    rlca                                          ; $5467: $07
    ld bc, $0cef                                  ; $5468: $01 $ef $0c
    ld sp, hl                                     ; $546b: $f9
    ld [$eaf6], sp                                ; $546c: $08 $f6 $ea
    ld [bc], a                                    ; $546f: $02
    inc bc                                        ; $5470: $03
    add [hl]                                      ; $5471: $86
    ld b, $05                                     ; $5472: $06 $05
    ld [bc], a                                    ; $5474: $02
    dec b                                         ; $5475: $05
    ld bc, $1802                                  ; $5476: $01 $02 $18
    nop                                           ; $5479: $00
    rst $38                                       ; $547a: $ff
    rlca                                          ; $547b: $07
    ld bc, $0cef                                  ; $547c: $01 $ef $0c
    ld sp, hl                                     ; $547f: $f9
    ld [$e9f8], sp                                ; $5480: $08 $f8 $e9
    add c                                         ; $5483: $81
    add hl, bc                                    ; $5484: $09
    ld [bc], a                                    ; $5485: $02
    ld c, $83                                     ; $5486: $0e $83
    add hl, bc                                    ; $5488: $09
    inc b                                         ; $5489: $04
    ld b, $1a                                     ; $548a: $06 $1a
    nop                                           ; $548c: $00
    rst $38                                       ; $548d: $ff
    rlca                                          ; $548e: $07
    ld bc, $0cef                                  ; $548f: $01 $ef $0c
    ld sp, hl                                     ; $5492: $f9
    ld [$e9f8], sp                                ; $5493: $08 $f8 $e9
    sub b                                         ; $5496: $90
    nop                                           ; $5497: $00
    jr jr_0f7_54d2                                ; $5498: $18 $38

    inc h                                         ; $549a: $24
    ld d, h                                       ; $549b: $54
    ld e, d                                       ; $549c: $5a
    ld [bc], a                                    ; $549d: $02
    dec b                                         ; $549e: $05
    ld [bc], a                                    ; $549f: $02
    dec b                                         ; $54a0: $05
    ld b, $05                                     ; $54a1: $06 $05
    ld e, [hl]                                    ; $54a3: $5e
    ld e, d                                       ; $54a4: $5a
    inc h                                         ; $54a5: $24
    inc a                                         ; $54a6: $3c
    ld [bc], a                                    ; $54a7: $02
    jr jr_0f7_54b8                                ; $54a8: $18 $0e

    nop                                           ; $54aa: $00
    rst $38                                       ; $54ab: $ff
    add hl, bc                                    ; $54ac: $09
    ld [bc], a                                    ; $54ad: $02
    rst $28                                       ; $54ae: $ef
    inc c                                         ; $54af: $0c
    ld sp, hl                                     ; $54b0: $f9
    ld [$ebfd], sp                                ; $54b1: $08 $fd $eb
    db $fd                                        ; $54b4: $fd
    db $ec                                        ; $54b5: $ec
    add c                                         ; $54b6: $81
    nop                                           ; $54b7: $00

jr_0f7_54b8:
    ld [bc], a                                    ; $54b8: $02
    inc e                                         ; $54b9: $1c
    add a                                         ; $54ba: $87
    ld h, d                                       ; $54bb: $62
    ld b, e                                       ; $54bc: $43
    cp l                                          ; $54bd: $bd
    ld [hl+], a                                   ; $54be: $22
    db $e3                                        ; $54bf: $e3
    and d                                         ; $54c0: $a2
    db $e3                                        ; $54c1: $e3
    ld [bc], a                                    ; $54c2: $02
    ld b, c                                       ; $54c3: $41
    ld [bc], a                                    ; $54c4: $02
    ld [hl+], a                                   ; $54c5: $22
    jr jr_0f7_54c8                                ; $54c6: $18 $00

jr_0f7_54c8:
    inc b                                         ; $54c8: $04
    ld bc, $0016                                  ; $54c9: $01 $16 $00
    rst $38                                       ; $54cc: $ff
    rlca                                          ; $54cd: $07
    ld bc, $0cef                                  ; $54ce: $01 $ef $0c
    ld sp, hl                                     ; $54d1: $f9

jr_0f7_54d2:
    ld [$effd], sp                                ; $54d2: $08 $fd $ef
    ld [bc], a                                    ; $54d5: $02
    inc c                                         ; $54d6: $0c
    sub b                                         ; $54d7: $90
    ld [de], a                                    ; $54d8: $12
    ld e, [hl]                                    ; $54d9: $5e
    ld e, l                                       ; $54da: $5d
    xor l                                         ; $54db: $ad
    jr nz, jr_0f7_552e                            ; $54dc: $20 $50

    jr nz, @+$52                                  ; $54de: $20 $50

    jr nz, @+$52                                  ; $54e0: $20 $50

    dec d                                         ; $54e2: $15
    dec l                                         ; $54e3: $2d
    ld a, [bc]                                    ; $54e4: $0a
    ld d, $00                                     ; $54e5: $16 $00
    inc c                                         ; $54e7: $0c
    ld c, $00                                     ; $54e8: $0e $00
    rst $38                                       ; $54ea: $ff
    dec bc                                        ; $54eb: $0b
    inc bc                                        ; $54ec: $03
    rst $28                                       ; $54ed: $ef
    inc c                                         ; $54ee: $0c
    ld sp, hl                                     ; $54ef: $f9
    ld [$effb], sp                                ; $54f0: $08 $fb $ef
    ei                                            ; $54f3: $fb
    rst $30                                       ; $54f4: $f7
    ei                                            ; $54f5: $fb
    ld a, [$0202]                                 ; $54f6: $fa $02 $02
    add l                                         ; $54f9: $85
    inc b                                         ; $54fa: $04
    ld b, $08                                     ; $54fb: $06 $08
    inc c                                         ; $54fd: $0c
    ld [$0c02], sp                                ; $54fe: $08 $02 $0c
    adc l                                         ; $5501: $8d
    ld c, d                                       ; $5502: $4a
    ld c, h                                       ; $5503: $4c
    xor d                                         ; $5504: $aa
    ld c, $49                                     ; $5505: $0e $49
    ld [bc], a                                    ; $5507: $02
    dec b                                         ; $5508: $05
    rlca                                          ; $5509: $07
    inc b                                         ; $550a: $04
    ld bc, $0002                                  ; $550b: $01 $02 $00
    ld bc, $0017                                  ; $550e: $01 $17 $00
    ld [bc], a                                    ; $5511: $02
    ld bc, $8289                                  ; $5512: $01 $89 $82
    add e                                         ; $5515: $83
    ld a, h                                       ; $5516: $7c
    rst $38                                       ; $5517: $ff
    nop                                           ; $5518: $00
    ld a, h                                       ; $5519: $7c
    add e                                         ; $551a: $83
    nop                                           ; $551b: $00
    ld a, h                                       ; $551c: $7c
    ld [$0200], sp                                ; $551d: $08 $00 $02
    inc b                                         ; $5520: $04
    add l                                         ; $5521: $85
    ld [bc], a                                    ; $5522: $02
    ld b, $01                                     ; $5523: $06 $01
    inc bc                                        ; $5525: $03
    ld bc, $0302                                  ; $5526: $01 $02 $03
    adc c                                         ; $5529: $89
    dec b                                         ; $552a: $05
    inc bc                                        ; $552b: $03
    dec b                                         ; $552c: $05
    rlca                                          ; $552d: $07

jr_0f7_552e:
    ld bc, $0206                                  ; $552e: $01 $06 $02
    ld b, $02                                     ; $5531: $06 $02
    ld [bc], a                                    ; $5533: $02
    inc b                                         ; $5534: $04
    inc c                                         ; $5535: $0c
    nop                                           ; $5536: $00
    rst $38                                       ; $5537: $ff
    dec bc                                        ; $5538: $0b
    inc bc                                        ; $5539: $03
    rst $28                                       ; $553a: $ef
    inc c                                         ; $553b: $0c
    ld sp, hl                                     ; $553c: $f9
    ld [$f2f9], sp                                ; $553d: $08 $f9 $f2
    ld sp, hl                                     ; $5540: $f9
    ld a, [$fbf9]                                 ; $5541: $fa $f9 $fb
    ld [bc], a                                    ; $5544: $02
    ld bc, $0284                                  ; $5545: $01 $84 $02
    inc bc                                        ; $5548: $03
    inc b                                         ; $5549: $04
    ld b, $07                                     ; $554a: $06 $07
    nop                                           ; $554c: $00
    ld [bc], a                                    ; $554d: $02
    ld b, b                                       ; $554e: $40

jr_0f7_554f:
    add e                                         ; $554f: $83
    and b                                         ; $5550: $a0
    nop                                           ; $5551: $00
    ld b, b                                       ; $5552: $40
    ld b, $00                                     ; $5553: $06 $00
    ld [bc], a                                    ; $5555: $02
    ld b, $82                                     ; $5556: $06 $82
    ld [bc], a                                    ; $5558: $02
    inc bc                                        ; $5559: $03
    ld [bc], a                                    ; $555a: $02

jr_0f7_555b:
    ld bc, $0002                                  ; $555b: $01 $02 $00
    sbc [hl]                                      ; $555e: $9e
    sub b                                         ; $555f: $90
    ldh a, [rNR41]                                ; $5560: $f0 $20
    call c, Call_0f7_621c                         ; $5562: $dc $1c $62
    ld b, $39                                     ; $5565: $06 $39
    ld h, $59                                     ; $5567: $26 $59
    inc bc                                        ; $5569: $03
    inc h                                         ; $556a: $24
    ld bc, $0306                                  ; $556b: $01 $06 $03
    inc b                                         ; $556e: $04
    inc bc                                        ; $556f: $03
    inc b                                         ; $5570: $04
    inc bc                                        ; $5571: $03
    inc b                                         ; $5572: $04
    ld b, $09                                     ; $5573: $06 $09
    ld [bc], a                                    ; $5575: $02
    dec e                                         ; $5576: $1d
    ld e, h                                       ; $5577: $5c
    ld h, d                                       ; $5578: $62
    jr z, jr_0f7_554f                             ; $5579: $28 $d4

    sub b                                         ; $557b: $90
    ld hl, sp+$0d                                 ; $557c: $f8 $0d
    nop                                           ; $557e: $00
    adc c                                         ; $557f: $89
    ld bc, $0100                                  ; $5580: $01 $00 $01
    nop                                           ; $5583: $00
    ld bc, $0100                                  ; $5584: $01 $00 $01
    nop                                           ; $5587: $00
    ld bc, $000c                                  ; $5588: $01 $0c $00
    rst $38                                       ; $558b: $ff
    dec bc                                        ; $558c: $0b
    inc bc                                        ; $558d: $03
    rst $28                                       ; $558e: $ef
    inc c                                         ; $558f: $0c
    ld sp, hl                                     ; $5590: $f9
    ld [$f4fa], sp                                ; $5591: $08 $fa $f4
    ld a, [$fafc]                                 ; $5594: $fa $fc $fa
    ld bc, $0007                                  ; $5597: $01 $07 $00
    add d                                         ; $559a: $82
    ld bc, $0200                                  ; $559b: $01 $00 $02
    ld bc, $4289                                  ; $559e: $01 $89 $42
    ld b, c                                       ; $55a1: $41
    and d                                         ; $55a2: $a2
    nop                                           ; $55a3: $00
    ld b, e                                       ; $55a4: $43
    ld [bc], a                                    ; $55a5: $02
    inc bc                                        ; $55a6: $03
    ld [bc], a                                    ; $55a7: $02
    inc bc                                        ; $55a8: $03
    ld [bc], a                                    ; $55a9: $02
    ld bc, $000b                                  ; $55aa: $01 $0b $00
    ld [bc], a                                    ; $55ad: $02
    rra                                           ; $55ae: $1f
    adc l                                         ; $55af: $8d
    ld h, b                                       ; $55b0: $60
    ld [hl], l                                    ; $55b1: $75
    adc d                                         ; $55b2: $8a
    and b                                         ; $55b3: $a0
    ld e, a                                       ; $55b4: $5f
    ld b, b                                       ; $55b5: $40
    and b                                         ; $55b6: $a0
    nop                                           ; $55b7: $00
    ret nz                                        ; $55b8: $c0

    nop                                           ; $55b9: $00
    add b                                         ; $55ba: $80
    nop                                           ; $55bb: $00
    add b                                         ; $55bc: $80
    dec b                                         ; $55bd: $05
    nop                                           ; $55be: $00
    ld [bc], a                                    ; $55bf: $02
    ret nz                                        ; $55c0: $c0

    add e                                         ; $55c1: $83
    and b                                         ; $55c2: $a0
    nop                                           ; $55c3: $00
    ld b, b                                       ; $55c4: $40
    add hl, bc                                    ; $55c5: $09
    nop                                           ; $55c6: $00
    ld [bc], a                                    ; $55c7: $02
    jr jr_0f7_555b                                ; $55c8: $18 $91

    inc b                                         ; $55ca: $04
    inc e                                         ; $55cb: $1c
    ld [bc], a                                    ; $55cc: $02
    inc c                                         ; $55cd: $0c
    ld [de], a                                    ; $55ce: $12
    ld [bc], a                                    ; $55cf: $02
    dec c                                         ; $55d0: $0d
    nop                                           ; $55d1: $00
    rlca                                          ; $55d2: $07
    nop                                           ; $55d3: $00
    rlca                                          ; $55d4: $07
    ld bc, $0103                                  ; $55d5: $01 $03 $01
    inc bc                                        ; $55d8: $03
    ld [bc], a                                    ; $55d9: $02
    ld b, $02                                     ; $55da: $06 $02
    inc b                                         ; $55dc: $04
    ld [$ff00], sp                                ; $55dd: $08 $00 $ff
    dec bc                                        ; $55e0: $0b
    inc bc                                        ; $55e1: $03
    rst $28                                       ; $55e2: $ef
    inc c                                         ; $55e3: $0c
    ld sp, hl                                     ; $55e4: $f9
    ld [$f7f9], sp                                ; $55e5: $08 $f9 $f7
    ld sp, hl                                     ; $55e8: $f9
    rst $38                                       ; $55e9: $ff
    ld sp, hl                                     ; $55ea: $f9
    inc b                                         ; $55eb: $04
    dec b                                         ; $55ec: $05
    nop                                           ; $55ed: $00
    ld [bc], a                                    ; $55ee: $02
    inc b                                         ; $55ef: $04
    add e                                         ; $55f0: $83
    ld a, [bc]                                    ; $55f1: $0a
    nop                                           ; $55f2: $00
    inc b                                         ; $55f3: $04
    dec b                                         ; $55f4: $05
    nop                                           ; $55f5: $00
    ld [bc], a                                    ; $55f6: $02
    ld b, b                                       ; $55f7: $40
    add e                                         ; $55f8: $83
    and b                                         ; $55f9: $a0
    nop                                           ; $55fa: $00
    ld b, b                                       ; $55fb: $40
    dec b                                         ; $55fc: $05
    nop                                           ; $55fd: $00
    ld [bc], a                                    ; $55fe: $02
    ld bc, $0283                                  ; $55ff: $01 $83 $02
    nop                                           ; $5602: $00
    ld bc, $0003                                  ; $5603: $01 $03 $00
    ld [bc], a                                    ; $5606: $02
    inc bc                                        ; $5607: $03
    ld [bc], a                                    ; $5608: $02
    inc c                                         ; $5609: $0c
    sbc c                                         ; $560a: $99
    inc de                                        ; $560b: $13
    inc e                                         ; $560c: $1c
    ld [hl+], a                                   ; $560d: $22
    db $10                                        ; $560e: $10
    inc l                                         ; $560f: $2c
    jr nc, @+$4a                                  ; $5610: $30 $48

    jr nz, jr_0f7_566c                            ; $5612: $20 $58

    jr nc, jr_0f7_565e                            ; $5614: $30 $48

    db $10                                        ; $5616: $10
    ld l, b                                       ; $5617: $68
    jr nc, jr_0f7_5662                            ; $5618: $30 $48

    jr @+$26                                      ; $561a: $18 $24

    jr jr_0f7_5644                                ; $561c: $18 $26

    ld c, $11                                     ; $561e: $0e $11
    inc bc                                        ; $5620: $03
    adc h                                         ; $5621: $8c
    nop                                           ; $5622: $00
    inc bc                                        ; $5623: $03
    ld [bc], a                                    ; $5624: $02
    nop                                           ; $5625: $00
    add [hl]                                      ; $5626: $86
    inc c                                         ; $5627: $0c
    inc e                                         ; $5628: $1c
    ld [bc], a                                    ; $5629: $02
    ld e, $03                                     ; $562a: $1e $03
    inc de                                        ; $562c: $13
    ld [de], a                                    ; $562d: $12
    nop                                           ; $562e: $00
    add [hl]                                      ; $562f: $86
    ld bc, $0213                                  ; $5630: $01 $13 $02
    ld e, $0c                                     ; $5633: $1e $0c
    inc e                                         ; $5635: $1c
    ld [bc], a                                    ; $5636: $02
    nop                                           ; $5637: $00
    rst $38                                       ; $5638: $ff
    dec bc                                        ; $5639: $0b
    inc bc                                        ; $563a: $03
    rst $28                                       ; $563b: $ef
    inc c                                         ; $563c: $0c
    ld sp, hl                                     ; $563d: $f9
    ld [$fafc], sp                                ; $563e: $08 $fc $fa
    db $fc                                        ; $5641: $fc
    ld [bc], a                                    ; $5642: $02
    db $fc                                        ; $5643: $fc

jr_0f7_5644:
    add hl, bc                                    ; $5644: $09
    add c                                         ; $5645: $81
    nop                                           ; $5646: $00
    ld [bc], a                                    ; $5647: $02
    ld [bc], a                                    ; $5648: $02
    add e                                         ; $5649: $83
    dec b                                         ; $564a: $05
    nop                                           ; $564b: $00
    ld [bc], a                                    ; $564c: $02
    inc bc                                        ; $564d: $03
    nop                                           ; $564e: $00
    ld [bc], a                                    ; $564f: $02
    ld b, b                                       ; $5650: $40
    add e                                         ; $5651: $83
    and b                                         ; $5652: $a0
    nop                                           ; $5653: $00
    ld b, b                                       ; $5654: $40
    rlca                                          ; $5655: $07
    nop                                           ; $5656: $00
    add c                                         ; $5657: $81
    ld bc, $000a                                  ; $5658: $01 $0a $00
    ld [bc], a                                    ; $565b: $02
    jr nz, jr_0f7_5660                            ; $565c: $20 $02

jr_0f7_565e:
    ld h, b                                       ; $565e: $60
    sub h                                         ; $565f: $94

jr_0f7_5660:
    add b                                         ; $5660: $80
    ret nz                                        ; $5661: $c0

jr_0f7_5662:
    add b                                         ; $5662: $80
    ret nz                                        ; $5663: $c0

    ld b, b                                       ; $5664: $40
    and b                                         ; $5665: $a0
    ld b, b                                       ; $5666: $40
    and b                                         ; $5667: $a0
    ld h, b                                       ; $5668: $60
    sub b                                         ; $5669: $90
    jr nz, jr_0f7_56c4                            ; $566a: $20 $58

jr_0f7_566c:
    jr c, jr_0f7_56b5                             ; $566c: $38 $47

    dec e                                         ; $566e: $1d
    and d                                         ; $566f: $a2
    add a                                         ; $5670: $87
    ld e, b                                       ; $5671: $58
    nop                                           ; $5672: $00
    add a                                         ; $5673: $87
    ld [$0200], sp                                ; $5674: $08 $00 $02
    inc b                                         ; $5677: $04
    sub [hl]                                      ; $5678: $96
    ld [bc], a                                    ; $5679: $02
    ld b, $01                                     ; $567a: $06 $01
    inc bc                                        ; $567c: $03
    ld bc, $0203                                  ; $567d: $01 $03 $02
    dec d                                         ; $5680: $15
    ld [de], a                                    ; $5681: $12
    dec l                                         ; $5682: $2d
    ld b, $19                                     ; $5683: $06 $19
    inc c                                         ; $5685: $0c
    ld [de], a                                    ; $5686: $12
    jr @+$68                                      ; $5687: $18 $66

    ld a, b                                       ; $5689: $78
    inc b                                         ; $568a: $04
    jr nz, jr_0f7_56e5                            ; $568b: $20 $58

    nop                                           ; $568d: $00
    ld h, b                                       ; $568e: $60
    ld [$ff00], sp                                ; $568f: $08 $00 $ff
    dec bc                                        ; $5692: $0b
    inc bc                                        ; $5693: $03
    rst $28                                       ; $5694: $ef
    inc c                                         ; $5695: $0c
    ld sp, hl                                     ; $5696: $f9
    ld [$02f9], sp                                ; $5697: $08 $f9 $02
    ld sp, hl                                     ; $569a: $f9
    ld a, [bc]                                    ; $569b: $0a
    ld sp, hl                                     ; $569c: $f9
    inc c                                         ; $569d: $0c
    ld [bc], a                                    ; $569e: $02
    nop                                           ; $569f: $00
    ld [bc], a                                    ; $56a0: $02
    ld bc, $0286                                  ; $56a1: $01 $86 $02
    inc de                                        ; $56a4: $13
    db $10                                        ; $56a5: $10
    jr z, jr_0f7_56a8                             ; $56a6: $28 $00

jr_0f7_56a8:
    db $10                                        ; $56a8: $10
    inc bc                                        ; $56a9: $03
    nop                                           ; $56aa: $00
    ld [bc], a                                    ; $56ab: $02
    ld bc, $0202                                  ; $56ac: $01 $02 $02
    add e                                         ; $56af: $83
    dec b                                         ; $56b0: $05
    nop                                           ; $56b1: $00
    ld [bc], a                                    ; $56b2: $02
    inc b                                         ; $56b3: $04
    nop                                           ; $56b4: $00

jr_0f7_56b5:
    add [hl]                                      ; $56b5: $86
    inc bc                                        ; $56b6: $03
    ld b, e                                       ; $56b7: $43
    ld b, c                                       ; $56b8: $41
    and c                                         ; $56b9: $a1
    nop                                           ; $56ba: $00
    ld b, b                                       ; $56bb: $40
    ld [bc], a                                    ; $56bc: $02
    nop                                           ; $56bd: $00
    sbc [hl]                                      ; $56be: $9e
    ret nz                                        ; $56bf: $c0

    ld hl, sp+$18                                 ; $56c0: $f8 $18
    and $0e                                       ; $56c2: $e6 $0e

jr_0f7_56c4:
    ld sp, $0807                                  ; $56c4: $31 $07 $08
    inc bc                                        ; $56c7: $03
    inc b                                         ; $56c8: $04
    ld bc, $0002                                  ; $56c9: $01 $02 $00
    inc bc                                        ; $56cc: $03
    ld bc, $0182                                  ; $56cd: $01 $82 $01
    ld [bc], a                                    ; $56d0: $02
    ld bc, $0302                                  ; $56d1: $01 $02 $03
    inc b                                         ; $56d4: $04
    dec b                                         ; $56d5: $05
    ld a, [bc]                                    ; $56d6: $0a
    ld b, $39                                     ; $56d7: $06 $39
    jr @-$18                                      ; $56d9: $18 $e6

    ret nz                                        ; $56db: $c0

    ld hl, sp+$09                                 ; $56dc: $f8 $09
    nop                                           ; $56de: $00
    add d                                         ; $56df: $82
    ld [bc], a                                    ; $56e0: $02
    nop                                           ; $56e1: $00
    ld [bc], a                                    ; $56e2: $02
    ld [bc], a                                    ; $56e3: $02
    adc l                                         ; $56e4: $8d

jr_0f7_56e5:
    ld bc, $0102                                  ; $56e5: $01 $02 $01
    ld [bc], a                                    ; $56e8: $02
    ld bc, $0300                                  ; $56e9: $01 $00 $03
    ld [bc], a                                    ; $56ec: $02
    ld bc, $0200                                  ; $56ed: $01 $00 $02
    nop                                           ; $56f0: $00
    ld [bc], a                                    ; $56f1: $02
    ld [$ff00], sp                                ; $56f2: $08 $00 $ff
    dec bc                                        ; $56f5: $0b
    inc bc                                        ; $56f6: $03
    rst $28                                       ; $56f7: $ef
    inc c                                         ; $56f8: $0c
    ld sp, hl                                     ; $56f9: $f9
    ld [$05f9], sp                                ; $56fa: $08 $f9 $05
    ld sp, hl                                     ; $56fd: $f9
    dec c                                         ; $56fe: $0d
    ld sp, hl                                     ; $56ff: $f9
    ld [de], a                                    ; $5700: $12
    dec b                                         ; $5701: $05
    nop                                           ; $5702: $00

jr_0f7_5703:
    ld [bc], a                                    ; $5703: $02
    ld [bc], a                                    ; $5704: $02
    adc l                                         ; $5705: $8d
    dec b                                         ; $5706: $05
    nop                                           ; $5707: $00
    inc bc                                        ; $5708: $03
    ld bc, $0102                                  ; $5709: $01 $02 $01
    ld b, d                                       ; $570c: $42
    ld b, b                                       ; $570d: $40
    and e                                         ; $570e: $a3
    ld [bc], a                                    ; $570f: $02
    ld b, e                                       ; $5710: $43
    ld [bc], a                                    ; $5711: $02
    inc bc                                        ; $5712: $03
    ld [bc], a                                    ; $5713: $02
    ld bc, $0005                                  ; $5714: $01 $05 $00
    ld [bc], a                                    ; $5717: $02
    ld [bc], a                                    ; $5718: $02
    sub e                                         ; $5719: $93
    dec b                                         ; $571a: $05
    nop                                           ; $571b: $00
    ld [bc], a                                    ; $571c: $02
    nop                                           ; $571d: $00
    rra                                           ; $571e: $1f
    rla                                           ; $571f: $17
    ld l, b                                       ; $5720: $68
    ld a, l                                       ; $5721: $7d
    add d                                         ; $5722: $82
    ldh [$1f], a                                  ; $5723: $e0 $1f
    ret nz                                        ; $5725: $c0

    jr nz, jr_0f7_5728                            ; $5726: $20 $00

jr_0f7_5728:
    ret nz                                        ; $5728: $c0

    nop                                           ; $5729: $00
    add b                                         ; $572a: $80
    nop                                           ; $572b: $00
    add b                                         ; $572c: $80
    dec b                                         ; $572d: $05
    nop                                           ; $572e: $00
    inc bc                                        ; $572f: $03
    add b                                         ; $5730: $80
    dec bc                                        ; $5731: $0b
    nop                                           ; $5732: $00
    ld [bc], a                                    ; $5733: $02
    jr @-$6f                                      ; $5734: $18 $8f

    inc b                                         ; $5736: $04
    inc e                                         ; $5737: $1c
    ld [bc], a                                    ; $5738: $02
    inc c                                         ; $5739: $0c
    ld [de], a                                    ; $573a: $12
    ld [bc], a                                    ; $573b: $02
    dec c                                         ; $573c: $0d
    nop                                           ; $573d: $00
    rlca                                          ; $573e: $07
    nop                                           ; $573f: $00
    rlca                                          ; $5740: $07
    ld bc, $0103                                  ; $5741: $01 $03 $01
    inc bc                                        ; $5744: $03
    ld [bc], a                                    ; $5745: $02
    ld b, $02                                     ; $5746: $06 $02
    inc b                                         ; $5748: $04
    ld [$ff00], sp                                ; $5749: $08 $00 $ff
    dec bc                                        ; $574c: $0b
    inc bc                                        ; $574d: $03
    rst $28                                       ; $574e: $ef
    inc c                                         ; $574f: $0c
    ld sp, hl                                     ; $5750: $f9
    ld [$09f9], sp                                ; $5751: $08 $f9 $09
    ld sp, hl                                     ; $5754: $f9
    ld de, $12f9                                  ; $5755: $11 $f9 $12
    inc bc                                        ; $5758: $03
    nop                                           ; $5759: $00
    ld [bc], a                                    ; $575a: $02
    ld b, b                                       ; $575b: $40
    add [hl]                                      ; $575c: $86
    and c                                         ; $575d: $a1
    ld bc, $0142                                  ; $575e: $01 $42 $01
    ld [bc], a                                    ; $5761: $02
    inc bc                                        ; $5762: $03
    ld [bc], a                                    ; $5763: $02
    inc b                                         ; $5764: $04
    adc [hl]                                      ; $5765: $8e
    dec bc                                        ; $5766: $0b
    inc bc                                        ; $5767: $03
    inc b                                         ; $5768: $04
    ld bc, $0306                                  ; $5769: $01 $06 $03
    inc b                                         ; $576c: $04
    ld bc, $0102                                  ; $576d: $01 $02 $01
    ld [bc], a                                    ; $5770: $02
    nop                                           ; $5771: $00
    ld bc, $0200                                  ; $5772: $01 $00 $02
    ld [$1496], sp                                ; $5775: $08 $96 $14
    nop                                           ; $5778: $00
    ld [$3e06], sp                                ; $5779: $08 $06 $3e
    add hl, sp                                    ; $577c: $39
    rst $00                                       ; $577d: $c7
    pop hl                                        ; $577e: $e1
    add hl, de                                    ; $577f: $19
    ret nz                                        ; $5780: $c0

    jr nz, jr_0f7_5703                            ; $5781: $20 $80

    ld b, b                                       ; $5783: $40
    nop                                           ; $5784: $00
    add b                                         ; $5785: $80
    nop                                           ; $5786: $00
    add b                                         ; $5787: $80
    nop                                           ; $5788: $00
    add b                                         ; $5789: $80
    nop                                           ; $578a: $00
    add b                                         ; $578b: $80
    nop                                           ; $578c: $00
    ld [bc], a                                    ; $578d: $02
    add b                                         ; $578e: $80
    adc c                                         ; $578f: $89
    ld b, b                                       ; $5790: $40
    ret nz                                        ; $5791: $c0

    jr nz, @-$1e                                  ; $5792: $20 $e0

    add hl, de                                    ; $5794: $19
    add hl, sp                                    ; $5795: $39
    rst $00                                       ; $5796: $c7
    ld b, $3e                                     ; $5797: $06 $3e
    ld b, $00                                     ; $5799: $06 $00
    ld [bc], a                                    ; $579b: $02
    ld bc, $0012                                  ; $579c: $01 $12 $00
    ld [bc], a                                    ; $579f: $02
    ld bc, $0006                                  ; $57a0: $01 $06 $00
    rst $38                                       ; $57a3: $ff
    dec bc                                        ; $57a4: $0b
    inc bc                                        ; $57a5: $03
    rst $28                                       ; $57a6: $ef
    inc c                                         ; $57a7: $0c
    ld sp, hl                                     ; $57a8: $f9
    ld [$0bfa], sp                                ; $57a9: $08 $fa $0b
    ld a, [$fa13]                                 ; $57ac: $fa $13 $fa
    rla                                           ; $57af: $17
    add c                                         ; $57b0: $81
    nop                                           ; $57b1: $00
    ld [bc], a                                    ; $57b2: $02
    ld b, b                                       ; $57b3: $40
    add e                                         ; $57b4: $83
    and b                                         ; $57b5: $a0
    ld bc, $0241                                  ; $57b6: $01 $41 $02
    inc bc                                        ; $57b9: $03
    sub c                                         ; $57ba: $91
    inc b                                         ; $57bb: $04
    ld h, $24                                     ; $57bc: $26 $24
    ld d, [hl]                                    ; $57be: $56
    nop                                           ; $57bf: $00
    daa                                           ; $57c0: $27
    ld [bc], a                                    ; $57c1: $02
    dec b                                         ; $57c2: $05
    ld [bc], a                                    ; $57c3: $02
    dec b                                         ; $57c4: $05
    ld bc, $0102                                  ; $57c5: $01 $02 $01
    ld [bc], a                                    ; $57c8: $02
    nop                                           ; $57c9: $00
    ld bc, $0200                                  ; $57ca: $01 $00 $02
    inc b                                         ; $57cd: $04
    add e                                         ; $57ce: $83
    ld a, [bc]                                    ; $57cf: $0a
    nop                                           ; $57d0: $00
    inc b                                         ; $57d1: $04
    dec c                                         ; $57d2: $0d
    nop                                           ; $57d3: $00
    ld [bc], a                                    ; $57d4: $02
    ld [bc], a                                    ; $57d5: $02
    add h                                         ; $57d6: $84
    dec b                                         ; $57d7: $05
    nop                                           ; $57d8: $00
    ld [bc], a                                    ; $57d9: $02
    nop                                           ; $57da: $00
    ld [bc], a                                    ; $57db: $02
    add b                                         ; $57dc: $80
    adc c                                         ; $57dd: $89
    ld b, c                                       ; $57de: $41
    pop bc                                        ; $57df: $c1
    ld a, $ef                                     ; $57e0: $3e $ef
    db $10                                        ; $57e2: $10
    ld a, [hl-]                                   ; $57e3: $3a
    push bc                                       ; $57e4: $c5
    nop                                           ; $57e5: $00
    ld a, $08                                     ; $57e6: $3e $08
    nop                                           ; $57e8: $00
    ld [bc], a                                    ; $57e9: $02
    inc b                                         ; $57ea: $04
    sub h                                         ; $57eb: $94
    ld [bc], a                                    ; $57ec: $02
    ld b, $01                                     ; $57ed: $06 $01
    inc bc                                        ; $57ef: $03
    ld bc, $0003                                  ; $57f0: $01 $03 $00
    rlca                                          ; $57f3: $07
    ld [bc], a                                    ; $57f4: $02
    dec b                                         ; $57f5: $05
    nop                                           ; $57f6: $00
    rrca                                          ; $57f7: $0f
    inc b                                         ; $57f8: $04
    ld a, [bc]                                    ; $57f9: $0a
    inc c                                         ; $57fa: $0c
    ld [bc], a                                    ; $57fb: $02
    ld [$0004], sp                                ; $57fc: $08 $04 $00
    ld [$0006], sp                                ; $57ff: $08 $06 $00
    rst $38                                       ; $5802: $ff
    dec bc                                        ; $5803: $0b
    inc bc                                        ; $5804: $03
    rst $28                                       ; $5805: $ef
    inc c                                         ; $5806: $0c
    ld sp, hl                                     ; $5807: $f9
    ld [$11f9], sp                                ; $5808: $08 $f9 $11
    ld sp, hl                                     ; $580b: $f9
    add hl, de                                    ; $580c: $19
    ld sp, hl                                     ; $580d: $f9
    ld a, [de]                                    ; $580e: $1a
    ld [bc], a                                    ; $580f: $02
    ld bc, $0286                                  ; $5810: $01 $86 $02
    ld b, e                                       ; $5813: $43
    ld b, h                                       ; $5814: $44
    and [hl]                                      ; $5815: $a6
    nop                                           ; $5816: $00

jr_0f7_5817:
    ld b, b                                       ; $5817: $40
    inc bc                                        ; $5818: $03
    nop                                           ; $5819: $00
    ld [bc], a                                    ; $581a: $02
    ld [bc], a                                    ; $581b: $02
    add e                                         ; $581c: $83
    dec b                                         ; $581d: $05
    nop                                           ; $581e: $00
    ld [bc], a                                    ; $581f: $02
    dec b                                         ; $5820: $05
    nop                                           ; $5821: $00
    ld [bc], a                                    ; $5822: $02
    jr nz, @-$79                                  ; $5823: $20 $85

    ld d, b                                       ; $5825: $50
    ld b, $26                                     ; $5826: $06 $26
    ld [bc], a                                    ; $5828: $02
    inc bc                                        ; $5829: $03
    ld [bc], a                                    ; $582a: $02
    ld bc, $0002                                  ; $582b: $01 $02 $00
    sbc [hl]                                      ; $582e: $9e
    add b                                         ; $582f: $80
    ldh a, [$30]                                  ; $5830: $f0 $30
    call z, Call_0f7_720c                         ; $5832: $cc $0c $72
    inc c                                         ; $5835: $0c
    inc de                                        ; $5836: $13
    ld b, $09                                     ; $5837: $06 $09
    inc bc                                        ; $5839: $03
    inc b                                         ; $583a: $04
    ld [bc], a                                    ; $583b: $02
    dec b                                         ; $583c: $05
    ld bc, $0306                                  ; $583d: $01 $06 $03
    inc b                                         ; $5840: $04
    inc bc                                        ; $5841: $03
    inc b                                         ; $5842: $04
    ld [bc], a                                    ; $5843: $02
    dec c                                         ; $5844: $0d
    ld c, $11                                     ; $5845: $0e $11
    inc c                                         ; $5847: $0c
    ld [hl], d                                    ; $5848: $72
    jr nc, jr_0f7_5817                            ; $5849: $30 $cc

    add b                                         ; $584b: $80
    ldh a, [$0d]                                  ; $584c: $f0 $0d
    nop                                           ; $584e: $00
    adc c                                         ; $584f: $89
    ld bc, $0100                                  ; $5850: $01 $00 $01
    nop                                           ; $5853: $00
    ld bc, $0100                                  ; $5854: $01 $00 $01
    nop                                           ; $5857: $00
    ld bc, $000c                                  ; $5858: $01 $0c $00
    rst $38                                       ; $585b: $ff
    rrca                                          ; $585c: $0f
    dec b                                         ; $585d: $05
    db $f4                                        ; $585e: $f4
    dec c                                         ; $585f: $0d
    xor $00                                       ; $5860: $ee $00
    db $ec                                        ; $5862: $ec
    db $f4                                        ; $5863: $f4
    pop af                                        ; $5864: $f1
    db $fc                                        ; $5865: $fc
    ld a, [c]                                     ; $5866: $f2
    inc b                                         ; $5867: $04
    ld sp, hl                                     ; $5868: $f9
    ld b, $fc                                     ; $5869: $06 $fc
    db $f4                                        ; $586b: $f4
    add [hl]                                      ; $586c: $86
    ld [bc], a                                    ; $586d: $02
    nop                                           ; $586e: $00
    ld b, $05                                     ; $586f: $06 $05
    inc b                                         ; $5871: $04
    rlca                                          ; $5872: $07
    ld [bc], a                                    ; $5873: $02
    ld [bc], a                                    ; $5874: $02
    ld b, $00                                     ; $5875: $06 $00
    add a                                         ; $5877: $87
    inc b                                         ; $5878: $04
    nop                                           ; $5879: $00
    inc c                                         ; $587a: $0c
    ld a, [bc]                                    ; $587b: $0a
    ld [$000e], sp                                ; $587c: $08 $0e $00
    ld [bc], a                                    ; $587f: $02
    inc b                                         ; $5880: $04
    adc h                                         ; $5881: $8c
    ld b, $44                                     ; $5882: $06 $44
    ld b, $c2                                     ; $5884: $06 $c2
    xor a                                         ; $5886: $af
    add d                                         ; $5887: $82
    push hl                                       ; $5888: $e5
    ld b, [hl]                                    ; $5889: $46
    ld c, l                                       ; $588a: $4d
    ld bc, $0300                                  ; $588b: $01 $00 $03
    ld [bc], a                                    ; $588e: $02
    ld [bc], a                                    ; $588f: $02
    add c                                         ; $5890: $81
    inc bc                                        ; $5891: $03
    ld [bc], a                                    ; $5892: $02
    ld bc, $1094                                  ; $5893: $01 $94 $10
    ld bc, $2b32                                  ; $5896: $01 $32 $2b
    jr nc, @+$3d                                  ; $5899: $30 $3b

    inc d                                         ; $589b: $14
    ld d, $0c                                     ; $589c: $16 $0c
    dec c                                         ; $589e: $0d
    inc b                                         ; $589f: $04
    dec bc                                        ; $58a0: $0b
    dec e                                         ; $58a1: $1d
    sbc e                                         ; $58a2: $9b
    add hl, de                                    ; $58a3: $19
    ld a, $b7                                     ; $58a4: $3e $b7
    cp [hl]                                       ; $58a6: $be
    ld a, d                                       ; $58a7: $7a
    rst $38                                       ; $58a8: $ff
    ld [bc], a                                    ; $58a9: $02
    or a                                          ; $58aa: $b7
    ld [bc], a                                    ; $58ab: $02
    ld c, c                                       ; $58ac: $49
    add h                                         ; $58ad: $84
    nop                                           ; $58ae: $00
    add b                                         ; $58af: $80
    nop                                           ; $58b0: $00
    add b                                         ; $58b1: $80
    ld b, $00                                     ; $58b2: $06 $00
    add [hl]                                      ; $58b4: $86
    ld [$1800], sp                                ; $58b5: $08 $00 $18
    inc d                                         ; $58b8: $14
    db $10                                        ; $58b9: $10
    inc e                                         ; $58ba: $1c
    ld [bc], a                                    ; $58bb: $02
    adc c                                         ; $58bc: $89
    adc b                                         ; $58bd: $88
    ld sp, $1039                                  ; $58be: $31 $39 $10
    ld c, b                                       ; $58c1: $48
    inc [hl]                                      ; $58c2: $34
    db $ec                                        ; $58c3: $ec
    inc hl                                        ; $58c4: $23
    ei                                            ; $58c5: $fb
    ld [bc], a                                    ; $58c6: $02
    rst $38                                       ; $58c7: $ff
    ld [bc], a                                    ; $58c8: $02
    cp c                                          ; $58c9: $b9
    ld [bc], a                                    ; $58ca: $02
    nop                                           ; $58cb: $00
    add [hl]                                      ; $58cc: $86

jr_0f7_58cd:
    ld [bc], a                                    ; $58cd: $02
    nop                                           ; $58ce: $00
    ld [bc], a                                    ; $58cf: $02
    ld bc, $0300                                  ; $58d0: $01 $00 $03
    ld [bc], a                                    ; $58d3: $02
    ld [bc], a                                    ; $58d4: $02
    ld b, $03                                     ; $58d5: $06 $03
    ld [bc], a                                    ; $58d7: $02
    ld [bc], a                                    ; $58d8: $02
    stop                                          ; $58d9: $10 $00
    adc b                                         ; $58db: $88
    inc l                                         ; $58dc: $2c
    ld l, a                                       ; $58dd: $6f
    ld h, e                                       ; $58de: $63
    dec c                                         ; $58df: $0d
    and $dd                                       ; $58e0: $e6 $dd
    ld c, h                                       ; $58e2: $4c
    ld a, a                                       ; $58e3: $7f
    ld [bc], a                                    ; $58e4: $02
    halt                                          ; $58e5: $76
    ld d, $00                                     ; $58e6: $16 $00
    rst $38                                       ; $58e8: $ff
    ld de, $f406                                  ; $58e9: $11 $06 $f4
    dec c                                         ; $58ec: $0d
    xor $00                                       ; $58ed: $ee $00
    jp hl                                         ; $58ef: $e9


    db $f4                                        ; $58f0: $f4
    xor $fe                                       ; $58f1: $ee $fe
    db $f4                                        ; $58f3: $f4
    ld b, $f9                                     ; $58f4: $06 $f9
    db $f4                                        ; $58f6: $f4
    ld sp, hl                                     ; $58f7: $f9
    db $fc                                        ; $58f8: $fc
    ld sp, hl                                     ; $58f9: $f9
    cp $86                                        ; $58fa: $fe $86
    ld [bc], a                                    ; $58fc: $02
    nop                                           ; $58fd: $00
    ld b, $05                                     ; $58fe: $06 $05
    nop                                           ; $5900: $00
    inc bc                                        ; $5901: $03
    ld [bc], a                                    ; $5902: $02
    ld [bc], a                                    ; $5903: $02
    ld a, [bc]                                    ; $5904: $0a
    nop                                           ; $5905: $00
    sub h                                         ; $5906: $94
    inc b                                         ; $5907: $04
    nop                                           ; $5908: $00
    inc c                                         ; $5909: $0c
    ld a, [bc]                                    ; $590a: $0a
    ld [$400c], sp                                ; $590b: $08 $0c $40
    nop                                           ; $590e: $00
    ret nz                                        ; $590f: $c0

    and b                                         ; $5910: $a0
    add h                                         ; $5911: $84
    and $46                                       ; $5912: $e6 $46
    ld b, l                                       ; $5914: $45
    inc b                                         ; $5915: $04
    nop                                           ; $5916: $00
    inc c                                         ; $5917: $0c
    ld a, [bc]                                    ; $5918: $0a
    nop                                           ; $5919: $00
    ld b, $02                                     ; $591a: $06 $02
    inc b                                         ; $591c: $04
    ld [bc], a                                    ; $591d: $02
    nop                                           ; $591e: $00
    sbc h                                         ; $591f: $9c

jr_0f7_5920:
    ld b, b                                       ; $5920: $40
    nop                                           ; $5921: $00
    ret nz                                        ; $5922: $c0

    and b                                         ; $5923: $a0
    add b                                         ; $5924: $80
    db $e4                                        ; $5925: $e4
    ret z                                         ; $5926: $c8

    db $ec                                        ; $5927: $ec
    ld c, b                                       ; $5928: $48
    ld b, b                                       ; $5929: $40
    inc d                                         ; $592a: $14
    jr jr_0f7_595d                                ; $592b: $18 $30

    jr c, jr_0f7_593f                             ; $592d: $38 $10

    inc c                                         ; $592f: $0c
    halt                                          ; $5930: $76
    ld l, [hl]                                    ; $5931: $6e
    ld h, h                                       ; $5932: $64
    ld sp, hl                                     ; $5933: $f9
    call c, Call_000_20bb                         ; $5934: $dc $bb $20
    nop                                           ; $5937: $00
    ld h, b                                       ; $5938: $60
    ld d, b                                       ; $5939: $50
    ld b, b                                       ; $593a: $40
    ld [hl], b                                    ; $593b: $70
    ld [bc], a                                    ; $593c: $02
    jr nz, jr_0f7_58cd                            ; $593d: $20 $8e

jr_0f7_593f:
    ld [bc], a                                    ; $593f: $02
    nop                                           ; $5940: $00
    ld b, $05                                     ; $5941: $06 $05
    inc b                                         ; $5943: $04
    rlca                                          ; $5944: $07
    ld [bc], a                                    ; $5945: $02
    ld [hl+], a                                   ; $5946: $22
    ld c, b                                       ; $5947: $48
    jr z, jr_0f7_5920                             ; $5948: $28 $d6

    or [hl]                                       ; $594a: $b6
    adc [hl]                                      ; $594b: $8e
    xor $02                                       ; $594c: $ee $02
    db $fc                                        ; $594e: $fc
    ld [bc], a                                    ; $594f: $02
    ld l, b                                       ; $5950: $68
    ld b, $00                                     ; $5951: $06 $00
    adc [hl]                                      ; $5953: $8e
    ld b, $05                                     ; $5954: $06 $05
    inc c                                         ; $5956: $0c
    dec bc                                        ; $5957: $0b
    inc e                                         ; $5958: $1c
    dec de                                        ; $5959: $1b
    ld l, c                                       ; $595a: $69
    ld l, $47                                     ; $595b: $2e $47

jr_0f7_595d:
    ld l, $43                                     ; $595d: $2e $43
    ld a, d                                       ; $595f: $7a
    adc $ff                                       ; $5960: $ce $ff
    ld [bc], a                                    ; $5962: $02
    inc sp                                        ; $5963: $33
    ld [de], a                                    ; $5964: $12
    nop                                           ; $5965: $00
    ld [bc], a                                    ; $5966: $02
    ld b, b                                       ; $5967: $40
    adc d                                         ; $5968: $8a
    nop                                           ; $5969: $00
    add b                                         ; $596a: $80
    ld b, b                                       ; $596b: $40
    ret nz                                        ; $596c: $c0

    nop                                           ; $596d: $00
    add b                                         ; $596e: $80
    ld [hl], d                                    ; $596f: $72
    rst $28                                       ; $5970: $ef
    daa                                           ; $5971: $27
    or a                                          ; $5972: $b7
    ld [bc], a                                    ; $5973: $02
    ld e, c                                       ; $5974: $59
    dec de                                        ; $5975: $1b
    nop                                           ; $5976: $00
    inc bc                                        ; $5977: $03
    inc bc                                        ; $5978: $03
    ld [bc], a                                    ; $5979: $02
    ld bc, $0010                                  ; $597a: $01 $10 $00
    rst $38                                       ; $597d: $ff
    ld de, $f406                                  ; $597e: $11 $06 $f4
    dec c                                         ; $5981: $0d
    xor $00                                       ; $5982: $ee $00
    rst $20                                       ; $5984: $e7
    db $f4                                        ; $5985: $f4
    db $ec                                        ; $5986: $ec
    db $fd                                        ; $5987: $fd
    ld a, [c]                                     ; $5988: $f2
    ld b, $f7                                     ; $5989: $06 $f7
    db $f4                                        ; $598b: $f4
    rst $30                                       ; $598c: $f7
    db $fc                                        ; $598d: $fc
    rst $30                                       ; $598e: $f7
    cp $86                                        ; $598f: $fe $86
    ld [bc], a                                    ; $5991: $02
    nop                                           ; $5992: $00
    ld b, $05                                     ; $5993: $06 $05
    ld b, $05                                     ; $5995: $06 $05
    ld [bc], a                                    ; $5997: $02
    ld [bc], a                                    ; $5998: $02
    ld [$8c00], sp                                ; $5999: $08 $00 $8c
    inc b                                         ; $599c: $04
    nop                                           ; $599d: $00
    inc c                                         ; $599e: $0c
    ld a, [bc]                                    ; $599f: $0a
    ld [$400c], sp                                ; $59a0: $08 $0c $40
    nop                                           ; $59a3: $00
    ret nz                                        ; $59a4: $c0

    and b                                         ; $59a5: $a0
    ret nz                                        ; $59a6: $c0

    and b                                         ; $59a7: $a0
    ld [bc], a                                    ; $59a8: $02
    ld b, b                                       ; $59a9: $40
    add [hl]                                      ; $59aa: $86
    ld [bc], a                                    ; $59ab: $02
    nop                                           ; $59ac: $00
    ld [bc], a                                    ; $59ad: $02
    nop                                           ; $59ae: $00
    ld b, $05                                     ; $59af: $06 $05
    ld [bc], a                                    ; $59b1: $02
    ld [bc], a                                    ; $59b2: $02
    inc b                                         ; $59b3: $04
    nop                                           ; $59b4: $00
    sbc h                                         ; $59b5: $9c
    jr nz, jr_0f7_59b8                            ; $59b6: $20 $00

jr_0f7_59b8:
    ld h, b                                       ; $59b8: $60
    ld d, b                                       ; $59b9: $50
    ld b, b                                       ; $59ba: $40
    ld [hl], b                                    ; $59bb: $70
    ld h, b                                       ; $59bc: $60
    ld [hl], b                                    ; $59bd: $70
    ld [hl+], a                                   ; $59be: $22
    jr nz, @+$06                                  ; $59bf: $20 $04

    ld b, $02                                     ; $59c1: $06 $02
    inc b                                         ; $59c3: $04
    ld c, $0d                                     ; $59c4: $0e $0d
    inc e                                         ; $59c6: $1c
    rla                                           ; $59c7: $17
    ld a, [de]                                    ; $59c8: $1a
    ld d, [hl]                                    ; $59c9: $56
    ld [de], a                                    ; $59ca: $12
    ld e, $20                                     ; $59cb: $1e $20
    nop                                           ; $59cd: $00
    ld h, b                                       ; $59ce: $60
    ld d, b                                       ; $59cf: $50
    ld b, b                                       ; $59d0: $40
    ld [hl], b                                    ; $59d1: $70
    ld [bc], a                                    ; $59d2: $02
    jr nz, jr_0f7_59d9                            ; $59d3: $20 $04

    nop                                           ; $59d5: $00
    sub b                                         ; $59d6: $90
    ld [bc], a                                    ; $59d7: $02
    nop                                           ; $59d8: $00

jr_0f7_59d9:
    ld b, $05                                     ; $59d9: $06 $05
    inc b                                         ; $59db: $04
    rlca                                          ; $59dc: $07
    ld [hl+], a                                   ; $59dd: $22
    ld [bc], a                                    ; $59de: $02
    nop                                           ; $59df: $00
    ld h, b                                       ; $59e0: $60
    adc d                                         ; $59e1: $8a
    ld [c], a                                     ; $59e2: $e2
    sbc d                                         ; $59e3: $9a
    sub $72                                       ; $59e4: $d6 $72
    ld a, [hl]                                    ; $59e6: $7e
    ld [bc], a                                    ; $59e7: $02
    add sp, $02                                   ; $59e8: $e8 $02
    nop                                           ; $59ea: $00
    sub d                                         ; $59eb: $92
    ld b, $05                                     ; $59ec: $06 $05
    ld b, $05                                     ; $59ee: $06 $05
    ld b, $0b                                     ; $59f0: $06 $0b
    inc c                                         ; $59f2: $0c
    ld c, e                                       ; $59f3: $4b
    add hl, bc                                    ; $59f4: $09
    ld c, $6f                                     ; $59f5: $0e $6f
    ld l, $4a                                     ; $59f7: $2e $4a
    cpl                                           ; $59f9: $2f
    push bc                                       ; $59fa: $c5
    rst $38                                       ; $59fb: $ff

jr_0f7_59fc:
    ld c, l                                       ; $59fc: $4d
    ld a, a                                       ; $59fd: $7f
    ld [bc], a                                    ; $59fe: $02
    dec hl                                        ; $59ff: $2b
    dec d                                         ; $5a00: $15
    nop                                           ; $5a01: $00
    adc e                                         ; $5a02: $8b
    add b                                         ; $5a03: $80
    ld e, h                                       ; $5a04: $5c
    adc a                                         ; $5a05: $8f
    ld [hl], c                                    ; $5a06: $71
    xor a                                         ; $5a07: $af
    and a                                         ; $5a08: $a7
    ld a, [hl]                                    ; $5a09: $7e
    sub a                                         ; $5a0a: $97
    ld d, [hl]                                    ; $5a0b: $56
    ld [hl], $f7                                  ; $5a0c: $36 $f7
    ld [bc], a                                    ; $5a0e: $02
    add c                                         ; $5a0f: $81
    inc d                                         ; $5a10: $14
    nop                                           ; $5a11: $00
    adc d                                         ; $5a12: $8a
    ld [bc], a                                    ; $5a13: $02
    ld bc, $0102                                  ; $5a14: $01 $02 $01
    nop                                           ; $5a17: $00
    inc bc                                        ; $5a18: $03
    ld bc, $0103                                  ; $5a19: $01 $03 $01
    inc bc                                        ; $5a1c: $03
    inc c                                         ; $5a1d: $0c
    nop                                           ; $5a1e: $00
    rst $38                                       ; $5a1f: $ff
    ld de, $f406                                  ; $5a20: $11 $06 $f4
    dec c                                         ; $5a23: $0d
    xor $00                                       ; $5a24: $ee $00
    push hl                                       ; $5a26: $e5
    db $f4                                        ; $5a27: $f4
    ld [$f0fd], a                                 ; $5a28: $ea $fd $f0
    ld b, $f5                                     ; $5a2b: $06 $f5
    db $f4                                        ; $5a2d: $f4
    push af                                       ; $5a2e: $f5
    db $fc                                        ; $5a2f: $fc
    push af                                       ; $5a30: $f5
    inc bc                                        ; $5a31: $03
    add [hl]                                      ; $5a32: $86
    ld [bc], a                                    ; $5a33: $02
    nop                                           ; $5a34: $00
    ld b, $05                                     ; $5a35: $06 $05
    ld b, $04                                     ; $5a37: $06 $04
    ld [bc], a                                    ; $5a39: $02
    ld [bc], a                                    ; $5a3a: $02
    inc b                                         ; $5a3b: $04
    nop                                           ; $5a3c: $00
    add [hl]                                      ; $5a3d: $86
    inc b                                         ; $5a3e: $04
    nop                                           ; $5a3f: $00
    inc c                                         ; $5a40: $0c
    ld a, [bc]                                    ; $5a41: $0a
    nop                                           ; $5a42: $00
    inc b                                         ; $5a43: $04
    ld [bc], a                                    ; $5a44: $02
    nop                                           ; $5a45: $00
    sub b                                         ; $5a46: $90
    ld b, b                                       ; $5a47: $40
    nop                                           ; $5a48: $00
    ret nz                                        ; $5a49: $c0

    and b                                         ; $5a4a: $a0
    ret nz                                        ; $5a4b: $c0

    and b                                         ; $5a4c: $a0
    ld b, d                                       ; $5a4d: $42
    ld b, b                                       ; $5a4e: $40
    ld b, $05                                     ; $5a4f: $06 $05
    ld b, $05                                     ; $5a51: $06 $05
    ld [bc], a                                    ; $5a53: $02
    nop                                           ; $5a54: $00
    ld [bc], a                                    ; $5a55: $02
    ld bc, $0202                                  ; $5a56: $01 $02 $02
    add [hl]                                      ; $5a59: $86
    jr nz, jr_0f7_5a5c                            ; $5a5a: $20 $00

jr_0f7_5a5c:
    ld h, b                                       ; $5a5c: $60
    ld d, b                                       ; $5a5d: $50
    ld h, b                                       ; $5a5e: $60
    ld d, b                                       ; $5a5f: $50
    ld [bc], a                                    ; $5a60: $02
    jr nz, jr_0f7_5a6b                            ; $5a61: $20 $08

    nop                                           ; $5a63: $00
    sub b                                         ; $5a64: $90
    ld [bc], a                                    ; $5a65: $02
    nop                                           ; $5a66: $00
    ld c, $05                                     ; $5a67: $0e $05
    jr jr_0f7_5a82                                ; $5a69: $18 $17

jr_0f7_5a6b:
    ld a, [de]                                    ; $5a6b: $1a
    ld e, $0c                                     ; $5a6c: $1e $0c
    ld c, $20                                     ; $5a6e: $0e $20
    nop                                           ; $5a70: $00
    ld h, b                                       ; $5a71: $60
    ld d, b                                       ; $5a72: $50
    ld b, b                                       ; $5a73: $40
    ld [hl], b                                    ; $5a74: $70
    ld [bc], a                                    ; $5a75: $02
    jr nz, jr_0f7_59fc                            ; $5a76: $20 $84

    ld [bc], a                                    ; $5a78: $02
    nop                                           ; $5a79: $00
    ld b, $05                                     ; $5a7a: $06 $05
    ld [bc], a                                    ; $5a7c: $02
    ld [bc], a                                    ; $5a7d: $02
    inc b                                         ; $5a7e: $04
    nop                                           ; $5a7f: $00
    adc h                                         ; $5a80: $8c
    ld [bc], a                                    ; $5a81: $02

jr_0f7_5a82:
    nop                                           ; $5a82: $00
    ld b, $05                                     ; $5a83: $06 $05
    inc [hl]                                      ; $5a85: $34
    rla                                           ; $5a86: $17
    ld l, d                                       ; $5a87: $6a
    ld d, d                                       ; $5a88: $52
    db $db                                        ; $5a89: $db
    rst $30                                       ; $5a8a: $f7
    sub e                                         ; $5a8b: $93
    rst $38                                       ; $5a8c: $ff
    ld [bc], a                                    ; $5a8d: $02
    halt                                          ; $5a8e: $76
    ld [bc], a                                    ; $5a8f: $02
    ld [bc], a                                    ; $5a90: $02
    add e                                         ; $5a91: $83
    nop                                           ; $5a92: $00
    ld [bc], a                                    ; $5a93: $02
    inc c                                         ; $5a94: $0c
    ld [bc], a                                    ; $5a95: $02
    ld a, [bc]                                    ; $5a96: $0a
    adc a                                         ; $5a97: $8f
    rrca                                          ; $5a98: $0f
    ld [bc], a                                    ; $5a99: $02
    ld a, [bc]                                    ; $5a9a: $0a

jr_0f7_5a9b:
    ld c, d                                       ; $5a9b: $4a
    dec c                                         ; $5a9c: $0d
    sub $b4                                       ; $5a9d: $d6 $b4
    inc l                                         ; $5a9f: $2c
    ld l, a                                       ; $5aa0: $6f
    ld h, e                                       ; $5aa1: $63
    dec c                                         ; $5aa2: $0d
    and $d5                                       ; $5aa3: $e6 $d5
    call z, $02fe                                 ; $5aa5: $cc $fe $02
    ld l, d                                       ; $5aa8: $6a
    ld [de], a                                    ; $5aa9: $12
    nop                                           ; $5aaa: $00
    adc d                                         ; $5aab: $8a
    inc b                                         ; $5aac: $04
    dec bc                                        ; $5aad: $0b
    ld e, l                                       ; $5aae: $5d
    db $db                                        ; $5aaf: $db
    add hl, de                                    ; $5ab0: $19
    cp [hl]                                       ; $5ab1: $be
    or a                                          ; $5ab2: $b7
    cp [hl]                                       ; $5ab3: $be
    ld e, d                                       ; $5ab4: $5a
    rst $18                                       ; $5ab5: $df
    ld [bc], a                                    ; $5ab6: $02
    rst $30                                       ; $5ab7: $f7
    ld [bc], a                                    ; $5ab8: $02
    push hl                                       ; $5ab9: $e5
    inc d                                         ; $5aba: $14
    nop                                           ; $5abb: $00
    ld [bc], a                                    ; $5abc: $02
    ld b, b                                       ; $5abd: $40
    add l                                         ; $5abe: $85
    nop                                           ; $5abf: $00
    jr nz, jr_0f7_5ac2                            ; $5ac0: $20 $00

jr_0f7_5ac2:
    ld h, b                                       ; $5ac2: $60
    nop                                           ; $5ac3: $00
    inc bc                                        ; $5ac4: $03
    ld h, b                                       ; $5ac5: $60
    ld [bc], a                                    ; $5ac6: $02
    dec sp                                        ; $5ac7: $3b
    ld [$ff00], sp                                ; $5ac8: $08 $00 $ff
    inc de                                        ; $5acb: $13
    rlca                                          ; $5acc: $07
    db $f4                                        ; $5acd: $f4
    dec c                                         ; $5ace: $0d
    xor $00                                       ; $5acf: $ee $00
    ld [c], a                                     ; $5ad1: $e2
    db $f4                                        ; $5ad2: $f4
    add sp, -$03                                  ; $5ad3: $e8 $fd
    xor $06                                       ; $5ad5: $ee $06
    ld a, [c]                                     ; $5ad7: $f2
    db $f4                                        ; $5ad8: $f4
    ld a, [c]                                     ; $5ad9: $f2
    db $fc                                        ; $5ada: $fc
    ld a, [c]                                     ; $5adb: $f2
    inc b                                         ; $5adc: $04
    ld a, [c]                                     ; $5add: $f2
    ld b, $84                                     ; $5ade: $06 $84
    ld [bc], a                                    ; $5ae0: $02
    nop                                           ; $5ae1: $00
    ld b, $04                                     ; $5ae2: $06 $04
    ld [bc], a                                    ; $5ae4: $02
    ld [bc], a                                    ; $5ae5: $02
    ld [bc], a                                    ; $5ae6: $02
    nop                                           ; $5ae7: $00
    add h                                         ; $5ae8: $84
    inc b                                         ; $5ae9: $04
    nop                                           ; $5aea: $00
    ld c, $0a                                     ; $5aeb: $0e $0a
    ld [bc], a                                    ; $5aed: $02
    inc b                                         ; $5aee: $04
    ld a, [bc]                                    ; $5aef: $0a
    nop                                           ; $5af0: $00
    add h                                         ; $5af1: $84
    ld b, b                                       ; $5af2: $40
    ld [bc], a                                    ; $5af3: $02
    ld b, $c5                                     ; $5af4: $06 $c5
    ld [bc], a                                    ; $5af6: $02
    ld b, d                                       ; $5af7: $42
    ld [bc], a                                    ; $5af8: $02
    nop                                           ; $5af9: $00
    add c                                         ; $5afa: $81
    ld [bc], a                                    ; $5afb: $02
    ld [bc], a                                    ; $5afc: $02
    nop                                           ; $5afd: $00
    add l                                         ; $5afe: $85
    ld [bc], a                                    ; $5aff: $02
    jr nz, jr_0f7_5b04                            ; $5b00: $20 $02

    ld h, b                                       ; $5b02: $60
    ld d, b                                       ; $5b03: $50

jr_0f7_5b04:
    ld [bc], a                                    ; $5b04: $02
    jr nz, jr_0f7_5b15                            ; $5b05: $20 $0e

    nop                                           ; $5b07: $00
    adc [hl]                                      ; $5b08: $8e
    ld [bc], a                                    ; $5b09: $02
    nop                                           ; $5b0a: $00
    ld h, $05                                     ; $5b0b: $26 $05
    ld h, h                                       ; $5b0d: $64
    ld d, a                                       ; $5b0e: $57
    ld b, d                                       ; $5b0f: $42
    ld [hl], d                                    ; $5b10: $72
    jr nz, jr_0f7_5b13                            ; $5b11: $20 $00

jr_0f7_5b13:
    ld h, b                                       ; $5b13: $60
    ld d, b                                       ; $5b14: $50

jr_0f7_5b15:
    ld b, b                                       ; $5b15: $40
    ld [hl], b                                    ; $5b16: $70
    ld [bc], a                                    ; $5b17: $02
    jr nz, jr_0f7_5a9b                            ; $5b18: $20 $81

    ld [bc], a                                    ; $5b1a: $02
    ld [bc], a                                    ; $5b1b: $02
    nop                                           ; $5b1c: $00
    add e                                         ; $5b1d: $83
    ld [de], a                                    ; $5b1e: $12
    nop                                           ; $5b1f: $00
    ld [bc], a                                    ; $5b20: $02
    ld [$8a00], sp                                ; $5b21: $08 $00 $8a
    ld [bc], a                                    ; $5b24: $02

Jump_0f7_5b25:
    nop                                           ; $5b25: $00
    ld l, $0d                                     ; $5b26: $2e $0d
    ld h, h                                       ; $5b28: $64
    ld d, a                                       ; $5b29: $57
    ld c, d                                       ; $5b2a: $4a
    ld [hl], d                                    ; $5b2b: $72
    xor e                                         ; $5b2c: $ab
    and a                                         ; $5b2d: $a7
    inc b                                         ; $5b2e: $04
    nop                                           ; $5b2f: $00
    add [hl]                                      ; $5b30: $86
    inc b                                         ; $5b31: $04
    nop                                           ; $5b32: $00
    inc c                                         ; $5b33: $0c
    ld a, [bc]                                    ; $5b34: $0a
    ld [$020e], sp                                ; $5b35: $08 $0e $02
    inc b                                         ; $5b38: $04
    ld [bc], a                                    ; $5b39: $02
    ld a, [bc]                                    ; $5b3a: $0a
    adc h                                         ; $5b3b: $8c
    ld b, d                                       ; $5b3c: $42
    dec c                                         ; $5b3d: $0d
    add $a5                                       ; $5b3e: $c6 $a5
    add h                                         ; $5b40: $84
    rst $28                                       ; $5b41: $ef
    ld l, d                                       ; $5b42: $6a
    ld c, b                                       ; $5b43: $48
    ld h, [hl]                                    ; $5b44: $66
    ld e, l                                       ; $5b45: $5d
    call nz, Call_000_02ff                        ; $5b46: $c4 $ff $02
    xor d                                         ; $5b49: $aa
    ld [bc], a                                    ; $5b4a: $02
    ld c, h                                       ; $5b4b: $4c
    ld c, $00                                     ; $5b4c: $0e $00
    sub d                                         ; $5b4e: $92
    inc d                                         ; $5b4f: $14
    ld d, $0c                                     ; $5b50: $16 $0c
    ld c, $04                                     ; $5b52: $0e $04
    dec bc                                        ; $5b54: $0b
    ld e, l                                       ; $5b55: $5d
    db $db                                        ; $5b56: $db
    ld de, $b7b6                                  ; $5b57: $11 $b6 $b7
    cp [hl]                                       ; $5b5a: $be
    ld a, d                                       ; $5b5b: $7a
    rst $18                                       ; $5b5c: $df
    rst $20                                       ; $5b5d: $e7
    rst $10                                       ; $5b5e: $d7
    push bc                                       ; $5b5f: $c5
    push af                                       ; $5b60: $f5
    ld [bc], a                                    ; $5b61: $02
    jr nz, jr_0f7_5b76                            ; $5b62: $20 $12

    nop                                           ; $5b64: $00
    ld [bc], a                                    ; $5b65: $02
    add b                                         ; $5b66: $80
    add c                                         ; $5b67: $81
    nop                                           ; $5b68: $00
    ld [bc], a                                    ; $5b69: $02
    ld b, b                                       ; $5b6a: $40
    add l                                         ; $5b6b: $85
    add b                                         ; $5b6c: $80
    call nz, $9fb7                                ; $5b6d: $c4 $b7 $9f
    rst $38                                       ; $5b70: $ff
    ld [bc], a                                    ; $5b71: $02
    halt                                          ; $5b72: $76
    ld a, [de]                                    ; $5b73: $1a
    nop                                           ; $5b74: $00
    ld [bc], a                                    ; $5b75: $02

jr_0f7_5b76:
    inc bc                                        ; $5b76: $03
    ld [bc], a                                    ; $5b77: $02
    ld [bc], a                                    ; $5b78: $02
    inc b                                         ; $5b79: $04
    nop                                           ; $5b7a: $00
    rst $38                                       ; $5b7b: $ff
    rlca                                          ; $5b7c: $07
    ld bc, $0ff2                                  ; $5b7d: $01 $f2 $0f
    db $f4                                        ; $5b80: $f4
    dec c                                         ; $5b81: $0d
    add sp, -$06                                  ; $5b82: $e8 $fa
    add a                                         ; $5b84: $87
    ld [bc], a                                    ; $5b85: $02
    inc b                                         ; $5b86: $04
    ld [bc], a                                    ; $5b87: $02
    inc b                                         ; $5b88: $04
    ld [bc], a                                    ; $5b89: $02
    dec b                                         ; $5b8a: $05
    ld b, $02                                     ; $5b8b: $06 $02
    ld bc, $0781                                  ; $5b8d: $01 $81 $07
    ld [bc], a                                    ; $5b90: $02
    ld [bc], a                                    ; $5b91: $02
    inc d                                         ; $5b92: $14
    nop                                           ; $5b93: $00
    rst $38                                       ; $5b94: $ff
    rlca                                          ; $5b95: $07
    ld bc, $0ff2                                  ; $5b96: $01 $f2 $0f
    db $f4                                        ; $5b99: $f4
    dec c                                         ; $5b9a: $0d
    db $ec                                        ; $5b9b: $ec
    ld a, [$008e]                                 ; $5b9c: $fa $8e $00
    ld [bc], a                                    ; $5b9f: $02
    nop                                           ; $5ba0: $00
    ld [bc], a                                    ; $5ba1: $02
    nop                                           ; $5ba2: $00
    ld b, $04                                     ; $5ba3: $06 $04
    ld [bc], a                                    ; $5ba5: $02
    ld b, $01                                     ; $5ba6: $06 $01
    ld [bc], a                                    ; $5ba8: $02
    dec b                                         ; $5ba9: $05
    nop                                           ; $5baa: $00
    ld b, $12                                     ; $5bab: $06 $12
    nop                                           ; $5bad: $00
    rst $38                                       ; $5bae: $ff
    rlca                                          ; $5baf: $07
    ld bc, $0ff2                                  ; $5bb0: $01 $f2 $0f
    db $f4                                        ; $5bb3: $f4
    dec c                                         ; $5bb4: $0d
    ldh a, [$fa]                                  ; $5bb5: $f0 $fa
    add e                                         ; $5bb7: $83
    nop                                           ; $5bb8: $00
    ld [bc], a                                    ; $5bb9: $02
    nop                                           ; $5bba: $00
    ld [bc], a                                    ; $5bbb: $02
    ld [bc], a                                    ; $5bbc: $02
    adc c                                         ; $5bbd: $89
    dec b                                         ; $5bbe: $05
    ld [bc], a                                    ; $5bbf: $02
    dec b                                         ; $5bc0: $05
    ld b, $01                                     ; $5bc1: $06 $01
    ld b, $01                                     ; $5bc3: $06 $01
    nop                                           ; $5bc5: $00
    ld b, $12                                     ; $5bc6: $06 $12
    nop                                           ; $5bc8: $00
    rst $38                                       ; $5bc9: $ff
    rlca                                          ; $5bca: $07
    ld bc, $0ff2                                  ; $5bcb: $01 $f2 $0f
    db $f4                                        ; $5bce: $f4
    dec c                                         ; $5bcf: $0d
    db $f4                                        ; $5bd0: $f4
    ld a, [$0081]                                 ; $5bd1: $fa $81 $00
    ld [bc], a                                    ; $5bd4: $02
    ld [bc], a                                    ; $5bd5: $02
    adc e                                         ; $5bd6: $8b
    ld bc, $0700                                  ; $5bd7: $01 $00 $07
    ld [bc], a                                    ; $5bda: $02
    dec b                                         ; $5bdb: $05
    ld [bc], a                                    ; $5bdc: $02
    dec b                                         ; $5bdd: $05
    ld [bc], a                                    ; $5bde: $02
    dec b                                         ; $5bdf: $05
    nop                                           ; $5be0: $00
    ld [bc], a                                    ; $5be1: $02
    ld [de], a                                    ; $5be2: $12
    nop                                           ; $5be3: $00
    rst $38                                       ; $5be4: $ff
    rlca                                          ; $5be5: $07

Jump_0f7_5be6:
    ld bc, $0ff2                                  ; $5be6: $01 $f2 $0f
    db $f4                                        ; $5be9: $f4
    dec c                                         ; $5bea: $0d
    ld hl, sp-$06                                 ; $5beb: $f8 $fa
    adc [hl]                                      ; $5bed: $8e
    nop                                           ; $5bee: $00
    ld [bc], a                                    ; $5bef: $02
    nop                                           ; $5bf0: $00
    inc bc                                        ; $5bf1: $03
    ld [bc], a                                    ; $5bf2: $02
    inc b                                         ; $5bf3: $04
    ld [bc], a                                    ; $5bf4: $02
    dec b                                         ; $5bf5: $05
    ld [bc], a                                    ; $5bf6: $02
    dec b                                         ; $5bf7: $05
    ld [bc], a                                    ; $5bf8: $02
    dec b                                         ; $5bf9: $05
    nop                                           ; $5bfa: $00
    ld [bc], a                                    ; $5bfb: $02
    ld [de], a                                    ; $5bfc: $12
    nop                                           ; $5bfd: $00
    rst $38                                       ; $5bfe: $ff
    rlca                                          ; $5bff: $07
    ld bc, $0ff2                                  ; $5c00: $01 $f2 $0f
    db $f4                                        ; $5c03: $f4
    dec c                                         ; $5c04: $0d
    db $fd                                        ; $5c05: $fd
    ld a, [$008a]                                 ; $5c06: $fa $8a $00
    ld [bc], a                                    ; $5c09: $02
    nop                                           ; $5c0a: $00
    ld b, $02                                     ; $5c0b: $06 $02
    dec b                                         ; $5c0d: $05
    ld [bc], a                                    ; $5c0e: $02
    dec b                                         ; $5c0f: $05
    nop                                           ; $5c10: $00
    ld [bc], a                                    ; $5c11: $02
    ld d, $00                                     ; $5c12: $16 $00
    rst $38                                       ; $5c14: $ff
    rlca                                          ; $5c15: $07
    ld bc, $0ff2                                  ; $5c16: $01 $f2 $0f
    db $f4                                        ; $5c19: $f4
    dec c                                         ; $5c1a: $0d
    rst $38                                       ; $5c1b: $ff
    ld a, [$0083]                                 ; $5c1c: $fa $83 $00
    inc b                                         ; $5c1f: $04
    ld b, $02                                     ; $5c20: $06 $02
    add hl, bc                                    ; $5c22: $09
    add c                                         ; $5c23: $81
    rrca                                          ; $5c24: $0f
    ld [bc], a                                    ; $5c25: $02
    ld [bc], a                                    ; $5c26: $02
    jr jr_0f7_5c29                                ; $5c27: $18 $00

jr_0f7_5c29:
    rst $38                                       ; $5c29: $ff
    add hl, bc                                    ; $5c2a: $09
    ld [bc], a                                    ; $5c2b: $02
    ld a, [c]                                     ; $5c2c: $f2
    rrca                                          ; $5c2d: $0f
    db $f4                                        ; $5c2e: $f4
    dec c                                         ; $5c2f: $0d
    db $fc                                        ; $5c30: $fc
    ei                                            ; $5c31: $fb
    db $fc                                        ; $5c32: $fc
    db $fc                                        ; $5c33: $fc
    sub b                                         ; $5c34: $90
    stop                                          ; $5c35: $10 $00
    inc hl                                        ; $5c37: $23
    inc d                                         ; $5c38: $14
    ld d, b                                       ; $5c39: $50
    inc sp                                        ; $5c3a: $33
    ld b, c                                       ; $5c3b: $41
    ld bc, $61a1                                  ; $5c3c: $01 $a1 $61
    ld b, b                                       ; $5c3f: $40
    ld hl, $7774                                  ; $5c40: $21 $74 $77
    ld [hl+], a                                   ; $5c43: $22
    inc d                                         ; $5c44: $14
    ld d, $00                                     ; $5c45: $16 $00
    ld [bc], a                                    ; $5c47: $02
    ld bc, $0081                                  ; $5c48: $01 $81 $00
    ld [bc], a                                    ; $5c4b: $02
    ld bc, $0015                                  ; $5c4c: $01 $15 $00
    rst $38                                       ; $5c4f: $ff
    dec c                                         ; $5c50: $0d
    inc b                                         ; $5c51: $04
    ld a, [c]                                     ; $5c52: $f2
    rrca                                          ; $5c53: $0f
    db $f4                                        ; $5c54: $f4
    dec c                                         ; $5c55: $0d
    ld hl, sp-$09                                 ; $5c56: $f8 $f7
    rst $30                                       ; $5c58: $f7
    rst $38                                       ; $5c59: $ff
    ld sp, hl                                     ; $5c5a: $f9
    ld bc, $f907                                  ; $5c5b: $01 $07 $f9
    add l                                         ; $5c5e: $85
    nop                                           ; $5c5f: $00
    ld [bc], a                                    ; $5c60: $02
    inc bc                                        ; $5c61: $03
    nop                                           ; $5c62: $00
    ld [$0f02], sp                                ; $5c63: $08 $02 $0f
    adc e                                         ; $5c66: $8b
    ccf                                           ; $5c67: $3f
    jr z, jr_0f7_5cc2                             ; $5c68: $28 $58

    db $10                                        ; $5c6a: $10
    jr nc, jr_0f7_5c90                            ; $5c6b: $30 $23

    ld h, c                                       ; $5c6d: $61
    ld d, c                                       ; $5c6e: $51
    scf                                           ; $5c6f: $37
    ld h, b                                       ; $5c70: $60
    sub b                                         ; $5c71: $90
    ld [bc], a                                    ; $5c72: $02
    nop                                           ; $5c73: $00
    sub h                                         ; $5c74: $94
    db $10                                        ; $5c75: $10
    jr nc, jr_0f7_5c90                            ; $5c76: $30 $18

    ld a, [hl+]                                   ; $5c78: $2a
    db $10                                        ; $5c79: $10
    ld [$1428], sp                                ; $5c7a: $08 $28 $14
    ld [bc], a                                    ; $5c7d: $02
    daa                                           ; $5c7e: $27
    ld bc, $0002                                  ; $5c7f: $01 $02 $00
    db $10                                        ; $5c82: $10
    jr nz, @+$52                                  ; $5c83: $20 $50

    ld d, h                                       ; $5c85: $54
    xor b                                         ; $5c86: $a8
    and d                                         ; $5c87: $a2
    rst $38                                       ; $5c88: $ff
    ld [bc], a                                    ; $5c89: $02

jr_0f7_5c8a:
    inc c                                         ; $5c8a: $0c
    add c                                         ; $5c8b: $81
    ld bc, $0202                                  ; $5c8c: $01 $02 $02
    add a                                         ; $5c8f: $87

jr_0f7_5c90:
    ld d, e                                       ; $5c90: $53
    ld hl, $0241                                  ; $5c91: $21 $41 $02
    inc hl                                        ; $5c94: $23
    nop                                           ; $5c95: $00
    add hl, bc                                    ; $5c96: $09
    ld [bc], a                                    ; $5c97: $02
    nop                                           ; $5c98: $00
    adc h                                         ; $5c99: $8c
    and b                                         ; $5c9a: $a0
    db $10                                        ; $5c9b: $10
    ld b, $24                                     ; $5c9c: $06 $24
    ld c, $09                                     ; $5c9e: $0e $09
    ld d, b                                       ; $5ca0: $50
    ld a, l                                       ; $5ca1: $7d
    ld h, b                                       ; $5ca2: $60
    ld d, h                                       ; $5ca3: $54
    nop                                           ; $5ca4: $00
    ld [bc], a                                    ; $5ca5: $02
    dec b                                         ; $5ca6: $05
    nop                                           ; $5ca7: $00
    ld [bc], a                                    ; $5ca8: $02
    ld [bc], a                                    ; $5ca9: $02
    ld [bc], a                                    ; $5caa: $02
    nop                                           ; $5cab: $00
    add h                                         ; $5cac: $84
    inc bc                                        ; $5cad: $03
    nop                                           ; $5cae: $00
    ld [bc], a                                    ; $5caf: $02
    inc bc                                        ; $5cb0: $03
    ld [bc], a                                    ; $5cb1: $02
    nop                                           ; $5cb2: $00
    add c                                         ; $5cb3: $81
    ld [bc], a                                    ; $5cb4: $02
    rlca                                          ; $5cb5: $07
    nop                                           ; $5cb6: $00
    add c                                         ; $5cb7: $81
    ld [bc], a                                    ; $5cb8: $02
    ld [bc], a                                    ; $5cb9: $02
    nop                                           ; $5cba: $00
    adc b                                         ; $5cbb: $88
    add b                                         ; $5cbc: $80
    ld [hl], b                                    ; $5cbd: $70
    nop                                           ; $5cbe: $00
    db $10                                        ; $5cbf: $10
    ld [bc], a                                    ; $5cc0: $02
    inc bc                                        ; $5cc1: $03

jr_0f7_5cc2:
    add hl, bc                                    ; $5cc2: $09
    inc d                                         ; $5cc3: $14
    inc e                                         ; $5cc4: $1c
    nop                                           ; $5cc5: $00
    rst $38                                       ; $5cc6: $ff
    inc de                                        ; $5cc7: $13
    rlca                                          ; $5cc8: $07
    ld a, [c]                                     ; $5cc9: $f2
    rrca                                          ; $5cca: $0f
    db $f4                                        ; $5ccb: $f4
    dec c                                         ; $5ccc: $0d
    or $f2                                        ; $5ccd: $f6 $f2
    di                                            ; $5ccf: $f3
    ld a, [$02f5]                                 ; $5cd0: $fa $f5 $02
    rst $30                                       ; $5cd3: $f7
    ld b, $03                                     ; $5cd4: $06 $03
    or $03                                        ; $5cd6: $f6 $03
    cp $03                                        ; $5cd8: $fe $03
    inc b                                         ; $5cda: $04
    add e                                         ; $5cdb: $83
    nop                                           ; $5cdc: $00
    ld bc, $0300                                  ; $5cdd: $01 $00 $03
    ld bc, $0086                                  ; $5ce0: $01 $86 $00
    inc c                                         ; $5ce3: $0c
    dec c                                         ; $5ce4: $0d
    inc bc                                        ; $5ce5: $03
    ld [hl+], a                                   ; $5ce6: $22
    ld a, $02                                     ; $5ce7: $3e $02
    nop                                           ; $5ce9: $00
    adc h                                         ; $5cea: $8c
    jr z, jr_0f7_5d45                             ; $5ceb: $28 $58

    db $10                                        ; $5ced: $10
    jr z, @+$16                                   ; $5cee: $28 $14

    inc c                                         ; $5cf0: $0c
    ld b, h                                       ; $5cf1: $44
    sbc h                                         ; $5cf2: $9c
    ld e, b                                       ; $5cf3: $58
    add h                                         ; $5cf4: $84
    inc b                                         ; $5cf5: $04
    inc e                                         ; $5cf6: $1c
    ld [bc], a                                    ; $5cf7: $02
    inc c                                         ; $5cf8: $0c
    add d                                         ; $5cf9: $82
    nop                                           ; $5cfa: $00
    ld [de], a                                    ; $5cfb: $12

Call_0f7_5cfc:
    inc bc                                        ; $5cfc: $03
    nop                                           ; $5cfd: $00
    ld [bc], a                                    ; $5cfe: $02
    jr nc, jr_0f7_5c8a                            ; $5cff: $30 $89

    jr nz, jr_0f7_5d11                            ; $5d01: $20 $0e

    ld bc, $9b05                                  ; $5d03: $01 $05 $9b
    db $ed                                        ; $5d06: $ed
    dec e                                         ; $5d07: $1d
    ld b, b                                       ; $5d08: $40
    and b                                         ; $5d09: $a0
    inc bc                                        ; $5d0a: $03
    nop                                           ; $5d0b: $00
    ld [bc], a                                    ; $5d0c: $02
    inc bc                                        ; $5d0d: $03
    add l                                         ; $5d0e: $85
    inc b                                         ; $5d0f: $04
    inc bc                                        ; $5d10: $03

jr_0f7_5d11:
    jp nz, $a141                                  ; $5d11: $c2 $41 $a1

    ld [bc], a                                    ; $5d14: $02
    ld l, d                                       ; $5d15: $6a
    ld [bc], a                                    ; $5d16: $02
    daa                                           ; $5d17: $27
    ld [bc], a                                    ; $5d18: $02
    nop                                           ; $5d19: $00
    ld [bc], a                                    ; $5d1a: $02

jr_0f7_5d1b:
    ld a, [bc]                                    ; $5d1b: $0a
    adc c                                         ; $5d1c: $89
    ld b, h                                       ; $5d1d: $44
    ld h, h                                       ; $5d1e: $64
    ld b, b                                       ; $5d1f: $40
    ld h, b                                       ; $5d20: $60
    jr nz, @+$52                                  ; $5d21: $20 $50

    ld [hl], c                                    ; $5d23: $71
    ld c, l                                       ; $5d24: $4d
    add hl, de                                    ; $5d25: $19
    ld [bc], a                                    ; $5d26: $02
    ld h, $87                                     ; $5d27: $26 $87
    ccf                                           ; $5d29: $3f
    ld de, $0312                                  ; $5d2a: $11 $12 $03
    add d                                         ; $5d2d: $82
    ld bc, $0281                                  ; $5d2e: $01 $81 $02
    nop                                           ; $5d31: $00
    add [hl]                                      ; $5d32: $86
    add b                                         ; $5d33: $80
    or b                                          ; $5d34: $b0
    jr nc, jr_0f7_5d5f                            ; $5d35: $30 $28

    sub b                                         ; $5d37: $90
    sbc b                                         ; $5d38: $98
    ld [bc], a                                    ; $5d39: $02
    ld b, b                                       ; $5d3a: $40
    inc bc                                        ; $5d3b: $03
    add c                                         ; $5d3c: $81
    add a                                         ; $5d3d: $87
    ld b, c                                       ; $5d3e: $41
    add b                                         ; $5d3f: $80
    ld b, b                                       ; $5d40: $40
    nop                                           ; $5d41: $00
    ld [$0800], sp                                ; $5d42: $08 $00 $08

jr_0f7_5d45:
    dec b                                         ; $5d45: $05
    nop                                           ; $5d46: $00
    add e                                         ; $5d47: $83
    ld [$0800], sp                                ; $5d48: $08 $00 $08
    ld [bc], a                                    ; $5d4b: $02
    nop                                           ; $5d4c: $00
    sub e                                         ; $5d4d: $93
    inc b                                         ; $5d4e: $04
    rlca                                          ; $5d4f: $07
    ld b, $05                                     ; $5d50: $06 $05
    ld [$060e], sp                                ; $5d52: $08 $0e $06
    add hl, bc                                    ; $5d55: $09
    inc c                                         ; $5d56: $0c
    ld [bc], a                                    ; $5d57: $02
    inc b                                         ; $5d58: $04
    ld a, [bc]                                    ; $5d59: $0a
    ld [bc], a                                    ; $5d5a: $02
    ld b, $40                                     ; $5d5b: $06 $40
    ld [hl], b                                    ; $5d5d: $70
    or b                                          ; $5d5e: $b0

jr_0f7_5d5f:
    ret z                                         ; $5d5f: $c8

    ld [bc], a                                    ; $5d60: $02
    ld [bc], a                                    ; $5d61: $02
    dec b                                         ; $5d62: $05
    add e                                         ; $5d63: $83
    dec bc                                        ; $5d64: $0b
    ld [$020c], sp                                ; $5d65: $08 $0c $02
    nop                                           ; $5d68: $00
    adc d                                         ; $5d69: $8a
    jr nz, jr_0f7_5dcd                            ; $5d6a: $20 $61

    ld [hl], l                                    ; $5d6c: $75
    or d                                          ; $5d6d: $b2
    ld a, [hl+]                                   ; $5d6e: $2a
    ld d, [hl]                                    ; $5d6f: $56
    db $10                                        ; $5d70: $10
    ld sp, $0100                                  ; $5d71: $31 $00 $01
    ld c, $00                                     ; $5d74: $0e $00
    ld [bc], a                                    ; $5d76: $02
    db $10                                        ; $5d77: $10
    add h                                         ; $5d78: $84
    nop                                           ; $5d79: $00
    stop                                          ; $5d7a: $10 $00
    ld [$0004], sp                                ; $5d7c: $08 $04 $00
    adc d                                         ; $5d7f: $8a
    inc b                                         ; $5d80: $04
    call nz, Call_000_2644                        ; $5d81: $c4 $44 $26
    ld [$a12d], a                                 ; $5d84: $ea $2d $a1
    and d                                         ; $5d87: $a2
    nop                                           ; $5d88: $00
    ld bc, $0014                                  ; $5d89: $01 $14 $00
    add e                                         ; $5d8c: $83
    inc l                                         ; $5d8d: $2c
    ld [hl-], a                                   ; $5d8e: $32
    ld [bc], a                                    ; $5d8f: $02
    ld [bc], a                                    ; $5d90: $02
    ld bc, $0b83                                  ; $5d91: $01 $83 $0b
    nop                                           ; $5d94: $00
    jr jr_0f7_5d99                                ; $5d95: $18 $02

    jr nz, jr_0f7_5d1b                            ; $5d97: $20 $82

jr_0f7_5d99:
    nop                                           ; $5d99: $00
    jr nz, jr_0f7_5da8                            ; $5d9a: $20 $0c

    nop                                           ; $5d9c: $00
    rst $38                                       ; $5d9d: $ff
    ld de, $f206                                  ; $5d9e: $11 $06 $f2
    rrca                                          ; $5da1: $0f
    db $f4                                        ; $5da2: $f4
    dec c                                         ; $5da3: $0d
    ld a, [$f5ef]                                 ; $5da4: $fa $ef $f5
    rst $30                                       ; $5da7: $f7

jr_0f7_5da8:
    dec b                                         ; $5da8: $05
    rst $30                                       ; $5da9: $f7
    db $f4                                        ; $5daa: $f4
    rst $38                                       ; $5dab: $ff
    inc b                                         ; $5dac: $04
    rst $38                                       ; $5dad: $ff
    rst $30                                       ; $5dae: $f7
    rlca                                          ; $5daf: $07
    adc d                                         ; $5db0: $8a
    inc bc                                        ; $5db1: $03
    ld [bc], a                                    ; $5db2: $02
    nop                                           ; $5db3: $00
    ld bc, $0100                                  ; $5db4: $01 $00 $01
    inc b                                         ; $5db7: $04
    ld [$0c00], sp                                ; $5db8: $08 $00 $0c
    inc bc                                        ; $5dbb: $03
    nop                                           ; $5dbc: $00
    ld [bc], a                                    ; $5dbd: $02
    inc c                                         ; $5dbe: $0c
    add h                                         ; $5dbf: $84
    inc de                                        ; $5dc0: $13
    dec d                                         ; $5dc1: $15
    dec de                                        ; $5dc2: $1b
    nop                                           ; $5dc3: $00
    ld [bc], a                                    ; $5dc4: $02
    ld [bc], a                                    ; $5dc5: $02
    add l                                         ; $5dc6: $85
    ld bc, $0700                                  ; $5dc7: $01 $00 $07
    inc b                                         ; $5dca: $04
    ld b, $06                                     ; $5dcb: $06 $06

jr_0f7_5dcd:
    nop                                           ; $5dcd: $00
    adc b                                         ; $5dce: $88
    ld de, $2812                                  ; $5dcf: $11 $12 $28
    dec [hl]                                      ; $5dd2: $35
    nop                                           ; $5dd3: $00
    ld e, b                                       ; $5dd4: $58
    db $10                                        ; $5dd5: $10
    ld [hl], b                                    ; $5dd6: $70
    ld [bc], a                                    ; $5dd7: $02
    ld bc, $0281                                  ; $5dd8: $01 $81 $02
    ld [bc], a                                    ; $5ddb: $02
    add h                                         ; $5ddc: $84
    add e                                         ; $5ddd: $83
    ld a, [bc]                                    ; $5dde: $0a
    sbc h                                         ; $5ddf: $9c
    sbc [hl]                                      ; $5de0: $9e
    ld [bc], a                                    ; $5de1: $02

jr_0f7_5de2:
    nop                                           ; $5de2: $00
    ld [bc], a                                    ; $5de3: $02
    dec b                                         ; $5de4: $05
    ld [bc], a                                    ; $5de5: $02
    ld [$4602], sp                                ; $5de6: $08 $02 $46
    add h                                         ; $5de9: $84
    ld hl, $2a2d                                  ; $5dea: $21 $2d $2a
    ld [hl], $02                                  ; $5ded: $36 $02
    ld a, [bc]                                    ; $5def: $0a
    ld [bc], a                                    ; $5df0: $02
    db $10                                        ; $5df1: $10
    ld [bc], a                                    ; $5df2: $02
    ld [$048e], sp                                ; $5df3: $08 $8e $04
    call nz, Call_0f7_4000                        ; $5df6: $c4 $00 $40
    nop                                           ; $5df9: $00
    ldh [$a0], a                                  ; $5dfa: $e0 $a0
    ld d, b                                       ; $5dfc: $50
    ld e, e                                       ; $5dfd: $5b
    rst $20                                       ; $5dfe: $e7
    inc h                                         ; $5dff: $24
    inc de                                        ; $5e00: $13
    inc d                                         ; $5e01: $14
    ld [hl+], a                                   ; $5e02: $22
    stop                                          ; $5e03: $10 $00
    add e                                         ; $5e05: $83
    inc b                                         ; $5e06: $04
    add h                                         ; $5e07: $84
    ld [$8602], sp                                ; $5e08: $08 $02 $86
    add h                                         ; $5e0b: $84
    add hl, bc                                    ; $5e0c: $09
    ld bc, $0302                                  ; $5e0d: $01 $02 $03
    ld [bc], a                                    ; $5e10: $02
    nop                                           ; $5e11: $00
    adc a                                         ; $5e12: $8f
    ld b, b                                       ; $5e13: $40
    ld d, b                                       ; $5e14: $50
    db $10                                        ; $5e15: $10
    add b                                         ; $5e16: $80
    ret nz                                        ; $5e17: $c0

    ld h, b                                       ; $5e18: $60
    ld h, h                                       ; $5e19: $64
    add b                                         ; $5e1a: $80
    adc b                                         ; $5e1b: $88
    ld b, b                                       ; $5e1c: $40
    ld b, c                                       ; $5e1d: $41
    dec h                                         ; $5e1e: $25
    ld h, $4a                                     ; $5e1f: $26 $4a
    ld c, e                                       ; $5e21: $4b
    ld [bc], a                                    ; $5e22: $02
    ld hl, $6202                                  ; $5e23: $21 $02 $62
    add h                                         ; $5e26: $84
    ret nc                                        ; $5e27: $d0

    call c, $0c08                                 ; $5e28: $dc $08 $0c
    ld [bc], a                                    ; $5e2b: $02
    add b                                         ; $5e2c: $80
    add h                                         ; $5e2d: $84
    nop                                           ; $5e2e: $00
    ret nz                                        ; $5e2f: $c0

    add b                                         ; $5e30: $80
    ret nz                                        ; $5e31: $c0

    ld [bc], a                                    ; $5e32: $02
    nop                                           ; $5e33: $00
    adc b                                         ; $5e34: $88
    ld [bc], a                                    ; $5e35: $02
    rlca                                          ; $5e36: $07
    ld l, $31                                     ; $5e37: $2e $31
    dec h                                         ; $5e39: $25
    dec sp                                        ; $5e3a: $3b
    ld [$0e0e], sp                                ; $5e3b: $08 $0e $0e
    nop                                           ; $5e3e: $00
    adc h                                         ; $5e3f: $8c
    ld b, b                                       ; $5e40: $40
    add b                                         ; $5e41: $80
    jr nz, jr_0f7_5e84                            ; $5e42: $20 $40

    and b                                         ; $5e44: $a0
    ld d, b                                       ; $5e45: $50
    ld b, b                                       ; $5e46: $40
    ld [hl], b                                    ; $5e47: $70
    jr nz, @+$3a                                  ; $5e48: $20 $38

    nop                                           ; $5e4a: $00
    db $10                                        ; $5e4b: $10
    ld [bc], a                                    ; $5e4c: $02
    nop                                           ; $5e4d: $00
    ld [bc], a                                    ; $5e4e: $02
    ld [$0089], sp                                ; $5e4f: $08 $89 $00
    adc b                                         ; $5e52: $88
    add b                                         ; $5e53: $80
    ld b, h                                       ; $5e54: $44
    inc b                                         ; $5e55: $04
    add d                                         ; $5e56: $82
    ld a, [bc]                                    ; $5e57: $0a
    inc e                                         ; $5e58: $1c
    inc d                                         ; $5e59: $14
    ld [bc], a                                    ; $5e5a: $02
    jr z, jr_0f7_5de2                             ; $5e5b: $28 $85

    inc [hl]                                      ; $5e5d: $34
    ld b, h                                       ; $5e5e: $44
    sbc h                                         ; $5e5f: $9c
    nop                                           ; $5e60: $00
    ret nz                                        ; $5e61: $c0

    rst $38                                       ; $5e62: $ff
    dec d                                         ; $5e63: $15
    ld [$0ff2], sp                                ; $5e64: $08 $f2 $0f
    db $f4                                        ; $5e67: $f4
    dec c                                         ; $5e68: $0d
    ld a, [c]                                     ; $5e69: $f2
    ld a, [c]                                     ; $5e6a: $f2
    rst $28                                       ; $5e6b: $ef
    ld a, [$02f1]                                 ; $5e6c: $fa $f1 $02

jr_0f7_5e6f:
    push af                                       ; $5e6f: $f5
    add hl, bc                                    ; $5e70: $09
    rst $38                                       ; $5e71: $ff
    ldh a, [rIE]                                  ; $5e72: $f0 $ff
    ld hl, sp-$01                                 ; $5e74: $f8 $ff
    rst $38                                       ; $5e76: $ff
    rst $38                                       ; $5e77: $ff
    rlca                                          ; $5e78: $07
    add c                                         ; $5e79: $81
    nop                                           ; $5e7a: $00
    ld [bc], a                                    ; $5e7b: $02
    ld bc, $0283                                  ; $5e7c: $01 $83 $02
    nop                                           ; $5e7f: $00
    ld bc, $0003                                  ; $5e80: $01 $03 $00
    add a                                         ; $5e83: $87

jr_0f7_5e84:
    ld b, b                                       ; $5e84: $40
    ret nc                                        ; $5e85: $d0

    jr nc, jr_0f7_5e8d                            ; $5e86: $30 $05

    push hl                                       ; $5e88: $e5
    ld [bc], a                                    ; $5e89: $02
    ld b, e                                       ; $5e8a: $43
    ld [bc], a                                    ; $5e8b: $02
    inc b                                         ; $5e8c: $04

jr_0f7_5e8d:
    add [hl]                                      ; $5e8d: $86
    ld [bc], a                                    ; $5e8e: $02
    inc bc                                        ; $5e8f: $03
    dec b                                         ; $5e90: $05
    ld b, $00                                     ; $5e91: $06 $00

jr_0f7_5e93:
    ld bc, $8002                                  ; $5e93: $01 $02 $80
    add d                                         ; $5e96: $82
    ld [$0288], sp                                ; $5e97: $08 $88 $02
    ld b, c                                       ; $5e9a: $41
    add e                                         ; $5e9b: $83
    ld b, b                                       ; $5e9c: $40
    ret nz                                        ; $5e9d: $c0

    nop                                           ; $5e9e: $00
    ld [bc], a                                    ; $5e9f: $02
    ld h, b                                       ; $5ea0: $60
    adc c                                         ; $5ea1: $89
    ld d, h                                       ; $5ea2: $54
    inc e                                         ; $5ea3: $1c
    ld [hl+], a                                   ; $5ea4: $22
    ld [bc], a                                    ; $5ea5: $02
    sub $40                                       ; $5ea6: $d6 $40
    and b                                         ; $5ea8: $a0
    nop                                           ; $5ea9: $00
    ld b, b                                       ; $5eaa: $40
    ld [bc], a                                    ; $5eab: $02
    nop                                           ; $5eac: $00
    ld [bc], a                                    ; $5ead: $02
    inc bc                                        ; $5eae: $03
    ld [bc], a                                    ; $5eaf: $02
    ld d, c                                       ; $5eb0: $51
    add h                                         ; $5eb1: $84
    ld d, h                                       ; $5eb2: $54
    ld [hl], h                                    ; $5eb3: $74
    jr z, jr_0f7_5edf                             ; $5eb4: $28 $29

    ld [bc], a                                    ; $5eb6: $02
    nop                                           ; $5eb7: $00
    ld [bc], a                                    ; $5eb8: $02
    ld e, d                                       ; $5eb9: $5a
    add d                                         ; $5eba: $82
    ld [hl], h                                    ; $5ebb: $74
    cp $02                                        ; $5ebc: $fe $02
    xor l                                         ; $5ebe: $ad
    ld [bc], a                                    ; $5ebf: $02
    ld [de], a                                    ; $5ec0: $12
    ld [bc], a                                    ; $5ec1: $02
    ld b, b                                       ; $5ec2: $40
    adc d                                         ; $5ec3: $8a
    jr z, jr_0f7_5ef2                             ; $5ec4: $28 $2c

    ld b, h                                       ; $5ec6: $44
    ld c, d                                       ; $5ec7: $4a
    ld a, [bc]                                    ; $5ec8: $0a
    add hl, bc                                    ; $5ec9: $09
    ld [bc], a                                    ; $5eca: $02
    dec b                                         ; $5ecb: $05
    ld b, b                                       ; $5ecc: $40
    jp nz, $8002                                  ; $5ecd: $c2 $02 $80

    add [hl]                                      ; $5ed0: $86
    nop                                           ; $5ed1: $00
    ret nz                                        ; $5ed2: $c0

    add h                                         ; $5ed3: $84
    inc h                                         ; $5ed4: $24
    jp nz, Jump_000_0286                          ; $5ed5: $c2 $86 $02

    call nc, $5082                                ; $5ed8: $d4 $82 $50
    ld [hl], b                                    ; $5edb: $70
    ld [bc], a                                    ; $5edc: $02
    jr nz, jr_0f7_5e6f                            ; $5edd: $20 $90

jr_0f7_5edf:
    nop                                           ; $5edf: $00
    ld a, [bc]                                    ; $5ee0: $0a
    ld c, [hl]                                    ; $5ee1: $4e
    ld c, c                                       ; $5ee2: $49
    sub h                                         ; $5ee3: $94
    sub [hl]                                      ; $5ee4: $96
    nop                                           ; $5ee5: $00
    jr nc, jr_0f7_5f48                            ; $5ee6: $30 $60

    ld a, b                                       ; $5ee8: $78
    db $10                                        ; $5ee9: $10
    jr z, jr_0f7_5f0c                             ; $5eea: $28 $20

    jr z, jr_0f7_5efe                             ; $5eec: $28 $10

    jr jr_0f7_5ef2                                ; $5eee: $18 $02

    nop                                           ; $5ef0: $00
    ld [bc], a                                    ; $5ef1: $02

jr_0f7_5ef2:
    ld b, b                                       ; $5ef2: $40
    ld [bc], a                                    ; $5ef3: $02
    jr nz, jr_0f7_5ef8                            ; $5ef4: $20 $02

    ld b, b                                       ; $5ef6: $40
    add d                                         ; $5ef7: $82

jr_0f7_5ef8:
    nop                                           ; $5ef8: $00
    ld bc, $0005                                  ; $5ef9: $01 $05 $00
    sub c                                         ; $5efc: $91
    inc bc                                        ; $5efd: $03

jr_0f7_5efe:
    adc b                                         ; $5efe: $88

Jump_0f7_5eff:
    adc a                                         ; $5eff: $8f
    ld b, d                                       ; $5f00: $42
    ld b, l                                       ; $5f01: $45
    add c                                         ; $5f02: $81
    add e                                         ; $5f03: $83
    nop                                           ; $5f04: $00
    ret nz                                        ; $5f05: $c0

    ld b, b                                       ; $5f06: $40
    add b                                         ; $5f07: $80
    nop                                           ; $5f08: $00
    ld b, b                                       ; $5f09: $40
    ld h, b                                       ; $5f0a: $60
    db $10                                        ; $5f0b: $10

jr_0f7_5f0c:
    ld bc, $0221                                  ; $5f0c: $01 $21 $02
    jr nc, jr_0f7_5e93                            ; $5f0f: $30 $82

    nop                                           ; $5f11: $00
    ld b, b                                       ; $5f12: $40
    ld [bc], a                                    ; $5f13: $02
    inc d                                         ; $5f14: $14
    ld [bc], a                                    ; $5f15: $02
    ld [$0005], sp                                ; $5f16: $08 $05 $00
    add a                                         ; $5f19: $87
    ld [$1e02], sp                                ; $5f1a: $08 $02 $1e
    dec b                                         ; $5f1d: $05
    ld a, [bc]                                    ; $5f1e: $0a
    ld [bc], a                                    ; $5f1f: $02
    ld b, $02                                     ; $5f20: $06 $02
    nop                                           ; $5f22: $00
    add h                                         ; $5f23: $84
    ld a, [hl+]                                   ; $5f24: $2a
    ld l, $14                                     ; $5f25: $2e $14
    ld [hl], $02                                  ; $5f27: $36 $02
    dec hl                                        ; $5f29: $2b
    ld [bc], a                                    ; $5f2a: $02
    ld [bc], a                                    ; $5f2b: $02
    ld [bc], a                                    ; $5f2c: $02
    ld b, l                                       ; $5f2d: $45
    adc b                                         ; $5f2e: $88
    ret                                           ; $5f2f: $c9


    call Call_0f7_5323                            ; $5f30: $cd $23 $53
    ld b, b                                       ; $5f33: $40
    or b                                          ; $5f34: $b0
    add b                                         ; $5f35: $80
    and b                                         ; $5f36: $a0
    ld b, $00                                     ; $5f37: $06 $00
    adc d                                         ; $5f39: $8a
    jr nz, jr_0f7_5f3c                            ; $5f3a: $20 $00

jr_0f7_5f3c:
    ld b, b                                       ; $5f3c: $40
    ld [hl], b                                    ; $5f3d: $70
    inc d                                         ; $5f3e: $14
    ld l, h                                       ; $5f3f: $6c
    inc b                                         ; $5f40: $04
    inc [hl]                                      ; $5f41: $34
    jr nz, jr_0f7_5fa4                            ; $5f42: $20 $60

    ld [bc], a                                    ; $5f44: $02
    ld b, b                                       ; $5f45: $40
    add d                                         ; $5f46: $82
    dec h                                         ; $5f47: $25

jr_0f7_5f48:
    scf                                           ; $5f48: $37
    ld [bc], a                                    ; $5f49: $02
    ld c, d                                       ; $5f4a: $4a
    ld [bc], a                                    ; $5f4b: $02
    db $10                                        ; $5f4c: $10
    ld [bc], a                                    ; $5f4d: $02
    nop                                           ; $5f4e: $00
    ld [bc], a                                    ; $5f4f: $02
    ld [hl+], a                                   ; $5f50: $22
    add [hl]                                      ; $5f51: $86
    ld b, [hl]                                    ; $5f52: $46
    ld h, h                                       ; $5f53: $64
    ld [bc], a                                    ; $5f54: $02
    ld h, l                                       ; $5f55: $65
    nop                                           ; $5f56: $00
    inc bc                                        ; $5f57: $03
    ld [bc], a                                    ; $5f58: $02
    ld b, b                                       ; $5f59: $40
    ld [bc], a                                    ; $5f5a: $02
    jr z, jr_0f7_5f5f                             ; $5f5b: $28 $02

    ld c, b                                       ; $5f5d: $48
    add [hl]                                      ; $5f5e: $86

jr_0f7_5f5f:
    inc d                                         ; $5f5f: $14
    db $10                                        ; $5f60: $10
    rlca                                          ; $5f61: $07
    ld bc, $0300                                  ; $5f62: $01 $00 $03
    stop                                          ; $5f65: $10 $00
    ld [bc], a                                    ; $5f67: $02
    db $10                                        ; $5f68: $10
    adc d                                         ; $5f69: $8a
    nop                                           ; $5f6a: $00
    ld a, [de]                                    ; $5f6b: $1a
    jr z, jr_0f7_5fa0                             ; $5f6c: $28 $32

    ld [bc], a                                    ; $5f6e: $02
    dec b                                         ; $5f6f: $05
    ld bc, $000b                                  ; $5f70: $01 $0b $00
    jr jr_0f7_5f79                                ; $5f73: $18 $04

    nop                                           ; $5f75: $00
    rst $38                                       ; $5f76: $ff
    rra                                           ; $5f77: $1f
    dec c                                         ; $5f78: $0d

jr_0f7_5f79:
    ld a, [c]                                     ; $5f79: $f2

jr_0f7_5f7a:
    rrca                                          ; $5f7a: $0f
    db $f4                                        ; $5f7b: $f4
    dec c                                         ; $5f7c: $0d
    ld hl, sp-$18                                 ; $5f7d: $f8 $e8
    rst $28                                       ; $5f7f: $ef
    ldh a, [rIE]                                  ; $5f80: $f0 $ff
    ldh a, [$ee]                                  ; $5f82: $f0 $ee
    ld hl, sp-$02                                 ; $5f84: $f8 $fe
    ld hl, sp+$0e                                 ; $5f86: $f8 $0e
    ld sp, hl                                     ; $5f88: $f9
    xor $00                                       ; $5f89: $ee $00
    cp $00                                        ; $5f8b: $fe $00
    ld c, $04                                     ; $5f8d: $0e $04
    rrca                                          ; $5f8f: $0f
    inc bc                                        ; $5f90: $03
    xor $08                                       ; $5f91: $ee $08
    cp $08                                        ; $5f93: $fe $08
    or $10                                        ; $5f95: $f6 $10
    add c                                         ; $5f97: $81
    ld bc, $000a                                  ; $5f98: $01 $0a $00
    add a                                         ; $5f9b: $87
    ld bc, $0302                                  ; $5f9c: $01 $02 $03
    inc b                                         ; $5f9f: $04

jr_0f7_5fa0:
    ld a, [bc]                                    ; $5fa0: $0a
    ld [bc], a                                    ; $5fa1: $02
    ld b, $04                                     ; $5fa2: $06 $04

jr_0f7_5fa4:
    nop                                           ; $5fa4: $00
    adc b                                         ; $5fa5: $88
    ld bc, $0200                                  ; $5fa6: $01 $00 $02
    dec b                                         ; $5fa9: $05
    ld bc, $0003                                  ; $5faa: $01 $03 $00
    ld bc, $0003                                  ; $5fad: $01 $03 $00
    ld [bc], a                                    ; $5fb0: $02
    ld bc, $0402                                  ; $5fb1: $01 $02 $04
    add e                                         ; $5fb4: $83
    inc bc                                        ; $5fb5: $03
    ld [bc], a                                    ; $5fb6: $02
    rlca                                          ; $5fb7: $07
    dec b                                         ; $5fb8: $05
    nop                                           ; $5fb9: $00
    add [hl]                                      ; $5fba: $86
    ld h, b                                       ; $5fbb: $60
    reti                                          ; $5fbc: $d9


    add hl, sp                                    ; $5fbd: $39
    nop                                           ; $5fbe: $00
    ldh [rP1], a                                  ; $5fbf: $e0 $00
    inc bc                                        ; $5fc1: $03
    add b                                         ; $5fc2: $80
    ld [bc], a                                    ; $5fc3: $02
    nop                                           ; $5fc4: $00
    ld [bc], a                                    ; $5fc5: $02
    ld bc, $4086                                  ; $5fc6: $01 $86 $40

jr_0f7_5fc9:
    ld b, c                                       ; $5fc9: $41
    nop                                           ; $5fca: $00
    ret nz                                        ; $5fcb: $c0

    and c                                         ; $5fcc: $a1
    ld hl, $0002                                  ; $5fcd: $21 $02 $00
    ld [bc], a                                    ; $5fd0: $02
    ld [bc], a                                    ; $5fd1: $02
    add d                                         ; $5fd2: $82
    ld de, $0271                                  ; $5fd3: $11 $71 $02
    nop                                           ; $5fd6: $00
    add h                                         ; $5fd7: $84
    add b                                         ; $5fd8: $80
    ld b, b                                       ; $5fd9: $40
    ld bc, $0281                                  ; $5fda: $01 $81 $02
    ret nz                                        ; $5fdd: $c0

    ld [bc], a                                    ; $5fde: $02
    db $10                                        ; $5fdf: $10
    ld b, $00                                     ; $5fe0: $06 $00
    ld [bc], a                                    ; $5fe2: $02
    ld bc, $0089                                  ; $5fe3: $01 $89 $00
    ld b, b                                       ; $5fe6: $40
    jr nz, jr_0f7_5fc9                            ; $5fe7: $20 $e0

    ld [$1458], sp                                ; $5fe9: $08 $58 $14
    ld [$0200], sp                                ; $5fec: $08 $00 $02
    jr nc, jr_0f7_5f7a                            ; $5fef: $30 $89

    jr z, jr_0f7_5fff                             ; $5ff1: $28 $0c

jr_0f7_5ff3:
    sub b                                         ; $5ff3: $90
    add b                                         ; $5ff4: $80
    add sp, -$60                                  ; $5ff5: $e8 $a0
    ld d, b                                       ; $5ff7: $50
    nop                                           ; $5ff8: $00
    and b                                         ; $5ff9: $a0
    ld [bc], a                                    ; $5ffa: $02
    ld bc, $0004                                  ; $5ffb: $01 $04 $00
    ld [bc], a                                    ; $5ffe: $02

jr_0f7_5fff:
    jr z, @-$7a                                   ; $5fff: $28 $84

    xor d                                         ; $6001: $aa
    cp d                                          ; $6002: $ba
    ld d, c                                       ; $6003: $51
    ld d, e                                       ; $6004: $53
    ld [bc], a                                    ; $6005: $02
    nop                                           ; $6006: $00
    add h                                         ; $6007: $84
    ld l, c                                       ; $6008: $69
    ld l, e                                       ; $6009: $6b
    cp d                                          ; $600a: $ba
    db $fd                                        ; $600b: $fd
    ld [bc], a                                    ; $600c: $02
    sub $02                                       ; $600d: $d6 $02
    jr nz, jr_0f7_6013                            ; $600f: $20 $02

    nop                                           ; $6011: $00
    add h                                         ; $6012: $84

jr_0f7_6013:
    xor d                                         ; $6013: $aa
    xor [hl]                                      ; $6014: $ae
    ld d, h                                       ; $6015: $54
    halt                                          ; $6016: $76
    ld [bc], a                                    ; $6017: $02
    inc hl                                        ; $6018: $23
    ld [bc], a                                    ; $6019: $02
    ld a, [bc]                                    ; $601a: $0a
    ld [bc], a                                    ; $601b: $02
    ld b, b                                       ; $601c: $40
    add [hl]                                      ; $601d: $86
    ret                                           ; $601e: $c9


    call Call_0f7_4222                            ; $601f: $cd $22 $42
    ld d, b                                       ; $6022: $50
    or b                                          ; $6023: $b0
    ld [bc], a                                    ; $6024: $02
    add b                                         ; $6025: $80
    ld [bc], a                                    ; $6026: $02
    ld bc, $0202                                  ; $6027: $01 $02 $02
    ld [bc], a                                    ; $602a: $02
    nop                                           ; $602b: $00
    adc [hl]                                      ; $602c: $8e
    stop                                          ; $602d: $10 $00
    jr nz, jr_0f7_6049                            ; $602f: $20 $18

    and b                                         ; $6031: $a0
    ldh [$90], a                                  ; $6032: $e0 $90
    xor b                                         ; $6034: $a8
    ld [$4018], sp                                ; $6035: $08 $18 $40
    and b                                         ; $6038: $a0
    jr nz, jr_0f7_609b                            ; $6039: $20 $60

    rla                                           ; $603b: $17
    nop                                           ; $603c: $00
    adc l                                         ; $603d: $8d
    ld bc, $8000                                  ; $603e: $01 $00 $80
    add h                                         ; $6041: $84
    ld b, [hl]                                    ; $6042: $46
    ld d, d                                       ; $6043: $52
    push de                                       ; $6044: $d5
    rrca                                          ; $6045: $0f
    ld c, $11                                     ; $6046: $0e $11
    ld [de], a                                    ; $6048: $12

jr_0f7_6049:
    nop                                           ; $6049: $00
    ld bc, $0004                                  ; $604a: $01 $04 $00
    ld [bc], a                                    ; $604d: $02
    inc h                                         ; $604e: $24
    add d                                         ; $604f: $82
    adc d                                         ; $6050: $8a
    adc [hl]                                      ; $6051: $8e
    ld [bc], a                                    ; $6052: $02
    ld a, [de]                                    ; $6053: $1a
    add [hl]                                      ; $6054: $86
    sbc b                                         ; $6055: $98
    sub b                                         ; $6056: $90
    db $10                                        ; $6057: $10
    inc h                                         ; $6058: $24
    add b                                         ; $6059: $80
    sbc b                                         ; $605a: $98
    ld [bc], a                                    ; $605b: $02
    jr nc, jr_0f7_6060                            ; $605c: $30 $02

    nop                                           ; $605e: $00

jr_0f7_605f:
    add h                                         ; $605f: $84

jr_0f7_6060:
    db $10                                        ; $6060: $10
    xor b                                         ; $6061: $a8
    or b                                          ; $6062: $b0
    and b                                         ; $6063: $a0
    ld [bc], a                                    ; $6064: $02
    db $10                                        ; $6065: $10
    ld [bc], a                                    ; $6066: $02
    ld b, b                                       ; $6067: $40
    ld [bc], a                                    ; $6068: $02
    jr z, jr_0f7_5ff3                             ; $6069: $28 $88

    sub h                                         ; $606b: $94
    call c, Call_0f7_4b4a                         ; $606c: $dc $4a $4b
    and a                                         ; $606f: $a7
    and h                                         ; $6070: $a4
    ld d, b                                       ; $6071: $50
    ld [hl], l                                    ; $6072: $75
    inc b                                         ; $6073: $04
    nop                                           ; $6074: $00
    ld [bc], a                                    ; $6075: $02
    add b                                         ; $6076: $80
    inc b                                         ; $6077: $04
    nop                                           ; $6078: $00
    ld [bc], a                                    ; $6079: $02
    jr z, jr_0f7_607e                             ; $607a: $28 $02

    add b                                         ; $607c: $80
    adc d                                         ; $607d: $8a

jr_0f7_607e:
    nop                                           ; $607e: $00
    ld b, b                                       ; $607f: $40
    ldh a, [$90]                                  ; $6080: $f0 $90
    ld b, b                                       ; $6082: $40
    or b                                          ; $6083: $b0
    add b                                         ; $6084: $80
    ld b, b                                       ; $6085: $40
    nop                                           ; $6086: $00
    add b                                         ; $6087: $80
    inc d                                         ; $6088: $14
    nop                                           ; $6089: $00
    ld [bc], a                                    ; $608a: $02
    add b                                         ; $608b: $80
    add d                                         ; $608c: $82
    nop                                           ; $608d: $00
    add b                                         ; $608e: $80
    inc bc                                        ; $608f: $03
    nop                                           ; $6090: $00
    add c                                         ; $6091: $81
    add b                                         ; $6092: $80
    jr jr_0f7_6095                                ; $6093: $18 $00

jr_0f7_6095:
    add c                                         ; $6095: $81
    add b                                         ; $6096: $80
    ld [bc], a                                    ; $6097: $02
    ld b, b                                       ; $6098: $40
    add d                                         ; $6099: $82
    ret nz                                        ; $609a: $c0

jr_0f7_609b:
    nop                                           ; $609b: $00
    ld [bc], a                                    ; $609c: $02
    ld b, b                                       ; $609d: $40
    adc b                                         ; $609e: $88
    jr nz, @+$62                                  ; $609f: $20 $60

    sub b                                         ; $60a1: $90
    ld [hl+], a                                   ; $60a2: $22
    ld d, l                                       ; $60a3: $55
    ld bc, $0023                                  ; $60a4: $01 $23 $00
    ld [bc], a                                    ; $60a7: $02
    inc b                                         ; $60a8: $04
    add e                                         ; $60a9: $83
    rlca                                          ; $60aa: $07
    ld [de], a                                    ; $60ab: $12
    dec d                                         ; $60ac: $15
    ld [bc], a                                    ; $60ad: $02
    inc c                                         ; $60ae: $0c
    add h                                         ; $60af: $84
    sub d                                         ; $60b0: $92
    sub e                                         ; $60b1: $93
    ld b, b                                       ; $60b2: $40
    ret nz                                        ; $60b3: $c0

    ld [bc], a                                    ; $60b4: $02
    add b                                         ; $60b5: $80
    stop                                          ; $60b6: $10 $00
    ld [bc], a                                    ; $60b8: $02
    ld [$0002], sp                                ; $60b9: $08 $02 $00
    add d                                         ; $60bc: $82
    jr nz, jr_0f7_605f                            ; $60bd: $20 $a0

    ld [bc], a                                    ; $60bf: $02
    nop                                           ; $60c0: $00
    add h                                         ; $60c1: $84
    jr nz, @+$36                                  ; $60c2: $20 $34

    db $10                                        ; $60c4: $10
    inc b                                         ; $60c5: $04
    ld [bc], a                                    ; $60c6: $02
    nop                                           ; $60c7: $00
    add h                                         ; $60c8: $84
    ld [hl+], a                                   ; $60c9: $22
    dec [hl]                                      ; $60ca: $35
    ld bc, $023b                                  ; $60cb: $01 $3b $02
    db $10                                        ; $60ce: $10
    add c                                         ; $60cf: $81
    ld b, b                                       ; $60d0: $40
    ld [bc], a                                    ; $60d1: $02
    and b                                         ; $60d2: $a0
    add c                                         ; $60d3: $81
    ldh [$0a], a                                  ; $60d4: $e0 $0a
    nop                                           ; $60d6: $00
    add c                                         ; $60d7: $81
    ld b, b                                       ; $60d8: $40
    ld [bc], a                                    ; $60d9: $02
    and b                                         ; $60da: $a0
    add c                                         ; $60db: $81
    ldh [$03], a                                  ; $60dc: $e0 $03
    nop                                           ; $60de: $00
    add c                                         ; $60df: $81
    ld h, b                                       ; $60e0: $60
    inc bc                                        ; $60e1: $03
    nop                                           ; $60e2: $00
    add a                                         ; $60e3: $87
    jr nc, jr_0f7_6136                            ; $60e4: $30 $50

    ld l, b                                       ; $60e6: $68
    ld b, b                                       ; $60e7: $40
    and b                                         ; $60e8: $a0
    jr nz, jr_0f7_614b                            ; $60e9: $20 $60

    rst $38                                       ; $60eb: $ff
    ld hl, $f20e                                  ; $60ec: $21 $0e $f2
    rrca                                          ; $60ef: $0f
    db $f4                                        ; $60f0: $f4
    dec c                                         ; $60f1: $0d
    rst $28                                       ; $60f2: $ef
    xor $f0                                       ; $60f3: $ee $f0
    or $ee                                        ; $60f5: $f6 $ee
    cp $f0                                        ; $60f7: $fe $f0
    ld b, $f2                                     ; $60f9: $06 $f2
    ld c, $ff                                     ; $60fb: $0e $ff
    db $eb                                        ; $60fd: $eb
    rst $38                                       ; $60fe: $ff
    di                                            ; $60ff: $f3
    cp $fb                                        ; $6100: $fe $fb

Jump_0f7_6102:
    nop                                           ; $6102: $00
    inc bc                                        ; $6103: $03
    nop                                           ; $6104: $00
    dec bc                                        ; $6105: $0b
    inc b                                         ; $6106: $04
    ld c, $0e                                     ; $6107: $0e $0e
    db $f4                                        ; $6109: $f4
    ld c, $fe                                     ; $610a: $0e $fe
    ld c, $06                                     ; $610c: $0e $06
    ld [bc], a                                    ; $610e: $02
    ld bc, $0004                                  ; $610f: $01 $04 $00
    ld [bc], a                                    ; $6112: $02
    ld a, [bc]                                    ; $6113: $0a
    ld [bc], a                                    ; $6114: $02
    inc b                                         ; $6115: $04
    ld [bc], a                                    ; $6116: $02
    ld b, b                                       ; $6117: $40
    ld [bc], a                                    ; $6118: $02
    ld a, [bc]                                    ; $6119: $0a
    adc b                                         ; $611a: $88
    dec b                                         ; $611b: $05
    ld b, a                                       ; $611c: $47
    ld d, b                                       ; $611d: $50
    sub b                                         ; $611e: $90
    dec d                                         ; $611f: $15
    dec e                                         ; $6120: $1d
    xor h                                         ; $6121: $ac
    or h                                          ; $6122: $b4
    ld [bc], a                                    ; $6123: $02
    ld [$5402], sp                                ; $6124: $08 $02 $54
    add d                                         ; $6127: $82
    ld e, d                                       ; $6128: $5a
    ld e, e                                       ; $6129: $5b
    ld [bc], a                                    ; $612a: $02
    ld [bc], a                                    ; $612b: $02
    ld [bc], a                                    ; $612c: $02
    add d                                         ; $612d: $82
    ld [bc], a                                    ; $612e: $02
    ld b, $02                                     ; $612f: $06 $02
    jr nc, @-$76                                  ; $6131: $30 $88

    ld b, [hl]                                    ; $6133: $46
    add $80                                       ; $6134: $c6 $80

jr_0f7_6136:
    ld b, h                                       ; $6136: $44
    ld d, b                                       ; $6137: $50
    ret nc                                        ; $6138: $d0

    ret nz                                        ; $6139: $c0

    ldh [rSC], a                                  ; $613a: $e0 $02
    nop                                           ; $613c: $00
    ld [bc], a                                    ; $613d: $02
    ld d, [hl]                                    ; $613e: $56
    adc b                                         ; $613f: $88
    jp z, $94db                                   ; $6140: $ca $db $94

    sbc h                                         ; $6143: $9c
    ld [$d41c], sp                                ; $6144: $08 $1c $d4
    ret c                                         ; $6147: $d8

    ld [bc], a                                    ; $6148: $02
    ld h, $02                                     ; $6149: $26 $02

jr_0f7_614b:
    inc b                                         ; $614b: $04
    add [hl]                                      ; $614c: $86
    jr nz, jr_0f7_6173                            ; $614d: $20 $24

    ld b, l                                       ; $614f: $45
    ret                                           ; $6150: $c9


    jr nz, jr_0f7_6153                            ; $6151: $20 $00

jr_0f7_6153:
    ld [bc], a                                    ; $6153: $02
    add b                                         ; $6154: $80
    add d                                         ; $6155: $82
    ld h, d                                       ; $6156: $62
    ld h, b                                       ; $6157: $60
    ld [bc], a                                    ; $6158: $02
    xor e                                         ; $6159: $ab
    ld [bc], a                                    ; $615a: $02
    add l                                         ; $615b: $85
    add h                                         ; $615c: $84
    ld [$050d], sp                                ; $615d: $08 $0d $05
    add c                                         ; $6160: $81
    ld [bc], a                                    ; $6161: $02
    nop                                           ; $6162: $00
    ld [bc], a                                    ; $6163: $02
    db $ec                                        ; $6164: $ec
    ld [bc], a                                    ; $6165: $02
    inc h                                         ; $6166: $24
    ld [bc], a                                    ; $6167: $02
    sbc d                                         ; $6168: $9a
    adc d                                         ; $6169: $8a
    ld [hl+], a                                   ; $616a: $22
    and d                                         ; $616b: $a2
    and h                                         ; $616c: $a4
    xor h                                         ; $616d: $ac
    ld l, d                                       ; $616e: $6a
    ld b, [hl]                                    ; $616f: $46
    nop                                           ; $6170: $00
    add hl, bc                                    ; $6171: $09
    ld a, [hl+]                                   ; $6172: $2a

jr_0f7_6173:
    jr z, jr_0f7_6177                             ; $6173: $28 $02

    add d                                         ; $6175: $82
    ld [bc], a                                    ; $6176: $02

jr_0f7_6177:
    nop                                           ; $6177: $00
    adc d                                         ; $6178: $8a
    db $10                                        ; $6179: $10
    sub b                                         ; $617a: $90
    add l                                         ; $617b: $85
    sub a                                         ; $617c: $97
    ld e, d                                       ; $617d: $5a
    ld l, d                                       ; $617e: $6a
    inc d                                         ; $617f: $14
    ld [hl], $06                                  ; $6180: $36 $06
    ld b, h                                       ; $6182: $44
    ld [bc], a                                    ; $6183: $02
    ld [hl+], a                                   ; $6184: $22
    add d                                         ; $6185: $82
    ld a, [bc]                                    ; $6186: $0a
    ld a, [de]                                    ; $6187: $1a
    ld [bc], a                                    ; $6188: $02
    sub b                                         ; $6189: $90
    add [hl]                                      ; $618a: $86
    ld h, e                                       ; $618b: $63
    ld h, c                                       ; $618c: $61
    ld [de], a                                    ; $618d: $12
    ld a, [hl-]                                   ; $618e: $3a
    nop                                           ; $618f: $00
    ld [de], a                                    ; $6190: $12
    ld [bc], a                                    ; $6191: $02
    ld h, $84                                     ; $6192: $26 $84
    ret nc                                        ; $6194: $d0

    ld d, b                                       ; $6195: $50
    ld h, e                                       ; $6196: $63
    db $e3                                        ; $6197: $e3
    ld [bc], a                                    ; $6198: $02
    ld b, b                                       ; $6199: $40
    inc b                                         ; $619a: $04
    nop                                           ; $619b: $00
    add d                                         ; $619c: $82
    ld b, b                                       ; $619d: $40
    ret nz                                        ; $619e: $c0

jr_0f7_619f:
    ld [bc], a                                    ; $619f: $02
    ld h, h                                       ; $61a0: $64
    ld [bc], a                                    ; $61a1: $02
    nop                                           ; $61a2: $00
    add d                                         ; $61a3: $82
    ld h, b                                       ; $61a4: $60
    ld b, b                                       ; $61a5: $40
    ld [bc], a                                    ; $61a6: $02
    ld bc, $0486                                  ; $61a7: $01 $86 $04
    inc c                                         ; $61aa: $0c
    adc b                                         ; $61ab: $88
    adc c                                         ; $61ac: $89
    ld bc, $0202                                  ; $61ad: $01 $02 $02
    ld b, c                                       ; $61b0: $41
    ld [bc], a                                    ; $61b1: $02
    add b                                         ; $61b2: $80
    ld [bc], a                                    ; $61b3: $02
    ld [bc], a                                    ; $61b4: $02
    ld [bc], a                                    ; $61b5: $02
    nop                                           ; $61b6: $00
    ld [bc], a                                    ; $61b7: $02
    ld d, b                                       ; $61b8: $50
    add h                                         ; $61b9: $84
    ld sp, $2839                                  ; $61ba: $31 $39 $28
    ld [hl-], a                                   ; $61bd: $32
    ld [bc], a                                    ; $61be: $02
    ld [$0a02], sp                                ; $61bf: $08 $02 $0a
    add h                                         ; $61c2: $84
    ld d, h                                       ; $61c3: $54
    ld e, h                                       ; $61c4: $5c
    add hl, hl                                    ; $61c5: $29
    ld sp, $8002                                  ; $61c6: $31 $02 $80
    ld [bc], a                                    ; $61c9: $02
    ld [$0282], sp                                ; $61ca: $08 $82 $02
    inc bc                                        ; $61cd: $03
    ld [bc], a                                    ; $61ce: $02
    ld l, b                                       ; $61cf: $68
    ld [bc], a                                    ; $61d0: $02
    ld b, c                                       ; $61d1: $41
    ld [bc], a                                    ; $61d2: $02
    inc h                                         ; $61d3: $24
    ld [bc], a                                    ; $61d4: $02
    ld [$0005], sp                                ; $61d5: $08 $05 $00
    add c                                         ; $61d8: $81
    dec b                                         ; $61d9: $05
    ld [bc], a                                    ; $61da: $02
    ret nz                                        ; $61db: $c0

    add h                                         ; $61dc: $84
    sbc b                                         ; $61dd: $98
    adc b                                         ; $61de: $88
    ld c, c                                       ; $61df: $49
    ld e, c                                       ; $61e0: $59
    ld [bc], a                                    ; $61e1: $02
    ld [hl], b                                    ; $61e2: $70
    ld [bc], a                                    ; $61e3: $02
    and [hl]                                      ; $61e4: $a6
    adc b                                         ; $61e5: $88
    jr z, jr_0f7_6260                             ; $61e6: $28 $78

    add d                                         ; $61e8: $82
    sub d                                         ; $61e9: $92

jr_0f7_61ea:
    db $10                                        ; $61ea: $10
    ld d, [hl]                                    ; $61eb: $56
    ld b, e                                       ; $61ec: $43
    and a                                         ; $61ed: $a7
    ld [bc], a                                    ; $61ee: $02
    ld b, d                                       ; $61ef: $42
    inc bc                                        ; $61f0: $03
    db $10                                        ; $61f1: $10
    adc c                                         ; $61f2: $89
    jr @+$0f                                      ; $61f3: $18 $0d

    rrca                                          ; $61f5: $0f
    ld [bc], a                                    ; $61f6: $02
    ld b, $40                                     ; $61f7: $06 $40
    ld h, b                                       ; $61f9: $60
    jr jr_0f7_6224                                ; $61fa: $18 $28

    ld [bc], a                                    ; $61fc: $02
    ld d, $02                                     ; $61fd: $16 $02
    nop                                           ; $61ff: $00
    add d                                         ; $6200: $82
    ld [$0288], sp                                ; $6201: $08 $88 $02
    ld b, b                                       ; $6204: $40
    ld [bc], a                                    ; $6205: $02
    add b                                         ; $6206: $80
    ld [bc], a                                    ; $6207: $02
    and c                                         ; $6208: $a1
    ld [bc], a                                    ; $6209: $02
    db $10                                        ; $620a: $10
    ld [bc], a                                    ; $620b: $02
    nop                                           ; $620c: $00
    adc b                                         ; $620d: $88
    sub [hl]                                      ; $620e: $96
    sbc $d8                                       ; $620f: $de $d8
    xor d                                         ; $6211: $aa
    db $10                                        ; $6212: $10
    ld sp, $d2a0                                  ; $6213: $31 $a0 $d2
    ld [bc], a                                    ; $6216: $02
    jr nz, jr_0f7_621b                            ; $6217: $20 $02

    jr z, jr_0f7_619f                             ; $6219: $28 $84

jr_0f7_621b:
    dec bc                                        ; $621b: $0b

Call_0f7_621c:
    adc a                                         ; $621c: $8f
    ld a, [bc]                                    ; $621d: $0a
    nop                                           ; $621e: $00
    ld [bc], a                                    ; $621f: $02
    ld e, b                                       ; $6220: $58
    adc b                                         ; $6221: $88
    jr nz, jr_0f7_6258                            ; $6222: $20 $34

jr_0f7_6224:
    ld a, [de]                                    ; $6224: $1a
    ld a, [hl+]                                   ; $6225: $2a
    db $10                                        ; $6226: $10
    ld de, $c0c1                                  ; $6227: $11 $c1 $c0
    ld [bc], a                                    ; $622a: $02
    ld b, d                                       ; $622b: $42
    ld [bc], a                                    ; $622c: $02
    add hl, hl                                    ; $622d: $29
    add c                                         ; $622e: $81
    nop                                           ; $622f: $00
    ld [bc], a                                    ; $6230: $02
    ld [bc], a                                    ; $6231: $02
    add e                                         ; $6232: $83
    dec b                                         ; $6233: $05
    and b                                         ; $6234: $a0
    and d                                         ; $6235: $a2
    ld [bc], a                                    ; $6236: $02
    jr @-$7c                                      ; $6237: $18 $82

    stop                                          ; $6239: $10 $00
    ld [bc], a                                    ; $623b: $02
    ld b, h                                       ; $623c: $44
    ld [bc], a                                    ; $623d: $02
    ld b, b                                       ; $623e: $40
    add h                                         ; $623f: $84
    nop                                           ; $6240: $00
    ld d, b                                       ; $6241: $50
    inc e                                         ; $6242: $1c
    jr z, jr_0f7_6247                             ; $6243: $28 $02

    add b                                         ; $6245: $80
    add d                                         ; $6246: $82

jr_0f7_6247:
    ld b, b                                       ; $6247: $40
    and b                                         ; $6248: $a0
    ld [bc], a                                    ; $6249: $02
    ret nz                                        ; $624a: $c0

    ld [bc], a                                    ; $624b: $02
    ld b, c                                       ; $624c: $41
    ld [bc], a                                    ; $624d: $02
    nop                                           ; $624e: $00
    ld [bc], a                                    ; $624f: $02
    and h                                         ; $6250: $a4
    add d                                         ; $6251: $82
    ld d, c                                       ; $6252: $51
    ret nc                                        ; $6253: $d0

    ld [bc], a                                    ; $6254: $02
    ld bc, $0c02                                  ; $6255: $01 $02 $0c

jr_0f7_6258:
    add h                                         ; $6258: $84
    ld l, b                                       ; $6259: $68
    ld l, c                                       ; $625a: $69
    add hl, hl                                    ; $625b: $29
    ld c, d                                       ; $625c: $4a
    ld [bc], a                                    ; $625d: $02
    dec d                                         ; $625e: $15
    ld [bc], a                                    ; $625f: $02

jr_0f7_6260:
    jr nz, jr_0f7_6264                            ; $6260: $20 $02

    nop                                           ; $6262: $00
    ld [bc], a                                    ; $6263: $02

jr_0f7_6264:
    jr nz, jr_0f7_61ea                            ; $6264: $20 $84

    nop                                           ; $6266: $00
    jr nz, jr_0f7_626d                            ; $6267: $20 $04

    dec b                                         ; $6269: $05
    inc b                                         ; $626a: $04
    nop                                           ; $626b: $00
    ld [bc], a                                    ; $626c: $02

jr_0f7_626d:
    ld [bc], a                                    ; $626d: $02
    add d                                         ; $626e: $82
    inc b                                         ; $626f: $04

jr_0f7_6270:
    ld b, $02                                     ; $6270: $06 $02
    nop                                           ; $6272: $00
    ld [bc], a                                    ; $6273: $02
    inc b                                         ; $6274: $04
    inc d                                         ; $6275: $14
    nop                                           ; $6276: $00
    ld [bc], a                                    ; $6277: $02
    ld bc, $0402                                  ; $6278: $01 $02 $04
    ld [bc], a                                    ; $627b: $02
    nop                                           ; $627c: $00
    add h                                         ; $627d: $84
    add b                                         ; $627e: $80
    and b                                         ; $627f: $a0
    nop                                           ; $6280: $00
    ld [$0014], sp                                ; $6281: $08 $14 $00
    ld [bc], a                                    ; $6284: $02
    add b                                         ; $6285: $80
    add d                                         ; $6286: $82
    ld b, b                                       ; $6287: $40
    ret nz                                        ; $6288: $c0

    ld [bc], a                                    ; $6289: $02
    ld l, b                                       ; $628a: $68
    ld [bc], a                                    ; $628b: $02
    ld b, $02                                     ; $628c: $06 $02
    ld bc, $8002                                  ; $628e: $01 $02 $80
    ld a, [de]                                    ; $6291: $1a
    nop                                           ; $6292: $00
    add d                                         ; $6293: $82
    jr nz, @+$32                                  ; $6294: $20 $30

    ld [bc], a                                    ; $6296: $02
    ld bc, $0016                                  ; $6297: $01 $16 $00
    rst $38                                       ; $629a: $ff
    inc de                                        ; $629b: $13
    rlca                                          ; $629c: $07
    ld a, [c]                                     ; $629d: $f2
    rrca                                          ; $629e: $0f
    db $f4                                        ; $629f: $f4
    dec c                                         ; $62a0: $0d
    push af                                       ; $62a1: $f5
    di                                            ; $62a2: $f3
    db $f4                                        ; $62a3: $f4
    ei                                            ; $62a4: $fb
    di                                            ; $62a5: $f3
    ld [bc], a                                    ; $62a6: $02
    ld hl, sp+$05                                 ; $62a7: $f8 $05
    inc bc                                        ; $62a9: $03
    di                                            ; $62aa: $f3
    inc bc                                        ; $62ab: $03
    ei                                            ; $62ac: $fb
    inc bc                                        ; $62ad: $03
    ld [bc], a                                    ; $62ae: $02
    ld [bc], a                                    ; $62af: $02
    ld [bc], a                                    ; $62b0: $02
    ld [bc], a                                    ; $62b1: $02
    nop                                           ; $62b2: $00
    ld [bc], a                                    ; $62b3: $02
    inc bc                                        ; $62b4: $03
    ld [bc], a                                    ; $62b5: $02
    add hl, hl                                    ; $62b6: $29
    add d                                         ; $62b7: $82
    db $10                                        ; $62b8: $10
    jr @+$04                                      ; $62b9: $18 $02

    ld bc, $4584                                  ; $62bb: $01 $84 $45
    ld h, l                                       ; $62be: $65
    and d                                         ; $62bf: $a2
    jp nz, $3002                                  ; $62c0: $c2 $02 $30

    ld [bc], a                                    ; $62c3: $02
    ld [$0002], sp                                ; $62c4: $08 $02 $00
    ld [bc], a                                    ; $62c7: $02
    pop bc                                        ; $62c8: $c1
    add d                                         ; $62c9: $82
    ld d, d                                       ; $62ca: $52
    ld d, e                                       ; $62cb: $53
    ld [bc], a                                    ; $62cc: $02
    dec c                                         ; $62cd: $0d
    add d                                         ; $62ce: $82
    ld [bc], a                                    ; $62cf: $02
    ld b, $02                                     ; $62d0: $06 $02
    inc b                                         ; $62d2: $04
    ld [bc], a                                    ; $62d3: $02
    ld b, c                                       ; $62d4: $41
    ld [bc], a                                    ; $62d5: $02
    inc c                                         ; $62d6: $0c
    add [hl]                                      ; $62d7: $86
    nop                                           ; $62d8: $00
    dec b                                         ; $62d9: $05
    ld b, l                                       ; $62da: $45
    ld c, c                                       ; $62db: $49
    nop                                           ; $62dc: $00
    add b                                         ; $62dd: $80
    ld [bc], a                                    ; $62de: $02
    inc b                                         ; $62df: $04
    ld [bc], a                                    ; $62e0: $02
    db $10                                        ; $62e1: $10
    ld [bc], a                                    ; $62e2: $02
    ld l, b                                       ; $62e3: $68
    add d                                         ; $62e4: $82
    jr nz, @+$6a                                  ; $62e5: $20 $68

    ld [bc], a                                    ; $62e7: $02
    ld b, b                                       ; $62e8: $40
    ld [$0200], sp                                ; $62e9: $08 $00 $02
    jr nz, jr_0f7_6270                            ; $62ec: $20 $82

    db $10                                        ; $62ee: $10
    jr nc, jr_0f7_62f3                            ; $62ef: $30 $02

    ld b, b                                       ; $62f1: $40
    ld [bc], a                                    ; $62f2: $02

jr_0f7_62f3:
    nop                                           ; $62f3: $00
    ld [bc], a                                    ; $62f4: $02
    jr @-$7c                                      ; $62f5: $18 $82

    ld b, b                                       ; $62f7: $40
    ld b, c                                       ; $62f8: $41
    ld [bc], a                                    ; $62f9: $02
    dec h                                         ; $62fa: $25
    add h                                         ; $62fb: $84
    nop                                           ; $62fc: $00
    db $10                                        ; $62fd: $10
    ld [hl+], a                                   ; $62fe: $22
    ld [bc], a                                    ; $62ff: $02
    ld [bc], a                                    ; $6300: $02
    ld bc, $0482                                  ; $6301: $01 $82 $04
    inc c                                         ; $6304: $0c
    ld [bc], a                                    ; $6305: $02
    ld [$1282], sp                                ; $6306: $08 $82 $12
    inc de                                        ; $6309: $13
    ld [bc], a                                    ; $630a: $02
    add hl, de                                    ; $630b: $19
    inc b                                         ; $630c: $04
    nop                                           ; $630d: $00
    add d                                         ; $630e: $82
    ld [$0200], sp                                ; $630f: $08 $00 $02
    ld c, d                                       ; $6312: $4a
    add c                                         ; $6313: $81
    nop                                           ; $6314: $00
    inc bc                                        ; $6315: $03
    ld bc, $0002                                  ; $6316: $01 $02 $00
    ld [bc], a                                    ; $6319: $02
    ld bc, $0202                                  ; $631a: $01 $02 $02
    ld [bc], a                                    ; $631d: $02
    nop                                           ; $631e: $00
    ld [bc], a                                    ; $631f: $02
    ld [bc], a                                    ; $6320: $02
    ld [bc], a                                    ; $6321: $02
    nop                                           ; $6322: $00
    ld [bc], a                                    ; $6323: $02
    ld bc, $0004                                  ; $6324: $01 $04 $00
    add d                                         ; $6327: $82
    jr nz, jr_0f7_635a                            ; $6328: $20 $30

    ld [bc], a                                    ; $632a: $02
    ld b, h                                       ; $632b: $44
    add d                                         ; $632c: $82
    and c                                         ; $632d: $a1
    pop hl                                        ; $632e: $e1
    ld [bc], a                                    ; $632f: $02
    ld b, l                                       ; $6330: $45
    ld [bc], a                                    ; $6331: $02
    ld [$0004], sp                                ; $6332: $08 $04 $00
    ld [bc], a                                    ; $6335: $02
    and l                                         ; $6336: $a5
    ld [bc], a                                    ; $6337: $02
    ld b, c                                       ; $6338: $41
    ld [bc], a                                    ; $6339: $02
    nop                                           ; $633a: $00
    ld [bc], a                                    ; $633b: $02
    ld [de], a                                    ; $633c: $12
    add d                                         ; $633d: $82
    inc b                                         ; $633e: $04
    ld b, $02                                     ; $633f: $06 $02
    ld bc, $0002                                  ; $6341: $01 $02 $00
    ld [bc], a                                    ; $6344: $02
    ld [bc], a                                    ; $6345: $02
    ld c, $00                                     ; $6346: $0e $00
    ld [bc], a                                    ; $6348: $02
    jr nz, jr_0f7_634d                            ; $6349: $20 $02

    nop                                           ; $634b: $00
    add d                                         ; $634c: $82

jr_0f7_634d:
    ld bc, $0281                                  ; $634d: $01 $81 $02
    and h                                         ; $6350: $a4
    add d                                         ; $6351: $82
    ld h, h                                       ; $6352: $64
    ld l, b                                       ; $6353: $68
    ld [bc], a                                    ; $6354: $02
    ld [bc], a                                    ; $6355: $02
    add d                                         ; $6356: $82
    add h                                         ; $6357: $84
    add [hl]                                      ; $6358: $86
    ld [bc], a                                    ; $6359: $02

jr_0f7_635a:
    nop                                           ; $635a: $00
    ld [bc], a                                    ; $635b: $02
    jr nz, jr_0f7_6360                            ; $635c: $20 $02

    db $10                                        ; $635e: $10

Call_0f7_635f:
    ld [bc], a                                    ; $635f: $02

jr_0f7_6360:
    jr nz, @+$04                                  ; $6360: $20 $02

    ld bc, $000e                                  ; $6362: $01 $0e $00
    ld [bc], a                                    ; $6365: $02
    ld h, b                                       ; $6366: $60

jr_0f7_6367:
    inc bc                                        ; $6367: $03
    nop                                           ; $6368: $00
    add c                                         ; $6369: $81
    db $10                                        ; $636a: $10
    inc b                                         ; $636b: $04
    nop                                           ; $636c: $00
    ld [bc], a                                    ; $636d: $02
    ld bc, $4002                                  ; $636e: $01 $02 $40
    ld a, [bc]                                    ; $6371: $0a
    nop                                           ; $6372: $00
    rst $38                                       ; $6373: $ff
    add hl, bc                                    ; $6374: $09
    ld [bc], a                                    ; $6375: $02
    ld hl, sp+$08                                 ; $6376: $f8 $08
    ld hl, sp+$02                                 ; $6378: $f8 $02
    ei                                            ; $637a: $fb
    ld a, [$fffb]                                 ; $637b: $fa $fb $ff
    adc d                                         ; $637e: $8a
    ld d, b                                       ; $637f: $50
    ld [hl], b                                    ; $6380: $70
    cp b                                          ; $6381: $b8
    ret c                                         ; $6382: $d8

    ld e, a                                       ; $6383: $5f
    ld h, a                                       ; $6384: $67
    scf                                           ; $6385: $37
    jr z, jr_0f7_63a5                             ; $6386: $28 $1d

    ld a, [de]                                    ; $6388: $1a

jr_0f7_6389:
    ld [bc], a                                    ; $6389: $02
    rlca                                          ; $638a: $07
    inc d                                         ; $638b: $14
    nop                                           ; $638c: $00
    adc b                                         ; $638d: $88
    ld a, [bc]                                    ; $638e: $0a
    ld c, $1d                                     ; $638f: $0e $1d
    dec de                                        ; $6391: $1b
    ld a, [de]                                    ; $6392: $1a
    ld b, $0c                                     ; $6393: $06 $0c
    inc d                                         ; $6395: $14
    ld [bc], a                                    ; $6396: $02
    jr jr_0f7_63af                                ; $6397: $18 $16

    nop                                           ; $6399: $00
    rst $38                                       ; $639a: $ff
    dec bc                                        ; $639b: $0b
    inc bc                                        ; $639c: $03
    ld hl, sp+$08                                 ; $639d: $f8 $08
    ld hl, sp+$02                                 ; $639f: $f8 $02
    ld sp, hl                                     ; $63a1: $f9
    ld hl, sp-$07                                 ; $63a2: $f8 $f9
    nop                                           ; $63a4: $00

jr_0f7_63a5:
    ld sp, hl                                     ; $63a5: $f9
    ld bc, $2002                                  ; $63a6: $01 $02 $20
    adc h                                         ; $63a9: $8c
    ld b, b                                       ; $63aa: $40
    ld h, b                                       ; $63ab: $60
    ldh [$a0], a                                  ; $63ac: $e0 $a0
    cp h                                          ; $63ae: $bc

jr_0f7_63af:
    call c, Call_0f7_635f                         ; $63af: $dc $5f $63
    dec hl                                        ; $63b2: $2b
    inc [hl]                                      ; $63b3: $34
    ld e, $1d                                     ; $63b4: $1e $1d
    ld [bc], a                                    ; $63b6: $02
    inc bc                                        ; $63b7: $03
    stop                                          ; $63b8: $10 $00
    ld [bc], a                                    ; $63ba: $02
    ld [bc], a                                    ; $63bb: $02
    add c                                         ; $63bc: $81
    ld bc, $0302                                  ; $63bd: $01 $02 $03
    adc c                                         ; $63c0: $89
    ld [bc], a                                    ; $63c1: $02
    ld e, $1d                                     ; $63c2: $1e $1d
    db $fd                                        ; $63c4: $fd
    db $e3                                        ; $63c5: $e3
    ld [$bc16], a                                 ; $63c6: $ea $16 $bc
    ld e, h                                       ; $63c9: $5c
    ld [bc], a                                    ; $63ca: $02
    ldh [rNR14], a                                ; $63cb: $e0 $14
    nop                                           ; $63cd: $00
    inc b                                         ; $63ce: $04
    ld bc, $0018                                  ; $63cf: $01 $18 $00
    rst $38                                       ; $63d2: $ff
    dec bc                                        ; $63d3: $0b
    inc bc                                        ; $63d4: $03
    ld hl, sp+$08                                 ; $63d5: $f8 $08
    ld hl, sp+$02                                 ; $63d7: $f8 $02
    rst $30                                       ; $63d9: $f7
    push af                                       ; $63da: $f5
    rst $30                                       ; $63db: $f7
    db $fd                                        ; $63dc: $fd
    rst $30                                       ; $63dd: $f7
    inc b                                         ; $63de: $04
    ld [bc], a                                    ; $63df: $02
    jr jr_0f7_6367                                ; $63e0: $18 $85

    inc h                                         ; $63e2: $24
    inc a                                         ; $63e3: $3c
    ld e, b                                       ; $63e4: $58
    ld a, b                                       ; $63e5: $78
    and b                                         ; $63e6: $a0
    ld [bc], a                                    ; $63e7: $02
    ldh [$89], a                                  ; $63e8: $e0 $89
    and b                                         ; $63ea: $a0
    cp h                                          ; $63eb: $bc
    call c, Call_0f7_635f                         ; $63ec: $dc $5f $63
    dec hl                                        ; $63ef: $2b
    inc [hl]                                      ; $63f0: $34
    ld e, $1d                                     ; $63f1: $1e $1d
    ld [bc], a                                    ; $63f3: $02
    inc bc                                        ; $63f4: $03
    jr jr_0f7_63f7                                ; $63f5: $18 $00

jr_0f7_63f7:
    inc bc                                        ; $63f7: $03
    rst $38                                       ; $63f8: $ff
    add e                                         ; $63f9: $83
    nop                                           ; $63fa: $00
    xor d                                         ; $63fb: $aa
    ld d, l                                       ; $63fc: $55
    ld [bc], a                                    ; $63fd: $02
    rst $38                                       ; $63fe: $ff
    inc c                                         ; $63ff: $0c
    nop                                           ; $6400: $00
    ld [bc], a                                    ; $6401: $02
    jr jr_0f7_6389                                ; $6402: $18 $85

    inc h                                         ; $6404: $24
    inc a                                         ; $6405: $3c
    ld a, [de]                                    ; $6406: $1a
    ld e, $05                                     ; $6407: $1e $05
    ld [bc], a                                    ; $6409: $02
    rlca                                          ; $640a: $07
    adc c                                         ; $640b: $89
    dec b                                         ; $640c: $05
    dec a                                         ; $640d: $3d
    dec sp                                        ; $640e: $3b
    ld a, d                                       ; $640f: $7a
    ld b, [hl]                                    ; $6410: $46
    ld d, h                                       ; $6411: $54
    inc l                                         ; $6412: $2c
    ld a, b                                       ; $6413: $78
    jr c, jr_0f7_6418                             ; $6414: $38 $02

    ld b, b                                       ; $6416: $40
    inc c                                         ; $6417: $0c

jr_0f7_6418:
    nop                                           ; $6418: $00
    rst $38                                       ; $6419: $ff
    dec c                                         ; $641a: $0d
    inc b                                         ; $641b: $04
    ld hl, sp+$08                                 ; $641c: $f8 $08
    ld hl, sp+$02                                 ; $641e: $f8 $02
    pop af                                        ; $6420: $f1
    push af                                       ; $6421: $f5
    ldh a, [$fd]                                  ; $6422: $f0 $fd
    pop af                                        ; $6424: $f1
    inc b                                         ; $6425: $04
    nop                                           ; $6426: $00
    db $fc                                        ; $6427: $fc
    ld [bc], a                                    ; $6428: $02
    inc bc                                        ; $6429: $03
    sub c                                         ; $642a: $91
    inc b                                         ; $642b: $04
    rlca                                          ; $642c: $07
    dec bc                                        ; $642d: $0b
    rrca                                          ; $642e: $0f
    inc e                                         ; $642f: $1c
    inc d                                         ; $6430: $14
    rla                                           ; $6431: $17
    dec de                                        ; $6432: $1b
    dec bc                                        ; $6433: $0b
    inc c                                         ; $6434: $0c
    dec e                                         ; $6435: $1d
    ld e, $23                                     ; $6436: $1e $23
    ccf                                           ; $6438: $3f
    ld e, h                                       ; $6439: $5c
    ld a, h                                       ; $643a: $7c
    and b                                         ; $643b: $a0
    ld [bc], a                                    ; $643c: $02
    ldh [$89], a                                  ; $643d: $e0 $89
    and b                                         ; $643f: $a0
    cp h                                          ; $6440: $bc
    call c, Call_0f7_635f                         ; $6441: $dc $5f $63
    scf                                           ; $6444: $37
    jr z, jr_0f7_6464                             ; $6445: $28 $1d

    ld e, $02                                     ; $6447: $1e $02
    inc bc                                        ; $6449: $03
    ld [bc], a                                    ; $644a: $02
    ld a, h                                       ; $644b: $7c
    add h                                         ; $644c: $84
    add e                                         ; $644d: $83
    rst $38                                       ; $644e: $ff
    ld a, h                                       ; $644f: $7c
    rst $38                                       ; $6450: $ff
    ld [bc], a                                    ; $6451: $02
    add e                                         ; $6452: $83
    ld [bc], a                                    ; $6453: $02
    nop                                           ; $6454: $00
    ld [bc], a                                    ; $6455: $02
    add e                                         ; $6456: $83
    add [hl]                                      ; $6457: $86
    rst $38                                       ; $6458: $ff
    ld a, h                                       ; $6459: $7c
    ld a, l                                       ; $645a: $7d
    add d                                         ; $645b: $82
    rst $10                                       ; $645c: $d7
    xor e                                         ; $645d: $ab
    ld [bc], a                                    ; $645e: $02
    ld a, h                                       ; $645f: $7c
    ld b, $00                                     ; $6460: $06 $00
    inc bc                                        ; $6462: $03
    rst $38                                       ; $6463: $ff

jr_0f7_6464:
    add e                                         ; $6464: $83
    nop                                           ; $6465: $00
    ld d, l                                       ; $6466: $55
    xor d                                         ; $6467: $aa
    ld [bc], a                                    ; $6468: $02
    ld b, b                                       ; $6469: $40
    sub c                                         ; $646a: $91
    jr nz, jr_0f7_64cd                            ; $646b: $20 $60

    ld d, b                                       ; $646d: $50
    ld [hl], b                                    ; $646e: $70
    jr c, jr_0f7_6499                             ; $646f: $38 $28

    ld l, b                                       ; $6471: $68
    ld e, b                                       ; $6472: $58
    ld d, b                                       ; $6473: $50
    jr nc, jr_0f7_64ae                            ; $6474: $30 $38

    ld a, b                                       ; $6476: $78
    ld b, h                                       ; $6477: $44
    ld a, h                                       ; $6478: $7c
    ld a, [hl-]                                   ; $6479: $3a
    ld a, $05                                     ; $647a: $3e $05
    ld [bc], a                                    ; $647c: $02
    rlca                                          ; $647d: $07
    adc c                                         ; $647e: $89
    dec b                                         ; $647f: $05
    dec a                                         ; $6480: $3d
    dec sp                                        ; $6481: $3b
    ld a, d                                       ; $6482: $7a
    ld b, [hl]                                    ; $6483: $46
    ld l, h                                       ; $6484: $6c
    inc d                                         ; $6485: $14
    jr c, @+$7a                                   ; $6486: $38 $78

    ld [bc], a                                    ; $6488: $02
    ret nz                                        ; $6489: $c0

    ld [bc], a                                    ; $648a: $02
    ld a, a                                       ; $648b: $7f
    ld e, $00                                     ; $648c: $1e $00
    rst $38                                       ; $648e: $ff
    ld de, $f806                                  ; $648f: $11 $06 $f8
    ld [$02f8], sp                                ; $6492: $08 $f8 $02
    jp hl                                         ; $6495: $e9


    push af                                       ; $6496: $f5
    add sp, -$03                                  ; $6497: $e8 $fd

jr_0f7_6499:
    jp hl                                         ; $6499: $e9


    inc b                                         ; $649a: $04
    ld hl, sp-$0b                                 ; $649b: $f8 $f5
    ld hl, sp-$03                                 ; $649d: $f8 $fd
    ld hl, sp+$04                                 ; $649f: $f8 $04
    ld [bc], a                                    ; $64a1: $02
    inc bc                                        ; $64a2: $03
    sub c                                         ; $64a3: $91
    inc b                                         ; $64a4: $04
    rlca                                          ; $64a5: $07
    dec bc                                        ; $64a6: $0b
    rrca                                          ; $64a7: $0f
    inc e                                         ; $64a8: $1c
    inc d                                         ; $64a9: $14
    rla                                           ; $64aa: $17
    dec de                                        ; $64ab: $1b
    dec bc                                        ; $64ac: $0b
    inc c                                         ; $64ad: $0c

jr_0f7_64ae:
    dec e                                         ; $64ae: $1d
    ld e, $23                                     ; $64af: $1e $23
    ccf                                           ; $64b1: $3f
    ld e, h                                       ; $64b2: $5c
    ld a, h                                       ; $64b3: $7c
    and b                                         ; $64b4: $a0
    ld [bc], a                                    ; $64b5: $02
    ldh [$8b], a                                  ; $64b6: $e0 $8b
    and b                                         ; $64b8: $a0
    cp h                                          ; $64b9: $bc
    call c, Call_0f7_635f                         ; $64ba: $dc $5f $63
    scf                                           ; $64bd: $37
    jr z, jr_0f7_64dd                             ; $64be: $28 $1d

    ld e, $23                                     ; $64c0: $1e $23
    ccf                                           ; $64c2: $3f
    ld [bc], a                                    ; $64c3: $02
    ld a, h                                       ; $64c4: $7c
    add h                                         ; $64c5: $84
    add e                                         ; $64c6: $83
    rst $38                                       ; $64c7: $ff
    ld a, h                                       ; $64c8: $7c
    rst $38                                       ; $64c9: $ff
    ld [bc], a                                    ; $64ca: $02
    add e                                         ; $64cb: $83
    ld [bc], a                                    ; $64cc: $02

jr_0f7_64cd:
    nop                                           ; $64cd: $00
    ld [bc], a                                    ; $64ce: $02
    add e                                         ; $64cf: $83
    add [hl]                                      ; $64d0: $86
    rst $38                                       ; $64d1: $ff
    ld a, h                                       ; $64d2: $7c
    ld a, l                                       ; $64d3: $7d
    add d                                         ; $64d4: $82
    xor e                                         ; $64d5: $ab
    rst $10                                       ; $64d6: $d7
    ld [bc], a                                    ; $64d7: $02
    ld a, h                                       ; $64d8: $7c
    ld b, $00                                     ; $64d9: $06 $00
    inc bc                                        ; $64db: $03
    rst $38                                       ; $64dc: $ff

jr_0f7_64dd:
    add e                                         ; $64dd: $83
    nop                                           ; $64de: $00
    ld d, l                                       ; $64df: $55
    xor d                                         ; $64e0: $aa
    ld [bc], a                                    ; $64e1: $02
    ld b, b                                       ; $64e2: $40
    sub c                                         ; $64e3: $91
    jr nz, jr_0f7_6546                            ; $64e4: $20 $60

    ld d, b                                       ; $64e6: $50
    ld [hl], b                                    ; $64e7: $70
    jr c, jr_0f7_6512                             ; $64e8: $38 $28

    ld l, b                                       ; $64ea: $68
    ld e, b                                       ; $64eb: $58
    ld d, b                                       ; $64ec: $50
    jr nc, jr_0f7_6527                            ; $64ed: $30 $38

    ld a, b                                       ; $64ef: $78
    ld b, h                                       ; $64f0: $44
    ld a, h                                       ; $64f1: $7c
    ld a, [hl-]                                   ; $64f2: $3a
    ld a, $05                                     ; $64f3: $3e $05
    ld [bc], a                                    ; $64f5: $02
    rlca                                          ; $64f6: $07
    adc e                                         ; $64f7: $8b
    dec b                                         ; $64f8: $05
    dec a                                         ; $64f9: $3d
    dec sp                                        ; $64fa: $3b
    ld a, d                                       ; $64fb: $7a
    ld b, [hl]                                    ; $64fc: $46
    ld l, h                                       ; $64fd: $6c
    inc d                                         ; $64fe: $14
    jr c, jr_0f7_6579                             ; $64ff: $38 $78

    call nz, Call_000_02fc                        ; $6501: $c4 $fc $02
    nop                                           ; $6504: $00
    add e                                         ; $6505: $83
    ld e, h                                       ; $6506: $5c
    ld a, h                                       ; $6507: $7c
    and b                                         ; $6508: $a0
    ld [bc], a                                    ; $6509: $02
    ldh [$89], a                                  ; $650a: $e0 $89
    and b                                         ; $650c: $a0
    cp h                                          ; $650d: $bc
    call c, Call_0f7_635f                         ; $650e: $dc $5f $63
    dec hl                                        ; $6511: $2b

jr_0f7_6512:
    inc [hl]                                      ; $6512: $34
    ld e, $1d                                     ; $6513: $1e $1d
    ld [bc], a                                    ; $6515: $02
    inc bc                                        ; $6516: $03
    ld c, $00                                     ; $6517: $0e $00
    ld [bc], a                                    ; $6519: $02
    cp $08                                        ; $651a: $fe $08
    nop                                           ; $651c: $00
    inc bc                                        ; $651d: $03
    rst $38                                       ; $651e: $ff
    add e                                         ; $651f: $83
    nop                                           ; $6520: $00
    xor d                                         ; $6521: $aa
    ld d, l                                       ; $6522: $55
    ld [bc], a                                    ; $6523: $02
    rst $38                                       ; $6524: $ff
    stop                                          ; $6525: $10 $00

jr_0f7_6527:
    add e                                         ; $6527: $83
    ld a, [hl-]                                   ; $6528: $3a
    ld a, $05                                     ; $6529: $3e $05
    ld [bc], a                                    ; $652b: $02
    rlca                                          ; $652c: $07
    adc c                                         ; $652d: $89
    dec b                                         ; $652e: $05
    dec a                                         ; $652f: $3d
    dec sp                                        ; $6530: $3b
    ld a, d                                       ; $6531: $7a
    ld b, [hl]                                    ; $6532: $46
    ld d, h                                       ; $6533: $54
    inc l                                         ; $6534: $2c
    ld a, b                                       ; $6535: $78
    jr c, @+$04                                   ; $6536: $38 $02

    ld b, b                                       ; $6538: $40
    ld c, $00                                     ; $6539: $0e $00
    rst $38                                       ; $653b: $ff
    inc de                                        ; $653c: $13
    rlca                                          ; $653d: $07
    ld hl, sp+$08                                 ; $653e: $f8 $08
    ld hl, sp+$02                                 ; $6540: $f8 $02
    pop hl                                        ; $6542: $e1
    push af                                       ; $6543: $f5
    ldh [$fd], a                                  ; $6544: $e0 $fd

jr_0f7_6546:
    pop hl                                        ; $6546: $e1
    inc b                                         ; $6547: $04
    pop af                                        ; $6548: $f1
    push af                                       ; $6549: $f5
    ldh a, [$fd]                                  ; $654a: $f0 $fd
    pop af                                        ; $654c: $f1
    inc b                                         ; $654d: $04
    nop                                           ; $654e: $00
    db $fc                                        ; $654f: $fc
    ld [bc], a                                    ; $6550: $02
    inc bc                                        ; $6551: $03
    sub c                                         ; $6552: $91
    inc b                                         ; $6553: $04
    rlca                                          ; $6554: $07
    dec bc                                        ; $6555: $0b
    rrca                                          ; $6556: $0f
    inc e                                         ; $6557: $1c
    inc d                                         ; $6558: $14
    rla                                           ; $6559: $17
    dec de                                        ; $655a: $1b
    dec bc                                        ; $655b: $0b
    inc c                                         ; $655c: $0c
    dec e                                         ; $655d: $1d
    ld e, $23                                     ; $655e: $1e $23
    ccf                                           ; $6560: $3f
    ld e, h                                       ; $6561: $5c
    ld a, h                                       ; $6562: $7c
    and b                                         ; $6563: $a0
    ld [bc], a                                    ; $6564: $02
    ldh [$8b], a                                  ; $6565: $e0 $8b
    and b                                         ; $6567: $a0
    cp h                                          ; $6568: $bc
    call c, Call_0f7_635f                         ; $6569: $dc $5f $63
    scf                                           ; $656c: $37
    jr z, jr_0f7_658c                             ; $656d: $28 $1d

    ld e, $23                                     ; $656f: $1e $23
    ccf                                           ; $6571: $3f
    ld [bc], a                                    ; $6572: $02
    ld a, h                                       ; $6573: $7c
    add h                                         ; $6574: $84
    add e                                         ; $6575: $83
    rst $38                                       ; $6576: $ff
    ld a, h                                       ; $6577: $7c
    rst $38                                       ; $6578: $ff

jr_0f7_6579:
    ld [bc], a                                    ; $6579: $02
    add e                                         ; $657a: $83
    ld [bc], a                                    ; $657b: $02
    nop                                           ; $657c: $00
    ld [bc], a                                    ; $657d: $02
    add e                                         ; $657e: $83
    add [hl]                                      ; $657f: $86
    rst $38                                       ; $6580: $ff
    ld a, h                                       ; $6581: $7c
    ld a, l                                       ; $6582: $7d
    add d                                         ; $6583: $82
    rst $10                                       ; $6584: $d7
    xor e                                         ; $6585: $ab
    ld [bc], a                                    ; $6586: $02
    ld a, h                                       ; $6587: $7c
    ld b, $00                                     ; $6588: $06 $00
    inc bc                                        ; $658a: $03
    rst $38                                       ; $658b: $ff

jr_0f7_658c:
    add e                                         ; $658c: $83
    nop                                           ; $658d: $00
    ld d, l                                       ; $658e: $55
    xor d                                         ; $658f: $aa
    ld [bc], a                                    ; $6590: $02
    ld b, b                                       ; $6591: $40
    sub c                                         ; $6592: $91
    jr nz, jr_0f7_65f5                            ; $6593: $20 $60

    ld d, b                                       ; $6595: $50
    ld [hl], b                                    ; $6596: $70
    jr c, jr_0f7_65c1                             ; $6597: $38 $28

    ld l, b                                       ; $6599: $68
    ld e, b                                       ; $659a: $58
    ld d, b                                       ; $659b: $50
    jr nc, @+$3a                                  ; $659c: $30 $38

    ld a, b                                       ; $659e: $78
    ld b, h                                       ; $659f: $44
    ld a, h                                       ; $65a0: $7c
    ld a, [hl-]                                   ; $65a1: $3a
    ld a, $05                                     ; $65a2: $3e $05
    ld [bc], a                                    ; $65a4: $02
    rlca                                          ; $65a5: $07
    adc [hl]                                      ; $65a6: $8e
    dec b                                         ; $65a7: $05
    dec a                                         ; $65a8: $3d
    dec sp                                        ; $65a9: $3b
    ld a, d                                       ; $65aa: $7a
    ld b, [hl]                                    ; $65ab: $46
    ld l, h                                       ; $65ac: $6c
    inc d                                         ; $65ad: $14
    jr c, jr_0f7_6628                             ; $65ae: $38 $78

    call nz, Call_0f7_5cfc                        ; $65b0: $c4 $fc $5c
    ld a, h                                       ; $65b3: $7c
    and b                                         ; $65b4: $a0
    ld [bc], a                                    ; $65b5: $02
    ldh [$8e], a                                  ; $65b6: $e0 $8e
    and b                                         ; $65b8: $a0
    cp h                                          ; $65b9: $bc
    call c, Call_0f7_635f                         ; $65ba: $dc $5f $63
    dec hl                                        ; $65bd: $2b
    inc [hl]                                      ; $65be: $34
    ld e, $1d                                     ; $65bf: $1e $1d

jr_0f7_65c1:
    inc hl                                        ; $65c1: $23
    ccf                                           ; $65c2: $3f
    ld e, h                                       ; $65c3: $5c
    ld a, h                                       ; $65c4: $7c
    and b                                         ; $65c5: $a0
    ld [bc], a                                    ; $65c6: $02
    ldh [$89], a                                  ; $65c7: $e0 $89
    and b                                         ; $65c9: $a0
    cp h                                          ; $65ca: $bc
    call c, Call_0f7_635f                         ; $65cb: $dc $5f $63
    scf                                           ; $65ce: $37
    jr z, jr_0f7_65ee                             ; $65cf: $28 $1d

    ld e, $02                                     ; $65d1: $1e $02
    inc bc                                        ; $65d3: $03
    ld [bc], a                                    ; $65d4: $02
    cp $08                                        ; $65d5: $fe $08
    nop                                           ; $65d7: $00
    inc bc                                        ; $65d8: $03
    rst $38                                       ; $65d9: $ff
    add e                                         ; $65da: $83
    nop                                           ; $65db: $00
    xor d                                         ; $65dc: $aa
    ld d, l                                       ; $65dd: $55
    ld [bc], a                                    ; $65de: $02
    rst $38                                       ; $65df: $ff
    ld [$0300], sp                                ; $65e0: $08 $00 $03
    rst $38                                       ; $65e3: $ff
    add [hl]                                      ; $65e4: $86
    nop                                           ; $65e5: $00
    ld d, l                                       ; $65e6: $55
    xor d                                         ; $65e7: $aa
    ld a, [hl-]                                   ; $65e8: $3a
    ld a, $05                                     ; $65e9: $3e $05
    ld [bc], a                                    ; $65eb: $02
    rlca                                          ; $65ec: $07
    adc [hl]                                      ; $65ed: $8e

jr_0f7_65ee:
    dec b                                         ; $65ee: $05
    dec a                                         ; $65ef: $3d
    dec sp                                        ; $65f0: $3b
    ld a, d                                       ; $65f1: $7a
    ld b, [hl]                                    ; $65f2: $46
    ld d, h                                       ; $65f3: $54
    inc l                                         ; $65f4: $2c

jr_0f7_65f5:
    ld a, b                                       ; $65f5: $78
    jr c, jr_0f7_663c                             ; $65f6: $38 $44

    ld a, h                                       ; $65f8: $7c
    ld a, [hl-]                                   ; $65f9: $3a
    ld a, $05                                     ; $65fa: $3e $05
    ld [bc], a                                    ; $65fc: $02
    rlca                                          ; $65fd: $07
    adc c                                         ; $65fe: $89
    dec b                                         ; $65ff: $05
    dec a                                         ; $6600: $3d
    dec sp                                        ; $6601: $3b
    ld a, d                                       ; $6602: $7a
    ld b, [hl]                                    ; $6603: $46
    ld l, h                                       ; $6604: $6c
    inc d                                         ; $6605: $14
    jr c, jr_0f7_6680                             ; $6606: $38 $78

    ld [bc], a                                    ; $6608: $02
    ret nz                                        ; $6609: $c0

    ld [bc], a                                    ; $660a: $02
    ld a, a                                       ; $660b: $7f
    ld e, $00                                     ; $660c: $1e $00
    rst $38                                       ; $660e: $ff
    inc de                                        ; $660f: $13
    rlca                                          ; $6610: $07
    ld hl, sp+$08                                 ; $6611: $f8 $08
    ld hl, sp+$02                                 ; $6613: $f8 $02
    pop hl                                        ; $6615: $e1
    push af                                       ; $6616: $f5
    ldh [$fd], a                                  ; $6617: $e0 $fd
    pop hl                                        ; $6619: $e1
    inc b                                         ; $661a: $04
    pop af                                        ; $661b: $f1
    push af                                       ; $661c: $f5
    ldh a, [$fd]                                  ; $661d: $f0 $fd
    pop af                                        ; $661f: $f1
    inc b                                         ; $6620: $04
    nop                                           ; $6621: $00
    ei                                            ; $6622: $fb
    ld [bc], a                                    ; $6623: $02
    inc bc                                        ; $6624: $03
    sub c                                         ; $6625: $91
    inc b                                         ; $6626: $04
    rlca                                          ; $6627: $07

jr_0f7_6628:
    dec bc                                        ; $6628: $0b
    rrca                                          ; $6629: $0f
    inc e                                         ; $662a: $1c
    inc d                                         ; $662b: $14
    rla                                           ; $662c: $17
    dec de                                        ; $662d: $1b
    dec bc                                        ; $662e: $0b
    inc c                                         ; $662f: $0c
    dec e                                         ; $6630: $1d
    ld e, $23                                     ; $6631: $1e $23
    ccf                                           ; $6633: $3f
    ld e, h                                       ; $6634: $5c
    ld a, h                                       ; $6635: $7c
    and b                                         ; $6636: $a0
    ld [bc], a                                    ; $6637: $02
    ldh [$8b], a                                  ; $6638: $e0 $8b
    and b                                         ; $663a: $a0
    cp h                                          ; $663b: $bc

jr_0f7_663c:
    call c, Call_0f7_635f                         ; $663c: $dc $5f $63
    dec hl                                        ; $663f: $2b
    inc [hl]                                      ; $6640: $34
    ld e, $1d                                     ; $6641: $1e $1d
    inc hl                                        ; $6643: $23
    ccf                                           ; $6644: $3f
    ld [bc], a                                    ; $6645: $02
    ld a, h                                       ; $6646: $7c
    add h                                         ; $6647: $84

jr_0f7_6648:
    add e                                         ; $6648: $83
    rst $38                                       ; $6649: $ff
    ld a, h                                       ; $664a: $7c
    rst $38                                       ; $664b: $ff
    ld [bc], a                                    ; $664c: $02
    add e                                         ; $664d: $83
    ld [bc], a                                    ; $664e: $02
    nop                                           ; $664f: $00
    ld [bc], a                                    ; $6650: $02
    add e                                         ; $6651: $83
    add [hl]                                      ; $6652: $86
    rst $38                                       ; $6653: $ff
    ld a, h                                       ; $6654: $7c
    ld a, l                                       ; $6655: $7d
    add d                                         ; $6656: $82
    rst $10                                       ; $6657: $d7
    xor e                                         ; $6658: $ab
    ld [bc], a                                    ; $6659: $02
    ld a, h                                       ; $665a: $7c
    ld b, $00                                     ; $665b: $06 $00
    inc bc                                        ; $665d: $03
    rst $38                                       ; $665e: $ff
    add e                                         ; $665f: $83
    nop                                           ; $6660: $00
    xor d                                         ; $6661: $aa
    ld d, l                                       ; $6662: $55
    ld [bc], a                                    ; $6663: $02
    ld b, b                                       ; $6664: $40
    sub c                                         ; $6665: $91
    jr nz, jr_0f7_66c8                            ; $6666: $20 $60

    ld d, b                                       ; $6668: $50
    ld [hl], b                                    ; $6669: $70
    jr c, @+$2a                                   ; $666a: $38 $28

    ld l, b                                       ; $666c: $68
    ld e, b                                       ; $666d: $58
    ld d, b                                       ; $666e: $50
    jr nc, @+$3a                                  ; $666f: $30 $38

    ld a, b                                       ; $6671: $78
    ld b, h                                       ; $6672: $44
    ld a, h                                       ; $6673: $7c
    ld a, [hl-]                                   ; $6674: $3a
    ld a, $05                                     ; $6675: $3e $05
    ld [bc], a                                    ; $6677: $02
    rlca                                          ; $6678: $07
    adc [hl]                                      ; $6679: $8e
    dec b                                         ; $667a: $05
    dec a                                         ; $667b: $3d
    dec sp                                        ; $667c: $3b
    ld a, d                                       ; $667d: $7a
    ld b, [hl]                                    ; $667e: $46
    ld d, h                                       ; $667f: $54

jr_0f7_6680:
    inc l                                         ; $6680: $2c
    ld a, b                                       ; $6681: $78
    jr c, jr_0f7_6648                             ; $6682: $38 $c4

    db $fc                                        ; $6684: $fc
    ld e, h                                       ; $6685: $5c
    ld a, h                                       ; $6686: $7c
    and b                                         ; $6687: $a0
    ld [bc], a                                    ; $6688: $02
    ldh [$89], a                                  ; $6689: $e0 $89
    and b                                         ; $668b: $a0
    cp h                                          ; $668c: $bc
    call c, Call_0f7_635f                         ; $668d: $dc $5f $63
    scf                                           ; $6690: $37
    jr z, jr_0f7_66b0                             ; $6691: $28 $1d

    ld e, $02                                     ; $6693: $1e $02
    inc bc                                        ; $6695: $03
    adc h                                         ; $6696: $8c
    inc b                                         ; $6697: $04
    rlca                                          ; $6698: $07
    dec bc                                        ; $6699: $0b
    rrca                                          ; $669a: $0f
    inc e                                         ; $669b: $1c
    inc d                                         ; $669c: $14
    rla                                           ; $669d: $17
    dec de                                        ; $669e: $1b
    dec bc                                        ; $669f: $0b
    inc c                                         ; $66a0: $0c
    dec b                                         ; $66a1: $05
    ld b, $02                                     ; $66a2: $06 $02
    inc bc                                        ; $66a4: $03
    ld [bc], a                                    ; $66a5: $02
    nop                                           ; $66a6: $00
    ld [bc], a                                    ; $66a7: $02
    cp $08                                        ; $66a8: $fe $08
    nop                                           ; $66aa: $00
    inc bc                                        ; $66ab: $03
    rst $38                                       ; $66ac: $ff
    add e                                         ; $66ad: $83
    nop                                           ; $66ae: $00
    ld d, l                                       ; $66af: $55

jr_0f7_66b0:
    xor d                                         ; $66b0: $aa
    ld [bc], a                                    ; $66b1: $02
    rst $38                                       ; $66b2: $ff
    add d                                         ; $66b3: $82
    ld a, h                                       ; $66b4: $7c
    rst $38                                       ; $66b5: $ff
    ld [bc], a                                    ; $66b6: $02
    add e                                         ; $66b7: $83
    ld [bc], a                                    ; $66b8: $02
    nop                                           ; $66b9: $00
    ld [bc], a                                    ; $66ba: $02
    add e                                         ; $66bb: $83
    adc c                                         ; $66bc: $89
    rst $38                                       ; $66bd: $ff
    ld a, h                                       ; $66be: $7c
    ld a, l                                       ; $66bf: $7d
    add d                                         ; $66c0: $82
    xor e                                         ; $66c1: $ab
    rst $10                                       ; $66c2: $d7
    ld a, [hl-]                                   ; $66c3: $3a
    ld a, $05                                     ; $66c4: $3e $05
    ld [bc], a                                    ; $66c6: $02
    rlca                                          ; $66c7: $07

jr_0f7_66c8:
    adc c                                         ; $66c8: $89
    dec b                                         ; $66c9: $05
    dec a                                         ; $66ca: $3d
    dec sp                                        ; $66cb: $3b
    ld a, d                                       ; $66cc: $7a
    ld b, [hl]                                    ; $66cd: $46
    ld l, h                                       ; $66ce: $6c
    inc d                                         ; $66cf: $14
    jr c, jr_0f7_674a                             ; $66d0: $38 $78

    ld [bc], a                                    ; $66d2: $02
    ld b, b                                       ; $66d3: $40
    adc h                                         ; $66d4: $8c
    jr nz, jr_0f7_6737                            ; $66d5: $20 $60

    ld d, b                                       ; $66d7: $50
    ld [hl], b                                    ; $66d8: $70
    jr c, jr_0f7_6703                             ; $66d9: $38 $28

    ld l, b                                       ; $66db: $68
    ld e, b                                       ; $66dc: $58
    ld d, b                                       ; $66dd: $50
    jr nc, jr_0f7_6700                            ; $66de: $30 $20

    ld h, b                                       ; $66e0: $60
    ld [bc], a                                    ; $66e1: $02
    ld b, b                                       ; $66e2: $40
    ld [bc], a                                    ; $66e3: $02
    nop                                           ; $66e4: $00
    ld [bc], a                                    ; $66e5: $02
    rra                                           ; $66e6: $1f
    ld e, $00                                     ; $66e7: $1e $00
    rst $38                                       ; $66e9: $ff
    ld de, $f806                                  ; $66ea: $11 $06 $f8
    ld [$02f8], sp                                ; $66ed: $08 $f8 $02
    pop hl                                        ; $66f0: $e1
    push af                                       ; $66f1: $f5
    ldh [$fd], a                                  ; $66f2: $e0 $fd
    pop hl                                        ; $66f4: $e1
    inc b                                         ; $66f5: $04
    ldh a, [$f8]                                  ; $66f6: $f0 $f8
    ldh a, [rP1]                                  ; $66f8: $f0 $00
    ldh a, [rSB]                                  ; $66fa: $f0 $01
    ld [bc], a                                    ; $66fc: $02
    inc bc                                        ; $66fd: $03
    sub c                                         ; $66fe: $91
    inc b                                         ; $66ff: $04

jr_0f7_6700:
    rlca                                          ; $6700: $07
    dec bc                                        ; $6701: $0b
    rrca                                          ; $6702: $0f

jr_0f7_6703:
    inc e                                         ; $6703: $1c
    inc d                                         ; $6704: $14
    rla                                           ; $6705: $17
    dec de                                        ; $6706: $1b
    dec bc                                        ; $6707: $0b
    inc c                                         ; $6708: $0c
    dec e                                         ; $6709: $1d
    ld e, $23                                     ; $670a: $1e $23
    ccf                                           ; $670c: $3f
    ld e, h                                       ; $670d: $5c
    ld a, h                                       ; $670e: $7c
    and b                                         ; $670f: $a0
    ld [bc], a                                    ; $6710: $02
    ldh [$89], a                                  ; $6711: $e0 $89
    and b                                         ; $6713: $a0
    cp h                                          ; $6714: $bc
    call c, Call_0f7_635f                         ; $6715: $dc $5f $63
    inc hl                                        ; $6718: $23
    inc a                                         ; $6719: $3c
    inc e                                         ; $671a: $1c
    rra                                           ; $671b: $1f
    ld [bc], a                                    ; $671c: $02
    inc bc                                        ; $671d: $03
    ld [bc], a                                    ; $671e: $02
    ld a, h                                       ; $671f: $7c
    add h                                         ; $6720: $84
    add e                                         ; $6721: $83
    rst $38                                       ; $6722: $ff
    ld a, h                                       ; $6723: $7c
    rst $38                                       ; $6724: $ff
    ld [bc], a                                    ; $6725: $02
    add e                                         ; $6726: $83
    ld [bc], a                                    ; $6727: $02
    nop                                           ; $6728: $00
    ld [bc], a                                    ; $6729: $02
    add e                                         ; $672a: $83
    add [hl]                                      ; $672b: $86
    rst $38                                       ; $672c: $ff
    ld a, h                                       ; $672d: $7c
    ld a, l                                       ; $672e: $7d
    add d                                         ; $672f: $82
    rst $10                                       ; $6730: $d7
    xor e                                         ; $6731: $ab
    ld [bc], a                                    ; $6732: $02
    ld a, h                                       ; $6733: $7c
    ld b, $00                                     ; $6734: $06 $00
    inc bc                                        ; $6736: $03

jr_0f7_6737:
    rst $38                                       ; $6737: $ff
    ld [bc], a                                    ; $6738: $02
    nop                                           ; $6739: $00
    add c                                         ; $673a: $81
    rst $38                                       ; $673b: $ff
    ld [bc], a                                    ; $673c: $02
    ld b, b                                       ; $673d: $40
    sub c                                         ; $673e: $91
    jr nz, jr_0f7_67a1                            ; $673f: $20 $60

    ld d, b                                       ; $6741: $50
    ld [hl], b                                    ; $6742: $70
    jr c, jr_0f7_676d                             ; $6743: $38 $28

    ld l, b                                       ; $6745: $68
    ld e, b                                       ; $6746: $58
    ld d, b                                       ; $6747: $50
    jr nc, @+$3a                                  ; $6748: $30 $38

jr_0f7_674a:
    ld a, b                                       ; $674a: $78
    ld b, h                                       ; $674b: $44
    ld a, h                                       ; $674c: $7c
    ld a, [hl-]                                   ; $674d: $3a
    ld a, $05                                     ; $674e: $3e $05
    ld [bc], a                                    ; $6750: $02
    rlca                                          ; $6751: $07
    adc c                                         ; $6752: $89
    dec b                                         ; $6753: $05
    dec a                                         ; $6754: $3d
    dec sp                                        ; $6755: $3b
    ld a, d                                       ; $6756: $7a
    ld b, [hl]                                    ; $6757: $46
    ld b, h                                       ; $6758: $44
    inc a                                         ; $6759: $3c
    jr c, jr_0f7_67d4                             ; $675a: $38 $78

    ld [bc], a                                    ; $675c: $02
    ret nz                                        ; $675d: $c0

    ld [bc], a                                    ; $675e: $02
    rlca                                          ; $675f: $07
    adc [hl]                                      ; $6760: $8e
    inc hl                                        ; $6761: $23
    ccf                                           ; $6762: $3f
    ld e, h                                       ; $6763: $5c
    ld a, h                                       ; $6764: $7c
    ldh [$a0], a                                  ; $6765: $e0 $a0
    cp h                                          ; $6767: $bc
    call c, Call_0f7_635f                         ; $6768: $dc $5f $63
    dec hl                                        ; $676b: $2b
    inc [hl]                                      ; $676c: $34

jr_0f7_676d:
    dec e                                         ; $676d: $1d
    ld e, $02                                     ; $676e: $1e $02
    inc bc                                        ; $6770: $03
    ld c, $00                                     ; $6771: $0e $00
    ld [bc], a                                    ; $6773: $02
    ldh a, [$8e]                                  ; $6774: $f0 $8e
    ld [c], a                                     ; $6776: $e2
    cp $1d                                        ; $6777: $fe $1d
    rra                                           ; $6779: $1f
    inc bc                                        ; $677a: $03
    ld [bc], a                                    ; $677b: $02
    ld e, $1d                                     ; $677c: $1e $1d
    db $fd                                        ; $677e: $fd
    db $e3                                        ; $677f: $e3
    ld [$5c16], a                                 ; $6780: $ea $16 $5c
    cp h                                          ; $6783: $bc
    ld [bc], a                                    ; $6784: $02
    ldh [rNR14], a                                ; $6785: $e0 $14
    nop                                           ; $6787: $00
    inc b                                         ; $6788: $04
    ld bc, $0016                                  ; $6789: $01 $16 $00
    rst $38                                       ; $678c: $ff
    dec c                                         ; $678d: $0d
    inc b                                         ; $678e: $04
    ld hl, sp+$08                                 ; $678f: $f8 $08
    ld hl, sp+$02                                 ; $6791: $f8 $02
    ldh [$f8], a                                  ; $6793: $e0 $f8
    ldh [rP1], a                                  ; $6795: $e0 $00
    db $e4                                        ; $6797: $e4
    ld bc, $f9f0                                  ; $6798: $01 $f0 $f9
    ld [bc], a                                    ; $679b: $02
    inc bc                                        ; $679c: $03
    sbc [hl]                                      ; $679d: $9e
    inc e                                         ; $679e: $1c
    rra                                           ; $679f: $1f
    inc hl                                        ; $67a0: $23

jr_0f7_67a1:
    ccf                                           ; $67a1: $3f
    ld e, h                                       ; $67a2: $5c
    ld a, h                                       ; $67a3: $7c
    ldh [$a0], a                                  ; $67a4: $e0 $a0
    cp h                                          ; $67a6: $bc
    call c, Call_0f7_635f                         ; $67a7: $dc $5f $63
    dec hl                                        ; $67aa: $2b
    inc [hl]                                      ; $67ab: $34
    ld e, $1d                                     ; $67ac: $1e $1d
    inc hl                                        ; $67ae: $23
    ccf                                           ; $67af: $3f
    ld e, h                                       ; $67b0: $5c
    ld a, h                                       ; $67b1: $7c
    ldh [$a0], a                                  ; $67b2: $e0 $a0
    cp h                                          ; $67b4: $bc
    call c, Call_0f7_635f                         ; $67b5: $dc $5f $63
    dec hl                                        ; $67b8: $2b
    inc [hl]                                      ; $67b9: $34
    dec e                                         ; $67ba: $1d
    ld e, $02                                     ; $67bb: $1e $02
    ldh [$9e], a                                  ; $67bd: $e0 $9e
    inc e                                         ; $67bf: $1c
    db $fc                                        ; $67c0: $fc
    ld [c], a                                     ; $67c1: $e2
    cp $1d                                        ; $67c2: $fe $1d
    rra                                           ; $67c4: $1f
    inc bc                                        ; $67c5: $03
    ld [bc], a                                    ; $67c6: $02
    ld e, $1d                                     ; $67c7: $1e $1d
    db $fd                                        ; $67c9: $fd
    db $e3                                        ; $67ca: $e3
    ld [$bc16], a                                 ; $67cb: $ea $16 $bc
    ld e, h                                       ; $67ce: $5c
    ld [c], a                                     ; $67cf: $e2
    cp $1d                                        ; $67d0: $fe $1d
    rra                                           ; $67d2: $1f
    inc bc                                        ; $67d3: $03

jr_0f7_67d4:
    ld [bc], a                                    ; $67d4: $02
    ld e, $1d                                     ; $67d5: $1e $1d
    db $fd                                        ; $67d7: $fd
    db $e3                                        ; $67d8: $e3
    ld [$5c16], a                                 ; $67d9: $ea $16 $5c
    cp h                                          ; $67dc: $bc
    inc b                                         ; $67dd: $04
    ld bc, $000a                                  ; $67de: $01 $0a $00
    inc b                                         ; $67e1: $04
    ld bc, $0006                                  ; $67e2: $01 $06 $00
    ld [bc], a                                    ; $67e5: $02
    ret nz                                        ; $67e6: $c0

    ld b, $00                                     ; $67e7: $06 $00
    ld [bc], a                                    ; $67e9: $02
    rlca                                          ; $67ea: $07
    ld e, $00                                     ; $67eb: $1e $00
    rst $38                                       ; $67ed: $ff
    dec bc                                        ; $67ee: $0b
    inc bc                                        ; $67ef: $03
    ld hl, sp+$08                                 ; $67f0: $f8 $08
    ld hl, sp+$02                                 ; $67f2: $f8 $02
    ldh [$f8], a                                  ; $67f4: $e0 $f8
    ldh [rP1], a                                  ; $67f6: $e0 $00
    ldh [rSB], a                                  ; $67f8: $e0 $01
    ld [bc], a                                    ; $67fa: $02
    inc bc                                        ; $67fb: $03
    sub b                                         ; $67fc: $90
    inc e                                         ; $67fd: $1c
    rra                                           ; $67fe: $1f
    inc hl                                        ; $67ff: $23
    ccf                                           ; $6800: $3f
    ld e, h                                       ; $6801: $5c

Call_0f7_6802:
    ld a, h                                       ; $6802: $7c
    ldh [$a0], a                                  ; $6803: $e0 $a0
    cp h                                          ; $6805: $bc
    call c, Call_0f7_635f                         ; $6806: $dc $5f $63
    dec hl                                        ; $6809: $2b
    inc [hl]                                      ; $680a: $34
    dec e                                         ; $680b: $1d
    ld e, $02                                     ; $680c: $1e $02
    inc bc                                        ; $680e: $03
    inc c                                         ; $680f: $0c
    nop                                           ; $6810: $00
    ld [bc], a                                    ; $6811: $02
    ldh [$90], a                                  ; $6812: $e0 $90
    inc e                                         ; $6814: $1c
    db $fc                                        ; $6815: $fc
    ld [c], a                                     ; $6816: $e2
    cp $1d                                        ; $6817: $fe $1d
    rra                                           ; $6819: $1f
    inc bc                                        ; $681a: $03
    ld [bc], a                                    ; $681b: $02
    ld e, $1d                                     ; $681c: $1e $1d
    db $fd                                        ; $681e: $fd
    db $e3                                        ; $681f: $e3
    ld [$5c16], a                                 ; $6820: $ea $16 $5c
    cp h                                          ; $6823: $bc
    ld [bc], a                                    ; $6824: $02
    ldh [rNR14], a                                ; $6825: $e0 $14
    nop                                           ; $6827: $00
    inc b                                         ; $6828: $04
    ld bc, $0014                                  ; $6829: $01 $14 $00
    rst $38                                       ; $682c: $ff
    add hl, bc                                    ; $682d: $09
    ld [bc], a                                    ; $682e: $02
    ld hl, sp+$08                                 ; $682f: $f8 $08
    ld hl, sp+$02                                 ; $6831: $f8 $02
    pop hl                                        ; $6833: $e1
    ld a, [$ffe1]                                 ; $6834: $fa $e1 $ff
    ld [bc], a                                    ; $6837: $02
    rrca                                          ; $6838: $0f
    adc h                                         ; $6839: $8c
    jr nc, @+$41                                  ; $683a: $30 $3f

    ld c, b                                       ; $683c: $48
    ld a, b                                       ; $683d: $78
    cp b                                          ; $683e: $b8
    ret c                                         ; $683f: $d8

    ld e, a                                       ; $6840: $5f
    ld h, a                                       ; $6841: $67
    daa                                           ; $6842: $27
    jr c, jr_0f7_685d                             ; $6843: $38 $18

    rra                                           ; $6845: $1f
    ld [bc], a                                    ; $6846: $02
    rlca                                          ; $6847: $07
    stop                                          ; $6848: $10 $00
    ld [bc], a                                    ; $684a: $02
    db $10                                        ; $684b: $10
    adc d                                         ; $684c: $8a
    ld [$1218], sp                                ; $684d: $08 $18 $12
    ld e, $1d                                     ; $6850: $1e $1d
    dec de                                        ; $6852: $1b
    ld a, [de]                                    ; $6853: $1a
    ld b, $04                                     ; $6854: $06 $04
    inc e                                         ; $6856: $1c
    ld [bc], a                                    ; $6857: $02
    jr jr_0f7_686c                                ; $6858: $18 $12

    nop                                           ; $685a: $00
    rst $38                                       ; $685b: $ff
    rlca                                          ; $685c: $07

jr_0f7_685d:
    ld bc, $03fd                                  ; $685d: $01 $fd $03
    ei                                            ; $6860: $fb
    inc b                                         ; $6861: $04
    cp $fc                                        ; $6862: $fe $fc
    adc h                                         ; $6864: $8c
    nop                                           ; $6865: $00
    ld a, [de]                                    ; $6866: $1a
    jr jr_0f7_688f                                ; $6867: $18 $26

    inc d                                         ; $6869: $14
    dec hl                                        ; $686a: $2b
    ld [bc], a                                    ; $686b: $02

jr_0f7_686c:
    ld e, l                                       ; $686c: $5d
    inc c                                         ; $686d: $0c
    ld [de], a                                    ; $686e: $12
    nop                                           ; $686f: $00
    dec c                                         ; $6870: $0d
    inc d                                         ; $6871: $14
    nop                                           ; $6872: $00
    rst $38                                       ; $6873: $ff
    rlca                                          ; $6874: $07
    ld bc, $03fd                                  ; $6875: $01 $fd $03
    ei                                            ; $6878: $fb
    inc b                                         ; $6879: $04
    cp $fd                                        ; $687a: $fe $fd
    adc [hl]                                      ; $687c: $8e
    nop                                           ; $687d: $00
    ld d, $10                                     ; $687e: $16 $10
    inc l                                         ; $6880: $2c
    jr z, jr_0f7_68da                             ; $6881: $28 $57

    inc b                                         ; $6883: $04
    ld a, [hl-]                                   ; $6884: $3a
    inc e                                         ; $6885: $1c
    ld [hl+], a                                   ; $6886: $22
    nop                                           ; $6887: $00
    ld e, h                                       ; $6888: $5c
    nop                                           ; $6889: $00
    ld [bc], a                                    ; $688a: $02
    ld [de], a                                    ; $688b: $12
    nop                                           ; $688c: $00
    rst $38                                       ; $688d: $ff
    rlca                                          ; $688e: $07

jr_0f7_688f:
    ld bc, $03fd                                  ; $688f: $01 $fd $03
    ei                                            ; $6892: $fb
    inc b                                         ; $6893: $04
    db $fd                                        ; $6894: $fd
    db $fd                                        ; $6895: $fd
    adc [hl]                                      ; $6896: $8e
    nop                                           ; $6897: $00
    inc [hl]                                      ; $6898: $34
    jr nc, @+$51                                  ; $6899: $30 $4f

    ld [hl+], a                                   ; $689b: $22
    ld e, c                                       ; $689c: $59
    nop                                           ; $689d: $00
    ld a, $0c                                     ; $689e: $3e $0c
    ld [hl], e                                    ; $68a0: $73
    inc c                                         ; $68a1: $0c
    ld [de], a                                    ; $68a2: $12
    nop                                           ; $68a3: $00
    inc l                                         ; $68a4: $2c
    ld [de], a                                    ; $68a5: $12
    nop                                           ; $68a6: $00
    rst $38                                       ; $68a7: $ff
    add hl, bc                                    ; $68a8: $09
    ld [bc], a                                    ; $68a9: $02
    db $fd                                        ; $68aa: $fd
    inc bc                                        ; $68ab: $03
    ei                                            ; $68ac: $fb
    inc b                                         ; $68ad: $04
    ei                                            ; $68ae: $fb
    ei                                            ; $68af: $fb
    ei                                            ; $68b0: $fb
    rst $38                                       ; $68b1: $ff
    sub [hl]                                      ; $68b2: $96
    nop                                           ; $68b3: $00
    dec l                                         ; $68b4: $2d
    inc c                                         ; $68b5: $0c
    inc de                                        ; $68b6: $13
    inc c                                         ; $68b7: $0c
    ld [hl-], a                                   ; $68b8: $32
    jr z, jr_0f7_6912                             ; $68b9: $28 $57

    ld b, $f9                                     ; $68bb: $06 $f9
    scf                                           ; $68bd: $37
    ld c, b                                       ; $68be: $48
    ld sp, $0c4e                                  ; $68bf: $31 $4e $0c
    inc sp                                        ; $68c2: $33
    ld b, $49                                     ; $68c3: $06 $49
    ld b, $19                                     ; $68c5: $06 $19
    nop                                           ; $68c7: $00
    ld b, $0d                                     ; $68c8: $06 $0d
    nop                                           ; $68ca: $00
    sub e                                         ; $68cb: $93
    inc b                                         ; $68cc: $04
    nop                                           ; $68cd: $00
    ld b, $04                                     ; $68ce: $06 $04
    ld a, [bc]                                    ; $68d0: $0a
    inc c                                         ; $68d1: $0c
    inc bc                                        ; $68d2: $03
    ld [bc], a                                    ; $68d3: $02
    dec c                                         ; $68d4: $0d
    nop                                           ; $68d5: $00
    ld c, $0c                                     ; $68d6: $0e $0c
    inc bc                                        ; $68d8: $03
    inc c                                         ; $68d9: $0c

jr_0f7_68da:
    ld [bc], a                                    ; $68da: $02
    nop                                           ; $68db: $00
    inc c                                         ; $68dc: $0c
    nop                                           ; $68dd: $00
    ld [$000a], sp                                ; $68de: $08 $0a $00
    rst $38                                       ; $68e1: $ff
    add hl, bc                                    ; $68e2: $09
    ld [bc], a                                    ; $68e3: $02
    db $fd                                        ; $68e4: $fd
    inc bc                                        ; $68e5: $03
    ei                                            ; $68e6: $fb
    inc b                                         ; $68e7: $04
    ld sp, hl                                     ; $68e8: $f9
    ld a, [$fff9]                                 ; $68e9: $fa $f9 $ff
    inc bc                                        ; $68ec: $03
    nop                                           ; $68ed: $00
    sbc c                                         ; $68ee: $99
    add hl, bc                                    ; $68ef: $09
    nop                                           ; $68f0: $00
    dec l                                         ; $68f1: $2d
    inc e                                         ; $68f2: $1c
    ld h, e                                       ; $68f3: $63
    dec e                                         ; $68f4: $1d
    ld [hl+], a                                   ; $68f5: $22
    ld [$3677], sp                                ; $68f6: $08 $77 $36
    ret                                           ; $68f9: $c9


    scf                                           ; $68fa: $37
    ld c, b                                       ; $68fb: $48
    dec c                                         ; $68fc: $0d
    ld [hl], d                                    ; $68fd: $72
    ld l, l                                       ; $68fe: $6d
    sub d                                         ; $68ff: $92
    ld h, d                                       ; $6900: $62
    sbc l                                         ; $6901: $9d
    ld b, $79                                     ; $6902: $06 $79
    inc d                                         ; $6904: $14
    xor e                                         ; $6905: $ab
    nop                                           ; $6906: $00
    dec e                                         ; $6907: $1d
    dec b                                         ; $6908: $05
    nop                                           ; $6909: $00
    sbc e                                         ; $690a: $9b
    stop                                          ; $690b: $10 $00
    inc d                                         ; $690d: $14
    nop                                           ; $690e: $00
    ld b, $04                                     ; $690f: $06 $04
    ld a, [de]                                    ; $6911: $1a

jr_0f7_6912:
    nop                                           ; $6912: $00
    rra                                           ; $6913: $1f
    ld [$1814], sp                                ; $6914: $08 $14 $18
    ld b, $04                                     ; $6917: $06 $04
    ld a, [de]                                    ; $6919: $1a
    nop                                           ; $691a: $00
    inc e                                         ; $691b: $1c
    ld [de], a                                    ; $691c: $12
    dec c                                         ; $691d: $0d
    db $10                                        ; $691e: $10
    ld c, $0c                                     ; $691f: $0e $0c
    inc de                                        ; $6921: $13
    inc c                                         ; $6922: $0c
    ld [de], a                                    ; $6923: $12
    nop                                           ; $6924: $00
    inc e                                         ; $6925: $1c
    inc b                                         ; $6926: $04
    nop                                           ; $6927: $00
    rst $38                                       ; $6928: $ff
    rlca                                          ; $6929: $07
    ld bc, $03fd                                  ; $692a: $01 $fd $03
    ei                                            ; $692d: $fb
    inc b                                         ; $692e: $04
    ei                                            ; $692f: $fb
    db $fc                                        ; $6930: $fc
    add e                                         ; $6931: $83
    inc e                                         ; $6932: $1c
    nop                                           ; $6933: $00
    ld [hl+], a                                   ; $6934: $22
    ld [bc], a                                    ; $6935: $02
    inc e                                         ; $6936: $1c
    adc h                                         ; $6937: $8c
    nop                                           ; $6938: $00
    inc d                                         ; $6939: $14
    ld [$0814], sp                                ; $693a: $08 $14 $08
    ld [hl+], a                                   ; $693d: $22
    inc e                                         ; $693e: $1c
    ld h, $18                                     ; $693f: $26 $18
    ld b, l                                       ; $6941: $45
    ld a, [hl-]                                   ; $6942: $3a
    ld b, c                                       ; $6943: $41
    ld [bc], a                                    ; $6944: $02
    ld a, $0d                                     ; $6945: $3e $0d
    nop                                           ; $6947: $00
    rst $38                                       ; $6948: $ff
    rlca                                          ; $6949: $07
    ld bc, $03fd                                  ; $694a: $01 $fd $03
    ei                                            ; $694d: $fb
    inc b                                         ; $694e: $04
    ei                                            ; $694f: $fb
    db $fc                                        ; $6950: $fc
    add e                                         ; $6951: $83
    inc e                                         ; $6952: $1c
    nop                                           ; $6953: $00
    ld [hl+], a                                   ; $6954: $22
    ld [bc], a                                    ; $6955: $02
    inc e                                         ; $6956: $1c
    adc h                                         ; $6957: $8c
    nop                                           ; $6958: $00
    inc d                                         ; $6959: $14
    ld [$0814], sp                                ; $695a: $08 $14 $08
    ld [hl+], a                                   ; $695d: $22
    inc e                                         ; $695e: $1c
    ld h, $18                                     ; $695f: $26 $18
    ld b, l                                       ; $6961: $45
    ld a, [hl-]                                   ; $6962: $3a
    ld b, c                                       ; $6963: $41
    ld [bc], a                                    ; $6964: $02
    ld a, $0d                                     ; $6965: $3e $0d
    nop                                           ; $6967: $00
    rst $38                                       ; $6968: $ff
    rlca                                          ; $6969: $07
    ld bc, $03fd                                  ; $696a: $01 $fd $03
    ei                                            ; $696d: $fb
    inc b                                         ; $696e: $04
    ei                                            ; $696f: $fb
    db $fc                                        ; $6970: $fc
    add e                                         ; $6971: $83
    inc e                                         ; $6972: $1c
    nop                                           ; $6973: $00
    ld [hl+], a                                   ; $6974: $22
    ld [bc], a                                    ; $6975: $02
    inc e                                         ; $6976: $1c
    adc h                                         ; $6977: $8c
    nop                                           ; $6978: $00
    inc d                                         ; $6979: $14
    ld [$0814], sp                                ; $697a: $08 $14 $08
    ld [hl+], a                                   ; $697d: $22
    inc e                                         ; $697e: $1c
    ld h, $18                                     ; $697f: $26 $18
    ld b, l                                       ; $6981: $45
    ld a, [hl-]                                   ; $6982: $3a
    ld b, c                                       ; $6983: $41
    ld [bc], a                                    ; $6984: $02
    ld a, $0d                                     ; $6985: $3e $0d
    nop                                           ; $6987: $00
    rst $38                                       ; $6988: $ff
    add hl, bc                                    ; $6989: $09
    ld [bc], a                                    ; $698a: $02
    db $fd                                        ; $698b: $fd
    inc bc                                        ; $698c: $03
    ei                                            ; $698d: $fb
    inc b                                         ; $698e: $04
    ld hl, sp-$05                                 ; $698f: $f8 $fb
    ei                                            ; $6991: $fb
    cp $06                                        ; $6992: $fe $06
    inc b                                         ; $6994: $04
    sub c                                         ; $6995: $91
    ld l, $20                                     ; $6996: $2e $20
    ld de, $1f0e                                  ; $6998: $11 $0e $1f
    ld de, $151b                                  ; $699b: $11 $1b $15
    ld a, [hl+]                                   ; $699e: $2a
    dec [hl]                                      ; $699f: $35
    pop de                                        ; $69a0: $d1
    xor $33                                       ; $69a1: $ee $33
    inc l                                         ; $69a3: $2c
    ld [hl+], a                                   ; $69a4: $22
    dec e                                         ; $69a5: $1d
    jr nz, jr_0f7_69aa                            ; $69a6: $20 $02

    rra                                           ; $69a8: $1f
    add e                                         ; $69a9: $83

jr_0f7_69aa:
    nop                                           ; $69aa: $00
    ld a, [hl+]                                   ; $69ab: $2a
    ld l, $06                                     ; $69ac: $2e $06
    inc b                                         ; $69ae: $04
    ld b, $00                                     ; $69af: $06 $00
    ld [bc], a                                    ; $69b1: $02
    inc b                                         ; $69b2: $04
    add d                                         ; $69b3: $82
    inc bc                                        ; $69b4: $03
    rlca                                          ; $69b5: $07
    inc bc                                        ; $69b6: $03
    inc b                                         ; $69b7: $04
    add d                                         ; $69b8: $82
    nop                                           ; $69b9: $00
    inc b                                         ; $69ba: $04
    inc bc                                        ; $69bb: $03
    nop                                           ; $69bc: $00
    ld [bc], a                                    ; $69bd: $02
    inc b                                         ; $69be: $04
    inc b                                         ; $69bf: $04
    nop                                           ; $69c0: $00
    ld [bc], a                                    ; $69c1: $02
    jr nz, jr_0f7_69c8                            ; $69c2: $20 $04

    nop                                           ; $69c4: $00
    rst $38                                       ; $69c5: $ff
    dec bc                                        ; $69c6: $0b
    inc bc                                        ; $69c7: $03

jr_0f7_69c8:
    db $fd                                        ; $69c8: $fd
    inc bc                                        ; $69c9: $03
    ei                                            ; $69ca: $fb
    inc b                                         ; $69cb: $04
    or $f9                                        ; $69cc: $f6 $f9
    ld sp, hl                                     ; $69ce: $f9
    nop                                           ; $69cf: $00
    ld b, $f9                                     ; $69d0: $06 $f9
    ld b, $01                                     ; $69d2: $06 $01
    sbc d                                         ; $69d4: $9a
    ld [hl+], a                                   ; $69d5: $22
    inc hl                                        ; $69d6: $23
    ld a, [de]                                    ; $69d7: $1a
    dec de                                        ; $69d8: $1b
    rla                                           ; $69d9: $17
    inc e                                         ; $69da: $1c
    inc c                                         ; $69db: $0c
    dec bc                                        ; $69dc: $0b
    rlca                                          ; $69dd: $07
    inc b                                         ; $69de: $04
    ld a, [bc]                                    ; $69df: $0a
    dec c                                         ; $69e0: $0d
    ld [hl-], a                                   ; $69e1: $32
    dec a                                         ; $69e2: $3d
    call nz, $34fb                                ; $69e3: $c4 $fb $34
    dec sp                                        ; $69e6: $3b
    ld [$0807], sp                                ; $69e7: $08 $07 $08
    rlca                                          ; $69ea: $07
    rrca                                          ; $69eb: $0f
    ld [$1f14], sp                                ; $69ec: $08 $14 $1f
    ld [bc], a                                    ; $69ef: $02
    ld b, h                                       ; $69f0: $44
    ld [bc], a                                    ; $69f1: $02
    ld e, b                                       ; $69f2: $58
    sbc d                                         ; $69f3: $9a
    ld l, b                                       ; $69f4: $68
    jr c, jr_0f7_6a27                             ; $69f5: $38 $30

    ld d, b                                       ; $69f7: $50
    ld h, b                                       ; $69f8: $60
    jr nz, @+$52                                  ; $69f9: $20 $50

    jr nc, jr_0f7_6a49                            ; $69fb: $30 $4c

    inc a                                         ; $69fd: $3c
    inc hl                                        ; $69fe: $23
    ld e, a                                       ; $69ff: $5f
    ld l, h                                       ; $6a00: $6c
    inc e                                         ; $6a01: $1c
    ld d, b                                       ; $6a02: $50
    jr nz, jr_0f7_6a15                            ; $6a03: $20 $10

    ld h, b                                       ; $6a05: $60
    ld [hl], b                                    ; $6a06: $70
    db $10                                        ; $6a07: $10
    jr z, @+$7a                                   ; $6a08: $28 $78

    ld e, b                                       ; $6a0a: $58
    ret c                                         ; $6a0b: $d8

    ld b, h                                       ; $6a0c: $44
    call nz, $8002                                ; $6a0d: $c4 $02 $80
    ld [bc], a                                    ; $6a10: $02
    ld a, [de]                                    ; $6a11: $1a
    ld [bc], a                                    ; $6a12: $02
    ld [hl+], a                                   ; $6a13: $22
    ld [bc], a                                    ; $6a14: $02

jr_0f7_6a15:
    nop                                           ; $6a15: $00
    inc b                                         ; $6a16: $04
    ld bc, $0016                                  ; $6a17: $01 $16 $00
    rst $38                                       ; $6a1a: $ff
    rrca                                          ; $6a1b: $0f
    dec b                                         ; $6a1c: $05
    db $fd                                        ; $6a1d: $fd
    inc bc                                        ; $6a1e: $03
    ei                                            ; $6a1f: $fb
    inc b                                         ; $6a20: $04
    rst $30                                       ; $6a21: $f7
    rst $30                                       ; $6a22: $f7
    db $f4                                        ; $6a23: $f4
    rst $38                                       ; $6a24: $ff
    rst $30                                       ; $6a25: $f7
    ld [bc], a                                    ; $6a26: $02

jr_0f7_6a27:
    inc b                                         ; $6a27: $04
    ld sp, hl                                     ; $6a28: $f9
    inc b                                         ; $6a29: $04
    nop                                           ; $6a2a: $00
    ld [bc], a                                    ; $6a2b: $02
    jr nz, jr_0f7_6a32                            ; $6a2c: $20 $04

    jr jr_0f7_6a32                                ; $6a2e: $18 $02

    rlca                                          ; $6a30: $07
    sub l                                         ; $6a31: $95

jr_0f7_6a32:
    inc b                                         ; $6a32: $04
    rlca                                          ; $6a33: $07
    dec b                                         ; $6a34: $05
    ld b, $02                                     ; $6a35: $06 $02
    inc bc                                        ; $6a37: $03
    inc b                                         ; $6a38: $04
    rlca                                          ; $6a39: $07
    jr jr_0f7_6a5b                                ; $6a3a: $18 $1f

    pop hl                                        ; $6a3c: $e1
    cp $19                                        ; $6a3d: $fe $19
    ld e, $06                                     ; $6a3f: $1e $06
    dec b                                         ; $6a41: $05
    ld [bc], a                                    ; $6a42: $02
    ld bc, $0605                                  ; $6a43: $01 $05 $06
    inc b                                         ; $6a46: $04
    inc bc                                        ; $6a47: $03
    rlca                                          ; $6a48: $07

jr_0f7_6a49:
    ld [$9840], sp                                ; $6a49: $08 $40 $98
    and e                                         ; $6a4c: $a3
    db $e3                                        ; $6a4d: $e3
    and e                                         ; $6a4e: $a3
    db $e3                                        ; $6a4f: $e3
    inc e                                         ; $6a50: $1c
    db $fc                                        ; $6a51: $fc
    db $e4                                        ; $6a52: $e4
    inc e                                         ; $6a53: $1c
    inc d                                         ; $6a54: $14
    db $ec                                        ; $6a55: $ec
    add sp, $18                                   ; $6a56: $e8 $18
    and h                                         ; $6a58: $a4
    ld e, h                                       ; $6a59: $5c
    and e                                         ; $6a5a: $a3

jr_0f7_6a5b:
    ld e, a                                       ; $6a5b: $5f
    db $10                                        ; $6a5c: $10
    rst $28                                       ; $6a5d: $ef
    inc sp                                        ; $6a5e: $33
    rst $08                                       ; $6a5f: $cf
    inc l                                         ; $6a60: $2c
    call nc, $f008                                ; $6a61: $d4 $08 $f0
    ld [bc], a                                    ; $6a64: $02
    inc b                                         ; $6a65: $04
    stop                                          ; $6a66: $10 $00
    ld [bc], a                                    ; $6a68: $02
    rlca                                          ; $6a69: $07

jr_0f7_6a6a:
    ld b, $00                                     ; $6a6a: $06 $00
    add e                                         ; $6a6c: $83
    and b                                         ; $6a6d: $a0
    ld h, b                                       ; $6a6e: $60
    jr nz, jr_0f7_6a74                            ; $6a6f: $20 $03

    ldh [$81], a                                  ; $6a71: $e0 $81
    inc bc                                        ; $6a73: $03

jr_0f7_6a74:
    ld [bc], a                                    ; $6a74: $02
    nop                                           ; $6a75: $00
    add h                                         ; $6a76: $84
    inc bc                                        ; $6a77: $03
    nop                                           ; $6a78: $00
    inc bc                                        ; $6a79: $03
    ld h, d                                       ; $6a7a: $62
    inc bc                                        ; $6a7b: $03
    ld h, e                                       ; $6a7c: $63
    ld [bc], a                                    ; $6a7d: $02
    add c                                         ; $6a7e: $81
    ld b, $01                                     ; $6a7f: $06 $01
    ld c, $00                                     ; $6a81: $0e $00
    add c                                         ; $6a83: $81
    ld b, b                                       ; $6a84: $40
    ld [bc], a                                    ; $6a85: $02
    nop                                           ; $6a86: $00
    add e                                         ; $6a87: $83
    ld b, b                                       ; $6a88: $40
    nop                                           ; $6a89: $00
    ld b, b                                       ; $6a8a: $40
    inc b                                         ; $6a8b: $04
    ld b, [hl]                                    ; $6a8c: $46
    ld [bc], a                                    ; $6a8d: $02
    ld bc, $0014                                  ; $6a8e: $01 $14 $00
    rst $38                                       ; $6a91: $ff
    ld de, $fd06                                  ; $6a92: $11 $06 $fd
    inc bc                                        ; $6a95: $03
    ei                                            ; $6a96: $fb
    inc b                                         ; $6a97: $04
    or $f6                                        ; $6a98: $f6 $f6
    di                                            ; $6a9a: $f3
    cp $f6                                        ; $6a9b: $fe $f6
    inc bc                                        ; $6a9d: $03
    inc bc                                        ; $6a9e: $03
    ld hl, sp+$03                                 ; $6a9f: $f8 $03
    nop                                           ; $6aa1: $00
    inc bc                                        ; $6aa2: $03
    ld bc, $2002                                  ; $6aa3: $01 $02 $20
    inc b                                         ; $6aa6: $04
    jr jr_0f7_6aab                                ; $6aa7: $18 $02

    rlca                                          ; $6aa9: $07
    sub e                                         ; $6aaa: $93

jr_0f7_6aab:
    inc b                                         ; $6aab: $04
    rlca                                          ; $6aac: $07
    inc b                                         ; $6aad: $04
    rlca                                          ; $6aae: $07
    ld [bc], a                                    ; $6aaf: $02
    inc bc                                        ; $6ab0: $03
    ld [bc], a                                    ; $6ab1: $02
    inc bc                                        ; $6ab2: $03
    inc b                                         ; $6ab3: $04
    rlca                                          ; $6ab4: $07
    jr jr_0f7_6ad6                                ; $6ab5: $18 $1f

    ldh [rIE], a                                  ; $6ab7: $e0 $ff
    jr jr_0f7_6ada                                ; $6ab9: $18 $1f

    dec b                                         ; $6abb: $05
    ld b, $03                                     ; $6abc: $06 $03
    ld [bc], a                                    ; $6abe: $02
    ld [bc], a                                    ; $6abf: $02
    add e                                         ; $6ac0: $83
    inc bc                                        ; $6ac1: $03
    inc b                                         ; $6ac2: $04
    rlca                                          ; $6ac3: $07
    ld [$9820], sp                                ; $6ac4: $08 $20 $98
    ld d, b                                       ; $6ac7: $50
    ld [hl], b                                    ; $6ac8: $70
    ld d, b                                       ; $6ac9: $50
    ld [hl], b                                    ; $6aca: $70
    ld d, a                                       ; $6acb: $57
    ld [hl], a                                    ; $6acc: $77
    adc c                                         ; $6acd: $89
    rst $38                                       ; $6ace: $ff
    ld [hl], c                                    ; $6acf: $71
    adc a                                         ; $6ad0: $8f
    adc d                                         ; $6ad1: $8a
    halt                                          ; $6ad2: $76
    ld [hl], d                                    ; $6ad3: $72
    adc [hl]                                      ; $6ad4: $8e
    ld d, c                                       ; $6ad5: $51

jr_0f7_6ad6:
    xor a                                         ; $6ad6: $af
    ld d, b                                       ; $6ad7: $50
    xor a                                         ; $6ad8: $af
    adc b                                         ; $6ad9: $88

jr_0f7_6ada:
    ld [hl], a                                    ; $6ada: $77
    sbc b                                         ; $6adb: $98
    ld h, a                                       ; $6adc: $67
    dec d                                         ; $6add: $15
    db $eb                                        ; $6ade: $eb
    ld [bc], a                                    ; $6adf: $02
    inc b                                         ; $6ae0: $04
    inc b                                         ; $6ae1: $04
    jr jr_0f7_6af0                                ; $6ae2: $18 $0c

    nop                                           ; $6ae4: $00
    ld [bc], a                                    ; $6ae5: $02
    jr jr_0f7_6a6a                                ; $6ae6: $18 $82

    rlca                                          ; $6ae8: $07
    rra                                           ; $6ae9: $1f
    ld [bc], a                                    ; $6aea: $02
    jr jr_0f7_6aef                                ; $6aeb: $18 $02

    nop                                           ; $6aed: $00
    add c                                         ; $6aee: $81

jr_0f7_6aef:
    ret nz                                        ; $6aef: $c0

jr_0f7_6af0:
    ld [bc], a                                    ; $6af0: $02
    ld b, b                                       ; $6af1: $40
    add h                                         ; $6af2: $84
    ret nz                                        ; $6af3: $c0

    jr nz, jr_0f7_6ad6                            ; $6af4: $20 $e0

    nop                                           ; $6af6: $00
    ld [bc], a                                    ; $6af7: $02
    inc bc                                        ; $6af8: $03
    ld [bc], a                                    ; $6af9: $02
    nop                                           ; $6afa: $00
    add e                                         ; $6afb: $83
    inc bc                                        ; $6afc: $03
    ld [de], a                                    ; $6afd: $12
    rra                                           ; $6afe: $1f
    ld [bc], a                                    ; $6aff: $02
    dec e                                         ; $6b00: $1d
    inc b                                         ; $6b01: $04
    ld h, c                                       ; $6b02: $61
    ld [bc], a                                    ; $6b03: $02
    add b                                         ; $6b04: $80
    ld de, $0200                                  ; $6b05: $11 $00 $02
    ldh [rSC], a                                  ; $6b08: $e0 $02
    nop                                           ; $6b0a: $00
    adc c                                         ; $6b0b: $89
    ldh [rNR50], a                                ; $6b0c: $e0 $24
    db $fc                                        ; $6b0e: $fc
    ld e, h                                       ; $6b0f: $5c
    call c, $c343                                 ; $6b10: $dc $43 $c3
    ld b, e                                       ; $6b13: $43
    jp $8008                                      ; $6b14: $c3 $08 $80


    jr jr_0f7_6b19                                ; $6b17: $18 $00

jr_0f7_6b19:
    ld [bc], a                                    ; $6b19: $02
    ld bc, $0010                                  ; $6b1a: $01 $10 $00
    rst $38                                       ; $6b1d: $ff
    rlca                                          ; $6b1e: $07
    ld bc, $03fd                                  ; $6b1f: $01 $fd $03
    ei                                            ; $6b22: $fb
    inc b                                         ; $6b23: $04
    ei                                            ; $6b24: $fb
    db $fc                                        ; $6b25: $fc
    add e                                         ; $6b26: $83
    inc e                                         ; $6b27: $1c
    nop                                           ; $6b28: $00
    ld [hl+], a                                   ; $6b29: $22
    ld [bc], a                                    ; $6b2a: $02
    inc e                                         ; $6b2b: $1c
    adc h                                         ; $6b2c: $8c
    nop                                           ; $6b2d: $00
    inc d                                         ; $6b2e: $14
    ld [$0814], sp                                ; $6b2f: $08 $14 $08
    ld [hl+], a                                   ; $6b32: $22
    inc e                                         ; $6b33: $1c
    ld h, $18                                     ; $6b34: $26 $18
    ld b, l                                       ; $6b36: $45
    ld a, [hl-]                                   ; $6b37: $3a
    ld b, c                                       ; $6b38: $41
    ld [bc], a                                    ; $6b39: $02
    ld a, $0d                                     ; $6b3a: $3e $0d
    nop                                           ; $6b3c: $00
    rst $38                                       ; $6b3d: $ff
    rlca                                          ; $6b3e: $07
    ld bc, $03fd                                  ; $6b3f: $01 $fd $03
    ei                                            ; $6b42: $fb
    inc b                                         ; $6b43: $04
    ei                                            ; $6b44: $fb
    db $fc                                        ; $6b45: $fc
    add e                                         ; $6b46: $83
    inc e                                         ; $6b47: $1c
    nop                                           ; $6b48: $00
    ld [hl+], a                                   ; $6b49: $22
    ld [bc], a                                    ; $6b4a: $02
    inc e                                         ; $6b4b: $1c
    adc h                                         ; $6b4c: $8c
    nop                                           ; $6b4d: $00
    inc d                                         ; $6b4e: $14
    ld [$0814], sp                                ; $6b4f: $08 $14 $08
    ld [hl+], a                                   ; $6b52: $22
    inc e                                         ; $6b53: $1c
    ld h, $18                                     ; $6b54: $26 $18
    ld b, l                                       ; $6b56: $45
    ld a, [hl-]                                   ; $6b57: $3a
    ld b, c                                       ; $6b58: $41
    ld [bc], a                                    ; $6b59: $02
    ld a, $0d                                     ; $6b5a: $3e $0d
    nop                                           ; $6b5c: $00
    rst $38                                       ; $6b5d: $ff
    add hl, bc                                    ; $6b5e: $09
    ld [bc], a                                    ; $6b5f: $02
    di                                            ; $6b60: $f3
    dec c                                         ; $6b61: $0d
    push af                                       ; $6b62: $f5
    dec bc                                        ; $6b63: $0b
    ld sp, hl                                     ; $6b64: $f9
    ld sp, hl                                     ; $6b65: $f9
    ld sp, hl                                     ; $6b66: $f9
    nop                                           ; $6b67: $00
    ld [bc], a                                    ; $6b68: $02
    ld bc, $0702                                  ; $6b69: $01 $02 $07
    ld [bc], a                                    ; $6b6c: $02
    inc bc                                        ; $6b6d: $03
    ld [bc], a                                    ; $6b6e: $02
    ld [bc], a                                    ; $6b6f: $02
    inc bc                                        ; $6b70: $03
    nop                                           ; $6b71: $00
    add a                                         ; $6b72: $87
    jr nz, jr_0f7_6b75                            ; $6b73: $20 $00

jr_0f7_6b75:
    ld hl, sp+$00                                 ; $6b75: $f8 $00
    ld [hl], b                                    ; $6b77: $70
    nop                                           ; $6b78: $00
    ld d, b                                       ; $6b79: $50
    ld [bc], a                                    ; $6b7a: $02
    nop                                           ; $6b7b: $00
    ld [bc], a                                    ; $6b7c: $02
    ld bc, $0702                                  ; $6b7d: $01 $02 $07
    ld [bc], a                                    ; $6b80: $02
    inc bc                                        ; $6b81: $03
    ld [bc], a                                    ; $6b82: $02
    ld [bc], a                                    ; $6b83: $02
    ld b, $00                                     ; $6b84: $06 $00
    ld [bc], a                                    ; $6b86: $02
    ld h, b                                       ; $6b87: $60
    inc b                                         ; $6b88: $04
    ld b, b                                       ; $6b89: $40
    ld [bc], a                                    ; $6b8a: $02
    nop                                           ; $6b8b: $00
    add a                                         ; $6b8c: $87
    inc b                                         ; $6b8d: $04
    nop                                           ; $6b8e: $00
    rra                                           ; $6b8f: $1f
    nop                                           ; $6b90: $00
    ld c, $00                                     ; $6b91: $0e $00
    ld a, [bc]                                    ; $6b93: $0a
    dec b                                         ; $6b94: $05
    nop                                           ; $6b95: $00
    ld [bc], a                                    ; $6b96: $02
    ld h, b                                       ; $6b97: $60
    inc b                                         ; $6b98: $04
    ld b, b                                       ; $6b99: $40
    inc b                                         ; $6b9a: $04
    nop                                           ; $6b9b: $00
    rst $38                                       ; $6b9c: $ff
    dec c                                         ; $6b9d: $0d
    inc b                                         ; $6b9e: $04
    di                                            ; $6b9f: $f3
    dec c                                         ; $6ba0: $0d
    push af                                       ; $6ba1: $f5
    dec bc                                        ; $6ba2: $0b
    cp $f3                                        ; $6ba3: $fe $f3
    push af                                       ; $6ba5: $f5
    ei                                            ; $6ba6: $fb
    cp $06                                        ; $6ba7: $fe $06
    dec b                                         ; $6ba9: $05
    ei                                            ; $6baa: $fb
    ld [bc], a                                    ; $6bab: $02
    jr nz, jr_0f7_6bb0                            ; $6bac: $20 $02

    ld hl, sp+$02                                 ; $6bae: $f8 $02

jr_0f7_6bb0:
    ld [hl], b                                    ; $6bb0: $70
    ld [bc], a                                    ; $6bb1: $02
    ld d, b                                       ; $6bb2: $50
    jr jr_0f7_6bb5                                ; $6bb3: $18 $00

jr_0f7_6bb5:
    add a                                         ; $6bb5: $87
    inc b                                         ; $6bb6: $04
    nop                                           ; $6bb7: $00
    rra                                           ; $6bb8: $1f
    nop                                           ; $6bb9: $00
    ld c, $00                                     ; $6bba: $0e $00
    ld a, [bc]                                    ; $6bbc: $0a
    add hl, de                                    ; $6bbd: $19
    nop                                           ; $6bbe: $00
    ld [bc], a                                    ; $6bbf: $02
    inc b                                         ; $6bc0: $04
    ld [bc], a                                    ; $6bc1: $02
    rra                                           ; $6bc2: $1f
    ld [bc], a                                    ; $6bc3: $02
    ld c, $02                                     ; $6bc4: $0e $02
    ld a, [bc]                                    ; $6bc6: $0a
    rra                                           ; $6bc7: $1f
    nop                                           ; $6bc8: $00
    add a                                         ; $6bc9: $87
    inc b                                         ; $6bca: $04
    nop                                           ; $6bcb: $00
    rra                                           ; $6bcc: $1f
    nop                                           ; $6bcd: $00
    ld c, $00                                     ; $6bce: $0e $00
    ld a, [bc]                                    ; $6bd0: $0a
    ld [de], a                                    ; $6bd1: $12
    nop                                           ; $6bd2: $00
    rst $38                                       ; $6bd3: $ff
    dec c                                         ; $6bd4: $0d
    inc b                                         ; $6bd5: $04
    di                                            ; $6bd6: $f3
    dec c                                         ; $6bd7: $0d
    push af                                       ; $6bd8: $f5
    dec bc                                        ; $6bd9: $0b
    db $fd                                        ; $6bda: $fd
    rst $28                                       ; $6bdb: $ef
    ldh a, [$fc]                                  ; $6bdc: $f0 $fc
    db $fd                                        ; $6bde: $fd
    ld a, [bc]                                    ; $6bdf: $0a
    inc c                                         ; $6be0: $0c
    db $fc                                        ; $6be1: $fc
    adc e                                         ; $6be2: $8b
    stop                                          ; $6be3: $10 $00
    stop                                          ; $6be5: $10 $00
    cp $00                                        ; $6be7: $fe $00
    jr c, jr_0f7_6beb                             ; $6be9: $38 $00

jr_0f7_6beb:
    jr z, jr_0f7_6bed                             ; $6beb: $28 $00

jr_0f7_6bed:
    ld b, h                                       ; $6bed: $44
    dec d                                         ; $6bee: $15
    nop                                           ; $6bef: $00
    inc b                                         ; $6bf0: $04
    ld [$7f02], sp                                ; $6bf1: $08 $02 $7f
    ld [bc], a                                    ; $6bf4: $02
    inc e                                         ; $6bf5: $1c
    ld [bc], a                                    ; $6bf6: $02
    inc d                                         ; $6bf7: $14
    ld [bc], a                                    ; $6bf8: $02
    ld [hl+], a                                   ; $6bf9: $22
    dec d                                         ; $6bfa: $15
    nop                                           ; $6bfb: $00
    adc e                                         ; $6bfc: $8b
    ld [$0800], sp                                ; $6bfd: $08 $00 $08
    nop                                           ; $6c00: $00
    ld a, a                                       ; $6c01: $7f
    nop                                           ; $6c02: $00
    inc e                                         ; $6c03: $1c
    nop                                           ; $6c04: $00
    inc d                                         ; $6c05: $14
    nop                                           ; $6c06: $00
    ld [hl+], a                                   ; $6c07: $22
    inc d                                         ; $6c08: $14
    nop                                           ; $6c09: $00
    inc b                                         ; $6c0a: $04
    ld [$7f02], sp                                ; $6c0b: $08 $02 $7f
    ld [bc], a                                    ; $6c0e: $02
    inc e                                         ; $6c0f: $1c

Call_0f7_6c10:
    ld [bc], a                                    ; $6c10: $02
    inc d                                         ; $6c11: $14
    ld [bc], a                                    ; $6c12: $02
    ld [hl+], a                                   ; $6c13: $22
    inc d                                         ; $6c14: $14
    nop                                           ; $6c15: $00
    rst $38                                       ; $6c16: $ff
    ld de, $f306                                  ; $6c17: $11 $06 $f3
    dec c                                         ; $6c1a: $0d
    push af                                       ; $6c1b: $f5
    dec bc                                        ; $6c1c: $0b
    db $eb                                        ; $6c1d: $eb
    db $fc                                        ; $6c1e: $fc
    db $fd                                        ; $6c1f: $fd
    add sp, -$05                                  ; $6c20: $e8 $fb
    rst $30                                       ; $6c22: $f7
    ei                                            ; $6c23: $fb
    rst $38                                       ; $6c24: $ff
    db $fd                                        ; $6c25: $fd
    ld de, $fc0b                                  ; $6c26: $11 $0b $fc
    adc h                                         ; $6c29: $8c
    nop                                           ; $6c2a: $00
    ld [$0800], sp                                ; $6c2b: $08 $00 $08
    nop                                           ; $6c2e: $00
    ld a, a                                       ; $6c2f: $7f
    nop                                           ; $6c30: $00
    inc e                                         ; $6c31: $1c
    nop                                           ; $6c32: $00
    inc d                                         ; $6c33: $14
    nop                                           ; $6c34: $00
    ld [hl+], a                                   ; $6c35: $22
    inc d                                         ; $6c36: $14
    nop                                           ; $6c37: $00
    inc b                                         ; $6c38: $04
    db $10                                        ; $6c39: $10
    ld [bc], a                                    ; $6c3a: $02
    cp $02                                        ; $6c3b: $fe $02
    jr c, jr_0f7_6c41                             ; $6c3d: $38 $02

    jr z, jr_0f7_6c43                             ; $6c3f: $28 $02

jr_0f7_6c41:
    ld b, h                                       ; $6c41: $44
    dec d                                         ; $6c42: $15

jr_0f7_6c43:
    nop                                           ; $6c43: $00
    add a                                         ; $6c44: $87
    inc b                                         ; $6c45: $04
    nop                                           ; $6c46: $00
    rra                                           ; $6c47: $1f
    nop                                           ; $6c48: $00
    ld c, $00                                     ; $6c49: $0e $00
    ld a, [bc]                                    ; $6c4b: $0a
    ld b, $00                                     ; $6c4c: $06 $00
    ld [bc], a                                    ; $6c4e: $02
    inc b                                         ; $6c4f: $04
    ld [bc], a                                    ; $6c50: $02
    rra                                           ; $6c51: $1f
    ld [bc], a                                    ; $6c52: $02
    ld c, $02                                     ; $6c53: $0e $02
    ld a, [bc]                                    ; $6c55: $0a
    ld a, [bc]                                    ; $6c56: $0a
    nop                                           ; $6c57: $00
    ld [bc], a                                    ; $6c58: $02
    inc b                                         ; $6c59: $04
    ld [bc], a                                    ; $6c5a: $02
    rra                                           ; $6c5b: $1f
    ld [bc], a                                    ; $6c5c: $02
    ld c, $02                                     ; $6c5d: $0e $02
    ld a, [bc]                                    ; $6c5f: $0a
    ld b, $00                                     ; $6c60: $06 $00
    add a                                         ; $6c62: $87
    inc b                                         ; $6c63: $04
    nop                                           ; $6c64: $00
    rra                                           ; $6c65: $1f
    nop                                           ; $6c66: $00
    ld c, $00                                     ; $6c67: $0e $00
    ld a, [bc]                                    ; $6c69: $0a
    dec bc                                        ; $6c6a: $0b
    nop                                           ; $6c6b: $00
    inc b                                         ; $6c6c: $04
    ld [$7f02], sp                                ; $6c6d: $08 $02 $7f
    ld [bc], a                                    ; $6c70: $02
    inc e                                         ; $6c71: $1c
    ld [bc], a                                    ; $6c72: $02
    inc d                                         ; $6c73: $14
    ld [bc], a                                    ; $6c74: $02
    ld [hl+], a                                   ; $6c75: $22
    jr nz, jr_0f7_6c78                            ; $6c76: $20 $00

jr_0f7_6c78:
    adc e                                         ; $6c78: $8b
    ld [$0800], sp                                ; $6c79: $08 $00 $08
    nop                                           ; $6c7c: $00
    ld a, a                                       ; $6c7d: $7f
    nop                                           ; $6c7e: $00
    inc e                                         ; $6c7f: $1c
    nop                                           ; $6c80: $00
    inc d                                         ; $6c81: $14
    nop                                           ; $6c82: $00
    ld [hl+], a                                   ; $6c83: $22
    add hl, bc                                    ; $6c84: $09
    nop                                           ; $6c85: $00
    rst $38                                       ; $6c86: $ff
    dec c                                         ; $6c87: $0d
    inc b                                         ; $6c88: $04
    di                                            ; $6c89: $f3
    dec c                                         ; $6c8a: $0d
    push af                                       ; $6c8b: $f5
    dec bc                                        ; $6c8c: $0b
    rst $30                                       ; $6c8d: $f7
    push af                                       ; $6c8e: $f5
    rst $30                                       ; $6c8f: $f7
    inc bc                                        ; $6c90: $03
    rlca                                          ; $6c91: $07
    push af                                       ; $6c92: $f5
    rlca                                          ; $6c93: $07
    inc bc                                        ; $6c94: $03
    ld [bc], a                                    ; $6c95: $02
    jr nz, jr_0f7_6c9a                            ; $6c96: $20 $02

    ld hl, sp+$02                                 ; $6c98: $f8 $02

jr_0f7_6c9a:
    ld [hl], b                                    ; $6c9a: $70
    ld [bc], a                                    ; $6c9b: $02
    ld d, b                                       ; $6c9c: $50
    rla                                           ; $6c9d: $17
    nop                                           ; $6c9e: $00
    adc b                                         ; $6c9f: $88
    jr nz, @+$06                                  ; $6ca0: $20 $04

    nop                                           ; $6ca2: $00
    rra                                           ; $6ca3: $1f
    nop                                           ; $6ca4: $00
    ld c, $00                                     ; $6ca5: $0e $00
    ld a, [bc]                                    ; $6ca7: $0a
    rla                                           ; $6ca8: $17
    nop                                           ; $6ca9: $00
    ld [bc], a                                    ; $6caa: $02
    inc b                                         ; $6cab: $04
    add [hl]                                      ; $6cac: $86
    nop                                           ; $6cad: $00
    ld hl, sp+$00                                 ; $6cae: $f8 $00
    ld [hl], b                                    ; $6cb0: $70
    nop                                           ; $6cb1: $00
    ld d, b                                       ; $6cb2: $50
    ld a, [de]                                    ; $6cb3: $1a
    nop                                           ; $6cb4: $00
    ld [bc], a                                    ; $6cb5: $02
    rra                                           ; $6cb6: $1f
    ld [bc], a                                    ; $6cb7: $02
    ld c, $02                                     ; $6cb8: $0e $02
    ld a, [bc]                                    ; $6cba: $0a
    ld a, [de]                                    ; $6cbb: $1a
    nop                                           ; $6cbc: $00
    rst $38                                       ; $6cbd: $ff
    dec c                                         ; $6cbe: $0d
    inc b                                         ; $6cbf: $04
    di                                            ; $6cc0: $f3
    dec c                                         ; $6cc1: $0d
    push af                                       ; $6cc2: $f5
    dec bc                                        ; $6cc3: $0b
    di                                            ; $6cc4: $f3
    ldh a, [$f3]                                  ; $6cc5: $f0 $f3
    add hl, bc                                    ; $6cc7: $09
    inc bc                                        ; $6cc8: $03
    ldh a, [$03]                                  ; $6cc9: $f0 $03
    add hl, bc                                    ; $6ccb: $09
    adc e                                         ; $6ccc: $8b
    stop                                          ; $6ccd: $10 $00
    stop                                          ; $6ccf: $10 $00
    cp $00                                        ; $6cd1: $fe $00
    jr c, jr_0f7_6cd5                             ; $6cd3: $38 $00

jr_0f7_6cd5:
    jr z, jr_0f7_6cd7                             ; $6cd5: $28 $00

jr_0f7_6cd7:
    ld b, h                                       ; $6cd7: $44
    dec d                                         ; $6cd8: $15
    nop                                           ; $6cd9: $00
    inc b                                         ; $6cda: $04
    ld [$7f02], sp                                ; $6cdb: $08 $02 $7f
    ld [bc], a                                    ; $6cde: $02
    inc e                                         ; $6cdf: $1c
    ld [bc], a                                    ; $6ce0: $02
    inc d                                         ; $6ce1: $14
    ld [bc], a                                    ; $6ce2: $02
    ld [hl+], a                                   ; $6ce3: $22
    jr nz, jr_0f7_6ce6                            ; $6ce4: $20 $00

jr_0f7_6ce6:
    inc b                                         ; $6ce6: $04
    db $10                                        ; $6ce7: $10
    ld [bc], a                                    ; $6ce8: $02
    cp $02                                        ; $6ce9: $fe $02
    jr c, jr_0f7_6cef                             ; $6ceb: $38 $02

    jr z, jr_0f7_6cf1                             ; $6ced: $28 $02

jr_0f7_6cef:
    ld b, h                                       ; $6cef: $44
    dec d                                         ; $6cf0: $15

jr_0f7_6cf1:
    nop                                           ; $6cf1: $00
    adc e                                         ; $6cf2: $8b
    ld [$0800], sp                                ; $6cf3: $08 $00 $08
    nop                                           ; $6cf6: $00
    ld a, a                                       ; $6cf7: $7f
    nop                                           ; $6cf8: $00
    inc e                                         ; $6cf9: $1c
    nop                                           ; $6cfa: $00
    inc d                                         ; $6cfb: $14
    nop                                           ; $6cfc: $00
    ld [hl+], a                                   ; $6cfd: $22
    ld [$ff00], sp                                ; $6cfe: $08 $00 $ff
    dec c                                         ; $6d01: $0d
    inc b                                         ; $6d02: $04
    di                                            ; $6d03: $f3
    dec c                                         ; $6d04: $0d
    push af                                       ; $6d05: $f5
    dec bc                                        ; $6d06: $0b
    rst $28                                       ; $6d07: $ef
    db $eb                                        ; $6d08: $eb
    rst $28                                       ; $6d09: $ef
    inc c                                         ; $6d0a: $0c
    dec c                                         ; $6d0b: $0d
    db $eb                                        ; $6d0c: $eb
    dec c                                         ; $6d0d: $0d
    inc c                                         ; $6d0e: $0c
    inc b                                         ; $6d0f: $04
    db $10                                        ; $6d10: $10
    ld [bc], a                                    ; $6d11: $02
    cp $02                                        ; $6d12: $fe $02
    jr c, jr_0f7_6d18                             ; $6d14: $38 $02

    jr z, jr_0f7_6d1a                             ; $6d16: $28 $02

jr_0f7_6d18:
    ld b, h                                       ; $6d18: $44
    dec d                                         ; $6d19: $15

jr_0f7_6d1a:
    nop                                           ; $6d1a: $00
    adc e                                         ; $6d1b: $8b
    ld [$0800], sp                                ; $6d1c: $08 $00 $08
    nop                                           ; $6d1f: $00
    ld a, a                                       ; $6d20: $7f
    nop                                           ; $6d21: $00
    inc e                                         ; $6d22: $1c
    nop                                           ; $6d23: $00
    inc d                                         ; $6d24: $14
    nop                                           ; $6d25: $00
    ld [hl+], a                                   ; $6d26: $22
    inc d                                         ; $6d27: $14
    nop                                           ; $6d28: $00
    adc e                                         ; $6d29: $8b
    stop                                          ; $6d2a: $10 $00
    stop                                          ; $6d2c: $10 $00
    cp $00                                        ; $6d2e: $fe $00
    jr c, jr_0f7_6d32                             ; $6d30: $38 $00

jr_0f7_6d32:
    jr z, jr_0f7_6d34                             ; $6d32: $28 $00

jr_0f7_6d34:
    ld b, h                                       ; $6d34: $44
    dec d                                         ; $6d35: $15
    nop                                           ; $6d36: $00
    inc b                                         ; $6d37: $04
    ld [$7f02], sp                                ; $6d38: $08 $02 $7f
    ld [bc], a                                    ; $6d3b: $02
    inc e                                         ; $6d3c: $1c
    ld [bc], a                                    ; $6d3d: $02
    inc d                                         ; $6d3e: $14
    ld [bc], a                                    ; $6d3f: $02
    ld [hl+], a                                   ; $6d40: $22
    inc d                                         ; $6d41: $14
    nop                                           ; $6d42: $00
    rst $38                                       ; $6d43: $ff
    rlca                                          ; $6d44: $07
    ld bc, $06fb                                  ; $6d45: $01 $fb $06
    ld sp, hl                                     ; $6d48: $f9
    ld [bc], a                                    ; $6d49: $02
    ld sp, hl                                     ; $6d4a: $f9
    ei                                            ; $6d4b: $fb
    inc b                                         ; $6d4c: $04
    ld [bc], a                                    ; $6d4d: $02
    add a                                         ; $6d4e: $87
    inc b                                         ; $6d4f: $04
    ld b, $00                                     ; $6d50: $06 $00
    ld b, $0c                                     ; $6d52: $06 $0c
    ld a, [bc]                                    ; $6d54: $0a
    rrca                                          ; $6d55: $0f
    ld [bc], a                                    ; $6d56: $02
    add hl, bc                                    ; $6d57: $09
    add c                                         ; $6d58: $81
    rrca                                          ; $6d59: $0f
    ld [bc], a                                    ; $6d5a: $02
    ld b, $10                                     ; $6d5b: $06 $10
    nop                                           ; $6d5d: $00
    rst $38                                       ; $6d5e: $ff
    rlca                                          ; $6d5f: $07
    ld bc, $06fb                                  ; $6d60: $01 $fb $06
    ld sp, hl                                     ; $6d63: $f9
    ld [bc], a                                    ; $6d64: $02
    ld sp, hl                                     ; $6d65: $f9
    ei                                            ; $6d66: $fb
    inc b                                         ; $6d67: $04
    inc b                                         ; $6d68: $04
    add a                                         ; $6d69: $87
    ld [bc], a                                    ; $6d6a: $02
    ld b, $00                                     ; $6d6b: $06 $00
    ld b, $03                                     ; $6d6d: $06 $03
    dec b                                         ; $6d6f: $05
    rrca                                          ; $6d70: $0f
    ld [bc], a                                    ; $6d71: $02
    add hl, bc                                    ; $6d72: $09
    add c                                         ; $6d73: $81
    rrca                                          ; $6d74: $0f
    ld [bc], a                                    ; $6d75: $02
    ld b, $10                                     ; $6d76: $06 $10
    nop                                           ; $6d78: $00
    rst $38                                       ; $6d79: $ff
    rlca                                          ; $6d7a: $07
    ld bc, $06fb                                  ; $6d7b: $01 $fb $06
    ld sp, hl                                     ; $6d7e: $f9
    ld [bc], a                                    ; $6d7f: $02
    db $e4                                        ; $6d80: $e4
    ld a, [$0202]                                 ; $6d81: $fa $02 $02
    ld [bc], a                                    ; $6d84: $02
    rlca                                          ; $6d85: $07
    sub h                                         ; $6d86: $94
    dec b                                         ; $6d87: $05
    rlca                                          ; $6d88: $07
    dec b                                         ; $6d89: $05
    rlca                                          ; $6d8a: $07
    dec b                                         ; $6d8b: $05
    rlca                                          ; $6d8c: $07
    dec b                                         ; $6d8d: $05
    rlca                                          ; $6d8e: $07
    ld [bc], a                                    ; $6d8f: $02
    dec b                                         ; $6d90: $05
    rlca                                          ; $6d91: $07
    dec b                                         ; $6d92: $05
    ld [bc], a                                    ; $6d93: $02
    dec b                                         ; $6d94: $05
    ld [bc], a                                    ; $6d95: $02
    dec b                                         ; $6d96: $05
    ld [bc], a                                    ; $6d97: $02
    dec b                                         ; $6d98: $05
    nop                                           ; $6d99: $00
    ld [bc], a                                    ; $6d9a: $02
    ld [$ff00], sp                                ; $6d9b: $08 $00 $ff
    add hl, bc                                    ; $6d9e: $09
    ld [bc], a                                    ; $6d9f: $02
    ei                                            ; $6da0: $fb
    ld b, $f9                                     ; $6da1: $06 $f9
    ld [bc], a                                    ; $6da3: $02
    db $e4                                        ; $6da4: $e4
    db $fc                                        ; $6da5: $fc
    db $f4                                        ; $6da6: $f4
    db $fc                                        ; $6da7: $fc
    inc b                                         ; $6da8: $04
    ld [$1c06], sp                                ; $6da9: $08 $06 $1c
    sbc h                                         ; $6dac: $9c
    inc d                                         ; $6dad: $14
    inc e                                         ; $6dae: $1c
    inc d                                         ; $6daf: $14
    inc e                                         ; $6db0: $1c
    inc d                                         ; $6db1: $14
    inc e                                         ; $6db2: $1c
    inc d                                         ; $6db3: $14
    inc e                                         ; $6db4: $1c
    ld [hl-], a                                   ; $6db5: $32
    ld a, $26                                     ; $6db6: $3e $26
    ld a, $36                                     ; $6db8: $3e $36
    ld a, $61                                     ; $6dba: $3e $61
    ld a, a                                       ; $6dbc: $7f
    ld c, e                                       ; $6dbd: $4b
    ld [hl], a                                    ; $6dbe: $77
    ld a, [hl+]                                   ; $6dbf: $2a
    ld [hl], a                                    ; $6dc0: $77
    inc e                                         ; $6dc1: $1c
    ld h, e                                       ; $6dc2: $63
    ld a, $41                                     ; $6dc3: $3e $41
    ld [$0036], sp                                ; $6dc5: $08 $36 $00
    inc e                                         ; $6dc8: $1c
    ld a, [de]                                    ; $6dc9: $1a
    nop                                           ; $6dca: $00
    rst $38                                       ; $6dcb: $ff
    dec bc                                        ; $6dcc: $0b
    inc bc                                        ; $6dcd: $03
    ei                                            ; $6dce: $fb
    ld b, $f9                                     ; $6dcf: $06 $f9
    ld [bc], a                                    ; $6dd1: $02
    db $e4                                        ; $6dd2: $e4
    db $fc                                        ; $6dd3: $fc
    db $f4                                        ; $6dd4: $f4
    db $fc                                        ; $6dd5: $fc
    ei                                            ; $6dd6: $fb
    db $fd                                        ; $6dd7: $fd
    inc b                                         ; $6dd8: $04
    ld [$1c06], sp                                ; $6dd9: $08 $06 $1c
    or [hl]                                       ; $6ddc: $b6
    inc d                                         ; $6ddd: $14
    inc e                                         ; $6dde: $1c
    inc d                                         ; $6ddf: $14
    inc e                                         ; $6de0: $1c
    inc d                                         ; $6de1: $14
    inc e                                         ; $6de2: $1c
    inc d                                         ; $6de3: $14
    inc e                                         ; $6de4: $1c
    ld [hl], $3e                                  ; $6de5: $36 $3e
    ld [hl], $3e                                  ; $6de7: $36 $3e
    ld [hl+], a                                   ; $6de9: $22
    ld a, $26                                     ; $6dea: $3e $26
    ld a, $36                                     ; $6dec: $3e $36
    ld a, $75                                     ; $6dee: $3e $75
    ld a, a                                       ; $6df0: $7f
    ld d, l                                       ; $6df1: $55
    ld a, a                                       ; $6df2: $7f
    ld d, l                                       ; $6df3: $55
    ld a, a                                       ; $6df4: $7f
    ld d, h                                       ; $6df5: $54
    ld a, a                                       ; $6df6: $7f
    dec d                                         ; $6df7: $15
    ld a, a                                       ; $6df8: $7f
    ld b, b                                       ; $6df9: $40
    ld a, a                                       ; $6dfa: $7f
    db $10                                        ; $6dfb: $10
    ld a, a                                       ; $6dfc: $7f
    nop                                           ; $6dfd: $00
    ld a, a                                       ; $6dfe: $7f
    ld a, [bc]                                    ; $6dff: $0a
    ld [hl], l                                    ; $6e00: $75
    xor h                                         ; $6e01: $ac
    db $d3                                        ; $6e02: $d3
    sbc b                                         ; $6e03: $98
    rst $20                                       ; $6e04: $e7
    ld l, $d1                                     ; $6e05: $2e $d1
    ld a, a                                       ; $6e07: $7f
    add b                                         ; $6e08: $80
    ld a, $c1                                     ; $6e09: $3e $c1
    db $fc                                        ; $6e0b: $fc
    add e                                         ; $6e0c: $83
    ld e, $61                                     ; $6e0d: $1e $61
    inc d                                         ; $6e0f: $14
    ld l, e                                       ; $6e10: $6b
    ld [$0436], sp                                ; $6e11: $08 $36 $04
    ld bc, $0085                                  ; $6e14: $01 $85 $00
    ld bc, $0100                                  ; $6e17: $01 $00 $01
    nop                                           ; $6e1a: $00
    inc bc                                        ; $6e1b: $03
    ld bc, $0007                                  ; $6e1c: $01 $07 $00
    add c                                         ; $6e1f: $81
    jr c, jr_0f7_6e2e                             ; $6e20: $38 $0c

    nop                                           ; $6e22: $00
    rst $38                                       ; $6e23: $ff
    inc de                                        ; $6e24: $13
    rlca                                          ; $6e25: $07
    ei                                            ; $6e26: $fb
    ld b, $f9                                     ; $6e27: $06 $f9
    ld [bc], a                                    ; $6e29: $02
    db $e4                                        ; $6e2a: $e4
    db $fc                                        ; $6e2b: $fc
    db $f4                                        ; $6e2c: $f4
    ei                                            ; $6e2d: $fb

jr_0f7_6e2e:
    db $f4                                        ; $6e2e: $f4
    cp $04                                        ; $6e2f: $fe $04
    or $04                                        ; $6e31: $f6 $04
    cp $06                                        ; $6e33: $fe $06
    inc bc                                        ; $6e35: $03
    inc d                                         ; $6e36: $14
    ei                                            ; $6e37: $fb
    inc b                                         ; $6e38: $04
    ld [$1c06], sp                                ; $6e39: $08 $06 $1c
    adc a                                         ; $6e3c: $8f
    inc d                                         ; $6e3d: $14
    inc e                                         ; $6e3e: $1c
    inc d                                         ; $6e3f: $14
    inc e                                         ; $6e40: $1c
    ld [hl], $3e                                  ; $6e41: $36 $3e
    ld [hl], $3e                                  ; $6e43: $36 $3e
    ld [hl-], a                                   ; $6e45: $32
    ld a, $36                                     ; $6e46: $3e $36
    ld a, $22                                     ; $6e48: $3e $22
    ld a, $3a                                     ; $6e4a: $3e $3a
    ld [bc], a                                    ; $6e4c: $02
    ld [hl], $a5                                  ; $6e4d: $36 $a5
    ld a, $36                                     ; $6e4f: $3e $36
    ld a, $6f                                     ; $6e51: $3e $6f
    ld [hl], a                                    ; $6e53: $77
    add hl, sp                                    ; $6e54: $39
    ccf                                           ; $6e55: $3f
    inc hl                                        ; $6e56: $23
    ccf                                           ; $6e57: $3f

jr_0f7_6e58:
    jr c, jr_0f7_6e91                             ; $6e58: $38 $37

    inc sp                                        ; $6e5a: $33
    dec a                                         ; $6e5b: $3d
    jr nz, jr_0f7_6e9d                            ; $6e5c: $20 $3f

    ld sp, $303f                                  ; $6e5e: $31 $3f $30
    ccf                                           ; $6e61: $3f
    dec h                                         ; $6e62: $25
    dec sp                                        ; $6e63: $3b
    ld [hl], c                                    ; $6e64: $71
    ld a, a                                       ; $6e65: $7f
    ld h, h                                       ; $6e66: $64
    ld a, e                                       ; $6e67: $7b
    ld b, h                                       ; $6e68: $44
    ld a, e                                       ; $6e69: $7b
    ld h, h                                       ; $6e6a: $64
    ld a, e                                       ; $6e6b: $7b
    ld h, b                                       ; $6e6c: $60
    ld a, a                                       ; $6e6d: $7f
    ret nc                                        ; $6e6e: $d0

    rst $28                                       ; $6e6f: $ef
    sbc d                                         ; $6e70: $9a
    push hl                                       ; $6e71: $e5
    ret z                                         ; $6e72: $c8

    rst $30                                       ; $6e73: $f7
    db $10                                        ; $6e74: $10
    inc b                                         ; $6e75: $04
    ld b, $06                                     ; $6e76: $06 $06
    add c                                         ; $6e78: $81
    ld [bc], a                                    ; $6e79: $02
    inc bc                                        ; $6e7a: $03
    ld b, $a4                                     ; $6e7b: $06 $a4
    inc bc                                        ; $6e7d: $03
    rlca                                          ; $6e7e: $07
    ld bc, $0307                                  ; $6e7f: $01 $07 $03
    rlca                                          ; $6e82: $07
    inc b                                         ; $6e83: $04
    rlca                                          ; $6e84: $07
    dec b                                         ; $6e85: $05
    ld b, $09                                     ; $6e86: $06 $09
    ld c, $0c                                     ; $6e88: $0e $0c
    rrca                                          ; $6e8a: $0f
    add hl, de                                    ; $6e8b: $19
    ld e, $11                                     ; $6e8c: $1e $11
    ld e, $12                                     ; $6e8e: $1e $12
    dec e                                         ; $6e90: $1d

jr_0f7_6e91:
    ld [hl-], a                                   ; $6e91: $32
    dec a                                         ; $6e92: $3d
    ld l, e                                       ; $6e93: $6b
    ld [hl], h                                    ; $6e94: $74
    jp z, $dff5                                   ; $6e95: $ca $f5 $df

    ldh [$cf], a                                  ; $6e98: $e0 $cf
    ldh a, [$6f]                                  ; $6e9a: $f0 $6f
    ld [hl], b                                    ; $6e9c: $70

jr_0f7_6e9d:
    ld [hl], l                                    ; $6e9d: $75
    ld a, d                                       ; $6e9e: $7a
    jr c, jr_0f7_6ee0                             ; $6e9f: $38 $3f

    ld [bc], a                                    ; $6ea1: $02
    rrca                                          ; $6ea2: $0f
    and b                                         ; $6ea3: $a0
    ld d, c                                       ; $6ea4: $51
    xor a                                         ; $6ea5: $af
    ld de, $30ef                                  ; $6ea6: $11 $ef $30
    rst $08                                       ; $6ea9: $cf
    or l                                          ; $6eaa: $b5
    ld c, e                                       ; $6eab: $4b
    xor b                                         ; $6eac: $a8
    ld d, a                                       ; $6ead: $57
    ld [$ec15], a                                 ; $6eae: $ea $15 $ec
    inc de                                        ; $6eb1: $13
    db $fc                                        ; $6eb2: $fc
    inc bc                                        ; $6eb3: $03
    ei                                            ; $6eb4: $fb
    inc b                                         ; $6eb5: $04
    ei                                            ; $6eb6: $fb
    inc b                                         ; $6eb7: $04
    rst $38                                       ; $6eb8: $ff
    nop                                           ; $6eb9: $00
    rst $38                                       ; $6eba: $ff
    nop                                           ; $6ebb: $00
    rst $38                                       ; $6ebc: $ff
    nop                                           ; $6ebd: $00
    ld a, [$5005]                                 ; $6ebe: $fa $05 $50
    xor a                                         ; $6ec1: $af
    inc bc                                        ; $6ec2: $03
    rst $38                                       ; $6ec3: $ff
    inc b                                         ; $6ec4: $04
    db $10                                        ; $6ec5: $10
    ld [bc], a                                    ; $6ec6: $02
    jr jr_0f7_6e58                                ; $6ec7: $18 $8f

    ld [$0818], sp                                ; $6ec9: $08 $18 $08
    jr @+$0e                                      ; $6ecc: $18 $0c

    inc e                                         ; $6ece: $1c
    ld b, $1e                                     ; $6ecf: $06 $1e
    inc de                                        ; $6ed1: $13
    rrca                                          ; $6ed2: $0f
    dec de                                        ; $6ed3: $1b
    rlca                                          ; $6ed4: $07
    inc de                                        ; $6ed5: $13
    rrca                                          ; $6ed6: $0f
    ld d, $02                                     ; $6ed7: $16 $02
    ld c, $81                                     ; $6ed9: $0e $81
    ld e, $02                                     ; $6edb: $1e $02
    inc e                                         ; $6edd: $1c
    ld [bc], a                                    ; $6ede: $02
    db $10                                        ; $6edf: $10

jr_0f7_6ee0:
    ld [bc], a                                    ; $6ee0: $02
    add b                                         ; $6ee1: $80
    ld [bc], a                                    ; $6ee2: $02
    nop                                           ; $6ee3: $00
    ld [bc], a                                    ; $6ee4: $02
    ccf                                           ; $6ee5: $3f
    ld e, $00                                     ; $6ee6: $1e $00
    rst $38                                       ; $6ee8: $ff
    inc de                                        ; $6ee9: $13
    rlca                                          ; $6eea: $07
    ei                                            ; $6eeb: $fb
    ld b, $f9                                     ; $6eec: $06 $f9
    ld [bc], a                                    ; $6eee: $02
    db $e4                                        ; $6eef: $e4
    db $fc                                        ; $6ef0: $fc
    db $f4                                        ; $6ef1: $f4
    ei                                            ; $6ef2: $fb
    db $f4                                        ; $6ef3: $f4
    cp $04                                        ; $6ef4: $fe $04
    or $04                                        ; $6ef6: $f6 $04
    cp $06                                        ; $6ef8: $fe $06
    inc bc                                        ; $6efa: $03
    inc d                                         ; $6efb: $14
    ei                                            ; $6efc: $fb
    inc b                                         ; $6efd: $04
    ld [$1c06], sp                                ; $6efe: $08 $06 $1c
    or [hl]                                       ; $6f01: $b6
    inc d                                         ; $6f02: $14
    inc e                                         ; $6f03: $1c
    inc d                                         ; $6f04: $14
    inc e                                         ; $6f05: $1c
    ld [hl], $3e                                  ; $6f06: $36 $3e
    ld [hl], $3e                                  ; $6f08: $36 $3e
    ld [hl-], a                                   ; $6f0a: $32
    ld a, $36                                     ; $6f0b: $3e $36
    ld a, $22                                     ; $6f0d: $3e $22
    ld a, $32                                     ; $6f0f: $3e $32
    ld a, $36                                     ; $6f11: $3e $36
    ld a, $36                                     ; $6f13: $3e $36
    ld a, $67                                     ; $6f15: $3e $67
    ld a, a                                       ; $6f17: $7f
    add hl, sp                                    ; $6f18: $39
    ccf                                           ; $6f19: $3f
    inc hl                                        ; $6f1a: $23
    ccf                                           ; $6f1b: $3f
    jr nc, @+$41                                  ; $6f1c: $30 $3f

    ld sp, $203f                                  ; $6f1e: $31 $3f $20
    ccf                                           ; $6f21: $3f
    dec [hl]                                      ; $6f22: $35
    dec sp                                        ; $6f23: $3b
    jr nc, jr_0f7_6f65                            ; $6f24: $30 $3f

    dec h                                         ; $6f26: $25
    dec sp                                        ; $6f27: $3b
    ld [hl], l                                    ; $6f28: $75
    ld a, e                                       ; $6f29: $7b
    ld h, h                                       ; $6f2a: $64
    ld a, e                                       ; $6f2b: $7b
    ld b, b                                       ; $6f2c: $40
    ld a, a                                       ; $6f2d: $7f
    ld h, b                                       ; $6f2e: $60
    ld a, a                                       ; $6f2f: $7f
    ld l, d                                       ; $6f30: $6a
    ld [hl], l                                    ; $6f31: $75
    ret z                                         ; $6f32: $c8

    rst $30                                       ; $6f33: $f7
    adc d                                         ; $6f34: $8a
    push af                                       ; $6f35: $f5
    ld [c], a                                     ; $6f36: $e2
    db $dd                                        ; $6f37: $dd
    db $10                                        ; $6f38: $10
    inc b                                         ; $6f39: $04
    ld b, $06                                     ; $6f3a: $06 $06
    add c                                         ; $6f3c: $81
    ld [bc], a                                    ; $6f3d: $02
    inc bc                                        ; $6f3e: $03
    ld b, $a4                                     ; $6f3f: $06 $a4
    inc bc                                        ; $6f41: $03
    rlca                                          ; $6f42: $07
    ld bc, $0307                                  ; $6f43: $01 $07 $03
    rlca                                          ; $6f46: $07
    dec b                                         ; $6f47: $05
    ld b, $04                                     ; $6f48: $06 $04
    rlca                                          ; $6f4a: $07
    ld [$0c0f], sp                                ; $6f4b: $08 $0f $0c
    rrca                                          ; $6f4e: $0f
    ld a, [de]                                    ; $6f4f: $1a
    dec e                                         ; $6f50: $1d
    ld a, [de]                                    ; $6f51: $1a
    dec e                                         ; $6f52: $1d
    inc de                                        ; $6f53: $13
    inc e                                         ; $6f54: $1c
    ld a, [hl-]                                   ; $6f55: $3a
    dec [hl]                                      ; $6f56: $35
    ld l, a                                       ; $6f57: $6f
    ld [hl], b                                    ; $6f58: $70
    rst $08                                       ; $6f59: $cf
    ldh a, [$df]                                  ; $6f5a: $f0 $df
    ldh [$cb], a                                  ; $6f5c: $e0 $cb
    db $f4                                        ; $6f5e: $f4
    ld l, e                                       ; $6f5f: $6b
    ld [hl], h                                    ; $6f60: $74
    ld [hl], e                                    ; $6f61: $73
    ld a, h                                       ; $6f62: $7c
    jr c, jr_0f7_6fa4                             ; $6f63: $38 $3f

jr_0f7_6f65:
    ld [bc], a                                    ; $6f65: $02
    rrca                                          ; $6f66: $0f
    and b                                         ; $6f67: $a0
    ld sp, $b5cf                                  ; $6f68: $31 $cf $b5
    ld c, e                                       ; $6f6b: $4b
    xor b                                         ; $6f6c: $a8
    ld d, a                                       ; $6f6d: $57
    jp hl                                         ; $6f6e: $e9


    rla                                           ; $6f6f: $17
    xor $11                                       ; $6f70: $ee $11
    db $fc                                        ; $6f72: $fc
    inc bc                                        ; $6f73: $03
    ld a, [$fa05]                                 ; $6f74: $fa $05 $fa
    dec b                                         ; $6f77: $05
    rst $38                                       ; $6f78: $ff
    nop                                           ; $6f79: $00
    rst $18                                       ; $6f7a: $df
    jr nz, @+$01                                  ; $6f7b: $20 $ff

    nop                                           ; $6f7d: $00
    jp c, Jump_0f7_5b25                           ; $6f7e: $da $25 $5b

    and h                                         ; $6f81: $a4
    ld e, d                                       ; $6f82: $5a
    and l                                         ; $6f83: $a5
    ld h, b                                       ; $6f84: $60
    sbc a                                         ; $6f85: $9f
    inc bc                                        ; $6f86: $03
    rst $38                                       ; $6f87: $ff
    inc b                                         ; $6f88: $04
    db $10                                        ; $6f89: $10
    inc b                                         ; $6f8a: $04
    jr @-$6e                                      ; $6f8b: $18 $90

    ld [$1c18], sp                                ; $6f8d: $08 $18 $1c
    inc c                                         ; $6f90: $0c
    ld d, $0e                                     ; $6f91: $16 $0e
    inc de                                        ; $6f93: $13
    rrca                                          ; $6f94: $0f
    dec de                                        ; $6f95: $1b
    rlca                                          ; $6f96: $07
    inc de                                        ; $6f97: $13
    rrca                                          ; $6f98: $0f
    ld b, $1e                                     ; $6f99: $06 $1e
    ld c, $1e                                     ; $6f9b: $0e $1e
    ld [bc], a                                    ; $6f9d: $02
    inc e                                         ; $6f9e: $1c
    ld [bc], a                                    ; $6f9f: $02
    db $10                                        ; $6fa0: $10
    ld [bc], a                                    ; $6fa1: $02
    add b                                         ; $6fa2: $80
    ld [bc], a                                    ; $6fa3: $02

jr_0f7_6fa4:
    nop                                           ; $6fa4: $00
    ld [bc], a                                    ; $6fa5: $02
    ccf                                           ; $6fa6: $3f
    ld e, $00                                     ; $6fa7: $1e $00
    rst $38                                       ; $6fa9: $ff
    inc de                                        ; $6faa: $13
    rlca                                          ; $6fab: $07
    ei                                            ; $6fac: $fb
    ld b, $f9                                     ; $6fad: $06 $f9
    ld [bc], a                                    ; $6faf: $02
    db $e4                                        ; $6fb0: $e4
    db $fc                                        ; $6fb1: $fc
    db $f4                                        ; $6fb2: $f4
    ei                                            ; $6fb3: $fb
    db $f4                                        ; $6fb4: $f4
    cp $04                                        ; $6fb5: $fe $04
    or $04                                        ; $6fb7: $f6 $04
    cp $06                                        ; $6fb9: $fe $06
    inc bc                                        ; $6fbb: $03
    inc d                                         ; $6fbc: $14
    ei                                            ; $6fbd: $fb
    inc b                                         ; $6fbe: $04
    ld [$1c06], sp                                ; $6fbf: $08 $06 $1c
    or [hl]                                       ; $6fc2: $b6
    inc d                                         ; $6fc3: $14
    inc e                                         ; $6fc4: $1c
    inc d                                         ; $6fc5: $14
    inc e                                         ; $6fc6: $1c
    ld [hl], $3e                                  ; $6fc7: $36 $3e
    ld [hl], $3e                                  ; $6fc9: $36 $3e
    ld [hl-], a                                   ; $6fcb: $32
    ld a, $36                                     ; $6fcc: $3e $36
    ld a, $22                                     ; $6fce: $3e $22
    ld a, $32                                     ; $6fd0: $3e $32
    ld a, $36                                     ; $6fd2: $3e $36
    ld a, $36                                     ; $6fd4: $3e $36
    ld a, $67                                     ; $6fd6: $3e $67
    ld a, a                                       ; $6fd8: $7f
    add hl, sp                                    ; $6fd9: $39
    ccf                                           ; $6fda: $3f
    inc hl                                        ; $6fdb: $23
    ccf                                           ; $6fdc: $3f
    jr nc, jr_0f7_701e                            ; $6fdd: $30 $3f

    dec [hl]                                      ; $6fdf: $35
    dec sp                                        ; $6fe0: $3b
    jr nz, jr_0f7_7022                            ; $6fe1: $20 $3f

    dec [hl]                                      ; $6fe3: $35
    dec sp                                        ; $6fe4: $3b
    inc [hl]                                      ; $6fe5: $34
    dec sp                                        ; $6fe6: $3b
    dec h                                         ; $6fe7: $25
    dec sp                                        ; $6fe8: $3b
    ld [hl], c                                    ; $6fe9: $71
    ld a, a                                       ; $6fea: $7f
    ld h, b                                       ; $6feb: $60
    ld a, a                                       ; $6fec: $7f
    ld c, d                                       ; $6fed: $4a
    ld [hl], l                                    ; $6fee: $75
    ld l, b                                       ; $6fef: $68
    ld [hl], a                                    ; $6ff0: $77
    ld l, d                                       ; $6ff1: $6a
    ld [hl], l                                    ; $6ff2: $75
    ld [c], a                                     ; $6ff3: $e2
    db $dd                                        ; $6ff4: $dd
    add [hl]                                      ; $6ff5: $86
    ld sp, hl                                     ; $6ff6: $f9
    sub $e9                                       ; $6ff7: $d6 $e9
    db $10                                        ; $6ff9: $10
    inc b                                         ; $6ffa: $04
    ld b, $06                                     ; $6ffb: $06 $06
    add c                                         ; $6ffd: $81
    ld [bc], a                                    ; $6ffe: $02
    inc bc                                        ; $6fff: $03
    ld b, $a4                                     ; $7000: $06 $a4
    inc bc                                        ; $7002: $03
    rlca                                          ; $7003: $07
    ld bc, $0307                                  ; $7004: $01 $07 $03
    rlca                                          ; $7007: $07
    inc b                                         ; $7008: $04
    rlca                                          ; $7009: $07
    inc b                                         ; $700a: $04
    rlca                                          ; $700b: $07
    ld [$0e0f], sp                                ; $700c: $08 $0f $0e
    dec c                                         ; $700f: $0d
    dec de                                        ; $7010: $1b
    inc e                                         ; $7011: $1c
    ld a, [de]                                    ; $7012: $1a
    dec e                                         ; $7013: $1d
    rla                                           ; $7014: $17
    jr jr_0f7_704e                                ; $7015: $18 $37

    jr c, jr_0f7_7088                             ; $7017: $38 $6f

    ld [hl], b                                    ; $7019: $70
    set 6, h                                      ; $701a: $cb $f4
    db $db                                        ; $701c: $db
    db $e4                                        ; $701d: $e4

jr_0f7_701e:
    db $db                                        ; $701e: $db
    db $e4                                        ; $701f: $e4
    ld l, a                                       ; $7020: $6f
    ld [hl], b                                    ; $7021: $70

jr_0f7_7022:
    ld [hl], l                                    ; $7022: $75
    ld a, d                                       ; $7023: $7a
    jr c, jr_0f7_7065                             ; $7024: $38 $3f

    ld [bc], a                                    ; $7026: $02
    rrca                                          ; $7027: $0f
    and b                                         ; $7028: $a0
    xor c                                         ; $7029: $a9
    ld d, a                                       ; $702a: $57
    jp hl                                         ; $702b: $e9


    rla                                           ; $702c: $17
    db $ec                                        ; $702d: $ec
    inc de                                        ; $702e: $13
    ld sp, hl                                     ; $702f: $f9
    rlca                                          ; $7030: $07
    db $fc                                        ; $7031: $fc
    inc bc                                        ; $7032: $03
    sbc $21                                       ; $7033: $de $21
    ei                                            ; $7035: $fb
    inc b                                         ; $7036: $04
    ld e, e                                       ; $7037: $5b
    and h                                         ; $7038: $a4
    db $db                                        ; $7039: $db
    inc h                                         ; $703a: $24
    ld e, [hl]                                    ; $703b: $5e
    and c                                         ; $703c: $a1
    ld a, a                                       ; $703d: $7f
    add b                                         ; $703e: $80
    rst $38                                       ; $703f: $ff
    nop                                           ; $7040: $00
    rst $30                                       ; $7041: $f7
    ld [$09f6], sp                                ; $7042: $08 $f6 $09
    ret nc                                        ; $7045: $d0

    cpl                                           ; $7046: $2f
    inc bc                                        ; $7047: $03
    rst $38                                       ; $7048: $ff
    inc b                                         ; $7049: $04
    db $10                                        ; $704a: $10
    inc b                                         ; $704b: $04
    jr @-$6e                                      ; $704c: $18 $90

jr_0f7_704e:
    ld [$0c18], sp                                ; $704e: $08 $18 $0c
    inc e                                         ; $7051: $1c
    ld d, $0e                                     ; $7052: $16 $0e
    inc de                                        ; $7054: $13
    rrca                                          ; $7055: $0f
    dec bc                                        ; $7056: $0b
    rla                                           ; $7057: $17
    dec de                                        ; $7058: $1b
    rlca                                          ; $7059: $07
    ld b, $1e                                     ; $705a: $06 $1e
    ld c, $1e                                     ; $705c: $0e $1e
    ld [bc], a                                    ; $705e: $02
    inc e                                         ; $705f: $1c
    ld [bc], a                                    ; $7060: $02
    db $10                                        ; $7061: $10
    ld [bc], a                                    ; $7062: $02
    add b                                         ; $7063: $80
    ld [bc], a                                    ; $7064: $02

jr_0f7_7065:
    nop                                           ; $7065: $00
    ld [bc], a                                    ; $7066: $02
    ccf                                           ; $7067: $3f
    ld e, $00                                     ; $7068: $1e $00
    rst $38                                       ; $706a: $ff
    inc de                                        ; $706b: $13
    rlca                                          ; $706c: $07
    ei                                            ; $706d: $fb
    ld b, $f9                                     ; $706e: $06 $f9
    ld [bc], a                                    ; $7070: $02
    db $e4                                        ; $7071: $e4
    db $fc                                        ; $7072: $fc
    db $f4                                        ; $7073: $f4
    ei                                            ; $7074: $fb
    db $f4                                        ; $7075: $f4
    cp $04                                        ; $7076: $fe $04
    or $04                                        ; $7078: $f6 $04
    cp $06                                        ; $707a: $fe $06
    inc bc                                        ; $707c: $03
    inc d                                         ; $707d: $14
    ei                                            ; $707e: $fb
    inc b                                         ; $707f: $04
    ld [$1c06], sp                                ; $7080: $08 $06 $1c
    or [hl]                                       ; $7083: $b6
    inc d                                         ; $7084: $14
    inc e                                         ; $7085: $1c
    inc d                                         ; $7086: $14
    inc e                                         ; $7087: $1c

jr_0f7_7088:
    ld [hl], $3e                                  ; $7088: $36 $3e
    ld [hl], $3e                                  ; $708a: $36 $3e
    ld [hl-], a                                   ; $708c: $32
    ld a, $36                                     ; $708d: $3e $36
    ld a, $22                                     ; $708f: $3e $22
    ld a, $32                                     ; $7091: $3e $32
    ld a, $36                                     ; $7093: $3e $36
    ld a, $36                                     ; $7095: $3e $36
    ld a, $67                                     ; $7097: $3e $67
    ld a, a                                       ; $7099: $7f
    dec a                                         ; $709a: $3d
    dec sp                                        ; $709b: $3b
    daa                                           ; $709c: $27
    dec sp                                        ; $709d: $3b
    jr nc, @+$41                                  ; $709e: $30 $3f

    dec [hl]                                      ; $70a0: $35
    dec sp                                        ; $70a1: $3b
    inc h                                         ; $70a2: $24
    dec sp                                        ; $70a3: $3b
    ld sp, $303f                                  ; $70a4: $31 $3f $30
    ccf                                           ; $70a7: $3f
    add hl, hl                                    ; $70a8: $29
    scf                                           ; $70a9: $37
    ld a, e                                       ; $70aa: $7b
    ld [hl], l                                    ; $70ab: $75
    ld l, b                                       ; $70ac: $68
    ld [hl], a                                    ; $70ad: $77
    ld b, d                                       ; $70ae: $42
    ld a, l                                       ; $70af: $7d
    ld h, d                                       ; $70b0: $62
    ld a, l                                       ; $70b1: $7d
    ld h, [hl]                                    ; $70b2: $66
    ld a, c                                       ; $70b3: $79
    call nc, $95eb                                ; $70b4: $d4 $eb $95
    ld [$e0df], a                                 ; $70b7: $ea $df $e0
    db $10                                        ; $70ba: $10
    inc b                                         ; $70bb: $04
    ld b, $06                                     ; $70bc: $06 $06
    add c                                         ; $70be: $81
    ld [bc], a                                    ; $70bf: $02
    inc bc                                        ; $70c0: $03
    ld b, $a4                                     ; $70c1: $06 $a4
    inc bc                                        ; $70c3: $03
    rlca                                          ; $70c4: $07
    ld bc, $0307                                  ; $70c5: $01 $07 $03
    rlca                                          ; $70c8: $07
    inc b                                         ; $70c9: $04
    rlca                                          ; $70ca: $07
    inc b                                         ; $70cb: $04
    rlca                                          ; $70cc: $07
    add hl, bc                                    ; $70cd: $09
    ld c, $0c                                     ; $70ce: $0e $0c
    rrca                                          ; $70d0: $0f
    dec de                                        ; $70d1: $1b
    inc e                                         ; $70d2: $1c
    dec de                                        ; $70d3: $1b
    inc e                                         ; $70d4: $1c
    rla                                           ; $70d5: $17
    jr jr_0f7_710b                                ; $70d6: $18 $33

    inc a                                         ; $70d8: $3c
    ld l, e                                       ; $70d9: $6b
    ld [hl], h                                    ; $70da: $74
    set 6, h                                      ; $70db: $cb $f4
    rst $08                                       ; $70dd: $cf
    ldh a, [$db]                                  ; $70de: $f0 $db
    db $e4                                        ; $70e0: $e4
    ld l, a                                       ; $70e1: $6f
    ld [hl], b                                    ; $70e2: $70
    ld [hl], l                                    ; $70e3: $75
    ld a, d                                       ; $70e4: $7a
    add hl, sp                                    ; $70e5: $39
    ld a, $02                                     ; $70e6: $3e $02
    rrca                                          ; $70e8: $0f
    and b                                         ; $70e9: $a0
    call $fd33                                    ; $70ea: $cd $33 $fd
    inc bc                                        ; $70ed: $03
    call c, $dd23                                 ; $70ee: $dc $23 $dd
    inc hl                                        ; $70f1: $23
    jp c, Jump_0f7_5225                           ; $70f2: $da $25 $52

    xor l                                         ; $70f5: $ad
    rst $38                                       ; $70f6: $ff
    nop                                           ; $70f7: $00
    halt                                          ; $70f8: $76
    adc c                                         ; $70f9: $89
    ld [hl], a                                    ; $70fa: $77
    adc b                                         ; $70fb: $88
    ld [hl], a                                    ; $70fc: $77
    adc b                                         ; $70fd: $88
    rst $38                                       ; $70fe: $ff
    nop                                           ; $70ff: $00
    rst $38                                       ; $7100: $ff
    nop                                           ; $7101: $00
    cp l                                          ; $7102: $bd
    ld b, d                                       ; $7103: $42
    cp l                                          ; $7104: $bd
    ld b, d                                       ; $7105: $42
    db $10                                        ; $7106: $10
    rst $28                                       ; $7107: $ef
    inc bc                                        ; $7108: $03
    rst $38                                       ; $7109: $ff
    inc b                                         ; $710a: $04

jr_0f7_710b:
    db $10                                        ; $710b: $10
    inc b                                         ; $710c: $04
    jr @-$6e                                      ; $710d: $18 $90

    ld [$1c18], sp                                ; $710f: $08 $18 $1c
    inc c                                         ; $7112: $0c
    ld b, $1e                                     ; $7113: $06 $1e
    inc de                                        ; $7115: $13
    rrca                                          ; $7116: $0f
    inc bc                                        ; $7117: $03
    rra                                           ; $7118: $1f
    inc de                                        ; $7119: $13
    rrca                                          ; $711a: $0f
    ld b, $1e                                     ; $711b: $06 $1e
    ld c, $1e                                     ; $711d: $0e $1e
    ld [bc], a                                    ; $711f: $02
    inc e                                         ; $7120: $1c
    ld [bc], a                                    ; $7121: $02
    db $10                                        ; $7122: $10
    ld [bc], a                                    ; $7123: $02
    add b                                         ; $7124: $80
    ld [bc], a                                    ; $7125: $02
    nop                                           ; $7126: $00
    ld [bc], a                                    ; $7127: $02
    ccf                                           ; $7128: $3f
    ld e, $00                                     ; $7129: $1e $00
    rst $38                                       ; $712b: $ff
    inc de                                        ; $712c: $13
    rlca                                          ; $712d: $07
    ei                                            ; $712e: $fb
    ld b, $f9                                     ; $712f: $06 $f9
    ld [bc], a                                    ; $7131: $02
    db $e4                                        ; $7132: $e4
    db $fc                                        ; $7133: $fc
    db $f4                                        ; $7134: $f4
    ei                                            ; $7135: $fb
    db $f4                                        ; $7136: $f4
    cp $04                                        ; $7137: $fe $04
    or $04                                        ; $7139: $f6 $04
    cp $06                                        ; $713b: $fe $06
    inc bc                                        ; $713d: $03
    inc d                                         ; $713e: $14
    ei                                            ; $713f: $fb
    inc b                                         ; $7140: $04
    ld [$1c06], sp                                ; $7141: $08 $06 $1c
    sub c                                         ; $7144: $91
    inc d                                         ; $7145: $14
    inc e                                         ; $7146: $1c
    inc d                                         ; $7147: $14
    inc e                                         ; $7148: $1c
    ld [hl], $3e                                  ; $7149: $36 $3e
    ld [hl], $3e                                  ; $714b: $36 $3e
    ld [hl-], a                                   ; $714d: $32
    ld a, $36                                     ; $714e: $3e $36
    ld a, $22                                     ; $7150: $3e $22
    ld a, $32                                     ; $7152: $3e $32
    ld a, $36                                     ; $7154: $3e $36
    ld [bc], a                                    ; $7156: $02
    ld a, $a3                                     ; $7157: $3e $a3
    ld [hl], $6f                                  ; $7159: $36 $6f
    ld [hl], a                                    ; $715b: $77
    add hl, sp                                    ; $715c: $39
    ccf                                           ; $715d: $3f
    daa                                           ; $715e: $27
    dec sp                                        ; $715f: $3b
    inc [hl]                                      ; $7160: $34

jr_0f7_7161:
    dec sp                                        ; $7161: $3b
    ld sp, $203f                                  ; $7162: $31 $3f $20
    ccf                                           ; $7165: $3f
    add hl, sp                                    ; $7166: $39
    scf                                           ; $7167: $37
    ld a, [hl-]                                   ; $7168: $3a
    dec [hl]                                      ; $7169: $35
    add hl, hl                                    ; $716a: $29
    scf                                           ; $716b: $37
    ld [hl], e                                    ; $716c: $73
    ld a, l                                       ; $716d: $7d
    ld h, b                                       ; $716e: $60
    ld a, a                                       ; $716f: $7f
    ld b, [hl]                                    ; $7170: $46
    ld a, c                                       ; $7171: $79
    ld [hl], h                                    ; $7172: $74
    ld l, e                                       ; $7173: $6b
    ld [hl], h                                    ; $7174: $74
    ld l, e                                       ; $7175: $6b
    sbc $e1                                       ; $7176: $de $e1
    sbc d                                         ; $7178: $9a
    push hl                                       ; $7179: $e5
    rst $18                                       ; $717a: $df
    ldh [rNR10], a                                ; $717b: $e0 $10
    inc b                                         ; $717d: $04
    ld b, $06                                     ; $717e: $06 $06
    add c                                         ; $7180: $81
    ld [bc], a                                    ; $7181: $02
    inc bc                                        ; $7182: $03
    ld b, $a4                                     ; $7183: $06 $a4
    inc bc                                        ; $7185: $03
    rlca                                          ; $7186: $07
    ld bc, $0307                                  ; $7187: $01 $07 $03
    rlca                                          ; $718a: $07
    dec b                                         ; $718b: $05
    ld b, $04                                     ; $718c: $06 $04
    rlca                                          ; $718e: $07
    add hl, bc                                    ; $718f: $09
    ld c, $0d                                     ; $7190: $0e $0d
    ld c, $1b                                     ; $7192: $0e $1b
    inc e                                         ; $7194: $1c
    dec de                                        ; $7195: $1b
    inc e                                         ; $7196: $1c
    inc de                                        ; $7197: $13
    inc e                                         ; $7198: $1c
    dec sp                                        ; $7199: $3b
    inc [hl]                                      ; $719a: $34
    ld l, a                                       ; $719b: $6f
    ld [hl], b                                    ; $719c: $70
    db $db                                        ; $719d: $db
    db $e4                                        ; $719e: $e4
    rst $08                                       ; $719f: $cf
    ldh a, [$de]                                  ; $71a0: $f0 $de
    pop hl                                        ; $71a2: $e1
    ld l, d                                       ; $71a3: $6a
    ld [hl], l                                    ; $71a4: $75
    ld [hl], e                                    ; $71a5: $73
    ld a, h                                       ; $71a6: $7c
    jr c, jr_0f7_71e8                             ; $71a7: $38 $3f

    ld [bc], a                                    ; $71a9: $02
    rrca                                          ; $71aa: $0f
    and b                                         ; $71ab: $a0
    db $dd                                        ; $71ac: $dd
    inc hl                                        ; $71ad: $23
    reti                                          ; $71ae: $d9


    daa                                           ; $71af: $27
    call c, $d523                                 ; $71b0: $dc $23 $d5
    dec hl                                        ; $71b3: $2b
    ld a, [hl]                                    ; $71b4: $7e
    add c                                         ; $71b5: $81
    or $09                                        ; $71b6: $f6 $09
    ld [hl], a                                    ; $71b8: $77
    adc b                                         ; $71b9: $88
    ld [hl], a                                    ; $71ba: $77
    adc b                                         ; $71bb: $88
    ld a, a                                       ; $71bc: $7f
    add b                                         ; $71bd: $80
    ei                                            ; $71be: $fb
    inc b                                         ; $71bf: $04
    cp e                                          ; $71c0: $bb
    ld b, h                                       ; $71c1: $44
    cp [hl]                                       ; $71c2: $be
    ld b, c                                       ; $71c3: $41
    cp $01                                        ; $71c4: $fe $01
    db $ec                                        ; $71c6: $ec
    inc de                                        ; $71c7: $13
    ret z                                         ; $71c8: $c8

    scf                                           ; $71c9: $37
    inc bc                                        ; $71ca: $03
    rst $38                                       ; $71cb: $ff
    inc b                                         ; $71cc: $04
    db $10                                        ; $71cd: $10
    inc b                                         ; $71ce: $04
    jr jr_0f7_7161                                ; $71cf: $18 $90

    ld [$0c18], sp                                ; $71d1: $08 $18 $0c
    inc e                                         ; $71d4: $1c
    ld b, $1e                                     ; $71d5: $06 $1e
    inc de                                        ; $71d7: $13
    rrca                                          ; $71d8: $0f
    inc de                                        ; $71d9: $13
    rrca                                          ; $71da: $0f
    inc de                                        ; $71db: $13
    rrca                                          ; $71dc: $0f
    ld b, $1e                                     ; $71dd: $06 $1e
    ld c, $1e                                     ; $71df: $0e $1e
    ld [bc], a                                    ; $71e1: $02
    inc e                                         ; $71e2: $1c
    ld [bc], a                                    ; $71e3: $02
    db $10                                        ; $71e4: $10
    ld [bc], a                                    ; $71e5: $02
    add b                                         ; $71e6: $80
    ld [bc], a                                    ; $71e7: $02

jr_0f7_71e8:
    nop                                           ; $71e8: $00
    ld [bc], a                                    ; $71e9: $02
    ccf                                           ; $71ea: $3f
    ld e, $00                                     ; $71eb: $1e $00
    rst $38                                       ; $71ed: $ff
    dec bc                                        ; $71ee: $0b
    inc bc                                        ; $71ef: $03
    ei                                            ; $71f0: $fb
    ld b, $f9                                     ; $71f1: $06 $f9
    ld [bc], a                                    ; $71f3: $02
    db $e4                                        ; $71f4: $e4
    db $fc                                        ; $71f5: $fc
    db $f4                                        ; $71f6: $f4
    db $fc                                        ; $71f7: $fc
    ei                                            ; $71f8: $fb
    db $fd                                        ; $71f9: $fd
    inc b                                         ; $71fa: $04
    ld [$1c06], sp                                ; $71fb: $08 $06 $1c
    or [hl]                                       ; $71fe: $b6
    inc d                                         ; $71ff: $14
    inc e                                         ; $7200: $1c
    inc d                                         ; $7201: $14
    inc e                                         ; $7202: $1c
    inc d                                         ; $7203: $14
    inc e                                         ; $7204: $1c
    inc d                                         ; $7205: $14
    inc e                                         ; $7206: $1c
    ld [hl], $3e                                  ; $7207: $36 $3e
    ld [hl], $3e                                  ; $7209: $36 $3e
    ld [hl+], a                                   ; $720b: $22

Call_0f7_720c:
    ld a, $26                                     ; $720c: $3e $26
    ld a, $36                                     ; $720e: $3e $36
    ld a, $75                                     ; $7210: $3e $75
    ld a, a                                       ; $7212: $7f
    ld d, l                                       ; $7213: $55
    ld a, a                                       ; $7214: $7f
    ld d, l                                       ; $7215: $55
    ld a, a                                       ; $7216: $7f
    ld d, h                                       ; $7217: $54
    ld a, a                                       ; $7218: $7f
    dec d                                         ; $7219: $15
    ld a, a                                       ; $721a: $7f
    ld b, b                                       ; $721b: $40
    ld a, a                                       ; $721c: $7f
    db $10                                        ; $721d: $10
    ld a, a                                       ; $721e: $7f
    nop                                           ; $721f: $00
    ld a, a                                       ; $7220: $7f
    ld a, [bc]                                    ; $7221: $0a
    ld [hl], l                                    ; $7222: $75
    xor h                                         ; $7223: $ac
    db $d3                                        ; $7224: $d3
    sbc b                                         ; $7225: $98
    rst $20                                       ; $7226: $e7
    ld l, $d1                                     ; $7227: $2e $d1
    ld a, a                                       ; $7229: $7f
    add b                                         ; $722a: $80
    ld a, $c1                                     ; $722b: $3e $c1
    db $fc                                        ; $722d: $fc
    add e                                         ; $722e: $83
    ld e, $61                                     ; $722f: $1e $61
    inc d                                         ; $7231: $14
    ld l, e                                       ; $7232: $6b
    ld [$0436], sp                                ; $7233: $08 $36 $04
    ld bc, $0085                                  ; $7236: $01 $85 $00
    ld bc, $0100                                  ; $7239: $01 $00 $01
    nop                                           ; $723c: $00
    inc bc                                        ; $723d: $03
    ld bc, $0007                                  ; $723e: $01 $07 $00
    add c                                         ; $7241: $81
    jr c, jr_0f7_7250                             ; $7242: $38 $0c

    nop                                           ; $7244: $00
    rst $38                                       ; $7245: $ff
    dec bc                                        ; $7246: $0b
    inc bc                                        ; $7247: $03
    ei                                            ; $7248: $fb
    ld b, $f9                                     ; $7249: $06 $f9
    ld [bc], a                                    ; $724b: $02
    ldh [$fb], a                                  ; $724c: $e0 $fb
    ldh a, [$fb]                                  ; $724e: $f0 $fb

jr_0f7_7250:
    nop                                           ; $7250: $00
    ei                                            ; $7251: $fb
    ld [bc], a                                    ; $7252: $02
    inc b                                         ; $7253: $04
    ld [bc], a                                    ; $7254: $02
    nop                                           ; $7255: $00
    ld [bc], a                                    ; $7256: $02
    dec d                                         ; $7257: $15
    ld [bc], a                                    ; $7258: $02
    inc b                                         ; $7259: $04
    ld [bc], a                                    ; $725a: $02
    ld d, $96                                     ; $725b: $16 $96
    dec bc                                        ; $725d: $0b
    rrca                                          ; $725e: $0f
    add hl, de                                    ; $725f: $19
    rra                                           ; $7260: $1f
    ld d, $19                                     ; $7261: $16 $19
    add hl, bc                                    ; $7263: $09
    rrca                                          ; $7264: $0f
    dec e                                         ; $7265: $1d
    dec de                                        ; $7266: $1b
    ld [$030e], sp                                ; $7267: $08 $0e $03
    rlca                                          ; $726a: $07
    inc c                                         ; $726b: $0c
    ld c, $05                                     ; $726c: $0e $05
    rlca                                          ; $726e: $07
    dec c                                         ; $726f: $0d
    dec bc                                        ; $7270: $0b
    ld a, [bc]                                    ; $7271: $0a
    ld c, $02                                     ; $7272: $0e $02
    inc c                                         ; $7274: $0c
    sbc l                                         ; $7275: $9d
    ld b, $0e                                     ; $7276: $06 $0e
    ld [bc], a                                    ; $7278: $02
    ld c, $03                                     ; $7279: $0e $03
    rlca                                          ; $727b: $07
    dec c                                         ; $727c: $0d
    dec bc                                        ; $727d: $0b
    ld bc, $0a07                                  ; $727e: $01 $07 $0a
    ld c, $0a                                     ; $7281: $0e $0a
    ld c, $0b                                     ; $7283: $0e $0b
    rrca                                          ; $7285: $0f
    ld [bc], a                                    ; $7286: $02
    ld b, $0a                                     ; $7287: $06 $0a
    ld c, $02                                     ; $7289: $0e $02
    ld b, $08                                     ; $728b: $06 $08
    inc c                                         ; $728d: $0c
    ld a, [bc]                                    ; $728e: $0a
    ld c, $0c                                     ; $728f: $0e $0c
    ld [$030a], sp                                ; $7291: $08 $0a $03
    ld c, $06                                     ; $7294: $0e $06
    inc b                                         ; $7296: $04
    jr jr_0f7_7299                                ; $7297: $18 $00

jr_0f7_7299:
    rst $38                                       ; $7299: $ff
    add hl, bc                                    ; $729a: $09
    ld [bc], a                                    ; $729b: $02
    ei                                            ; $729c: $fb
    ld b, $f9                                     ; $729d: $06 $f9
    ld [bc], a                                    ; $729f: $02
    rst $18                                       ; $72a0: $df
    ei                                            ; $72a1: $fb
    rst $28                                       ; $72a2: $ef
    ei                                            ; $72a3: $fb
    ld [bc], a                                    ; $72a4: $02
    inc b                                         ; $72a5: $04
    ld [bc], a                                    ; $72a6: $02
    nop                                           ; $72a7: $00
    ld [bc], a                                    ; $72a8: $02
    dec d                                         ; $72a9: $15
    ld [bc], a                                    ; $72aa: $02
    inc b                                         ; $72ab: $04
    ld [bc], a                                    ; $72ac: $02
    dec d                                         ; $72ad: $15
    sub c                                         ; $72ae: $91
    nop                                           ; $72af: $00
    inc b                                         ; $72b0: $04
    ld [de], a                                    ; $72b1: $12
    ld e, $0d                                     ; $72b2: $1e $0d
    dec bc                                        ; $72b4: $0b
    inc d                                         ; $72b5: $14
    ld a, [de]                                    ; $72b6: $1a
    add hl, bc                                    ; $72b7: $09
    rrca                                          ; $72b8: $0f
    ld [bc], a                                    ; $72b9: $02
    ld b, $1a                                     ; $72ba: $06 $1a
    ld e, $0a                                     ; $72bc: $1e $0a
    ld c, $0a                                     ; $72be: $0e $0a
    inc bc                                        ; $72c0: $03
    ld b, $84                                     ; $72c1: $06 $84
    dec bc                                        ; $72c3: $0b
    rrca                                          ; $72c4: $0f
    ld a, [bc]                                    ; $72c5: $0a
    ld c, $02                                     ; $72c6: $0e $02
    ld b, $02                                     ; $72c8: $06 $02
    inc b                                         ; $72ca: $04
    add d                                         ; $72cb: $82
    ld a, [bc]                                    ; $72cc: $0a
    ld c, $02                                     ; $72cd: $0e $02
    inc b                                         ; $72cf: $04
    add d                                         ; $72d0: $82
    ld a, [bc]                                    ; $72d1: $0a
    ld c, $02                                     ; $72d2: $0e $02
    ld b, $02                                     ; $72d4: $06 $02
    inc c                                         ; $72d6: $0c
    add c                                         ; $72d7: $81
    ld a, [bc]                                    ; $72d8: $0a
    inc bc                                        ; $72d9: $03
    ld c, $02                                     ; $72da: $0e $02
    inc b                                         ; $72dc: $04
    ld [bc], a                                    ; $72dd: $02
    ld b, $02                                     ; $72de: $06 $02
    nop                                           ; $72e0: $00
    ld [bc], a                                    ; $72e1: $02
    inc b                                         ; $72e2: $04
    ld [bc], a                                    ; $72e3: $02
    nop                                           ; $72e4: $00
    ld [bc], a                                    ; $72e5: $02
    inc b                                         ; $72e6: $04
    rst $38                                       ; $72e7: $ff
    rlca                                          ; $72e8: $07
    ld bc, $06fb                                  ; $72e9: $01 $fb $06
    ld sp, hl                                     ; $72ec: $f9
    ld [bc], a                                    ; $72ed: $02
    call c, Call_000_02fb                         ; $72ee: $dc $fb $02
    inc b                                         ; $72f1: $04
    ld [bc], a                                    ; $72f2: $02
    nop                                           ; $72f3: $00
    ld [bc], a                                    ; $72f4: $02
    dec d                                         ; $72f5: $15
    ld [bc], a                                    ; $72f6: $02
    inc b                                         ; $72f7: $04
    ld [bc], a                                    ; $72f8: $02
    dec d                                         ; $72f9: $15
    adc b                                         ; $72fa: $88
    nop                                           ; $72fb: $00
    inc b                                         ; $72fc: $04
    ld [de], a                                    ; $72fd: $12
    ld e, $08                                     ; $72fe: $1e $08
    ld c, $0a                                     ; $7300: $0e $0a
    ld c, $04                                     ; $7302: $0e $04
    inc b                                         ; $7304: $04
    ld a, [bc]                                    ; $7305: $0a
    nop                                           ; $7306: $00
    rst $38                                       ; $7307: $ff
    dec bc                                        ; $7308: $0b
    inc bc                                        ; $7309: $03
    ld sp, hl                                     ; $730a: $f9
    ld [$08f5], sp                                ; $730b: $08 $f5 $08
    or e                                          ; $730e: $b3
    db $fc                                        ; $730f: $fc
    cp e                                          ; $7310: $bb
    rst $38                                       ; $7311: $ff
    set 7, l                                      ; $7312: $cb $fd
    adc e                                         ; $7314: $8b
    ld b, $08                                     ; $7315: $06 $08
    inc bc                                        ; $7317: $03
    inc c                                         ; $7318: $0c
    ld bc, $0102                                  ; $7319: $01 $02 $01
    ld [bc], a                                    ; $731c: $02
    ld bc, $0102                                  ; $731d: $01 $02 $01
    ld [bc], a                                    ; $7320: $02
    ld [bc], a                                    ; $7321: $02
    sbc d                                         ; $7322: $9a
    inc b                                         ; $7323: $04
    dec b                                         ; $7324: $05
    ld a, [de]                                    ; $7325: $1a
    ld de, $6068                                  ; $7326: $11 $68 $60
    sub b                                         ; $7329: $90
    ld b, b                                       ; $732a: $40
    and b                                         ; $732b: $a0
    ld b, b                                       ; $732c: $40
    and b                                         ; $732d: $a0
    jr nz, @+$42                                  ; $732e: $20 $40

    jr nc, @+$42                                  ; $7330: $30 $40

    db $10                                        ; $7332: $10
    jr z, jr_0f7_7341                             ; $7333: $28 $0c

    inc de                                        ; $7335: $13
    inc b                                         ; $7336: $04
    nop                                           ; $7337: $00
    ld [bc], a                                    ; $7338: $02
    dec b                                         ; $7339: $05
    ld [bc], a                                    ; $733a: $02
    ld bc, $0200                                  ; $733b: $01 $00 $02
    ld [bc], a                                    ; $733e: $02
    add e                                         ; $733f: $83
    inc b                                         ; $7340: $04

jr_0f7_7341:
    nop                                           ; $7341: $00
    ld [bc], a                                    ; $7342: $02
    inc b                                         ; $7343: $04
    nop                                           ; $7344: $00
    xor [hl]                                      ; $7345: $ae
    jr jr_0f7_73ac                                ; $7346: $18 $64

    ld [$0814], sp                                ; $7348: $08 $14 $08
    inc d                                         ; $734b: $14
    inc b                                         ; $734c: $04
    ld a, [bc]                                    ; $734d: $0a
    inc b                                         ; $734e: $04
    ld [bc], a                                    ; $734f: $02
    nop                                           ; $7350: $00
    ld b, $04                                     ; $7351: $06 $04
    ld [bc], a                                    ; $7353: $02
    ld [$0614], sp                                ; $7354: $08 $14 $06
    ld bc, $3c00                                  ; $7357: $01 $00 $3c
    inc e                                         ; $735a: $1c
    ld h, b                                       ; $735b: $60
    jr nz, jr_0f7_739e                            ; $735c: $20 $40

    jr nz, @+$42                                  ; $735e: $20 $40

    jr nz, jr_0f7_73a2                            ; $7360: $20 $40

    jr nz, @+$42                                  ; $7362: $20 $40

    db $10                                        ; $7364: $10
    jr z, @+$0a                                   ; $7365: $28 $08

    inc d                                         ; $7367: $14
    inc b                                         ; $7368: $04
    ld [$0804], sp                                ; $7369: $08 $04 $08
    nop                                           ; $736c: $00
    inc b                                         ; $736d: $04
    ld [$1004], sp                                ; $736e: $08 $04 $10
    ld [$1000], sp                                ; $7371: $08 $00 $10
    ld [bc], a                                    ; $7374: $02
    nop                                           ; $7375: $00
    rst $38                                       ; $7376: $ff
    rla                                           ; $7377: $17
    add hl, bc                                    ; $7378: $09
    ld sp, hl                                     ; $7379: $f9
    ld [$08f5], sp                                ; $737a: $08 $f5 $08
    or e                                          ; $737d: $b3
    ld a, [$feb4]                                 ; $737e: $fa $b4 $fe
    call nz, $c4fc                                ; $7381: $c4 $fc $c4
    cp $d4                                        ; $7384: $fe $d4
    ld sp, hl                                     ; $7386: $f9
    ret c                                         ; $7387: $d8

    rst $38                                       ; $7388: $ff
    rst $20                                       ; $7389: $e7
    db $fc                                        ; $738a: $fc
    add sp, -$02                                  ; $738b: $e8 $fe
    di                                            ; $738d: $f3
    ld sp, hl                                     ; $738e: $f9
    add c                                         ; $738f: $81
    ld [bc], a                                    ; $7390: $02
    ld [bc], a                                    ; $7391: $02
    ld bc, $0284                                  ; $7392: $01 $84 $02
    nop                                           ; $7395: $00
    ld bc, $0200                                  ; $7396: $01 $00 $02
    ld bc, $0602                                  ; $7399: $01 $02 $06
    sub [hl]                                      ; $739c: $96
    add hl, bc                                    ; $739d: $09

jr_0f7_739e:
    ld [$0814], sp                                ; $739e: $08 $14 $08
    inc d                                         ; $73a1: $14

jr_0f7_73a2:
    ld [$0800], sp                                ; $73a2: $08 $00 $08
    inc b                                         ; $73a5: $04
    ld [$1814], sp                                ; $73a6: $08 $14 $18
    jr nz, jr_0f7_73d3                            ; $73a9: $20 $28

    ld d, [hl]                                    ; $73ab: $56

jr_0f7_73ac:
    ld b, l                                       ; $73ac: $45
    xor d                                         ; $73ad: $aa
    nop                                           ; $73ae: $00
    rst $00                                       ; $73af: $c7
    nop                                           ; $73b0: $00
    add b                                         ; $73b1: $80
    nop                                           ; $73b2: $00
    ld [bc], a                                    ; $73b3: $02
    ld [$0084], sp                                ; $73b4: $08 $84 $00
    ld [$0800], sp                                ; $73b7: $08 $00 $08
    stop                                          ; $73ba: $10 $00

jr_0f7_73bc:
    ld [bc], a                                    ; $73bc: $02
    inc c                                         ; $73bd: $0c
    ld [bc], a                                    ; $73be: $02
    ld [bc], a                                    ; $73bf: $02
    adc b                                         ; $73c0: $88
    dec c                                         ; $73c1: $0d
    ld [bc], a                                    ; $73c2: $02
    dec b                                         ; $73c3: $05
    ld [bc], a                                    ; $73c4: $02
    dec b                                         ; $73c5: $05
    nop                                           ; $73c6: $00
    ld bc, $0200                                  ; $73c7: $01 $00 $02
    ld bc, $0202                                  ; $73ca: $01 $02 $02
    add h                                         ; $73cd: $84
    dec b                                         ; $73ce: $05
    ld b, $08                                     ; $73cf: $06 $08
    inc e                                         ; $73d1: $1c
    ld [bc], a                                    ; $73d2: $02

jr_0f7_73d3:
    ld h, e                                       ; $73d3: $63
    sbc c                                         ; $73d4: $99
    sbc h                                         ; $73d5: $9c
    ld b, b                                       ; $73d6: $40
    and c                                         ; $73d7: $a1
    ld b, b                                       ; $73d8: $40
    add c                                         ; $73d9: $81
    ld b, c                                       ; $73da: $41
    and d                                         ; $73db: $a2
    ld hl, $1052                                  ; $73dc: $21 $52 $10
    add hl, hl                                    ; $73df: $29
    nop                                           ; $73e0: $00
    add hl, de                                    ; $73e1: $19
    ld [$1814], sp                                ; $73e2: $08 $14 $18
    inc h                                         ; $73e5: $24
    jr nz, jr_0f7_7400                            ; $73e6: $20 $18

    ld [bc], a                                    ; $73e8: $02
    ld bc, $0102                                  ; $73e9: $01 $02 $01
    nop                                           ; $73ec: $00
    ld [bc], a                                    ; $73ed: $02
    rlca                                          ; $73ee: $07
    nop                                           ; $73ef: $00
    ld [bc], a                                    ; $73f0: $02
    ld [bc], a                                    ; $73f1: $02
    add l                                         ; $73f2: $85
    ld bc, $0102                                  ; $73f3: $01 $02 $01
    nop                                           ; $73f6: $00
    ld [bc], a                                    ; $73f7: $02
    inc c                                         ; $73f8: $0c
    nop                                           ; $73f9: $00
    add a                                         ; $73fa: $87
    inc b                                         ; $73fb: $04
    ld a, [bc]                                    ; $73fc: $0a
    ld [$0810], sp                                ; $73fd: $08 $10 $08

jr_0f7_7400:
    inc d                                         ; $7400: $14
    inc b                                         ; $7401: $04
    ld [bc], a                                    ; $7402: $02
    ld a, [bc]                                    ; $7403: $0a
    adc e                                         ; $7404: $8b
    dec [hl]                                      ; $7405: $35
    ld hl, $4058                                  ; $7406: $21 $58 $40
    and b                                         ; $7409: $a0
    ld b, b                                       ; $740a: $40
    add b                                         ; $740b: $80
    ld b, b                                       ; $740c: $40
    add b                                         ; $740d: $80
    nop                                           ; $740e: $00
    ld h, b                                       ; $740f: $60
    dec c                                         ; $7410: $0d
    nop                                           ; $7411: $00
    add d                                         ; $7412: $82
    jr nz, jr_0f7_7445                            ; $7413: $20 $30

    ld [bc], a                                    ; $7415: $02
    ld [$3498], sp                                ; $7416: $08 $98 $34
    ld [$0c14], sp                                ; $7419: $08 $14 $0c
    nop                                           ; $741c: $00
    inc b                                         ; $741d: $04
    ld [$0600], sp                                ; $741e: $08 $00 $06
    ld [bc], a                                    ; $7421: $02
    dec b                                         ; $7422: $05
    ld [bc], a                                    ; $7423: $02
    dec b                                         ; $7424: $05
    ld [bc], a                                    ; $7425: $02
    dec b                                         ; $7426: $05
    inc b                                         ; $7427: $04
    ld a, [bc]                                    ; $7428: $0a
    ld [$3034], sp                                ; $7429: $08 $34 $30
    ld c, b                                       ; $742c: $48
    jr nz, jr_0f7_747f                            ; $742d: $20 $50

    ld h, b                                       ; $742f: $60
    ld [bc], a                                    ; $7430: $02
    sub b                                         ; $7431: $90
    add d                                         ; $7432: $82
    ld l, b                                       ; $7433: $68
    nop                                           ; $7434: $00
    ld [bc], a                                    ; $7435: $02
    jr nz, jr_0f7_73bc                            ; $7436: $20 $84

    ld d, e                                       ; $7438: $53
    ld b, b                                       ; $7439: $40
    jr nz, jr_0f7_743d                            ; $743a: $20 $01

    ld [bc], a                                    ; $743c: $02

jr_0f7_743d:
    ld b, b                                       ; $743d: $40
    adc e                                         ; $743e: $8b
    add e                                         ; $743f: $83
    ld b, b                                       ; $7440: $40
    and b                                         ; $7441: $a0
    jr nz, jr_0f7_7484                            ; $7442: $20 $40

    db $10                                        ; $7444: $10

jr_0f7_7445:
    jr z, jr_0f7_744c                             ; $7445: $28 $05

    ld a, [de]                                    ; $7447: $1a
    nop                                           ; $7448: $00
    rlca                                          ; $7449: $07
    ld b, $00                                     ; $744a: $06 $00

jr_0f7_744c:
    adc h                                         ; $744c: $8c
    ld bc, $0200                                  ; $744d: $01 $00 $02
    dec b                                         ; $7450: $05

jr_0f7_7451:
    inc b                                         ; $7451: $04
    ld a, [bc]                                    ; $7452: $0a
    nop                                           ; $7453: $00
    ld [bc], a                                    ; $7454: $02
    nop                                           ; $7455: $00
    ld [bc], a                                    ; $7456: $02
    nop                                           ; $7457: $00
    ld [bc], a                                    ; $7458: $02
    dec bc                                        ; $7459: $0b
    nop                                           ; $745a: $00
    ld [bc], a                                    ; $745b: $02
    ld [bc], a                                    ; $745c: $02
    add a                                         ; $745d: $87
    ld bc, $0102                                  ; $745e: $01 $02 $01
    ld [bc], a                                    ; $7461: $02
    ld bc, $0200                                  ; $7462: $01 $00 $02
    dec b                                         ; $7465: $05
    nop                                           ; $7466: $00
    add c                                         ; $7467: $81
    jr nc, @+$0d                                  ; $7468: $30 $0b

    nop                                           ; $746a: $00
    add c                                         ; $746b: $81
    ld bc, $0014                                  ; $746c: $01 $14 $00
    rst $38                                       ; $746f: $ff
    add hl, de                                    ; $7470: $19
    ld a, [bc]                                    ; $7471: $0a
    ld sp, hl                                     ; $7472: $f9
    ld [$08f5], sp                                ; $7473: $08 $f5 $08
    or e                                          ; $7476: $b3
    ei                                            ; $7477: $fb
    or l                                          ; $7478: $b5
    db $fd                                        ; $7479: $fd
    jp $c5fa                                      ; $747a: $c3 $fa $c5


    ld [bc], a                                    ; $747d: $02
    db $d3                                        ; $747e: $d3

jr_0f7_747f:
    ld sp, hl                                     ; $747f: $f9
    push de                                       ; $7480: $d5
    nop                                           ; $7481: $00
    db $e3                                        ; $7482: $e3
    db $fc                                        ; $7483: $fc

jr_0f7_7484:
    push hl                                       ; $7484: $e5
    nop                                           ; $7485: $00
    di                                            ; $7486: $f3
    ei                                            ; $7487: $fb
    inc bc                                        ; $7488: $03
    ld sp, hl                                     ; $7489: $f9
    adc b                                         ; $748a: $88
    nop                                           ; $748b: $00
    ld b, $02                                     ; $748c: $06 $02
    dec b                                         ; $748e: $05
    ld bc, $0002                                  ; $748f: $01 $02 $00
    ld bc, $0003                                  ; $7492: $01 $03 $00
    ld [bc], a                                    ; $7495: $02
    ld bc, $0602                                  ; $7496: $01 $02 $06
    add [hl]                                      ; $7499: $86
    ld bc, $0e00                                  ; $749a: $01 $00 $0e
    ld [$0814], sp                                ; $749d: $08 $14 $08
    ld [bc], a                                    ; $74a0: $02
    db $10                                        ; $74a1: $10
    adc d                                         ; $74a2: $8a
    ld l, b                                       ; $74a3: $68
    ld h, b                                       ; $74a4: $60
    sub b                                         ; $74a5: $90
    ld b, b                                       ; $74a6: $40
    add b                                         ; $74a7: $80
    ld b, b                                       ; $74a8: $40
    add b                                         ; $74a9: $80
    ld b, b                                       ; $74aa: $40
    and b                                         ; $74ab: $a0
    nop                                           ; $74ac: $00
    ld [bc], a                                    ; $74ad: $02
    ld [bc], a                                    ; $74ae: $02
    add a                                         ; $74af: $87
    ld bc, $0102                                  ; $74b0: $01 $02 $01
    ld [bc], a                                    ; $74b3: $02
    ld bc, $0200                                  ; $74b4: $01 $00 $02
    ld [de], a                                    ; $74b7: $12
    nop                                           ; $74b8: $00
    adc a                                         ; $74b9: $8f
    and b                                         ; $74ba: $a0
    ld d, b                                       ; $74bb: $50
    sub b                                         ; $74bc: $90
    jr z, jr_0f7_74bf                             ; $74bd: $28 $00

jr_0f7_74bf:
    jr nz, jr_0f7_74c1                            ; $74bf: $20 $00

jr_0f7_74c1:
    jr nz, jr_0f7_74d6                            ; $74c1: $20 $13

    inc h                                         ; $74c3: $24
    db $10                                        ; $74c4: $10
    inc hl                                        ; $74c5: $23
    jr nz, jr_0f7_7518                            ; $74c6: $20 $50

    ld b, b                                       ; $74c8: $40
    ld [bc], a                                    ; $74c9: $02
    jr nz, jr_0f7_7451                            ; $74ca: $20 $85

    ld b, b                                       ; $74cc: $40
    db $10                                        ; $74cd: $10
    jr nz, jr_0f7_74d0                            ; $74ce: $20 $00

jr_0f7_74d0:
    jr jr_0f7_74d8                                ; $74d0: $18 $06

    nop                                           ; $74d2: $00
    add c                                         ; $74d3: $81
    jr nc, jr_0f7_74d8                            ; $74d4: $30 $02

jr_0f7_74d6:
    ld c, b                                       ; $74d6: $48
    and [hl]                                      ; $74d7: $a6

jr_0f7_74d8:
    or a                                          ; $74d8: $b7
    add a                                         ; $74d9: $87
    ld c, b                                       ; $74da: $48
    ld [$0014], sp                                ; $74db: $08 $14 $00
    add b                                         ; $74de: $80
    ld [hl], b                                    ; $74df: $70
    adc b                                         ; $74e0: $88
    ld [$0474], sp                                ; $74e1: $08 $74 $04
    ld [$0804], sp                                ; $74e4: $08 $04 $08
    inc b                                         ; $74e7: $04
    ld [$0c00], sp                                ; $74e8: $08 $00 $0c
    ld [$0810], sp                                ; $74eb: $08 $10 $08
    db $10                                        ; $74ee: $10
    jr @+$26                                      ; $74ef: $18 $24

    ld h, h                                       ; $74f1: $64
    sbc b                                         ; $74f2: $98
    add h                                         ; $74f3: $84
    ld b, d                                       ; $74f4: $42
    nop                                           ; $74f5: $00
    add [hl]                                      ; $74f6: $86
    ld [bc], a                                    ; $74f7: $02
    ld bc, $0102                                  ; $74f8: $01 $02 $01
    inc b                                         ; $74fb: $04
    ld a, [bc]                                    ; $74fc: $0a
    inc b                                         ; $74fd: $04
    ld [bc], a                                    ; $74fe: $02
    ld [$1496], sp                                ; $74ff: $08 $96 $14
    db $10                                        ; $7502: $10
    jr z, jr_0f7_7525                             ; $7503: $28 $20

    ld d, b                                       ; $7505: $50
    jr nz, jr_0f7_7548                            ; $7506: $20 $40

    nop                                           ; $7508: $00
    ld h, b                                       ; $7509: $60
    jr nz, jr_0f7_755c                            ; $750a: $20 $50

    db $10                                        ; $750c: $10
    dec hl                                        ; $750d: $2b
    rrca                                          ; $750e: $0f
    db $10                                        ; $750f: $10
    ld [$0804], sp                                ; $7510: $08 $04 $08
    db $10                                        ; $7513: $10
    jr nc, jr_0f7_755e                            ; $7514: $30 $48

    jr nz, jr_0f7_751a                            ; $7516: $20 $02

jr_0f7_7518:
    ld b, b                                       ; $7518: $40
    adc e                                         ; $7519: $8b

jr_0f7_751a:
    and b                                         ; $751a: $a0
    jr nz, jr_0f7_755d                            ; $751b: $20 $40

    db $10                                        ; $751d: $10
    jr nz, jr_0f7_7523                            ; $751e: $20 $03

    inc b                                         ; $7520: $04
    nop                                           ; $7521: $00
    ld [bc], a                                    ; $7522: $02

jr_0f7_7523:
    nop                                           ; $7523: $00
    ld [bc], a                                    ; $7524: $02

jr_0f7_7525:
    rlca                                          ; $7525: $07
    nop                                           ; $7526: $00
    add [hl]                                      ; $7527: $86
    ld b, b                                       ; $7528: $40
    nop                                           ; $7529: $00
    ld a, h                                       ; $752a: $7c
    inc e                                         ; $752b: $1c
    ld [hl+], a                                   ; $752c: $22
    inc b                                         ; $752d: $04
    ld [bc], a                                    ; $752e: $02
    ld [bc], a                                    ; $752f: $02
    ld [bc], a                                    ; $7530: $02
    inc b                                         ; $7531: $04
    add [hl]                                      ; $7532: $86
    ld a, [bc]                                    ; $7533: $0a
    inc b                                         ; $7534: $04
    ld [$0804], sp                                ; $7535: $08 $04 $08
    inc b                                         ; $7538: $04
    ld [bc], a                                    ; $7539: $02
    ld [$1486], sp                                ; $753a: $08 $86 $14
    nop                                           ; $753d: $00
    add b                                         ; $753e: $80
    nop                                           ; $753f: $00
    add b                                         ; $7540: $80
    ld bc, $0202                                  ; $7541: $01 $02 $02
    sub b                                         ; $7544: $90
    dec b                                         ; $7545: $05
    ld [bc], a                                    ; $7546: $02
    inc b                                         ; $7547: $04

jr_0f7_7548:
    ld [bc], a                                    ; $7548: $02
    inc b                                         ; $7549: $04
    ld c, $10                                     ; $754a: $0e $10
    ld [de], a                                    ; $754c: $12
    dec l                                         ; $754d: $2d
    ld bc, $2032                                  ; $754e: $01 $32 $20
    ld b, b                                       ; $7551: $40
    jr nz, jr_0f7_7594                            ; $7552: $20 $40

    jr nz, jr_0f7_7558                            ; $7554: $20 $02

    ld b, b                                       ; $7556: $40
    adc c                                         ; $7557: $89

jr_0f7_7558:
    and b                                         ; $7558: $a0
    ld b, b                                       ; $7559: $40
    add b                                         ; $755a: $80
    ld b, b                                       ; $755b: $40

jr_0f7_755c:
    add b                                         ; $755c: $80

jr_0f7_755d:
    ld b, b                                       ; $755d: $40

jr_0f7_755e:
    and b                                         ; $755e: $a0
    nop                                           ; $755f: $00
    ld [$000b], sp                                ; $7560: $08 $0b $00
    adc l                                         ; $7563: $8d
    inc c                                         ; $7564: $0c
    inc b                                         ; $7565: $04
    ld a, [bc]                                    ; $7566: $0a
    ld [bc], a                                    ; $7567: $02
    dec b                                         ; $7568: $05
    ld [bc], a                                    ; $7569: $02
    ld bc, $0102                                  ; $756a: $01 $02 $01
    nop                                           ; $756d: $00
    ld [bc], a                                    ; $756e: $02
    nop                                           ; $756f: $00
    ld [bc], a                                    ; $7570: $02
    dec b                                         ; $7571: $05
    nop                                           ; $7572: $00
    adc [hl]                                      ; $7573: $8e
    add b                                         ; $7574: $80
    ld d, b                                       ; $7575: $50
    xor b                                         ; $7576: $a8
    adc b                                         ; $7577: $88
    ld d, b                                       ; $7578: $50
    add h                                         ; $7579: $84
    ld c, d                                       ; $757a: $4a
    ld b, c                                       ; $757b: $41
    add d                                         ; $757c: $82
    ld bc, $0142                                  ; $757d: $01 $42 $01
    ld [bc], a                                    ; $7580: $02
    ld bc, $0202                                  ; $7581: $01 $02 $02
    adc b                                         ; $7584: $88
    dec b                                         ; $7585: $05
    ld [bc], a                                    ; $7586: $02
    inc c                                         ; $7587: $0c
    inc b                                         ; $7588: $04
    ld a, [bc]                                    ; $7589: $0a
    ld [$0804], sp                                ; $758a: $08 $04 $08
    ld [bc], a                                    ; $758d: $02
    db $10                                        ; $758e: $10
    ld [bc], a                                    ; $758f: $02
    ld [$1084], sp                                ; $7590: $08 $84 $10
    inc b                                         ; $7593: $04

jr_0f7_7594:
    ld [$0204], sp                                ; $7594: $08 $04 $02
    nop                                           ; $7597: $00
    add c                                         ; $7598: $81
    ld bc, $001e                                  ; $7599: $01 $1e $00
    rst $38                                       ; $759c: $ff
    dec de                                        ; $759d: $1b
    dec bc                                        ; $759e: $0b
    ld sp, hl                                     ; $759f: $f9
    ld [$08f5], sp                                ; $75a0: $08 $f5 $08
    or d                                          ; $75a3: $b2
    db $fc                                        ; $75a4: $fc
    cp c                                          ; $75a5: $b9
    rst $38                                       ; $75a6: $ff
    ret                                           ; $75a7: $c9


    ei                                            ; $75a8: $fb
    ret                                           ; $75a9: $c9


    cp $d9                                        ; $75aa: $fe $d9
    ei                                            ; $75ac: $fb
    reti                                          ; $75ad: $d9


    nop                                           ; $75ae: $00
    jp hl                                         ; $75af: $e9


    ei                                            ; $75b0: $fb
    jp hl                                         ; $75b1: $e9


    ld bc, $f9f3                                  ; $75b2: $01 $f3 $f9
    ld sp, hl                                     ; $75b5: $f9
    db $fd                                        ; $75b6: $fd
    ld [bc], a                                    ; $75b7: $02
    ei                                            ; $75b8: $fb
    add c                                         ; $75b9: $81
    db $10                                        ; $75ba: $10
    ld [bc], a                                    ; $75bb: $02
    inc c                                         ; $75bc: $0c
    add d                                         ; $75bd: $82
    ld [de], a                                    ; $75be: $12
    inc b                                         ; $75bf: $04
    ld [bc], a                                    ; $75c0: $02
    ld [bc], a                                    ; $75c1: $02
    sbc d                                         ; $75c2: $9a
    dec b                                         ; $75c3: $05
    ld [bc], a                                    ; $75c4: $02
    ld bc, $1d02                                  ; $75c5: $01 $02 $1d
    inc e                                         ; $75c8: $1c
    ld [hl+], a                                   ; $75c9: $22
    inc h                                         ; $75ca: $24
    ld e, b                                       ; $75cb: $58
    ld b, h                                       ; $75cc: $44
    and e                                         ; $75cd: $a3
    ld b, e                                       ; $75ce: $43
    and h                                         ; $75cf: $a4
    ld b, b                                       ; $75d0: $40
    add e                                         ; $75d1: $83
    ld b, b                                       ; $75d2: $40
    add b                                         ; $75d3: $80
    ld b, b                                       ; $75d4: $40
    add b                                         ; $75d5: $80
    ld b, b                                       ; $75d6: $40
    add b                                         ; $75d7: $80
    ld b, b                                       ; $75d8: $40
    and b                                         ; $75d9: $a0
    jr nz, jr_0f7_7637                            ; $75da: $20 $5b

    nop                                           ; $75dc: $00
    ld [bc], a                                    ; $75dd: $02
    ld b, $02                                     ; $75de: $06 $02
    ld bc, $0685                                  ; $75e0: $01 $85 $06
    ld bc, $0002                                  ; $75e3: $01 $02 $00
    ld bc, $0007                                  ; $75e6: $01 $07 $00
    add d                                         ; $75e9: $82
    inc b                                         ; $75ea: $04
    db $fc                                        ; $75eb: $fc
    ld [bc], a                                    ; $75ec: $02
    ld [bc], a                                    ; $75ed: $02
    and [hl]                                      ; $75ee: $a6
    pop af                                        ; $75ef: $f1
    ld [bc], a                                    ; $75f0: $02
    ld bc, $0102                                  ; $75f1: $01 $02 $01
    inc b                                         ; $75f4: $04
    ld a, [bc]                                    ; $75f5: $0a
    ld [$0804], sp                                ; $75f6: $08 $04 $08

jr_0f7_75f9:
    inc [hl]                                      ; $75f9: $34
    dec bc                                        ; $75fa: $0b
    inc d                                         ; $75fb: $14
    db $10                                        ; $75fc: $10
    dec hl                                        ; $75fd: $2b
    db $10                                        ; $75fe: $10
    jr nz, @+$12                                  ; $75ff: $20 $10

    jr nz, @+$12                                  ; $7601: $20 $10

    jr nz, jr_0f7_760d                            ; $7603: $20 $08

    db $10                                        ; $7605: $10
    ld d, $29                                     ; $7606: $16 $29
    ld hl, $4056                                  ; $7608: $21 $56 $40
    and b                                         ; $760b: $a0
    ld b, b                                       ; $760c: $40

jr_0f7_760d:
    add b                                         ; $760d: $80
    nop                                           ; $760e: $00
    ld h, b                                       ; $760f: $60
    jr nz, jr_0f7_7652                            ; $7610: $20 $40

    jr nz, jr_0f7_7624                            ; $7612: $20 $10

    jr nz, jr_0f7_7618                            ; $7614: $20 $02

    ld b, b                                       ; $7616: $40
    add a                                         ; $7617: $87

jr_0f7_7618:
    and c                                         ; $7618: $a1
    ld bc, $04c2                                  ; $7619: $01 $c2 $04
    ld [bc], a                                    ; $761c: $02
    nop                                           ; $761d: $00
    inc b                                         ; $761e: $04
    add hl, bc                                    ; $761f: $09
    nop                                           ; $7620: $00
    ld [bc], a                                    ; $7621: $02
    inc b                                         ; $7622: $04
    ld [bc], a                                    ; $7623: $02

jr_0f7_7624:
    ld [bc], a                                    ; $7624: $02
    sub d                                         ; $7625: $92
    inc b                                         ; $7626: $04
    ld [bc], a                                    ; $7627: $02
    inc b                                         ; $7628: $04
    ld bc, $0102                                  ; $7629: $01 $02 $01
    ld [bc], a                                    ; $762c: $02
    ld bc, $0100                                  ; $762d: $01 $00 $01
    ld [bc], a                                    ; $7630: $02
    ld b, $01                                     ; $7631: $06 $01
    ld [bc], a                                    ; $7633: $02
    dec b                                         ; $7634: $05
    ld [bc], a                                    ; $7635: $02
    add c                                         ; $7636: $81

jr_0f7_7637:
    ld [bc], a                                    ; $7637: $02
    ld [bc], a                                    ; $7638: $02
    ld bc, $0283                                  ; $7639: $01 $83 $02
    nop                                           ; $763c: $00
    ld bc, $0007                                  ; $763d: $01 $07 $00
    add d                                         ; $7640: $82
    inc bc                                        ; $7641: $03
    ld bc, $0202                                  ; $7642: $01 $02 $02
    sbc a                                         ; $7645: $9f
    dec b                                         ; $7646: $05
    ld b, $01                                     ; $7647: $06 $01
    dec b                                         ; $7649: $05
    ld a, [de]                                    ; $764a: $1a
    ld [$1015], sp                                ; $764b: $08 $15 $10
    jr z, jr_0f7_7660                             ; $764e: $28 $10

    jr z, jr_0f7_7662                             ; $7650: $28 $10

jr_0f7_7652:
    jr nz, jr_0f7_7658                            ; $7652: $20 $04

    ld a, [bc]                                    ; $7654: $0a
    ld [bc], a                                    ; $7655: $02
    inc b                                         ; $7656: $04
    nop                                           ; $7657: $00

jr_0f7_7658:
    ld b, $02                                     ; $7658: $06 $02
    inc b                                         ; $765a: $04
    ld [bc], a                                    ; $765b: $02
    dec b                                         ; $765c: $05
    ld [bc], a                                    ; $765d: $02
    dec b                                         ; $765e: $05
    inc b                                         ; $765f: $04

jr_0f7_7660:
    ld a, [bc]                                    ; $7660: $0a
    inc b                                         ; $7661: $04

jr_0f7_7662:
    ld a, [de]                                    ; $7662: $1a
    jr jr_0f7_7669                                ; $7663: $18 $04

    dec b                                         ; $7665: $05
    nop                                           ; $7666: $00
    ld [bc], a                                    ; $7667: $02
    db $10                                        ; $7668: $10

jr_0f7_7669:
    ld [bc], a                                    ; $7669: $02
    ld [$1488], sp                                ; $766a: $08 $88 $14
    ld [$0810], sp                                ; $766d: $08 $10 $08
    inc d                                         ; $7670: $14
    db $10                                        ; $7671: $10
    jr nz, jr_0f7_7684                            ; $7672: $20 $10

    ld [bc], a                                    ; $7674: $02
    jr nz, jr_0f7_75f9                            ; $7675: $20 $82

    db $10                                        ; $7677: $10
    jr nz, jr_0f7_767c                            ; $7678: $20 $02

    ld b, b                                       ; $767a: $40
    adc a                                         ; $767b: $8f

jr_0f7_767c:
    and b                                         ; $767c: $a0
    ld b, b                                       ; $767d: $40
    add b                                         ; $767e: $80
    ld b, b                                       ; $767f: $40
    or b                                          ; $7680: $b0
    jr nc, jr_0f7_76cf                            ; $7681: $30 $4c

    inc l                                         ; $7683: $2c

jr_0f7_7684:
    inc de                                        ; $7684: $13
    ld b, e                                       ; $7685: $43
    inc h                                         ; $7686: $24
    add b                                         ; $7687: $80
    ld b, b                                       ; $7688: $40
    nop                                           ; $7689: $00
    add b                                         ; $768a: $80
    dec b                                         ; $768b: $05
    nop                                           ; $768c: $00
    adc c                                         ; $768d: $89
    add b                                         ; $768e: $80
    nop                                           ; $768f: $00
    add b                                         ; $7690: $80
    db $10                                        ; $7691: $10
    jr z, jr_0f7_769c                             ; $7692: $28 $08

    inc d                                         ; $7694: $14
    ld [bc], a                                    ; $7695: $02
    dec b                                         ; $7696: $05
    inc c                                         ; $7697: $0c
    nop                                           ; $7698: $00
    add c                                         ; $7699: $81
    jr nz, jr_0f7_769e                            ; $769a: $20 $02

jr_0f7_769c:
    db $10                                        ; $769c: $10
    adc h                                         ; $769d: $8c

jr_0f7_769e:
    jr z, @+$0a                                   ; $769e: $28 $08

    stop                                          ; $76a0: $10 $00
    inc e                                         ; $76a2: $1c
    ld [$0804], sp                                ; $76a3: $08 $04 $08
    inc b                                         ; $76a6: $04
    ld [$0034], sp                                ; $76a7: $08 $34 $00
    ld [bc], a                                    ; $76aa: $02
    ld b, b                                       ; $76ab: $40
    add h                                         ; $76ac: $84
    add b                                         ; $76ad: $80
    ld b, b                                       ; $76ae: $40
    add b                                         ; $76af: $80
    ld b, b                                       ; $76b0: $40
    ld [bc], a                                    ; $76b1: $02
    nop                                           ; $76b2: $00
    add c                                         ; $76b3: $81
    ld b, b                                       ; $76b4: $40
    add hl, bc                                    ; $76b5: $09
    nop                                           ; $76b6: $00
    add a                                         ; $76b7: $87
    ld bc, $0100                                  ; $76b8: $01 $00 $01
    nop                                           ; $76bb: $00
    ld bc, $0100                                  ; $76bc: $01 $00 $01
    ld b, $00                                     ; $76bf: $06 $00
    adc l                                         ; $76c1: $8d
    inc bc                                        ; $76c2: $03
    nop                                           ; $76c3: $00
    ld [bc], a                                    ; $76c4: $02
    dec b                                         ; $76c5: $05
    inc b                                         ; $76c6: $04
    ld a, [bc]                                    ; $76c7: $0a
    ld [$0804], sp                                ; $76c8: $08 $04 $08
    inc b                                         ; $76cb: $04
    ld [$0804], sp                                ; $76cc: $08 $04 $08

jr_0f7_76cf:
    ld [bc], a                                    ; $76cf: $02
    inc b                                         ; $76d0: $04
    add h                                         ; $76d1: $84
    ld [$0804], sp                                ; $76d2: $08 $04 $08
    inc b                                         ; $76d5: $04
    ld [bc], a                                    ; $76d6: $02
    ld [$148b], sp                                ; $76d7: $08 $8b $14
    db $10                                        ; $76da: $10
    jr z, @+$22                                   ; $76db: $28 $20

    ld d, b                                       ; $76dd: $50
    nop                                           ; $76de: $00
    ldh [rLCDC], a                                ; $76df: $e0 $40
    add b                                         ; $76e1: $80
    ld b, b                                       ; $76e2: $40
    and b                                         ; $76e3: $a0
    ld c, $00                                     ; $76e4: $0e $00
    adc e                                         ; $76e6: $8b
    jr jr_0f7_770d                                ; $76e7: $18 $24

    inc b                                         ; $76e9: $04
    ld a, [de]                                    ; $76ea: $1a
    ld [bc], a                                    ; $76eb: $02
    dec b                                         ; $76ec: $05
    ld bc, $0206                                  ; $76ed: $01 $06 $02
    dec b                                         ; $76f0: $05
    ld [bc], a                                    ; $76f1: $02
    ld [bc], a                                    ; $76f2: $02
    nop                                           ; $76f3: $00
    add c                                         ; $76f4: $81
    ld [bc], a                                    ; $76f5: $02
    inc b                                         ; $76f6: $04
    nop                                           ; $76f7: $00
    rst $38                                       ; $76f8: $ff
    dec e                                         ; $76f9: $1d
    inc c                                         ; $76fa: $0c
    ld sp, hl                                     ; $76fb: $f9
    ld [$08f5], sp                                ; $76fc: $08 $f5 $08
    or e                                          ; $76ff: $b3
    rst $30                                       ; $7700: $f7
    or d                                          ; $7701: $b2
    db $fc                                        ; $7702: $fc
    jp $c2f7                                      ; $7703: $c3 $f7 $c2


    db $fd                                        ; $7706: $fd
    db $d3                                        ; $7707: $d3
    ld hl, sp-$2c                                 ; $7708: $f8 $d4
    rst $38                                       ; $770a: $ff
    rst $20                                       ; $770b: $e7
    ld sp, hl                                     ; $770c: $f9

jr_0f7_770d:
    db $e4                                        ; $770d: $e4
    nop                                           ; $770e: $00
    db $f4                                        ; $770f: $f4
    cp $f4                                        ; $7710: $fe $f4
    rst $38                                       ; $7712: $ff
    ld [bc], a                                    ; $7713: $02
    rst $38                                       ; $7714: $ff
    ld [bc], a                                    ; $7715: $02
    nop                                           ; $7716: $00
    and e                                         ; $7717: $a3
    nop                                           ; $7718: $00
    ld bc, $0100                                  ; $7719: $01 $00 $01
    nop                                           ; $771c: $00
    inc bc                                        ; $771d: $03
    ld bc, $0102                                  ; $771e: $01 $02 $01
    nop                                           ; $7721: $00
    ld bc, $0102                                  ; $7722: $01 $02 $01
    ld [bc], a                                    ; $7725: $02
    ld bc, $0302                                  ; $7726: $01 $02 $03
    inc b                                         ; $7729: $04
    ld [bc], a                                    ; $772a: $02
    dec b                                         ; $772b: $05
    ld bc, $0102                                  ; $772c: $01 $02 $01
    ld [bc], a                                    ; $772f: $02
    nop                                           ; $7730: $00
    add hl, sp                                    ; $7731: $39
    dec e                                         ; $7732: $1d
    ld h, d                                       ; $7733: $62
    ld b, d                                       ; $7734: $42
    and l                                         ; $7735: $a5
    add b                                         ; $7736: $80
    ld b, d                                       ; $7737: $42
    ld [$0814], sp                                ; $7738: $08 $14 $08
    ld [bc], a                                    ; $773b: $02
    db $10                                        ; $773c: $10
    add d                                         ; $773d: $82
    ld [$0210], sp                                ; $773e: $08 $10 $02

jr_0f7_7741:
    nop                                           ; $7741: $00
    add e                                         ; $7742: $83
    stop                                          ; $7743: $10 $00
    db $10                                        ; $7745: $10
    inc bc                                        ; $7746: $03
    nop                                           ; $7747: $00
    add h                                         ; $7748: $84
    stop                                          ; $7749: $10 $00
    stop                                          ; $774b: $10 $00
    ld [bc], a                                    ; $774d: $02
    db $10                                        ; $774e: $10
    ld [bc], a                                    ; $774f: $02
    ld [$168d], sp                                ; $7750: $08 $8d $16
    ld [bc], a                                    ; $7753: $02
    dec b                                         ; $7754: $05
    ld [bc], a                                    ; $7755: $02
    dec d                                         ; $7756: $15

jr_0f7_7757:
    ld [bc], a                                    ; $7757: $02
    ld de, $0300                                  ; $7758: $11 $00 $03
    nop                                           ; $775b: $00
    add b                                         ; $775c: $80
    nop                                           ; $775d: $00
    add b                                         ; $775e: $80
    rlca                                          ; $775f: $07
    nop                                           ; $7760: $00
    ld [bc], a                                    ; $7761: $02
    ld bc, $0202                                  ; $7762: $01 $02 $02
    sbc [hl]                                      ; $7765: $9e
    dec b                                         ; $7766: $05
    ld [bc], a                                    ; $7767: $02
    dec b                                         ; $7768: $05
    inc b                                         ; $7769: $04
    ld a, [bc]                                    ; $776a: $0a
    inc b                                         ; $776b: $04
    ld a, [bc]                                    ; $776c: $0a
    inc b                                         ; $776d: $04
    ld [$0a04], sp                                ; $776e: $08 $04 $0a
    ld [bc], a                                    ; $7771: $02
    inc c                                         ; $7772: $0c
    ld [bc], a                                    ; $7773: $02
    dec b                                         ; $7774: $05
    ld [bc], a                                    ; $7775: $02
    dec b                                         ; $7776: $05
    ld [bc], a                                    ; $7777: $02
    dec b                                         ; $7778: $05
    ld [bc], a                                    ; $7779: $02
    ld bc, $0102                                  ; $777a: $01 $02 $01
    ld [bc], a                                    ; $777d: $02
    ld bc, $0502                                  ; $777e: $01 $02 $05
    inc b                                         ; $7781: $04
    ld a, [hl+]                                   ; $7782: $2a
    inc a                                         ; $7783: $3c
    ld [bc], a                                    ; $7784: $02
    ld [bc], a                                    ; $7785: $02

jr_0f7_7786:
    add h                                         ; $7786: $84
    dec a                                         ; $7787: $3d
    ld bc, $0102                                  ; $7788: $01 $02 $01
    ld [bc], a                                    ; $778b: $02
    ld [bc], a                                    ; $778c: $02
    add e                                         ; $778d: $83
    ld bc, $0200                                  ; $778e: $01 $00 $02
    ld [$9a00], sp                                ; $7791: $08 $00 $9a
    ld a, [bc]                                    ; $7794: $0a
    dec d                                         ; $7795: $15
    ld de, $202a                                  ; $7796: $11 $2a $20
    ld d, c                                       ; $7799: $51
    ld b, b                                       ; $779a: $40
    and b                                         ; $779b: $a0
    ld b, b                                       ; $779c: $40
    and b                                         ; $779d: $a0
    ld b, b                                       ; $779e: $40
    and b                                         ; $779f: $a0
    jr nz, @+$42                                  ; $77a0: $20 $40

    jr nz, jr_0f7_77f4                            ; $77a2: $20 $50

    db $10                                        ; $77a4: $10
    jr nz, @+$12                                  ; $77a5: $20 $10

    jr nz, @+$1a                                  ; $77a7: $20 $18

    daa                                           ; $77a9: $27
    rlca                                          ; $77aa: $07
    jr jr_0f7_77ad                                ; $77ab: $18 $00

jr_0f7_77ad:
    inc bc                                        ; $77ad: $03
    ld b, $00                                     ; $77ae: $06 $00
    add c                                         ; $77b0: $81
    ld b, b                                       ; $77b1: $40
    ld [bc], a                                    ; $77b2: $02
    jr nz, jr_0f7_7741                            ; $77b3: $20 $8c

    ld b, b                                       ; $77b5: $40
    jr nz, jr_0f7_7808                            ; $77b6: $20 $50

    jr nz, @+$5e                                  ; $77b8: $20 $5c

    inc e                                         ; $77ba: $1c
    ld [hl+], a                                   ; $77bb: $22
    ld [bc], a                                    ; $77bc: $02
    inc e                                         ; $77bd: $1c
    nop                                           ; $77be: $00
    inc bc                                        ; $77bf: $03
    ld bc, $0002                                  ; $77c0: $01 $02 $00
    add c                                         ; $77c3: $81
    ld bc, $0003                                  ; $77c4: $01 $03 $00
    add d                                         ; $77c7: $82
    ld h, b                                       ; $77c8: $60
    ld b, b                                       ; $77c9: $40
    ld [bc], a                                    ; $77ca: $02
    jr nz, jr_0f7_7757                            ; $77cb: $20 $8a

    ld d, b                                       ; $77cd: $50
    jr nc, @+$4a                                  ; $77ce: $30 $48

    db $10                                        ; $77d0: $10
    jr z, jr_0f7_77db                             ; $77d1: $28 $08

    inc d                                         ; $77d3: $14
    nop                                           ; $77d4: $00
    ld e, $1c                                     ; $77d5: $1e $1c
    ld [bc], a                                    ; $77d7: $02
    inc hl                                        ; $77d8: $23
    adc a                                         ; $77d9: $8f
    ld d, h                                       ; $77da: $54

jr_0f7_77db:
    ld b, c                                       ; $77db: $41
    and b                                         ; $77dc: $a0
    ld b, b                                       ; $77dd: $40
    add c                                         ; $77de: $81
    jr nz, @+$52                                  ; $77df: $20 $50

    jr nz, jr_0f7_7833                            ; $77e1: $20 $50

    jr nz, @+$12                                  ; $77e3: $20 $10

    nop                                           ; $77e5: $00
    jr nz, jr_0f7_77e8                            ; $77e6: $20 $00

jr_0f7_77e8:
    jr nz, jr_0f7_77f7                            ; $77e8: $20 $0d

    nop                                           ; $77ea: $00
    adc h                                         ; $77eb: $8c
    jr @+$0a                                      ; $77ec: $18 $08

    inc b                                         ; $77ee: $04
    ld [$0804], sp                                ; $77ef: $08 $04 $08
    ld [hl], h                                    ; $77f2: $74
    ld [hl], b                                    ; $77f3: $70

jr_0f7_77f4:
    ld [$4000], sp                                ; $77f4: $08 $00 $40

jr_0f7_77f7:
    nop                                           ; $77f7: $00
    ld [bc], a                                    ; $77f8: $02
    ld b, b                                       ; $77f9: $40
    add d                                         ; $77fa: $82
    nop                                           ; $77fb: $00
    ld b, b                                       ; $77fc: $40
    ld [bc], a                                    ; $77fd: $02
    jr nz, jr_0f7_7786                            ; $77fe: $20 $86

    ld e, b                                       ; $7800: $58
    jr jr_0f7_7827                                ; $7801: $18 $24

    inc b                                         ; $7803: $04
    ld a, [de]                                    ; $7804: $1a
    inc b                                         ; $7805: $04
    ld [bc], a                                    ; $7806: $02
    ld [bc], a                                    ; $7807: $02

jr_0f7_7808:
    sub d                                         ; $7808: $92
    dec b                                         ; $7809: $05
    ld [bc], a                                    ; $780a: $02
    dec b                                         ; $780b: $05
    ld [bc], a                                    ; $780c: $02
    dec b                                         ; $780d: $05
    ld bc, $0602                                  ; $780e: $01 $02 $06
    add hl, bc                                    ; $7811: $09
    ld a, [bc]                                    ; $7812: $0a
    dec b                                         ; $7813: $05
    ld de, $102a                                  ; $7814: $11 $2a $10
    ld hl, $1120                                  ; $7817: $21 $20 $11
    ld hl, $4002                                  ; $781a: $21 $02 $40
    sub e                                         ; $781d: $93
    and c                                         ; $781e: $a1
    ld b, b                                       ; $781f: $40
    and b                                         ; $7820: $a0
    ld b, b                                       ; $7821: $40
    and b                                         ; $7822: $a0
    ld b, b                                       ; $7823: $40
    and b                                         ; $7824: $a0
    jr nz, jr_0f7_77f7                            ; $7825: $20 $d0

jr_0f7_7827:
    jr jr_0f7_788d                                ; $7827: $18 $64

    inc b                                         ; $7829: $04
    dec de                                        ; $782a: $1b
    inc bc                                        ; $782b: $03
    inc b                                         ; $782c: $04
    ld bc, $0002                                  ; $782d: $01 $02 $00
    ld bc, $0005                                  ; $7830: $01 $05 $00

jr_0f7_7833:
    ld [bc], a                                    ; $7833: $02
    ld bc, $0082                                  ; $7834: $01 $82 $00
    ld bc, $0002                                  ; $7837: $01 $02 $00
    add c                                         ; $783a: $81
    ld bc, $000f                                  ; $783b: $01 $0f $00
    ld [bc], a                                    ; $783e: $02
    ld bc, $0005                                  ; $783f: $01 $05 $00
    add l                                         ; $7842: $85
    ld bc, $0102                                  ; $7843: $01 $02 $01
    ld [bc], a                                    ; $7846: $02
    inc bc                                        ; $7847: $03
    ld [bc], a                                    ; $7848: $02
    inc b                                         ; $7849: $04
    add h                                         ; $784a: $84
    dec bc                                        ; $784b: $0b
    ld [$3034], sp                                ; $784c: $08 $34 $30
    ld [bc], a                                    ; $784f: $02
    ld c, b                                       ; $7850: $48
    add [hl]                                      ; $7851: $86
    or h                                          ; $7852: $b4
    ld b, h                                       ; $7853: $44
    xor d                                         ; $7854: $aa
    add b                                         ; $7855: $80
    ld b, h                                       ; $7856: $44
    add b                                         ; $7857: $80
    ld [bc], a                                    ; $7858: $02
    ld b, b                                       ; $7859: $40
    add e                                         ; $785a: $83
    add b                                         ; $785b: $80
    nop                                           ; $785c: $00
    ld b, b                                       ; $785d: $40
    add hl, bc                                    ; $785e: $09
    nop                                           ; $785f: $00
    add l                                         ; $7860: $85
    ld bc, $0100                                  ; $7861: $01 $00 $01
    nop                                           ; $7864: $00
    ld bc, $0016                                  ; $7865: $01 $16 $00
    rst $38                                       ; $7868: $ff
    dec de                                        ; $7869: $1b
    dec bc                                        ; $786a: $0b
    ld sp, hl                                     ; $786b: $f9
    ld [$08f5], sp                                ; $786c: $08 $f5 $08
    or d                                          ; $786f: $b2
    ld a, [$fdb2]                                 ; $7870: $fa $b2 $fd
    jp nz, $c2fa                                  ; $7873: $c2 $fa $c2

    rst $38                                       ; $7876: $ff
    jp nc, $d2fc                                  ; $7877: $d2 $fc $d2

    ld bc, $fce2                                  ; $787a: $01 $e2 $fc
    db $e4                                        ; $787d: $e4
    cp $f4                                        ; $787e: $fe $f4
    db $fc                                        ; $7880: $fc
    db $f4                                        ; $7881: $f4
    cp $02                                        ; $7882: $fe $02
    db $fc                                        ; $7884: $fc
    adc d                                         ; $7885: $8a
    ld bc, $0102                                  ; $7886: $01 $02 $01
    ld [bc], a                                    ; $7889: $02
    ld bc, $0102                                  ; $788a: $01 $02 $01

jr_0f7_788d:
    ld [bc], a                                    ; $788d: $02
    nop                                           ; $788e: $00
    ld bc, $0003                                  ; $788f: $01 $03 $00
    add c                                         ; $7892: $81
    ld bc, $0003                                  ; $7893: $01 $03 $00
    ld [bc], a                                    ; $7896: $02
    ld bc, $0091                                  ; $7897: $01 $91 $00
    ld bc, $0f0e                                  ; $789a: $01 $0e $0f
    ld [hl], b                                    ; $789d: $70
    jr nz, @+$5d                                  ; $789e: $20 $5b

    nop                                           ; $78a0: $00
    ldh [rLCDC], a                                ; $78a1: $e0 $40
    and b                                         ; $78a3: $a0
    ld b, b                                       ; $78a4: $40
    and b                                         ; $78a5: $a0
    nop                                           ; $78a6: $00
    inc b                                         ; $78a7: $04
    nop                                           ; $78a8: $00
    inc b                                         ; $78a9: $04
    inc bc                                        ; $78aa: $03
    nop                                           ; $78ab: $00
    ld [bc], a                                    ; $78ac: $02
    inc b                                         ; $78ad: $04
    adc [hl]                                      ; $78ae: $8e
    ld [bc], a                                    ; $78af: $02
    inc b                                         ; $78b0: $04
    ld [bc], a                                    ; $78b1: $02
    inc b                                         ; $78b2: $04
    ld [bc], a                                    ; $78b3: $02
    inc b                                         ; $78b4: $04
    ld [bc], a                                    ; $78b5: $02
    inc b                                         ; $78b6: $04
    ld [bc], a                                    ; $78b7: $02
    inc b                                         ; $78b8: $04
    ld [bc], a                                    ; $78b9: $02
    nop                                           ; $78ba: $00
    inc b                                         ; $78bb: $04
    nop                                           ; $78bc: $00
    ld [bc], a                                    ; $78bd: $02
    inc b                                         ; $78be: $04
    ld [bc], a                                    ; $78bf: $02
    nop                                           ; $78c0: $00
    sub d                                         ; $78c1: $92
    ld b, $02                                     ; $78c2: $06 $02
    ld bc, $0102                                  ; $78c4: $01 $02 $01
    ld b, b                                       ; $78c7: $40
    and b                                         ; $78c8: $a0
    ld b, b                                       ; $78c9: $40
    and b                                         ; $78ca: $a0
    jr nz, @+$52                                  ; $78cb: $20 $50

    db $10                                        ; $78cd: $10
    jr z, jr_0f7_78d8                             ; $78ce: $28 $08

    inc [hl]                                      ; $78d0: $34
    ld [$0814], sp                                ; $78d1: $08 $14 $08
    ld [bc], a                                    ; $78d4: $02
    inc d                                         ; $78d5: $14
    adc a                                         ; $78d6: $8f
    ld a, [hl+]                                   ; $78d7: $2a

jr_0f7_78d8:
    ld [hl+], a                                   ; $78d8: $22
    ld d, l                                       ; $78d9: $55
    jr nz, @+$45                                  ; $78da: $20 $43

    jr nz, jr_0f7_791e                            ; $78dc: $20 $40

    jr nz, jr_0f7_7920                            ; $78de: $20 $40

    jr nz, jr_0f7_7932                            ; $78e0: $20 $50

    db $10                                        ; $78e2: $10
    jr nz, jr_0f7_78e5                            ; $78e3: $20 $00

jr_0f7_78e5:
    db $10                                        ; $78e5: $10
    inc bc                                        ; $78e6: $03
    nop                                           ; $78e7: $00
    ld [bc], a                                    ; $78e8: $02
    ld [$1081], sp                                ; $78e9: $08 $81 $10
    dec c                                         ; $78ec: $0d
    nop                                           ; $78ed: $00
    ld [bc], a                                    ; $78ee: $02
    jr jr_0f7_78f3                                ; $78ef: $18 $02

    inc b                                         ; $78f1: $04
    adc [hl]                                      ; $78f2: $8e

jr_0f7_78f3:
    ld a, [de]                                    ; $78f3: $1a
    inc b                                         ; $78f4: $04
    ld a, [bc]                                    ; $78f5: $0a
    ld [bc], a                                    ; $78f6: $02
    dec b                                         ; $78f7: $05
    ld [bc], a                                    ; $78f8: $02
    ld bc, $0300                                  ; $78f9: $01 $00 $03
    ld [bc], a                                    ; $78fc: $02
    dec b                                         ; $78fd: $05
    nop                                           ; $78fe: $00
    ld bc, $0200                                  ; $78ff: $01 $00 $02
    ld bc, $0602                                  ; $7902: $01 $02 $06
    add h                                         ; $7905: $84
    ld bc, $0a04                                  ; $7906: $01 $04 $0a
    inc b                                         ; $7909: $04
    ld [bc], a                                    ; $790a: $02
    ld a, [bc]                                    ; $790b: $0a
    sbc c                                         ; $790c: $99
    dec d                                         ; $790d: $15
    ld [de], a                                    ; $790e: $12
    dec l                                         ; $790f: $2d
    ld hl, $2152                                  ; $7910: $21 $52 $21
    ld d, d                                       ; $7913: $52
    ld b, b                                       ; $7914: $40
    and b                                         ; $7915: $a0
    ld b, b                                       ; $7916: $40
    add b                                         ; $7917: $80
    ld b, b                                       ; $7918: $40
    add b                                         ; $7919: $80
    ld b, b                                       ; $791a: $40
    and b                                         ; $791b: $a0
    jr nz, jr_0f7_7976                            ; $791c: $20 $58

jr_0f7_791e:
    jr c, @+$46                                   ; $791e: $38 $44

jr_0f7_7920:
    db $10                                        ; $7920: $10
    ld [$0810], sp                                ; $7921: $08 $10 $08
    nop                                           ; $7924: $00
    db $10                                        ; $7925: $10
    dec bc                                        ; $7926: $0b
    nop                                           ; $7927: $00
    add a                                         ; $7928: $87
    inc bc                                        ; $7929: $03
    nop                                           ; $792a: $00
    ld e, $18                                     ; $792b: $1e $18
    inc b                                         ; $792d: $04
    nop                                           ; $792e: $00
    jr jr_0f7_7939                                ; $792f: $18 $08

    nop                                           ; $7931: $00

jr_0f7_7932:
    sub a                                         ; $7932: $97
    jr z, jr_0f7_7979                             ; $7933: $28 $44

    inc h                                         ; $7935: $24
    ld c, d                                       ; $7936: $4a
    ld b, d                                       ; $7937: $42
    add l                                         ; $7938: $85

jr_0f7_7939:
    ld b, c                                       ; $7939: $41
    add d                                         ; $793a: $82
    jr nz, @+$43                                  ; $793b: $20 $41

    jr nz, @+$43                                  ; $793d: $20 $41

    nop                                           ; $793f: $00
    ld hl, $0100                                  ; $7940: $21 $00 $01
    nop                                           ; $7943: $00
    ld bc, $0100                                  ; $7944: $01 $00 $01
    nop                                           ; $7947: $00
    ld bc, $0200                                  ; $7948: $01 $00 $02
    ld bc, $0602                                  ; $794b: $01 $02 $06
    adc b                                         ; $794e: $88
    add hl, bc                                    ; $794f: $09
    dec b                                         ; $7950: $05
    ld a, [bc]                                    ; $7951: $0a
    ld [$0011], sp                                ; $7952: $08 $11 $00
    ld [bc], a                                    ; $7955: $02
    nop                                           ; $7956: $00
    ld [bc], a                                    ; $7957: $02
    ld [bc], a                                    ; $7958: $02
    sub h                                         ; $7959: $94
    ld bc, $0102                                  ; $795a: $01 $02 $01
    ld [bc], a                                    ; $795d: $02
    ld bc, $0102                                  ; $795e: $01 $02 $01
    ld [bc], a                                    ; $7961: $02
    ld bc, $0102                                  ; $7962: $01 $02 $01
    ld [bc], a                                    ; $7965: $02
    ld bc, $0102                                  ; $7966: $01 $02 $01
    nop                                           ; $7969: $00
    ld [bc], a                                    ; $796a: $02
    nop                                           ; $796b: $00
    ld [bc], a                                    ; $796c: $02
    nop                                           ; $796d: $00
    ld [bc], a                                    ; $796e: $02
    ld [bc], a                                    ; $796f: $02
    and c                                         ; $7970: $a1
    nop                                           ; $7971: $00
    ld b, d                                       ; $7972: $42
    and l                                         ; $7973: $a5
    ld b, d                                       ; $7974: $42
    and c                                         ; $7975: $a1

jr_0f7_7976:
    db $10                                        ; $7976: $10
    jr nz, jr_0f7_7989                            ; $7977: $20 $10

jr_0f7_7979:
    jr nz, jr_0f7_798b                            ; $7979: $20 $10

    jr nz, jr_0f7_798d                            ; $797b: $20 $10

    jr nz, @+$12                                  ; $797d: $20 $10

    jr nz, jr_0f7_7991                            ; $797f: $20 $10

    jr z, @+$3a                                   ; $7981: $28 $38

    ld b, h                                       ; $7983: $44
    ld c, b                                       ; $7984: $48
    or h                                          ; $7985: $b4
    ld b, h                                       ; $7986: $44
    xor e                                         ; $7987: $ab
    ld b, e                                       ; $7988: $43

jr_0f7_7989:
    and h                                         ; $7989: $a4
    ld b, b                                       ; $798a: $40

jr_0f7_798b:
    add e                                         ; $798b: $83
    nop                                           ; $798c: $00

jr_0f7_798d:
    ld b, c                                       ; $798d: $41
    ld bc, $0002                                  ; $798e: $01 $02 $00

jr_0f7_7991:
    ld bc, $0002                                  ; $7991: $01 $02 $00
    add e                                         ; $7994: $83
    ld bc, $0106                                  ; $7995: $01 $06 $01
    ld [bc], a                                    ; $7998: $02
    ld [bc], a                                    ; $7999: $02
    add e                                         ; $799a: $83
    ld bc, $0200                                  ; $799b: $01 $00 $02
    dec bc                                        ; $799e: $0b
    nop                                           ; $799f: $00
    add d                                         ; $79a0: $82
    ld [bc], a                                    ; $79a1: $02
    nop                                           ; $79a2: $00
    ld [bc], a                                    ; $79a3: $02
    ld [bc], a                                    ; $79a4: $02
    add h                                         ; $79a5: $84
    ld bc, $0102                                  ; $79a6: $01 $02 $01
    nop                                           ; $79a9: $00
    ld [bc], a                                    ; $79aa: $02
    ld [bc], a                                    ; $79ab: $02
    add l                                         ; $79ac: $85
    ld bc, $0102                                  ; $79ad: $01 $02 $01
    nop                                           ; $79b0: $00
    ld [bc], a                                    ; $79b1: $02
    inc b                                         ; $79b2: $04
    nop                                           ; $79b3: $00
    sbc b                                         ; $79b4: $98
    ld b, $01                                     ; $79b5: $06 $01
    ld [$1016], sp                                ; $79b7: $08 $16 $10
    jr z, jr_0f7_79cc                             ; $79ba: $28 $10

    jr nz, @+$12                                  ; $79bc: $20 $10

    jr z, jr_0f7_79d0                             ; $79be: $28 $10

    jr z, jr_0f7_79ca                             ; $79c0: $28 $08

    inc d                                         ; $79c2: $14
    ld [$0804], sp                                ; $79c3: $08 $04 $08
    db $10                                        ; $79c6: $10
    ld [$0814], sp                                ; $79c7: $08 $14 $08

jr_0f7_79ca:
    inc b                                         ; $79ca: $04
    nop                                           ; $79cb: $00

jr_0f7_79cc:
    ld [$0004], sp                                ; $79cc: $08 $04 $00
    rst $38                                       ; $79cf: $ff

jr_0f7_79d0:
    dec de                                        ; $79d0: $1b
    dec bc                                        ; $79d1: $0b
    ld sp, hl                                     ; $79d2: $f9
    ld [$08f5], sp                                ; $79d3: $08 $f5 $08
    or d                                          ; $79d6: $b2
    db $fd                                        ; $79d7: $fd
    cp l                                          ; $79d8: $bd
    nop                                           ; $79d9: $00
    jp $d3f8                                      ; $79da: $c3 $f8 $d3


    ld sp, hl                                     ; $79dd: $f9
    push de                                       ; $79de: $d5
    ld bc, $f9e3                                  ; $79df: $01 $e3 $f9
    push hl                                       ; $79e2: $e5

jr_0f7_79e3:
    rst $38                                       ; $79e3: $ff
    di                                            ; $79e4: $f3
    ld sp, hl                                     ; $79e5: $f9
    push af                                       ; $79e6: $f5
    db $fc                                        ; $79e7: $fc
    ld [bc], a                                    ; $79e8: $02
    cp $02                                        ; $79e9: $fe $02
    rst $38                                       ; $79eb: $ff
    sub e                                         ; $79ec: $93
    inc b                                         ; $79ed: $04
    ld a, [bc]                                    ; $79ee: $0a
    inc b                                         ; $79ef: $04
    ld a, [bc]                                    ; $79f0: $0a
    ld [$3034], sp                                ; $79f1: $08 $34 $30
    ld c, b                                       ; $79f4: $48
    jr nz, jr_0f7_7a47                            ; $79f5: $20 $50

    db $10                                        ; $79f7: $10
    jr nz, jr_0f7_7a0a                            ; $79f8: $20 $10

    jr z, jr_0f7_7a04                             ; $79fa: $28 $08

    db $10                                        ; $79fc: $10
    ld [$1814], sp                                ; $79fd: $08 $14 $18
    ld [bc], a                                    ; $7a00: $02
    ld h, h                                       ; $7a01: $64
    adc h                                         ; $7a02: $8c
    dec de                                        ; $7a03: $1b

jr_0f7_7a04:
    add e                                         ; $7a04: $83
    ld b, h                                       ; $7a05: $44
    ld b, b                                       ; $7a06: $40
    add e                                         ; $7a07: $83
    nop                                           ; $7a08: $00
    add b                                         ; $7a09: $80

jr_0f7_7a0a:
    nop                                           ; $7a0a: $00
    ld b, b                                       ; $7a0b: $40
    ld bc, $0002                                  ; $7a0c: $01 $02 $00
    ld [bc], a                                    ; $7a0f: $02
    inc b                                         ; $7a10: $04
    ld [bc], a                                    ; $7a11: $02
    ld [bc], a                                    ; $7a12: $02
    sbc b                                         ; $7a13: $98
    dec b                                         ; $7a14: $05
    ld [bc], a                                    ; $7a15: $02
    dec b                                         ; $7a16: $05
    inc b                                         ; $7a17: $04
    ld [bc], a                                    ; $7a18: $02
    ld [$f074], sp                                ; $7a19: $08 $74 $f0
    ld [$9060], sp                                ; $7a1c: $08 $60 $90
    jr nz, @+$52                                  ; $7a1f: $20 $50

    ld b, b                                       ; $7a21: $40
    jr nz, jr_0f7_7a64                            ; $7a22: $20 $40

    add b                                         ; $7a24: $80
    ld b, b                                       ; $7a25: $40
    and b                                         ; $7a26: $a0
    jr nz, jr_0f7_7a79                            ; $7a27: $20 $50

    db $10                                        ; $7a29: $10
    jr nz, @+$12                                  ; $7a2a: $20 $10

    ld [bc], a                                    ; $7a2c: $02
    jr nz, jr_0f7_79e3                            ; $7a2d: $20 $b4

    ld d, b                                       ; $7a2f: $50
    ld bc, $0702                                  ; $7a30: $01 $02 $07
    ld [$030c], sp                                ; $7a33: $08 $0c $03
    ld [$0814], sp                                ; $7a36: $08 $14 $08
    db $10                                        ; $7a39: $10
    ld [$0810], sp                                ; $7a3a: $08 $10 $08
    inc b                                         ; $7a3d: $04
    ld [$0814], sp                                ; $7a3e: $08 $14 $08
    inc d                                         ; $7a41: $14
    db $10                                        ; $7a42: $10

jr_0f7_7a43:
    inc c                                         ; $7a43: $0c
    ld [$2434], sp                                ; $7a44: $08 $34 $24

jr_0f7_7a47:
    jr @+$26                                      ; $7a47: $18 $24

    ld d, d                                       ; $7a49: $52
    ld [hl+], a                                   ; $7a4a: $22
    ld b, l                                       ; $7a4b: $45
    jr nz, jr_0f7_7a90                            ; $7a4c: $20 $42

    ld h, b                                       ; $7a4e: $60
    add b                                         ; $7a4f: $80
    ld b, b                                       ; $7a50: $40
    add b                                         ; $7a51: $80
    jr nz, jr_0f7_7a94                            ; $7a52: $20 $40

    jr nz, jr_0f7_7aae                            ; $7a54: $20 $58

    inc a                                         ; $7a56: $3c
    ld b, e                                       ; $7a57: $43
    inc hl                                        ; $7a58: $23
    inc e                                         ; $7a59: $1c
    db $10                                        ; $7a5a: $10
    dec hl                                        ; $7a5b: $2b
    db $10                                        ; $7a5c: $10
    ld [$2810], sp                                ; $7a5d: $08 $10 $28
    jr nz, jr_0f7_7ab2                            ; $7a60: $20 $50

    jr nz, jr_0f7_7a66                            ; $7a62: $20 $02

jr_0f7_7a64:
    ld b, b                                       ; $7a64: $40
    add e                                         ; $7a65: $83

jr_0f7_7a66:
    jr nz, jr_0f7_7a68                            ; $7a66: $20 $00

jr_0f7_7a68:
    ld b, b                                       ; $7a68: $40
    inc bc                                        ; $7a69: $03
    nop                                           ; $7a6a: $00
    ld [bc], a                                    ; $7a6b: $02
    ld bc, $0290                                  ; $7a6c: $01 $90 $02
    ld bc, $0002                                  ; $7a6f: $01 $02 $00
    ld hl, sp+$78                                 ; $7a72: $f8 $78
    add h                                         ; $7a74: $84
    adc b                                         ; $7a75: $88
    ld [hl], h                                    ; $7a76: $74
    inc b                                         ; $7a77: $04
    ld a, [bc]                                    ; $7a78: $0a

jr_0f7_7a79:
    ld [bc], a                                    ; $7a79: $02
    dec b                                         ; $7a7a: $05
    ld [bc], a                                    ; $7a7b: $02
    dec b                                         ; $7a7c: $05
    ld [bc], a                                    ; $7a7d: $02
    ld [bc], a                                    ; $7a7e: $02
    inc b                                         ; $7a7f: $04
    adc [hl]                                      ; $7a80: $8e
    ld a, [bc]                                    ; $7a81: $0a
    ld [$1814], sp                                ; $7a82: $08 $14 $18
    inc h                                         ; $7a85: $24
    inc l                                         ; $7a86: $2c
    ld d, d                                       ; $7a87: $52
    jp nz, $0225                                  ; $7a88: $c2 $25 $02

    push bc                                       ; $7a8b: $c5
    ld [bc], a                                    ; $7a8c: $02
    dec b                                         ; $7a8d: $05
    ld b, $02                                     ; $7a8e: $06 $02

jr_0f7_7a90:
    ld [$148e], sp                                ; $7a90: $08 $8e $14
    ld [bc], a                                    ; $7a93: $02

jr_0f7_7a94:
    dec b                                         ; $7a94: $05
    inc b                                         ; $7a95: $04
    ld a, [bc]                                    ; $7a96: $0a
    inc c                                         ; $7a97: $0c
    db $10                                        ; $7a98: $10
    ld [$0814], sp                                ; $7a99: $08 $14 $08
    inc d                                         ; $7a9c: $14
    ld [$0814], sp                                ; $7a9d: $08 $14 $08
    ld [bc], a                                    ; $7aa0: $02
    inc d                                         ; $7aa1: $14
    sub a                                         ; $7aa2: $97
    ld a, [bc]                                    ; $7aa3: $0a
    inc de                                        ; $7aa4: $13
    inc h                                         ; $7aa5: $24
    db $10                                        ; $7aa6: $10
    dec hl                                        ; $7aa7: $2b
    db $10                                        ; $7aa8: $10
    add hl, hl                                    ; $7aa9: $29
    ld [$0804], sp                                ; $7aaa: $08 $04 $08
    inc d                                         ; $7aad: $14

jr_0f7_7aae:
    db $10                                        ; $7aae: $10
    ld l, b                                       ; $7aaf: $68
    ld h, b                                       ; $7ab0: $60
    sub b                                         ; $7ab1: $90

jr_0f7_7ab2:
    add b                                         ; $7ab2: $80
    ld h, b                                       ; $7ab3: $60
    ld [bc], a                                    ; $7ab4: $02
    dec b                                         ; $7ab5: $05
    nop                                           ; $7ab6: $00
    ld [bc], a                                    ; $7ab7: $02
    nop                                           ; $7ab8: $00
    ld [bc], a                                    ; $7ab9: $02
    rlca                                          ; $7aba: $07
    nop                                           ; $7abb: $00
    ld [bc], a                                    ; $7abc: $02
    jr nz, jr_0f7_7a43                            ; $7abd: $20 $84

    db $10                                        ; $7abf: $10
    jr nz, jr_0f7_7ad2                            ; $7ac0: $20 $10

    jr nz, jr_0f7_7ac6                            ; $7ac2: $20 $02

    db $10                                        ; $7ac4: $10
    adc l                                         ; $7ac5: $8d

jr_0f7_7ac6:
    inc l                                         ; $7ac6: $2c
    inc c                                         ; $7ac7: $0c
    ld [de], a                                    ; $7ac8: $12
    inc b                                         ; $7ac9: $04
    ld a, [bc]                                    ; $7aca: $0a
    inc b                                         ; $7acb: $04
    ld a, [bc]                                    ; $7acc: $0a
    ld [$1014], sp                                ; $7acd: $08 $14 $10
    ld l, b                                       ; $7ad0: $68
    nop                                           ; $7ad1: $00

jr_0f7_7ad2:
    add b                                         ; $7ad2: $80
    ld [bc], a                                    ; $7ad3: $02
    nop                                           ; $7ad4: $00
    add c                                         ; $7ad5: $81
    ld bc, $0202                                  ; $7ad6: $01 $02 $02
    sbc l                                         ; $7ad9: $9d
    dec b                                         ; $7ada: $05
    ld b, $08                                     ; $7adb: $06 $08
    add hl, bc                                    ; $7add: $09
    ld d, $08                                     ; $7ade: $16 $08
    dec d                                         ; $7ae0: $15
    ld [$0814], sp                                ; $7ae1: $08 $14 $08
    inc d                                         ; $7ae4: $14
    ld [$0414], sp                                ; $7ae5: $08 $14 $04
    ld a, [bc]                                    ; $7ae8: $0a
    inc b                                         ; $7ae9: $04
    ld a, [bc]                                    ; $7aea: $0a
    inc b                                         ; $7aeb: $04
    ld a, [bc]                                    ; $7aec: $0a
    ld b, $09                                     ; $7aed: $06 $09
    ld bc, $0002                                  ; $7aef: $01 $02 $00
    ld bc, $0204                                  ; $7af2: $01 $04 $02
    nop                                           ; $7af5: $00
    inc b                                         ; $7af6: $04
    inc bc                                        ; $7af7: $03
    nop                                           ; $7af8: $00
    add [hl]                                      ; $7af9: $86
    inc b                                         ; $7afa: $04
    ld b, $01                                     ; $7afb: $06 $01
    ld [bc], a                                    ; $7afd: $02
    dec b                                         ; $7afe: $05
    ld [bc], a                                    ; $7aff: $02
    ld [bc], a                                    ; $7b00: $02
    nop                                           ; $7b01: $00
    add c                                         ; $7b02: $81
    ld [bc], a                                    ; $7b03: $02
    add hl, bc                                    ; $7b04: $09
    nop                                           ; $7b05: $00
    ld [bc], a                                    ; $7b06: $02
    inc b                                         ; $7b07: $04
    ld [bc], a                                    ; $7b08: $02
    ld [bc], a                                    ; $7b09: $02
    add e                                         ; $7b0a: $83
    dec b                                         ; $7b0b: $05
    ld [bc], a                                    ; $7b0c: $02
    dec b                                         ; $7b0d: $05
    ld b, $00                                     ; $7b0e: $06 $00
    sub c                                         ; $7b10: $91
    jr @+$26                                      ; $7b11: $18 $24

    jr z, @+$16                                   ; $7b13: $28 $14

    inc h                                         ; $7b15: $24
    ld c, e                                       ; $7b16: $4b
    ld b, e                                       ; $7b17: $43
    and h                                         ; $7b18: $a4
    ld b, c                                       ; $7b19: $41
    add d                                         ; $7b1a: $82
    ld bc, $0162                                  ; $7b1b: $01 $62 $01
    nop                                           ; $7b1e: $00
    ld bc, $0102                                  ; $7b1f: $01 $02 $01
    ld [bc], a                                    ; $7b22: $02
    ld [bc], a                                    ; $7b23: $02
    add e                                         ; $7b24: $83
    dec b                                         ; $7b25: $05
    nop                                           ; $7b26: $00
    ld [bc], a                                    ; $7b27: $02
    ld de, $8b00                                  ; $7b28: $11 $00 $8b
    ld bc, $0100                                  ; $7b2b: $01 $00 $01
    nop                                           ; $7b2e: $00
    ld bc, $0100                                  ; $7b2f: $01 $00 $01
    nop                                           ; $7b32: $00
    ld bc, $0100                                  ; $7b33: $01 $00 $01
    ld [$ff00], sp                                ; $7b36: $08 $00 $ff
    rlca                                          ; $7b39: $07
    ld bc, $0cf5                                  ; $7b3a: $01 $f5 $0c
    push af                                       ; $7b3d: $f5
    dec bc                                        ; $7b3e: $0b
    rst $28                                       ; $7b3f: $ef
    ld a, [bc]                                    ; $7b40: $0a
    ld [bc], a                                    ; $7b41: $02
    inc a                                         ; $7b42: $3c
    adc h                                         ; $7b43: $8c
    ld d, d                                       ; $7b44: $52
    ld a, [hl]                                    ; $7b45: $7e
    xor c                                         ; $7b46: $a9
    rst $30                                       ; $7b47: $f7
    db $dd                                        ; $7b48: $dd
    db $e3                                        ; $7b49: $e3
    xor c                                         ; $7b4a: $a9
    rst $30                                       ; $7b4b: $f7
    push de                                       ; $7b4c: $d5
    rst $38                                       ; $7b4d: $ff
    ld l, d                                       ; $7b4e: $6a
    ld a, [hl]                                    ; $7b4f: $7e
    ld [bc], a                                    ; $7b50: $02
    inc a                                         ; $7b51: $3c
    stop                                          ; $7b52: $10 $00
    rst $38                                       ; $7b54: $ff
    rlca                                          ; $7b55: $07
    ld bc, $0cf5                                  ; $7b56: $01 $f5 $0c
    push af                                       ; $7b59: $f5
    dec bc                                        ; $7b5a: $0b
    db $eb                                        ; $7b5b: $eb
    db $fd                                        ; $7b5c: $fd
    ld [bc], a                                    ; $7b5d: $02
    inc a                                         ; $7b5e: $3c
    adc h                                         ; $7b5f: $8c
    ld d, d                                       ; $7b60: $52
    ld a, [hl]                                    ; $7b61: $7e
    xor c                                         ; $7b62: $a9
    rst $30                                       ; $7b63: $f7
    db $dd                                        ; $7b64: $dd
    db $e3                                        ; $7b65: $e3
    xor c                                         ; $7b66: $a9
    rst $30                                       ; $7b67: $f7
    push de                                       ; $7b68: $d5
    rst $38                                       ; $7b69: $ff
    ld l, d                                       ; $7b6a: $6a
    ld a, [hl]                                    ; $7b6b: $7e
    ld [bc], a                                    ; $7b6c: $02
    inc a                                         ; $7b6d: $3c
    stop                                          ; $7b6e: $10 $00
    rst $38                                       ; $7b70: $ff
    add hl, bc                                    ; $7b71: $09
    ld [bc], a                                    ; $7b72: $02
    push af                                       ; $7b73: $f5
    inc c                                         ; $7b74: $0c
    push af                                       ; $7b75: $f5
    dec bc                                        ; $7b76: $0b
    ldh a, [$f0]                                  ; $7b77: $f0 $f0
    ldh a, [$09]                                  ; $7b79: $f0 $09
    ld [bc], a                                    ; $7b7b: $02
    nop                                           ; $7b7c: $00
    ld [bc], a                                    ; $7b7d: $02
    inc a                                         ; $7b7e: $3c
    adc h                                         ; $7b7f: $8c
    ld b, d                                       ; $7b80: $42
    ld a, [hl]                                    ; $7b81: $7e
    sub l                                         ; $7b82: $95
    rst $28                                       ; $7b83: $ef
    cp e                                          ; $7b84: $bb
    rst $00                                       ; $7b85: $c7
    push de                                       ; $7b86: $d5
    rst $28                                       ; $7b87: $ef
    xor e                                         ; $7b88: $ab
    rst $38                                       ; $7b89: $ff
    ld d, [hl]                                    ; $7b8a: $56
    ld a, [hl]                                    ; $7b8b: $7e
    ld [bc], a                                    ; $7b8c: $02
    inc a                                         ; $7b8d: $3c
    ld c, $00                                     ; $7b8e: $0e $00
    ld [bc], a                                    ; $7b90: $02
    inc a                                         ; $7b91: $3c
    adc h                                         ; $7b92: $8c
    ld d, d                                       ; $7b93: $52
    ld a, [hl]                                    ; $7b94: $7e
    xor c                                         ; $7b95: $a9
    rst $30                                       ; $7b96: $f7
    db $dd                                        ; $7b97: $dd
    db $e3                                        ; $7b98: $e3
    xor c                                         ; $7b99: $a9
    rst $30                                       ; $7b9a: $f7
    push de                                       ; $7b9b: $d5
    rst $38                                       ; $7b9c: $ff
    ld l, d                                       ; $7b9d: $6a
    ld a, [hl]                                    ; $7b9e: $7e
    ld [bc], a                                    ; $7b9f: $02
    inc a                                         ; $7ba0: $3c
    stop                                          ; $7ba1: $10 $00
    rst $38                                       ; $7ba3: $ff
    add hl, bc                                    ; $7ba4: $09
    ld [bc], a                                    ; $7ba5: $02
    push af                                       ; $7ba6: $f5
    inc c                                         ; $7ba7: $0c
    push af                                       ; $7ba8: $f5
    dec bc                                        ; $7ba9: $0b
    ld a, [$ecea]                                 ; $7baa: $fa $ea $ec
    db $fc                                        ; $7bad: $fc
    ld [bc], a                                    ; $7bae: $02
    inc a                                         ; $7baf: $3c
    adc h                                         ; $7bb0: $8c
    ld l, d                                       ; $7bb1: $6a
    ld a, [hl]                                    ; $7bb2: $7e
    push de                                       ; $7bb3: $d5
    rst $38                                       ; $7bb4: $ff
    xor e                                         ; $7bb5: $ab
    rst $30                                       ; $7bb6: $f7
    db $dd                                        ; $7bb7: $dd
    db $e3                                        ; $7bb8: $e3
    xor c                                         ; $7bb9: $a9
    rst $30                                       ; $7bba: $f7
    ld b, d                                       ; $7bbb: $42
    ld a, [hl]                                    ; $7bbc: $7e
    ld [bc], a                                    ; $7bbd: $02
    inc a                                         ; $7bbe: $3c
    stop                                          ; $7bbf: $10 $00
    ld [bc], a                                    ; $7bc1: $02
    inc a                                         ; $7bc2: $3c
    adc h                                         ; $7bc3: $8c
    ld b, d                                       ; $7bc4: $42
    ld a, [hl]                                    ; $7bc5: $7e
    sub l                                         ; $7bc6: $95
    rst $28                                       ; $7bc7: $ef
    cp e                                          ; $7bc8: $bb
    rst $00                                       ; $7bc9: $c7
    push de                                       ; $7bca: $d5
    rst $28                                       ; $7bcb: $ef
    xor e                                         ; $7bcc: $ab
    rst $38                                       ; $7bcd: $ff
    ld d, [hl]                                    ; $7bce: $56
    ld a, [hl]                                    ; $7bcf: $7e
    ld [bc], a                                    ; $7bd0: $02
    inc a                                         ; $7bd1: $3c
    stop                                          ; $7bd2: $10 $00
    rst $38                                       ; $7bd4: $ff
    add hl, bc                                    ; $7bd5: $09
    ld [bc], a                                    ; $7bd6: $02
    push af                                       ; $7bd7: $f5
    inc c                                         ; $7bd8: $0c
    push af                                       ; $7bd9: $f5
    dec bc                                        ; $7bda: $0b
    ld a, [c]                                     ; $7bdb: $f2
    rst $28                                       ; $7bdc: $ef
    ld [bc], a                                    ; $7bdd: $02
    ld [$3c02], a                                 ; $7bde: $ea $02 $3c
    adc h                                         ; $7be1: $8c
    ld d, [hl]                                    ; $7be2: $56
    ld a, [hl]                                    ; $7be3: $7e
    xor e                                         ; $7be4: $ab
    rst $38                                       ; $7be5: $ff
    sub l                                         ; $7be6: $95
    rst $28                                       ; $7be7: $ef
    cp e                                          ; $7be8: $bb
    rst $00                                       ; $7be9: $c7
    sub l                                         ; $7bea: $95
    rst $28                                       ; $7beb: $ef
    ld c, d                                       ; $7bec: $4a
    ld a, [hl]                                    ; $7bed: $7e
    ld [bc], a                                    ; $7bee: $02
    inc a                                         ; $7bef: $3c
    jr jr_0f7_7bf2                                ; $7bf0: $18 $00

jr_0f7_7bf2:
    ld [bc], a                                    ; $7bf2: $02
    inc a                                         ; $7bf3: $3c
    adc h                                         ; $7bf4: $8c
    ld d, d                                       ; $7bf5: $52
    ld a, [hl]                                    ; $7bf6: $7e
    xor c                                         ; $7bf7: $a9
    rst $30                                       ; $7bf8: $f7
    db $dd                                        ; $7bf9: $dd
    db $e3                                        ; $7bfa: $e3
    xor c                                         ; $7bfb: $a9
    rst $30                                       ; $7bfc: $f7
    push de                                       ; $7bfd: $d5
    rst $38                                       ; $7bfe: $ff
    ld l, d                                       ; $7bff: $6a
    ld a, [hl]                                    ; $7c00: $7e
    ld [bc], a                                    ; $7c01: $02
    inc a                                         ; $7c02: $3c
    ld [$ff00], sp                                ; $7c03: $08 $00 $ff
    add hl, bc                                    ; $7c06: $09
    ld [bc], a                                    ; $7c07: $02
    push af                                       ; $7c08: $f5
    inc c                                         ; $7c09: $0c
    push af                                       ; $7c0a: $f5
    dec bc                                        ; $7c0b: $0b
    ei                                            ; $7c0c: $fb
    jp hl                                         ; $7c0d: $e9


    dec bc                                        ; $7c0e: $0b
    ld a, [c]                                     ; $7c0f: $f2
    ld [bc], a                                    ; $7c10: $02
    inc a                                         ; $7c11: $3c
    adc h                                         ; $7c12: $8c
    ld l, d                                       ; $7c13: $6a
    ld a, [hl]                                    ; $7c14: $7e
    push de                                       ; $7c15: $d5
    rst $38                                       ; $7c16: $ff
    xor e                                         ; $7c17: $ab
    rst $30                                       ; $7c18: $f7
    db $dd                                        ; $7c19: $dd
    db $e3                                        ; $7c1a: $e3
    xor c                                         ; $7c1b: $a9
    rst $30                                       ; $7c1c: $f7
    ld b, d                                       ; $7c1d: $42
    ld a, [hl]                                    ; $7c1e: $7e
    ld [bc], a                                    ; $7c1f: $02
    inc a                                         ; $7c20: $3c
    jr jr_0f7_7c23                                ; $7c21: $18 $00

jr_0f7_7c23:
    ld [bc], a                                    ; $7c23: $02
    inc a                                         ; $7c24: $3c
    adc h                                         ; $7c25: $8c
    ld b, d                                       ; $7c26: $42
    ld a, [hl]                                    ; $7c27: $7e
    sub l                                         ; $7c28: $95
    rst $28                                       ; $7c29: $ef
    cp e                                          ; $7c2a: $bb
    rst $00                                       ; $7c2b: $c7
    push de                                       ; $7c2c: $d5
    rst $28                                       ; $7c2d: $ef
    xor e                                         ; $7c2e: $ab
    rst $38                                       ; $7c2f: $ff
    ld d, [hl]                                    ; $7c30: $56
    ld a, [hl]                                    ; $7c31: $7e
    ld [bc], a                                    ; $7c32: $02
    inc a                                         ; $7c33: $3c
    ld [$ff00], sp                                ; $7c34: $08 $00 $ff
    add hl, bc                                    ; $7c37: $09
    ld [bc], a                                    ; $7c38: $02
    push af                                       ; $7c39: $f5
    inc c                                         ; $7c3a: $0c
    push af                                       ; $7c3b: $f5
    dec bc                                        ; $7c3c: $0b
    rlca                                          ; $7c3d: $07
    jp hl                                         ; $7c3e: $e9


    ld [de], a                                    ; $7c3f: $12
    rst $38                                       ; $7c40: $ff
    ld [bc], a                                    ; $7c41: $02
    inc a                                         ; $7c42: $3c
    adc h                                         ; $7c43: $8c
    ld d, d                                       ; $7c44: $52
    ld a, [hl]                                    ; $7c45: $7e
    xor c                                         ; $7c46: $a9
    rst $30                                       ; $7c47: $f7
    db $dd                                        ; $7c48: $dd
    db $e3                                        ; $7c49: $e3
    xor c                                         ; $7c4a: $a9
    rst $30                                       ; $7c4b: $f7
    push de                                       ; $7c4c: $d5
    rst $38                                       ; $7c4d: $ff
    ld l, d                                       ; $7c4e: $6a
    ld a, [hl]                                    ; $7c4f: $7e
    ld [bc], a                                    ; $7c50: $02
    inc a                                         ; $7c51: $3c
    stop                                          ; $7c52: $10 $00
    ld [bc], a                                    ; $7c54: $02
    inc a                                         ; $7c55: $3c
    adc h                                         ; $7c56: $8c
    ld d, [hl]                                    ; $7c57: $56
    ld a, [hl]                                    ; $7c58: $7e
    xor e                                         ; $7c59: $ab
    rst $38                                       ; $7c5a: $ff
    sub l                                         ; $7c5b: $95
    rst $28                                       ; $7c5c: $ef
    cp e                                          ; $7c5d: $bb
    rst $00                                       ; $7c5e: $c7
    sub l                                         ; $7c5f: $95
    rst $28                                       ; $7c60: $ef
    ld c, d                                       ; $7c61: $4a
    ld a, [hl]                                    ; $7c62: $7e
    ld [bc], a                                    ; $7c63: $02
    inc a                                         ; $7c64: $3c
    stop                                          ; $7c65: $10 $00
    rst $38                                       ; $7c67: $ff
    add hl, bc                                    ; $7c68: $09
    ld [bc], a                                    ; $7c69: $02
    push af                                       ; $7c6a: $f5
    inc c                                         ; $7c6b: $0c
    push af                                       ; $7c6c: $f5
    dec bc                                        ; $7c6d: $0b
    dec c                                         ; $7c6e: $0d
    pop af                                        ; $7c6f: $f1
    dec c                                         ; $7c70: $0d
    ld a, [bc]                                    ; $7c71: $0a
    ld b, $00                                     ; $7c72: $06 $00
    ld [bc], a                                    ; $7c74: $02
    inc a                                         ; $7c75: $3c
    adc h                                         ; $7c76: $8c
    ld b, d                                       ; $7c77: $42
    ld a, [hl]                                    ; $7c78: $7e
    sub l                                         ; $7c79: $95
    rst $28                                       ; $7c7a: $ef
    cp e                                          ; $7c7b: $bb
    rst $00                                       ; $7c7c: $c7
    push de                                       ; $7c7d: $d5
    rst $28                                       ; $7c7e: $ef
    xor e                                         ; $7c7f: $ab
    rst $38                                       ; $7c80: $ff
    ld d, [hl]                                    ; $7c81: $56
    ld a, [hl]                                    ; $7c82: $7e
    ld [bc], a                                    ; $7c83: $02
    inc a                                         ; $7c84: $3c
    ld a, [bc]                                    ; $7c85: $0a
    nop                                           ; $7c86: $00
    ld [bc], a                                    ; $7c87: $02
    inc a                                         ; $7c88: $3c
    adc h                                         ; $7c89: $8c
    ld l, d                                       ; $7c8a: $6a
    ld a, [hl]                                    ; $7c8b: $7e
    push de                                       ; $7c8c: $d5
    rst $38                                       ; $7c8d: $ff
    xor e                                         ; $7c8e: $ab
    rst $30                                       ; $7c8f: $f7
    db $dd                                        ; $7c90: $dd
    db $e3                                        ; $7c91: $e3
    xor c                                         ; $7c92: $a9
    rst $30                                       ; $7c93: $f7
    ld b, d                                       ; $7c94: $42
    ld a, [hl]                                    ; $7c95: $7e
    ld [bc], a                                    ; $7c96: $02
    inc a                                         ; $7c97: $3c
    stop                                          ; $7c98: $10 $00
    rst $38                                       ; $7c9a: $ff
    add hl, bc                                    ; $7c9b: $09
    ld [bc], a                                    ; $7c9c: $02
    push af                                       ; $7c9d: $f5
    inc c                                         ; $7c9e: $0c
    push af                                       ; $7c9f: $f5
    dec bc                                        ; $7ca0: $0b
    inc bc                                        ; $7ca1: $03
    rrca                                          ; $7ca2: $0f
    inc de                                        ; $7ca3: $13
    cp $02                                        ; $7ca4: $fe $02
    inc a                                         ; $7ca6: $3c
    adc h                                         ; $7ca7: $8c
    ld d, d                                       ; $7ca8: $52
    ld a, [hl]                                    ; $7ca9: $7e
    xor c                                         ; $7caa: $a9
    rst $30                                       ; $7cab: $f7
    db $dd                                        ; $7cac: $dd
    db $e3                                        ; $7cad: $e3
    xor c                                         ; $7cae: $a9
    rst $30                                       ; $7caf: $f7
    push de                                       ; $7cb0: $d5
    rst $38                                       ; $7cb1: $ff
    ld l, d                                       ; $7cb2: $6a
    ld a, [hl]                                    ; $7cb3: $7e
    ld [bc], a                                    ; $7cb4: $02
    inc a                                         ; $7cb5: $3c
    stop                                          ; $7cb6: $10 $00
    ld [bc], a                                    ; $7cb8: $02
    inc a                                         ; $7cb9: $3c
    adc h                                         ; $7cba: $8c
    ld d, [hl]                                    ; $7cbb: $56
    ld a, [hl]                                    ; $7cbc: $7e
    xor e                                         ; $7cbd: $ab
    rst $38                                       ; $7cbe: $ff
    sub l                                         ; $7cbf: $95
    rst $28                                       ; $7cc0: $ef
    cp e                                          ; $7cc1: $bb
    rst $00                                       ; $7cc2: $c7
    sub l                                         ; $7cc3: $95
    rst $28                                       ; $7cc4: $ef
    ld c, d                                       ; $7cc5: $4a
    ld a, [hl]                                    ; $7cc6: $7e
    ld [bc], a                                    ; $7cc7: $02
    inc a                                         ; $7cc8: $3c
    stop                                          ; $7cc9: $10 $00
    rst $38                                       ; $7ccb: $ff
    add hl, bc                                    ; $7ccc: $09
    ld [bc], a                                    ; $7ccd: $02
    push af                                       ; $7cce: $f5
    inc c                                         ; $7ccf: $0c
    push af                                       ; $7cd0: $f5
    dec bc                                        ; $7cd1: $0b
    ei                                            ; $7cd2: $fb
    add hl, bc                                    ; $7cd3: $09
    dec bc                                        ; $7cd4: $0b
    add hl, bc                                    ; $7cd5: $09
    adc b                                         ; $7cd6: $88
    nop                                           ; $7cd7: $00
    ld b, $07                                     ; $7cd8: $06 $07
    add hl, bc                                    ; $7cda: $09
    rlca                                          ; $7cdb: $07
    dec bc                                        ; $7cdc: $0b
    nop                                           ; $7cdd: $00
    ld b, $1e                                     ; $7cde: $06 $1e
    nop                                           ; $7ce0: $00
    ld [bc], a                                    ; $7ce1: $02
    inc a                                         ; $7ce2: $3c
    adc h                                         ; $7ce3: $8c
    ld l, d                                       ; $7ce4: $6a
    ld a, [hl]                                    ; $7ce5: $7e
    push de                                       ; $7ce6: $d5
    rst $38                                       ; $7ce7: $ff
    xor e                                         ; $7ce8: $ab
    rst $30                                       ; $7ce9: $f7
    db $dd                                        ; $7cea: $dd
    db $e3                                        ; $7ceb: $e3
    xor c                                         ; $7cec: $a9
    rst $30                                       ; $7ced: $f7
    ld b, d                                       ; $7cee: $42
    ld a, [hl]                                    ; $7cef: $7e
    ld [bc], a                                    ; $7cf0: $02
    inc a                                         ; $7cf1: $3c
    ld a, [bc]                                    ; $7cf2: $0a
    nop                                           ; $7cf3: $00
    rst $38                                       ; $7cf4: $ff
    add hl, bc                                    ; $7cf5: $09
    ld [bc], a                                    ; $7cf6: $02
    push af                                       ; $7cf7: $f5
    inc c                                         ; $7cf8: $0c
    push af                                       ; $7cf9: $f5
    dec bc                                        ; $7cfa: $0b
    rst $30                                       ; $7cfb: $f7
    ld a, [bc]                                    ; $7cfc: $0a
    inc b                                         ; $7cfd: $04
    ld c, $03                                     ; $7cfe: $0e $03
    ld h, b                                       ; $7d00: $60
    add l                                         ; $7d01: $85
    or b                                          ; $7d02: $b0
    ld h, b                                       ; $7d03: $60
    sub b                                         ; $7d04: $90
    nop                                           ; $7d05: $00
    ld h, b                                       ; $7d06: $60
    ld [de], a                                    ; $7d07: $12
    nop                                           ; $7d08: $00
    ld [bc], a                                    ; $7d09: $02
    inc bc                                        ; $7d0a: $03
    add h                                         ; $7d0b: $84
    dec b                                         ; $7d0c: $05
    rlca                                          ; $7d0d: $07
    ld a, [bc]                                    ; $7d0e: $0a
    rrca                                          ; $7d0f: $0f
    ld [bc], a                                    ; $7d10: $02
    inc c                                         ; $7d11: $0c
    adc h                                         ; $7d12: $8c
    ld [bc], a                                    ; $7d13: $02
    ld c, $09                                     ; $7d14: $0e $09
    rlca                                          ; $7d16: $07
    db $dd                                        ; $7d17: $dd
    db $e3                                        ; $7d18: $e3
    xor c                                         ; $7d19: $a9
    rst $30                                       ; $7d1a: $f7
    push de                                       ; $7d1b: $d5
    rst $38                                       ; $7d1c: $ff
    ld l, d                                       ; $7d1d: $6a
    ld a, [hl]                                    ; $7d1e: $7e
    ld [bc], a                                    ; $7d1f: $02
    inc a                                         ; $7d20: $3c
    stop                                          ; $7d21: $10 $00
    rst $38                                       ; $7d23: $ff
    add hl, bc                                    ; $7d24: $09
    ld [bc], a                                    ; $7d25: $02
    push af                                       ; $7d26: $f5
    inc c                                         ; $7d27: $0c
    push af                                       ; $7d28: $f5
    dec bc                                        ; $7d29: $0b
    push af                                       ; $7d2a: $f5
    dec b                                         ; $7d2b: $05
    push af                                       ; $7d2c: $f5
    ld [$6002], sp                                ; $7d2d: $08 $02 $60
    add [hl]                                      ; $7d30: $86
    and b                                         ; $7d31: $a0
    ret nc                                        ; $7d32: $d0

    ldh [$90], a                                  ; $7d33: $e0 $90
    nop                                           ; $7d35: $00
    ld h, b                                       ; $7d36: $60
    add hl, bc                                    ; $7d37: $09
    nop                                           ; $7d38: $00
    add e                                         ; $7d39: $83
    ld bc, $0100                                  ; $7d3a: $01 $00 $01
    dec de                                        ; $7d3d: $1b
    nop                                           ; $7d3e: $00
    add l                                         ; $7d3f: $85
    ld b, $07                                     ; $7d40: $06 $07
    ld bc, $0305                                  ; $7d42: $01 $05 $03
    ld [bc], a                                    ; $7d45: $02
    ld b, $0a                                     ; $7d46: $06 $0a
    nop                                           ; $7d48: $00
    rst $38                                       ; $7d49: $ff
    add hl, bc                                    ; $7d4a: $09
    ld [bc], a                                    ; $7d4b: $02
    push af                                       ; $7d4c: $f5
    inc c                                         ; $7d4d: $0c
    push af                                       ; $7d4e: $f5
    dec bc                                        ; $7d4f: $0b
    push af                                       ; $7d50: $f5
    rst $38                                       ; $7d51: $ff
    push af                                       ; $7d52: $f5
    dec b                                         ; $7d53: $05
    add [hl]                                      ; $7d54: $86
    nop                                           ; $7d55: $00
    ld h, b                                       ; $7d56: $60
    ldh [$90], a                                  ; $7d57: $e0 $90
    and b                                         ; $7d59: $a0
    ret nc                                        ; $7d5a: $d0

    ld [bc], a                                    ; $7d5b: $02
    ld h, b                                       ; $7d5c: $60
    ld e, $00                                     ; $7d5d: $1e $00
    ld [bc], a                                    ; $7d5f: $02
    ld b, $86                                     ; $7d60: $06 $86
    dec b                                         ; $7d62: $05
    dec bc                                        ; $7d63: $0b
    rlca                                          ; $7d64: $07
    add hl, bc                                    ; $7d65: $09
    nop                                           ; $7d66: $00
    ld b, $12                                     ; $7d67: $06 $12
    nop                                           ; $7d69: $00
    rst $38                                       ; $7d6a: $ff
    add hl, bc                                    ; $7d6b: $09
    ld [bc], a                                    ; $7d6c: $02
    push af                                       ; $7d6d: $f5
    inc c                                         ; $7d6e: $0c
    push af                                       ; $7d6f: $f5
    dec bc                                        ; $7d70: $0b
    or $fa                                        ; $7d71: $f6 $fa
    or $00                                        ; $7d73: $f6 $00
    inc bc                                        ; $7d75: $03
    nop                                           ; $7d76: $00
    add l                                         ; $7d77: $85
    ld h, b                                       ; $7d78: $60
    ld [hl], b                                    ; $7d79: $70
    sub b                                         ; $7d7a: $90
    ld d, b                                       ; $7d7b: $50
    or b                                          ; $7d7c: $b0
    ld [bc], a                                    ; $7d7d: $02
    ld h, b                                       ; $7d7e: $60
    ld d, $00                                     ; $7d7f: $16 $00
    ld [bc], a                                    ; $7d81: $02
    ld b, $86                                     ; $7d82: $06 $86
    ld a, [bc]                                    ; $7d84: $0a
    dec c                                         ; $7d85: $0d
    ld c, $09                                     ; $7d86: $0e $09
    nop                                           ; $7d88: $00
    ld b, $18                                     ; $7d89: $06 $18
    nop                                           ; $7d8b: $00
    rst $38                                       ; $7d8c: $ff
    add hl, bc                                    ; $7d8d: $09
    ld [bc], a                                    ; $7d8e: $02
    push af                                       ; $7d8f: $f5
    inc c                                         ; $7d90: $0c
    push af                                       ; $7d91: $f5
    dec bc                                        ; $7d92: $0b
    or $f6                                        ; $7d93: $f6 $f6
    or $fa                                        ; $7d95: $f6 $fa
    ld a, [bc]                                    ; $7d97: $0a
    nop                                           ; $7d98: $00
    ld [bc], a                                    ; $7d99: $02
    ld h, b                                       ; $7d9a: $60
    add [hl]                                      ; $7d9b: $86
    ld d, b                                       ; $7d9c: $50
    or b                                          ; $7d9d: $b0
    ld [hl], b                                    ; $7d9e: $70
    sub b                                         ; $7d9f: $90
    nop                                           ; $7da0: $00
    ld h, b                                       ; $7da1: $60
    rrca                                          ; $7da2: $0f
    nop                                           ; $7da3: $00
    add l                                         ; $7da4: $85
    ld b, $0e                                     ; $7da5: $06 $0e
    add hl, bc                                    ; $7da7: $09
    ld a, [bc]                                    ; $7da8: $0a
    dec c                                         ; $7da9: $0d
    ld [bc], a                                    ; $7daa: $02
    ld b, $18                                     ; $7dab: $06 $18
    nop                                           ; $7dad: $00
    rst $38                                       ; $7dae: $ff
    add hl, bc                                    ; $7daf: $09
    ld [bc], a                                    ; $7db0: $02
    push af                                       ; $7db1: $f5
    inc c                                         ; $7db2: $0c
    push af                                       ; $7db3: $f5
    dec bc                                        ; $7db4: $0b
    ld hl, sp-$0c                                 ; $7db5: $f8 $f4
    ld hl, sp-$0b                                 ; $7db7: $f8 $f5
    add c                                         ; $7db9: $81
    nop                                           ; $7dba: $00
    ld [bc], a                                    ; $7dbb: $02
    inc bc                                        ; $7dbc: $03
    add e                                         ; $7dbd: $83
    inc b                                         ; $7dbe: $04
    ld [bc], a                                    ; $7dbf: $02
    dec b                                         ; $7dc0: $05
    ld [bc], a                                    ; $7dc1: $02
    inc bc                                        ; $7dc2: $03
    ld a, [bc]                                    ; $7dc3: $0a
    nop                                           ; $7dc4: $00
    ld [bc], a                                    ; $7dc5: $02
    ld h, b                                       ; $7dc6: $60
    add [hl]                                      ; $7dc7: $86
    and b                                         ; $7dc8: $a0
    ret nc                                        ; $7dc9: $d0

    ldh [$90], a                                  ; $7dca: $e0 $90
    nop                                           ; $7dcc: $00
    ld h, b                                       ; $7dcd: $60
    ld [$0400], sp                                ; $7dce: $08 $00 $04
    ld bc, $001a                                  ; $7dd1: $01 $1a $00
    rst $38                                       ; $7dd4: $ff
    rlca                                          ; $7dd5: $07
    ld bc, $0cf5                                  ; $7dd6: $01 $f5 $0c
    push af                                       ; $7dd9: $f5
    dec bc                                        ; $7dda: $0b
    db $fc                                        ; $7ddb: $fc
    pop af                                        ; $7ddc: $f1
    ld [bc], a                                    ; $7ddd: $02
    ld b, $86                                     ; $7dde: $06 $86
    ld a, [bc]                                    ; $7de0: $0a
    dec c                                         ; $7de1: $0d
    ld c, $09                                     ; $7de2: $0e $09
    nop                                           ; $7de4: $00
    ld b, $0f                                     ; $7de5: $06 $0f
    nop                                           ; $7de7: $00
    add l                                         ; $7de8: $85
    ld b, $0e                                     ; $7de9: $06 $0e
    add hl, bc                                    ; $7deb: $09
    ld a, [bc]                                    ; $7dec: $0a
    dec c                                         ; $7ded: $0d
    ld [bc], a                                    ; $7dee: $02
    ld b, $02                                     ; $7def: $06 $02
    nop                                           ; $7df1: $00
    rst $38                                       ; $7df2: $ff
    add hl, bc                                    ; $7df3: $09
    ld [bc], a                                    ; $7df4: $02
    push af                                       ; $7df5: $f5
    inc c                                         ; $7df6: $0c
    push af                                       ; $7df7: $f5
    dec bc                                        ; $7df8: $0b
    ld [bc], a                                    ; $7df9: $02
    di                                            ; $7dfa: $f3
    ld [bc], a                                    ; $7dfb: $02
    push af                                       ; $7dfc: $f5
    ld [bc], a                                    ; $7dfd: $02
    ld h, b                                       ; $7dfe: $60
    add [hl]                                      ; $7dff: $86
    and b                                         ; $7e00: $a0
    ret nc                                        ; $7e01: $d0

    ldh [$90], a                                  ; $7e02: $e0 $90
    nop                                           ; $7e04: $00
    ld h, b                                       ; $7e05: $60
    dec bc                                        ; $7e06: $0b
    nop                                           ; $7e07: $00
    ld [bc], a                                    ; $7e08: $02
    ld bc, $0283                                  ; $7e09: $01 $83 $02
    ld bc, $0202                                  ; $7e0c: $01 $02 $02
    ld bc, $0019                                  ; $7e0f: $01 $19 $00
    add d                                         ; $7e12: $82
    ld [bc], a                                    ; $7e13: $02
    inc bc                                        ; $7e14: $03
    ld [bc], a                                    ; $7e15: $02
    ld bc, $0381                                  ; $7e16: $01 $81 $03
    ld [bc], a                                    ; $7e19: $02
    ld [bc], a                                    ; $7e1a: $02
    ld b, $00                                     ; $7e1b: $06 $00
    rst $38                                       ; $7e1d: $ff
    add hl, bc                                    ; $7e1e: $09

jr_0f7_7e1f:
    ld [bc], a                                    ; $7e1f: $02
    push af                                       ; $7e20: $f5
    inc c                                         ; $7e21: $0c
    push af                                       ; $7e22: $f5
    dec bc                                        ; $7e23: $0b
    ld [$08f4], sp                                ; $7e24: $08 $f4 $08
    ei                                            ; $7e27: $fb
    add [hl]                                      ; $7e28: $86
    nop                                           ; $7e29: $00
    ld h, b                                       ; $7e2a: $60
    ldh [$90], a                                  ; $7e2b: $e0 $90
    and b                                         ; $7e2d: $a0
    ret nc                                        ; $7e2e: $d0

    ld [bc], a                                    ; $7e2f: $02
    ld h, b                                       ; $7e30: $60
    ld [hl+], a                                   ; $7e31: $22
    nop                                           ; $7e32: $00
    ld [bc], a                                    ; $7e33: $02
    ld b, $86                                     ; $7e34: $06 $86
    dec b                                         ; $7e36: $05
    dec bc                                        ; $7e37: $0b
    rlca                                          ; $7e38: $07
    add hl, bc                                    ; $7e39: $09
    nop                                           ; $7e3a: $00
    ld b, $0e                                     ; $7e3b: $06 $0e
    nop                                           ; $7e3d: $00
    rst $38                                       ; $7e3e: $ff
    add hl, bc                                    ; $7e3f: $09
    ld [bc], a                                    ; $7e40: $02
    push af                                       ; $7e41: $f5
    inc c                                         ; $7e42: $0c
    push af                                       ; $7e43: $f5
    dec bc                                        ; $7e44: $0b
    ld a, [bc]                                    ; $7e45: $0a
    ld hl, sp+$0a                                 ; $7e46: $f8 $0a
    nop                                           ; $7e48: $00
    dec b                                         ; $7e49: $05
    nop                                           ; $7e4a: $00
    add l                                         ; $7e4b: $85
    ld h, b                                       ; $7e4c: $60
    ld [hl], b                                    ; $7e4d: $70
    sub b                                         ; $7e4e: $90
    ld d, b                                       ; $7e4f: $50
    or b                                          ; $7e50: $b0
    ld [bc], a                                    ; $7e51: $02
    ld h, b                                       ; $7e52: $60
    inc d                                         ; $7e53: $14
    nop                                           ; $7e54: $00
    ld [bc], a                                    ; $7e55: $02
    ld b, $86                                     ; $7e56: $06 $86
    ld a, [bc]                                    ; $7e58: $0a
    dec c                                         ; $7e59: $0d
    ld c, $09                                     ; $7e5a: $0e $09
    nop                                           ; $7e5c: $00
    ld b, $18                                     ; $7e5d: $06 $18
    nop                                           ; $7e5f: $00
    rst $38                                       ; $7e60: $ff
    add hl, bc                                    ; $7e61: $09
    ld [bc], a                                    ; $7e62: $02
    push af                                       ; $7e63: $f5
    inc c                                         ; $7e64: $0c
    push af                                       ; $7e65: $f5
    dec bc                                        ; $7e66: $0b
    dec b                                         ; $7e67: $05
    cp $05                                        ; $7e68: $fe $05
    inc bc                                        ; $7e6a: $03
    ld [de], a                                    ; $7e6b: $12
    nop                                           ; $7e6c: $00
    ld [bc], a                                    ; $7e6d: $02
    ld h, b                                       ; $7e6e: $60
    add [hl]                                      ; $7e6f: $86
    ld d, b                                       ; $7e70: $50
    or b                                          ; $7e71: $b0
    ld [hl], b                                    ; $7e72: $70
    sub b                                         ; $7e73: $90
    nop                                           ; $7e74: $00
    ld h, b                                       ; $7e75: $60
    rlca                                          ; $7e76: $07
    nop                                           ; $7e77: $00
    add l                                         ; $7e78: $85
    ld b, $0e                                     ; $7e79: $06 $0e
    add hl, bc                                    ; $7e7b: $09
    ld a, [bc]                                    ; $7e7c: $0a
    dec c                                         ; $7e7d: $0d
    ld [bc], a                                    ; $7e7e: $02
    ld b, $18                                     ; $7e7f: $06 $18
    nop                                           ; $7e81: $00
    rst $38                                       ; $7e82: $ff
    rlca                                          ; $7e83: $07
    ld bc, $0cf5                                  ; $7e84: $01 $f5 $0c
    push af                                       ; $7e87: $f5
    dec bc                                        ; $7e88: $0b
    rst $38                                       ; $7e89: $ff
    ld [bc], a                                    ; $7e8a: $02
    add [hl]                                      ; $7e8b: $86
    nop                                           ; $7e8c: $00
    ld b, $07                                     ; $7e8d: $06 $07
    add hl, bc                                    ; $7e8f: $09
    dec b                                         ; $7e90: $05
    dec bc                                        ; $7e91: $0b
    ld [bc], a                                    ; $7e92: $02
    ld b, $10                                     ; $7e93: $06 $10
    nop                                           ; $7e95: $00
    ld [bc], a                                    ; $7e96: $02
    jr nc, jr_0f7_7e1f                            ; $7e97: $30 $86

    ld d, b                                       ; $7e99: $50
    ld l, b                                       ; $7e9a: $68
    ld [hl], b                                    ; $7e9b: $70
    ld c, b                                       ; $7e9c: $48
    nop                                           ; $7e9d: $00
    jr nc, @+$01                                  ; $7e9e: $30 $ff

    add hl, bc                                    ; $7ea0: $09
    ld [bc], a                                    ; $7ea1: $02
    push af                                       ; $7ea2: $f5
    inc c                                         ; $7ea3: $0c
    push af                                       ; $7ea4: $f5
    dec bc                                        ; $7ea5: $0b
    ei                                            ; $7ea6: $fb
    ld bc, $02fb                                  ; $7ea7: $01 $fb $02
    ld [bc], a                                    ; $7eaa: $02
    ld h, b                                       ; $7eab: $60
    add [hl]                                      ; $7eac: $86
    ld d, b                                       ; $7ead: $50
    or b                                          ; $7eae: $b0
    ld [hl], b                                    ; $7eaf: $70
    sub b                                         ; $7eb0: $90
    nop                                           ; $7eb1: $00
    ld h, b                                       ; $7eb2: $60
    rrca                                          ; $7eb3: $0f
    nop                                           ; $7eb4: $00
    add l                                         ; $7eb5: $85
    inc bc                                        ; $7eb6: $03
    rlca                                          ; $7eb7: $07
    inc b                                         ; $7eb8: $04
    dec b                                         ; $7eb9: $05
    ld b, $02                                     ; $7eba: $06 $02
    inc bc                                        ; $7ebc: $03
    dec de                                        ; $7ebd: $1b
    nop                                           ; $7ebe: $00
    add e                                         ; $7ebf: $83
    ld bc, $0100                                  ; $7ec0: $01 $00 $01
    inc b                                         ; $7ec3: $04
    nop                                           ; $7ec4: $00
    rst $38                                       ; $7ec5: $ff
    add hl, bc                                    ; $7ec6: $09
    ld [bc], a                                    ; $7ec7: $02
    push af                                       ; $7ec8: $f5
    inc c                                         ; $7ec9: $0c
    push af                                       ; $7eca: $f5
    dec bc                                        ; $7ecb: $0b
    rst $38                                       ; $7ecc: $ff
    nop                                           ; $7ecd: $00
    rst $38                                       ; $7ece: $ff
    ld bc, $8088                                  ; $7ecf: $01 $88 $80
    ret nz                                        ; $7ed2: $c0

    add b                                         ; $7ed3: $80
    jp $0403                                      ; $7ed4: $c3 $03 $04


    ld [bc], a                                    ; $7ed7: $02
    dec b                                         ; $7ed8: $05
    ld [bc], a                                    ; $7ed9: $02
    inc bc                                        ; $7eda: $03
    ld a, [de]                                    ; $7edb: $1a
    nop                                           ; $7edc: $00
    inc b                                         ; $7edd: $04
    ld bc, $0018                                  ; $7ede: $01 $18 $00
    rst $38                                       ; $7ee1: $ff
    rlca                                          ; $7ee2: $07
    ld bc, $0cf5                                  ; $7ee3: $01 $f5 $0c
    push af                                       ; $7ee6: $f5
    dec bc                                        ; $7ee7: $0b
    cp $fb                                        ; $7ee8: $fe $fb
    add [hl]                                      ; $7eea: $86
    ld [bc], a                                    ; $7eeb: $02
    inc bc                                        ; $7eec: $03
    ld b, $07                                     ; $7eed: $06 $07
    inc b                                         ; $7eef: $04

jr_0f7_7ef0:
    ld b, $1a                                     ; $7ef0: $06 $1a
    nop                                           ; $7ef2: $00
    rst $38                                       ; $7ef3: $ff
    rlca                                          ; $7ef4: $07
    ld bc, $0cf5                                  ; $7ef5: $01 $f5 $0c
    push af                                       ; $7ef8: $f5
    dec bc                                        ; $7ef9: $0b
    cp $fc                                        ; $7efa: $fe $fc
    ld [bc], a                                    ; $7efc: $02
    ld [de], a                                    ; $7efd: $12
    adc b                                         ; $7efe: $88
    scf                                           ; $7eff: $37
    ccf                                           ; $7f00: $3f
    dec c                                         ; $7f01: $0d
    inc de                                        ; $7f02: $13
    dec l                                         ; $7f03: $2d
    inc sp                                        ; $7f04: $33
    inc c                                         ; $7f05: $0c
    ld e, $02                                     ; $7f06: $1e $02
    ld [$0014], sp                                ; $7f08: $08 $14 $00
    rst $38                                       ; $7f0b: $ff
    rlca                                          ; $7f0c: $07
    ld bc, $0cf5                                  ; $7f0d: $01 $f5 $0c
    push af                                       ; $7f10: $f5
    dec bc                                        ; $7f11: $0b
    db $fd                                        ; $7f12: $fd
    db $fd                                        ; $7f13: $fd
    sub b                                         ; $7f14: $90
    ld [de], a                                    ; $7f15: $12
    sub e                                         ; $7f16: $93
    ld e, e                                       ; $7f17: $5b
    dec a                                         ; $7f18: $3d
    inc h                                         ; $7f19: $24
    ld e, d                                       ; $7f1a: $5a
    jp c, Jump_0f7_5be6                           ; $7f1b: $da $e6 $5b

    ld h, a                                       ; $7f1e: $67
    and h                                         ; $7f1f: $a4
    jp c, $ad4b                                   ; $7f20: $da $4b $ad

    xor b                                         ; $7f23: $a8
    xor c                                         ; $7f24: $a9
    stop                                          ; $7f25: $10 $00
    rst $38                                       ; $7f27: $ff
    add hl, bc                                    ; $7f28: $09
    ld [bc], a                                    ; $7f29: $02
    push af                                       ; $7f2a: $f5
    inc c                                         ; $7f2b: $0c
    push af                                       ; $7f2c: $f5
    dec bc                                        ; $7f2d: $0b
    ld sp, hl                                     ; $7f2e: $f9
    ld a, [$01f9]                                 ; $7f2f: $fa $f9 $01
    ld [bc], a                                    ; $7f32: $02
    ld [bc], a                                    ; $7f33: $02
    adc d                                         ; $7f34: $8a
    nop                                           ; $7f35: $00
    ret nz                                        ; $7f36: $c0

    ld c, b                                       ; $7f37: $48
    adc b                                         ; $7f38: $88
    add hl, bc                                    ; $7f39: $09
    add hl, de                                    ; $7f3a: $19
    rla                                           ; $7f3b: $17
    cpl                                           ; $7f3c: $2f
    ld l, b                                       ; $7f3d: $68
    ld [hl], b                                    ; $7f3e: $70
    ld [bc], a                                    ; $7f3f: $02
    ld d, c                                       ; $7f40: $51
    ld [bc], a                                    ; $7f41: $02
    dec h                                         ; $7f42: $25
    ld [bc], a                                    ; $7f43: $02
    and b                                         ; $7f44: $a0
    adc d                                         ; $7f45: $8a
    ld l, d                                       ; $7f46: $6a
    ld [hl], d                                    ; $7f47: $72
    db $10                                        ; $7f48: $10
    jr z, jr_0f7_7f58                             ; $7f49: $28 $0d

    dec e                                         ; $7f4b: $1d
    ld c, b                                       ; $7f4c: $48
    adc b                                         ; $7f4d: $88
    ld [bc], a                                    ; $7f4e: $02
    jp nz, $0402                                  ; $7f4f: $c2 $02 $04

    inc b                                         ; $7f52: $04
    nop                                           ; $7f53: $00
    adc d                                         ; $7f54: $8a
    ld b, b                                       ; $7f55: $40
    ld c, h                                       ; $7f56: $4c
    ld c, b                                       ; $7f57: $48

jr_0f7_7f58:
    ld b, h                                       ; $7f58: $44
    ld b, b                                       ; $7f59: $40
    ld h, b                                       ; $7f5a: $60
    jr nz, jr_0f7_7fad                            ; $7f5b: $20 $50

    ld e, c                                       ; $7f5d: $59
    add hl, sp                                    ; $7f5e: $39
    ld [bc], a                                    ; $7f5f: $02
    inc d                                         ; $7f60: $14
    ld [bc], a                                    ; $7f61: $02
    inc b                                         ; $7f62: $04
    ld [bc], a                                    ; $7f63: $02
    jr jr_0f7_7ef0                                ; $7f64: $18 $8a

    ld e, b                                       ; $7f66: $58
    jr c, jr_0f7_7f8d                             ; $7f67: $38 $24

    ld d, h                                       ; $7f69: $54
    ld b, b                                       ; $7f6a: $40
    ld h, b                                       ; $7f6b: $60
    ld c, b                                       ; $7f6c: $48
    ld b, h                                       ; $7f6d: $44
    nop                                           ; $7f6e: $00
    inc c                                         ; $7f6f: $0c
    inc b                                         ; $7f70: $04
    nop                                           ; $7f71: $00
    rst $38                                       ; $7f72: $ff
    dec bc                                        ; $7f73: $0b
    inc bc                                        ; $7f74: $03
    ld sp, hl                                     ; $7f75: $f9
    rlca                                          ; $7f76: $07
    ld b, $10                                     ; $7f77: $06 $10
    ld c, $f7                                     ; $7f79: $0e $f7
    ld c, $fe                                     ; $7f7b: $0e $fe
    ld c, $02                                     ; $7f7d: $0e $02
    add h                                         ; $7f7f: $84
    ld [hl+], a                                   ; $7f80: $22
    nop                                           ; $7f81: $00
    add c                                         ; $7f82: $81
    rst $30                                       ; $7f83: $f7
    ld [bc], a                                    ; $7f84: $02
    ld d, [hl]                                    ; $7f85: $56
    ld a, [de]                                    ; $7f86: $1a
    nop                                           ; $7f87: $00
    add h                                         ; $7f88: $84
    ld hl, $4200                                  ; $7f89: $21 $00 $42
    ld a, e                                       ; $7f8c: $7b

jr_0f7_7f8d:
    ld [bc], a                                    ; $7f8d: $02
    add hl, hl                                    ; $7f8e: $29
    ld a, [de]                                    ; $7f8f: $1a
    nop                                           ; $7f90: $00
    add h                                         ; $7f91: $84
    ld [bc], a                                    ; $7f92: $02
    nop                                           ; $7f93: $00
    ld bc, $0207                                  ; $7f94: $01 $07 $02
    ld b, $1a                                     ; $7f97: $06 $1a
    nop                                           ; $7f99: $00
    rst $38                                       ; $7f9a: $ff
    dec bc                                        ; $7f9b: $0b
    inc bc                                        ; $7f9c: $03
    ld sp, hl                                     ; $7f9d: $f9
    rlca                                          ; $7f9e: $07
    ld b, $10                                     ; $7f9f: $06 $10
    ld [$08f7], sp                                ; $7fa1: $08 $f7 $08
    rst $38                                       ; $7fa4: $ff
    ld [$0202], sp                                ; $7fa5: $08 $02 $02
    nop                                           ; $7fa8: $00
    adc h                                         ; $7fa9: $8c
    inc b                                         ; $7faa: $04
    nop                                           ; $7fab: $00
    ld e, h                                       ; $7fac: $5c

jr_0f7_7fad:
    db $10                                        ; $7fad: $10
    jp hl                                         ; $7fae: $e9


    inc a                                         ; $7faf: $3c
    ld e, $fb                                     ; $7fb0: $1e $fb
    jr z, @+$81                                   ; $7fb2: $28 $7f

    ld d, d                                       ; $7fb4: $52
    ld d, a                                       ; $7fb5: $57
    ld [bc], a                                    ; $7fb6: $02
    dec b                                         ; $7fb7: $05
    stop                                          ; $7fb8: $10 $00
    adc [hl]                                      ; $7fba: $8e
    ld b, b                                       ; $7fbb: $40
    nop                                           ; $7fbc: $00
    ld b, h                                       ; $7fbd: $44
    nop                                           ; $7fbe: $00
    push hl                                       ; $7fbf: $e5
    ld bc, $e74a                                  ; $7fc0: $01 $4a $e7
    or a                                          ; $7fc3: $b7
    db $eb                                        ; $7fc4: $eb
    jp z, Jump_000_21ff                           ; $7fc5: $ca $ff $21

    ld [hl], l                                    ; $7fc8: $75
    ld [bc], a                                    ; $7fc9: $02
    ld d, h                                       ; $7fca: $54
    inc d                                         ; $7fcb: $14
    nop                                           ; $7fcc: $00
    adc b                                         ; $7fcd: $88
    ld [bc], a                                    ; $7fce: $02
    nop                                           ; $7fcf: $00
    rlca                                          ; $7fd0: $07
    inc b                                         ; $7fd1: $04
    ld bc, $0407                                  ; $7fd2: $01 $07 $04
    ld b, $02                                     ; $7fd5: $06 $02
    ld [bc], a                                    ; $7fd7: $02
    ld [de], a                                    ; $7fd8: $12
    nop                                           ; $7fd9: $00
    rst $38                                       ; $7fda: $ff
    rlca                                          ; $7fdb: $07
    ld bc, $0df8                                  ; $7fdc: $01 $f8 $0d
    di                                            ; $7fdf: $f3
    ld c, $02                                     ; $7fe0: $0e $02
    ld a, [$0285]                                 ; $7fe2: $fa $85 $02
    nop                                           ; $7fe5: $00
    rlca                                          ; $7fe6: $07
    ld [bc], a                                    ; $7fe7: $02
    ld c, $02                                     ; $7fe8: $0e $02
    inc b                                         ; $7fea: $04
    add hl, de                                    ; $7feb: $19
    nop                                           ; $7fec: $00
    rst $38                                       ; $7fed: $ff
    rlca                                          ; $7fee: $07
    ld bc, $0df1                                  ; $7fef: $01 $f1 $0d
    ld hl, sp+$08                                 ; $7ff2: $f8 $08
    ld b, $f6                                     ; $7ff4: $06 $f6
    add [hl]                                      ; $7ff6: $86
    nop                                           ; $7ff7: $00
    ld b, $02                                     ; $7ff8: $06 $02
    dec b                                         ; $7ffa: $05
    nop                                           ; $7ffb: $00
    inc bc                                        ; $7ffc: $03
    ld a, [de]                                    ; $7ffd: $1a
    nop                                           ; $7ffe: $00
    rst $38                                       ; $7fff: $ff
