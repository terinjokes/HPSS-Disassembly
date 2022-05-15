; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0da", ROMX[$4000], BANK[$da]

    jp c, Jump_000_040d                           ; $4000: $da $0d $04

    ld sp, hl                                     ; $4003: $f9
    ld [$01f2], sp                                ; $4004: $08 $f2 $01
    xor $fa                                       ; $4007: $ee $fa
    xor $01                                       ; $4009: $ee $01
    cp $fb                                        ; $400b: $fe $fb
    cp $fe                                        ; $400d: $fe $fe
    ld [bc], a                                    ; $400f: $02
    rrca                                          ; $4010: $0f
    add c                                         ; $4011: $81
    ld [hl], h                                    ; $4012: $74
    dec b                                         ; $4013: $05
    ld a, a                                       ; $4014: $7f
    adc [hl]                                      ; $4015: $8e
    ccf                                           ; $4016: $3f
    dec [hl]                                      ; $4017: $35
    ccf                                           ; $4018: $3f
    dec a                                         ; $4019: $3d
    ld a, a                                       ; $401a: $7f
    ld [hl], d                                    ; $401b: $72
    ld a, a                                       ; $401c: $7f
    ld d, d                                       ; $401d: $52

jr_0da_401e:
    ccf                                           ; $401e: $3f
    dec a                                         ; $401f: $3d
    ccf                                           ; $4020: $3f
    inc sp                                        ; $4021: $33
    ld e, a                                       ; $4022: $5f
    ld a, b                                       ; $4023: $78
    ld [bc], a                                    ; $4024: $02
    ld a, d                                       ; $4025: $7a
    adc b                                         ; $4026: $88
    sbc l                                         ; $4027: $9d
    db $fd                                        ; $4028: $fd

jr_0da_4029:
    cp d                                          ; $4029: $ba
    rst $28                                       ; $402a: $ef
    cp l                                          ; $402b: $bd
    rst $00                                       ; $402c: $c7
    ld a, l                                       ; $402d: $7d
    ld l, a                                       ; $402e: $6f
    ld [bc], a                                    ; $402f: $02
    ld d, b                                       ; $4030: $50
    ld [bc], a                                    ; $4031: $02
    ld a, b                                       ; $4032: $78
    add c                                         ; $4033: $81
    ld l, b                                       ; $4034: $68
    inc bc                                        ; $4035: $03
    ld a, b                                       ; $4036: $78
    add d                                         ; $4037: $82

jr_0da_4038:
    ld [hl], b                                    ; $4038: $70
    jr nc, jr_0da_403d                            ; $4039: $30 $02

    ld [hl], b                                    ; $403b: $70
    adc [hl]                                      ; $403c: $8e

jr_0da_403d:
    ld a, h                                       ; $403d: $7c
    inc a                                         ; $403e: $3c
    ld a, [hl]                                    ; $403f: $7e
    ld a, [hl+]                                   ; $4040: $2a

jr_0da_4041:
    ld a, a                                       ; $4041: $7f
    ld a, l                                       ; $4042: $7d
    ld [hl], a                                    ; $4043: $77
    add hl, sp                                    ; $4044: $39
    ld h, a                                       ; $4045: $67
    ld a, l                                       ; $4046: $7d
    ld h, d                                       ; $4047: $62
    ld a, [hl]                                    ; $4048: $7e
    ld [hl], d                                    ; $4049: $72
    ld a, [hl]                                    ; $404a: $7e
    ld [bc], a                                    ; $404b: $02
    ld a, h                                       ; $404c: $7c
    inc b                                         ; $404d: $04
    ld [hl], b                                    ; $404e: $70
    add [hl]                                      ; $404f: $86
    push af                                       ; $4050: $f5
    rst $38                                       ; $4051: $ff
    push af                                       ; $4052: $f5
    rst $38                                       ; $4053: $ff
    db $e4                                        ; $4054: $e4
    rst $38                                       ; $4055: $ff
    ld [bc], a                                    ; $4056: $02
    ld a, e                                       ; $4057: $7b
    jr jr_0da_405a                                ; $4058: $18 $00

jr_0da_405a:
    add e                                         ; $405a: $83
    inc bc                                        ; $405b: $03
    rlca                                          ; $405c: $07
    dec b                                         ; $405d: $05
    inc bc                                        ; $405e: $03
    rlca                                          ; $405f: $07
    ld [bc], a                                    ; $4060: $02
    ld b, $18                                     ; $4061: $06 $18
    nop                                           ; $4063: $00
    rst $38                                       ; $4064: $ff
    dec c                                         ; $4065: $0d
    inc b                                         ; $4066: $04
    ld sp, hl                                     ; $4067: $f9
    ld [$01f2], sp                                ; $4068: $08 $f2 $01
    xor $fa                                       ; $406b: $ee $fa
    xor $00                                       ; $406d: $ee $00
    cp $fb                                        ; $406f: $fe $fb
    cp $fe                                        ; $4071: $fe $fe
    ld [bc], a                                    ; $4073: $02
    rlca                                          ; $4074: $07
    add h                                         ; $4075: $84
    dec a                                         ; $4076: $3d
    ccf                                           ; $4077: $3f
    ld [hl], a                                    ; $4078: $77
    ld a, a                                       ; $4079: $7f
    ld [bc], a                                    ; $407a: $02
    ccf                                           ; $407b: $3f
    adc [hl]                                      ; $407c: $8e
    ld a, a                                       ; $407d: $7f
    ld [hl], l                                    ; $407e: $75
    ccf                                           ; $407f: $3f
    dec a                                         ; $4080: $3d
    ld a, a                                       ; $4081: $7f
    ld [hl], d                                    ; $4082: $72
    ld a, a                                       ; $4083: $7f
    ld d, d                                       ; $4084: $52
    ccf                                           ; $4085: $3f
    dec a                                         ; $4086: $3d
    ld a, a                                       ; $4087: $7f
    ld [hl], e                                    ; $4088: $73
    ld e, a                                       ; $4089: $5f
    ld a, b                                       ; $408a: $78
    ld [bc], a                                    ; $408b: $02
    ld a, [$bd88]                                 ; $408c: $fa $88 $bd
    call $8ffa                                    ; $408f: $cd $fa $8f
    cp l                                          ; $4092: $bd
    rst $18                                       ; $4093: $df
    db $fd                                        ; $4094: $fd
    rst $38                                       ; $4095: $ff
    ld [bc], a                                    ; $4096: $02
    jr z, jr_0da_409b                             ; $4097: $28 $02

    jr c, jr_0da_401e                             ; $4099: $38 $83

jr_0da_409b:
    inc [hl]                                      ; $409b: $34
    inc a                                         ; $409c: $3c
    inc [hl]                                      ; $409d: $34
    ld [bc], a                                    ; $409e: $02
    inc a                                         ; $409f: $3c
    add c                                         ; $40a0: $81
    inc e                                         ; $40a1: $1c
    ld [bc], a                                    ; $40a2: $02
    jr c, jr_0da_4029                             ; $40a3: $38 $84

    inc a                                         ; $40a5: $3c
    inc e                                         ; $40a6: $1c
    inc a                                         ; $40a7: $3c
    inc d                                         ; $40a8: $14
    ld [bc], a                                    ; $40a9: $02
    jr c, jr_0da_4038                             ; $40aa: $38 $8c

    inc a                                         ; $40ac: $3c
    inc e                                         ; $40ad: $1c
    ld [hl], $3e                                  ; $40ae: $36 $3e
    ld a, [hl-]                                   ; $40b0: $3a
    ld a, $39                                     ; $40b1: $3e $39
    scf                                           ; $40b3: $37
    ld a, $22                                     ; $40b4: $3e $22
    ld a, $36                                     ; $40b6: $3e $36
    ld [bc], a                                    ; $40b8: $02
    jr c, jr_0da_4041                             ; $40b9: $38 $86

    push af                                       ; $40bb: $f5
    rst $38                                       ; $40bc: $ff
    push af                                       ; $40bd: $f5
    rst $38                                       ; $40be: $ff
    db $e4                                        ; $40bf: $e4
    rst $38                                       ; $40c0: $ff
    ld [bc], a                                    ; $40c1: $02
    ld a, e                                       ; $40c2: $7b
    jr jr_0da_40c5                                ; $40c3: $18 $00

jr_0da_40c5:
    add e                                         ; $40c5: $83
    inc bc                                        ; $40c6: $03
    rlca                                          ; $40c7: $07
    dec b                                         ; $40c8: $05
    inc bc                                        ; $40c9: $03
    rlca                                          ; $40ca: $07
    ld [bc], a                                    ; $40cb: $02
    ld b, $18                                     ; $40cc: $06 $18
    nop                                           ; $40ce: $00
    rst $38                                       ; $40cf: $ff
    dec c                                         ; $40d0: $0d
    inc b                                         ; $40d1: $04
    ld sp, hl                                     ; $40d2: $f9
    ld [$01f2], sp                                ; $40d3: $08 $f2 $01
    db $ed                                        ; $40d6: $ed
    ld sp, hl                                     ; $40d7: $f9
    db $ed                                        ; $40d8: $ed
    rst $38                                       ; $40d9: $ff
    db $fd                                        ; $40da: $fd
    ei                                            ; $40db: $fb
    db $fd                                        ; $40dc: $fd
    rst $38                                       ; $40dd: $ff
    ld [bc], a                                    ; $40de: $02
    inc bc                                        ; $40df: $03
    add h                                         ; $40e0: $84
    ld e, $1f                                     ; $40e1: $1e $1f
    dec sp                                        ; $40e3: $3b
    ccf                                           ; $40e4: $3f
    ld [bc], a                                    ; $40e5: $02
    rra                                           ; $40e6: $1f
    sbc b                                         ; $40e7: $98
    ccf                                           ; $40e8: $3f
    ld a, [hl-]                                   ; $40e9: $3a
    rra                                           ; $40ea: $1f
    ld e, $1f                                     ; $40eb: $1e $1f
    add hl, de                                    ; $40ed: $19
    ccf                                           ; $40ee: $3f
    add hl, hl                                    ; $40ef: $29
    ccf                                           ; $40f0: $3f
    ld a, $7f                                     ; $40f1: $3e $7f
    ld a, c                                       ; $40f3: $79
    rst $38                                       ; $40f4: $ff
    sbc h                                         ; $40f5: $9c
    ei                                            ; $40f6: $fb
    sbc e                                         ; $40f7: $9b
    call $4ebd                                    ; $40f8: $cd $bd $4e
    ld a, [hl]                                    ; $40fb: $7e
    ld e, l                                       ; $40fc: $5d
    ld a, a                                       ; $40fd: $7f
    ld a, [hl]                                    ; $40fe: $7e
    ld a, a                                       ; $40ff: $7f
    ld [bc], a                                    ; $4100: $02
    inc [hl]                                      ; $4101: $34
    ld [bc], a                                    ; $4102: $02
    inc a                                         ; $4103: $3c
    add e                                         ; $4104: $83
    ld a, [hl-]                                   ; $4105: $3a
    ld a, $3a                                     ; $4106: $3e $3a
    ld [bc], a                                    ; $4108: $02
    ld a, $81                                     ; $4109: $3e $81
    ld l, $03                                     ; $410b: $2e $03
    inc a                                         ; $410d: $3c
    add e                                         ; $410e: $83
    inc c                                         ; $410f: $0c
    ld a, $0a                                     ; $4110: $3e $0a
    ld [bc], a                                    ; $4112: $02
    ld a, $8b                                     ; $4113: $3e $8b
    jr c, jr_0da_413f                             ; $4115: $38 $28

    inc a                                         ; $4117: $3c
    inc e                                         ; $4118: $1c
    ld a, [hl+]                                   ; $4119: $2a
    ld l, $1a                                     ; $411a: $2e $1a
    ld e, $3d                                     ; $411c: $1e $3d
    ccf                                           ; $411e: $3f
    dec e                                         ; $411f: $1d
    ld [bc], a                                    ; $4120: $02
    ccf                                           ; $4121: $3f
    adc c                                         ; $4122: $89
    add hl, sp                                    ; $4123: $39
    ld a, e                                       ; $4124: $7b
    ld a, a                                       ; $4125: $7f
    push af                                       ; $4126: $f5
    rst $38                                       ; $4127: $ff
    push af                                       ; $4128: $f5
    rst $38                                       ; $4129: $ff
    db $e4                                        ; $412a: $e4
    rst $38                                       ; $412b: $ff
    ld [bc], a                                    ; $412c: $02
    ld a, e                                       ; $412d: $7b
    ld d, $00                                     ; $412e: $16 $00
    add l                                         ; $4130: $85
    rrca                                          ; $4131: $0f
    add hl, bc                                    ; $4132: $09
    ld b, $0e                                     ; $4133: $06 $0e
    ld a, [bc]                                    ; $4135: $0a
    inc bc                                        ; $4136: $03
    ld c, $02                                     ; $4137: $0e $02
    inc c                                         ; $4139: $0c
    ld d, $00                                     ; $413a: $16 $00
    rst $38                                       ; $413c: $ff
    dec c                                         ; $413d: $0d
    inc b                                         ; $413e: $04

jr_0da_413f:
    ld sp, hl                                     ; $413f: $f9
    ld [$01f2], sp                                ; $4140: $08 $f2 $01
    xor $f8                                       ; $4143: $ee $f8
    xor $ff                                       ; $4145: $ee $ff
    cp $fb                                        ; $4147: $fe $fb
    cp $fe                                        ; $4149: $fe $fe
    ld [bc], a                                    ; $414b: $02
    inc bc                                        ; $414c: $03
    add c                                         ; $414d: $81
    dec e                                         ; $414e: $1d
    dec b                                         ; $414f: $05
    rra                                           ; $4150: $1f
    add d                                         ; $4151: $82
    rrca                                          ; $4152: $0f
    dec c                                         ; $4153: $0d
    ld [bc], a                                    ; $4154: $02
    rrca                                          ; $4155: $0f
    sub b                                         ; $4156: $90
    ccf                                           ; $4157: $3f
    inc a                                         ; $4158: $3c
    ld a, a                                       ; $4159: $7f
    ld d, h                                       ; $415a: $54
    rst $38                                       ; $415b: $ff
    cp a                                          ; $415c: $bf
    rst $28                                       ; $415d: $ef
    sbc h                                         ; $415e: $9c
    rst $20                                       ; $415f: $e7
    cp [hl]                                       ; $4160: $be
    ld b, [hl]                                    ; $4161: $46
    ld a, [hl]                                    ; $4162: $7e
    ld c, a                                       ; $4163: $4f
    ld a, a                                       ; $4164: $7f
    ld a, $3f                                     ; $4165: $3e $3f
    inc b                                         ; $4167: $04
    rrca                                          ; $4168: $0f
    ld [bc], a                                    ; $4169: $02
    ld [hl], h                                    ; $416a: $74
    add e                                         ; $416b: $83
    ld e, $7e                                     ; $416c: $1e $7e
    ld a, d                                       ; $416e: $7a
    inc bc                                        ; $416f: $03
    ld a, [hl]                                    ; $4170: $7e
    adc [hl]                                      ; $4171: $8e
    ld a, h                                       ; $4172: $7c
    inc l                                         ; $4173: $2c
    ld a, h                                       ; $4174: $7c
    inc a                                         ; $4175: $3c
    ld a, [hl]                                    ; $4176: $7e
    ld c, [hl]                                    ; $4177: $4e
    ld a, [hl]                                    ; $4178: $7e
    ld c, d                                       ; $4179: $4a
    ld a, h                                       ; $417a: $7c
    inc a                                         ; $417b: $3c
    ld a, h                                       ; $417c: $7c
    ld l, h                                       ; $417d: $6c
    ld a, d                                       ; $417e: $7a
    ld e, $02                                     ; $417f: $1e $02
    ld e, [hl]                                    ; $4181: $5e
    adc [hl]                                      ; $4182: $8e
    add hl, sp                                    ; $4183: $39
    ccf                                           ; $4184: $3f
    ld e, l                                       ; $4185: $5d
    ld [hl], a                                    ; $4186: $77
    dec a                                         ; $4187: $3d
    ld h, e                                       ; $4188: $63
    ld a, $76                                     ; $4189: $3e $76
    push af                                       ; $418b: $f5
    rst $38                                       ; $418c: $ff
    push af                                       ; $418d: $f5
    rst $38                                       ; $418e: $ff
    db $e4                                        ; $418f: $e4
    rst $38                                       ; $4190: $ff
    ld [bc], a                                    ; $4191: $02
    ld a, e                                       ; $4192: $7b
    jr jr_0da_4195                                ; $4193: $18 $00

jr_0da_4195:
    ld [bc], a                                    ; $4195: $02
    rlca                                          ; $4196: $07
    add c                                         ; $4197: $81
    dec b                                         ; $4198: $05
    inc bc                                        ; $4199: $03
    rlca                                          ; $419a: $07
    ld [bc], a                                    ; $419b: $02
    ld b, $18                                     ; $419c: $06 $18
    nop                                           ; $419e: $00
    rst $38                                       ; $419f: $ff
    dec c                                         ; $41a0: $0d
    inc b                                         ; $41a1: $04
    ld sp, hl                                     ; $41a2: $f9
    ld [$01f2], sp                                ; $41a3: $08 $f2 $01
    xor $f9                                       ; $41a6: $ee $f9
    xor $ff                                       ; $41a8: $ee $ff
    cp $fb                                        ; $41aa: $fe $fb
    cp $fe                                        ; $41ac: $fe $fe
    ld [bc], a                                    ; $41ae: $02
    inc bc                                        ; $41af: $03
    add h                                         ; $41b0: $84
    ld e, $1f                                     ; $41b1: $1e $1f
    dec sp                                        ; $41b3: $3b
    ccf                                           ; $41b4: $3f
    ld [bc], a                                    ; $41b5: $02
    rra                                           ; $41b6: $1f
    sbc b                                         ; $41b7: $98
    ccf                                           ; $41b8: $3f
    ld a, [hl-]                                   ; $41b9: $3a
    rra                                           ; $41ba: $1f
    ld e, $3f                                     ; $41bb: $1e $3f
    add hl, sp                                    ; $41bd: $39
    ccf                                           ; $41be: $3f
    add hl, hl                                    ; $41bf: $29
    rra                                           ; $41c0: $1f
    ld e, $3f                                     ; $41c1: $1e $3f

jr_0da_41c3:
    add hl, sp                                    ; $41c3: $39
    ld l, a                                       ; $41c4: $6f
    ld a, h                                       ; $41c5: $7c
    ld e, l                                       ; $41c6: $5d
    ld a, l                                       ; $41c7: $7d
    sbc [hl]                                      ; $41c8: $9e
    xor $7d                                       ; $41c9: $ee $7d
    ld b, a                                       ; $41cb: $47
    ld a, [hl]                                    ; $41cc: $7e

jr_0da_41cd:
    ld l, a                                       ; $41cd: $6f
    ld e, $1f                                     ; $41ce: $1e $1f
    ld [bc], a                                    ; $41d0: $02
    inc [hl]                                      ; $41d1: $34
    ld [bc], a                                    ; $41d2: $02
    inc a                                         ; $41d3: $3c
    add e                                         ; $41d4: $83
    ld a, [hl-]                                   ; $41d5: $3a
    ld a, $3a                                     ; $41d6: $3e $3a
    ld [bc], a                                    ; $41d8: $02
    ld a, $81                                     ; $41d9: $3e $81
    ld l, $02                                     ; $41db: $2e $02
    inc a                                         ; $41dd: $3c
    add h                                         ; $41de: $84
    ld a, $0e                                     ; $41df: $3e $0e
    ld a, $0a                                     ; $41e1: $3e $0a
    ld [bc], a                                    ; $41e3: $02
    inc a                                         ; $41e4: $3c
    add h                                         ; $41e5: $84
    ld a, $2e                                     ; $41e6: $3e $2e
    ld a, [hl-]                                   ; $41e8: $3a
    ld e, $02                                     ; $41e9: $1e $02
    rra                                           ; $41eb: $1f
    add [hl]                                      ; $41ec: $86
    dec a                                         ; $41ed: $3d
    inc sp                                        ; $41ee: $33
    rra                                           ; $41ef: $1f
    ld sp, $3b3d                                  ; $41f0: $31 $3d $3b
    ld [bc], a                                    ; $41f3: $02
    ccf                                           ; $41f4: $3f
    add [hl]                                      ; $41f5: $86
    push af                                       ; $41f6: $f5
    rst $38                                       ; $41f7: $ff
    push af                                       ; $41f8: $f5
    rst $38                                       ; $41f9: $ff
    db $e4                                        ; $41fa: $e4
    rst $38                                       ; $41fb: $ff
    ld [bc], a                                    ; $41fc: $02
    ld a, e                                       ; $41fd: $7b
    jr jr_0da_4200                                ; $41fe: $18 $00

jr_0da_4200:
    add e                                         ; $4200: $83
    inc bc                                        ; $4201: $03
    rlca                                          ; $4202: $07
    dec b                                         ; $4203: $05
    inc bc                                        ; $4204: $03
    rlca                                          ; $4205: $07
    ld [bc], a                                    ; $4206: $02
    ld b, $18                                     ; $4207: $06 $18
    nop                                           ; $4209: $00
    rst $38                                       ; $420a: $ff
    dec c                                         ; $420b: $0d
    inc b                                         ; $420c: $04
    ld sp, hl                                     ; $420d: $f9
    ld [$01f2], sp                                ; $420e: $08 $f2 $01
    db $ed                                        ; $4211: $ed
    ld a, [$00ed]                                 ; $4212: $fa $ed $00
    db $fd                                        ; $4215: $fd
    ld a, [$fefd]                                 ; $4216: $fa $fd $fe
    ld [bc], a                                    ; $4219: $02
    rlca                                          ; $421a: $07
    add h                                         ; $421b: $84
    dec a                                         ; $421c: $3d
    ccf                                           ; $421d: $3f
    ld [hl], a                                    ; $421e: $77
    ld a, a                                       ; $421f: $7f
    ld [bc], a                                    ; $4220: $02
    ccf                                           ; $4221: $3f
    sbc b                                         ; $4222: $98
    ld a, a                                       ; $4223: $7f
    ld [hl], l                                    ; $4224: $75
    ccf                                           ; $4225: $3f
    dec a                                         ; $4226: $3d
    ccf                                           ; $4227: $3f
    ld [hl-], a                                   ; $4228: $32
    ld a, a                                       ; $4229: $7f
    ld d, d                                       ; $422a: $52
    ld a, a                                       ; $422b: $7f
    ld a, l                                       ; $422c: $7d
    rra                                           ; $422d: $1f
    inc de                                        ; $422e: $13
    ccf                                           ; $422f: $3f
    jr c, jr_0da_4289                             ; $4230: $38 $57

    ld [hl], a                                    ; $4232: $77
    ld e, d                                       ; $4233: $5a
    ld a, d                                       ; $4234: $7a
    cp l                                          ; $4235: $bd
    db $fd                                        ; $4236: $fd
    cp d                                          ; $4237: $ba
    rst $38                                       ; $4238: $ff
    db $fd                                        ; $4239: $fd
    sbc a                                         ; $423a: $9f
    ld [bc], a                                    ; $423b: $02
    jr z, jr_0da_4240                             ; $423c: $28 $02

    jr c, jr_0da_41c3                             ; $423e: $38 $83

jr_0da_4240:
    inc [hl]                                      ; $4240: $34
    inc a                                         ; $4241: $3c
    inc [hl]                                      ; $4242: $34
    ld [bc], a                                    ; $4243: $02
    inc a                                         ; $4244: $3c
    add c                                         ; $4245: $81
    inc e                                         ; $4246: $1c
    inc bc                                        ; $4247: $03
    jr c, jr_0da_41cd                             ; $4248: $38 $83

    jr jr_0da_4288                                ; $424a: $18 $3c

    inc d                                         ; $424c: $14
    ld [bc], a                                    ; $424d: $02
    inc a                                         ; $424e: $3c
    adc e                                         ; $424f: $8b
    ld a, $1e                                     ; $4250: $3e $1e
    ccf                                           ; $4252: $3f
    add hl, sp                                    ; $4253: $39
    rra                                           ; $4254: $1f
    add hl, de                                    ; $4255: $19
    inc sp                                        ; $4256: $33
    dec a                                         ; $4257: $3d
    ld [hl-], a                                   ; $4258: $32
    ld a, $3a                                     ; $4259: $3e $3a
    inc bc                                        ; $425b: $03
    ld a, $88                                     ; $425c: $3e $88
    db $fd                                        ; $425e: $fd
    sbc a                                         ; $425f: $9f
    ld a, d                                       ; $4260: $7a
    ld a, a                                       ; $4261: $7f
    ld a, d                                       ; $4262: $7a
    ld a, a                                       ; $4263: $7f
    ld [hl], d                                    ; $4264: $72
    ld a, a                                       ; $4265: $7f
    ld [bc], a                                    ; $4266: $02
    dec a                                         ; $4267: $3d
    ld d, $00                                     ; $4268: $16 $00
    ld [bc], a                                    ; $426a: $02
    ld c, $86                                     ; $426b: $0e $86
    dec bc                                        ; $426d: $0b
    rrca                                          ; $426e: $0f
    dec c                                         ; $426f: $0d
    rrca                                          ; $4270: $0f
    rlca                                          ; $4271: $07
    rrca                                          ; $4272: $0f
    ld [bc], a                                    ; $4273: $02
    ld c, $16                                     ; $4274: $0e $16
    nop                                           ; $4276: $00
    rst $38                                       ; $4277: $ff
    rlca                                          ; $4278: $07
    ld bc, $08f9                                  ; $4279: $01 $f9 $08
    ld a, [c]                                     ; $427c: $f2
    ld bc, $fbf8                                  ; $427d: $01 $f8 $fb
    add l                                         ; $4280: $85
    ld de, $0a00                                  ; $4281: $11 $00 $0a
    nop                                           ; $4284: $00
    inc b                                         ; $4285: $04
    dec de                                        ; $4286: $1b
    nop                                           ; $4287: $00

jr_0da_4288:
    rst $38                                       ; $4288: $ff

jr_0da_4289:
    dec c                                         ; $4289: $0d
    inc b                                         ; $428a: $04
    pop af                                        ; $428b: $f1
    ld a, [bc]                                    ; $428c: $0a
    ld [$eb01], a                                 ; $428d: $ea $01 $eb
    ei                                            ; $4290: $fb
    db $ec                                        ; $4291: $ec
    cp $fb                                        ; $4292: $fe $fb
    db $fc                                        ; $4294: $fc
    ei                                            ; $4295: $fb
    rst $38                                       ; $4296: $ff
    ld [bc], a                                    ; $4297: $02
    inc de                                        ; $4298: $13
    sbc [hl]                                      ; $4299: $9e
    xor l                                         ; $429a: $ad
    cp a                                          ; $429b: $bf
    rst $18                                       ; $429c: $df
    rst $38                                       ; $429d: $ff
    cp $ff                                        ; $429e: $fe $ff
    ld a, a                                       ; $42a0: $7f
    ld l, a                                       ; $42a1: $6f
    ld a, a                                       ; $42a2: $7f
    ld d, a                                       ; $42a3: $57
    dec sp                                        ; $42a4: $3b
    cpl                                           ; $42a5: $2f
    ccf                                           ; $42a6: $3f
    ld a, [hl+]                                   ; $42a7: $2a
    ld a, a                                       ; $42a8: $7f
    ld e, c                                       ; $42a9: $59
    ccf                                           ; $42aa: $3f
    ld hl, $131f                                  ; $42ab: $21 $1f $13
    dec c                                         ; $42ae: $0d
    rrca                                          ; $42af: $0f
    ld a, [bc]                                    ; $42b0: $0a
    rrca                                          ; $42b1: $0f
    ld d, $1f                                     ; $42b2: $16 $1f
    ld a, [de]                                    ; $42b4: $1a
    rra                                           ; $42b5: $1f
    scf                                           ; $42b6: $37
    ccf                                           ; $42b7: $3f
    ld [bc], a                                    ; $42b8: $02
    ld [bc], a                                    ; $42b9: $02
    ld [bc], a                                    ; $42ba: $02
    ld b, $81                                     ; $42bb: $06 $81
    inc bc                                        ; $42bd: $03
    inc bc                                        ; $42be: $03
    rlca                                          ; $42bf: $07
    ld b, $06                                     ; $42c0: $06 $06
    ld [bc], a                                    ; $42c2: $02
    inc b                                         ; $42c3: $04
    ld [bc], a                                    ; $42c4: $02
    rlca                                          ; $42c5: $07
    add d                                         ; $42c6: $82
    ld bc, $0207                                  ; $42c7: $01 $07 $02
    ld b, $04                                     ; $42ca: $06 $04
    inc b                                         ; $42cc: $04
    add [hl]                                      ; $42cd: $86
    ld [bc], a                                    ; $42ce: $02
    ld b, $01                                     ; $42cf: $06 $01
    rlca                                          ; $42d1: $07
    ld a, c                                       ; $42d2: $79
    rst $38                                       ; $42d3: $ff
    ld [bc], a                                    ; $42d4: $02
    ld b, b                                       ; $42d5: $40
    adc d                                         ; $42d6: $8a
    rst $18                                       ; $42d7: $df
    cp $af                                        ; $42d8: $fe $af
    rst $38                                       ; $42da: $ff
    or a                                          ; $42db: $b7
    rst $38                                       ; $42dc: $ff
    ld a, e                                       ; $42dd: $7b
    ld a, a                                       ; $42de: $7f
    inc sp                                        ; $42df: $33
    ccf                                           ; $42e0: $3f
    ld [bc], a                                    ; $42e1: $02
    rra                                           ; $42e2: $1f
    inc d                                         ; $42e3: $14
    nop                                           ; $42e4: $00
    add h                                         ; $42e5: $84
    ld b, $02                                     ; $42e6: $06 $02
    ld b, $02                                     ; $42e8: $06 $02
    ld [bc], a                                    ; $42ea: $02
    ld b, $83                                     ; $42eb: $06 $83
    dec b                                         ; $42ed: $05
    rlca                                          ; $42ee: $07
    ld [bc], a                                    ; $42ef: $02
    inc bc                                        ; $42f0: $03
    ld b, $12                                     ; $42f1: $06 $12
    nop                                           ; $42f3: $00
    rst $38                                       ; $42f4: $ff
    dec c                                         ; $42f5: $0d
    inc b                                         ; $42f6: $04
    pop af                                        ; $42f7: $f1
    ld a, [bc]                                    ; $42f8: $0a
    ld [$ec01], a                                 ; $42f9: $ea $01 $ec
    ei                                            ; $42fc: $fb
    db $ed                                        ; $42fd: $ed
    rst $38                                       ; $42fe: $ff
    db $fc                                        ; $42ff: $fc
    ei                                            ; $4300: $fb
    db $fc                                        ; $4301: $fc
    rst $38                                       ; $4302: $ff
    ld [bc], a                                    ; $4303: $02
    dec de                                        ; $4304: $1b
    add l                                         ; $4305: $85
    xor l                                         ; $4306: $ad
    cp a                                          ; $4307: $bf
    rst $18                                       ; $4308: $df
    rst $38                                       ; $4309: $ff
    ld a, [hl]                                    ; $430a: $7e
    ld [bc], a                                    ; $430b: $02
    ld a, a                                       ; $430c: $7f
    sub a                                         ; $430d: $97
    ld l, a                                       ; $430e: $6f
    ld a, a                                       ; $430f: $7f
    ld d, e                                       ; $4310: $53
    dec sp                                        ; $4311: $3b
    cpl                                           ; $4312: $2f
    ld a, a                                       ; $4313: $7f
    ld l, c                                       ; $4314: $69
    ld a, a                                       ; $4315: $7f
    ld e, d                                       ; $4316: $5a
    ccf                                           ; $4317: $3f
    ld hl, $131f                                  ; $4318: $21 $1f $13
    dec c                                         ; $431b: $0d
    rrca                                          ; $431c: $0f
    dec bc                                        ; $431d: $0b
    rrca                                          ; $431e: $0f
    dec d                                         ; $431f: $15
    rra                                           ; $4320: $1f
    inc sp                                        ; $4321: $33
    ccf                                           ; $4322: $3f
    scf                                           ; $4323: $37
    ccf                                           ; $4324: $3f
    ld [bc], a                                    ; $4325: $02
    inc b                                         ; $4326: $04
    ld [bc], a                                    ; $4327: $02
    inc c                                         ; $4328: $0c
    add c                                         ; $4329: $81
    ld b, $05                                     ; $432a: $06 $05
    ld c, $04                                     ; $432c: $0e $04
    inc c                                         ; $432e: $0c
    ld [bc], a                                    ; $432f: $02
    ld [$0e02], sp                                ; $4330: $08 $02 $0e
    add h                                         ; $4333: $84
    ld a, [bc]                                    ; $4334: $0a
    ld c, $02                                     ; $4335: $0e $02
    ld c, $02                                     ; $4337: $0e $02
    inc c                                         ; $4339: $0c
    sub d                                         ; $433a: $92
    inc b                                         ; $433b: $04
    inc c                                         ; $433c: $0c
    ld [bc], a                                    ; $433d: $02
    ld c, $0a                                     ; $433e: $0e $0a
    ld c, $f9                                     ; $4340: $0e $f9
    rst $38                                       ; $4342: $ff
    ld h, b                                       ; $4343: $60
    ld [hl], b                                    ; $4344: $70
    rst $08                                       ; $4345: $cf
    rst $38                                       ; $4346: $ff
    xor a                                         ; $4347: $af
    rst $38                                       ; $4348: $ff
    or a                                          ; $4349: $b7
    rst $38                                       ; $434a: $ff
    ld a, e                                       ; $434b: $7b
    ld a, a                                       ; $434c: $7f
    ld [bc], a                                    ; $434d: $02
    rra                                           ; $434e: $1f
    ld d, $00                                     ; $434f: $16 $00
    adc b                                         ; $4351: $88
    dec bc                                        ; $4352: $0b
    dec c                                         ; $4353: $0d
    rrca                                          ; $4354: $0f
    add hl, bc                                    ; $4355: $09
    ld a, [bc]                                    ; $4356: $0a
    ld c, $0a                                     ; $4357: $0e $0a
    ld c, $02                                     ; $4359: $0e $02
    inc c                                         ; $435b: $0c
    inc d                                         ; $435c: $14
    nop                                           ; $435d: $00
    rst $38                                       ; $435e: $ff
    dec c                                         ; $435f: $0d
    inc b                                         ; $4360: $04
    pop af                                        ; $4361: $f1
    ld a, [bc]                                    ; $4362: $0a
    ld [$ee01], a                                 ; $4363: $ea $01 $ee
    ei                                            ; $4366: $fb
    db $ed                                        ; $4367: $ed
    ld bc, $fafd                                  ; $4368: $01 $fd $fa
    db $fd                                        ; $436b: $fd
    cp $02                                        ; $436c: $fe $02
    ld b, $02                                     ; $436e: $06 $02
    inc bc                                        ; $4370: $03
    ld [bc], a                                    ; $4371: $02
    rlca                                          ; $4372: $07
    add d                                         ; $4373: $82
    inc bc                                        ; $4374: $03
    ld [bc], a                                    ; $4375: $02
    ld [bc], a                                    ; $4376: $02
    rlca                                          ; $4377: $07
    adc d                                         ; $4378: $8a
    rra                                           ; $4379: $1f
    inc e                                         ; $437a: $1c
    rra                                           ; $437b: $1f
    dec d                                         ; $437c: $15
    rra                                           ; $437d: $1f
    ld [de], a                                    ; $437e: $12
    rra                                           ; $437f: $1f
    db $10                                        ; $4380: $10
    rrca                                          ; $4381: $0f
    add hl, bc                                    ; $4382: $09
    ld [bc], a                                    ; $4383: $02
    rrca                                          ; $4384: $0f
    adc d                                         ; $4385: $8a
    rla                                           ; $4386: $17
    rra                                           ; $4387: $1f
    inc sp                                        ; $4388: $33
    ccf                                           ; $4389: $3f
    ld [hl], a                                    ; $438a: $77
    ld a, a                                       ; $438b: $7f
    rst $28                                       ; $438c: $ef
    rst $38                                       ; $438d: $ff
    rst $18                                       ; $438e: $df
    ld a, a                                       ; $438f: $7f
    ld [bc], a                                    ; $4390: $02
    jr nz, jr_0da_4395                            ; $4391: $20 $02

    inc [hl]                                      ; $4393: $34
    add h                                         ; $4394: $84

jr_0da_4395:
    ld e, $3e                                     ; $4395: $1e $3e
    ld a, [hl+]                                   ; $4397: $2a
    ld a, $03                                     ; $4398: $3e $03
    ccf                                           ; $439a: $3f
    adc c                                         ; $439b: $89
    rra                                           ; $439c: $1f
    add hl, sp                                    ; $439d: $39
    cpl                                           ; $439e: $2f
    rra                                           ; $439f: $1f
    ccf                                           ; $43a0: $3f
    ld a, $2e                                     ; $43a1: $3e $2e
    inc a                                         ; $43a3: $3c
    inc e                                         ; $43a4: $1c
    ld [bc], a                                    ; $43a5: $02
    jr c, @-$74                                   ; $43a6: $38 $8a

    jr z, jr_0da_43e2                             ; $43a8: $28 $38

    inc [hl]                                      ; $43aa: $34
    inc a                                         ; $43ab: $3c
    inc d                                         ; $43ac: $14
    inc a                                         ; $43ad: $3c
    jr @+$3a                                      ; $43ae: $18 $38

    db $10                                        ; $43b0: $10
    jr nc, jr_0da_43b5                            ; $43b1: $30 $02

    add b                                         ; $43b3: $80
    add [hl]                                      ; $43b4: $86

jr_0da_43b5:
    ld l, a                                       ; $43b5: $6f
    ld a, a                                       ; $43b6: $7f
    ld c, a                                       ; $43b7: $4f
    ld a, a                                       ; $43b8: $7f
    ld d, e                                       ; $43b9: $53
    ld a, a                                       ; $43ba: $7f
    ld [bc], a                                    ; $43bb: $02
    ccf                                           ; $43bc: $3f
    ld d, $00                                     ; $43bd: $16 $00
    adc b                                         ; $43bf: $88
    ld bc, $0907                                  ; $43c0: $01 $07 $09
    rrca                                          ; $43c3: $0f
    dec bc                                        ; $43c4: $0b
    dec c                                         ; $43c5: $0d
    rrca                                          ; $43c6: $0f
    add hl, bc                                    ; $43c7: $09
    ld [bc], a                                    ; $43c8: $02
    ld c, $16                                     ; $43c9: $0e $16
    nop                                           ; $43cb: $00
    rst $38                                       ; $43cc: $ff
    dec c                                         ; $43cd: $0d
    inc b                                         ; $43ce: $04
    pop af                                        ; $43cf: $f1
    ld a, [bc]                                    ; $43d0: $0a
    ld [$ef01], a                                 ; $43d1: $ea $01 $ef
    or $f0                                        ; $43d4: $f6 $f0
    db $fd                                        ; $43d6: $fd
    rst $38                                       ; $43d7: $ff
    rst $30                                       ; $43d8: $f7
    rst $38                                       ; $43d9: $ff
    db $fd                                        ; $43da: $fd
    ld [bc], a                                    ; $43db: $02
    dec c                                         ; $43dc: $0d
    add e                                         ; $43dd: $83
    ld e, [hl]                                    ; $43de: $5e
    ld e, a                                       ; $43df: $5f
    db $eb                                        ; $43e0: $eb
    inc bc                                        ; $43e1: $03

jr_0da_43e2:
    rst $38                                       ; $43e2: $ff
    ld [bc], a                                    ; $43e3: $02
    ld a, a                                       ; $43e4: $7f
    sub [hl]                                      ; $43e5: $96
    ccf                                           ; $43e6: $3f
    ld [hl], $3f                                  ; $43e7: $36 $3f
    add hl, hl                                    ; $43e9: $29
    rra                                           ; $43ea: $1f
    add hl, de                                    ; $43eb: $19
    ccf                                           ; $43ec: $3f
    ld h, $1f                                     ; $43ed: $26 $1f
    db $10                                        ; $43ef: $10
    rrca                                          ; $43f0: $0f
    add hl, bc                                    ; $43f1: $09
    ld a, [bc]                                    ; $43f2: $0a
    rrca                                          ; $43f3: $0f
    dec d                                         ; $43f4: $15
    rra                                           ; $43f5: $1f
    rla                                           ; $43f6: $17
    rra                                           ; $43f7: $1f
    dec a                                         ; $43f8: $3d
    ccf                                           ; $43f9: $3f
    ld a, e                                       ; $43fa: $7b
    ld c, a                                       ; $43fb: $4f
    ld [bc], a                                    ; $43fc: $02
    ld h, b                                       ; $43fd: $60
    ld [bc], a                                    ; $43fe: $02
    ld [hl], b                                    ; $43ff: $70
    add h                                         ; $4400: $84
    ld d, b                                       ; $4401: $50
    ld [hl], b                                    ; $4402: $70
    ld e, b                                       ; $4403: $58
    ld a, b                                       ; $4404: $78
    inc b                                         ; $4405: $04
    ld [hl], b                                    ; $4406: $70
    add h                                         ; $4407: $84
    ld h, b                                       ; $4408: $60
    jr nz, jr_0da_446b                            ; $4409: $20 $60

    jr nz, jr_0da_440f                            ; $440b: $20 $02

    ld h, b                                       ; $440d: $60
    sub d                                         ; $440e: $92

jr_0da_440f:
    jr nc, jr_0da_4481                            ; $440f: $30 $70

    ld l, b                                       ; $4411: $68
    ld a, b                                       ; $4412: $78
    ld l, b                                       ; $4413: $68
    ld a, b                                       ; $4414: $78
    ld l, h                                       ; $4415: $6c
    ld a, h                                       ; $4416: $7c
    ld h, h                                       ; $4417: $64
    ld a, h                                       ; $4418: $7c
    ld b, a                                       ; $4419: $47
    ld a, a                                       ; $441a: $7f
    db $ed                                        ; $441b: $ed
    rst $18                                       ; $441c: $df
    db $f4                                        ; $441d: $f4
    cp h                                          ; $441e: $bc
    ld e, c                                       ; $441f: $59
    ld e, a                                       ; $4420: $5f
    ld [bc], a                                    ; $4421: $02
    rra                                           ; $4422: $1f
    inc e                                         ; $4423: $1c
    nop                                           ; $4424: $00
    add d                                         ; $4425: $82
    dec a                                         ; $4426: $3d
    rrca                                          ; $4427: $0f
    ld [bc], a                                    ; $4428: $02
    ld a, $1a                                     ; $4429: $3e $1a
    nop                                           ; $442b: $00
    rst $38                                       ; $442c: $ff
    dec bc                                        ; $442d: $0b
    inc bc                                        ; $442e: $03
    pop af                                        ; $442f: $f1
    ld a, [bc]                                    ; $4430: $0a
    ld [$f301], a                                 ; $4431: $ea $01 $f3
    db $f4                                        ; $4434: $f4
    di                                            ; $4435: $f3
    db $fc                                        ; $4436: $fc
    di                                            ; $4437: $f3
    db $fd                                        ; $4438: $fd
    ld [bc], a                                    ; $4439: $02
    rra                                           ; $443a: $1f
    inc b                                         ; $443b: $04
    ccf                                           ; $443c: $3f
    add h                                         ; $443d: $84
    ld e, a                                       ; $443e: $5f
    ld a, a                                       ; $443f: $7f
    ld e, a                                       ; $4440: $5f
    ld a, a                                       ; $4441: $7f
    ld [bc], a                                    ; $4442: $02
    rst $38                                       ; $4443: $ff
    add [hl]                                      ; $4444: $86
    scf                                           ; $4445: $37
    ccf                                           ; $4446: $3f
    ld l, a                                       ; $4447: $6f
    ld a, l                                       ; $4448: $7d
    rra                                           ; $4449: $1f
    ld a, [de]                                    ; $444a: $1a
    ld [bc], a                                    ; $444b: $02
    rrca                                          ; $444c: $0f
    adc b                                         ; $444d: $88
    dec de                                        ; $444e: $1b
    rra                                           ; $444f: $1f
    ld [de], a                                    ; $4450: $12
    rra                                           ; $4451: $1f
    ld h, $3f                                     ; $4452: $26 $3f
    ld [hl], a                                    ; $4454: $77
    ld c, a                                       ; $4455: $4f
    ld [bc], a                                    ; $4456: $02
    dec sp                                        ; $4457: $3b
    ld [bc], a                                    ; $4458: $02
    nop                                           ; $4459: $00
    ld [bc], a                                    ; $445a: $02
    add b                                         ; $445b: $80
    ld [bc], a                                    ; $445c: $02
    ret nz                                        ; $445d: $c0

    add c                                         ; $445e: $81
    ld h, b                                       ; $445f: $60
    inc bc                                        ; $4460: $03
    ldh [rSC], a                                  ; $4461: $e0 $02
    ldh a, [$94]                                  ; $4463: $f0 $94
    ld l, b                                       ; $4465: $68
    ld hl, sp-$28                                 ; $4466: $f8 $d8
    ld hl, sp-$14                                 ; $4468: $f8 $ec
    ld a, h                                       ; $446a: $7c

jr_0da_446b:
    db $ec                                        ; $446b: $ec
    db $fc                                        ; $446c: $fc
    call z, Call_0da_4efc                         ; $446d: $cc $fc $4e
    cp $df                                        ; $4470: $fe $df
    rst $38                                       ; $4472: $ff
    adc [hl]                                      ; $4473: $8e
    rst $38                                       ; $4474: $ff
    ld c, [hl]                                    ; $4475: $4e
    cp a                                          ; $4476: $bf
    rst $38                                       ; $4477: $ff
    sbc a                                         ; $4478: $9f
    ld [bc], a                                    ; $4479: $02
    ld h, b                                       ; $447a: $60
    ld d, $00                                     ; $447b: $16 $00
    ld b, $01                                     ; $447d: $06 $01
    inc b                                         ; $447f: $04
    nop                                           ; $4480: $00

jr_0da_4481:
    rst $38                                       ; $4481: $ff
    dec bc                                        ; $4482: $0b
    inc bc                                        ; $4483: $03
    pop af                                        ; $4484: $f1
    ld a, [bc]                                    ; $4485: $0a
    ld [$f401], a                                 ; $4486: $ea $01 $f4
    db $f4                                        ; $4489: $f4
    db $f4                                        ; $448a: $f4
    db $fc                                        ; $448b: $fc
    db $f4                                        ; $448c: $f4
    db $fd                                        ; $448d: $fd
    ld [bc], a                                    ; $448e: $02
    rra                                           ; $448f: $1f
    inc b                                         ; $4490: $04
    ccf                                           ; $4491: $3f
    add h                                         ; $4492: $84
    ld e, a                                       ; $4493: $5f
    ld a, a                                       ; $4494: $7f
    ld e, a                                       ; $4495: $5f
    ld a, a                                       ; $4496: $7f
    ld [bc], a                                    ; $4497: $02
    rst $38                                       ; $4498: $ff
    add [hl]                                      ; $4499: $86
    scf                                           ; $449a: $37
    ccf                                           ; $449b: $3f
    ld l, a                                       ; $449c: $6f
    ld a, l                                       ; $449d: $7d
    rra                                           ; $449e: $1f
    ld a, [de]                                    ; $449f: $1a
    ld [bc], a                                    ; $44a0: $02
    rra                                           ; $44a1: $1f
    add [hl]                                      ; $44a2: $86
    ld [de], a                                    ; $44a3: $12
    rra                                           ; $44a4: $1f
    ld h, $3f                                     ; $44a5: $26 $3f
    ld [hl], a                                    ; $44a7: $77
    ld c, a                                       ; $44a8: $4f
    ld [bc], a                                    ; $44a9: $02
    dec sp                                        ; $44aa: $3b
    inc b                                         ; $44ab: $04
    nop                                           ; $44ac: $00
    ld [bc], a                                    ; $44ad: $02
    add b                                         ; $44ae: $80
    ld [bc], a                                    ; $44af: $02
    ret nz                                        ; $44b0: $c0

    add d                                         ; $44b1: $82
    ld h, b                                       ; $44b2: $60
    ldh [rSC], a                                  ; $44b3: $e0 $02
    ldh a, [$94]                                  ; $44b5: $f0 $94
    add sp, -$08                                  ; $44b7: $e8 $f8
    ld a, b                                       ; $44b9: $78
    ld hl, sp-$14                                 ; $44ba: $f8 $ec
    db $fc                                        ; $44bc: $fc
    db $ec                                        ; $44bd: $ec
    ld a, h                                       ; $44be: $7c
    call z, Call_0da_4efc                         ; $44bf: $cc $fc $4e
    cp $df                                        ; $44c2: $fe $df
    rst $38                                       ; $44c4: $ff
    adc [hl]                                      ; $44c5: $8e
    rst $38                                       ; $44c6: $ff
    ld c, [hl]                                    ; $44c7: $4e
    cp a                                          ; $44c8: $bf
    rst $38                                       ; $44c9: $ff
    sbc a                                         ; $44ca: $9f
    ld [bc], a                                    ; $44cb: $02
    ld h, b                                       ; $44cc: $60
    ld d, $00                                     ; $44cd: $16 $00
    ld b, $01                                     ; $44cf: $06 $01
    ld b, $00                                     ; $44d1: $06 $00
    rst $38                                       ; $44d3: $ff
    dec bc                                        ; $44d4: $0b
    inc bc                                        ; $44d5: $03
    pop af                                        ; $44d6: $f1
    ld a, [bc]                                    ; $44d7: $0a
    ld [$f401], a                                 ; $44d8: $ea $01 $f4
    pop af                                        ; $44db: $f1
    db $f4                                        ; $44dc: $f4
    ld sp, hl                                     ; $44dd: $f9
    db $f4                                        ; $44de: $f4
    db $fd                                        ; $44df: $fd
    ld [bc], a                                    ; $44e0: $02
    rra                                           ; $44e1: $1f
    inc b                                         ; $44e2: $04
    ccf                                           ; $44e3: $3f
    add h                                         ; $44e4: $84
    ld e, a                                       ; $44e5: $5f
    ld a, a                                       ; $44e6: $7f
    rst $18                                       ; $44e7: $df
    rst $38                                       ; $44e8: $ff
    ld [bc], a                                    ; $44e9: $02
    ld a, a                                       ; $44ea: $7f
    add [hl]                                      ; $44eb: $86
    ld h, a                                       ; $44ec: $67
    ld a, a                                       ; $44ed: $7f
    ccf                                           ; $44ee: $3f
    dec a                                         ; $44ef: $3d
    rra                                           ; $44f0: $1f
    ld a, [de]                                    ; $44f1: $1a
    ld [bc], a                                    ; $44f2: $02
    rlca                                          ; $44f3: $07
    add [hl]                                      ; $44f4: $86
    dec b                                         ; $44f5: $05
    rlca                                          ; $44f6: $07
    inc b                                         ; $44f7: $04
    rlca                                          ; $44f8: $07
    ld c, $09                                     ; $44f9: $0e $09
    ld [bc], a                                    ; $44fb: $02
    rrca                                          ; $44fc: $0f
    inc b                                         ; $44fd: $04
    nop                                           ; $44fe: $00
    ld [bc], a                                    ; $44ff: $02
    add b                                         ; $4500: $80

jr_0da_4501:
    ld [bc], a                                    ; $4501: $02
    ret nz                                        ; $4502: $c0

    add d                                         ; $4503: $82
    ld h, b                                       ; $4504: $60
    ldh [rSC], a                                  ; $4505: $e0 $02
    ld hl, sp-$6c                                 ; $4507: $f8 $94
    db $f4                                        ; $4509: $f4
    db $fc                                        ; $450a: $fc
    ld a, h                                       ; $450b: $7c
    db $fc                                        ; $450c: $fc
    or $fe                                        ; $450d: $f6 $fe
    di                                            ; $450f: $f3
    ld a, a                                       ; $4510: $7f
    db $d3                                        ; $4511: $d3
    rst $38                                       ; $4512: $ff
    ld e, c                                       ; $4513: $59
    rst $38                                       ; $4514: $ff
    cp c                                          ; $4515: $b9
    rst $38                                       ; $4516: $ff
    cp c                                          ; $4517: $b9
    rst $38                                       ; $4518: $ff
    reti                                          ; $4519: $d9


    rst $30                                       ; $451a: $f7
    ld a, a                                       ; $451b: $7f
    ld [hl], e                                    ; $451c: $73
    ld [bc], a                                    ; $451d: $02
    inc c                                         ; $451e: $0c
    inc d                                         ; $451f: $14
    nop                                           ; $4520: $00
    ld [bc], a                                    ; $4521: $02
    inc c                                         ; $4522: $0c
    ld [bc], a                                    ; $4523: $02
    ld c, $84                                     ; $4524: $0e $84
    dec c                                         ; $4526: $0d
    rrca                                          ; $4527: $0f
    dec c                                         ; $4528: $0d
    rrca                                          ; $4529: $0f
    ld [bc], a                                    ; $452a: $02
    ld c, $04                                     ; $452b: $0e $04
    nop                                           ; $452d: $00
    rst $38                                       ; $452e: $ff
    dec bc                                        ; $452f: $0b
    inc bc                                        ; $4530: $03
    pop af                                        ; $4531: $f1
    ld a, [bc]                                    ; $4532: $0a
    ld [$f401], a                                 ; $4533: $ea $01 $f4
    rst $28                                       ; $4536: $ef
    db $f4                                        ; $4537: $f4
    rst $30                                       ; $4538: $f7
    db $f4                                        ; $4539: $f4
    db $fd                                        ; $453a: $fd
    ld [bc], a                                    ; $453b: $02
    ld a, [bc]                                    ; $453c: $0a
    sub d                                         ; $453d: $92
    dec a                                         ; $453e: $3d
    ccf                                           ; $453f: $3f
    ld a, [hl]                                    ; $4540: $7e
    ld a, a                                       ; $4541: $7f
    ld l, a                                       ; $4542: $6f
    ld a, a                                       ; $4543: $7f
    ld e, a                                       ; $4544: $5f
    ld a, [hl]                                    ; $4545: $7e
    rst $38                                       ; $4546: $ff
    ld a, [c]                                     ; $4547: $f2
    rst $38                                       ; $4548: $ff
    rst $30                                       ; $4549: $f7
    rst $38                                       ; $454a: $ff
    jp hl                                         ; $454b: $e9


    ld a, a                                       ; $454c: $7f
    ld a, c                                       ; $454d: $79
    rra                                           ; $454e: $1f
    ld e, $02                                     ; $454f: $1e $02
    rlca                                          ; $4551: $07
    ld [bc], a                                    ; $4552: $02
    ld bc, $0382                                  ; $4553: $01 $82 $03
    ld [bc], a                                    ; $4556: $02
    ld [bc], a                                    ; $4557: $02
    inc bc                                        ; $4558: $03
    ld [$0400], sp                                ; $4559: $08 $00 $04
    add b                                         ; $455c: $80
    sub h                                         ; $455d: $94
    ldh a, [rSVBK]                                ; $455e: $f0 $70
    ret nc                                        ; $4560: $d0

    ld [hl], b                                    ; $4561: $70
    ld hl, sp-$48                                 ; $4562: $f8 $b8
    rst $20                                       ; $4564: $e7
    ccf                                           ; $4565: $3f
    ld hl, sp-$41                                 ; $4566: $f8 $bf
    db $fc                                        ; $4568: $fc
    ld a, a                                       ; $4569: $7f
    call c, $9cff                                 ; $456a: $dc $ff $9c
    rst $38                                       ; $456d: $ff
    rst $28                                       ; $456e: $ef
    ld sp, hl                                     ; $456f: $f9
    rst $38                                       ; $4570: $ff
    db $fc                                        ; $4571: $fc
    ld [bc], a                                    ; $4572: $02
    inc bc                                        ; $4573: $03
    ld [de], a                                    ; $4574: $12
    nop                                           ; $4575: $00
    ld [bc], a                                    ; $4576: $02
    jr nz, jr_0da_457b                            ; $4577: $20 $02

    jr nc, jr_0da_4501                            ; $4579: $30 $86

jr_0da_457b:
    ld l, $3e                                     ; $457b: $2e $3e
    dec a                                         ; $457d: $3d
    ccf                                           ; $457e: $3f
    dec a                                         ; $457f: $3d
    ccf                                           ; $4580: $3f
    ld [bc], a                                    ; $4581: $02
    ld a, $04                                     ; $4582: $3e $04
    nop                                           ; $4584: $00
    rst $38                                       ; $4585: $ff
    dec c                                         ; $4586: $0d
    inc b                                         ; $4587: $04
    pop af                                        ; $4588: $f1
    ld a, [bc]                                    ; $4589: $0a
    ld [$f701], a                                 ; $458a: $ea $01 $f7
    ld [$f2f7], a                                 ; $458d: $ea $f7 $f2
    rst $30                                       ; $4590: $f7
    ld a, [$fdf7]                                 ; $4591: $fa $f7 $fd
    ld [bc], a                                    ; $4594: $02
    inc b                                         ; $4595: $04
    ld [bc], a                                    ; $4596: $02
    ld l, $83                                     ; $4597: $2e $83
    dec sp                                        ; $4599: $3b
    ccf                                           ; $459a: $3f
    halt                                          ; $459b: $76
    ld [bc], a                                    ; $459c: $02
    ld a, a                                       ; $459d: $7f
    adc e                                         ; $459e: $8b
    ld a, l                                       ; $459f: $7d
    ld e, a                                       ; $45a0: $5f
    ld a, [hl]                                    ; $45a1: $7e
    ld e, a                                       ; $45a2: $5f
    ld a, [hl]                                    ; $45a3: $7e
    rst $38                                       ; $45a4: $ff
    db $fd                                        ; $45a5: $fd
    ld a, a                                       ; $45a6: $7f
    ld a, d                                       ; $45a7: $7a
    ccf                                           ; $45a8: $3f
    ld a, $02                                     ; $45a9: $3e $02
    rrca                                          ; $45ab: $0f
    inc c                                         ; $45ac: $0c
    nop                                           ; $45ad: $00
    inc b                                         ; $45ae: $04
    add b                                         ; $45af: $80
    adc [hl]                                      ; $45b0: $8e
    db $fc                                        ; $45b1: $fc
    ld a, h                                       ; $45b2: $7c
    db $f4                                        ; $45b3: $f4
    cp h                                          ; $45b4: $bc
    rst $30                                       ; $45b5: $f7
    ld c, a                                       ; $45b6: $4f
    db $fc                                        ; $45b7: $fc
    ld l, a                                       ; $45b8: $6f
    ei                                            ; $45b9: $fb
    xor a                                         ; $45ba: $af
    push af                                       ; $45bb: $f5
    ld e, a                                       ; $45bc: $5f
    ld a, [$027f]                                 ; $45bd: $fa $7f $02
    sbc a                                         ; $45c0: $9f
    inc d                                         ; $45c1: $14
    nop                                           ; $45c2: $00
    ld [bc], a                                    ; $45c3: $02
    ret nz                                        ; $45c4: $c0

    adc b                                         ; $45c5: $88
    inc a                                         ; $45c6: $3c
    db $fc                                        ; $45c7: $fc
    rla                                           ; $45c8: $17
    rst $38                                       ; $45c9: $ff
    adc e                                         ; $45ca: $8b
    rst $38                                       ; $45cb: $ff
    ld a, a                                       ; $45cc: $7f
    rst $08                                       ; $45cd: $cf
    ld [bc], a                                    ; $45ce: $02
    rst $38                                       ; $45cf: $ff
    jr jr_0da_45d2                                ; $45d0: $18 $00

jr_0da_45d2:
    ld [bc], a                                    ; $45d2: $02

jr_0da_45d3:
    inc b                                         ; $45d3: $04
    add h                                         ; $45d4: $84
    ld [bc], a                                    ; $45d5: $02
    ld b, $05                                     ; $45d6: $06 $05
    rlca                                          ; $45d8: $07
    ld [bc], a                                    ; $45d9: $02
    ld b, $0a                                     ; $45da: $06 $0a
    nop                                           ; $45dc: $00
    rst $38                                       ; $45dd: $ff
    dec c                                         ; $45de: $0d
    inc b                                         ; $45df: $04
    pop af                                        ; $45e0: $f1
    ld a, [bc]                                    ; $45e1: $0a
    ld [$fa01], a                                 ; $45e2: $ea $01 $fa
    jp hl                                         ; $45e5: $e9


    ld a, [$faf1]                                 ; $45e6: $fa $f1 $fa
    ld sp, hl                                     ; $45e9: $f9
    ld a, [$02fd]                                 ; $45ea: $fa $fd $02
    rrca                                          ; $45ed: $0f
    ld [bc], a                                    ; $45ee: $02
    rra                                           ; $45ef: $1f
    add c                                         ; $45f0: $81
    dec sp                                        ; $45f1: $3b
    ld [bc], a                                    ; $45f2: $02
    ccf                                           ; $45f3: $3f
    adc c                                         ; $45f4: $89
    inc a                                         ; $45f5: $3c
    ld l, a                                       ; $45f6: $6f
    ld a, l                                       ; $45f7: $7d
    scf                                           ; $45f8: $37
    ccf                                           ; $45f9: $3f
    ld a, a                                       ; $45fa: $7f
    ld a, [hl]                                    ; $45fb: $7e
    rst $18                                       ; $45fc: $df
    db $fd                                        ; $45fd: $fd
    ld [bc], a                                    ; $45fe: $02
    ccf                                           ; $45ff: $3f
    ld c, $00                                     ; $4600: $0e $00
    ld [bc], a                                    ; $4602: $02
    ret nz                                        ; $4603: $c0

    adc [hl]                                      ; $4604: $8e
    db $fc                                        ; $4605: $fc
    cp h                                          ; $4606: $bc
    ld a, e                                       ; $4607: $7b
    cp a                                          ; $4608: $bf
    db $fc                                        ; $4609: $fc
    rst $08                                       ; $460a: $cf
    db $fd                                        ; $460b: $fd
    daa                                           ; $460c: $27
    ld a, [$fd27]                                 ; $460d: $fa $27 $fd
    rst $10                                       ; $4610: $d7
    rst $38                                       ; $4611: $ff
    ccf                                           ; $4612: $3f
    ld [bc], a                                    ; $4613: $02
    ldh a, [rNR12]                                ; $4614: $f0 $12
    nop                                           ; $4616: $00
    ld [bc], a                                    ; $4617: $02
    ldh [$88], a                                  ; $4618: $e0 $88
    inc a                                         ; $461a: $3c
    db $fc                                        ; $461b: $fc
    adc e                                         ; $461c: $8b
    rst $38                                       ; $461d: $ff
    call z, Call_000_3ff7                         ; $461e: $cc $f7 $3f
    rst $20                                       ; $4621: $e7
    ld [bc], a                                    ; $4622: $02
    rst $38                                       ; $4623: $ff
    jr jr_0da_4626                                ; $4624: $18 $00

jr_0da_4626:
    ld [bc], a                                    ; $4626: $02
    inc c                                         ; $4627: $0c
    add h                                         ; $4628: $84
    ld a, [bc]                                    ; $4629: $0a
    ld c, $0d                                     ; $462a: $0e $0d
    rrca                                          ; $462c: $0f
    ld [bc], a                                    ; $462d: $02
    ld c, $10                                     ; $462e: $0e $10
    nop                                           ; $4630: $00
    rst $38                                       ; $4631: $ff
    dec c                                         ; $4632: $0d
    inc b                                         ; $4633: $04
    ld hl, sp+$07                                 ; $4634: $f8 $07
    di                                            ; $4636: $f3
    ld [bc], a                                    ; $4637: $02
    db $ec                                        ; $4638: $ec
    ld hl, sp-$11                                 ; $4639: $f8 $ef
    db $fc                                        ; $463b: $fc
    db $fc                                        ; $463c: $fc
    ld a, [$fcfc]                                 ; $463d: $fa $fc $fc
    ld [bc], a                                    ; $4640: $02
    db $10                                        ; $4641: $10
    ld [bc], a                                    ; $4642: $02
    jr jr_0da_45d3                                ; $4643: $18 $8e

    ld [hl], $3e                                  ; $4645: $36 $3e
    ld a, [hl]                                    ; $4647: $7e
    ld a, d                                       ; $4648: $7a
    cp a                                          ; $4649: $bf
    push af                                       ; $464a: $f5
    ld a, a                                       ; $464b: $7f
    halt                                          ; $464c: $76
    ei                                            ; $464d: $fb
    db $fd                                        ; $464e: $fd
    sbc a                                         ; $464f: $9f
    db $fc                                        ; $4650: $fc
    ld a, a                                       ; $4651: $7f
    ld a, d                                       ; $4652: $7a
    ld [bc], a                                    ; $4653: $02
    ld a, a                                       ; $4654: $7f
    ld [bc], a                                    ; $4655: $02
    ld c, $8a                                     ; $4656: $0e $8a
    dec d                                         ; $4658: $15
    rra                                           ; $4659: $1f
    dec d                                         ; $465a: $15
    rra                                           ; $465b: $1f
    dec c                                         ; $465c: $0d
    rrca                                          ; $465d: $0f
    add hl, bc                                    ; $465e: $09
    rrca                                          ; $465f: $0f
    add hl, bc                                    ; $4660: $09
    rrca                                          ; $4661: $0f
    ld [bc], a                                    ; $4662: $02
    ld [$0c8a], sp                                ; $4663: $08 $8a $0c
    inc b                                         ; $4666: $04
    ld c, $0a                                     ; $4667: $0e $0a
    ld c, $0a                                     ; $4669: $0e $0a
    rrca                                          ; $466b: $0f
    ld bc, $020e                                  ; $466c: $01 $0e $02
    ld [bc], a                                    ; $466f: $02
    inc c                                         ; $4670: $0c
    ld [bc], a                                    ; $4671: $02
    inc b                                         ; $4672: $04
    ld [bc], a                                    ; $4673: $02
    ld a, [bc]                                    ; $4674: $0a
    adc [hl]                                      ; $4675: $8e
    ld b, $0e                                     ; $4676: $06 $0e
    ld a, [bc]                                    ; $4678: $0a
    ld c, $0a                                     ; $4679: $0e $0a
    ld c, $0a                                     ; $467b: $0e $0a
    ld c, $fe                                     ; $467d: $0e $fe
    adc $ff                                       ; $467f: $ce $ff
    xor c                                         ; $4681: $a9
    or $fe                                        ; $4682: $f6 $fe
    ld [bc], a                                    ; $4684: $02
    nop                                           ; $4685: $00
    inc b                                         ; $4686: $04
    ld b, b                                       ; $4687: $40
    add [hl]                                      ; $4688: $86
    ei                                            ; $4689: $fb
    rst $38                                       ; $468a: $ff
    cp a                                          ; $468b: $bf
    rst $38                                       ; $468c: $ff
    ld e, b                                       ; $468d: $58
    ld a, a                                       ; $468e: $7f
    ld [bc], a                                    ; $468f: $02
    ccf                                           ; $4690: $3f
    jr jr_0da_4693                                ; $4691: $18 $00

jr_0da_4693:
    inc b                                         ; $4693: $04
    ld [bc], a                                    ; $4694: $02
    ld [bc], a                                    ; $4695: $02
    inc bc                                        ; $4696: $03
    ld [bc], a                                    ; $4697: $02
    ld [bc], a                                    ; $4698: $02
    ld [de], a                                    ; $4699: $12
    nop                                           ; $469a: $00
    rst $38                                       ; $469b: $ff
    rlca                                          ; $469c: $07
    ld bc, $07f8                                  ; $469d: $01 $f8 $07
    di                                            ; $46a0: $f3
    ld [bc], a                                    ; $46a1: $02
    or $fa                                        ; $46a2: $f6 $fa
    add e                                         ; $46a4: $83
    ld b, $00                                     ; $46a5: $06 $00
    ld bc, $001d                                  ; $46a7: $01 $1d $00
    rst $38                                       ; $46aa: $ff
    dec bc                                        ; $46ab: $0b
    inc bc                                        ; $46ac: $03
    ei                                            ; $46ad: $fb
    db $10                                        ; $46ae: $10
    cp $05                                        ; $46af: $fe $05
    ld a, [$fafb]                                 ; $46b1: $fa $fb $fa
    inc bc                                        ; $46b4: $03
    ld a, [$0209]                                 ; $46b5: $fa $09 $02
    ld d, $83                                     ; $46b8: $16 $83
    dec a                                         ; $46ba: $3d
    ccf                                           ; $46bb: $3f
    ld e, e                                       ; $46bc: $5b
    ld [bc], a                                    ; $46bd: $02
    ld a, a                                       ; $46be: $7f
    sub c                                         ; $46bf: $91
    ld a, l                                       ; $46c0: $7d
    ld a, a                                       ; $46c1: $7f
    ld a, [$f5df]                                 ; $46c2: $fa $df $f5
    or a                                          ; $46c5: $b7
    db $fc                                        ; $46c6: $fc
    rst $38                                       ; $46c7: $ff
    ei                                            ; $46c8: $fb
    ld a, a                                       ; $46c9: $7f
    ld l, b                                       ; $46ca: $68
    rra                                           ; $46cb: $1f
    inc a                                         ; $46cc: $3c
    inc bc                                        ; $46cd: $03
    rlca                                          ; $46ce: $07
    ld [bc], a                                    ; $46cf: $02
    inc bc                                        ; $46d0: $03
    ld [bc], a                                    ; $46d1: $02
    ld bc, $0008                                  ; $46d2: $01 $08 $00
    ld [bc], a                                    ; $46d5: $02
    add b                                         ; $46d6: $80
    inc b                                         ; $46d7: $04
    nop                                           ; $46d8: $00
    add h                                         ; $46d9: $84
    db $dd                                        ; $46da: $dd
    rst $18                                       ; $46db: $df
    ld a, [$02aa]                                 ; $46dc: $fa $aa $02
    ldh a, [$8a]                                  ; $46df: $f0 $8a
    ret c                                         ; $46e1: $d8

    ld a, b                                       ; $46e2: $78
    db $fc                                        ; $46e3: $fc
    ld h, h                                       ; $46e4: $64
    db $e4                                        ; $46e5: $e4
    db $fc                                        ; $46e6: $fc
    ld h, l                                       ; $46e7: $65
    db $fd                                        ; $46e8: $fd
    xor d                                         ; $46e9: $aa
    ld a, [$7502]                                 ; $46ea: $fa $02 $75
    add h                                         ; $46ed: $84
    ld [bc], a                                    ; $46ee: $02
    ld a, [bc]                                    ; $46ef: $0a
    nop                                           ; $46f0: $00
    dec h                                         ; $46f1: $25
    dec bc                                        ; $46f2: $0b
    nop                                           ; $46f3: $00
    add e                                         ; $46f4: $83
    jr nz, jr_0da_472b                            ; $46f5: $20 $34

    inc a                                         ; $46f7: $3c
    ld [bc], a                                    ; $46f8: $02
    ld [bc], a                                    ; $46f9: $02
    add d                                         ; $46fa: $82
    nop                                           ; $46fb: $00
    ld bc, $0002                                  ; $46fc: $01 $02 $00
    ld [bc], a                                    ; $46ff: $02
    add hl, bc                                    ; $4700: $09
    ld [bc], a                                    ; $4701: $02
    ld [$2486], sp                                ; $4702: $08 $86 $24
    ld l, $00                                     ; $4705: $2e $00
    inc d                                         ; $4707: $14
    nop                                           ; $4708: $00
    ld a, [bc]                                    ; $4709: $0a
    inc b                                         ; $470a: $04
    nop                                           ; $470b: $00
    rst $38                                       ; $470c: $ff
    dec c                                         ; $470d: $0d
    inc b                                         ; $470e: $04
    ld hl, sp+$07                                 ; $470f: $f8 $07
    di                                            ; $4711: $f3
    ld [bc], a                                    ; $4712: $02
    db $eb                                        ; $4713: $eb
    ld a, [$ffeb]                                 ; $4714: $fa $eb $ff
    ei                                            ; $4717: $fb
    ld a, [$fffb]                                 ; $4718: $fa $fb $ff
    ld [bc], a                                    ; $471b: $02
    rrca                                          ; $471c: $0f
    add h                                         ; $471d: $84
    dec a                                         ; $471e: $3d
    ccf                                           ; $471f: $3f
    rst $20                                       ; $4720: $e7
    rst $38                                       ; $4721: $ff
    ld [bc], a                                    ; $4722: $02
    ccf                                           ; $4723: $3f
    adc [hl]                                      ; $4724: $8e
    ld a, a                                       ; $4725: $7f
    ld l, d                                       ; $4726: $6a
    ccf                                           ; $4727: $3f
    dec sp                                        ; $4728: $3b
    ld a, a                                       ; $4729: $7f
    ld h, h                                       ; $472a: $64

jr_0da_472b:
    ld a, a                                       ; $472b: $7f
    ld h, h                                       ; $472c: $64
    ccf                                           ; $472d: $3f
    dec sp                                        ; $472e: $3b
    rra                                           ; $472f: $1f
    ld d, $1f                                     ; $4730: $16 $1f
    jr jr_0da_4736                                ; $4732: $18 $02

    ld [hl], $88                                  ; $4734: $36 $88

jr_0da_4736:
    ld d, l                                       ; $4736: $55
    ld [hl], l                                    ; $4737: $75
    cp e                                          ; $4738: $bb
    ei                                            ; $4739: $fb
    push de                                       ; $473a: $d5
    rst $18                                       ; $473b: $df
    ei                                            ; $473c: $fb
    sbc a                                         ; $473d: $9f
    ld [bc], a                                    ; $473e: $02
    ld [$1c02], sp                                ; $473f: $08 $02 $1c
    add e                                         ; $4742: $83
    ld a, [de]                                    ; $4743: $1a
    ld e, $16                                     ; $4744: $1e $16
    inc bc                                        ; $4746: $03
    ld e, $82                                     ; $4747: $1e $82
    inc e                                         ; $4749: $1c
    inc c                                         ; $474a: $0c
    inc bc                                        ; $474b: $03
    ld e, $85                                     ; $474c: $1e $85
    ld [de], a                                    ; $474e: $12
    inc e                                         ; $474f: $1c
    inc c                                         ; $4750: $0c
    jr jr_0da_475b                                ; $4751: $18 $08

    ld [bc], a                                    ; $4753: $02
    jr jr_0da_4758                                ; $4754: $18 $02

    inc e                                         ; $4756: $1c
    sub h                                         ; $4757: $94

jr_0da_4758:
    ld a, [de]                                    ; $4758: $1a
    ld e, $1a                                     ; $4759: $1e $1a

jr_0da_475b:
    ld e, $1d                                     ; $475b: $1e $1d
    rra                                           ; $475d: $1f
    add hl, de                                    ; $475e: $19
    rra                                           ; $475f: $1f
    ld a, e                                       ; $4760: $7b
    ld a, a                                       ; $4761: $7f
    adc e                                         ; $4762: $8b
    adc a                                         ; $4763: $8f
    adc e                                         ; $4764: $8b
    adc a                                         ; $4765: $8f
    ld [hl], l                                    ; $4766: $75
    ld a, a                                       ; $4767: $7f
    dec [hl]                                      ; $4768: $35
    ccf                                           ; $4769: $3f
    ld c, [hl]                                    ; $476a: $4e
    ld a, a                                       ; $476b: $7f
    ld [bc], a                                    ; $476c: $02
    add hl, sp                                    ; $476d: $39
    ld [bc], a                                    ; $476e: $02
    ld bc, $0010                                  ; $476f: $01 $10 $00
    add h                                         ; $4772: $84
    rra                                           ; $4773: $1f
    add hl, de                                    ; $4774: $19
    ld e, $1a                                     ; $4775: $1e $1a
    inc b                                         ; $4777: $04
    inc e                                         ; $4778: $1c
    ld [bc], a                                    ; $4779: $02
    ld e, $81                                     ; $477a: $1e $81
    ld a, [de]                                    ; $477c: $1a
    inc bc                                        ; $477d: $03
    ld e, $82                                     ; $477e: $1e $82
    inc b                                         ; $4780: $04
    inc e                                         ; $4781: $1c
    ld [bc], a                                    ; $4782: $02
    jr jr_0da_4793                                ; $4783: $18 $0e

    nop                                           ; $4785: $00
    rst $38                                       ; $4786: $ff
    rlca                                          ; $4787: $07
    ld bc, $07f8                                  ; $4788: $01 $f8 $07
    di                                            ; $478b: $f3
    ld [bc], a                                    ; $478c: $02
    or $fa                                        ; $478d: $f6 $fa
    add [hl]                                      ; $478f: $86
    add hl, bc                                    ; $4790: $09
    nop                                           ; $4791: $00
    ld a, [bc]                                    ; $4792: $0a

jr_0da_4793:
    nop                                           ; $4793: $00
    inc b                                         ; $4794: $04
    nop                                           ; $4795: $00
    ld [bc], a                                    ; $4796: $02
    jr nz, @+$06                                  ; $4797: $20 $04

    nop                                           ; $4799: $00
    inc b                                         ; $479a: $04
    ld [hl], b                                    ; $479b: $70
    stop                                          ; $479c: $10 $00
    rst $38                                       ; $479e: $ff
    dec c                                         ; $479f: $0d
    inc b                                         ; $47a0: $04
    ld hl, sp+$07                                 ; $47a1: $f8 $07
    di                                            ; $47a3: $f3
    ld [bc], a                                    ; $47a4: $02
    db $eb                                        ; $47a5: $eb
    ld sp, hl                                     ; $47a6: $f9
    db $eb                                        ; $47a7: $eb
    rst $38                                       ; $47a8: $ff
    ei                                            ; $47a9: $fb
    ld sp, hl                                     ; $47aa: $f9
    ei                                            ; $47ab: $fb
    rst $38                                       ; $47ac: $ff
    ld [bc], a                                    ; $47ad: $02
    rlca                                          ; $47ae: $07
    add h                                         ; $47af: $84
    ld e, $1f                                     ; $47b0: $1e $1f
    ld [hl], e                                    ; $47b2: $73
    ld a, a                                       ; $47b3: $7f
    ld [bc], a                                    ; $47b4: $02
    rra                                           ; $47b5: $1f
    adc [hl]                                      ; $47b6: $8e
    ccf                                           ; $47b7: $3f
    dec [hl]                                      ; $47b8: $35
    rra                                           ; $47b9: $1f
    dec e                                         ; $47ba: $1d
    ccf                                           ; $47bb: $3f
    ld [hl-], a                                   ; $47bc: $32
    ccf                                           ; $47bd: $3f
    ld [hl-], a                                   ; $47be: $32
    rra                                           ; $47bf: $1f
    dec e                                         ; $47c0: $1d
    rrca                                          ; $47c1: $0f
    dec bc                                        ; $47c2: $0b
    rrca                                          ; $47c3: $0f
    inc c                                         ; $47c4: $0c
    ld [bc], a                                    ; $47c5: $02
    dec de                                        ; $47c6: $1b
    add d                                         ; $47c7: $82
    ld l, d                                       ; $47c8: $6a
    ld a, d                                       ; $47c9: $7a
    ld [bc], a                                    ; $47ca: $02
    db $dd                                        ; $47cb: $dd
    add h                                         ; $47cc: $84
    ld a, [$7d9f]                                 ; $47cd: $fa $9f $7d
    ld a, a                                       ; $47d0: $7f
    ld [bc], a                                    ; $47d1: $02
    jr z, jr_0da_47d6                             ; $47d2: $28 $02

    inc a                                         ; $47d4: $3c
    add e                                         ; $47d5: $83

jr_0da_47d6:
    ld a, [hl-]                                   ; $47d6: $3a
    ld a, $36                                     ; $47d7: $3e $36
    ld [bc], a                                    ; $47d9: $02
    ld a, $8d                                     ; $47da: $3e $8d
    ld e, $3c                                     ; $47dc: $1e $3c
    inc l                                         ; $47de: $2c
    ld a, $1e                                     ; $47df: $3e $1e
    ld a, $12                                     ; $47e1: $3e $12
    inc a                                         ; $47e3: $3c
    inc l                                         ; $47e4: $2c
    jr c, jr_0da_47ef                             ; $47e5: $38 $08

    jr c, jr_0da_4801                             ; $47e7: $38 $18

    ld [bc], a                                    ; $47e9: $02
    inc e                                         ; $47ea: $1c
    sub h                                         ; $47eb: $94
    ld a, [hl-]                                   ; $47ec: $3a
    ld a, $3a                                     ; $47ed: $3e $3a

jr_0da_47ef:
    ld a, $3d                                     ; $47ef: $3e $3d
    ccf                                           ; $47f1: $3f
    add hl, sp                                    ; $47f2: $39
    ccf                                           ; $47f3: $3f
    adc l                                         ; $47f4: $8d
    adc a                                         ; $47f5: $8f
    adc l                                         ; $47f6: $8d
    adc a                                         ; $47f7: $8f
    ld a, l                                       ; $47f8: $7d
    ld a, a                                       ; $47f9: $7f
    ld a, [de]                                    ; $47fa: $1a
    rra                                           ; $47fb: $1f
    ld a, [de]                                    ; $47fc: $1a
    rra                                           ; $47fd: $1f
    daa                                           ; $47fe: $27
    ccf                                           ; $47ff: $3f
    ld [bc], a                                    ; $4800: $02

jr_0da_4801:
    inc e                                         ; $4801: $1c
    ld [de], a                                    ; $4802: $12
    nop                                           ; $4803: $00
    add h                                         ; $4804: $84
    ccf                                           ; $4805: $3f
    add hl, sp                                    ; $4806: $39
    ld a, $3a                                     ; $4807: $3e $3a
    inc b                                         ; $4809: $04
    inc a                                         ; $480a: $3c
    ld [bc], a                                    ; $480b: $02
    ld a, $81                                     ; $480c: $3e $81
    ld a, [de]                                    ; $480e: $1a
    inc bc                                        ; $480f: $03
    ld a, $82                                     ; $4810: $3e $82
    inc h                                         ; $4812: $24
    inc a                                         ; $4813: $3c
    ld [bc], a                                    ; $4814: $02
    jr jr_0da_4825                                ; $4815: $18 $0e

    nop                                           ; $4817: $00
    rst $38                                       ; $4818: $ff
    rlca                                          ; $4819: $07
    ld bc, $07f8                                  ; $481a: $01 $f8 $07
    di                                            ; $481d: $f3
    ld [bc], a                                    ; $481e: $02
    or $fa                                        ; $481f: $f6 $fa
    add [hl]                                      ; $4821: $86
    add hl, bc                                    ; $4822: $09
    nop                                           ; $4823: $00
    ld a, [bc]                                    ; $4824: $0a

jr_0da_4825:
    nop                                           ; $4825: $00
    ld b, h                                       ; $4826: $44
    ld b, b                                       ; $4827: $40
    inc b                                         ; $4828: $04
    nop                                           ; $4829: $00
    inc b                                         ; $482a: $04
    ldh [rNR12], a                                ; $482b: $e0 $12
    nop                                           ; $482d: $00
    rst $38                                       ; $482e: $ff
    dec c                                         ; $482f: $0d
    inc b                                         ; $4830: $04
    ld hl, sp+$07                                 ; $4831: $f8 $07
    di                                            ; $4833: $f3
    ld [bc], a                                    ; $4834: $02
    db $ec                                        ; $4835: $ec
    rst $30                                       ; $4836: $f7
    db $ec                                        ; $4837: $ec
    rst $38                                       ; $4838: $ff
    db $fc                                        ; $4839: $fc
    ei                                            ; $483a: $fb
    db $fc                                        ; $483b: $fc
    cp $02                                        ; $483c: $fe $02
    inc bc                                        ; $483e: $03
    ld [bc], a                                    ; $483f: $02
    rrca                                          ; $4840: $0f
    add d                                         ; $4841: $82
    add hl, sp                                    ; $4842: $39
    ccf                                           ; $4843: $3f
    ld [bc], a                                    ; $4844: $02
    rrca                                          ; $4845: $0f
    add h                                         ; $4846: $84
    rra                                           ; $4847: $1f
    ld a, [de]                                    ; $4848: $1a
    rrca                                          ; $4849: $0f
    ld c, $03                                     ; $484a: $0e $03
    rra                                           ; $484c: $1f
    adc c                                         ; $484d: $89
    add hl, de                                    ; $484e: $19
    rrca                                          ; $484f: $0f
    ld c, $0f                                     ; $4850: $0e $0f
    dec c                                         ; $4852: $0d
    dec de                                        ; $4853: $1b
    ld [de], a                                    ; $4854: $12
    ld a, [hl]                                    ; $4855: $7e
    ld h, [hl]                                    ; $4856: $66
    ld [bc], a                                    ; $4857: $02
    sbc a                                         ; $4858: $9f
    add d                                         ; $4859: $82
    adc [hl]                                      ; $485a: $8e
    adc a                                         ; $485b: $8f
    ld [bc], a                                    ; $485c: $02
    ld c, e                                       ; $485d: $4b
    ld [bc], a                                    ; $485e: $02
    inc sp                                        ; $485f: $33
    ld [bc], a                                    ; $4860: $02
    ret nc                                        ; $4861: $d0

    add l                                         ; $4862: $85
    ld a, b                                       ; $4863: $78
    ld hl, sp-$0c                                 ; $4864: $f8 $f4
    db $fc                                        ; $4866: $fc
    db $ec                                        ; $4867: $ec
    ld [bc], a                                    ; $4868: $02
    db $fc                                        ; $4869: $fc
    add e                                         ; $486a: $83
    cp h                                          ; $486b: $bc
    ld hl, sp-$28                                 ; $486c: $f8 $d8
    inc bc                                        ; $486e: $03
    db $fc                                        ; $486f: $fc
    sbc e                                         ; $4870: $9b
    inc h                                         ; $4871: $24
    ld hl, sp-$28                                 ; $4872: $f8 $d8
    ld hl, sp-$68                                 ; $4874: $f8 $98
    db $fc                                        ; $4876: $fc
    inc a                                         ; $4877: $3c
    cp d                                          ; $4878: $ba
    cp [hl]                                       ; $4879: $be
    ld a, d                                       ; $487a: $7a
    ld a, [hl]                                    ; $487b: $7e
    cp l                                          ; $487c: $bd
    rst $38                                       ; $487d: $ff
    ld a, c                                       ; $487e: $79
    rst $38                                       ; $487f: $ff
    ld a, a                                       ; $4880: $7f
    ld sp, hl                                     ; $4881: $f9
    scf                                           ; $4882: $37
    ccf                                           ; $4883: $3f
    ld [hl], a                                    ; $4884: $77
    ld a, a                                       ; $4885: $7f
    ld l, e                                       ; $4886: $6b
    ld a, a                                       ; $4887: $7f
    ld l, e                                       ; $4888: $6b
    ld a, a                                       ; $4889: $7f
    sbc l                                         ; $488a: $9d
    rst $38                                       ; $488b: $ff
    ld [bc], a                                    ; $488c: $02
    ld [hl], e                                    ; $488d: $73
    add d                                         ; $488e: $82
    ld [bc], a                                    ; $488f: $02
    inc bc                                        ; $4890: $03
    ld [bc], a                                    ; $4891: $02
    ld bc, $0010                                  ; $4892: $01 $10 $00
    add d                                         ; $4895: $82
    rlca                                          ; $4896: $07
    dec b                                         ; $4897: $05
    inc b                                         ; $4898: $04
    ld b, $02                                     ; $4899: $06 $02
    rlca                                          ; $489b: $07
    add c                                         ; $489c: $81
    dec b                                         ; $489d: $05
    inc bc                                        ; $489e: $03
    rlca                                          ; $489f: $07
    add d                                         ; $48a0: $82
    ld [bc], a                                    ; $48a1: $02
    ld b, $02                                     ; $48a2: $06 $02
    inc b                                         ; $48a4: $04
    stop                                          ; $48a5: $10 $00
    rst $38                                       ; $48a7: $ff
    add hl, bc                                    ; $48a8: $09
    ld [bc], a                                    ; $48a9: $02
    ld hl, sp+$07                                 ; $48aa: $f8 $07
    di                                            ; $48ac: $f3
    ld [bc], a                                    ; $48ad: $02
    or $f8                                        ; $48ae: $f6 $f8
    or $f9                                        ; $48b0: $f6 $f9
    ld [bc], a                                    ; $48b2: $02
    ld [$0284], sp                                ; $48b3: $08 $84 $02
    nop                                           ; $48b6: $00
    pop bc                                        ; $48b7: $c1
    ret nz                                        ; $48b8: $c0

    ld [bc], a                                    ; $48b9: $02
    ldh [rSC], a                                  ; $48ba: $e0 $02
    ld h, b                                       ; $48bc: $60
    jr jr_0da_48bf                                ; $48bd: $18 $00

jr_0da_48bf:
    add c                                         ; $48bf: $81
    ld bc, $001d                                  ; $48c0: $01 $1d $00
    rst $38                                       ; $48c3: $ff
    dec c                                         ; $48c4: $0d
    inc b                                         ; $48c5: $04
    ld hl, sp+$07                                 ; $48c6: $f8 $07
    di                                            ; $48c8: $f3
    ld [bc], a                                    ; $48c9: $02
    db $ec                                        ; $48ca: $ec
    ld hl, sp-$14                                 ; $48cb: $f8 $ec
    rst $38                                       ; $48cd: $ff
    db $fc                                        ; $48ce: $fc
    ei                                            ; $48cf: $fb
    db $fc                                        ; $48d0: $fc
    cp $02                                        ; $48d1: $fe $02
    rlca                                          ; $48d3: $07
    add h                                         ; $48d4: $84
    ld e, $1f                                     ; $48d5: $1e $1f
    ld [hl], e                                    ; $48d7: $73
    ld a, a                                       ; $48d8: $7f
    ld [bc], a                                    ; $48d9: $02
    rra                                           ; $48da: $1f
    add h                                         ; $48db: $84
    ccf                                           ; $48dc: $3f
    dec [hl]                                      ; $48dd: $35
    rra                                           ; $48de: $1f
    dec e                                         ; $48df: $1d
    inc bc                                        ; $48e0: $03
    ccf                                           ; $48e1: $3f
    add a                                         ; $48e2: $87
    ld [hl-], a                                   ; $48e3: $32
    ld a, a                                       ; $48e4: $7f
    ld a, l                                       ; $48e5: $7d
    sbc a                                         ; $48e6: $9f
    sub a                                         ; $48e7: $97
    sbc e                                         ; $48e8: $9b
    sub d                                         ; $48e9: $92
    ld [bc], a                                    ; $48ea: $02
    sbc l                                         ; $48eb: $9d
    adc b                                         ; $48ec: $88
    ld l, [hl]                                    ; $48ed: $6e
    ld a, [hl]                                    ; $48ee: $7e
    dec a                                         ; $48ef: $3d
    ccf                                           ; $48f0: $3f
    ld b, $07                                     ; $48f1: $06 $07
    ld b, $07                                     ; $48f3: $06 $07
    ld [bc], a                                    ; $48f5: $02
    ld d, b                                       ; $48f6: $50
    ld [bc], a                                    ; $48f7: $02
    ld a, b                                       ; $48f8: $78
    add e                                         ; $48f9: $83
    ld [hl], h                                    ; $48fa: $74
    ld a, h                                       ; $48fb: $7c
    ld l, h                                       ; $48fc: $6c
    ld [bc], a                                    ; $48fd: $02
    ld a, h                                       ; $48fe: $7c
    add e                                         ; $48ff: $83
    inc a                                         ; $4900: $3c
    ld a, b                                       ; $4901: $78
    ld e, b                                       ; $4902: $58
    inc bc                                        ; $4903: $03
    ld a, h                                       ; $4904: $7c
    adc [hl]                                      ; $4905: $8e
    inc h                                         ; $4906: $24
    ld a, b                                       ; $4907: $78
    ld e, b                                       ; $4908: $58
    ld a, b                                       ; $4909: $78
    jr jr_0da_4988                                ; $490a: $18 $7c

    inc a                                         ; $490c: $3c
    ld a, [hl-]                                   ; $490d: $3a
    ld a, $7a                                     ; $490e: $3e $7a
    ld a, [hl]                                    ; $4910: $7e
    dec a                                         ; $4911: $3d
    ld a, a                                       ; $4912: $7f
    ld a, c                                       ; $4913: $79
    ld [bc], a                                    ; $4914: $02
    ld a, a                                       ; $4915: $7f
    adc e                                         ; $4916: $8b
    ld a, c                                       ; $4917: $79
    ld [hl], a                                    ; $4918: $77
    ld a, a                                       ; $4919: $7f
    ld [hl], a                                    ; $491a: $77
    ld a, a                                       ; $491b: $7f
    ld l, e                                       ; $491c: $6b
    ld a, a                                       ; $491d: $7f
    ld l, e                                       ; $491e: $6b
    ld a, a                                       ; $491f: $7f
    sbc l                                         ; $4920: $9d
    rst $38                                       ; $4921: $ff
    ld [bc], a                                    ; $4922: $02
    ld [hl], e                                    ; $4923: $73
    add d                                         ; $4924: $82
    ld [bc], a                                    ; $4925: $02
    inc bc                                        ; $4926: $03
    ld [bc], a                                    ; $4927: $02
    ld bc, $0010                                  ; $4928: $01 $10 $00
    add d                                         ; $492b: $82
    rlca                                          ; $492c: $07
    dec b                                         ; $492d: $05
    inc b                                         ; $492e: $04
    ld b, $02                                     ; $492f: $06 $02
    rlca                                          ; $4931: $07
    add c                                         ; $4932: $81
    dec b                                         ; $4933: $05
    inc bc                                        ; $4934: $03
    rlca                                          ; $4935: $07
    add d                                         ; $4936: $82
    ld [bc], a                                    ; $4937: $02
    ld b, $02                                     ; $4938: $06 $02
    inc b                                         ; $493a: $04
    stop                                          ; $493b: $10 $00
    rst $38                                       ; $493d: $ff
    rlca                                          ; $493e: $07
    ld bc, $07f8                                  ; $493f: $01 $f8 $07
    di                                            ; $4942: $f3
    ld [bc], a                                    ; $4943: $02
    push af                                       ; $4944: $f5
    ld sp, hl                                     ; $4945: $f9
    ld [bc], a                                    ; $4946: $02
    ret nz                                        ; $4947: $c0

    ld [bc], a                                    ; $4948: $02
    ret z                                         ; $4949: $c8

    add e                                         ; $494a: $83
    push bc                                       ; $494b: $c5
    ret nz                                        ; $494c: $c0

    ld [bc], a                                    ; $494d: $02
    add hl, de                                    ; $494e: $19
    nop                                           ; $494f: $00
    rst $38                                       ; $4950: $ff
    dec c                                         ; $4951: $0d
    inc b                                         ; $4952: $04
    ld hl, sp+$07                                 ; $4953: $f8 $07
    di                                            ; $4955: $f3
    ld [bc], a                                    ; $4956: $02
    db $eb                                        ; $4957: $eb
    ld sp, hl                                     ; $4958: $f9
    db $eb                                        ; $4959: $eb
    rst $38                                       ; $495a: $ff
    ei                                            ; $495b: $fb
    ei                                            ; $495c: $fb
    ei                                            ; $495d: $fb
    rst $38                                       ; $495e: $ff
    ld [bc], a                                    ; $495f: $02
    rlca                                          ; $4960: $07
    add h                                         ; $4961: $84
    ld e, $1f                                     ; $4962: $1e $1f
    ld [hl], e                                    ; $4964: $73
    ld a, a                                       ; $4965: $7f
    ld [bc], a                                    ; $4966: $02
    rra                                           ; $4967: $1f
    add h                                         ; $4968: $84
    ccf                                           ; $4969: $3f
    dec [hl]                                      ; $496a: $35
    rra                                           ; $496b: $1f
    dec e                                         ; $496c: $1d
    ld [bc], a                                    ; $496d: $02
    ccf                                           ; $496e: $3f
    adc b                                         ; $496f: $88
    ld a, a                                       ; $4970: $7f
    ld [hl], d                                    ; $4971: $72
    sbc a                                         ; $4972: $9f
    sbc l                                         ; $4973: $9d
    adc a                                         ; $4974: $8f
    add a                                         ; $4975: $87
    sbc e                                         ; $4976: $9b
    sub d                                         ; $4977: $92
    ld [bc], a                                    ; $4978: $02
    cp $88                                        ; $4979: $fe $88
    xor l                                         ; $497b: $ad
    db $fd                                        ; $497c: $fd
    ld a, d                                       ; $497d: $7a
    ld a, a                                       ; $497e: $7f
    dec c                                         ; $497f: $0d
    rrca                                          ; $4980: $0f
    dec c                                         ; $4981: $0d
    rrca                                          ; $4982: $0f
    ld [bc], a                                    ; $4983: $02
    jr z, jr_0da_4988                             ; $4984: $28 $02

    inc a                                         ; $4986: $3c
    add e                                         ; $4987: $83

jr_0da_4988:
    ld a, [hl-]                                   ; $4988: $3a
    ld a, $36                                     ; $4989: $3e $36
    ld [bc], a                                    ; $498b: $02
    ld a, $83                                     ; $498c: $3e $83
    ld e, $3c                                     ; $498e: $1e $3c
    inc l                                         ; $4990: $2c
    inc bc                                        ; $4991: $03
    ld a, $87                                     ; $4992: $3e $87
    ld [de], a                                    ; $4994: $12
    inc a                                         ; $4995: $3c
    inc l                                         ; $4996: $2c
    jr c, jr_0da_49a1                             ; $4997: $38 $08

    jr c, jr_0da_49b3                             ; $4999: $38 $18

    ld [bc], a                                    ; $499b: $02
    inc a                                         ; $499c: $3c
    sub h                                         ; $499d: $94
    ld a, [hl-]                                   ; $499e: $3a
    ld a, $3a                                     ; $499f: $3e $3a

jr_0da_49a1:
    ld a, $3d                                     ; $49a1: $3e $3d
    ccf                                           ; $49a3: $3f
    add hl, sp                                    ; $49a4: $39
    ccf                                           ; $49a5: $3f
    ld [hl], a                                    ; $49a6: $77
    ld a, a                                       ; $49a7: $7f
    ld [hl], a                                    ; $49a8: $77
    ld a, a                                       ; $49a9: $7f
    ld l, e                                       ; $49aa: $6b
    ld a, a                                       ; $49ab: $7f
    ld l, e                                       ; $49ac: $6b
    ld a, a                                       ; $49ad: $7f
    ld l, e                                       ; $49ae: $6b
    ld a, a                                       ; $49af: $7f
    sbc l                                         ; $49b0: $9d
    rst $38                                       ; $49b1: $ff
    ld [bc], a                                    ; $49b2: $02

jr_0da_49b3:
    ld [hl], e                                    ; $49b3: $73
    add d                                         ; $49b4: $82
    ld [bc], a                                    ; $49b5: $02
    inc bc                                        ; $49b6: $03
    ld [bc], a                                    ; $49b7: $02
    ld bc, $000e                                  ; $49b8: $01 $0e $00
    add h                                         ; $49bb: $84
    rrca                                          ; $49bc: $0f
    add hl, bc                                    ; $49bd: $09
    ld c, $0a                                     ; $49be: $0e $0a
    inc b                                         ; $49c0: $04
    inc c                                         ; $49c1: $0c
    ld [bc], a                                    ; $49c2: $02
    ld c, $81                                     ; $49c3: $0e $81
    ld a, [bc]                                    ; $49c5: $0a
    inc bc                                        ; $49c6: $03
    ld c, $82                                     ; $49c7: $0e $82
    inc b                                         ; $49c9: $04
    inc c                                         ; $49ca: $0c
    ld [bc], a                                    ; $49cb: $02
    ld [$000e], sp                                ; $49cc: $08 $0e $00
    rst $38                                       ; $49cf: $ff
    rlca                                          ; $49d0: $07
    ld bc, $07f8                                  ; $49d1: $01 $f8 $07
    di                                            ; $49d4: $f3
    ld [bc], a                                    ; $49d5: $02
    di                                            ; $49d6: $f3
    ld sp, hl                                     ; $49d7: $f9
    ld [bc], a                                    ; $49d8: $02
    ld h, b                                       ; $49d9: $60
    ld [bc], a                                    ; $49da: $02
    ld [hl], b                                    ; $49db: $70
    ld [bc], a                                    ; $49dc: $02
    ld h, h                                       ; $49dd: $64
    add e                                         ; $49de: $83
    ld bc, $0200                                  ; $49df: $01 $00 $02
    rla                                           ; $49e2: $17
    nop                                           ; $49e3: $00
    rst $38                                       ; $49e4: $ff
    dec c                                         ; $49e5: $0d
    inc b                                         ; $49e6: $04
    ld hl, sp+$07                                 ; $49e7: $f8 $07
    di                                            ; $49e9: $f3
    ld [bc], a                                    ; $49ea: $02
    db $eb                                        ; $49eb: $eb
    ld sp, hl                                     ; $49ec: $f9
    db $eb                                        ; $49ed: $eb
    rst $38                                       ; $49ee: $ff
    ei                                            ; $49ef: $fb
    ei                                            ; $49f0: $fb
    ei                                            ; $49f1: $fb
    rst $38                                       ; $49f2: $ff
    ld [bc], a                                    ; $49f3: $02
    ld bc, $1f02                                  ; $49f4: $01 $02 $1f
    add c                                         ; $49f7: $81
    add hl, bc                                    ; $49f8: $09
    inc bc                                        ; $49f9: $03
    rrca                                          ; $49fa: $0f
    adc d                                         ; $49fb: $8a
    rra                                           ; $49fc: $1f
    dec e                                         ; $49fd: $1d
    ccf                                           ; $49fe: $3f
    ld a, $4f                                     ; $49ff: $3e $4f
    ld c, l                                       ; $4a01: $4d
    add a                                         ; $4a02: $87
    add l                                         ; $4a03: $85
    rst $08                                       ; $4a04: $cf
    rlc d                                         ; $4a05: $cb $02
    ld a, l                                       ; $4a07: $7d
    adc h                                         ; $4a08: $8c
    sub a                                         ; $4a09: $97
    rst $30                                       ; $4a0a: $f7
    sbc [hl]                                      ; $4a0b: $9e
    cp $6c                                        ; $4a0c: $fe $6c
    ld a, a                                       ; $4a0e: $7f
    dec e                                         ; $4a0f: $1d
    rra                                           ; $4a10: $1f
    dec c                                         ; $4a11: $0d
    rrca                                          ; $4a12: $0f
    dec e                                         ; $4a13: $1d
    rra                                           ; $4a14: $1f
    ld [bc], a                                    ; $4a15: $02
    jr c, @-$7c                                   ; $4a16: $38 $82

    ld l, $3e                                     ; $4a18: $2e $3e
    ld [bc], a                                    ; $4a1a: $02
    ccf                                           ; $4a1b: $3f
    add c                                         ; $4a1c: $81
    add hl, sp                                    ; $4a1d: $39
    ld [bc], a                                    ; $4a1e: $02
    ccf                                           ; $4a1f: $3f
    adc l                                         ; $4a20: $8d
    rla                                           ; $4a21: $17
    ccf                                           ; $4a22: $3f
    scf                                           ; $4a23: $37
    ccf                                           ; $4a24: $3f
    rra                                           ; $4a25: $1f
    ld a, $0a                                     ; $4a26: $3e $0a
    ccf                                           ; $4a28: $3f
    add hl, sp                                    ; $4a29: $39
    ld a, $26                                     ; $4a2a: $3e $26
    jr c, jr_0da_4a36                             ; $4a2c: $38 $08

    ld [bc], a                                    ; $4a2e: $02
    inc e                                         ; $4a2f: $1c
    sub h                                         ; $4a30: $94
    ld a, [hl-]                                   ; $4a31: $3a
    ld a, $3a                                     ; $4a32: $3e $3a
    ld a, $3d                                     ; $4a34: $3e $3d

jr_0da_4a36:
    ccf                                           ; $4a36: $3f
    add hl, sp                                    ; $4a37: $39
    ccf                                           ; $4a38: $3f
    ld [hl], a                                    ; $4a39: $77
    ld a, a                                       ; $4a3a: $7f
    ld l, e                                       ; $4a3b: $6b
    ld a, a                                       ; $4a3c: $7f
    ld l, e                                       ; $4a3d: $6b
    ld a, a                                       ; $4a3e: $7f
    ld l, e                                       ; $4a3f: $6b
    ld a, a                                       ; $4a40: $7f
    ld e, l                                       ; $4a41: $5d
    ld a, a                                       ; $4a42: $7f
    sbc l                                         ; $4a43: $9d
    rst $38                                       ; $4a44: $ff
    ld [bc], a                                    ; $4a45: $02
    ld [hl], e                                    ; $4a46: $73
    add d                                         ; $4a47: $82
    ld [bc], a                                    ; $4a48: $02
    inc bc                                        ; $4a49: $03
    ld [bc], a                                    ; $4a4a: $02
    ld bc, $000e                                  ; $4a4b: $01 $0e $00
    add h                                         ; $4a4e: $84
    rrca                                          ; $4a4f: $0f
    add hl, bc                                    ; $4a50: $09
    ld c, $0a                                     ; $4a51: $0e $0a
    ld b, $0c                                     ; $4a53: $06 $0c
    add c                                         ; $4a55: $81
    ld a, [bc]                                    ; $4a56: $0a
    inc bc                                        ; $4a57: $03
    ld c, $82                                     ; $4a58: $0e $82
    inc b                                         ; $4a5a: $04
    inc c                                         ; $4a5b: $0c
    ld [bc], a                                    ; $4a5c: $02
    ld [$000e], sp                                ; $4a5d: $08 $0e $00
    rst $38                                       ; $4a60: $ff
    rlca                                          ; $4a61: $07
    ld bc, $07f8                                  ; $4a62: $01 $f8 $07
    di                                            ; $4a65: $f3
    ld [bc], a                                    ; $4a66: $02
    pop af                                        ; $4a67: $f1
    ld a, [$6002]                                 ; $4a68: $fa $02 $60
    ld [bc], a                                    ; $4a6b: $02
    ldh a, [rSC]                                  ; $4a6c: $f0 $02
    ld h, b                                       ; $4a6e: $60
    ld [bc], a                                    ; $4a6f: $02
    inc b                                         ; $4a70: $04
    ld [bc], a                                    ; $4a71: $02
    nop                                           ; $4a72: $00
    add c                                         ; $4a73: $81
    inc bc                                        ; $4a74: $03
    dec d                                         ; $4a75: $15
    nop                                           ; $4a76: $00
    rst $38                                       ; $4a77: $ff
    dec c                                         ; $4a78: $0d
    inc b                                         ; $4a79: $04
    ld hl, sp+$07                                 ; $4a7a: $f8 $07
    di                                            ; $4a7c: $f3
    ld [bc], a                                    ; $4a7d: $02
    db $eb                                        ; $4a7e: $eb
    ld sp, hl                                     ; $4a7f: $f9
    db $eb                                        ; $4a80: $eb
    rst $38                                       ; $4a81: $ff
    ei                                            ; $4a82: $fb
    ei                                            ; $4a83: $fb
    ei                                            ; $4a84: $fb
    rst $38                                       ; $4a85: $ff
    ld [bc], a                                    ; $4a86: $02
    rlca                                          ; $4a87: $07
    add h                                         ; $4a88: $84
    ld e, $1f                                     ; $4a89: $1e $1f
    ld [hl], e                                    ; $4a8b: $73
    ld a, a                                       ; $4a8c: $7f
    ld [bc], a                                    ; $4a8d: $02
    rra                                           ; $4a8e: $1f
    sbc b                                         ; $4a8f: $98
    ccf                                           ; $4a90: $3f
    dec [hl]                                      ; $4a91: $35
    rra                                           ; $4a92: $1f
    dec e                                         ; $4a93: $1d
    ccf                                           ; $4a94: $3f
    ld a, [hl-]                                   ; $4a95: $3a
    ld a, a                                       ; $4a96: $7f
    ld [hl], d                                    ; $4a97: $72
    sbc a                                         ; $4a98: $9f
    sbc l                                         ; $4a99: $9d
    adc a                                         ; $4a9a: $8f
    add a                                         ; $4a9b: $87
    sbc e                                         ; $4a9c: $9b
    sub d                                         ; $4a9d: $92
    cp [hl]                                       ; $4a9e: $be
    cp $ad                                        ; $4a9f: $fe $ad
    db $fd                                        ; $4aa1: $fd
    ld a, [$0dff]                                 ; $4aa2: $fa $ff $0d
    rrca                                          ; $4aa5: $0f
    dec c                                         ; $4aa6: $0d
    rrca                                          ; $4aa7: $0f
    ld [bc], a                                    ; $4aa8: $02
    jr z, jr_0da_4aad                             ; $4aa9: $28 $02

    inc a                                         ; $4aab: $3c
    add e                                         ; $4aac: $83

jr_0da_4aad:
    ld a, [hl-]                                   ; $4aad: $3a
    ld a, $36                                     ; $4aae: $3e $36
    ld [bc], a                                    ; $4ab0: $02
    ld a, $83                                     ; $4ab1: $3e $83
    ld e, $3c                                     ; $4ab3: $1e $3c
    inc l                                         ; $4ab5: $2c
    inc bc                                        ; $4ab6: $03
    ld a, $87                                     ; $4ab7: $3e $87
    ld [de], a                                    ; $4ab9: $12
    inc a                                         ; $4aba: $3c
    inc l                                         ; $4abb: $2c
    jr c, jr_0da_4ac6                             ; $4abc: $38 $08

    jr c, jr_0da_4ad8                             ; $4abe: $38 $18

    ld [bc], a                                    ; $4ac0: $02
    inc e                                         ; $4ac1: $1c
    sub h                                         ; $4ac2: $94
    ld a, [hl-]                                   ; $4ac3: $3a
    ld a, $3a                                     ; $4ac4: $3e $3a

jr_0da_4ac6:
    ld a, $3d                                     ; $4ac6: $3e $3d
    ccf                                           ; $4ac8: $3f
    add hl, sp                                    ; $4ac9: $39
    ccf                                           ; $4aca: $3f
    ld [hl], a                                    ; $4acb: $77
    ld a, a                                       ; $4acc: $7f
    ld [hl], a                                    ; $4acd: $77
    ld a, a                                       ; $4ace: $7f
    ld l, e                                       ; $4acf: $6b
    ld a, a                                       ; $4ad0: $7f
    ld l, e                                       ; $4ad1: $6b
    ld a, a                                       ; $4ad2: $7f
    ld l, e                                       ; $4ad3: $6b
    ld a, a                                       ; $4ad4: $7f
    sbc l                                         ; $4ad5: $9d
    rst $38                                       ; $4ad6: $ff
    ld [bc], a                                    ; $4ad7: $02

jr_0da_4ad8:
    ld [hl], e                                    ; $4ad8: $73
    add d                                         ; $4ad9: $82
    ld [bc], a                                    ; $4ada: $02
    inc bc                                        ; $4adb: $03
    ld [bc], a                                    ; $4adc: $02
    ld bc, $000e                                  ; $4add: $01 $0e $00
    add h                                         ; $4ae0: $84
    rrca                                          ; $4ae1: $0f
    add hl, bc                                    ; $4ae2: $09
    ld c, $0a                                     ; $4ae3: $0e $0a
    inc b                                         ; $4ae5: $04
    inc c                                         ; $4ae6: $0c
    ld [bc], a                                    ; $4ae7: $02
    ld c, $81                                     ; $4ae8: $0e $81
    ld a, [bc]                                    ; $4aea: $0a
    inc bc                                        ; $4aeb: $03
    ld c, $82                                     ; $4aec: $0e $82
    inc b                                         ; $4aee: $04
    inc c                                         ; $4aef: $0c
    ld [bc], a                                    ; $4af0: $02
    ld [$000e], sp                                ; $4af1: $08 $0e $00
    rst $38                                       ; $4af4: $ff
    rlca                                          ; $4af5: $07
    ld bc, $07f8                                  ; $4af6: $01 $f8 $07
    di                                            ; $4af9: $f3
    ld [bc], a                                    ; $4afa: $02
    di                                            ; $4afb: $f3
    ld a, [$c002]                                 ; $4afc: $fa $02 $c0
    ld [bc], a                                    ; $4aff: $02
    ldh [rSC], a                                  ; $4b00: $e0 $02
    ret z                                         ; $4b02: $c8

    add e                                         ; $4b03: $83
    inc bc                                        ; $4b04: $03
    nop                                           ; $4b05: $00
    inc b                                         ; $4b06: $04
    rla                                           ; $4b07: $17
    nop                                           ; $4b08: $00
    rst $38                                       ; $4b09: $ff
    dec c                                         ; $4b0a: $0d
    inc b                                         ; $4b0b: $04
    ld hl, sp+$07                                 ; $4b0c: $f8 $07
    di                                            ; $4b0e: $f3
    ld [bc], a                                    ; $4b0f: $02
    db $eb                                        ; $4b10: $eb
    rst $30                                       ; $4b11: $f7
    db $eb                                        ; $4b12: $eb
    rst $38                                       ; $4b13: $ff
    ei                                            ; $4b14: $fb
    ld sp, hl                                     ; $4b15: $f9
    ei                                            ; $4b16: $fb
    rst $38                                       ; $4b17: $ff
    ld [bc], a                                    ; $4b18: $02
    ld bc, $0702                                  ; $4b19: $01 $02 $07
    add d                                         ; $4b1c: $82
    inc e                                         ; $4b1d: $1c
    rra                                           ; $4b1e: $1f
    ld [bc], a                                    ; $4b1f: $02
    rlca                                          ; $4b20: $07
    add d                                         ; $4b21: $82
    rrca                                          ; $4b22: $0f
    dec c                                         ; $4b23: $0d
    ld [bc], a                                    ; $4b24: $02
    rlca                                          ; $4b25: $07
    add h                                         ; $4b26: $84
    rrca                                          ; $4b27: $0f
    ld c, $0f                                     ; $4b28: $0e $0f
    inc c                                         ; $4b2a: $0c
    ld [bc], a                                    ; $4b2b: $02
    rlca                                          ; $4b2c: $07
    add d                                         ; $4b2d: $82
    inc bc                                        ; $4b2e: $03
    ld [bc], a                                    ; $4b2f: $02
    ld [bc], a                                    ; $4b30: $02
    rrca                                          ; $4b31: $0f
    add h                                         ; $4b32: $84
    ld a, [de]                                    ; $4b33: $1a
    ld [de], a                                    ; $4b34: $12
    ld a, [hl]                                    ; $4b35: $7e
    ld h, [hl]                                    ; $4b36: $66
    ld [bc], a                                    ; $4b37: $02
    sbc a                                         ; $4b38: $9f
    add d                                         ; $4b39: $82
    adc [hl]                                      ; $4b3a: $8e
    adc a                                         ; $4b3b: $8f
    ld [bc], a                                    ; $4b3c: $02
    ld c, e                                       ; $4b3d: $4b
    ld [bc], a                                    ; $4b3e: $02
    add sp, -$7b                                  ; $4b3f: $e8 $85
    cp h                                          ; $4b41: $bc
    db $fc                                        ; $4b42: $fc
    ld a, [$f6fe]                                 ; $4b43: $fa $fe $f6
    ld [bc], a                                    ; $4b46: $02
    cp $8d                                        ; $4b47: $fe $8d
    ld e, [hl]                                    ; $4b49: $5e
    db $fc                                        ; $4b4a: $fc
    ld l, h                                       ; $4b4b: $6c
    cp $be                                        ; $4b4c: $fe $be
    cp $92                                        ; $4b4e: $fe $92
    db $fc                                        ; $4b50: $fc
    ld l, h                                       ; $4b51: $6c
    ld hl, sp-$38                                 ; $4b52: $f8 $c8
    ld hl, sp+$18                                 ; $4b54: $f8 $18
    ld [bc], a                                    ; $4b56: $02
    call c, $ba94                                 ; $4b57: $dc $94 $ba
    cp [hl]                                       ; $4b5a: $be
    ld a, d                                       ; $4b5b: $7a
    ld a, [hl]                                    ; $4b5c: $7e
    cp l                                          ; $4b5d: $bd
    rst $38                                       ; $4b5e: $ff
    ld a, c                                       ; $4b5f: $79
    rst $38                                       ; $4b60: $ff
    call $1dcf                                    ; $4b61: $cd $cf $1d
    rra                                           ; $4b64: $1f
    dec e                                         ; $4b65: $1d
    rra                                           ; $4b66: $1f
    ld a, [de]                                    ; $4b67: $1a
    rra                                           ; $4b68: $1f
    ld a, [de]                                    ; $4b69: $1a
    rra                                           ; $4b6a: $1f
    daa                                           ; $4b6b: $27
    ccf                                           ; $4b6c: $3f
    ld [bc], a                                    ; $4b6d: $02
    inc e                                         ; $4b6e: $1c
    ld [de], a                                    ; $4b6f: $12
    nop                                           ; $4b70: $00
    add h                                         ; $4b71: $84
    ccf                                           ; $4b72: $3f
    add hl, sp                                    ; $4b73: $39
    ld a, $3a                                     ; $4b74: $3e $3a
    inc b                                         ; $4b76: $04
    inc a                                         ; $4b77: $3c
    ld [bc], a                                    ; $4b78: $02
    ld a, $81                                     ; $4b79: $3e $81
    ld a, [de]                                    ; $4b7b: $1a
    inc bc                                        ; $4b7c: $03
    ld a, $82                                     ; $4b7d: $3e $82
    inc h                                         ; $4b7f: $24
    inc a                                         ; $4b80: $3c
    ld [bc], a                                    ; $4b81: $02
    jr jr_0da_4b92                                ; $4b82: $18 $0e

    nop                                           ; $4b84: $00
    rst $38                                       ; $4b85: $ff
    add hl, bc                                    ; $4b86: $09
    ld [bc], a                                    ; $4b87: $02
    ld hl, sp+$07                                 ; $4b88: $f8 $07
    di                                            ; $4b8a: $f3
    ld [bc], a                                    ; $4b8b: $02
    or $f8                                        ; $4b8c: $f6 $f8
    or $fa                                        ; $4b8e: $f6 $fa
    add [hl]                                      ; $4b90: $86
    ld a, [bc]                                    ; $4b91: $0a

jr_0da_4b92:
    ld [$0002], sp                                ; $4b92: $08 $02 $00
    pop bc                                        ; $4b95: $c1
    ret nz                                        ; $4b96: $c0

    ld [bc], a                                    ; $4b97: $02
    ldh [rSC], a                                  ; $4b98: $e0 $02
    ld h, b                                       ; $4b9a: $60
    ld d, $00                                     ; $4b9b: $16 $00
    add e                                         ; $4b9d: $83
    ld bc, $0200                                  ; $4b9e: $01 $00 $02
    dec e                                         ; $4ba1: $1d
    nop                                           ; $4ba2: $00
    rst $38                                       ; $4ba3: $ff
    dec c                                         ; $4ba4: $0d
    inc b                                         ; $4ba5: $04
    ld hl, sp+$07                                 ; $4ba6: $f8 $07
    di                                            ; $4ba8: $f3
    ld [bc], a                                    ; $4ba9: $02
    db $eb                                        ; $4baa: $eb
    ld sp, hl                                     ; $4bab: $f9
    db $eb                                        ; $4bac: $eb
    rst $38                                       ; $4bad: $ff
    ei                                            ; $4bae: $fb
    ld sp, hl                                     ; $4baf: $f9
    ei                                            ; $4bb0: $fb
    rst $38                                       ; $4bb1: $ff
    ld [bc], a                                    ; $4bb2: $02
    rlca                                          ; $4bb3: $07
    add h                                         ; $4bb4: $84
    ld e, $1f                                     ; $4bb5: $1e $1f
    ld [hl], e                                    ; $4bb7: $73
    ld a, a                                       ; $4bb8: $7f
    ld [bc], a                                    ; $4bb9: $02
    rra                                           ; $4bba: $1f
    adc [hl]                                      ; $4bbb: $8e
    ccf                                           ; $4bbc: $3f
    dec [hl]                                      ; $4bbd: $35
    rra                                           ; $4bbe: $1f
    dec e                                         ; $4bbf: $1d
    ccf                                           ; $4bc0: $3f
    ld a, [hl-]                                   ; $4bc1: $3a
    ccf                                           ; $4bc2: $3f
    ld [hl-], a                                   ; $4bc3: $32
    rra                                           ; $4bc4: $1f
    dec e                                         ; $4bc5: $1d
    rrca                                          ; $4bc6: $0f
    dec bc                                        ; $4bc7: $0b
    rrca                                          ; $4bc8: $0f
    inc c                                         ; $4bc9: $0c
    ld [bc], a                                    ; $4bca: $02
    dec de                                        ; $4bcb: $1b
    add d                                         ; $4bcc: $82
    ld l, d                                       ; $4bcd: $6a
    ld a, d                                       ; $4bce: $7a
    ld [bc], a                                    ; $4bcf: $02
    db $dd                                        ; $4bd0: $dd
    add h                                         ; $4bd1: $84
    ld a, [$7d9f]                                 ; $4bd2: $fa $9f $7d
    ld a, a                                       ; $4bd5: $7f
    ld [bc], a                                    ; $4bd6: $02
    jr z, jr_0da_4bdb                             ; $4bd7: $28 $02

    inc a                                         ; $4bd9: $3c
    add e                                         ; $4bda: $83

jr_0da_4bdb:
    ld a, [hl-]                                   ; $4bdb: $3a
    ld a, $36                                     ; $4bdc: $3e $36
    ld [bc], a                                    ; $4bde: $02
    ld a, $83                                     ; $4bdf: $3e $83
    ld e, $3c                                     ; $4be1: $1e $3c
    inc l                                         ; $4be3: $2c
    inc bc                                        ; $4be4: $03
    ld a, $87                                     ; $4be5: $3e $87
    ld [de], a                                    ; $4be7: $12
    inc a                                         ; $4be8: $3c
    inc l                                         ; $4be9: $2c
    jr c, jr_0da_4bf4                             ; $4bea: $38 $08

    jr c, jr_0da_4c06                             ; $4bec: $38 $18

    ld [bc], a                                    ; $4bee: $02
    inc e                                         ; $4bef: $1c
    sub h                                         ; $4bf0: $94
    ld a, [hl-]                                   ; $4bf1: $3a
    ld a, $3a                                     ; $4bf2: $3e $3a

jr_0da_4bf4:
    ld a, $3d                                     ; $4bf4: $3e $3d
    ccf                                           ; $4bf6: $3f
    add hl, sp                                    ; $4bf7: $39
    ccf                                           ; $4bf8: $3f
    adc l                                         ; $4bf9: $8d
    adc a                                         ; $4bfa: $8f
    adc l                                         ; $4bfb: $8d
    adc a                                         ; $4bfc: $8f
    ld a, l                                       ; $4bfd: $7d
    ld a, a                                       ; $4bfe: $7f
    ld a, [de]                                    ; $4bff: $1a
    rra                                           ; $4c00: $1f
    ld a, [de]                                    ; $4c01: $1a
    rra                                           ; $4c02: $1f
    daa                                           ; $4c03: $27
    ccf                                           ; $4c04: $3f
    ld [bc], a                                    ; $4c05: $02

jr_0da_4c06:
    inc e                                         ; $4c06: $1c
    ld [de], a                                    ; $4c07: $12
    nop                                           ; $4c08: $00
    add h                                         ; $4c09: $84
    ccf                                           ; $4c0a: $3f
    add hl, sp                                    ; $4c0b: $39
    ld a, $3a                                     ; $4c0c: $3e $3a
    inc b                                         ; $4c0e: $04
    inc a                                         ; $4c0f: $3c
    ld [bc], a                                    ; $4c10: $02
    ld a, $81                                     ; $4c11: $3e $81
    ld a, [de]                                    ; $4c13: $1a
    inc bc                                        ; $4c14: $03
    ld a, $82                                     ; $4c15: $3e $82
    inc h                                         ; $4c17: $24
    inc a                                         ; $4c18: $3c
    ld [bc], a                                    ; $4c19: $02
    jr jr_0da_4c2a                                ; $4c1a: $18 $0e

    nop                                           ; $4c1c: $00
    rst $38                                       ; $4c1d: $ff
    rlca                                          ; $4c1e: $07
    ld bc, $07f8                                  ; $4c1f: $01 $f8 $07
    di                                            ; $4c22: $f3
    ld [bc], a                                    ; $4c23: $02
    or $fa                                        ; $4c24: $f6 $fa
    add [hl]                                      ; $4c26: $86
    add hl, bc                                    ; $4c27: $09
    nop                                           ; $4c28: $00
    ld a, [bc]                                    ; $4c29: $0a

jr_0da_4c2a:
    nop                                           ; $4c2a: $00
    ld b, h                                       ; $4c2b: $44
    ld b, b                                       ; $4c2c: $40
    inc b                                         ; $4c2d: $04
    nop                                           ; $4c2e: $00
    inc b                                         ; $4c2f: $04
    ldh [rNR12], a                                ; $4c30: $e0 $12
    nop                                           ; $4c32: $00
    rst $38                                       ; $4c33: $ff
    dec c                                         ; $4c34: $0d
    inc b                                         ; $4c35: $04
    ld hl, sp+$07                                 ; $4c36: $f8 $07
    di                                            ; $4c38: $f3
    ld [bc], a                                    ; $4c39: $02
    db $eb                                        ; $4c3a: $eb
    ei                                            ; $4c3b: $fb
    db $ec                                        ; $4c3c: $ec
    cp $fb                                        ; $4c3d: $fe $fb
    ld a, [$fcfb]                                 ; $4c3f: $fa $fb $fc
    ld [bc], a                                    ; $4c42: $02
    add hl, de                                    ; $4c43: $19
    sbc [hl]                                      ; $4c44: $9e
    rla                                           ; $4c45: $17
    rra                                           ; $4c46: $1f
    ld a, [hl]                                    ; $4c47: $7e
    ld a, a                                       ; $4c48: $7f
    ld e, a                                       ; $4c49: $5f
    ld a, a                                       ; $4c4a: $7f
    rst $28                                       ; $4c4b: $ef
    cp $ff                                        ; $4c4c: $fe $ff
    ld sp, hl                                     ; $4c4e: $f9
    ld a, e                                       ; $4c4f: $7b
    ld a, [hl]                                    ; $4c50: $7e
    ld a, a                                       ; $4c51: $7f
    ld [hl], d                                    ; $4c52: $72
    ccf                                           ; $4c53: $3f
    dec hl                                        ; $4c54: $2b
    rra                                           ; $4c55: $1f
    db $10                                        ; $4c56: $10
    ccf                                           ; $4c57: $3f
    add hl, sp                                    ; $4c58: $39
    ld d, [hl]                                    ; $4c59: $56
    halt                                          ; $4c5a: $76
    xor e                                         ; $4c5b: $ab
    ei                                            ; $4c5c: $fb
    ld l, l                                       ; $4c5d: $6d
    ld a, l                                       ; $4c5e: $7d
    ld c, e                                       ; $4c5f: $4b
    ld a, a                                       ; $4c60: $7f
    ld c, l                                       ; $4c61: $4d
    ld a, a                                       ; $4c62: $7f
    ld [bc], a                                    ; $4c63: $02
    inc b                                         ; $4c64: $04
    add d                                         ; $4c65: $82
    inc bc                                        ; $4c66: $03
    rlca                                          ; $4c67: $07
    ld [bc], a                                    ; $4c68: $02
    ld b, $02                                     ; $4c69: $06 $02
    inc b                                         ; $4c6b: $04
    add d                                         ; $4c6c: $82
    ld b, $02                                     ; $4c6d: $06 $02
    ld [bc], a                                    ; $4c6f: $02
    inc b                                         ; $4c70: $04
    inc bc                                        ; $4c71: $03
    ld b, $81                                     ; $4c72: $06 $81
    ld [bc], a                                    ; $4c74: $02
    ld [bc], a                                    ; $4c75: $02
    inc b                                         ; $4c76: $04
    inc c                                         ; $4c77: $0c
    nop                                           ; $4c78: $00
    sub b                                         ; $4c79: $90
    ld l, b                                       ; $4c7a: $68
    ld hl, sp+$20                                 ; $4c7b: $f8 $20
    jr nc, jr_0da_4cbe                            ; $4c7d: $30 $3f

    daa                                           ; $4c7f: $27
    ld a, a                                       ; $4c80: $7f
    ld d, h                                       ; $4c81: $54
    dec a                                         ; $4c82: $3d
    ccf                                           ; $4c83: $3f
    ei                                            ; $4c84: $fb
    rst $38                                       ; $4c85: $ff
    cp a                                          ; $4c86: $bf
    rst $38                                       ; $4c87: $ff
    ld e, b                                       ; $4c88: $58
    ld a, a                                       ; $4c89: $7f
    ld [bc], a                                    ; $4c8a: $02
    ccf                                           ; $4c8b: $3f
    ld [de], a                                    ; $4c8c: $12
    nop                                           ; $4c8d: $00
    ld a, [bc]                                    ; $4c8e: $0a
    ld [bc], a                                    ; $4c8f: $02
    ld [bc], a                                    ; $4c90: $02
    inc bc                                        ; $4c91: $03
    ld [bc], a                                    ; $4c92: $02
    ld [bc], a                                    ; $4c93: $02
    stop                                          ; $4c94: $10 $00
    rst $38                                       ; $4c96: $ff
    rlca                                          ; $4c97: $07
    ld bc, $07f8                                  ; $4c98: $01 $f8 $07
    di                                            ; $4c9b: $f3
    ld [bc], a                                    ; $4c9c: $02
    or $fa                                        ; $4c9d: $f6 $fa
    add l                                         ; $4c9f: $85
    inc b                                         ; $4ca0: $04
    nop                                           ; $4ca1: $00
    ld [bc], a                                    ; $4ca2: $02
    nop                                           ; $4ca3: $00
    ld bc, $000b                                  ; $4ca4: $01 $0b $00
    ld [bc], a                                    ; $4ca7: $02
    ld b, b                                       ; $4ca8: $40
    ld c, $00                                     ; $4ca9: $0e $00
    rst $38                                       ; $4cab: $ff
    dec c                                         ; $4cac: $0d
    inc b                                         ; $4cad: $04
    ld hl, sp+$07                                 ; $4cae: $f8 $07
    di                                            ; $4cb0: $f3
    ld [bc], a                                    ; $4cb1: $02
    db $eb                                        ; $4cb2: $eb
    ei                                            ; $4cb3: $fb
    db $ec                                        ; $4cb4: $ec
    cp $fb                                        ; $4cb5: $fe $fb
    ld a, [$fcfb]                                 ; $4cb7: $fa $fb $fc
    ld [bc], a                                    ; $4cba: $02
    add hl, de                                    ; $4cbb: $19
    sbc [hl]                                      ; $4cbc: $9e
    rla                                           ; $4cbd: $17

jr_0da_4cbe:
    rra                                           ; $4cbe: $1f
    ld a, [hl]                                    ; $4cbf: $7e
    ld a, a                                       ; $4cc0: $7f
    ld e, a                                       ; $4cc1: $5f
    ld a, a                                       ; $4cc2: $7f
    rst $18                                       ; $4cc3: $df
    db $fc                                        ; $4cc4: $fc
    rst $38                                       ; $4cc5: $ff
    ei                                            ; $4cc6: $fb
    ld [hl], a                                    ; $4cc7: $77
    ld a, l                                       ; $4cc8: $7d
    ld a, a                                       ; $4cc9: $7f
    ld [hl], l                                    ; $4cca: $75
    ccf                                           ; $4ccb: $3f
    dec hl                                        ; $4ccc: $2b
    rra                                           ; $4ccd: $1f
    db $10                                        ; $4cce: $10
    ccf                                           ; $4ccf: $3f
    add hl, sp                                    ; $4cd0: $39
    ld d, [hl]                                    ; $4cd1: $56
    halt                                          ; $4cd2: $76
    xor e                                         ; $4cd3: $ab
    ei                                            ; $4cd4: $fb
    ld l, l                                       ; $4cd5: $6d
    ld a, l                                       ; $4cd6: $7d
    ld e, e                                       ; $4cd7: $5b
    ld a, a                                       ; $4cd8: $7f
    ld c, l                                       ; $4cd9: $4d
    ld a, a                                       ; $4cda: $7f
    ld [bc], a                                    ; $4cdb: $02
    inc b                                         ; $4cdc: $04
    add d                                         ; $4cdd: $82
    inc bc                                        ; $4cde: $03
    rlca                                          ; $4cdf: $07
    ld [bc], a                                    ; $4ce0: $02
    ld b, $02                                     ; $4ce1: $06 $02
    inc b                                         ; $4ce3: $04
    add d                                         ; $4ce4: $82
    ld b, $02                                     ; $4ce5: $06 $02
    dec b                                         ; $4ce7: $05
    ld b, $81                                     ; $4ce8: $06 $81
    ld [bc], a                                    ; $4cea: $02
    ld [bc], a                                    ; $4ceb: $02
    inc b                                         ; $4cec: $04
    inc c                                         ; $4ced: $0c
    nop                                           ; $4cee: $00
    adc e                                         ; $4cef: $8b
    ld l, b                                       ; $4cf0: $68
    ld hl, sp+$20                                 ; $4cf1: $f8 $20
    jr nc, @+$40                                  ; $4cf3: $30 $3e

    cpl                                           ; $4cf5: $2f
    ccf                                           ; $4cf6: $3f
    daa                                           ; $4cf7: $27
    dec de                                        ; $4cf8: $1b
    add hl, de                                    ; $4cf9: $19
    cp e                                          ; $4cfa: $bb
    ld [bc], a                                    ; $4cfb: $02
    cp a                                          ; $4cfc: $bf
    add e                                         ; $4cfd: $83
    rst $38                                       ; $4cfe: $ff
    ld e, b                                       ; $4cff: $58
    ld a, a                                       ; $4d00: $7f
    ld [bc], a                                    ; $4d01: $02
    ccf                                           ; $4d02: $3f
    ld [de], a                                    ; $4d03: $12
    nop                                           ; $4d04: $00
    ld a, [bc]                                    ; $4d05: $0a
    ld [bc], a                                    ; $4d06: $02
    ld [bc], a                                    ; $4d07: $02
    inc bc                                        ; $4d08: $03
    ld [bc], a                                    ; $4d09: $02
    ld [bc], a                                    ; $4d0a: $02
    stop                                          ; $4d0b: $10 $00
    rst $38                                       ; $4d0d: $ff
    rlca                                          ; $4d0e: $07
    ld bc, $07f8                                  ; $4d0f: $01 $f8 $07
    di                                            ; $4d12: $f3
    ld [bc], a                                    ; $4d13: $02
    or $fa                                        ; $4d14: $f6 $fa
    add l                                         ; $4d16: $85
    inc b                                         ; $4d17: $04
    nop                                           ; $4d18: $00
    ld [bc], a                                    ; $4d19: $02
    nop                                           ; $4d1a: $00
    ld bc, $0009                                  ; $4d1b: $01 $09 $00
    ld [bc], a                                    ; $4d1e: $02
    ld b, b                                       ; $4d1f: $40
    ld [bc], a                                    ; $4d20: $02
    db $e4                                        ; $4d21: $e4
    ld [bc], a                                    ; $4d22: $02
    ld b, b                                       ; $4d23: $40
    inc c                                         ; $4d24: $0c
    nop                                           ; $4d25: $00
    rst $38                                       ; $4d26: $ff
    dec c                                         ; $4d27: $0d
    inc b                                         ; $4d28: $04
    ld hl, sp+$07                                 ; $4d29: $f8 $07
    di                                            ; $4d2b: $f3
    ld [bc], a                                    ; $4d2c: $02
    db $eb                                        ; $4d2d: $eb
    ei                                            ; $4d2e: $fb
    db $eb                                        ; $4d2f: $eb
    cp $fb                                        ; $4d30: $fe $fb
    ld a, [$fcfb]                                 ; $4d32: $fa $fb $fc
    ld [bc], a                                    ; $4d35: $02
    ld c, $9e                                     ; $4d36: $0e $9e
    dec sp                                        ; $4d38: $3b
    ccf                                           ; $4d39: $3f
    ld e, a                                       ; $4d3a: $5f
    ld a, a                                       ; $4d3b: $7f
    ld e, a                                       ; $4d3c: $5f
    ld a, a                                       ; $4d3d: $7f
    rst $38                                       ; $4d3e: $ff
    di                                            ; $4d3f: $f3
    rst $38                                       ; $4d40: $ff
    or $7f                                        ; $4d41: $f6 $7f
    ld a, l                                       ; $4d43: $7d
    ld a, a                                       ; $4d44: $7f
    ld c, c                                       ; $4d45: $49
    ccf                                           ; $4d46: $3f
    ld [hl], $1f                                  ; $4d47: $36 $1f
    ld de, $383f                                  ; $4d49: $11 $3f $38
    ld d, a                                       ; $4d4c: $57
    ld [hl], a                                    ; $4d4d: $77
    xor e                                         ; $4d4e: $ab
    ei                                            ; $4d4f: $fb
    ld l, l                                       ; $4d50: $6d
    ld a, l                                       ; $4d51: $7d
    ld e, e                                       ; $4d52: $5b
    ld a, a                                       ; $4d53: $7f
    ld c, l                                       ; $4d54: $4d
    ld a, a                                       ; $4d55: $7f
    inc b                                         ; $4d56: $04
    inc b                                         ; $4d57: $04
    add d                                         ; $4d58: $82
    ld [bc], a                                    ; $4d59: $02
    ld b, $02                                     ; $4d5a: $06 $02
    rlca                                          ; $4d5c: $07
    add d                                         ; $4d5d: $82
    ld b, $02                                     ; $4d5e: $06 $02
    inc bc                                        ; $4d60: $03
    ld b, $83                                     ; $4d61: $06 $83
    ld [bc], a                                    ; $4d63: $02
    ld b, $02                                     ; $4d64: $06 $02
    inc b                                         ; $4d66: $04
    ld b, $02                                     ; $4d67: $06 $02
    inc b                                         ; $4d69: $04
    ld a, [bc]                                    ; $4d6a: $0a
    nop                                           ; $4d6b: $00
    add c                                         ; $4d6c: $81
    ld h, $02                                     ; $4d6d: $26 $02
    ccf                                           ; $4d6f: $3f
    add e                                         ; $4d70: $83
    cpl                                           ; $4d71: $2f
    ld a, e                                       ; $4d72: $7b
    ld h, e                                       ; $4d73: $63
    ld [bc], a                                    ; $4d74: $02
    ld d, c                                       ; $4d75: $51
    ld [bc], a                                    ; $4d76: $02
    cp e                                          ; $4d77: $bb
    add h                                         ; $4d78: $84
    rra                                           ; $4d79: $1f
    ld e, a                                       ; $4d7a: $5f
    ld e, b                                       ; $4d7b: $58
    ld a, a                                       ; $4d7c: $7f
    ld [bc], a                                    ; $4d7d: $02
    ccf                                           ; $4d7e: $3f
    stop                                          ; $4d7f: $10 $00
    ld [bc], a                                    ; $4d81: $02
    ld [bc], a                                    ; $4d82: $02
    ld [bc], a                                    ; $4d83: $02
    nop                                           ; $4d84: $00
    ld [$0202], sp                                ; $4d85: $08 $02 $02
    inc bc                                        ; $4d88: $03
    ld [bc], a                                    ; $4d89: $02
    ld [bc], a                                    ; $4d8a: $02
    stop                                          ; $4d8b: $10 $00
    rst $38                                       ; $4d8d: $ff
    add hl, bc                                    ; $4d8e: $09
    ld [bc], a                                    ; $4d8f: $02
    ld hl, sp+$07                                 ; $4d90: $f8 $07
    di                                            ; $4d92: $f3
    ld [bc], a                                    ; $4d93: $02
    or $fa                                        ; $4d94: $f6 $fa
    or $fb                                        ; $4d96: $f6 $fb
    add l                                         ; $4d98: $85
    inc b                                         ; $4d99: $04
    nop                                           ; $4d9a: $00
    ld [bc], a                                    ; $4d9b: $02
    nop                                           ; $4d9c: $00
    ld bc, $0009                                  ; $4d9d: $01 $09 $00
    ld [bc], a                                    ; $4da0: $02
    inc b                                         ; $4da1: $04
    ld [bc], a                                    ; $4da2: $02
    xor [hl]                                      ; $4da3: $ae
    ld [bc], a                                    ; $4da4: $02
    ld b, h                                       ; $4da5: $44
    ld [bc], a                                    ; $4da6: $02
    and b                                         ; $4da7: $a0
    ld d, $00                                     ; $4da8: $16 $00
    ld [bc], a                                    ; $4daa: $02
    ld bc, $0012                                  ; $4dab: $01 $12 $00
    rst $38                                       ; $4dae: $ff
    dec c                                         ; $4daf: $0d
    inc b                                         ; $4db0: $04
    ld hl, sp+$07                                 ; $4db1: $f8 $07
    di                                            ; $4db3: $f3
    ld [bc], a                                    ; $4db4: $02
    db $eb                                        ; $4db5: $eb
    ei                                            ; $4db6: $fb
    db $eb                                        ; $4db7: $eb
    cp $fb                                        ; $4db8: $fe $fb
    ld a, [$fcfb]                                 ; $4dba: $fa $fb $fc
    ld [bc], a                                    ; $4dbd: $02
    ld c, $9e                                     ; $4dbe: $0e $9e
    dec sp                                        ; $4dc0: $3b
    ccf                                           ; $4dc1: $3f
    ld e, a                                       ; $4dc2: $5f
    ld a, a                                       ; $4dc3: $7f
    ld e, a                                       ; $4dc4: $5f
    ld a, a                                       ; $4dc5: $7f
    rst $38                                       ; $4dc6: $ff
    di                                            ; $4dc7: $f3
    rst $38                                       ; $4dc8: $ff
    or $7f                                        ; $4dc9: $f6 $7f
    ld a, l                                       ; $4dcb: $7d
    ld a, a                                       ; $4dcc: $7f
    ld c, c                                       ; $4dcd: $49
    ccf                                           ; $4dce: $3f
    ld [hl], $1f                                  ; $4dcf: $36 $1f
    ld de, $383f                                  ; $4dd1: $11 $3f $38
    ld d, a                                       ; $4dd4: $57
    ld [hl], a                                    ; $4dd5: $77
    xor e                                         ; $4dd6: $ab
    ei                                            ; $4dd7: $fb
    ld l, l                                       ; $4dd8: $6d
    ld a, l                                       ; $4dd9: $7d
    ld e, e                                       ; $4dda: $5b
    ld a, a                                       ; $4ddb: $7f
    dec c                                         ; $4ddc: $0d
    ccf                                           ; $4ddd: $3f
    inc b                                         ; $4dde: $04
    inc b                                         ; $4ddf: $04
    add d                                         ; $4de0: $82
    ld [bc], a                                    ; $4de1: $02
    ld b, $02                                     ; $4de2: $06 $02
    rlca                                          ; $4de4: $07
    add d                                         ; $4de5: $82
    ld b, $02                                     ; $4de6: $06 $02
    inc bc                                        ; $4de8: $03
    ld b, $83                                     ; $4de9: $06 $83
    ld [bc], a                                    ; $4deb: $02
    ld b, $02                                     ; $4dec: $06 $02
    inc b                                         ; $4dee: $04
    ld b, $02                                     ; $4def: $06 $02
    inc b                                         ; $4df1: $04
    ld a, [bc]                                    ; $4df2: $0a
    nop                                           ; $4df3: $00
    add [hl]                                      ; $4df4: $86
    ld h, $3f                                     ; $4df5: $26 $3f
    ld a, $26                                     ; $4df7: $3e $26
    ld a, a                                       ; $4df9: $7f
    ld d, h                                       ; $4dfa: $54
    ld [bc], a                                    ; $4dfb: $02
    ld [hl], l                                    ; $4dfc: $75
    ld [bc], a                                    ; $4dfd: $02
    ei                                            ; $4dfe: $fb
    add h                                         ; $4dff: $84
    or l                                          ; $4e00: $b5
    push af                                       ; $4e01: $f5
    ld e, b                                       ; $4e02: $58
    ld a, a                                       ; $4e03: $7f
    ld [bc], a                                    ; $4e04: $02
    ccf                                           ; $4e05: $3f
    ld d, $00                                     ; $4e06: $16 $00
    ld b, $02                                     ; $4e08: $06 $02
    ld [bc], a                                    ; $4e0a: $02
    inc bc                                        ; $4e0b: $03
    ld [bc], a                                    ; $4e0c: $02
    ld [bc], a                                    ; $4e0d: $02
    stop                                          ; $4e0e: $10 $00
    rst $38                                       ; $4e10: $ff
    rlca                                          ; $4e11: $07
    ld bc, $07f8                                  ; $4e12: $01 $f8 $07
    di                                            ; $4e15: $f3
    ld [bc], a                                    ; $4e16: $02
    or $fc                                        ; $4e17: $f6 $fc
    add l                                         ; $4e19: $85
    stop                                          ; $4e1a: $10 $00
    ld [$0400], sp                                ; $4e1c: $08 $00 $04
    inc bc                                        ; $4e1f: $03
    nop                                           ; $4e20: $00
    ld [bc], a                                    ; $4e21: $02
    add b                                         ; $4e22: $80
    ld [bc], a                                    ; $4e23: $02
    ld [bc], a                                    ; $4e24: $02
    ld [bc], a                                    ; $4e25: $02
    rlca                                          ; $4e26: $07
    ld [bc], a                                    ; $4e27: $02
    ld [bc], a                                    ; $4e28: $02
    ld [bc], a                                    ; $4e29: $02
    jr z, jr_0da_4e2e                             ; $4e2a: $28 $02

    db $10                                        ; $4e2c: $10
    ld [bc], a                                    ; $4e2d: $02

jr_0da_4e2e:
    jr z, jr_0da_4e3a                             ; $4e2e: $28 $0a

    nop                                           ; $4e30: $00
    rst $38                                       ; $4e31: $ff
    dec c                                         ; $4e32: $0d
    inc b                                         ; $4e33: $04
    ld hl, sp+$07                                 ; $4e34: $f8 $07
    di                                            ; $4e36: $f3
    ld [bc], a                                    ; $4e37: $02
    db $eb                                        ; $4e38: $eb
    ei                                            ; $4e39: $fb

jr_0da_4e3a:
    db $eb                                        ; $4e3a: $eb
    cp $fb                                        ; $4e3b: $fe $fb
    ld a, [$fcfb]                                 ; $4e3d: $fa $fb $fc
    ld [bc], a                                    ; $4e40: $02
    ld c, $9e                                     ; $4e41: $0e $9e
    dec sp                                        ; $4e43: $3b
    ccf                                           ; $4e44: $3f
    ld e, a                                       ; $4e45: $5f
    ld a, a                                       ; $4e46: $7f
    ld e, a                                       ; $4e47: $5f
    ld a, a                                       ; $4e48: $7f
    rst $38                                       ; $4e49: $ff
    di                                            ; $4e4a: $f3
    rst $38                                       ; $4e4b: $ff
    or $7f                                        ; $4e4c: $f6 $7f
    ld a, l                                       ; $4e4e: $7d
    ld a, a                                       ; $4e4f: $7f
    ld c, c                                       ; $4e50: $49
    ccf                                           ; $4e51: $3f
    ld [hl], $1f                                  ; $4e52: $36 $1f
    ld de, $383f                                  ; $4e54: $11 $3f $38
    ld d, a                                       ; $4e57: $57
    ld [hl], a                                    ; $4e58: $77
    xor e                                         ; $4e59: $ab
    ei                                            ; $4e5a: $fb
    ld l, l                                       ; $4e5b: $6d
    ld a, l                                       ; $4e5c: $7d
    dec bc                                        ; $4e5d: $0b
    ccf                                           ; $4e5e: $3f
    dec c                                         ; $4e5f: $0d
    rra                                           ; $4e60: $1f
    inc b                                         ; $4e61: $04
    inc b                                         ; $4e62: $04
    add d                                         ; $4e63: $82
    ld [bc], a                                    ; $4e64: $02
    ld b, $02                                     ; $4e65: $06 $02
    rlca                                          ; $4e67: $07
    add d                                         ; $4e68: $82
    ld b, $02                                     ; $4e69: $06 $02
    inc bc                                        ; $4e6b: $03
    ld b, $83                                     ; $4e6c: $06 $83
    ld [bc], a                                    ; $4e6e: $02
    ld b, $02                                     ; $4e6f: $06 $02
    inc b                                         ; $4e71: $04
    ld b, $02                                     ; $4e72: $06 $02
    inc b                                         ; $4e74: $04
    ld a, [bc]                                    ; $4e75: $0a
    nop                                           ; $4e76: $00
    adc [hl]                                      ; $4e77: $8e
    ld [bc], a                                    ; $4e78: $02
    dec de                                        ; $4e79: $1b
    ld a, $26                                     ; $4e7a: $3e $26
    ld a, a                                       ; $4e7c: $7f
    ld d, h                                       ; $4e7d: $54
    ld a, h                                       ; $4e7e: $7c
    ld a, [hl]                                    ; $4e7f: $7e
    ei                                            ; $4e80: $fb
    rst $38                                       ; $4e81: $ff
    cp a                                          ; $4e82: $bf
    rst $38                                       ; $4e83: $ff
    ld e, b                                       ; $4e84: $58
    ld a, a                                       ; $4e85: $7f
    ld [bc], a                                    ; $4e86: $02
    ccf                                           ; $4e87: $3f
    stop                                          ; $4e88: $10 $00
    inc b                                         ; $4e8a: $04
    ld [bc], a                                    ; $4e8b: $02
    ld [bc], a                                    ; $4e8c: $02
    nop                                           ; $4e8d: $00
    ld b, $02                                     ; $4e8e: $06 $02
    ld [bc], a                                    ; $4e90: $02
    inc bc                                        ; $4e91: $03
    ld [bc], a                                    ; $4e92: $02
    ld [bc], a                                    ; $4e93: $02
    stop                                          ; $4e94: $10 $00
    rst $38                                       ; $4e96: $ff
    add hl, bc                                    ; $4e97: $09
    ld [bc], a                                    ; $4e98: $02
    ld hl, sp+$07                                 ; $4e99: $f8 $07
    di                                            ; $4e9b: $f3
    ld [bc], a                                    ; $4e9c: $02
    or $fb                                        ; $4e9d: $f6 $fb
    or $fc                                        ; $4e9f: $f6 $fc
    add [hl]                                      ; $4ea1: $86
    ld [$0400], sp                                ; $4ea2: $08 $00 $04
    nop                                           ; $4ea5: $00
    ld [bc], a                                    ; $4ea6: $02
    nop                                           ; $4ea7: $00
    ld [bc], a                                    ; $4ea8: $02
    ld b, b                                       ; $4ea9: $40
    ld [bc], a                                    ; $4eaa: $02
    ldh [rSC], a                                  ; $4eab: $e0 $02
    ld c, b                                       ; $4ead: $48
    ld [bc], a                                    ; $4eae: $02
    ld [bc], a                                    ; $4eaf: $02
    ld [bc], a                                    ; $4eb0: $02
    ld bc, $0202                                  ; $4eb1: $01 $02 $02
    ld a, [de]                                    ; $4eb4: $1a
    nop                                           ; $4eb5: $00
    ld [bc], a                                    ; $4eb6: $02
    ld bc, $0002                                  ; $4eb7: $01 $02 $00
    ld [bc], a                                    ; $4eba: $02
    ld bc, $000e                                  ; $4ebb: $01 $0e $00
    rst $38                                       ; $4ebe: $ff
    dec c                                         ; $4ebf: $0d
    inc b                                         ; $4ec0: $04
    ld hl, sp+$07                                 ; $4ec1: $f8 $07
    di                                            ; $4ec3: $f3
    ld [bc], a                                    ; $4ec4: $02
    db $eb                                        ; $4ec5: $eb
    ei                                            ; $4ec6: $fb
    db $eb                                        ; $4ec7: $eb
    cp $fb                                        ; $4ec8: $fe $fb
    ld a, [$fcfb]                                 ; $4eca: $fa $fb $fc
    ld [bc], a                                    ; $4ecd: $02
    ld c, $9e                                     ; $4ece: $0e $9e
    dec sp                                        ; $4ed0: $3b
    ccf                                           ; $4ed1: $3f
    ld e, a                                       ; $4ed2: $5f
    ld a, a                                       ; $4ed3: $7f
    ld e, a                                       ; $4ed4: $5f
    ld a, a                                       ; $4ed5: $7f
    rst $38                                       ; $4ed6: $ff
    di                                            ; $4ed7: $f3
    rst $38                                       ; $4ed8: $ff
    or $7f                                        ; $4ed9: $f6 $7f
    ld a, l                                       ; $4edb: $7d
    ld a, a                                       ; $4edc: $7f
    ld c, c                                       ; $4edd: $49
    ccf                                           ; $4ede: $3f
    ld [hl], $1f                                  ; $4edf: $36 $1f
    ld de, $383f                                  ; $4ee1: $11 $3f $38
    ld d, a                                       ; $4ee4: $57
    ld [hl], a                                    ; $4ee5: $77
    xor e                                         ; $4ee6: $ab
    ei                                            ; $4ee7: $fb
    ld l, l                                       ; $4ee8: $6d
    ld a, l                                       ; $4ee9: $7d
    ld c, e                                       ; $4eea: $4b
    ld a, a                                       ; $4eeb: $7f
    ld b, l                                       ; $4eec: $45
    ld d, a                                       ; $4eed: $57
    inc b                                         ; $4eee: $04
    inc b                                         ; $4eef: $04
    add d                                         ; $4ef0: $82
    ld [bc], a                                    ; $4ef1: $02
    ld b, $02                                     ; $4ef2: $06 $02
    rlca                                          ; $4ef4: $07
    add d                                         ; $4ef5: $82
    ld b, $02                                     ; $4ef6: $06 $02
    inc bc                                        ; $4ef8: $03
    ld b, $83                                     ; $4ef9: $06 $83
    ld [bc], a                                    ; $4efb: $02

Call_0da_4efc:
    ld b, $02                                     ; $4efc: $06 $02
    inc b                                         ; $4efe: $04
    ld b, $02                                     ; $4eff: $06 $02
    inc b                                         ; $4f01: $04
    dec bc                                        ; $4f02: $0b
    nop                                           ; $4f03: $00
    adc l                                         ; $4f04: $8d
    ld de, $232b                                  ; $4f05: $11 $2b $23
    ld a, a                                       ; $4f08: $7f
    ld d, h                                       ; $4f09: $54
    ld a, l                                       ; $4f0a: $7d
    ld a, a                                       ; $4f0b: $7f
    ei                                            ; $4f0c: $fb
    rst $38                                       ; $4f0d: $ff
    cp a                                          ; $4f0e: $bf
    rst $38                                       ; $4f0f: $ff
    ld e, b                                       ; $4f10: $58
    ld a, a                                       ; $4f11: $7f
    ld [bc], a                                    ; $4f12: $02
    ccf                                           ; $4f13: $3f
    stop                                          ; $4f14: $10 $00
    inc c                                         ; $4f16: $0c
    ld [bc], a                                    ; $4f17: $02
    ld [bc], a                                    ; $4f18: $02
    inc bc                                        ; $4f19: $03
    ld [bc], a                                    ; $4f1a: $02
    ld [bc], a                                    ; $4f1b: $02
    stop                                          ; $4f1c: $10 $00
    rst $38                                       ; $4f1e: $ff
    add hl, bc                                    ; $4f1f: $09
    ld [bc], a                                    ; $4f20: $02
    ld hl, sp+$07                                 ; $4f21: $f8 $07
    di                                            ; $4f23: $f3
    ld [bc], a                                    ; $4f24: $02
    or $fb                                        ; $4f25: $f6 $fb
    or $fc                                        ; $4f27: $f6 $fc
    add l                                         ; $4f29: $85
    ld [$0400], sp                                ; $4f2a: $08 $00 $04
    nop                                           ; $4f2d: $00
    ld [bc], a                                    ; $4f2e: $02
    inc bc                                        ; $4f2f: $03
    nop                                           ; $4f30: $00
    ld [bc], a                                    ; $4f31: $02
    xor b                                         ; $4f32: $a8
    ld [bc], a                                    ; $4f33: $02
    ld e, h                                       ; $4f34: $5c
    ld [bc], a                                    ; $4f35: $02
    xor b                                         ; $4f36: $a8
    jr jr_0da_4f39                                ; $4f37: $18 $00

jr_0da_4f39:
    ld [bc], a                                    ; $4f39: $02
    ld bc, $0018                                  ; $4f3a: $01 $18 $00
    rst $38                                       ; $4f3d: $ff
    dec c                                         ; $4f3e: $0d
    inc b                                         ; $4f3f: $04
    ld hl, sp+$07                                 ; $4f40: $f8 $07
    di                                            ; $4f42: $f3
    ld [bc], a                                    ; $4f43: $02
    db $eb                                        ; $4f44: $eb
    ei                                            ; $4f45: $fb
    db $ec                                        ; $4f46: $ec
    cp $fb                                        ; $4f47: $fe $fb
    ld a, [$fcfb]                                 ; $4f49: $fa $fb $fc
    ld [bc], a                                    ; $4f4c: $02
    add hl, de                                    ; $4f4d: $19
    sbc [hl]                                      ; $4f4e: $9e
    rla                                           ; $4f4f: $17
    rra                                           ; $4f50: $1f
    ld a, [hl]                                    ; $4f51: $7e
    ld a, a                                       ; $4f52: $7f
    ld e, a                                       ; $4f53: $5f
    ld a, a                                       ; $4f54: $7f
    rst $18                                       ; $4f55: $df
    db $fc                                        ; $4f56: $fc
    rst $38                                       ; $4f57: $ff
    ei                                            ; $4f58: $fb
    ld [hl], a                                    ; $4f59: $77
    ld a, l                                       ; $4f5a: $7d
    ld a, a                                       ; $4f5b: $7f
    ld [hl], l                                    ; $4f5c: $75
    ccf                                           ; $4f5d: $3f
    dec hl                                        ; $4f5e: $2b
    rra                                           ; $4f5f: $1f
    db $10                                        ; $4f60: $10
    ccf                                           ; $4f61: $3f
    add hl, sp                                    ; $4f62: $39
    ld d, [hl]                                    ; $4f63: $56
    halt                                          ; $4f64: $76
    xor e                                         ; $4f65: $ab
    ei                                            ; $4f66: $fb
    ld c, l                                       ; $4f67: $4d
    ld e, l                                       ; $4f68: $5d
    ld c, d                                       ; $4f69: $4a
    ld a, [hl]                                    ; $4f6a: $7e
    ld c, l                                       ; $4f6b: $4d
    ld a, a                                       ; $4f6c: $7f
    ld [bc], a                                    ; $4f6d: $02
    inc b                                         ; $4f6e: $04
    add d                                         ; $4f6f: $82
    inc bc                                        ; $4f70: $03
    rlca                                          ; $4f71: $07
    ld [bc], a                                    ; $4f72: $02
    ld b, $02                                     ; $4f73: $06 $02
    inc b                                         ; $4f75: $04
    add d                                         ; $4f76: $82
    ld b, $02                                     ; $4f77: $06 $02
    dec b                                         ; $4f79: $05
    ld b, $81                                     ; $4f7a: $06 $81
    ld [bc], a                                    ; $4f7c: $02
    ld [bc], a                                    ; $4f7d: $02
    inc b                                         ; $4f7e: $04
    inc c                                         ; $4f7f: $0c
    nop                                           ; $4f80: $00
    sub b                                         ; $4f81: $90
    ld c, b                                       ; $4f82: $48
    ld e, b                                       ; $4f83: $58
    jr nz, @+$32                                  ; $4f84: $20 $30

    dec sp                                        ; $4f86: $3b
    inc hl                                        ; $4f87: $23
    ld [hl], l                                    ; $4f88: $75
    ld d, h                                       ; $4f89: $54
    ld a, l                                       ; $4f8a: $7d
    ld a, a                                       ; $4f8b: $7f
    ei                                            ; $4f8c: $fb
    rst $38                                       ; $4f8d: $ff
    cp a                                          ; $4f8e: $bf
    rst $38                                       ; $4f8f: $ff
    ld e, b                                       ; $4f90: $58
    ld a, a                                       ; $4f91: $7f
    ld [bc], a                                    ; $4f92: $02
    ccf                                           ; $4f93: $3f
    ld [de], a                                    ; $4f94: $12
    nop                                           ; $4f95: $00
    ld a, [bc]                                    ; $4f96: $0a
    ld [bc], a                                    ; $4f97: $02
    ld [bc], a                                    ; $4f98: $02
    inc bc                                        ; $4f99: $03
    ld [bc], a                                    ; $4f9a: $02
    ld [bc], a                                    ; $4f9b: $02
    stop                                          ; $4f9c: $10 $00
    rst $38                                       ; $4f9e: $ff
    rlca                                          ; $4f9f: $07
    ld bc, $07f8                                  ; $4fa0: $01 $f8 $07
    di                                            ; $4fa3: $f3
    ld [bc], a                                    ; $4fa4: $02
    or $fd                                        ; $4fa5: $f6 $fd
    add [hl]                                      ; $4fa7: $86
    jr nz, jr_0da_4faa                            ; $4fa8: $20 $00

jr_0da_4faa:
    stop                                          ; $4faa: $10 $00
    adc d                                         ; $4fac: $8a
    add d                                         ; $4fad: $82
    ld [bc], a                                    ; $4fae: $02
    rlca                                          ; $4faf: $07
    ld [bc], a                                    ; $4fb0: $02
    ld [bc], a                                    ; $4fb1: $02
    ld [bc], a                                    ; $4fb2: $02
    ld d, b                                       ; $4fb3: $50
    ld [bc], a                                    ; $4fb4: $02
    jr nz, @+$04                                  ; $4fb5: $20 $02

    ld d, b                                       ; $4fb7: $50
    stop                                          ; $4fb8: $10 $00
    rst $38                                       ; $4fba: $ff
    dec c                                         ; $4fbb: $0d
    inc b                                         ; $4fbc: $04
    ld hl, sp+$07                                 ; $4fbd: $f8 $07
    di                                            ; $4fbf: $f3
    ld [bc], a                                    ; $4fc0: $02
    db $eb                                        ; $4fc1: $eb
    ei                                            ; $4fc2: $fb
    db $ec                                        ; $4fc3: $ec
    cp $fb                                        ; $4fc4: $fe $fb
    ld a, [$fcfb]                                 ; $4fc6: $fa $fb $fc
    ld [bc], a                                    ; $4fc9: $02
    add hl, de                                    ; $4fca: $19
    sbc b                                         ; $4fcb: $98
    rla                                           ; $4fcc: $17
    rra                                           ; $4fcd: $1f
    ld a, [hl]                                    ; $4fce: $7e
    ld a, a                                       ; $4fcf: $7f
    ld e, a                                       ; $4fd0: $5f
    ld a, a                                       ; $4fd1: $7f
    rst $28                                       ; $4fd2: $ef
    cp $ff                                        ; $4fd3: $fe $ff
    ld sp, hl                                     ; $4fd5: $f9
    ld a, e                                       ; $4fd6: $7b
    ld a, [hl]                                    ; $4fd7: $7e
    ld a, a                                       ; $4fd8: $7f
    ld [hl], d                                    ; $4fd9: $72
    ccf                                           ; $4fda: $3f
    dec hl                                        ; $4fdb: $2b
    rra                                           ; $4fdc: $1f
    db $10                                        ; $4fdd: $10
    ccf                                           ; $4fde: $3f
    add hl, sp                                    ; $4fdf: $39
    ld d, [hl]                                    ; $4fe0: $56
    halt                                          ; $4fe1: $76
    adc c                                         ; $4fe2: $89
    reti                                          ; $4fe3: $d9


    ld [bc], a                                    ; $4fe4: $02
    dec c                                         ; $4fe5: $0d
    add h                                         ; $4fe6: $84
    ld a, [bc]                                    ; $4fe7: $0a
    ld e, $4d                                     ; $4fe8: $1e $4d
    ld a, a                                       ; $4fea: $7f
    ld [bc], a                                    ; $4feb: $02
    inc b                                         ; $4fec: $04
    add d                                         ; $4fed: $82
    inc bc                                        ; $4fee: $03
    rlca                                          ; $4fef: $07
    ld [bc], a                                    ; $4ff0: $02
    ld b, $02                                     ; $4ff1: $06 $02
    inc b                                         ; $4ff3: $04
    add d                                         ; $4ff4: $82
    ld b, $02                                     ; $4ff5: $06 $02
    ld [bc], a                                    ; $4ff7: $02
    inc b                                         ; $4ff8: $04
    inc bc                                        ; $4ff9: $03
    ld b, $81                                     ; $4ffa: $06 $81
    ld [bc], a                                    ; $4ffc: $02
    ld [bc], a                                    ; $4ffd: $02
    inc b                                         ; $4ffe: $04
    inc c                                         ; $4fff: $0c
    nop                                           ; $5000: $00
    sub b                                         ; $5001: $90
    ld h, b                                       ; $5002: $60
    ldh a, [rNR41]                                ; $5003: $f0 $20
    jr nc, jr_0da_5046                            ; $5005: $30 $3f

    inc sp                                        ; $5007: $33
    ld a, a                                       ; $5008: $7f
    ld l, d                                       ; $5009: $6a
    ld a, l                                       ; $500a: $7d
    ld a, a                                       ; $500b: $7f
    ei                                            ; $500c: $fb
    rst $38                                       ; $500d: $ff
    cp a                                          ; $500e: $bf
    rst $38                                       ; $500f: $ff
    ld e, b                                       ; $5010: $58
    ld a, a                                       ; $5011: $7f
    ld [bc], a                                    ; $5012: $02
    ccf                                           ; $5013: $3f
    ld [de], a                                    ; $5014: $12
    nop                                           ; $5015: $00
    ld [bc], a                                    ; $5016: $02
    ld [bc], a                                    ; $5017: $02
    add d                                         ; $5018: $82
    inc bc                                        ; $5019: $03
    ld bc, $0206                                  ; $501a: $01 $06 $02
    ld [bc], a                                    ; $501d: $02
    inc bc                                        ; $501e: $03
    ld [bc], a                                    ; $501f: $02
    ld [bc], a                                    ; $5020: $02
    stop                                          ; $5021: $10 $00
    rst $38                                       ; $5023: $ff
    add hl, bc                                    ; $5024: $09
    ld [bc], a                                    ; $5025: $02
    ld hl, sp+$07                                 ; $5026: $f8 $07
    di                                            ; $5028: $f3
    ld [bc], a                                    ; $5029: $02
    or $fc                                        ; $502a: $f6 $fc
    or $fd                                        ; $502c: $f6 $fd
    add [hl]                                      ; $502e: $86
    stop                                          ; $502f: $10 $00
    ld c, h                                       ; $5031: $4c
    ld b, h                                       ; $5032: $44
    db $e4                                        ; $5033: $e4
    ldh [rSC], a                                  ; $5034: $e0 $02
    ld b, d                                       ; $5036: $42
    ld [bc], a                                    ; $5037: $02
    ld bc, $0202                                  ; $5038: $01 $02 $02
    ld a, [de]                                    ; $503b: $1a
    nop                                           ; $503c: $00
    ld [bc], a                                    ; $503d: $02
    ld bc, $0002                                  ; $503e: $01 $02 $00
    ld [bc], a                                    ; $5041: $02
    ld bc, $0014                                  ; $5042: $01 $14 $00
    rst $38                                       ; $5045: $ff

jr_0da_5046:
    dec c                                         ; $5046: $0d
    inc b                                         ; $5047: $04
    ld hl, sp+$07                                 ; $5048: $f8 $07
    di                                            ; $504a: $f3
    ld [bc], a                                    ; $504b: $02
    db $eb                                        ; $504c: $eb
    ei                                            ; $504d: $fb
    db $ec                                        ; $504e: $ec
    cp $fb                                        ; $504f: $fe $fb
    ld a, [$fefb]                                 ; $5051: $fa $fb $fe
    ld [bc], a                                    ; $5054: $02
    ld [de], a                                    ; $5055: $12
    add d                                         ; $5056: $82
    cpl                                           ; $5057: $2f
    ccf                                           ; $5058: $3f
    ld [bc], a                                    ; $5059: $02
    rst $38                                       ; $505a: $ff
    sub h                                         ; $505b: $94
    ld c, a                                       ; $505c: $4f
    ld a, a                                       ; $505d: $7f
    ld [hl], a                                    ; $505e: $77
    ld a, [hl]                                    ; $505f: $7e
    rst $38                                       ; $5060: $ff
    db $fd                                        ; $5061: $fd
    ld sp, hl                                     ; $5062: $f9
    rst $38                                       ; $5063: $ff
    ld a, a                                       ; $5064: $7f
    ld a, c                                       ; $5065: $79
    ccf                                           ; $5066: $3f
    dec h                                         ; $5067: $25
    ccf                                           ; $5068: $3f
    jr c, jr_0da_50aa                             ; $5069: $38 $3f

    add hl, sp                                    ; $506b: $39
    ld d, h                                       ; $506c: $54
    ld [hl], h                                    ; $506d: $74
    xor b                                         ; $506e: $a8
    ld hl, sp+$02                                 ; $506f: $f8 $02
    dec l                                         ; $5071: $2d
    add h                                         ; $5072: $84
    dec bc                                        ; $5073: $0b
    rra                                           ; $5074: $1f
    dec c                                         ; $5075: $0d
    cpl                                           ; $5076: $2f
    ld [bc], a                                    ; $5077: $02
    inc b                                         ; $5078: $04
    add d                                         ; $5079: $82
    inc bc                                        ; $507a: $03
    rlca                                          ; $507b: $07
    ld [bc], a                                    ; $507c: $02
    ld b, $02                                     ; $507d: $06 $02
    inc b                                         ; $507f: $04
    add d                                         ; $5080: $82
    ld b, $02                                     ; $5081: $06 $02
    inc b                                         ; $5083: $04
    inc b                                         ; $5084: $04
    add d                                         ; $5085: $82
    ld b, $02                                     ; $5086: $06 $02
    ld [bc], a                                    ; $5088: $02
    inc b                                         ; $5089: $04
    inc c                                         ; $508a: $0c
    nop                                           ; $508b: $00
    add h                                         ; $508c: $84
    ld a, b                                       ; $508d: $78
    ld hl, sp+$20                                 ; $508e: $f8 $20
    jr nc, jr_0da_5094                            ; $5090: $30 $02

    jr c, jr_0da_5096                             ; $5092: $38 $02

jr_0da_5094:
    ld b, a                                       ; $5094: $47
    add d                                         ; $5095: $82

jr_0da_5096:
    cp l                                          ; $5096: $bd
    cp a                                          ; $5097: $bf
    ld [bc], a                                    ; $5098: $02
    ret nz                                        ; $5099: $c0

    add h                                         ; $509a: $84
    cp a                                          ; $509b: $bf
    rst $38                                       ; $509c: $ff
    ret c                                         ; $509d: $d8

    rst $38                                       ; $509e: $ff
    ld [bc], a                                    ; $509f: $02
    ld a, a                                       ; $50a0: $7f
    ld [de], a                                    ; $50a1: $12
    nop                                           ; $50a2: $00
    ld [bc], a                                    ; $50a3: $02
    ld [$0e82], sp                                ; $50a4: $08 $82 $0e
    ld b, $02                                     ; $50a7: $06 $02
    dec c                                         ; $50a9: $0d

jr_0da_50aa:
    ld [bc], a                                    ; $50aa: $02
    ld [bc], a                                    ; $50ab: $02
    inc b                                         ; $50ac: $04
    inc c                                         ; $50ad: $0c
    ld [bc], a                                    ; $50ae: $02
    ld [$0010], sp                                ; $50af: $08 $10 $00
    rst $38                                       ; $50b2: $ff
    add hl, bc                                    ; $50b3: $09
    ld [bc], a                                    ; $50b4: $02
    ld hl, sp+$07                                 ; $50b5: $f8 $07
    di                                            ; $50b7: $f3
    ld [bc], a                                    ; $50b8: $02
    or $fb                                        ; $50b9: $f6 $fb
    or $fd                                        ; $50bb: $f6 $fd
    add d                                         ; $50bd: $82
    ld a, [bc]                                    ; $50be: $0a
    ld [bc], a                                    ; $50bf: $02
    ld [bc], a                                    ; $50c0: $02
    rlca                                          ; $50c1: $07
    ld [bc], a                                    ; $50c2: $02
    ld d, d                                       ; $50c3: $52
    ld [bc], a                                    ; $50c4: $02
    jr nz, jr_0da_50c9                            ; $50c5: $20 $02

    ld d, b                                       ; $50c7: $50
    inc bc                                        ; $50c8: $03

jr_0da_50c9:
    nop                                           ; $50c9: $00
    add a                                         ; $50ca: $87
    ld c, $00                                     ; $50cb: $0e $00
    ld [hl], b                                    ; $50cd: $70
    nop                                           ; $50ce: $00
    add b                                         ; $50cf: $80
    nop                                           ; $50d0: $00
    ld a, a                                       ; $50d1: $7f
    dec e                                         ; $50d2: $1d
    nop                                           ; $50d3: $00
    add e                                         ; $50d4: $83
    ld bc, $0200                                  ; $50d5: $01 $00 $02
    inc c                                         ; $50d8: $0c
    nop                                           ; $50d9: $00
    rst $38                                       ; $50da: $ff
    dec c                                         ; $50db: $0d
    inc b                                         ; $50dc: $04
    ld hl, sp+$07                                 ; $50dd: $f8 $07
    di                                            ; $50df: $f3
    ld [bc], a                                    ; $50e0: $02
    db $eb                                        ; $50e1: $eb
    ei                                            ; $50e2: $fb
    db $ec                                        ; $50e3: $ec
    cp $fb                                        ; $50e4: $fe $fb
    ld a, [$fdfb]                                 ; $50e6: $fa $fb $fd
    ld [bc], a                                    ; $50e9: $02
    ld [de], a                                    ; $50ea: $12
    add d                                         ; $50eb: $82
    cpl                                           ; $50ec: $2f
    ccf                                           ; $50ed: $3f
    ld [bc], a                                    ; $50ee: $02
    rst $38                                       ; $50ef: $ff
    sbc b                                         ; $50f0: $98
    ld c, a                                       ; $50f1: $4f
    ld a, a                                       ; $50f2: $7f
    ld [hl], a                                    ; $50f3: $77
    ld a, [hl]                                    ; $50f4: $7e
    rst $38                                       ; $50f5: $ff
    db $fd                                        ; $50f6: $fd
    ld sp, hl                                     ; $50f7: $f9
    rst $38                                       ; $50f8: $ff
    ld a, a                                       ; $50f9: $7f
    ld a, c                                       ; $50fa: $79
    ccf                                           ; $50fb: $3f
    dec h                                         ; $50fc: $25
    ccf                                           ; $50fd: $3f
    jr c, jr_0da_513f                             ; $50fe: $38 $3f

    add hl, sp                                    ; $5100: $39
    ld d, [hl]                                    ; $5101: $56
    halt                                          ; $5102: $76
    xor d                                         ; $5103: $aa
    ld a, [$7d6d]                                 ; $5104: $fa $6d $7d
    ld c, d                                       ; $5107: $4a
    ld a, d                                       ; $5108: $7a
    ld [bc], a                                    ; $5109: $02
    ld [hl], b                                    ; $510a: $70
    ld [bc], a                                    ; $510b: $02
    inc b                                         ; $510c: $04
    add d                                         ; $510d: $82
    inc bc                                        ; $510e: $03
    rlca                                          ; $510f: $07
    ld [bc], a                                    ; $5110: $02
    ld b, $02                                     ; $5111: $06 $02
    inc b                                         ; $5113: $04
    add d                                         ; $5114: $82
    ld b, $02                                     ; $5115: $06 $02
    inc b                                         ; $5117: $04
    inc b                                         ; $5118: $04
    add d                                         ; $5119: $82
    ld b, $02                                     ; $511a: $06 $02
    ld [bc], a                                    ; $511c: $02
    inc b                                         ; $511d: $04
    ld [$0200], sp                                ; $511e: $08 $00 $02
    inc b                                         ; $5121: $04
    ld [bc], a                                    ; $5122: $02
    ld [bc], a                                    ; $5123: $02
    ld [bc], a                                    ; $5124: $02
    ld a, h                                       ; $5125: $7c
    ld [bc], a                                    ; $5126: $02
    ld b, b                                       ; $5127: $40
    add d                                         ; $5128: $82
    ld e, e                                       ; $5129: $5b
    ld e, a                                       ; $512a: $5f
    ld [bc], a                                    ; $512b: $02
    jr nz, @-$7c                                  ; $512c: $20 $82

    ld e, a                                       ; $512e: $5f
    ld e, l                                       ; $512f: $5d
    ld [bc], a                                    ; $5130: $02
    ld h, b                                       ; $5131: $60
    add h                                         ; $5132: $84
    cp e                                          ; $5133: $bb
    rst $38                                       ; $5134: $ff
    sbc h                                         ; $5135: $9c
    rst $38                                       ; $5136: $ff
    ld [bc], a                                    ; $5137: $02
    ld a, a                                       ; $5138: $7f
    ld [de], a                                    ; $5139: $12
    nop                                           ; $513a: $00
    ld [bc], a                                    ; $513b: $02
    dec b                                         ; $513c: $05
    ld [bc], a                                    ; $513d: $02
    ld [bc], a                                    ; $513e: $02

jr_0da_513f:
    ld [bc], a                                    ; $513f: $02
    dec b                                         ; $5140: $05
    ld [bc], a                                    ; $5141: $02
    ld [bc], a                                    ; $5142: $02

jr_0da_5143:
    ld [bc], a                                    ; $5143: $02
    inc b                                         ; $5144: $04
    ld [bc], a                                    ; $5145: $02
    ld b, $02                                     ; $5146: $06 $02
    inc b                                         ; $5148: $04
    stop                                          ; $5149: $10 $00
    rst $38                                       ; $514b: $ff

jr_0da_514c:
    rlca                                          ; $514c: $07
    ld bc, $07f8                                  ; $514d: $01 $f8 $07
    di                                            ; $5150: $f3
    ld [bc], a                                    ; $5151: $02
    or $fc                                        ; $5152: $f6 $fc
    add d                                         ; $5154: $82
    stop                                          ; $5155: $10 $00
    ld [bc], a                                    ; $5157: $02
    ld a, [bc]                                    ; $5158: $0a
    ld [bc], a                                    ; $5159: $02
    inc b                                         ; $515a: $04
    ld [bc], a                                    ; $515b: $02
    ld a, [bc]                                    ; $515c: $0a
    adc h                                         ; $515d: $8c
    nop                                           ; $515e: $00
    rra                                           ; $515f: $1f
    nop                                           ; $5160: $00
    ldh [rP1], a                                  ; $5161: $e0 $00
    add c                                         ; $5163: $81
    nop                                           ; $5164: $00
    ld a, [hl]                                    ; $5165: $7e
    nop                                           ; $5166: $00
    add c                                         ; $5167: $81
    nop                                           ; $5168: $00
    ld a, [hl]                                    ; $5169: $7e
    inc c                                         ; $516a: $0c
    nop                                           ; $516b: $00
    rst $38                                       ; $516c: $ff
    dec c                                         ; $516d: $0d
    inc b                                         ; $516e: $04
    ld hl, sp+$07                                 ; $516f: $f8 $07
    di                                            ; $5171: $f3
    ld [bc], a                                    ; $5172: $02
    db $eb                                        ; $5173: $eb
    ei                                            ; $5174: $fb
    db $ec                                        ; $5175: $ec
    cp $fb                                        ; $5176: $fe $fb
    ld a, [$fdfb]                                 ; $5178: $fa $fb $fd
    ld [bc], a                                    ; $517b: $02
    add hl, de                                    ; $517c: $19
    sbc b                                         ; $517d: $98
    rla                                           ; $517e: $17
    rra                                           ; $517f: $1f
    ld a, [hl]                                    ; $5180: $7e
    ld a, a                                       ; $5181: $7f
    ld e, a                                       ; $5182: $5f
    ld a, a                                       ; $5183: $7f
    rst $28                                       ; $5184: $ef
    cp $ff                                        ; $5185: $fe $ff
    ld sp, hl                                     ; $5187: $f9
    ld a, e                                       ; $5188: $7b
    ld a, [hl]                                    ; $5189: $7e
    ld a, a                                       ; $518a: $7f
    ld [hl], d                                    ; $518b: $72
    ccf                                           ; $518c: $3f
    dec hl                                        ; $518d: $2b
    rra                                           ; $518e: $1f
    db $10                                        ; $518f: $10
    ccf                                           ; $5190: $3f
    add hl, sp                                    ; $5191: $39
    ld d, [hl]                                    ; $5192: $56
    halt                                          ; $5193: $76
    and a                                         ; $5194: $a7
    rst $20                                       ; $5195: $e7
    ld [bc], a                                    ; $5196: $02
    sbc l                                         ; $5197: $9d
    add d                                         ; $5198: $82
    xor a                                         ; $5199: $af
    cp a                                          ; $519a: $bf
    ld [bc], a                                    ; $519b: $02
    ld b, b                                       ; $519c: $40
    ld [bc], a                                    ; $519d: $02
    inc b                                         ; $519e: $04
    add d                                         ; $519f: $82
    inc bc                                        ; $51a0: $03
    rlca                                          ; $51a1: $07
    ld [bc], a                                    ; $51a2: $02
    ld b, $02                                     ; $51a3: $06 $02
    inc b                                         ; $51a5: $04
    add d                                         ; $51a6: $82
    ld b, $02                                     ; $51a7: $06 $02
    ld [bc], a                                    ; $51a9: $02
    inc b                                         ; $51aa: $04
    inc bc                                        ; $51ab: $03
    ld b, $81                                     ; $51ac: $06 $81
    ld [bc], a                                    ; $51ae: $02
    ld [bc], a                                    ; $51af: $02
    inc b                                         ; $51b0: $04
    ld b, $00                                     ; $51b1: $06 $00
    ld [bc], a                                    ; $51b3: $02
    inc b                                         ; $51b4: $04
    ld [bc], a                                    ; $51b5: $02
    ld [bc], a                                    ; $51b6: $02
    ld [bc], a                                    ; $51b7: $02
    inc b                                         ; $51b8: $04
    add d                                         ; $51b9: $82
    ld a, d                                       ; $51ba: $7a
    ld a, [$5002]                                 ; $51bb: $fa $02 $50
    ld [bc], a                                    ; $51be: $02
    jr nz, jr_0da_5143                            ; $51bf: $20 $82

    ld e, a                                       ; $51c1: $5f
    ld e, e                                       ; $51c2: $5b
    ld [bc], a                                    ; $51c3: $02
    jr nz, jr_0da_514c                            ; $51c4: $20 $86

    ld a, a                                       ; $51c6: $7f
    ld a, [hl]                                    ; $51c7: $7e
    cp e                                          ; $51c8: $bb
    rst $38                                       ; $51c9: $ff
    sub h                                         ; $51ca: $94
    rst $38                                       ; $51cb: $ff
    ld [bc], a                                    ; $51cc: $02
    ld a, a                                       ; $51cd: $7f
    ld [de], a                                    ; $51ce: $12
    nop                                           ; $51cf: $00
    ld [bc], a                                    ; $51d0: $02
    ld [bc], a                                    ; $51d1: $02
    ld [bc], a                                    ; $51d2: $02
    dec b                                         ; $51d3: $05
    ld [bc], a                                    ; $51d4: $02
    ld [bc], a                                    ; $51d5: $02
    inc b                                         ; $51d6: $04
    inc b                                         ; $51d7: $04
    ld [bc], a                                    ; $51d8: $02
    ld b, $02                                     ; $51d9: $06 $02
    inc b                                         ; $51db: $04

jr_0da_51dc:
    stop                                          ; $51dc: $10 $00
    rst $38                                       ; $51de: $ff
    rlca                                          ; $51df: $07
    ld bc, $07f8                                  ; $51e0: $01 $f8 $07
    di                                            ; $51e3: $f3
    ld [bc], a                                    ; $51e4: $02
    or $fc                                        ; $51e5: $f6 $fc
    add c                                         ; $51e7: $81
    db $10                                        ; $51e8: $10
    ld [bc], a                                    ; $51e9: $02
    nop                                           ; $51ea: $00
    adc a                                         ; $51eb: $8f
    jr nc, jr_0da_51f2                            ; $51ec: $30 $04

    ret nz                                        ; $51ee: $c0

    nop                                           ; $51ef: $00
    add c                                         ; $51f0: $81
    nop                                           ; $51f1: $00

jr_0da_51f2:
    ld a, [hl]                                    ; $51f2: $7e
    nop                                           ; $51f3: $00
    add c                                         ; $51f4: $81
    nop                                           ; $51f5: $00
    ld a, [hl]                                    ; $51f6: $7e
    nop                                           ; $51f7: $00
    add c                                         ; $51f8: $81
    nop                                           ; $51f9: $00
    ld a, [hl]                                    ; $51fa: $7e
    ld c, $00                                     ; $51fb: $0e $00
    rst $38                                       ; $51fd: $ff
    dec c                                         ; $51fe: $0d
    inc b                                         ; $51ff: $04
    ld hl, sp+$07                                 ; $5200: $f8 $07
    di                                            ; $5202: $f3
    ld [bc], a                                    ; $5203: $02
    ld [$ebfb], a                                 ; $5204: $ea $fb $eb
    db $fd                                        ; $5207: $fd
    ld a, [$fafa]                                 ; $5208: $fa $fa $fa
    db $fc                                        ; $520b: $fc
    ld [bc], a                                    ; $520c: $02
    ld [bc], a                                    ; $520d: $02
    ld [bc], a                                    ; $520e: $02
    rla                                           ; $520f: $17
    add d                                         ; $5210: $82
    inc l                                         ; $5211: $2c
    ccf                                           ; $5212: $3f
    inc bc                                        ; $5213: $03
    ld a, a                                       ; $5214: $7f
    adc l                                         ; $5215: $8d
    ld a, [hl]                                    ; $5216: $7e
    rst $08                                       ; $5217: $cf
    db $fd                                        ; $5218: $fd
    rst $38                                       ; $5219: $ff
    ld a, [$fefb]                                 ; $521a: $fa $fb $fe
    ld a, a                                       ; $521d: $7f
    ld [hl], e                                    ; $521e: $73
    ccf                                           ; $521f: $3f
    jr z, @+$21                                   ; $5220: $28 $1f

    ld de, $7e02                                  ; $5222: $11 $02 $7e
    add d                                         ; $5225: $82
    sub e                                         ; $5226: $93
    di                                            ; $5227: $f3
    ld [bc], a                                    ; $5228: $02
    ld a, h                                       ; $5229: $7c
    ld [bc], a                                    ; $522a: $02
    ld b, e                                       ; $522b: $43
    add d                                         ; $522c: $82
    ld d, [hl]                                    ; $522d: $56
    ld e, [hl]                                    ; $522e: $5e
    ld [bc], a                                    ; $522f: $02
    ld [bc], a                                    ; $5230: $02
    inc b                                         ; $5231: $04
    inc bc                                        ; $5232: $03
    ld [bc], a                                    ; $5233: $02
    ld [bc], a                                    ; $5234: $02
    add d                                         ; $5235: $82
    inc bc                                        ; $5236: $03
    ld bc, $0202                                  ; $5237: $01 $02 $02
    inc bc                                        ; $523a: $03
    inc bc                                        ; $523b: $03
    add c                                         ; $523c: $81
    ld bc, $0202                                  ; $523d: $01 $02 $02
    ld b, $00                                     ; $5240: $06 $00
    ld [bc], a                                    ; $5242: $02
    ld [bc], a                                    ; $5243: $02
    ld [bc], a                                    ; $5244: $02
    nop                                           ; $5245: $00
    ld [bc], a                                    ; $5246: $02
    ld [bc], a                                    ; $5247: $02
    ld [bc], a                                    ; $5248: $02
    add h                                         ; $5249: $84
    ld [bc], a                                    ; $524a: $02
    nop                                           ; $524b: $00
    ld [bc], a                                    ; $524c: $02
    cpl                                           ; $524d: $2f
    ld [bc], a                                    ; $524e: $02
    db $10                                        ; $524f: $10
    add d                                         ; $5250: $82
    cpl                                           ; $5251: $2f
    dec hl                                        ; $5252: $2b
    ld [bc], a                                    ; $5253: $02
    jr nc, jr_0da_51dc                            ; $5254: $30 $86

    ld a, a                                       ; $5256: $7f
    ld a, l                                       ; $5257: $7d
    cp e                                          ; $5258: $bb
    rst $38                                       ; $5259: $ff
    sub h                                         ; $525a: $94
    rst $38                                       ; $525b: $ff
    ld [bc], a                                    ; $525c: $02
    ld a, a                                       ; $525d: $7f
    stop                                          ; $525e: $10 $00
    ld [bc], a                                    ; $5260: $02
    ld bc, $0202                                  ; $5261: $01 $02 $02
    ld [bc], a                                    ; $5264: $02
    ld bc, $0206                                  ; $5265: $01 $06 $02
    ld [bc], a                                    ; $5268: $02
    inc bc                                        ; $5269: $03
    ld [bc], a                                    ; $526a: $02
    ld [bc], a                                    ; $526b: $02
    ld c, $00                                     ; $526c: $0e $00
    rst $38                                       ; $526e: $ff
    rlca                                          ; $526f: $07
    ld bc, $07f8                                  ; $5270: $01 $f8 $07
    di                                            ; $5273: $f3
    ld [bc], a                                    ; $5274: $02
    or $fb                                        ; $5275: $f6 $fb
    add c                                         ; $5277: $81
    inc c                                         ; $5278: $0c
    ld [bc], a                                    ; $5279: $02
    nop                                           ; $527a: $00
    adc a                                         ; $527b: $8f
    inc bc                                        ; $527c: $03
    nop                                           ; $527d: $00
    inc a                                         ; $527e: $3c
    nop                                           ; $527f: $00
    ld hl, $1e00                                  ; $5280: $21 $00 $1e
    nop                                           ; $5283: $00
    ld hl, $1e00                                  ; $5284: $21 $00 $1e
    nop                                           ; $5287: $00
    ld hl, $1e00                                  ; $5288: $21 $00 $1e
    ld c, $00                                     ; $528b: $0e $00
    rst $38                                       ; $528d: $ff
    dec c                                         ; $528e: $0d
    inc b                                         ; $528f: $04
    ld hl, sp+$07                                 ; $5290: $f8 $07
    di                                            ; $5292: $f3
    ld [bc], a                                    ; $5293: $02
    db $eb                                        ; $5294: $eb
    ld a, [$feeb]                                 ; $5295: $fa $eb $fe
    ei                                            ; $5298: $fb
    ld a, [$fdfb]                                 ; $5299: $fa $fb $fd
    ld [bc], a                                    ; $529c: $02
    inc c                                         ; $529d: $0c
    add d                                         ; $529e: $82
    dec bc                                        ; $529f: $0b
    rrca                                          ; $52a0: $0f
    ld [bc], a                                    ; $52a1: $02
    ccf                                           ; $52a2: $3f
    add e                                         ; $52a3: $83
    cpl                                           ; $52a4: $2f
    ccf                                           ; $52a5: $3f
    ld [hl], a                                    ; $52a6: $77
    ld [bc], a                                    ; $52a7: $02
    ld a, a                                       ; $52a8: $7f
    add d                                         ; $52a9: $82
    ld a, h                                       ; $52aa: $7c
    dec a                                         ; $52ab: $3d
    ld [bc], a                                    ; $52ac: $02
    ccf                                           ; $52ad: $3f
    adc e                                         ; $52ae: $8b
    add hl, sp                                    ; $52af: $39
    rra                                           ; $52b0: $1f
    dec d                                         ; $52b1: $15
    rrca                                          ; $52b2: $0f
    ld [$1c1f], sp                                ; $52b3: $08 $1f $1c
    dec hl                                        ; $52b6: $2b
    dec sp                                        ; $52b7: $3b
    ld d, l                                       ; $52b8: $55
    ld a, l                                       ; $52b9: $7d
    ld [bc], a                                    ; $52ba: $02
    ld a, [hl-]                                   ; $52bb: $3a
    ld [bc], a                                    ; $52bc: $02
    ld h, a                                       ; $52bd: $67
    add d                                         ; $52be: $82
    sub h                                         ; $52bf: $94
    sbc h                                         ; $52c0: $9c
    ld [bc], a                                    ; $52c1: $02
    ld [$0c02], sp                                ; $52c2: $08 $02 $0c
    add d                                         ; $52c5: $82
    inc bc                                        ; $52c6: $03
    rrca                                          ; $52c7: $0f
    ld [bc], a                                    ; $52c8: $02
    ld c, $8c                                     ; $52c9: $0e $8c
    inc c                                         ; $52cb: $0c
    inc b                                         ; $52cc: $04
    ld c, $0a                                     ; $52cd: $0e $0a
    inc c                                         ; $52cf: $0c
    inc b                                         ; $52d0: $04
    ld c, $06                                     ; $52d1: $0e $06
    ld c, $0a                                     ; $52d3: $0e $0a
    inc c                                         ; $52d5: $0c
    inc b                                         ; $52d6: $04
    ld [bc], a                                    ; $52d7: $02
    ld [$0002], sp                                ; $52d8: $08 $02 $00
    inc b                                         ; $52db: $04
    ld [$0c02], sp                                ; $52dc: $08 $02 $0c
    ld [bc], a                                    ; $52df: $02
    ld [bc], a                                    ; $52e0: $02
    ld [bc], a                                    ; $52e1: $02
    ld b, e                                       ; $52e2: $43
    ld [bc], a                                    ; $52e3: $02
    cp a                                          ; $52e4: $bf
    ld [bc], a                                    ; $52e5: $02
    ld b, b                                       ; $52e6: $40
    add d                                         ; $52e7: $82
    ld e, a                                       ; $52e8: $5f
    ld e, l                                       ; $52e9: $5d
    ld [bc], a                                    ; $52ea: $02
    ld h, b                                       ; $52eb: $60
    add h                                         ; $52ec: $84
    cp e                                          ; $52ed: $bb
    rst $38                                       ; $52ee: $ff
    sub h                                         ; $52ef: $94
    rst $38                                       ; $52f0: $ff
    ld [bc], a                                    ; $52f1: $02
    ld a, a                                       ; $52f2: $7f
    stop                                          ; $52f3: $10 $00
    ld [bc], a                                    ; $52f5: $02
    ld b, $02                                     ; $52f6: $06 $02
    dec b                                         ; $52f8: $05
    inc b                                         ; $52f9: $04
    ld [bc], a                                    ; $52fa: $02
    inc b                                         ; $52fb: $04
    inc b                                         ; $52fc: $04
    ld [bc], a                                    ; $52fd: $02
    ld b, $02                                     ; $52fe: $06 $02
    inc b                                         ; $5300: $04
    stop                                          ; $5301: $10 $00
    rst $38                                       ; $5303: $ff
    add hl, bc                                    ; $5304: $09
    ld [bc], a                                    ; $5305: $02
    ld hl, sp+$07                                 ; $5306: $f8 $07
    di                                            ; $5308: $f3
    ld [bc], a                                    ; $5309: $02
    or $fb                                        ; $530a: $f6 $fb
    or $fc                                        ; $530c: $f6 $fc
    sub h                                         ; $530e: $94
    ld [$0400], sp                                ; $530f: $08 $00 $04
    nop                                           ; $5312: $00
    ld [bc], a                                    ; $5313: $02
    ld [$3000], sp                                ; $5314: $08 $00 $30
    nop                                           ; $5317: $00
    rst $00                                       ; $5318: $c7
    ld b, b                                       ; $5319: $40
    ld a, b                                       ; $531a: $78
    nop                                           ; $531b: $00
    add b                                         ; $531c: $80
    nop                                           ; $531d: $00
    ld a, a                                       ; $531e: $7f
    nop                                           ; $531f: $00
    ld b, c                                       ; $5320: $41
    nop                                           ; $5321: $00
    ld a, $15                                     ; $5322: $3e $15
    nop                                           ; $5324: $00
    add c                                         ; $5325: $81
    ld bc, $0003                                  ; $5326: $01 $03 $00
    add c                                         ; $5329: $81
    ld bc, $0012                                  ; $532a: $01 $12 $00
    rst $38                                       ; $532d: $ff
    dec c                                         ; $532e: $0d
    inc b                                         ; $532f: $04
    ld hl, sp+$07                                 ; $5330: $f8 $07
    di                                            ; $5332: $f3
    ld [bc], a                                    ; $5333: $02
    db $eb                                        ; $5334: $eb
    ei                                            ; $5335: $fb
    db $ec                                        ; $5336: $ec
    cp $fb                                        ; $5337: $fe $fb
    ld a, [$fdfb]                                 ; $5339: $fa $fb $fd
    ld [bc], a                                    ; $533c: $02
    add hl, de                                    ; $533d: $19
    sbc [hl]                                      ; $533e: $9e
    rla                                           ; $533f: $17
    rra                                           ; $5340: $1f
    ld a, [hl]                                    ; $5341: $7e
    ld a, a                                       ; $5342: $7f
    ld e, a                                       ; $5343: $5f
    ld a, a                                       ; $5344: $7f
    rst $28                                       ; $5345: $ef
    cp $ff                                        ; $5346: $fe $ff
    ld sp, hl                                     ; $5348: $f9
    ld a, e                                       ; $5349: $7b
    ld a, [hl]                                    ; $534a: $7e
    ld a, a                                       ; $534b: $7f
    ld [hl], d                                    ; $534c: $72
    ccf                                           ; $534d: $3f
    dec hl                                        ; $534e: $2b
    rra                                           ; $534f: $1f
    db $10                                        ; $5350: $10
    ccf                                           ; $5351: $3f
    add hl, sp                                    ; $5352: $39
    ld d, [hl]                                    ; $5353: $56
    halt                                          ; $5354: $76
    xor e                                         ; $5355: $ab
    ei                                            ; $5356: $fb
    ld l, l                                       ; $5357: $6d
    ld a, l                                       ; $5358: $7d
    dec hl                                        ; $5359: $2b
    ccf                                           ; $535a: $3f
    dec c                                         ; $535b: $0d
    ccf                                           ; $535c: $3f
    ld [bc], a                                    ; $535d: $02
    inc b                                         ; $535e: $04
    add d                                         ; $535f: $82
    inc bc                                        ; $5360: $03
    rlca                                          ; $5361: $07
    ld [bc], a                                    ; $5362: $02
    ld b, $02                                     ; $5363: $06 $02
    inc b                                         ; $5365: $04
    add d                                         ; $5366: $82
    ld b, $02                                     ; $5367: $06 $02
    ld [bc], a                                    ; $5369: $02
    inc b                                         ; $536a: $04
    inc bc                                        ; $536b: $03
    ld b, $81                                     ; $536c: $06 $81
    ld [bc], a                                    ; $536e: $02
    ld [bc], a                                    ; $536f: $02
    inc b                                         ; $5370: $04
    inc c                                         ; $5371: $0c
    nop                                           ; $5372: $00
    add d                                         ; $5373: $82
    ld h, h                                       ; $5374: $64
    db $f4                                        ; $5375: $f4
    ld [bc], a                                    ; $5376: $02
    nop                                           ; $5377: $00
    ld [bc], a                                    ; $5378: $02
    sbc [hl]                                      ; $5379: $9e
    ld [bc], a                                    ; $537a: $02
    ld h, c                                       ; $537b: $61
    ld [bc], a                                    ; $537c: $02
    add [hl]                                      ; $537d: $86
    ld [bc], a                                    ; $537e: $02
    rst $10                                       ; $537f: $d7
    add h                                         ; $5380: $84
    and b                                         ; $5381: $a0
    ldh [$5e], a                                  ; $5382: $e0 $5e
    ld a, a                                       ; $5384: $7f
    ld [bc], a                                    ; $5385: $02
    ccf                                           ; $5386: $3f
    ld [de], a                                    ; $5387: $12
    nop                                           ; $5388: $00
    ld [bc], a                                    ; $5389: $02
    dec b                                         ; $538a: $05
    ld [bc], a                                    ; $538b: $02
    ld [bc], a                                    ; $538c: $02
    ld [bc], a                                    ; $538d: $02
    ld b, $02                                     ; $538e: $06 $02
    ld bc, $0604                                  ; $5390: $01 $04 $06
    ld [bc], a                                    ; $5393: $02
    inc b                                         ; $5394: $04

jr_0da_5395:
    stop                                          ; $5395: $10 $00
    rst $38                                       ; $5397: $ff
    add hl, bc                                    ; $5398: $09
    ld [bc], a                                    ; $5399: $02
    ld hl, sp+$07                                 ; $539a: $f8 $07
    di                                            ; $539c: $f3
    ld [bc], a                                    ; $539d: $02
    or $fb                                        ; $539e: $f6 $fb
    or $fc                                        ; $53a0: $f6 $fc
    add l                                         ; $53a2: $85
    ld [$0400], sp                                ; $53a3: $08 $00 $04
    nop                                           ; $53a6: $00
    ld [bc], a                                    ; $53a7: $02
    inc bc                                        ; $53a8: $03
    nop                                           ; $53a9: $00
    ld [bc], a                                    ; $53aa: $02
    ld b, b                                       ; $53ab: $40
    adc h                                         ; $53ac: $8c
    ldh [$e1], a                                  ; $53ad: $e0 $e1
    ld b, b                                       ; $53af: $40
    jp nz, Jump_000_3d01                          ; $53b0: $c2 $01 $3d

    nop                                           ; $53b3: $00
    ld a, [c]                                     ; $53b4: $f2
    db $10                                        ; $53b5: $10
    ld d, c                                       ; $53b6: $51
    nop                                           ; $53b7: $00
    ld a, $17                                     ; $53b8: $3e $17
    nop                                           ; $53ba: $00
    add c                                         ; $53bb: $81
    ld bc, $0005                                  ; $53bc: $01 $05 $00
    add c                                         ; $53bf: $81
    ld bc, $000c                                  ; $53c0: $01 $0c $00
    rst $38                                       ; $53c3: $ff
    dec c                                         ; $53c4: $0d
    inc b                                         ; $53c5: $04
    ld hl, sp+$07                                 ; $53c6: $f8 $07
    di                                            ; $53c8: $f3
    ld [bc], a                                    ; $53c9: $02
    db $eb                                        ; $53ca: $eb
    ei                                            ; $53cb: $fb
    db $ec                                        ; $53cc: $ec
    cp $fb                                        ; $53cd: $fe $fb
    ld a, [$fcfb]                                 ; $53cf: $fa $fb $fc
    ld [bc], a                                    ; $53d2: $02
    add hl, de                                    ; $53d3: $19
    sbc [hl]                                      ; $53d4: $9e
    rla                                           ; $53d5: $17
    rra                                           ; $53d6: $1f
    ld a, [hl]                                    ; $53d7: $7e
    ld a, a                                       ; $53d8: $7f
    ld e, a                                       ; $53d9: $5f
    ld a, a                                       ; $53da: $7f
    rst $28                                       ; $53db: $ef
    cp $ff                                        ; $53dc: $fe $ff
    ld sp, hl                                     ; $53de: $f9
    ld a, e                                       ; $53df: $7b
    ld a, [hl]                                    ; $53e0: $7e
    ld a, a                                       ; $53e1: $7f
    ld [hl], d                                    ; $53e2: $72
    ccf                                           ; $53e3: $3f
    dec hl                                        ; $53e4: $2b
    rra                                           ; $53e5: $1f
    db $10                                        ; $53e6: $10
    ccf                                           ; $53e7: $3f
    add hl, sp                                    ; $53e8: $39
    ld d, [hl]                                    ; $53e9: $56
    halt                                          ; $53ea: $76
    xor e                                         ; $53eb: $ab
    ei                                            ; $53ec: $fb
    ld l, l                                       ; $53ed: $6d
    ld a, l                                       ; $53ee: $7d
    dec hl                                        ; $53ef: $2b
    ccf                                           ; $53f0: $3f
    ld c, l                                       ; $53f1: $4d
    ld a, a                                       ; $53f2: $7f
    ld [bc], a                                    ; $53f3: $02
    inc b                                         ; $53f4: $04
    add d                                         ; $53f5: $82
    inc bc                                        ; $53f6: $03
    rlca                                          ; $53f7: $07
    ld [bc], a                                    ; $53f8: $02
    ld b, $02                                     ; $53f9: $06 $02
    inc b                                         ; $53fb: $04
    add d                                         ; $53fc: $82
    ld b, $02                                     ; $53fd: $06 $02
    ld [bc], a                                    ; $53ff: $02
    inc b                                         ; $5400: $04
    inc bc                                        ; $5401: $03
    ld b, $81                                     ; $5402: $06 $81
    ld [bc], a                                    ; $5404: $02
    ld [bc], a                                    ; $5405: $02
    inc b                                         ; $5406: $04
    inc c                                         ; $5407: $0c
    nop                                           ; $5408: $00
    add d                                         ; $5409: $82
    ld l, b                                       ; $540a: $68
    ld hl, sp+$02                                 ; $540b: $f8 $02
    jr nz, jr_0da_5395                            ; $540d: $20 $86

    rra                                           ; $540f: $1f
    inc de                                        ; $5410: $13
    ld l, $2a                                     ; $5411: $2e $2a
    ld [hl], c                                    ; $5413: $71
    ld [hl], e                                    ; $5414: $73
    ld [bc], a                                    ; $5415: $02
    db $e3                                        ; $5416: $e3
    add h                                         ; $5417: $84
    or a                                          ; $5418: $b7
    rst $30                                       ; $5419: $f7
    ld e, b                                       ; $541a: $58
    ld a, a                                       ; $541b: $7f
    ld [bc], a                                    ; $541c: $02
    ccf                                           ; $541d: $3f
    jr jr_0da_5420                                ; $541e: $18 $00

jr_0da_5420:
    inc b                                         ; $5420: $04
    ld [bc], a                                    ; $5421: $02
    ld [bc], a                                    ; $5422: $02
    inc bc                                        ; $5423: $03
    ld [bc], a                                    ; $5424: $02
    ld [bc], a                                    ; $5425: $02
    stop                                          ; $5426: $10 $00
    rst $38                                       ; $5428: $ff
    add hl, bc                                    ; $5429: $09
    ld [bc], a                                    ; $542a: $02
    ld hl, sp+$07                                 ; $542b: $f8 $07
    di                                            ; $542d: $f3
    ld [bc], a                                    ; $542e: $02
    or $fb                                        ; $542f: $f6 $fb
    or $fc                                        ; $5431: $f6 $fc
    add l                                         ; $5433: $85
    ld [$0400], sp                                ; $5434: $08 $00 $04
    nop                                           ; $5437: $00
    ld [bc], a                                    ; $5438: $02
    dec b                                         ; $5439: $05
    nop                                           ; $543a: $00
    ld [bc], a                                    ; $543b: $02
    and b                                         ; $543c: $a0
    ld [bc], a                                    ; $543d: $02
    ld b, c                                       ; $543e: $41
    ld [bc], a                                    ; $543f: $02
    and e                                         ; $5440: $a3
    ld [bc], a                                    ; $5441: $02
    add hl, de                                    ; $5442: $19
    ld [bc], a                                    ; $5443: $02
    jr c, @+$04                                   ; $5444: $38 $02

    db $10                                        ; $5446: $10
    jr jr_0da_5449                                ; $5447: $18 $00

jr_0da_5449:
    ld [bc], a                                    ; $5449: $02
    ld bc, $0010                                  ; $544a: $01 $10 $00
    rst $38                                       ; $544d: $ff
    dec c                                         ; $544e: $0d
    inc b                                         ; $544f: $04
    ld hl, sp+$07                                 ; $5450: $f8 $07
    di                                            ; $5452: $f3
    ld [bc], a                                    ; $5453: $02
    db $eb                                        ; $5454: $eb
    ei                                            ; $5455: $fb
    db $ec                                        ; $5456: $ec
    cp $fb                                        ; $5457: $fe $fb
    ld a, [$fcfb]                                 ; $5459: $fa $fb $fc
    ld [bc], a                                    ; $545c: $02
    add hl, de                                    ; $545d: $19
    sbc [hl]                                      ; $545e: $9e
    rla                                           ; $545f: $17
    rra                                           ; $5460: $1f
    ld a, [hl]                                    ; $5461: $7e
    ld a, a                                       ; $5462: $7f
    ld e, a                                       ; $5463: $5f
    ld a, a                                       ; $5464: $7f
    rst $28                                       ; $5465: $ef
    cp $ff                                        ; $5466: $fe $ff
    ld sp, hl                                     ; $5468: $f9
    ld a, e                                       ; $5469: $7b
    ld a, [hl]                                    ; $546a: $7e
    ld a, a                                       ; $546b: $7f
    ld [hl], d                                    ; $546c: $72
    ccf                                           ; $546d: $3f
    dec hl                                        ; $546e: $2b
    rra                                           ; $546f: $1f
    db $10                                        ; $5470: $10
    ccf                                           ; $5471: $3f
    add hl, sp                                    ; $5472: $39
    ld d, [hl]                                    ; $5473: $56
    halt                                          ; $5474: $76
    xor e                                         ; $5475: $ab
    ei                                            ; $5476: $fb
    ld l, l                                       ; $5477: $6d
    ld a, l                                       ; $5478: $7d
    dec hl                                        ; $5479: $2b
    ccf                                           ; $547a: $3f
    ld c, l                                       ; $547b: $4d
    ld a, a                                       ; $547c: $7f
    ld [bc], a                                    ; $547d: $02
    inc b                                         ; $547e: $04
    add d                                         ; $547f: $82
    inc bc                                        ; $5480: $03
    rlca                                          ; $5481: $07
    ld [bc], a                                    ; $5482: $02
    ld b, $02                                     ; $5483: $06 $02
    inc b                                         ; $5485: $04
    add d                                         ; $5486: $82
    ld b, $02                                     ; $5487: $06 $02
    ld [bc], a                                    ; $5489: $02
    inc b                                         ; $548a: $04
    inc bc                                        ; $548b: $03
    ld b, $81                                     ; $548c: $06 $81
    ld [bc], a                                    ; $548e: $02
    ld [bc], a                                    ; $548f: $02
    inc b                                         ; $5490: $04
    inc c                                         ; $5491: $0c
    nop                                           ; $5492: $00
    adc b                                         ; $5493: $88
    ld l, b                                       ; $5494: $68
    ld hl, sp+$20                                 ; $5495: $f8 $20
    jr nc, jr_0da_54d8                            ; $5497: $30 $3f

    inc sp                                        ; $5499: $33
    ld a, d                                       ; $549a: $7a
    ld l, d                                       ; $549b: $6a
    ld [bc], a                                    ; $549c: $02
    ld [hl], c                                    ; $549d: $71
    ld [bc], a                                    ; $549e: $02
    ld [$b784], a                                 ; $549f: $ea $84 $b7
    rst $30                                       ; $54a2: $f7
    ld c, b                                       ; $54a3: $48
    ld l, e                                       ; $54a4: $6b
    ld [bc], a                                    ; $54a5: $02
    ccf                                           ; $54a6: $3f
    ld [de], a                                    ; $54a7: $12
    nop                                           ; $54a8: $00
    inc bc                                        ; $54a9: $03
    ld [bc], a                                    ; $54aa: $02
    inc bc                                        ; $54ab: $03
    nop                                           ; $54ac: $00
    inc b                                         ; $54ad: $04
    ld [bc], a                                    ; $54ae: $02
    ld [bc], a                                    ; $54af: $02
    inc bc                                        ; $54b0: $03
    ld [bc], a                                    ; $54b1: $02
    ld [bc], a                                    ; $54b2: $02
    stop                                          ; $54b3: $10 $00
    rst $38                                       ; $54b5: $ff
    rlca                                          ; $54b6: $07
    ld bc, $07f8                                  ; $54b7: $01 $f8 $07
    di                                            ; $54ba: $f3
    ld [bc], a                                    ; $54bb: $02
    or $fc                                        ; $54bc: $f6 $fc
    add l                                         ; $54be: $85
    stop                                          ; $54bf: $10 $00
    ld [$0400], sp                                ; $54c1: $08 $00 $04
    add hl, bc                                    ; $54c4: $09
    nop                                           ; $54c5: $00
    ld [bc], a                                    ; $54c6: $02
    dec d                                         ; $54c7: $15
    ld [bc], a                                    ; $54c8: $02
    ld a, [hl-]                                   ; $54c9: $3a
    ld [bc], a                                    ; $54ca: $02
    ld d, l                                       ; $54cb: $55
    ld [bc], a                                    ; $54cc: $02
    jr nz, @+$04                                  ; $54cd: $20 $02

    ld d, b                                       ; $54cf: $50
    ld [$ff00], sp                                ; $54d0: $08 $00 $ff
    dec c                                         ; $54d3: $0d
    inc b                                         ; $54d4: $04
    ld hl, sp+$07                                 ; $54d5: $f8 $07
    di                                            ; $54d7: $f3

jr_0da_54d8:
    ld [bc], a                                    ; $54d8: $02
    db $eb                                        ; $54d9: $eb
    ei                                            ; $54da: $fb
    db $ec                                        ; $54db: $ec
    cp $fb                                        ; $54dc: $fe $fb
    ld a, [$fcfb]                                 ; $54de: $fa $fb $fc
    ld [bc], a                                    ; $54e1: $02
    add hl, de                                    ; $54e2: $19
    sbc [hl]                                      ; $54e3: $9e
    rla                                           ; $54e4: $17
    rra                                           ; $54e5: $1f
    ld a, [hl]                                    ; $54e6: $7e
    ld a, a                                       ; $54e7: $7f
    ld e, a                                       ; $54e8: $5f
    ld a, a                                       ; $54e9: $7f
    rst $28                                       ; $54ea: $ef
    cp $ff                                        ; $54eb: $fe $ff
    ld sp, hl                                     ; $54ed: $f9
    ld a, e                                       ; $54ee: $7b
    ld a, [hl]                                    ; $54ef: $7e
    ld a, a                                       ; $54f0: $7f
    ld [hl], d                                    ; $54f1: $72
    ccf                                           ; $54f2: $3f
    dec hl                                        ; $54f3: $2b
    rra                                           ; $54f4: $1f
    db $10                                        ; $54f5: $10
    ccf                                           ; $54f6: $3f
    add hl, sp                                    ; $54f7: $39
    ld d, [hl]                                    ; $54f8: $56
    halt                                          ; $54f9: $76
    xor e                                         ; $54fa: $ab
    ei                                            ; $54fb: $fb
    ld l, l                                       ; $54fc: $6d
    ld a, l                                       ; $54fd: $7d
    dec hl                                        ; $54fe: $2b
    ccf                                           ; $54ff: $3f
    ld c, l                                       ; $5500: $4d
    ld a, a                                       ; $5501: $7f
    ld [bc], a                                    ; $5502: $02
    inc b                                         ; $5503: $04
    add d                                         ; $5504: $82
    inc bc                                        ; $5505: $03
    rlca                                          ; $5506: $07
    ld [bc], a                                    ; $5507: $02
    ld b, $02                                     ; $5508: $06 $02
    inc b                                         ; $550a: $04
    add d                                         ; $550b: $82
    ld b, $02                                     ; $550c: $06 $02
    ld [bc], a                                    ; $550e: $02
    inc b                                         ; $550f: $04
    inc bc                                        ; $5510: $03
    ld b, $81                                     ; $5511: $06 $81
    ld [bc], a                                    ; $5513: $02
    ld [bc], a                                    ; $5514: $02
    inc b                                         ; $5515: $04
    inc c                                         ; $5516: $0c
    nop                                           ; $5517: $00
    adc b                                         ; $5518: $88
    ld l, b                                       ; $5519: $68
    ld hl, sp+$20                                 ; $551a: $f8 $20
    jr nc, jr_0da_555d                            ; $551c: $30 $3f

    inc sp                                        ; $551e: $33
    ld a, a                                       ; $551f: $7f
    ld l, d                                       ; $5520: $6a
    ld [bc], a                                    ; $5521: $02
    ld [hl], l                                    ; $5522: $75
    ld [bc], a                                    ; $5523: $02
    ei                                            ; $5524: $fb
    add h                                         ; $5525: $84
    or l                                          ; $5526: $b5
    push af                                       ; $5527: $f5
    ld e, b                                       ; $5528: $58
    ld a, a                                       ; $5529: $7f
    ld [bc], a                                    ; $552a: $02
    ccf                                           ; $552b: $3f
    ld [de], a                                    ; $552c: $12
    nop                                           ; $552d: $00
    ld [bc], a                                    ; $552e: $02
    ld [bc], a                                    ; $552f: $02
    add d                                         ; $5530: $82
    inc bc                                        ; $5531: $03
    ld bc, $0206                                  ; $5532: $01 $06 $02
    ld [bc], a                                    ; $5535: $02
    inc bc                                        ; $5536: $03
    ld [bc], a                                    ; $5537: $02
    ld [bc], a                                    ; $5538: $02
    stop                                          ; $5539: $10 $00
    rst $38                                       ; $553b: $ff
    rlca                                          ; $553c: $07
    ld bc, $07f8                                  ; $553d: $01 $f8 $07
    di                                            ; $5540: $f3
    ld [bc], a                                    ; $5541: $02
    or $fa                                        ; $5542: $f6 $fa
    add l                                         ; $5544: $85
    inc b                                         ; $5545: $04
    nop                                           ; $5546: $00
    ld [bc], a                                    ; $5547: $02
    nop                                           ; $5548: $00
    ld bc, $000b                                  ; $5549: $01 $0b $00
    ld [bc], a                                    ; $554c: $02
    ld a, [bc]                                    ; $554d: $0a
    ld [bc], a                                    ; $554e: $02
    inc b                                         ; $554f: $04
    ld [bc], a                                    ; $5550: $02
    ld a, [bc]                                    ; $5551: $0a
    ld a, [bc]                                    ; $5552: $0a
    nop                                           ; $5553: $00
    rst $38                                       ; $5554: $ff
    dec c                                         ; $5555: $0d
    inc b                                         ; $5556: $04
    ld hl, sp+$07                                 ; $5557: $f8 $07
    ld a, [c]                                     ; $5559: $f2
    ld bc, $f8ea                                  ; $555a: $01 $ea $f8

jr_0da_555d:
    ld [$faff], a                                 ; $555d: $ea $ff $fa
    ei                                            ; $5560: $fb
    ld a, [$02ff]                                 ; $5561: $fa $ff $02
    rrca                                          ; $5564: $0f
    add e                                         ; $5565: $83
    add hl, sp                                    ; $5566: $39
    ccf                                           ; $5567: $3f
    cpl                                           ; $5568: $2f
    inc bc                                        ; $5569: $03
    ccf                                           ; $556a: $3f
    sub b                                         ; $556b: $90
    ld a, a                                       ; $556c: $7f
    ld a, e                                       ; $556d: $7b
    rst $38                                       ; $556e: $ff
    sbc h                                         ; $556f: $9c
    rst $38                                       ; $5570: $ff
    sub h                                         ; $5571: $94
    rst $18                                       ; $5572: $df
    ei                                            ; $5573: $fb
    rst $08                                       ; $5574: $cf
    ld sp, hl                                     ; $5575: $f9
    ld c, a                                       ; $5576: $4f
    ld a, e                                       ; $5577: $7b
    daa                                           ; $5578: $27
    inc a                                         ; $5579: $3c
    dec d                                         ; $557a: $15
    dec e                                         ; $557b: $1d
    ld [bc], a                                    ; $557c: $02
    ld e, $81                                     ; $557d: $1e $81
    inc e                                         ; $557f: $1c
    dec b                                         ; $5580: $05
    rra                                           ; $5581: $1f
    ld [bc], a                                    ; $5582: $02
    db $10                                        ; $5583: $10
    ld [bc], a                                    ; $5584: $02
    ld h, b                                       ; $5585: $60
    add d                                         ; $5586: $82
    ld d, b                                       ; $5587: $50
    ld [hl], b                                    ; $5588: $70
    ld [bc], a                                    ; $5589: $02
    ld a, b                                       ; $558a: $78
    sub b                                         ; $558b: $90
    ld [hl], b                                    ; $558c: $70
    jr nc, jr_0da_55ff                            ; $558d: $30 $70

    ld d, b                                       ; $558f: $50
    ld [hl], b                                    ; $5590: $70
    ld d, b                                       ; $5591: $50
    halt                                          ; $5592: $76
    ld [hl], $7f                                  ; $5593: $36 $7f
    ld e, c                                       ; $5595: $59
    ld [hl], a                                    ; $5596: $77
    ld e, l                                       ; $5597: $5d
    ld h, c                                       ; $5598: $61
    ccf                                           ; $5599: $3f
    ld h, $3e                                     ; $559a: $26 $3e
    ld [bc], a                                    ; $559c: $02
    ld a, h                                       ; $559d: $7c
    adc l                                         ; $559e: $8d
    jr nz, jr_0da_5601                            ; $559f: $20 $60

    ld a, $7e                                     ; $55a1: $3e $7e
    ld d, e                                       ; $55a3: $53
    ld a, a                                       ; $55a4: $7f
    db $fd                                        ; $55a5: $fd
    rst $38                                       ; $55a6: $ff
    db $fd                                        ; $55a7: $fd
    rst $38                                       ; $55a8: $ff
    ld [hl], d                                    ; $55a9: $72
    ld a, a                                       ; $55aa: $7f
    ld c, a                                       ; $55ab: $4f
    inc bc                                        ; $55ac: $03
    ld a, a                                       ; $55ad: $7f
    add c                                         ; $55ae: $81
    inc h                                         ; $55af: $24
    inc bc                                        ; $55b0: $03
    inc a                                         ; $55b1: $3c
    add d                                         ; $55b2: $82
    inc h                                         ; $55b3: $24
    inc a                                         ; $55b4: $3c
    ld [bc], a                                    ; $55b5: $02
    jr jr_0da_55c6                                ; $55b6: $18 $0e

    nop                                           ; $55b8: $00
    inc b                                         ; $55b9: $04
    ld c, $86                                     ; $55ba: $0e $86
    inc b                                         ; $55bc: $04
    inc c                                         ; $55bd: $0c
    rlca                                          ; $55be: $07
    rrca                                          ; $55bf: $0f
    add hl, bc                                    ; $55c0: $09
    rrca                                          ; $55c1: $0f
    ld [bc], a                                    ; $55c2: $02
    ld c, $14                                     ; $55c3: $0e $14
    nop                                           ; $55c5: $00

jr_0da_55c6:
    rst $38                                       ; $55c6: $ff
    rlca                                          ; $55c7: $07
    ld bc, $07f8                                  ; $55c8: $01 $f8 $07
    ld a, [c]                                     ; $55cb: $f2
    ld bc, $f9f5                                  ; $55cc: $01 $f5 $f9
    add e                                         ; $55cf: $83
    dec b                                         ; $55d0: $05
    nop                                           ; $55d1: $00
    ld [bc], a                                    ; $55d2: $02
    dec e                                         ; $55d3: $1d
    nop                                           ; $55d4: $00
    rst $38                                       ; $55d5: $ff
    dec c                                         ; $55d6: $0d
    inc b                                         ; $55d7: $04
    ld hl, sp+$07                                 ; $55d8: $f8 $07
    ld a, [c]                                     ; $55da: $f2
    ld bc, $f7ea                                  ; $55db: $01 $ea $f7
    ld [$faff], a                                 ; $55de: $ea $ff $fa
    ei                                            ; $55e1: $fb
    ld a, [$02ff]                                 ; $55e2: $fa $ff $02
    rrca                                          ; $55e5: $0f
    add h                                         ; $55e6: $84
    dec d                                         ; $55e7: $15
    rra                                           ; $55e8: $1f
    scf                                           ; $55e9: $37
    ccf                                           ; $55ea: $3f
    inc bc                                        ; $55eb: $03
    rra                                           ; $55ec: $1f
    adc a                                         ; $55ed: $8f
    dec e                                         ; $55ee: $1d
    ld a, a                                       ; $55ef: $7f
    ld a, [hl]                                    ; $55f0: $7e
    rst $38                                       ; $55f1: $ff
    sbc d                                         ; $55f2: $9a
    rst $38                                       ; $55f3: $ff
    sbc l                                         ; $55f4: $9d
    rst $28                                       ; $55f5: $ef
    db $fc                                        ; $55f6: $fc
    ld c, a                                       ; $55f7: $4f
    ld a, l                                       ; $55f8: $7d
    ld b, a                                       ; $55f9: $47
    ld a, [hl]                                    ; $55fa: $7e
    ld a, [hl-]                                   ; $55fb: $3a
    ld a, $08                                     ; $55fc: $3e $08
    rrca                                          ; $55fe: $0f

jr_0da_55ff:
    ld [bc], a                                    ; $55ff: $02
    and b                                         ; $5600: $a0

jr_0da_5601:
    ld [bc], a                                    ; $5601: $02
    ld hl, sp-$7f                                 ; $5602: $f8 $81
    ret nc                                        ; $5604: $d0

    inc b                                         ; $5605: $04
    ldh a, [$8f]                                  ; $5606: $f0 $8f
    or b                                          ; $5608: $b0
    ldh a, [$50]                                  ; $5609: $f0 $50
    or $56                                        ; $560b: $f6 $56
    rst $38                                       ; $560d: $ff
    cp c                                          ; $560e: $b9
    rst $30                                       ; $560f: $f7
    db $dd                                        ; $5610: $dd
    pop af                                        ; $5611: $f1
    rst $18                                       ; $5612: $df
    ld [c], a                                     ; $5613: $e2
    ld a, $ac                                     ; $5614: $3e $ac
    cp h                                          ; $5616: $bc
    ld [bc], a                                    ; $5617: $02
    ld [hl], b                                    ; $5618: $70
    sub b                                         ; $5619: $90
    inc a                                         ; $561a: $3c
    db $fc                                        ; $561b: $fc
    jp nc, $edfe                                  ; $561c: $d2 $fe $ed

    rst $38                                       ; $561f: $ff
    cp $ff                                        ; $5620: $fe $ff
    ld a, c                                       ; $5622: $79
    ld a, a                                       ; $5623: $7f
    ld h, a                                       ; $5624: $67
    ld a, a                                       ; $5625: $7f
    ld e, a                                       ; $5626: $5f
    ld a, a                                       ; $5627: $7f
    ld h, a                                       ; $5628: $67
    ld a, a                                       ; $5629: $7f
    ld [bc], a                                    ; $562a: $02
    ld a, b                                       ; $562b: $78
    add d                                         ; $562c: $82
    ld c, b                                       ; $562d: $48
    ld a, b                                       ; $562e: $78
    ld [bc], a                                    ; $562f: $02
    jr nc, @+$12                                  ; $5630: $30 $10

    nop                                           ; $5632: $00
    ld [bc], a                                    ; $5633: $02
    rrca                                          ; $5634: $0f
    ld [bc], a                                    ; $5635: $02
    ld c, $88                                     ; $5636: $0e $88
    inc b                                         ; $5638: $04
    inc c                                         ; $5639: $0c
    ld a, [bc]                                    ; $563a: $0a
    ld c, $07                                     ; $563b: $0e $07
    rrca                                          ; $563d: $0f
    add hl, bc                                    ; $563e: $09
    rrca                                          ; $563f: $0f
    ld [bc], a                                    ; $5640: $02
    ld c, $12                                     ; $5641: $0e $12
    nop                                           ; $5643: $00
    rst $38                                       ; $5644: $ff
    rlca                                          ; $5645: $07
    ld bc, $07f8                                  ; $5646: $01 $f8 $07
    ld a, [c]                                     ; $5649: $f2
    ld bc, $f9f5                                  ; $564a: $01 $f5 $f9
    add e                                         ; $564d: $83
    dec b                                         ; $564e: $05
    nop                                           ; $564f: $00
    ld [bc], a                                    ; $5650: $02
    dec e                                         ; $5651: $1d
    nop                                           ; $5652: $00
    rst $38                                       ; $5653: $ff
    dec c                                         ; $5654: $0d
    inc b                                         ; $5655: $04
    ld hl, sp+$07                                 ; $5656: $f8 $07
    ld a, [c]                                     ; $5658: $f2
    ld bc, $f7ea                                  ; $5659: $01 $ea $f7
    ld [$faff], a                                 ; $565c: $ea $ff $fa
    ei                                            ; $565f: $fb
    ld a, [$0200]                                 ; $5660: $fa $00 $02
    rlca                                          ; $5663: $07
    add h                                         ; $5664: $84
    inc e                                         ; $5665: $1c
    rra                                           ; $5666: $1f
    rla                                           ; $5667: $17
    rra                                           ; $5668: $1f
    ld [bc], a                                    ; $5669: $02
    ccf                                           ; $566a: $3f
    sub b                                         ; $566b: $90
    rra                                           ; $566c: $1f
    dec e                                         ; $566d: $1d
    ld a, a                                       ; $566e: $7f
    ld a, [hl]                                    ; $566f: $7e
    rst $38                                       ; $5670: $ff
    sbc d                                         ; $5671: $9a
    rst $38                                       ; $5672: $ff
    sbc l                                         ; $5673: $9d
    ld c, a                                       ; $5674: $4f
    ld a, h                                       ; $5675: $7c
    ld c, a                                       ; $5676: $4f
    ld a, l                                       ; $5677: $7d
    ld h, e                                       ; $5678: $63
    ld a, [hl]                                    ; $5679: $7e
    ld a, [de]                                    ; $567a: $1a
    ld e, $02                                     ; $567b: $1e $02
    rrca                                          ; $567d: $0f
    add c                                         ; $567e: $81
    ld c, $05                                     ; $567f: $0e $05
    rrca                                          ; $5681: $0f
    ld [bc], a                                    ; $5682: $02
    and b                                         ; $5683: $a0
    ld [bc], a                                    ; $5684: $02
    ldh [$82], a                                  ; $5685: $e0 $82
    ret c                                         ; $5687: $d8

    ld hl, sp+$03                                 ; $5688: $f8 $03
    ldh a, [$8f]                                  ; $568a: $f0 $8f
    or b                                          ; $568c: $b0
    ldh a, [$50]                                  ; $568d: $f0 $50
    ldh a, [$50]                                  ; $568f: $f0 $50
    cp $be                                        ; $5691: $fe $be
    rst $38                                       ; $5693: $ff
    reti                                          ; $5694: $d9


    rst $30                                       ; $5695: $f7
    db $dd                                        ; $5696: $dd
    ld [c], a                                     ; $5697: $e2
    ld a, $a6                                     ; $5698: $3e $a6
    cp [hl]                                       ; $569a: $be
    ld [bc], a                                    ; $569b: $02
    ld a, b                                       ; $569c: $78
    adc e                                         ; $569d: $8b
    ld l, [hl]                                    ; $569e: $6e
    xor $96                                       ; $569f: $ee $96
    cp $b6                                        ; $56a1: $fe $b6
    cp $e7                                        ; $56a3: $fe $e7
    rst $38                                       ; $56a5: $ff
    rst $18                                       ; $56a6: $df
    rst $38                                       ; $56a7: $ff
    ld e, a                                       ; $56a8: $5f
    inc bc                                        ; $56a9: $03
    ld a, a                                       ; $56aa: $7f
    add d                                         ; $56ab: $82
    ld h, [hl]                                    ; $56ac: $66
    ld a, [hl]                                    ; $56ad: $7e
    ld [bc], a                                    ; $56ae: $02
    inc a                                         ; $56af: $3c
    add d                                         ; $56b0: $82
    inc h                                         ; $56b1: $24
    inc a                                         ; $56b2: $3c
    ld [bc], a                                    ; $56b3: $02
    jr jr_0da_56c6                                ; $56b4: $18 $10

    nop                                           ; $56b6: $00
    ld [bc], a                                    ; $56b7: $02
    inc e                                         ; $56b8: $1c
    ld [bc], a                                    ; $56b9: $02
    jr @-$78                                      ; $56ba: $18 $86

    inc b                                         ; $56bc: $04
    inc e                                         ; $56bd: $1c
    rla                                           ; $56be: $17
    rra                                           ; $56bf: $1f
    add hl, de                                    ; $56c0: $19
    rra                                           ; $56c1: $1f
    ld [bc], a                                    ; $56c2: $02
    ld c, $14                                     ; $56c3: $0e $14
    nop                                           ; $56c5: $00

jr_0da_56c6:
    rst $38                                       ; $56c6: $ff
    rlca                                          ; $56c7: $07
    ld bc, $07f8                                  ; $56c8: $01 $f8 $07
    ld a, [c]                                     ; $56cb: $f2
    ld bc, $f9f5                                  ; $56cc: $01 $f5 $f9
    add e                                         ; $56cf: $83
    dec b                                         ; $56d0: $05
    nop                                           ; $56d1: $00
    ld [bc], a                                    ; $56d2: $02
    dec e                                         ; $56d3: $1d
    nop                                           ; $56d4: $00
    rst $38                                       ; $56d5: $ff
    dec c                                         ; $56d6: $0d
    inc b                                         ; $56d7: $04
    ld hl, sp+$07                                 ; $56d8: $f8 $07
    ld a, [c]                                     ; $56da: $f2
    ld bc, $f9ef                                  ; $56db: $01 $ef $f9
    xor $00                                       ; $56de: $ee $00
    cp $fa                                        ; $56e0: $fe $fa
    cp $fd                                        ; $56e2: $fe $fd
    ld [bc], a                                    ; $56e4: $02
    inc bc                                        ; $56e5: $03
    add h                                         ; $56e6: $84
    dec b                                         ; $56e7: $05
    rlca                                          ; $56e8: $07
    dec b                                         ; $56e9: $05
    rlca                                          ; $56ea: $07
    inc b                                         ; $56eb: $04
    rrca                                          ; $56ec: $0f
    inc bc                                        ; $56ed: $03
    rlca                                          ; $56ee: $07
    add c                                         ; $56ef: $81
    inc b                                         ; $56f0: $04
    ld [bc], a                                    ; $56f1: $02
    rlca                                          ; $56f2: $07
    ld [bc], a                                    ; $56f3: $02
    dec e                                         ; $56f4: $1d
    adc [hl]                                      ; $56f5: $8e
    ld h, $3e                                     ; $56f6: $26 $3e
    ld e, a                                       ; $56f8: $5f
    ld a, a                                       ; $56f9: $7f
    ld c, [hl]                                    ; $56fa: $4e
    ld a, a                                       ; $56fb: $7f
    cp [hl]                                       ; $56fc: $be
    rst $28                                       ; $56fd: $ef
    ld a, a                                       ; $56fe: $7f
    ld c, a                                       ; $56ff: $4f
    db $fd                                        ; $5700: $fd
    rst $38                                       ; $5701: $ff
    or e                                          ; $5702: $b3
    rst $38                                       ; $5703: $ff
    ld [bc], a                                    ; $5704: $02
    ld [hl], h                                    ; $5705: $74
    add h                                         ; $5706: $84
    ld e, h                                       ; $5707: $5c
    ld a, h                                       ; $5708: $7c
    ld a, d                                       ; $5709: $7a
    ld a, [hl]                                    ; $570a: $7e
    ld [bc], a                                    ; $570b: $02
    ld a, a                                       ; $570c: $7f
    adc [hl]                                      ; $570d: $8e
    ld a, [hl]                                    ; $570e: $7e
    ld a, [de]                                    ; $570f: $1a
    ld a, [hl]                                    ; $5710: $7e
    ld [hl], $7e                                  ; $5711: $36 $7e
    ld c, d                                       ; $5713: $4a
    ld a, [hl]                                    ; $5714: $7e
    ld c, d                                       ; $5715: $4a
    ld a, [hl]                                    ; $5716: $7e
    ld [hl], $7e                                  ; $5717: $36 $7e
    ld c, $7c                                     ; $5719: $0e $7c
    ld b, h                                       ; $571b: $44
    ld [bc], a                                    ; $571c: $02
    inc a                                         ; $571d: $3c
    adc b                                         ; $571e: $88
    ld a, [hl-]                                   ; $571f: $3a
    ld a, [hl]                                    ; $5720: $7e
    ld a, d                                       ; $5721: $7a
    halt                                          ; $5722: $76
    ld a, $72                                     ; $5723: $3e $72
    ld e, h                                       ; $5725: $5c
    ld a, h                                       ; $5726: $7c
    ld [bc], a                                    ; $5727: $02
    ld bc, $ff02                                  ; $5728: $01 $02 $ff
    add d                                         ; $572b: $82
    rst $00                                       ; $572c: $c7
    rst $38                                       ; $572d: $ff
    ld [bc], a                                    ; $572e: $02
    ld a, b                                       ; $572f: $78
    jr jr_0da_5732                                ; $5730: $18 $00

jr_0da_5732:
    ld [bc], a                                    ; $5732: $02
    ld b, $82                                     ; $5733: $06 $82
    ld bc, $0207                                  ; $5735: $01 $07 $02
    ld b, $1a                                     ; $5738: $06 $1a
    nop                                           ; $573a: $00
    rst $38                                       ; $573b: $ff
    rlca                                          ; $573c: $07
    ld bc, $07f8                                  ; $573d: $01 $f8 $07
    ld a, [c]                                     ; $5740: $f2
    ld bc, $faf7                                  ; $5741: $01 $f7 $fa
    add l                                         ; $5744: $85
    inc b                                         ; $5745: $04
    nop                                           ; $5746: $00
    ld [bc], a                                    ; $5747: $02
    nop                                           ; $5748: $00
    ld bc, $001b                                  ; $5749: $01 $1b $00
    rst $38                                       ; $574c: $ff
    rrca                                          ; $574d: $0f
    dec b                                         ; $574e: $05
    ei                                            ; $574f: $fb
    rlca                                          ; $5750: $07
    jp hl                                         ; $5751: $e9


    nop                                           ; $5752: $00
    ld [$e9f5], a                                 ; $5753: $ea $f5 $e9
    db $fd                                        ; $5756: $fd
    db $eb                                        ; $5757: $eb
    nop                                           ; $5758: $00
    ld sp, hl                                     ; $5759: $f9
    ei                                            ; $575a: $fb
    ld sp, hl                                     ; $575b: $f9
    cp $02                                        ; $575c: $fe $02
    ld bc, $0302                                  ; $575e: $01 $02 $03
    ld [bc], a                                    ; $5761: $02
    ld bc, $0302                                  ; $5762: $01 $02 $03
    ld [bc], a                                    ; $5765: $02
    ld bc, $0303                                  ; $5766: $01 $03 $03
    add c                                         ; $5769: $81
    ld [bc], a                                    ; $576a: $02
    ld [bc], a                                    ; $576b: $02
    ld bc, $0002                                  ; $576c: $01 $02 $00
    ld [bc], a                                    ; $576f: $02
    ld bc, $0e88                                  ; $5770: $01 $88 $0e
    rrca                                          ; $5773: $0f
    ld [hl], b                                    ; $5774: $70
    ld a, a                                       ; $5775: $7f
    ld [c], a                                     ; $5776: $e2
    cp a                                          ; $5777: $bf
    ld a, a                                       ; $5778: $7f
    ld e, a                                       ; $5779: $5f
    ld [bc], a                                    ; $577a: $02
    jr nz, jr_0da_577f                            ; $577b: $20 $02

    nop                                           ; $577d: $00
    ld [bc], a                                    ; $577e: $02

jr_0da_577f:
    dec a                                         ; $577f: $3d
    add l                                         ; $5780: $85
    rst $28                                       ; $5781: $ef
    rst $38                                       ; $5782: $ff
    cp [hl]                                       ; $5783: $be
    rst $38                                       ; $5784: $ff
    cp $02                                        ; $5785: $fe $02
    rst $38                                       ; $5787: $ff
    sub a                                         ; $5788: $97
    xor e                                         ; $5789: $ab
    rst $38                                       ; $578a: $ff
    rst $28                                       ; $578b: $ef
    rst $38                                       ; $578c: $ff
    sub e                                         ; $578d: $93
    rst $38                                       ; $578e: $ff
    sub d                                         ; $578f: $92
    rst $38                                       ; $5790: $ff
    rst $28                                       ; $5791: $ef
    cp $9a                                        ; $5792: $fe $9a
    rst $38                                       ; $5794: $ff
    rst $00                                       ; $5795: $c7
    cp d                                          ; $5796: $ba
    rst $38                                       ; $5797: $ff
    sub $ff                                       ; $5798: $d6 $ff
    rst $28                                       ; $579a: $ef
    rst $38                                       ; $579b: $ff
    sub $ff                                       ; $579c: $d6 $ff
    rst $28                                       ; $579e: $ef
    rst $38                                       ; $579f: $ff
    ld b, $04                                     ; $57a0: $06 $04
    ld [bc], a                                    ; $57a2: $02
    nop                                           ; $57a3: $00
    inc b                                         ; $57a4: $04
    inc b                                         ; $57a5: $04
    ld b, $00                                     ; $57a6: $06 $00
    inc b                                         ; $57a8: $04
    inc b                                         ; $57a9: $04
    adc d                                         ; $57aa: $8a
    ld [bc], a                                    ; $57ab: $02
    ld b, $02                                     ; $57ac: $06 $02
    ld b, $02                                     ; $57ae: $06 $02
    ld b, $7f                                     ; $57b0: $06 $7f
    ld sp, hl                                     ; $57b2: $f9
    ld a, [hl]                                    ; $57b3: $7e
    ld a, [$3804]                                 ; $57b4: $fa $04 $38
    add l                                         ; $57b7: $85
    db $fd                                        ; $57b8: $fd
    rst $38                                       ; $57b9: $ff
    ld [hl], l                                    ; $57ba: $75
    ld a, a                                       ; $57bb: $7f
    xor $03                                       ; $57bc: $ee $03
    rst $38                                       ; $57be: $ff
    add d                                         ; $57bf: $82
    ld c, d                                       ; $57c0: $4a
    ld a, e                                       ; $57c1: $7b
    ld [bc], a                                    ; $57c2: $02
    ld sp, $0014                                  ; $57c3: $31 $14 $00
    ld [bc], a                                    ; $57c6: $02
    rlca                                          ; $57c7: $07
    ld [bc], a                                    ; $57c8: $02
    ld b, $81                                     ; $57c9: $06 $81
    dec b                                         ; $57cb: $05
    inc bc                                        ; $57cc: $03
    rlca                                          ; $57cd: $07
    add d                                         ; $57ce: $82
    ld [bc], a                                    ; $57cf: $02
    ld b, $02                                     ; $57d0: $06 $02
    inc b                                         ; $57d2: $04
    stop                                          ; $57d3: $10 $00
    rst $38                                       ; $57d5: $ff

jr_0da_57d6:
    rlca                                          ; $57d6: $07
    ld bc, $07fb                                  ; $57d7: $01 $fb $07
    jp hl                                         ; $57da: $e9


    nop                                           ; $57db: $00
    db $f4                                        ; $57dc: $f4
    ei                                            ; $57dd: $fb
    add l                                         ; $57de: $85
    ld de, $0a00                                  ; $57df: $11 $00 $0a
    nop                                           ; $57e2: $00
    inc b                                         ; $57e3: $04
    dec de                                        ; $57e4: $1b
    nop                                           ; $57e5: $00
    rst $38                                       ; $57e6: $ff
    dec c                                         ; $57e7: $0d
    inc b                                         ; $57e8: $04
    ei                                            ; $57e9: $fb
    rlca                                          ; $57ea: $07
    jp hl                                         ; $57eb: $e9


    nop                                           ; $57ec: $00
    ld [$e9f8], a                                 ; $57ed: $ea $f8 $e9
    nop                                           ; $57f0: $00
    ld sp, hl                                     ; $57f1: $f9
    ld a, [$00f9]                                 ; $57f2: $fa $f9 $00
    ld [bc], a                                    ; $57f5: $02
    inc bc                                        ; $57f6: $03
    add a                                         ; $57f7: $87
    dec b                                         ; $57f8: $05
    rlca                                          ; $57f9: $07
    dec c                                         ; $57fa: $0d
    rrca                                          ; $57fb: $0f
    dec bc                                        ; $57fc: $0b
    rrca                                          ; $57fd: $0f
    dec bc                                        ; $57fe: $0b
    inc b                                         ; $57ff: $04
    rrca                                          ; $5800: $0f
    add c                                         ; $5801: $81
    inc c                                         ; $5802: $0c
    ld [bc], a                                    ; $5803: $02
    rlca                                          ; $5804: $07
    ld [bc], a                                    ; $5805: $02
    ld bc, $0302                                  ; $5806: $01 $02 $03
    adc d                                         ; $5809: $8a
    dec b                                         ; $580a: $05
    rlca                                          ; $580b: $07
    dec de                                        ; $580c: $1b
    rra                                           ; $580d: $1f
    ld l, c                                       ; $580e: $69
    ld a, a                                       ; $580f: $7f
    rst $20                                       ; $5810: $e7
    cp a                                          ; $5811: $bf
    rst $38                                       ; $5812: $ff
    sbc a                                         ; $5813: $9f
    ld [bc], a                                    ; $5814: $02
    ld h, a                                       ; $5815: $67
    ld [bc], a                                    ; $5816: $02
    add sp, -$7c                                  ; $5817: $e8 $84
    cp b                                          ; $5819: $b8
    ld hl, sp-$0c                                 ; $581a: $f8 $f4
    db $fc                                        ; $581c: $fc
    ld [bc], a                                    ; $581d: $02
    cp $98                                        ; $581e: $fe $98
    db $fc                                        ; $5820: $fc
    inc [hl]                                      ; $5821: $34
    db $fc                                        ; $5822: $fc
    ld l, h                                       ; $5823: $6c
    db $fc                                        ; $5824: $fc
    sub h                                         ; $5825: $94
    db $fc                                        ; $5826: $fc
    sub h                                         ; $5827: $94
    db $fc                                        ; $5828: $fc
    ld l, h                                       ; $5829: $6c
    db $fc                                        ; $582a: $fc
    inc e                                         ; $582b: $1c
    ld hl, sp-$78                                 ; $582c: $f8 $88
    ld [hl], b                                    ; $582e: $70
    ldh a, [$a8]                                  ; $582f: $f0 $a8
    ld hl, sp-$24                                 ; $5831: $f8 $dc
    db $fc                                        ; $5833: $fc
    xor [hl]                                      ; $5834: $ae
    cp $df                                        ; $5835: $fe $df
    ld sp, hl                                     ; $5837: $f9
    ld [bc], a                                    ; $5838: $02
    inc bc                                        ; $5839: $03
    adc h                                         ; $583a: $8c
    ld e, $1f                                     ; $583b: $1e $1f
    ld a, $3f                                     ; $583d: $3e $3f
    dec a                                         ; $583f: $3d
    ccf                                           ; $5840: $3f
    ld a, l                                       ; $5841: $7d
    ld a, a                                       ; $5842: $7f
    or a                                          ; $5843: $b7
    rst $38                                       ; $5844: $ff
    ld a, e                                       ; $5845: $7b
    ld a, a                                       ; $5846: $7f
    ld [bc], a                                    ; $5847: $02
    ld e, $10                                     ; $5848: $1e $10
    nop                                           ; $584a: $00
    add l                                         ; $584b: $85
    rra                                           ; $584c: $1f
    dec sp                                        ; $584d: $3b
    inc l                                         ; $584e: $2c
    inc a                                         ; $584f: $3c
    jr z, jr_0da_5857                             ; $5850: $28 $05

    jr c, jr_0da_57d6                             ; $5852: $38 $82

    inc [hl]                                      ; $5854: $34
    inc a                                         ; $5855: $3c
    ld [bc], a                                    ; $5856: $02

jr_0da_5857:
    jr c, jr_0da_586b                             ; $5857: $38 $12

    nop                                           ; $5859: $00
    rst $38                                       ; $585a: $ff
    rlca                                          ; $585b: $07
    ld bc, $07fb                                  ; $585c: $01 $fb $07
    jp hl                                         ; $585f: $e9


    nop                                           ; $5860: $00
    db $f4                                        ; $5861: $f4
    db $fc                                        ; $5862: $fc
    add l                                         ; $5863: $85
    ld [$0500], sp                                ; $5864: $08 $00 $05
    nop                                           ; $5867: $00
    ld [bc], a                                    ; $5868: $02
    dec de                                        ; $5869: $1b
    nop                                           ; $586a: $00

jr_0da_586b:
    rst $38                                       ; $586b: $ff
    dec c                                         ; $586c: $0d
    inc b                                         ; $586d: $04
    ei                                            ; $586e: $fb
    rlca                                          ; $586f: $07
    jp hl                                         ; $5870: $e9


    nop                                           ; $5871: $00
    ld [$e9f8], a                                 ; $5872: $ea $f8 $e9
    nop                                           ; $5875: $00
    ld sp, hl                                     ; $5876: $f9
    ld sp, hl                                     ; $5877: $f9
    ld sp, hl                                     ; $5878: $f9
    nop                                           ; $5879: $00
    ld [bc], a                                    ; $587a: $02
    inc bc                                        ; $587b: $03
    add a                                         ; $587c: $87
    dec b                                         ; $587d: $05
    rlca                                          ; $587e: $07
    dec c                                         ; $587f: $0d
    rrca                                          ; $5880: $0f
    dec bc                                        ; $5881: $0b
    rrca                                          ; $5882: $0f
    dec bc                                        ; $5883: $0b
    inc b                                         ; $5884: $04
    rrca                                          ; $5885: $0f
    add c                                         ; $5886: $81
    inc c                                         ; $5887: $0c
    ld [bc], a                                    ; $5888: $02
    rlca                                          ; $5889: $07
    ld [bc], a                                    ; $588a: $02
    ld bc, $0302                                  ; $588b: $01 $02 $03
    ld [bc], a                                    ; $588e: $02
    rlca                                          ; $588f: $07
    adc d                                         ; $5890: $8a
    add hl, bc                                    ; $5891: $09
    rrca                                          ; $5892: $0f
    inc sp                                        ; $5893: $33
    ccf                                           ; $5894: $3f
    ld h, l                                       ; $5895: $65
    ld a, a                                       ; $5896: $7f
    rst $28                                       ; $5897: $ef
    cp a                                          ; $5898: $bf
    rst $30                                       ; $5899: $f7
    sub a                                         ; $589a: $97
    ld [bc], a                                    ; $589b: $02
    add sp, -$7c                                  ; $589c: $e8 $84
    cp b                                          ; $589e: $b8
    ld hl, sp-$0c                                 ; $589f: $f8 $f4
    db $fc                                        ; $58a1: $fc
    ld [bc], a                                    ; $58a2: $02
    cp $98                                        ; $58a3: $fe $98
    db $fc                                        ; $58a5: $fc
    inc [hl]                                      ; $58a6: $34
    db $fc                                        ; $58a7: $fc
    ld l, h                                       ; $58a8: $6c
    db $fc                                        ; $58a9: $fc
    sub h                                         ; $58aa: $94
    db $fc                                        ; $58ab: $fc
    sub h                                         ; $58ac: $94
    db $fc                                        ; $58ad: $fc
    ld l, h                                       ; $58ae: $6c
    db $fc                                        ; $58af: $fc
    inc e                                         ; $58b0: $1c
    ld hl, sp-$78                                 ; $58b1: $f8 $88
    ld [hl], b                                    ; $58b3: $70
    ldh a, [$a8]                                  ; $58b4: $f0 $a8
    ld hl, sp-$24                                 ; $58b6: $f8 $dc
    db $fc                                        ; $58b8: $fc
    xor [hl]                                      ; $58b9: $ae
    cp $df                                        ; $58ba: $fe $df
    ld sp, hl                                     ; $58bc: $f9
    ld [bc], a                                    ; $58bd: $02
    ld bc, $cf02                                  ; $58be: $01 $02 $cf
    ld [bc], a                                    ; $58c1: $02
    rra                                           ; $58c2: $1f
    adc b                                         ; $58c3: $88
    ld e, $1f                                     ; $58c4: $1e $1f
    ld a, $3f                                     ; $58c6: $3e $3f
    ld e, e                                       ; $58c8: $5b
    ld a, a                                       ; $58c9: $7f
    dec a                                         ; $58ca: $3d
    ccf                                           ; $58cb: $3f
    ld [bc], a                                    ; $58cc: $02
    rrca                                          ; $58cd: $0f
    stop                                          ; $58ce: $10 $00
    add l                                         ; $58d0: $85
    ld e, a                                       ; $58d1: $5f
    ld a, e                                       ; $58d2: $7b
    inc l                                         ; $58d3: $2c
    ld a, h                                       ; $58d4: $7c
    jr z, jr_0da_58dc                             ; $58d5: $28 $05

    ld a, b                                       ; $58d7: $78
    add d                                         ; $58d8: $82
    ld [hl], h                                    ; $58d9: $74
    ld a, h                                       ; $58da: $7c
    ld [bc], a                                    ; $58db: $02

jr_0da_58dc:
    ld a, b                                       ; $58dc: $78
    ld [de], a                                    ; $58dd: $12
    nop                                           ; $58de: $00
    rst $38                                       ; $58df: $ff

jr_0da_58e0:
    rlca                                          ; $58e0: $07
    ld bc, $07fb                                  ; $58e1: $01 $fb $07
    jp hl                                         ; $58e4: $e9


    nop                                           ; $58e5: $00
    db $f4                                        ; $58e6: $f4
    db $fc                                        ; $58e7: $fc
    add l                                         ; $58e8: $85
    ld [$0500], sp                                ; $58e9: $08 $00 $05
    nop                                           ; $58ec: $00
    ld [bc], a                                    ; $58ed: $02
    dec de                                        ; $58ee: $1b
    nop                                           ; $58ef: $00
    rst $38                                       ; $58f0: $ff
    dec c                                         ; $58f1: $0d
    inc b                                         ; $58f2: $04
    ei                                            ; $58f3: $fb
    rlca                                          ; $58f4: $07
    jp hl                                         ; $58f5: $e9


    nop                                           ; $58f6: $00
    ld [$e9f8], a                                 ; $58f7: $ea $f8 $e9
    nop                                           ; $58fa: $00
    ld sp, hl                                     ; $58fb: $f9
    ld a, [$00f9]                                 ; $58fc: $fa $f9 $00
    ld [bc], a                                    ; $58ff: $02
    inc bc                                        ; $5900: $03
    add a                                         ; $5901: $87
    dec b                                         ; $5902: $05
    rlca                                          ; $5903: $07
    dec c                                         ; $5904: $0d
    rrca                                          ; $5905: $0f
    dec bc                                        ; $5906: $0b
    rrca                                          ; $5907: $0f
    dec bc                                        ; $5908: $0b
    inc b                                         ; $5909: $04
    rrca                                          ; $590a: $0f
    add c                                         ; $590b: $81
    inc c                                         ; $590c: $0c
    ld [bc], a                                    ; $590d: $02
    rlca                                          ; $590e: $07
    ld [bc], a                                    ; $590f: $02
    ld bc, $6702                                  ; $5910: $01 $02 $67
    add [hl]                                      ; $5913: $86
    ei                                            ; $5914: $fb
    cp a                                          ; $5915: $bf
    db $f4                                        ; $5916: $f4
    sbc a                                         ; $5917: $9f
    ld a, c                                       ; $5918: $79
    ld a, a                                       ; $5919: $7f
    ld [bc], a                                    ; $591a: $02
    rrca                                          ; $591b: $0f
    ld [bc], a                                    ; $591c: $02
    inc bc                                        ; $591d: $03
    ld [bc], a                                    ; $591e: $02
    rlca                                          ; $591f: $07
    ld [bc], a                                    ; $5920: $02
    add sp, -$7c                                  ; $5921: $e8 $84
    cp b                                          ; $5923: $b8
    ld hl, sp-$0c                                 ; $5924: $f8 $f4
    db $fc                                        ; $5926: $fc
    ld [bc], a                                    ; $5927: $02
    cp $98                                        ; $5928: $fe $98
    db $fc                                        ; $592a: $fc
    inc [hl]                                      ; $592b: $34
    db $fc                                        ; $592c: $fc
    ld l, h                                       ; $592d: $6c
    db $fc                                        ; $592e: $fc
    sub h                                         ; $592f: $94
    db $fc                                        ; $5930: $fc
    sub h                                         ; $5931: $94
    db $fc                                        ; $5932: $fc
    ld l, h                                       ; $5933: $6c
    db $fc                                        ; $5934: $fc
    inc e                                         ; $5935: $1c
    ld hl, sp-$78                                 ; $5936: $f8 $88
    ld [hl], b                                    ; $5938: $70
    ldh a, [$a8]                                  ; $5939: $f0 $a8
    ld hl, sp-$24                                 ; $593b: $f8 $dc
    db $fc                                        ; $593d: $fc
    xor [hl]                                      ; $593e: $ae
    cp $df                                        ; $593f: $fe $df
    ld sp, hl                                     ; $5941: $f9
    ld [bc], a                                    ; $5942: $02
    inc bc                                        ; $5943: $03
    adc h                                         ; $5944: $8c
    ld e, $1f                                     ; $5945: $1e $1f
    ld a, $3f                                     ; $5947: $3e $3f
    dec a                                         ; $5949: $3d
    ccf                                           ; $594a: $3f
    ld a, l                                       ; $594b: $7d
    ld a, a                                       ; $594c: $7f
    or a                                          ; $594d: $b7
    rst $38                                       ; $594e: $ff
    ld a, e                                       ; $594f: $7b
    ld a, a                                       ; $5950: $7f
    ld [bc], a                                    ; $5951: $02
    ld e, $10                                     ; $5952: $1e $10
    nop                                           ; $5954: $00
    add l                                         ; $5955: $85
    rra                                           ; $5956: $1f
    dec sp                                        ; $5957: $3b
    inc l                                         ; $5958: $2c
    inc a                                         ; $5959: $3c
    jr z, jr_0da_5961                             ; $595a: $28 $05

    jr c, jr_0da_58e0                             ; $595c: $38 $82

    inc [hl]                                      ; $595e: $34
    inc a                                         ; $595f: $3c
    ld [bc], a                                    ; $5960: $02

jr_0da_5961:
    jr c, jr_0da_5975                             ; $5961: $38 $12

    nop                                           ; $5963: $00
    rst $38                                       ; $5964: $ff

jr_0da_5965:
    rlca                                          ; $5965: $07
    ld bc, $07fb                                  ; $5966: $01 $fb $07
    jp hl                                         ; $5969: $e9


    nop                                           ; $596a: $00
    db $f4                                        ; $596b: $f4
    db $fc                                        ; $596c: $fc
    add l                                         ; $596d: $85
    ld [$0500], sp                                ; $596e: $08 $00 $05
    nop                                           ; $5971: $00
    ld [bc], a                                    ; $5972: $02
    dec de                                        ; $5973: $1b
    nop                                           ; $5974: $00

jr_0da_5975:
    rst $38                                       ; $5975: $ff
    dec c                                         ; $5976: $0d
    inc b                                         ; $5977: $04
    ei                                            ; $5978: $fb
    rlca                                          ; $5979: $07
    jp hl                                         ; $597a: $e9


    nop                                           ; $597b: $00
    ld [$e9f8], a                                 ; $597c: $ea $f8 $e9
    nop                                           ; $597f: $00
    ld sp, hl                                     ; $5980: $f9
    ld a, [$00f9]                                 ; $5981: $fa $f9 $00
    ld [bc], a                                    ; $5984: $02
    inc bc                                        ; $5985: $03
    add a                                         ; $5986: $87
    dec b                                         ; $5987: $05
    rlca                                          ; $5988: $07
    dec c                                         ; $5989: $0d
    rrca                                          ; $598a: $0f
    dec bc                                        ; $598b: $0b
    rrca                                          ; $598c: $0f
    dec bc                                        ; $598d: $0b
    inc b                                         ; $598e: $04
    rrca                                          ; $598f: $0f
    add c                                         ; $5990: $81
    inc c                                         ; $5991: $0c
    ld [bc], a                                    ; $5992: $02
    rlca                                          ; $5993: $07
    ld [bc], a                                    ; $5994: $02
    ld bc, $0702                                  ; $5995: $01 $02 $07
    ld [bc], a                                    ; $5998: $02
    rrca                                          ; $5999: $0f
    add [hl]                                      ; $599a: $86
    ld [hl], c                                    ; $599b: $71
    ld a, a                                       ; $599c: $7f
    jp hl                                         ; $599d: $e9


    cp a                                          ; $599e: $bf
    rst $28                                       ; $599f: $ef
    sbc a                                         ; $59a0: $9f
    ld [bc], a                                    ; $59a1: $02
    ld [hl], e                                    ; $59a2: $73
    ld [bc], a                                    ; $59a3: $02
    rlca                                          ; $59a4: $07
    ld [bc], a                                    ; $59a5: $02
    add sp, -$7c                                  ; $59a6: $e8 $84
    cp b                                          ; $59a8: $b8
    ld hl, sp-$0c                                 ; $59a9: $f8 $f4
    db $fc                                        ; $59ab: $fc
    ld [bc], a                                    ; $59ac: $02
    cp $98                                        ; $59ad: $fe $98
    db $fc                                        ; $59af: $fc
    inc [hl]                                      ; $59b0: $34
    db $fc                                        ; $59b1: $fc
    ld l, h                                       ; $59b2: $6c
    db $fc                                        ; $59b3: $fc
    sub h                                         ; $59b4: $94
    db $fc                                        ; $59b5: $fc
    sub h                                         ; $59b6: $94
    db $fc                                        ; $59b7: $fc
    ld l, h                                       ; $59b8: $6c
    db $fc                                        ; $59b9: $fc
    inc e                                         ; $59ba: $1c
    ld hl, sp-$78                                 ; $59bb: $f8 $88
    ld [hl], b                                    ; $59bd: $70
    ldh a, [$a8]                                  ; $59be: $f0 $a8
    ld hl, sp-$24                                 ; $59c0: $f8 $dc
    db $fc                                        ; $59c2: $fc
    xor [hl]                                      ; $59c3: $ae
    cp $df                                        ; $59c4: $fe $df
    ld sp, hl                                     ; $59c6: $f9
    ld [bc], a                                    ; $59c7: $02
    inc bc                                        ; $59c8: $03
    adc h                                         ; $59c9: $8c
    ld e, $1f                                     ; $59ca: $1e $1f
    ld a, $3f                                     ; $59cc: $3e $3f
    dec a                                         ; $59ce: $3d
    ccf                                           ; $59cf: $3f
    ld a, l                                       ; $59d0: $7d
    ld a, a                                       ; $59d1: $7f
    or a                                          ; $59d2: $b7
    rst $38                                       ; $59d3: $ff
    ld a, e                                       ; $59d4: $7b
    ld a, a                                       ; $59d5: $7f
    ld [bc], a                                    ; $59d6: $02
    ld e, $10                                     ; $59d7: $1e $10
    nop                                           ; $59d9: $00
    add l                                         ; $59da: $85
    rra                                           ; $59db: $1f
    dec sp                                        ; $59dc: $3b
    inc l                                         ; $59dd: $2c
    inc a                                         ; $59de: $3c
    jr z, jr_0da_59e6                             ; $59df: $28 $05

    jr c, jr_0da_5965                             ; $59e1: $38 $82

    inc [hl]                                      ; $59e3: $34
    inc a                                         ; $59e4: $3c
    ld [bc], a                                    ; $59e5: $02

jr_0da_59e6:
    jr c, jr_0da_59fa                             ; $59e6: $38 $12

    nop                                           ; $59e8: $00
    rst $38                                       ; $59e9: $ff
    rlca                                          ; $59ea: $07
    ld bc, $07fb                                  ; $59eb: $01 $fb $07
    jp hl                                         ; $59ee: $e9


    nop                                           ; $59ef: $00
    db $f4                                        ; $59f0: $f4
    db $fc                                        ; $59f1: $fc
    add l                                         ; $59f2: $85
    ld [$0500], sp                                ; $59f3: $08 $00 $05
    nop                                           ; $59f6: $00
    ld [bc], a                                    ; $59f7: $02
    dec de                                        ; $59f8: $1b
    nop                                           ; $59f9: $00

jr_0da_59fa:
    rst $38                                       ; $59fa: $ff
    dec c                                         ; $59fb: $0d
    inc b                                         ; $59fc: $04
    ei                                            ; $59fd: $fb
    rlca                                          ; $59fe: $07
    jp hl                                         ; $59ff: $e9


    nop                                           ; $5a00: $00
    jp hl                                         ; $5a01: $e9


    ei                                            ; $5a02: $fb
    jp hl                                         ; $5a03: $e9


    nop                                           ; $5a04: $00
    ld sp, hl                                     ; $5a05: $f9
    ld a, [$00f9]                                 ; $5a06: $fa $f9 $00
    ld [bc], a                                    ; $5a09: $02
    rlca                                          ; $5a0a: $07
    sbc [hl]                                      ; $5a0b: $9e
    dec e                                         ; $5a0c: $1d
    rra                                           ; $5a0d: $1f
    cpl                                           ; $5a0e: $2f
    ccf                                           ; $5a0f: $3f
    ld l, a                                       ; $5a10: $6f
    ld a, a                                       ; $5a11: $7f
    ld e, a                                       ; $5a12: $5f
    ld a, c                                       ; $5a13: $79
    ld e, a                                       ; $5a14: $5f
    ld a, e                                       ; $5a15: $7b
    ld a, a                                       ; $5a16: $7f
    ld a, h                                       ; $5a17: $7c
    ld a, a                                       ; $5a18: $7f
    ld h, h                                       ; $5a19: $64
    ccf                                           ; $5a1a: $3f
    dec sp                                        ; $5a1b: $3b
    rrca                                          ; $5a1c: $0f
    ld [$3c3f], sp                                ; $5a1d: $08 $3f $3c
    ld l, e                                       ; $5a20: $6b
    ld a, a                                       ; $5a21: $7f
    ld c, l                                       ; $5a22: $4d
    ld a, a                                       ; $5a23: $7f
    sbc [hl]                                      ; $5a24: $9e
    rst $38                                       ; $5a25: $ff
    sbc l                                         ; $5a26: $9d
    rst $38                                       ; $5a27: $ff
    sbc $ff                                       ; $5a28: $de $ff
    ld [bc], a                                    ; $5a2a: $02
    ld [$1802], sp                                ; $5a2b: $08 $02 $18
    add d                                         ; $5a2e: $82
    inc d                                         ; $5a2f: $14
    inc e                                         ; $5a30: $1c
    ld [bc], a                                    ; $5a31: $02
    ld e, $8a                                     ; $5a32: $1e $8a
    inc e                                         ; $5a34: $1c
    inc d                                         ; $5a35: $14
    inc e                                         ; $5a36: $1c
    inc c                                         ; $5a37: $0c
    inc e                                         ; $5a38: $1c
    inc d                                         ; $5a39: $14
    inc e                                         ; $5a3a: $1c
    inc d                                         ; $5a3b: $14
    inc e                                         ; $5a3c: $1c
    inc c                                         ; $5a3d: $0c
    ld [bc], a                                    ; $5a3e: $02
    inc e                                         ; $5a3f: $1c
    add d                                         ; $5a40: $82
    jr jr_0da_5a4b                                ; $5a41: $18 $08

    ld [bc], a                                    ; $5a43: $02
    db $10                                        ; $5a44: $10
    add d                                         ; $5a45: $82
    ld [$0218], sp                                ; $5a46: $08 $18 $02
    inc e                                         ; $5a49: $1c
    add h                                         ; $5a4a: $84

jr_0da_5a4b:
    ld c, $1e                                     ; $5a4b: $0e $1e
    rra                                           ; $5a4d: $1f
    add hl, de                                    ; $5a4e: $19
    ld [bc], a                                    ; $5a4f: $02
    ccf                                           ; $5a50: $3f
    adc h                                         ; $5a51: $8c
    ld a, [hl]                                    ; $5a52: $7e
    ld c, a                                       ; $5a53: $4f
    ld a, [hl]                                    ; $5a54: $7e
    ld l, a                                       ; $5a55: $6f
    dec a                                         ; $5a56: $3d
    ccf                                           ; $5a57: $3f
    ld a, l                                       ; $5a58: $7d
    ld a, a                                       ; $5a59: $7f
    or a                                          ; $5a5a: $b7
    rst $38                                       ; $5a5b: $ff
    ld a, e                                       ; $5a5c: $7b
    ld a, a                                       ; $5a5d: $7f
    ld [bc], a                                    ; $5a5e: $02
    ld e, $10                                     ; $5a5f: $1e $10
    nop                                           ; $5a61: $00
    add l                                         ; $5a62: $85
    rra                                           ; $5a63: $1f
    dec sp                                        ; $5a64: $3b
    inc l                                         ; $5a65: $2c
    inc a                                         ; $5a66: $3c
    jr z, jr_0da_5a6e                             ; $5a67: $28 $05

    jr c, @-$7c                                   ; $5a69: $38 $82

    inc [hl]                                      ; $5a6b: $34
    inc a                                         ; $5a6c: $3c
    ld [bc], a                                    ; $5a6d: $02

jr_0da_5a6e:
    jr c, jr_0da_5a82                             ; $5a6e: $38 $12

    nop                                           ; $5a70: $00
    rst $38                                       ; $5a71: $ff
    rlca                                          ; $5a72: $07
    ld bc, $07fb                                  ; $5a73: $01 $fb $07
    jp hl                                         ; $5a76: $e9


    nop                                           ; $5a77: $00
    db $f4                                        ; $5a78: $f4
    db $fc                                        ; $5a79: $fc
    add l                                         ; $5a7a: $85
    ld [$0500], sp                                ; $5a7b: $08 $00 $05
    nop                                           ; $5a7e: $00
    ld [bc], a                                    ; $5a7f: $02
    dec de                                        ; $5a80: $1b
    nop                                           ; $5a81: $00

jr_0da_5a82:
    rst $38                                       ; $5a82: $ff
    dec c                                         ; $5a83: $0d
    inc b                                         ; $5a84: $04
    ei                                            ; $5a85: $fb
    rlca                                          ; $5a86: $07
    jp hl                                         ; $5a87: $e9


    nop                                           ; $5a88: $00
    jp hl                                         ; $5a89: $e9


    ei                                            ; $5a8a: $fb
    jp hl                                         ; $5a8b: $e9


    nop                                           ; $5a8c: $00
    ld sp, hl                                     ; $5a8d: $f9
    ld a, [$00f9]                                 ; $5a8e: $fa $f9 $00
    ld [bc], a                                    ; $5a91: $02
    rlca                                          ; $5a92: $07
    sbc [hl]                                      ; $5a93: $9e
    dec e                                         ; $5a94: $1d
    rra                                           ; $5a95: $1f
    cpl                                           ; $5a96: $2f
    ccf                                           ; $5a97: $3f
    ld l, a                                       ; $5a98: $6f
    ld a, a                                       ; $5a99: $7f
    ld e, a                                       ; $5a9a: $5f
    ld a, c                                       ; $5a9b: $79
    ld e, a                                       ; $5a9c: $5f
    ld a, e                                       ; $5a9d: $7b
    ld a, a                                       ; $5a9e: $7f
    ld a, h                                       ; $5a9f: $7c
    ld a, a                                       ; $5aa0: $7f
    ld h, h                                       ; $5aa1: $64
    ccf                                           ; $5aa2: $3f
    dec sp                                        ; $5aa3: $3b
    rrca                                          ; $5aa4: $0f
    ld [$7c7f], sp                                ; $5aa5: $08 $7f $7c
    ld c, e                                       ; $5aa8: $4b
    ld a, a                                       ; $5aa9: $7f
    adc l                                         ; $5aaa: $8d
    rst $38                                       ; $5aab: $ff
    sbc $ff                                       ; $5aac: $de $ff
    db $fd                                        ; $5aae: $fd
    rst $38                                       ; $5aaf: $ff
    cp $9f                                        ; $5ab0: $fe $9f
    ld [bc], a                                    ; $5ab2: $02
    ld [$1802], sp                                ; $5ab3: $08 $02 $18
    add d                                         ; $5ab6: $82
    inc d                                         ; $5ab7: $14
    inc e                                         ; $5ab8: $1c
    ld [bc], a                                    ; $5ab9: $02
    ld e, $8a                                     ; $5aba: $1e $8a
    inc e                                         ; $5abc: $1c
    inc d                                         ; $5abd: $14
    inc e                                         ; $5abe: $1c
    inc c                                         ; $5abf: $0c

jr_0da_5ac0:
    inc e                                         ; $5ac0: $1c
    inc d                                         ; $5ac1: $14
    inc e                                         ; $5ac2: $1c
    inc d                                         ; $5ac3: $14
    inc e                                         ; $5ac4: $1c
    inc c                                         ; $5ac5: $0c
    ld [bc], a                                    ; $5ac6: $02
    inc e                                         ; $5ac7: $1c
    add d                                         ; $5ac8: $82
    jr jr_0da_5ad3                                ; $5ac9: $18 $08

    ld [bc], a                                    ; $5acb: $02
    db $10                                        ; $5acc: $10
    add d                                         ; $5acd: $82
    ld [$0218], sp                                ; $5ace: $08 $18 $02
    inc e                                         ; $5ad1: $1c
    sub d                                         ; $5ad2: $92

jr_0da_5ad3:
    ld c, $1e                                     ; $5ad3: $0e $1e
    rra                                           ; $5ad5: $1f
    add hl, de                                    ; $5ad6: $19
    ld a, a                                       ; $5ad7: $7f
    ld l, a                                       ; $5ad8: $6f
    ld a, $3f                                     ; $5ad9: $3e $3f
    ld a, $3f                                     ; $5adb: $3e $3f
    dec a                                         ; $5add: $3d
    ccf                                           ; $5ade: $3f
    ld a, l                                       ; $5adf: $7d
    ld a, a                                       ; $5ae0: $7f
    or a                                          ; $5ae1: $b7
    rst $38                                       ; $5ae2: $ff
    ld a, e                                       ; $5ae3: $7b
    ld a, a                                       ; $5ae4: $7f
    ld [bc], a                                    ; $5ae5: $02
    ld e, $10                                     ; $5ae6: $1e $10
    nop                                           ; $5ae8: $00
    add l                                         ; $5ae9: $85

jr_0da_5aea:
    rra                                           ; $5aea: $1f
    dec sp                                        ; $5aeb: $3b
    inc l                                         ; $5aec: $2c
    inc a                                         ; $5aed: $3c
    jr z, jr_0da_5af5                             ; $5aee: $28 $05

    jr c, @-$7c                                   ; $5af0: $38 $82

    inc [hl]                                      ; $5af2: $34
    inc a                                         ; $5af3: $3c
    ld [bc], a                                    ; $5af4: $02

jr_0da_5af5:
    jr c, jr_0da_5b09                             ; $5af5: $38 $12

    nop                                           ; $5af7: $00
    rst $38                                       ; $5af8: $ff

jr_0da_5af9:
    rlca                                          ; $5af9: $07
    ld bc, $07fb                                  ; $5afa: $01 $fb $07
    jp hl                                         ; $5afd: $e9


    nop                                           ; $5afe: $00
    db $f4                                        ; $5aff: $f4
    db $fc                                        ; $5b00: $fc
    add l                                         ; $5b01: $85
    ld [$0500], sp                                ; $5b02: $08 $00 $05
    nop                                           ; $5b05: $00
    ld [bc], a                                    ; $5b06: $02
    dec de                                        ; $5b07: $1b
    nop                                           ; $5b08: $00

jr_0da_5b09:
    rst $38                                       ; $5b09: $ff
    dec c                                         ; $5b0a: $0d
    inc b                                         ; $5b0b: $04
    ei                                            ; $5b0c: $fb
    rlca                                          ; $5b0d: $07
    jp hl                                         ; $5b0e: $e9


    nop                                           ; $5b0f: $00
    jp hl                                         ; $5b10: $e9


    ld a, [$00e9]                                 ; $5b11: $fa $e9 $00
    ld sp, hl                                     ; $5b14: $f9
    ld a, [$00f9]                                 ; $5b15: $fa $f9 $00
    ld [bc], a                                    ; $5b18: $02
    inc bc                                        ; $5b19: $03
    sub a                                         ; $5b1a: $97
    ld c, $0f                                     ; $5b1b: $0e $0f
    rla                                           ; $5b1d: $17
    rra                                           ; $5b1e: $1f
    scf                                           ; $5b1f: $37
    ccf                                           ; $5b20: $3f
    cpl                                           ; $5b21: $2f
    inc a                                         ; $5b22: $3c
    cpl                                           ; $5b23: $2f
    dec a                                         ; $5b24: $3d
    ccf                                           ; $5b25: $3f
    ld a, $3f                                     ; $5b26: $3e $3f
    ld [hl-], a                                   ; $5b28: $32
    rra                                           ; $5b29: $1f
    dec e                                         ; $5b2a: $1d
    ld h, a                                       ; $5b2b: $67
    ld h, h                                       ; $5b2c: $64
    rst $38                                       ; $5b2d: $ff
    sbc [hl]                                      ; $5b2e: $9e
    db $fd                                        ; $5b2f: $fd
    rst $38                                       ; $5b30: $ff
    or [hl]                                       ; $5b31: $b6
    inc bc                                        ; $5b32: $03
    rst $38                                       ; $5b33: $ff
    add h                                         ; $5b34: $84
    and [hl]                                      ; $5b35: $a6
    rst $38                                       ; $5b36: $ff
    ld c, a                                       ; $5b37: $4f
    ld a, a                                       ; $5b38: $7f
    ld [bc], a                                    ; $5b39: $02
    jr z, jr_0da_5b3e                             ; $5b3a: $28 $02

    jr c, jr_0da_5ac0                             ; $5b3c: $38 $82

jr_0da_5b3e:
    inc [hl]                                      ; $5b3e: $34
    inc a                                         ; $5b3f: $3c
    ld [bc], a                                    ; $5b40: $02
    ld a, $8e                                     ; $5b41: $3e $8e
    inc a                                         ; $5b43: $3c
    inc [hl]                                      ; $5b44: $34
    inc a                                         ; $5b45: $3c
    inc l                                         ; $5b46: $2c
    inc a                                         ; $5b47: $3c
    inc d                                         ; $5b48: $14
    inc a                                         ; $5b49: $3c
    inc d                                         ; $5b4a: $14
    inc a                                         ; $5b4b: $3c
    inc l                                         ; $5b4c: $2c
    inc a                                         ; $5b4d: $3c
    inc e                                         ; $5b4e: $1c
    jr c, @+$0a                                   ; $5b4f: $38 $08

    ld [bc], a                                    ; $5b51: $02
    jr nc, jr_0da_5aea                            ; $5b52: $30 $96

    jr z, jr_0da_5b8e                             ; $5b54: $28 $38

    inc e                                         ; $5b56: $1c
    inc a                                         ; $5b57: $3c
    ld l, $3e                                     ; $5b58: $2e $3e
    rra                                           ; $5b5a: $1f
    add hl, sp                                    ; $5b5b: $39
    ld c, a                                       ; $5b5c: $4f
    ld a, a                                       ; $5b5d: $7f
    ld a, $3f                                     ; $5b5e: $3e $3f
    ld a, $3f                                     ; $5b60: $3e $3f
    dec a                                         ; $5b62: $3d
    ccf                                           ; $5b63: $3f
    ld a, l                                       ; $5b64: $7d
    ld a, a                                       ; $5b65: $7f
    or a                                          ; $5b66: $b7
    rst $38                                       ; $5b67: $ff
    ld a, e                                       ; $5b68: $7b
    ld a, a                                       ; $5b69: $7f
    ld [bc], a                                    ; $5b6a: $02
    ld e, $10                                     ; $5b6b: $1e $10
    nop                                           ; $5b6d: $00
    add l                                         ; $5b6e: $85
    rra                                           ; $5b6f: $1f
    dec sp                                        ; $5b70: $3b
    inc l                                         ; $5b71: $2c
    inc a                                         ; $5b72: $3c
    jr z, jr_0da_5b7a                             ; $5b73: $28 $05

    jr c, jr_0da_5af9                             ; $5b75: $38 $82

    inc [hl]                                      ; $5b77: $34
    inc a                                         ; $5b78: $3c
    ld [bc], a                                    ; $5b79: $02

jr_0da_5b7a:
    jr c, jr_0da_5b8e                             ; $5b7a: $38 $12

    nop                                           ; $5b7c: $00
    rst $38                                       ; $5b7d: $ff
    rlca                                          ; $5b7e: $07

jr_0da_5b7f:
    ld bc, $07fb                                  ; $5b7f: $01 $fb $07
    jp hl                                         ; $5b82: $e9


    nop                                           ; $5b83: $00
    db $f4                                        ; $5b84: $f4
    db $fc                                        ; $5b85: $fc
    add l                                         ; $5b86: $85
    ld [$0500], sp                                ; $5b87: $08 $00 $05
    nop                                           ; $5b8a: $00
    ld [bc], a                                    ; $5b8b: $02
    dec de                                        ; $5b8c: $1b
    nop                                           ; $5b8d: $00

jr_0da_5b8e:
    rst $38                                       ; $5b8e: $ff
    dec c                                         ; $5b8f: $0d
    inc b                                         ; $5b90: $04
    ei                                            ; $5b91: $fb
    rlca                                          ; $5b92: $07
    jp hl                                         ; $5b93: $e9


    nop                                           ; $5b94: $00
    jp hl                                         ; $5b95: $e9


    ld sp, hl                                     ; $5b96: $f9
    jp hl                                         ; $5b97: $e9


    nop                                           ; $5b98: $00
    ld sp, hl                                     ; $5b99: $f9
    ld a, [$00f9]                                 ; $5b9a: $fa $f9 $00
    ld [bc], a                                    ; $5b9d: $02
    ld bc, $0702                                  ; $5b9e: $01 $02 $07
    sbc d                                         ; $5ba1: $9a
    dec bc                                        ; $5ba2: $0b
    rrca                                          ; $5ba3: $0f
    dec de                                        ; $5ba4: $1b
    rra                                           ; $5ba5: $1f
    rla                                           ; $5ba6: $17
    ld e, $77                                     ; $5ba7: $1e $77
    ld a, [hl]                                    ; $5ba9: $7e
    rst $38                                       ; $5baa: $ff
    sbc a                                         ; $5bab: $9f
    rst $38                                       ; $5bac: $ff
    cp c                                          ; $5bad: $b9
    rst $38                                       ; $5bae: $ff
    cp $93                                        ; $5baf: $fe $93
    ld a, [c]                                     ; $5bb1: $f2
    and a                                         ; $5bb2: $a7
    rst $20                                       ; $5bb3: $e7
    jp c, $cfff                                   ; $5bb4: $da $ff $cf

    rst $38                                       ; $5bb7: $ff
    ld [hl], e                                    ; $5bb8: $73
    ld a, a                                       ; $5bb9: $7f
    ld l, e                                       ; $5bba: $6b
    ld a, a                                       ; $5bbb: $7f
    ld [bc], a                                    ; $5bbc: $02
    rra                                           ; $5bbd: $1f
    ld [bc], a                                    ; $5bbe: $02
    ld l, b                                       ; $5bbf: $68
    add h                                         ; $5bc0: $84
    jr c, jr_0da_5c3b                             ; $5bc1: $38 $78

    ld [hl], h                                    ; $5bc3: $74
    ld a, h                                       ; $5bc4: $7c
    ld [bc], a                                    ; $5bc5: $02
    ld a, [hl]                                    ; $5bc6: $7e
    adc [hl]                                      ; $5bc7: $8e
    ld a, h                                       ; $5bc8: $7c
    inc [hl]                                      ; $5bc9: $34
    ld a, h                                       ; $5bca: $7c
    ld l, h                                       ; $5bcb: $6c
    ld a, h                                       ; $5bcc: $7c
    inc d                                         ; $5bcd: $14
    ld a, h                                       ; $5bce: $7c
    inc d                                         ; $5bcf: $14
    ld a, h                                       ; $5bd0: $7c
    ld l, h                                       ; $5bd1: $6c
    ld a, h                                       ; $5bd2: $7c
    inc e                                         ; $5bd3: $1c
    ld a, b                                       ; $5bd4: $78
    ld [$7002], sp                                ; $5bd5: $08 $02 $70
    adc b                                         ; $5bd8: $88
    jr z, jr_0da_5c53                             ; $5bd9: $28 $78

    ld e, h                                       ; $5bdb: $5c
    ld a, h                                       ; $5bdc: $7c
    ld l, $7e                                     ; $5bdd: $2e $7e
    ld e, a                                       ; $5bdf: $5f
    ld a, c                                       ; $5be0: $79
    ld [bc], a                                    ; $5be1: $02
    rra                                           ; $5be2: $1f
    adc h                                         ; $5be3: $8c
    ld a, $3f                                     ; $5be4: $3e $3f
    ld a, $3f                                     ; $5be6: $3e $3f
    dec a                                         ; $5be8: $3d
    ccf                                           ; $5be9: $3f
    ld a, l                                       ; $5bea: $7d
    ld a, a                                       ; $5beb: $7f
    or a                                          ; $5bec: $b7
    rst $38                                       ; $5bed: $ff
    ld a, e                                       ; $5bee: $7b
    ld a, a                                       ; $5bef: $7f
    ld [bc], a                                    ; $5bf0: $02
    ld e, $10                                     ; $5bf1: $1e $10
    nop                                           ; $5bf3: $00
    add l                                         ; $5bf4: $85
    rra                                           ; $5bf5: $1f
    dec sp                                        ; $5bf6: $3b
    inc l                                         ; $5bf7: $2c
    inc a                                         ; $5bf8: $3c
    jr z, jr_0da_5c00                             ; $5bf9: $28 $05

    jr c, jr_0da_5b7f                             ; $5bfb: $38 $82

    inc [hl]                                      ; $5bfd: $34
    inc a                                         ; $5bfe: $3c
    ld [bc], a                                    ; $5bff: $02

jr_0da_5c00:
    jr c, jr_0da_5c14                             ; $5c00: $38 $12

    nop                                           ; $5c02: $00
    rst $38                                       ; $5c03: $ff
    rlca                                          ; $5c04: $07
    ld bc, $07fb                                  ; $5c05: $01 $fb $07
    jp hl                                         ; $5c08: $e9


    nop                                           ; $5c09: $00
    db $f4                                        ; $5c0a: $f4
    db $fc                                        ; $5c0b: $fc
    add l                                         ; $5c0c: $85
    ld [$0500], sp                                ; $5c0d: $08 $00 $05
    nop                                           ; $5c10: $00
    ld [bc], a                                    ; $5c11: $02
    dec de                                        ; $5c12: $1b
    nop                                           ; $5c13: $00

jr_0da_5c14:
    rst $38                                       ; $5c14: $ff
    dec c                                         ; $5c15: $0d
    inc b                                         ; $5c16: $04
    ei                                            ; $5c17: $fb
    rlca                                          ; $5c18: $07
    jp hl                                         ; $5c19: $e9


    nop                                           ; $5c1a: $00
    jp hl                                         ; $5c1b: $e9


    ld hl, sp-$18                                 ; $5c1c: $f8 $e8
    rst $38                                       ; $5c1e: $ff
    ld hl, sp-$06                                 ; $5c1f: $f8 $fa
    ld hl, sp-$01                                 ; $5c21: $f8 $ff
    ld [bc], a                                    ; $5c23: $02
    inc bc                                        ; $5c24: $03
    add [hl]                                      ; $5c25: $86
    ld h, l                                       ; $5c26: $65
    ld h, a                                       ; $5c27: $67
    push af                                       ; $5c28: $f5
    sub a                                         ; $5c29: $97
    ei                                            ; $5c2a: $fb
    cp a                                          ; $5c2b: $bf
    ld [bc], a                                    ; $5c2c: $02
    rst $30                                       ; $5c2d: $f7
    ld [bc], a                                    ; $5c2e: $02
    ld a, a                                       ; $5c2f: $7f
    adc [hl]                                      ; $5c30: $8e
    ld e, a                                       ; $5c31: $5f
    ld a, h                                       ; $5c32: $7c
    ld e, e                                       ; $5c33: $5b
    ld a, e                                       ; $5c34: $7b
    dec l                                         ; $5c35: $2d
    dec a                                         ; $5c36: $3d
    cpl                                           ; $5c37: $2f
    ccf                                           ; $5c38: $3f
    dec e                                         ; $5c39: $1d
    rra                                           ; $5c3a: $1f

jr_0da_5c3b:
    inc de                                        ; $5c3b: $13
    rra                                           ; $5c3c: $1f
    dec c                                         ; $5c3d: $0d
    rrca                                          ; $5c3e: $0f
    ld b, $07                                     ; $5c3f: $06 $07
    ld [bc], a                                    ; $5c41: $02
    ld [hl], h                                    ; $5c42: $74
    add h                                         ; $5c43: $84
    ld e, h                                       ; $5c44: $5c
    ld a, h                                       ; $5c45: $7c
    ld a, d                                       ; $5c46: $7a
    ld a, [hl]                                    ; $5c47: $7e
    ld [bc], a                                    ; $5c48: $02
    ld a, a                                       ; $5c49: $7f
    sbc b                                         ; $5c4a: $98
    ld a, [hl]                                    ; $5c4b: $7e
    ld a, [de]                                    ; $5c4c: $1a
    ld a, [hl]                                    ; $5c4d: $7e
    ld [hl], $7e                                  ; $5c4e: $36 $7e
    ld c, d                                       ; $5c50: $4a
    ld a, [hl]                                    ; $5c51: $7e
    ld c, d                                       ; $5c52: $4a

jr_0da_5c53:
    ld a, [hl]                                    ; $5c53: $7e
    ld [hl], $7e                                  ; $5c54: $36 $7e
    ld c, $7c                                     ; $5c56: $0e $7c
    ld b, h                                       ; $5c58: $44
    jr c, jr_0da_5cd3                             ; $5c59: $38 $78

    ld d, h                                       ; $5c5b: $54
    ld a, h                                       ; $5c5c: $7c
    ld l, h                                       ; $5c5d: $6c
    ld a, h                                       ; $5c5e: $7c
    ld d, h                                       ; $5c5f: $54
    ld a, h                                       ; $5c60: $7c
    ld l, [hl]                                    ; $5c61: $6e
    ld a, [hl]                                    ; $5c62: $7e
    ld [bc], a                                    ; $5c63: $02
    inc bc                                        ; $5c64: $03
    adc h                                         ; $5c65: $8c
    ld a, $3f                                     ; $5c66: $3e $3f
    ld a, $3f                                     ; $5c68: $3e $3f
    dec a                                         ; $5c6a: $3d
    ccf                                           ; $5c6b: $3f
    dec a                                         ; $5c6c: $3d

jr_0da_5c6d:
    ccf                                           ; $5c6d: $3f
    ld [hl], a                                    ; $5c6e: $77
    ld a, a                                       ; $5c6f: $7f
    cp e                                          ; $5c70: $bb
    rst $38                                       ; $5c71: $ff
    ld [bc], a                                    ; $5c72: $02
    ld a, [hl]                                    ; $5c73: $7e
    ld [bc], a                                    ; $5c74: $02
    inc c                                         ; $5c75: $0c
    ld c, $00                                     ; $5c76: $0e $00
    add [hl]                                      ; $5c78: $86
    rrca                                          ; $5c79: $0f
    add hl, de                                    ; $5c7a: $19
    rla                                           ; $5c7b: $17
    dec de                                        ; $5c7c: $1b
    ld d, $1e                                     ; $5c7d: $16 $1e
    inc b                                         ; $5c7f: $04
    inc e                                         ; $5c80: $1c
    add d                                         ; $5c81: $82
    ld a, [de]                                    ; $5c82: $1a
    ld e, $02                                     ; $5c83: $1e $02
    inc e                                         ; $5c85: $1c
    ld [bc], a                                    ; $5c86: $02
    jr jr_0da_5c99                                ; $5c87: $18 $10

    nop                                           ; $5c89: $00
    rst $38                                       ; $5c8a: $ff
    rlca                                          ; $5c8b: $07
    ld bc, $07fb                                  ; $5c8c: $01 $fb $07
    jp hl                                         ; $5c8f: $e9


    nop                                           ; $5c90: $00
    di                                            ; $5c91: $f3
    db $fc                                        ; $5c92: $fc
    add l                                         ; $5c93: $85
    ld [$0500], sp                                ; $5c94: $08 $00 $05
    nop                                           ; $5c97: $00
    ld [bc], a                                    ; $5c98: $02

jr_0da_5c99:
    dec de                                        ; $5c99: $1b
    nop                                           ; $5c9a: $00
    rst $38                                       ; $5c9b: $ff
    dec c                                         ; $5c9c: $0d
    inc b                                         ; $5c9d: $04
    ei                                            ; $5c9e: $fb
    rlca                                          ; $5c9f: $07
    jp hl                                         ; $5ca0: $e9


    nop                                           ; $5ca1: $00
    add sp, -$06                                  ; $5ca2: $e8 $fa
    add sp, -$01                                  ; $5ca4: $e8 $ff
    ld hl, sp-$06                                 ; $5ca6: $f8 $fa
    ld hl, sp-$01                                 ; $5ca8: $f8 $ff
    ld [bc], a                                    ; $5caa: $02
    inc bc                                        ; $5cab: $03
    sbc e                                         ; $5cac: $9b
    ld l, [hl]                                    ; $5cad: $6e
    ld l, a                                       ; $5cae: $6f
    rst $30                                       ; $5caf: $f7
    sbc a                                         ; $5cb0: $9f
    rst $30                                       ; $5cb1: $f7
    cp a                                          ; $5cb2: $bf
    ld l, a                                       ; $5cb3: $6f
    ld a, h                                       ; $5cb4: $7c
    rst $38                                       ; $5cb5: $ff
    db $fd                                        ; $5cb6: $fd
    cp a                                          ; $5cb7: $bf
    cp $bf                                        ; $5cb8: $fe $bf
    ld a, [c]                                     ; $5cba: $f2
    cp a                                          ; $5cbb: $bf
    db $fd                                        ; $5cbc: $fd
    or a                                          ; $5cbd: $b7
    db $f4                                        ; $5cbe: $f4
    ld a, a                                       ; $5cbf: $7f
    ld a, [hl]                                    ; $5cc0: $7e
    ld d, l                                       ; $5cc1: $55
    ld a, a                                       ; $5cc2: $7f
    ld c, [hl]                                    ; $5cc3: $4e
    ld a, a                                       ; $5cc4: $7f
    scf                                           ; $5cc5: $37
    ccf                                           ; $5cc6: $3f
    ld e, $03                                     ; $5cc7: $1e $03
    rra                                           ; $5cc9: $1f
    ld [bc], a                                    ; $5cca: $02
    inc d                                         ; $5ccb: $14
    ld [bc], a                                    ; $5ccc: $02
    inc e                                         ; $5ccd: $1c
    add d                                         ; $5cce: $82
    ld a, [de]                                    ; $5ccf: $1a
    ld e, $02                                     ; $5cd0: $1e $02
    rra                                           ; $5cd2: $1f

jr_0da_5cd3:
    adc [hl]                                      ; $5cd3: $8e
    ld e, $1a                                     ; $5cd4: $1e $1a
    ld e, $16                                     ; $5cd6: $1e $16
    ld e, $0a                                     ; $5cd8: $1e $0a
    ld e, $0a                                     ; $5cda: $1e $0a
    ld e, $16                                     ; $5cdc: $1e $16
    ld e, $0e                                     ; $5cde: $1e $0e
    inc e                                         ; $5ce0: $1c
    inc b                                         ; $5ce1: $04
    ld [bc], a                                    ; $5ce2: $02
    jr jr_0da_5c6d                                ; $5ce3: $18 $88

    inc d                                         ; $5ce5: $14
    inc e                                         ; $5ce6: $1c
    inc c                                         ; $5ce7: $0c
    inc e                                         ; $5ce8: $1c
    inc d                                         ; $5ce9: $14
    inc e                                         ; $5cea: $1c
    ld c, $1e                                     ; $5ceb: $0e $1e
    ld [bc], a                                    ; $5ced: $02
    rra                                           ; $5cee: $1f
    adc h                                         ; $5cef: $8c
    ld a, $3f                                     ; $5cf0: $3e $3f
    ld a, $3f                                     ; $5cf2: $3e $3f
    dec a                                         ; $5cf4: $3d
    ccf                                           ; $5cf5: $3f
    dec a                                         ; $5cf6: $3d
    ccf                                           ; $5cf7: $3f
    ld [hl], a                                    ; $5cf8: $77
    ld a, a                                       ; $5cf9: $7f
    cp e                                          ; $5cfa: $bb
    rst $38                                       ; $5cfb: $ff
    ld [bc], a                                    ; $5cfc: $02
    ld a, [hl]                                    ; $5cfd: $7e
    ld [bc], a                                    ; $5cfe: $02
    inc c                                         ; $5cff: $0c
    ld c, $00                                     ; $5d00: $0e $00
    add [hl]                                      ; $5d02: $86
    rrca                                          ; $5d03: $0f
    add hl, de                                    ; $5d04: $19
    rla                                           ; $5d05: $17
    dec de                                        ; $5d06: $1b
    ld d, $1e                                     ; $5d07: $16 $1e
    inc b                                         ; $5d09: $04
    inc e                                         ; $5d0a: $1c
    add d                                         ; $5d0b: $82
    ld a, [de]                                    ; $5d0c: $1a
    ld e, $02                                     ; $5d0d: $1e $02
    inc e                                         ; $5d0f: $1c
    ld [bc], a                                    ; $5d10: $02
    jr jr_0da_5d23                                ; $5d11: $18 $10

    nop                                           ; $5d13: $00
    rst $38                                       ; $5d14: $ff
    rlca                                          ; $5d15: $07
    ld bc, $07fb                                  ; $5d16: $01 $fb $07
    jp hl                                         ; $5d19: $e9


    nop                                           ; $5d1a: $00
    di                                            ; $5d1b: $f3
    db $fc                                        ; $5d1c: $fc
    add l                                         ; $5d1d: $85
    ld [$0500], sp                                ; $5d1e: $08 $00 $05
    nop                                           ; $5d21: $00
    ld [bc], a                                    ; $5d22: $02

jr_0da_5d23:
    dec de                                        ; $5d23: $1b
    nop                                           ; $5d24: $00
    rst $38                                       ; $5d25: $ff
    dec c                                         ; $5d26: $0d
    inc b                                         ; $5d27: $04
    ei                                            ; $5d28: $fb
    rlca                                          ; $5d29: $07
    jp hl                                         ; $5d2a: $e9


    nop                                           ; $5d2b: $00
    add sp, -$05                                  ; $5d2c: $e8 $fb
    add sp, -$01                                  ; $5d2e: $e8 $ff
    ld hl, sp-$06                                 ; $5d30: $f8 $fa
    ld hl, sp-$01                                 ; $5d32: $f8 $ff
    ld [bc], a                                    ; $5d34: $02
    rlca                                          ; $5d35: $07
    add l                                         ; $5d36: $85
    dec a                                         ; $5d37: $3d
    ccf                                           ; $5d38: $3f
    ld a, a                                       ; $5d39: $7f
    ld c, a                                       ; $5d3a: $4f
    ld a, a                                       ; $5d3b: $7f
    ld [bc], a                                    ; $5d3c: $02
    ld e, a                                       ; $5d3d: $5f
    sub a                                         ; $5d3e: $97
    ld a, c                                       ; $5d3f: $79
    cp a                                          ; $5d40: $bf
    ei                                            ; $5d41: $fb
    cp a                                          ; $5d42: $bf
    db $fc                                        ; $5d43: $fc
    rst $38                                       ; $5d44: $ff
    db $f4                                        ; $5d45: $f4
    cp a                                          ; $5d46: $bf
    ei                                            ; $5d47: $fb
    cp a                                          ; $5d48: $bf
    ld hl, sp-$41                                 ; $5d49: $f8 $bf
    db $fc                                        ; $5d4b: $fc
    xor e                                         ; $5d4c: $ab
    rst $38                                       ; $5d4d: $ff
    sbc l                                         ; $5d4e: $9d
    rst $38                                       ; $5d4f: $ff
    ld l, [hl]                                    ; $5d50: $6e
    ld a, a                                       ; $5d51: $7f
    dec a                                         ; $5d52: $3d
    ccf                                           ; $5d53: $3f
    ld a, $3f                                     ; $5d54: $3e $3f
    ld [bc], a                                    ; $5d56: $02
    inc b                                         ; $5d57: $04
    ld [bc], a                                    ; $5d58: $02
    inc c                                         ; $5d59: $0c
    add d                                         ; $5d5a: $82
    ld a, [bc]                                    ; $5d5b: $0a
    ld c, $02                                     ; $5d5c: $0e $02
    rrca                                          ; $5d5e: $0f
    adc d                                         ; $5d5f: $8a
    ld c, $0a                                     ; $5d60: $0e $0a
    ld c, $06                                     ; $5d62: $0e $06
    ld c, $0a                                     ; $5d64: $0e $0a
    ld c, $0a                                     ; $5d66: $0e $0a
    ld c, $06                                     ; $5d68: $0e $06
    ld [bc], a                                    ; $5d6a: $02
    ld c, $82                                     ; $5d6b: $0e $82
    inc c                                         ; $5d6d: $0c
    inc b                                         ; $5d6e: $04
    ld [bc], a                                    ; $5d6f: $02
    ld [$0481], sp                                ; $5d70: $08 $81 $04
    inc bc                                        ; $5d73: $03
    inc c                                         ; $5d74: $0c
    add d                                         ; $5d75: $82
    inc b                                         ; $5d76: $04
    inc c                                         ; $5d77: $0c
    ld [bc], a                                    ; $5d78: $02
    ld c, $02                                     ; $5d79: $0e $02
    rra                                           ; $5d7b: $1f
    adc h                                         ; $5d7c: $8c
    ld a, $3f                                     ; $5d7d: $3e $3f
    ld a, $3f                                     ; $5d7f: $3e $3f
    dec a                                         ; $5d81: $3d
    ccf                                           ; $5d82: $3f
    dec a                                         ; $5d83: $3d
    ccf                                           ; $5d84: $3f
    ld [hl], a                                    ; $5d85: $77
    ld a, a                                       ; $5d86: $7f
    cp e                                          ; $5d87: $bb
    rst $38                                       ; $5d88: $ff
    ld [bc], a                                    ; $5d89: $02
    ld a, [hl]                                    ; $5d8a: $7e
    ld [bc], a                                    ; $5d8b: $02
    inc c                                         ; $5d8c: $0c
    ld c, $00                                     ; $5d8d: $0e $00
    add [hl]                                      ; $5d8f: $86
    rrca                                          ; $5d90: $0f
    add hl, de                                    ; $5d91: $19
    rla                                           ; $5d92: $17
    dec de                                        ; $5d93: $1b
    ld d, $1e                                     ; $5d94: $16 $1e
    inc b                                         ; $5d96: $04
    inc e                                         ; $5d97: $1c
    add d                                         ; $5d98: $82
    ld a, [de]                                    ; $5d99: $1a
    ld e, $02                                     ; $5d9a: $1e $02
    inc e                                         ; $5d9c: $1c
    ld [bc], a                                    ; $5d9d: $02
    jr jr_0da_5db0                                ; $5d9e: $18 $10

    nop                                           ; $5da0: $00
    rst $38                                       ; $5da1: $ff
    rlca                                          ; $5da2: $07
    ld bc, $07fb                                  ; $5da3: $01 $fb $07
    jp hl                                         ; $5da6: $e9


    nop                                           ; $5da7: $00
    di                                            ; $5da8: $f3
    db $fc                                        ; $5da9: $fc
    add l                                         ; $5daa: $85
    ld [$0500], sp                                ; $5dab: $08 $00 $05
    nop                                           ; $5dae: $00
    ld [bc], a                                    ; $5daf: $02

jr_0da_5db0:
    dec de                                        ; $5db0: $1b
    nop                                           ; $5db1: $00
    rst $38                                       ; $5db2: $ff
    dec c                                         ; $5db3: $0d
    inc b                                         ; $5db4: $04
    ld hl, sp+$07                                 ; $5db5: $f8 $07
    di                                            ; $5db7: $f3
    ld [bc], a                                    ; $5db8: $02
    db $eb                                        ; $5db9: $eb
    ei                                            ; $5dba: $fb
    db $ec                                        ; $5dbb: $ec
    cp $fb                                        ; $5dbc: $fe $fb
    ld a, [$fcfb]                                 ; $5dbe: $fa $fb $fc
    ld [bc], a                                    ; $5dc1: $02
    add hl, de                                    ; $5dc2: $19
    sbc [hl]                                      ; $5dc3: $9e
    rla                                           ; $5dc4: $17
    rra                                           ; $5dc5: $1f
    ld a, [hl]                                    ; $5dc6: $7e
    ld a, a                                       ; $5dc7: $7f
    ld e, a                                       ; $5dc8: $5f
    ld a, a                                       ; $5dc9: $7f
    rst $28                                       ; $5dca: $ef
    cp $ff                                        ; $5dcb: $fe $ff
    ld sp, hl                                     ; $5dcd: $f9
    ld a, e                                       ; $5dce: $7b
    ld a, [hl]                                    ; $5dcf: $7e
    ld a, a                                       ; $5dd0: $7f
    ld [hl], d                                    ; $5dd1: $72
    ccf                                           ; $5dd2: $3f
    dec hl                                        ; $5dd3: $2b
    ccf                                           ; $5dd4: $3f
    jr nc, @+$61                                  ; $5dd5: $30 $5f

    ld a, c                                       ; $5dd7: $79
    or [hl]                                       ; $5dd8: $b6
    or $eb                                        ; $5dd9: $f6 $eb
    ei                                            ; $5ddb: $fb
    ld l, l                                       ; $5ddc: $6d
    ld a, l                                       ; $5ddd: $7d
    dec hl                                        ; $5dde: $2b
    ccf                                           ; $5ddf: $3f
    ld c, l                                       ; $5de0: $4d
    ld a, a                                       ; $5de1: $7f
    ld [bc], a                                    ; $5de2: $02
    inc b                                         ; $5de3: $04
    add d                                         ; $5de4: $82
    inc bc                                        ; $5de5: $03
    rlca                                          ; $5de6: $07
    ld [bc], a                                    ; $5de7: $02
    ld b, $02                                     ; $5de8: $06 $02
    inc b                                         ; $5dea: $04
    add d                                         ; $5deb: $82
    ld b, $02                                     ; $5dec: $06 $02
    ld [bc], a                                    ; $5dee: $02
    inc b                                         ; $5def: $04
    inc bc                                        ; $5df0: $03
    ld b, $81                                     ; $5df1: $06 $81
    ld [bc], a                                    ; $5df3: $02
    ld [bc], a                                    ; $5df4: $02
    inc b                                         ; $5df5: $04
    inc c                                         ; $5df6: $0c
    nop                                           ; $5df7: $00
    sub b                                         ; $5df8: $90
    ld l, b                                       ; $5df9: $68
    ld hl, sp+$20                                 ; $5dfa: $f8 $20
    jr nc, @+$41                                  ; $5dfc: $30 $3f

    inc sp                                        ; $5dfe: $33

jr_0da_5dff:
    ld a, a                                       ; $5dff: $7f
    ld l, d                                       ; $5e00: $6a
    ld a, l                                       ; $5e01: $7d
    ld a, a                                       ; $5e02: $7f
    ei                                            ; $5e03: $fb
    rst $38                                       ; $5e04: $ff
    cp a                                          ; $5e05: $bf
    rst $38                                       ; $5e06: $ff
    ld e, b                                       ; $5e07: $58
    ld a, a                                       ; $5e08: $7f
    ld [bc], a                                    ; $5e09: $02
    ccf                                           ; $5e0a: $3f
    ld [de], a                                    ; $5e0b: $12
    nop                                           ; $5e0c: $00
    ld [bc], a                                    ; $5e0d: $02
    ld [bc], a                                    ; $5e0e: $02
    add d                                         ; $5e0f: $82
    inc bc                                        ; $5e10: $03
    ld bc, $0206                                  ; $5e11: $01 $06 $02
    ld [bc], a                                    ; $5e14: $02
    inc bc                                        ; $5e15: $03
    ld [bc], a                                    ; $5e16: $02
    ld [bc], a                                    ; $5e17: $02
    stop                                          ; $5e18: $10 $00
    rst $38                                       ; $5e1a: $ff
    rlca                                          ; $5e1b: $07
    ld bc, $07f8                                  ; $5e1c: $01 $f8 $07
    di                                            ; $5e1f: $f3
    ld [bc], a                                    ; $5e20: $02
    or $fa                                        ; $5e21: $f6 $fa
    add l                                         ; $5e23: $85
    inc b                                         ; $5e24: $04
    nop                                           ; $5e25: $00
    ld [bc], a                                    ; $5e26: $02
    nop                                           ; $5e27: $00
    ld bc, $001b                                  ; $5e28: $01 $1b $00
    rst $38                                       ; $5e2b: $ff
    dec c                                         ; $5e2c: $0d
    inc b                                         ; $5e2d: $04
    ld hl, sp+$07                                 ; $5e2e: $f8 $07
    di                                            ; $5e30: $f3
    ld [bc], a                                    ; $5e31: $02
    db $eb                                        ; $5e32: $eb
    ei                                            ; $5e33: $fb
    db $ec                                        ; $5e34: $ec
    cp $fb                                        ; $5e35: $fe $fb
    ld a, [$fcfb]                                 ; $5e37: $fa $fb $fc
    ld [bc], a                                    ; $5e3a: $02
    ld [$1784], sp                                ; $5e3b: $08 $84 $17
    rra                                           ; $5e3e: $1f
    ld a, $3f                                     ; $5e3f: $3e $3f
    ld [bc], a                                    ; $5e41: $02
    ld a, a                                       ; $5e42: $7f
    adc [hl]                                      ; $5e43: $8e
    ld c, a                                       ; $5e44: $4f
    ld a, [hl]                                    ; $5e45: $7e
    rst $38                                       ; $5e46: $ff
    ld sp, hl                                     ; $5e47: $f9
    ei                                            ; $5e48: $fb
    cp $7f                                        ; $5e49: $fe $7f
    ld [hl], d                                    ; $5e4b: $72
    ccf                                           ; $5e4c: $3f
    dec hl                                        ; $5e4d: $2b
    ld a, a                                       ; $5e4e: $7f
    ld [hl], b                                    ; $5e4f: $70
    sbc a                                         ; $5e50: $9f
    ld sp, hl                                     ; $5e51: $f9
    ld [bc], a                                    ; $5e52: $02
    or $88                                        ; $5e53: $f6 $88
    ld l, e                                       ; $5e55: $6b
    ld a, e                                       ; $5e56: $7b
    dec l                                         ; $5e57: $2d
    dec a                                         ; $5e58: $3d
    cpl                                           ; $5e59: $2f
    ccf                                           ; $5e5a: $3f

jr_0da_5e5b:
    ld h, e                                       ; $5e5b: $63
    ld a, a                                       ; $5e5c: $7f
    ld [bc], a                                    ; $5e5d: $02
    inc b                                         ; $5e5e: $04
    add d                                         ; $5e5f: $82

jr_0da_5e60:
    ld [bc], a                                    ; $5e60: $02
    ld b, $02                                     ; $5e61: $06 $02
    rlca                                          ; $5e63: $07
    ld [bc], a                                    ; $5e64: $02
    inc b                                         ; $5e65: $04

jr_0da_5e66:
    add d                                         ; $5e66: $82
    ld b, $02                                     ; $5e67: $06 $02
    ld [bc], a                                    ; $5e69: $02
    inc b                                         ; $5e6a: $04
    inc bc                                        ; $5e6b: $03
    ld b, $81                                     ; $5e6c: $06 $81
    ld [bc], a                                    ; $5e6e: $02
    ld [bc], a                                    ; $5e6f: $02
    inc b                                         ; $5e70: $04
    ld [$0200], sp                                ; $5e71: $08 $00 $02
    ld b, $84                                     ; $5e74: $06 $84
    rlca                                          ; $5e76: $07
    ld bc, $cebe                                  ; $5e77: $01 $be $ce
    ld [bc], a                                    ; $5e7a: $02
    jr nc, jr_0da_5dff                            ; $5e7b: $30 $82

    ccf                                           ; $5e7d: $3f
    ld a, $02                                     ; $5e7e: $3e $02
    ld a, a                                       ; $5e80: $7f
    adc b                                         ; $5e81: $88
    ld a, e                                       ; $5e82: $7b
    ld a, a                                       ; $5e83: $7f
    ei                                            ; $5e84: $fb
    rst $38                                       ; $5e85: $ff
    cp a                                          ; $5e86: $bf
    rst $38                                       ; $5e87: $ff
    cp c                                          ; $5e88: $b9
    rst $38                                       ; $5e89: $ff
    ld [bc], a                                    ; $5e8a: $02
    ld a, a                                       ; $5e8b: $7f
    ld [de], a                                    ; $5e8c: $12
    nop                                           ; $5e8d: $00
    ld a, [bc]                                    ; $5e8e: $0a
    ld [bc], a                                    ; $5e8f: $02
    ld [bc], a                                    ; $5e90: $02
    inc bc                                        ; $5e91: $03
    ld [de], a                                    ; $5e92: $12
    nop                                           ; $5e93: $00
    rst $38                                       ; $5e94: $ff
    rlca                                          ; $5e95: $07
    ld bc, $07f8                                  ; $5e96: $01 $f8 $07
    di                                            ; $5e99: $f3
    ld [bc], a                                    ; $5e9a: $02
    or $fa                                        ; $5e9b: $f6 $fa
    add l                                         ; $5e9d: $85
    inc b                                         ; $5e9e: $04
    nop                                           ; $5e9f: $00
    ld [bc], a                                    ; $5ea0: $02
    nop                                           ; $5ea1: $00
    ld bc, $001b                                  ; $5ea2: $01 $1b $00
    rst $38                                       ; $5ea5: $ff
    dec c                                         ; $5ea6: $0d
    inc b                                         ; $5ea7: $04
    ld hl, sp+$07                                 ; $5ea8: $f8 $07
    di                                            ; $5eaa: $f3
    ld [bc], a                                    ; $5eab: $02
    db $ec                                        ; $5eac: $ec
    ld sp, hl                                     ; $5ead: $f9
    db $ec                                        ; $5eae: $ec
    rst $38                                       ; $5eaf: $ff
    db $fc                                        ; $5eb0: $fc
    ld sp, hl                                     ; $5eb1: $f9
    db $fc                                        ; $5eb2: $fc
    db $fc                                        ; $5eb3: $fc
    ld [bc], a                                    ; $5eb4: $02
    ld c, $94                                     ; $5eb5: $0e $94
    dec sp                                        ; $5eb7: $3b
    ccf                                           ; $5eb8: $3f
    ld e, a                                       ; $5eb9: $5f
    ld a, a                                       ; $5eba: $7f
    ld e, a                                       ; $5ebb: $5f
    ld a, a                                       ; $5ebc: $7f
    rst $38                                       ; $5ebd: $ff
    di                                            ; $5ebe: $f3
    rst $38                                       ; $5ebf: $ff
    or $7f                                        ; $5ec0: $f6 $7f
    ld a, c                                       ; $5ec2: $79
    ld a, a                                       ; $5ec3: $7f
    ld c, c                                       ; $5ec4: $49
    ccf                                           ; $5ec5: $3f
    ld [hl], $5f                                  ; $5ec6: $36 $5f
    ld [hl], c                                    ; $5ec8: $71
    ld l, a                                       ; $5ec9: $6f
    ld a, b                                       ; $5eca: $78
    ld [bc], a                                    ; $5ecb: $02
    ccf                                           ; $5ecc: $3f
    adc b                                         ; $5ecd: $88
    ld [de], a                                    ; $5ece: $12
    ld e, $1b                                     ; $5ecf: $1e $1b
    rra                                           ; $5ed1: $1f
    jr jr_0da_5ef3                                ; $5ed2: $18 $1f

    inc a                                         ; $5ed4: $3c
    ccf                                           ; $5ed5: $3f
    inc b                                         ; $5ed6: $04
    jr nz, jr_0da_5e5b                            ; $5ed7: $20 $82

    db $10                                        ; $5ed9: $10
    jr nc, jr_0da_5ede                            ; $5eda: $30 $02

    jr c, jr_0da_5e60                             ; $5edc: $38 $82

jr_0da_5ede:
    jr nc, jr_0da_5ef0                            ; $5ede: $30 $10

    inc bc                                        ; $5ee0: $03
    jr nc, jr_0da_5e66                            ; $5ee1: $30 $83

    db $10                                        ; $5ee3: $10
    jr nc, jr_0da_5ef6                            ; $5ee4: $30 $10

    inc b                                         ; $5ee6: $04
    jr nc, jr_0da_5eeb                            ; $5ee7: $30 $02

    ld [hl+], a                                   ; $5ee9: $22
    adc d                                         ; $5eea: $8a

jr_0da_5eeb:
    daa                                           ; $5eeb: $27
    dec h                                         ; $5eec: $25
    ld a, $3a                                     ; $5eed: $3e $3a
    inc a                                         ; $5eef: $3c

jr_0da_5ef0:
    inc h                                         ; $5ef0: $24
    inc e                                         ; $5ef1: $1c
    inc h                                         ; $5ef2: $24

jr_0da_5ef3:
    jr c, @+$2a                                   ; $5ef3: $38 $28

    ld [bc], a                                    ; $5ef5: $02

jr_0da_5ef6:
    ccf                                           ; $5ef6: $3f
    adc d                                         ; $5ef7: $8a
    dec a                                         ; $5ef8: $3d
    ccf                                           ; $5ef9: $3f
    ld a, l                                       ; $5efa: $7d
    ld a, a                                       ; $5efb: $7f
    ei                                            ; $5efc: $fb
    rst $38                                       ; $5efd: $ff
    cp a                                          ; $5efe: $bf
    rst $38                                       ; $5eff: $ff
    ld d, c                                       ; $5f00: $51
    ld a, a                                       ; $5f01: $7f
    ld [bc], a                                    ; $5f02: $02
    ccf                                           ; $5f03: $3f
    ld [de], a                                    ; $5f04: $12
    nop                                           ; $5f05: $00
    ld [bc], a                                    ; $5f06: $02
    rlca                                          ; $5f07: $07
    ld [bc], a                                    ; $5f08: $02
    ld b, $02                                     ; $5f09: $06 $02
    inc b                                         ; $5f0b: $04
    inc b                                         ; $5f0c: $04
    ld b, $02                                     ; $5f0d: $06 $02
    rlca                                          ; $5f0f: $07
    inc d                                         ; $5f10: $14
    nop                                           ; $5f11: $00
    rst $38                                       ; $5f12: $ff
    rlca                                          ; $5f13: $07
    ld bc, $07f8                                  ; $5f14: $01 $f8 $07
    di                                            ; $5f17: $f3
    ld [bc], a                                    ; $5f18: $02
    ld hl, sp-$07                                 ; $5f19: $f8 $f9
    add c                                         ; $5f1b: $81
    ld bc, $001f                                  ; $5f1c: $01 $1f $00
    rst $38                                       ; $5f1f: $ff
    dec c                                         ; $5f20: $0d
    inc b                                         ; $5f21: $04
    ld hl, sp+$07                                 ; $5f22: $f8 $07
    di                                            ; $5f24: $f3
    ld [bc], a                                    ; $5f25: $02
    db $eb                                        ; $5f26: $eb
    rst $30                                       ; $5f27: $f7
    db $eb                                        ; $5f28: $eb
    cp $fb                                        ; $5f29: $fe $fb
    ld sp, hl                                     ; $5f2b: $f9
    ei                                            ; $5f2c: $fb
    db $fc                                        ; $5f2d: $fc
    ld [bc], a                                    ; $5f2e: $02
    ld c, $86                                     ; $5f2f: $0e $86
    dec sp                                        ; $5f31: $3b
    ccf                                           ; $5f32: $3f
    ld e, a                                       ; $5f33: $5f
    ld a, a                                       ; $5f34: $7f
    ld e, e                                       ; $5f35: $5b
    ld a, e                                       ; $5f36: $7b
    ld [bc], a                                    ; $5f37: $02
    pop af                                        ; $5f38: $f1
    adc h                                         ; $5f39: $8c
    ei                                            ; $5f3a: $fb
    ld a, [c]                                     ; $5f3b: $f2
    ld a, a                                       ; $5f3c: $7f
    ld a, c                                       ; $5f3d: $79
    ld a, a                                       ; $5f3e: $7f
    ld c, c                                       ; $5f3f: $49
    ccf                                           ; $5f40: $3f
    ld [hl], $3f                                  ; $5f41: $36 $3f
    ld sp, $3c2f                                  ; $5f43: $31 $2f $3c
    ld [bc], a                                    ; $5f46: $02
    ld a, $83                                     ; $5f47: $3e $83
    dec e                                         ; $5f49: $1d
    rra                                           ; $5f4a: $1f
    ld c, $05                                     ; $5f4b: $0e $05
    rrca                                          ; $5f4d: $0f
    inc b                                         ; $5f4e: $04
    ld b, b                                       ; $5f4f: $40
    add d                                         ; $5f50: $82
    jr nz, jr_0da_5fb3                            ; $5f51: $20 $60

    ld [bc], a                                    ; $5f53: $02
    ld [hl], b                                    ; $5f54: $70
    add d                                         ; $5f55: $82
    ld h, b                                       ; $5f56: $60
    jr nz, jr_0da_5f5b                            ; $5f57: $20 $02

    ld h, b                                       ; $5f59: $60
    add [hl]                                      ; $5f5a: $86

jr_0da_5f5b:
    ld h, h                                       ; $5f5b: $64
    inc h                                         ; $5f5c: $24
    ld l, [hl]                                    ; $5f5d: $6e
    ld a, [hl+]                                   ; $5f5e: $2a
    ld l, [hl]                                    ; $5f5f: $6e
    ld l, d                                       ; $5f60: $6a
    ld [bc], a                                    ; $5f61: $02
    ld l, [hl]                                    ; $5f62: $6e
    sbc d                                         ; $5f63: $9a
    ld e, [hl]                                    ; $5f64: $5e
    ld d, d                                       ; $5f65: $52
    ld l, [hl]                                    ; $5f66: $6e
    ld [hl], d                                    ; $5f67: $72
    ld c, [hl]                                    ; $5f68: $4e
    halt                                          ; $5f69: $76
    rlca                                          ; $5f6a: $07
    ld a, l                                       ; $5f6b: $7d
    dec de                                        ; $5f6c: $1b
    ld a, l                                       ; $5f6d: $7d
    ld [hl], d                                    ; $5f6e: $72
    ld a, [hl]                                    ; $5f6f: $7e
    dec a                                         ; $5f70: $3d
    ccf                                           ; $5f71: $3f
    ld a, l                                       ; $5f72: $7d
    ld a, a                                       ; $5f73: $7f
    ld a, l                                       ; $5f74: $7d
    ld a, a                                       ; $5f75: $7f
    ld a, l                                       ; $5f76: $7d
    ld a, a                                       ; $5f77: $7f
    ld a, l                                       ; $5f78: $7d
    ld a, a                                       ; $5f79: $7f
    rst $18                                       ; $5f7a: $df
    rst $38                                       ; $5f7b: $ff
    ld e, b                                       ; $5f7c: $58
    ld a, a                                       ; $5f7d: $7f
    ld [bc], a                                    ; $5f7e: $02
    ccf                                           ; $5f7f: $3f
    stop                                          ; $5f80: $10 $00
    ld [bc], a                                    ; $5f82: $02
    rlca                                          ; $5f83: $07
    inc b                                         ; $5f84: $04
    inc b                                         ; $5f85: $04
    inc b                                         ; $5f86: $04
    ld b, $02                                     ; $5f87: $06 $02
    rlca                                          ; $5f89: $07
    ld [bc], a                                    ; $5f8a: $02
    inc b                                         ; $5f8b: $04
    ld [de], a                                    ; $5f8c: $12
    nop                                           ; $5f8d: $00
    rst $38                                       ; $5f8e: $ff
    rlca                                          ; $5f8f: $07
    ld bc, $07f8                                  ; $5f90: $01 $f8 $07
    di                                            ; $5f93: $f3
    ld [bc], a                                    ; $5f94: $02
    xor $f7                                       ; $5f95: $ee $f7
    add [hl]                                      ; $5f97: $86
    nop                                           ; $5f98: $00
    inc b                                         ; $5f99: $04
    nop                                           ; $5f9a: $00
    ld c, $00                                     ; $5f9b: $0e $00
    inc b                                         ; $5f9d: $04
    ld a, [bc]                                    ; $5f9e: $0a
    nop                                           ; $5f9f: $00
    add c                                         ; $5fa0: $81
    ld bc, $000f                                  ; $5fa1: $01 $0f $00
    rst $38                                       ; $5fa4: $ff
    dec c                                         ; $5fa5: $0d
    inc b                                         ; $5fa6: $04
    ld hl, sp+$07                                 ; $5fa7: $f8 $07
    di                                            ; $5fa9: $f3
    ld [bc], a                                    ; $5faa: $02
    db $eb                                        ; $5fab: $eb
    rst $30                                       ; $5fac: $f7
    db $eb                                        ; $5fad: $eb
    cp $fb                                        ; $5fae: $fe $fb
    ld sp, hl                                     ; $5fb0: $f9
    ei                                            ; $5fb1: $fb
    db $fc                                        ; $5fb2: $fc

jr_0da_5fb3:
    ld [bc], a                                    ; $5fb3: $02
    ld c, $02                                     ; $5fb4: $0e $02
    dec sp                                        ; $5fb6: $3b
    add h                                         ; $5fb7: $84
    ld e, e                                       ; $5fb8: $5b
    ld a, e                                       ; $5fb9: $7b
    ld d, c                                       ; $5fba: $51
    ld [hl], c                                    ; $5fbb: $71
    ld [bc], a                                    ; $5fbc: $02
    ret nz                                        ; $5fbd: $c0

    adc h                                         ; $5fbe: $8c
    pop af                                        ; $5fbf: $f1
    ldh a, [$7b]                                  ; $5fc0: $f0 $7b
    ld a, c                                       ; $5fc2: $79
    ld a, e                                       ; $5fc3: $7b
    ld c, c                                       ; $5fc4: $49
    ccf                                           ; $5fc5: $3f
    ld [hl], $3f                                  ; $5fc6: $36 $3f
    ld sp, $3c2f                                  ; $5fc8: $31 $2f $3c
    ld [bc], a                                    ; $5fcb: $02
    ld a, $83                                     ; $5fcc: $3e $83
    dec e                                         ; $5fce: $1d
    rra                                           ; $5fcf: $1f
    ld c, $05                                     ; $5fd0: $0e $05
    rrca                                          ; $5fd2: $0f
    inc b                                         ; $5fd3: $04
    ld b, b                                       ; $5fd4: $40
    add d                                         ; $5fd5: $82
    jr nz, jr_0da_6038                            ; $5fd6: $20 $60

    ld [bc], a                                    ; $5fd8: $02
    ld [hl], b                                    ; $5fd9: $70
    ld [bc], a                                    ; $5fda: $02
    jr nz, jr_0da_5fdf                            ; $5fdb: $20 $02

    ld h, b                                       ; $5fdd: $60
    add [hl]                                      ; $5fde: $86

jr_0da_5fdf:
    ld h, h                                       ; $5fdf: $64
    inc h                                         ; $5fe0: $24
    ld l, [hl]                                    ; $5fe1: $6e
    ld a, [hl+]                                   ; $5fe2: $2a
    ld l, [hl]                                    ; $5fe3: $6e
    ld l, d                                       ; $5fe4: $6a
    ld [bc], a                                    ; $5fe5: $02
    ld l, [hl]                                    ; $5fe6: $6e
    sbc d                                         ; $5fe7: $9a
    ld e, [hl]                                    ; $5fe8: $5e
    ld d, d                                       ; $5fe9: $52
    ld l, [hl]                                    ; $5fea: $6e
    ld [hl], d                                    ; $5feb: $72
    ld c, [hl]                                    ; $5fec: $4e
    halt                                          ; $5fed: $76
    rlca                                          ; $5fee: $07
    ld a, l                                       ; $5fef: $7d

jr_0da_5ff0:
    dec de                                        ; $5ff0: $1b
    ld a, l                                       ; $5ff1: $7d
    ld [hl], d                                    ; $5ff2: $72
    ld a, [hl]                                    ; $5ff3: $7e
    dec a                                         ; $5ff4: $3d
    ccf                                           ; $5ff5: $3f
    ld a, l                                       ; $5ff6: $7d
    ld a, a                                       ; $5ff7: $7f
    ld a, l                                       ; $5ff8: $7d
    ld a, a                                       ; $5ff9: $7f
    ld a, l                                       ; $5ffa: $7d
    ld a, a                                       ; $5ffb: $7f
    ld a, l                                       ; $5ffc: $7d
    ld a, a                                       ; $5ffd: $7f
    rst $18                                       ; $5ffe: $df
    rst $38                                       ; $5fff: $ff
    ld e, b                                       ; $6000: $58
    ld a, a                                       ; $6001: $7f
    ld [bc], a                                    ; $6002: $02
    ccf                                           ; $6003: $3f
    stop                                          ; $6004: $10 $00
    ld [bc], a                                    ; $6006: $02
    rlca                                          ; $6007: $07
    inc b                                         ; $6008: $04
    inc b                                         ; $6009: $04
    inc b                                         ; $600a: $04
    ld b, $02                                     ; $600b: $06 $02
    rlca                                          ; $600d: $07
    ld [bc], a                                    ; $600e: $02
    inc b                                         ; $600f: $04
    ld [de], a                                    ; $6010: $12
    nop                                           ; $6011: $00
    rst $38                                       ; $6012: $ff
    rlca                                          ; $6013: $07
    ld bc, $07f8                                  ; $6014: $01 $f8 $07
    di                                            ; $6017: $f3
    ld [bc], a                                    ; $6018: $02
    db $ec                                        ; $6019: $ec
    ld hl, sp+$02                                 ; $601a: $f8 $02
    ld [$0089], sp                                ; $601c: $08 $89 $00
    ld [$1c14], sp                                ; $601f: $08 $14 $1c
    ld b, c                                       ; $6022: $41
    ld a, a                                       ; $6023: $7f
    inc d                                         ; $6024: $14
    inc e                                         ; $6025: $1c
    nop                                           ; $6026: $00
    inc bc                                        ; $6027: $03
    ld [$0006], sp                                ; $6028: $08 $06 $00
    add c                                         ; $602b: $81
    ld [bc], a                                    ; $602c: $02
    dec bc                                        ; $602d: $0b
    nop                                           ; $602e: $00
    rst $38                                       ; $602f: $ff
    dec c                                         ; $6030: $0d
    inc b                                         ; $6031: $04
    ld hl, sp+$07                                 ; $6032: $f8 $07
    di                                            ; $6034: $f3
    ld [bc], a                                    ; $6035: $02
    db $eb                                        ; $6036: $eb
    rst $30                                       ; $6037: $f7

jr_0da_6038:
    db $eb                                        ; $6038: $eb
    cp $fb                                        ; $6039: $fe $fb
    ld sp, hl                                     ; $603b: $f9
    ei                                            ; $603c: $fb
    db $fc                                        ; $603d: $fc
    ld [bc], a                                    ; $603e: $02
    ld c, $84                                     ; $603f: $0e $84
    add hl, sp                                    ; $6041: $39
    dec a                                         ; $6042: $3d
    ld e, l                                       ; $6043: $5d
    ld a, l                                       ; $6044: $7d
    ld [bc], a                                    ; $6045: $02
    ld c, e                                       ; $6046: $4b
    ld [bc], a                                    ; $6047: $02
    pop af                                        ; $6048: $f1
    adc h                                         ; $6049: $8c
    ld a, [$77f2]                                 ; $604a: $fa $f2 $77
    ld [hl], c                                    ; $604d: $71
    ld [hl], a                                    ; $604e: $77
    ld b, c                                       ; $604f: $41
    ccf                                           ; $6050: $3f
    ld [hl], $3f                                  ; $6051: $36 $3f
    ld sp, $3c2f                                  ; $6053: $31 $2f $3c
    ld [bc], a                                    ; $6056: $02
    ld a, $83                                     ; $6057: $3e $83
    dec e                                         ; $6059: $1d
    rra                                           ; $605a: $1f
    ld c, $05                                     ; $605b: $0e $05
    rrca                                          ; $605d: $0f
    inc b                                         ; $605e: $04
    ld b, b                                       ; $605f: $40
    add d                                         ; $6060: $82
    jr nz, jr_0da_60c3                            ; $6061: $20 $60

    ld [bc], a                                    ; $6063: $02
    ld [hl], b                                    ; $6064: $70
    add c                                         ; $6065: $81
    ld h, b                                       ; $6066: $60
    inc bc                                        ; $6067: $03
    jr nz, jr_0da_5ff0                            ; $6068: $20 $86

    ld h, h                                       ; $606a: $64
    inc h                                         ; $606b: $24
    ld l, [hl]                                    ; $606c: $6e
    ld a, [hl+]                                   ; $606d: $2a
    ld l, [hl]                                    ; $606e: $6e
    ld l, d                                       ; $606f: $6a
    ld [bc], a                                    ; $6070: $02
    ld l, [hl]                                    ; $6071: $6e
    sbc d                                         ; $6072: $9a
    ld e, [hl]                                    ; $6073: $5e
    ld d, d                                       ; $6074: $52
    ld l, [hl]                                    ; $6075: $6e
    ld [hl], d                                    ; $6076: $72
    ld c, [hl]                                    ; $6077: $4e
    halt                                          ; $6078: $76
    rlca                                          ; $6079: $07
    ld a, l                                       ; $607a: $7d
    dec de                                        ; $607b: $1b
    ld a, l                                       ; $607c: $7d
    ld [hl], d                                    ; $607d: $72
    ld a, [hl]                                    ; $607e: $7e
    dec a                                         ; $607f: $3d
    ccf                                           ; $6080: $3f
    ld a, l                                       ; $6081: $7d
    ld a, a                                       ; $6082: $7f
    ld a, l                                       ; $6083: $7d
    ld a, a                                       ; $6084: $7f
    ld a, l                                       ; $6085: $7d
    ld a, a                                       ; $6086: $7f
    ld a, l                                       ; $6087: $7d
    ld a, a                                       ; $6088: $7f
    rst $18                                       ; $6089: $df
    rst $38                                       ; $608a: $ff
    ld e, b                                       ; $608b: $58
    ld a, a                                       ; $608c: $7f
    ld [bc], a                                    ; $608d: $02
    ccf                                           ; $608e: $3f
    stop                                          ; $608f: $10 $00
    ld [bc], a                                    ; $6091: $02
    rlca                                          ; $6092: $07
    inc b                                         ; $6093: $04
    inc b                                         ; $6094: $04
    inc b                                         ; $6095: $04
    ld b, $02                                     ; $6096: $06 $02
    rlca                                          ; $6098: $07
    ld [bc], a                                    ; $6099: $02
    inc b                                         ; $609a: $04
    ld [de], a                                    ; $609b: $12
    nop                                           ; $609c: $00
    rst $38                                       ; $609d: $ff
    rlca                                          ; $609e: $07
    ld bc, $07f8                                  ; $609f: $01 $f8 $07
    di                                            ; $60a2: $f3
    ld [bc], a                                    ; $60a3: $02
    db $ec                                        ; $60a4: $ec
    ld hl, sp+$02                                 ; $60a5: $f8 $02
    inc b                                         ; $60a7: $04
    adc c                                         ; $60a8: $89
    nop                                           ; $60a9: $00
    inc b                                         ; $60aa: $04
    ld b, b                                       ; $60ab: $40
    ld l, b                                       ; $60ac: $68
    nop                                           ; $60ad: $00
    inc e                                         ; $60ae: $1c
    ld bc, $000b                                  ; $60af: $01 $0b $00
    inc bc                                        ; $60b2: $03
    db $10                                        ; $60b3: $10
    ld b, $00                                     ; $60b4: $06 $00
    add c                                         ; $60b6: $81
    ld [bc], a                                    ; $60b7: $02
    dec bc                                        ; $60b8: $0b
    nop                                           ; $60b9: $00
    rst $38                                       ; $60ba: $ff
    dec c                                         ; $60bb: $0d
    inc b                                         ; $60bc: $04
    ld hl, sp+$07                                 ; $60bd: $f8 $07
    di                                            ; $60bf: $f3
    ld [bc], a                                    ; $60c0: $02
    db $eb                                        ; $60c1: $eb
    rst $30                                       ; $60c2: $f7

jr_0da_60c3:
    db $eb                                        ; $60c3: $eb
    cp $fb                                        ; $60c4: $fe $fb
    ld sp, hl                                     ; $60c6: $f9
    ei                                            ; $60c7: $fb
    db $fc                                        ; $60c8: $fc
    ld [bc], a                                    ; $60c9: $02
    ld c, $94                                     ; $60ca: $0e $94
    dec sp                                        ; $60cc: $3b
    ccf                                           ; $60cd: $3f
    ld c, [hl]                                    ; $60ce: $4e
    ld l, [hl]                                    ; $60cf: $6e
    ld d, l                                       ; $60d0: $55
    ld [hl], l                                    ; $60d1: $75
    ei                                            ; $60d2: $fb
    di                                            ; $60d3: $f3
    push af                                       ; $60d4: $f5
    db $f4                                        ; $60d5: $f4
    ld l, [hl]                                    ; $60d6: $6e
    ld l, b                                       ; $60d7: $68
    ld e, a                                       ; $60d8: $5f
    ld c, c                                       ; $60d9: $49
    ccf                                           ; $60da: $3f
    ld [hl], $3f                                  ; $60db: $36 $3f
    ld sp, $3c2f                                  ; $60dd: $31 $2f $3c
    ld [bc], a                                    ; $60e0: $02
    ld a, $83                                     ; $60e1: $3e $83
    dec e                                         ; $60e3: $1d
    rra                                           ; $60e4: $1f
    ld c, $05                                     ; $60e5: $0e $05
    rrca                                          ; $60e7: $0f
    inc b                                         ; $60e8: $04
    ld b, b                                       ; $60e9: $40
    add d                                         ; $60ea: $82
    jr nz, jr_0da_614d                            ; $60eb: $20 $60

    ld [bc], a                                    ; $60ed: $02
    ld [hl], b                                    ; $60ee: $70
    add d                                         ; $60ef: $82
    ld h, b                                       ; $60f0: $60
    jr nz, jr_0da_60f5                            ; $60f1: $20 $02

    ld h, b                                       ; $60f3: $60
    add [hl]                                      ; $60f4: $86

jr_0da_60f5:
    ld h, h                                       ; $60f5: $64
    inc h                                         ; $60f6: $24
    ld l, $2a                                     ; $60f7: $2e $2a
    ld l, [hl]                                    ; $60f9: $6e
    ld l, d                                       ; $60fa: $6a
    ld [bc], a                                    ; $60fb: $02
    ld l, [hl]                                    ; $60fc: $6e
    sbc d                                         ; $60fd: $9a
    ld e, [hl]                                    ; $60fe: $5e
    ld d, d                                       ; $60ff: $52
    ld l, [hl]                                    ; $6100: $6e
    ld [hl], d                                    ; $6101: $72
    ld c, [hl]                                    ; $6102: $4e
    halt                                          ; $6103: $76
    rlca                                          ; $6104: $07
    ld a, l                                       ; $6105: $7d
    dec de                                        ; $6106: $1b
    ld a, l                                       ; $6107: $7d
    ld [hl], d                                    ; $6108: $72
    ld a, [hl]                                    ; $6109: $7e
    dec a                                         ; $610a: $3d
    ccf                                           ; $610b: $3f
    ld a, l                                       ; $610c: $7d
    ld a, a                                       ; $610d: $7f
    ld a, l                                       ; $610e: $7d
    ld a, a                                       ; $610f: $7f
    ld a, l                                       ; $6110: $7d
    ld a, a                                       ; $6111: $7f
    ld a, l                                       ; $6112: $7d
    ld a, a                                       ; $6113: $7f
    rst $18                                       ; $6114: $df
    rst $38                                       ; $6115: $ff
    ld e, b                                       ; $6116: $58
    ld a, a                                       ; $6117: $7f
    ld [bc], a                                    ; $6118: $02
    ccf                                           ; $6119: $3f
    stop                                          ; $611a: $10 $00
    ld [bc], a                                    ; $611c: $02
    rlca                                          ; $611d: $07
    inc b                                         ; $611e: $04
    inc b                                         ; $611f: $04
    inc b                                         ; $6120: $04
    ld b, $02                                     ; $6121: $06 $02
    rlca                                          ; $6123: $07
    ld [bc], a                                    ; $6124: $02
    inc b                                         ; $6125: $04
    ld [de], a                                    ; $6126: $12
    nop                                           ; $6127: $00
    rst $38                                       ; $6128: $ff
    rlca                                          ; $6129: $07
    ld bc, $07f8                                  ; $612a: $01 $f8 $07
    di                                            ; $612d: $f3
    ld [bc], a                                    ; $612e: $02
    db $eb                                        ; $612f: $eb
    ld hl, sp+$02                                 ; $6130: $f8 $02
    add b                                         ; $6132: $80
    ld [bc], a                                    ; $6133: $02
    nop                                           ; $6134: $00
    adc h                                         ; $6135: $8c
    ld [bc], a                                    ; $6136: $02
    ld [hl+], a                                   ; $6137: $22
    nop                                           ; $6138: $00
    inc d                                         ; $6139: $14
    nop                                           ; $613a: $00
    ld [$1400], sp                                ; $613b: $08 $00 $14
    ld [bc], a                                    ; $613e: $02
    ld [hl+], a                                   ; $613f: $22
    ld b, b                                       ; $6140: $40
    ld b, c                                       ; $6141: $41
    ld b, $00                                     ; $6142: $06 $00
    add c                                         ; $6144: $81
    ld [bc], a                                    ; $6145: $02
    add hl, bc                                    ; $6146: $09
    nop                                           ; $6147: $00
    rst $38                                       ; $6148: $ff
    dec c                                         ; $6149: $0d
    inc b                                         ; $614a: $04
    ld hl, sp+$07                                 ; $614b: $f8 $07

jr_0da_614d:
    di                                            ; $614d: $f3
    ld [bc], a                                    ; $614e: $02
    db $eb                                        ; $614f: $eb
    rst $30                                       ; $6150: $f7
    db $eb                                        ; $6151: $eb
    cp $fb                                        ; $6152: $fe $fb
    ld sp, hl                                     ; $6154: $f9
    ei                                            ; $6155: $fb
    db $fc                                        ; $6156: $fc
    ld [bc], a                                    ; $6157: $02
    ld c, $94                                     ; $6158: $0e $94
    dec sp                                        ; $615a: $3b
    ccf                                           ; $615b: $3f
    ld e, a                                       ; $615c: $5f
    ld a, a                                       ; $615d: $7f
    ld e, e                                       ; $615e: $5b
    ld a, e                                       ; $615f: $7b
    push af                                       ; $6160: $f5
    pop af                                        ; $6161: $f1
    ei                                            ; $6162: $fb
    ld a, [c]                                     ; $6163: $f2
    ld e, a                                       ; $6164: $5f
    ld e, c                                       ; $6165: $59
    ld a, a                                       ; $6166: $7f
    ld c, c                                       ; $6167: $49
    ccf                                           ; $6168: $3f
    ld [hl], $3f                                  ; $6169: $36 $3f
    ld sp, $3c2f                                  ; $616b: $31 $2f $3c
    ld [bc], a                                    ; $616e: $02
    ld a, $83                                     ; $616f: $3e $83
    dec e                                         ; $6171: $1d
    rra                                           ; $6172: $1f
    ld c, $05                                     ; $6173: $0e $05
    rrca                                          ; $6175: $0f
    inc b                                         ; $6176: $04
    ld b, b                                       ; $6177: $40
    ld [bc], a                                    ; $6178: $02
    jr nz, jr_0da_617d                            ; $6179: $20 $02

    ld [hl], b                                    ; $617b: $70
    add d                                         ; $617c: $82

jr_0da_617d:
    ld h, b                                       ; $617d: $60
    jr nz, jr_0da_6182                            ; $617e: $20 $02

    ld h, b                                       ; $6180: $60
    add [hl]                                      ; $6181: $86

jr_0da_6182:
    ld h, h                                       ; $6182: $64
    inc h                                         ; $6183: $24
    ld l, [hl]                                    ; $6184: $6e
    ld a, [hl+]                                   ; $6185: $2a
    ld l, [hl]                                    ; $6186: $6e
    ld l, d                                       ; $6187: $6a
    ld [bc], a                                    ; $6188: $02
    ld l, [hl]                                    ; $6189: $6e
    sbc d                                         ; $618a: $9a
    ld e, [hl]                                    ; $618b: $5e
    ld d, d                                       ; $618c: $52
    ld l, [hl]                                    ; $618d: $6e
    ld [hl], d                                    ; $618e: $72
    ld c, [hl]                                    ; $618f: $4e
    halt                                          ; $6190: $76
    rlca                                          ; $6191: $07
    ld a, l                                       ; $6192: $7d
    dec de                                        ; $6193: $1b
    ld a, l                                       ; $6194: $7d
    ld [hl], d                                    ; $6195: $72
    ld a, [hl]                                    ; $6196: $7e
    dec a                                         ; $6197: $3d
    ccf                                           ; $6198: $3f
    ld a, l                                       ; $6199: $7d
    ld a, a                                       ; $619a: $7f
    ld a, l                                       ; $619b: $7d
    ld a, a                                       ; $619c: $7f
    ld a, l                                       ; $619d: $7d
    ld a, a                                       ; $619e: $7f
    ld a, l                                       ; $619f: $7d
    ld a, a                                       ; $61a0: $7f
    rst $18                                       ; $61a1: $df
    rst $38                                       ; $61a2: $ff
    ld e, b                                       ; $61a3: $58
    ld a, a                                       ; $61a4: $7f
    ld [bc], a                                    ; $61a5: $02
    ccf                                           ; $61a6: $3f
    stop                                          ; $61a7: $10 $00
    ld [bc], a                                    ; $61a9: $02
    rlca                                          ; $61aa: $07
    inc b                                         ; $61ab: $04
    inc b                                         ; $61ac: $04
    inc b                                         ; $61ad: $04
    ld b, $02                                     ; $61ae: $06 $02
    rlca                                          ; $61b0: $07
    ld [bc], a                                    ; $61b1: $02
    inc b                                         ; $61b2: $04
    ld [de], a                                    ; $61b3: $12
    nop                                           ; $61b4: $00
    rst $38                                       ; $61b5: $ff
    rlca                                          ; $61b6: $07
    ld bc, $07f8                                  ; $61b7: $01 $f8 $07
    di                                            ; $61ba: $f3
    ld [bc], a                                    ; $61bb: $02
    db $ed                                        ; $61bc: $ed
    ld hl, sp+$02                                 ; $61bd: $f8 $02
    ld bc, $0086                                  ; $61bf: $01 $86 $00
    ld [$1400], sp                                ; $61c2: $08 $00 $14
    nop                                           ; $61c5: $00
    ld [$4002], sp                                ; $61c6: $08 $02 $40
    ld [$8100], sp                                ; $61c9: $08 $00 $81
    ld [bc], a                                    ; $61cc: $02
    dec c                                         ; $61cd: $0d
    nop                                           ; $61ce: $00
    rst $38                                       ; $61cf: $ff
    dec c                                         ; $61d0: $0d
    inc b                                         ; $61d1: $04
    ld hl, sp+$07                                 ; $61d2: $f8 $07
    di                                            ; $61d4: $f3
    ld [bc], a                                    ; $61d5: $02
    db $eb                                        ; $61d6: $eb
    rst $30                                       ; $61d7: $f7
    db $eb                                        ; $61d8: $eb
    cp $fb                                        ; $61d9: $fe $fb
    ld sp, hl                                     ; $61db: $f9
    ei                                            ; $61dc: $fb
    db $fc                                        ; $61dd: $fc
    ld [bc], a                                    ; $61de: $02
    ld c, $94                                     ; $61df: $0e $94
    dec sp                                        ; $61e1: $3b
    ccf                                           ; $61e2: $3f
    ld e, a                                       ; $61e3: $5f
    ld a, a                                       ; $61e4: $7f
    ld e, a                                       ; $61e5: $5f
    ld a, a                                       ; $61e6: $7f
    rst $38                                       ; $61e7: $ff
    di                                            ; $61e8: $f3
    rst $38                                       ; $61e9: $ff
    or $7f                                        ; $61ea: $f6 $7f
    ld a, c                                       ; $61ec: $79
    ld a, a                                       ; $61ed: $7f
    ld c, c                                       ; $61ee: $49
    ccf                                           ; $61ef: $3f
    ld [hl], $3f                                  ; $61f0: $36 $3f
    ld sp, $3c2f                                  ; $61f2: $31 $2f $3c
    ld [bc], a                                    ; $61f5: $02
    ld a, $83                                     ; $61f6: $3e $83
    dec e                                         ; $61f8: $1d
    rra                                           ; $61f9: $1f
    ld c, $05                                     ; $61fa: $0e $05
    rrca                                          ; $61fc: $0f
    inc b                                         ; $61fd: $04
    ld b, b                                       ; $61fe: $40
    add d                                         ; $61ff: $82
    jr nz, jr_0da_6262                            ; $6200: $20 $60

    ld [bc], a                                    ; $6202: $02
    ld [hl], b                                    ; $6203: $70
    add d                                         ; $6204: $82
    ld h, b                                       ; $6205: $60
    jr nz, jr_0da_620a                            ; $6206: $20 $02

jr_0da_6208:
    ld h, b                                       ; $6208: $60
    add [hl]                                      ; $6209: $86

jr_0da_620a:
    ld h, h                                       ; $620a: $64
    inc h                                         ; $620b: $24
    ld l, [hl]                                    ; $620c: $6e
    ld a, [hl+]                                   ; $620d: $2a
    ld l, [hl]                                    ; $620e: $6e
    ld l, d                                       ; $620f: $6a
    ld [bc], a                                    ; $6210: $02
    ld l, [hl]                                    ; $6211: $6e
    sbc d                                         ; $6212: $9a
    ld e, [hl]                                    ; $6213: $5e
    ld d, d                                       ; $6214: $52
    ld l, [hl]                                    ; $6215: $6e
    ld [hl], d                                    ; $6216: $72
    ld c, [hl]                                    ; $6217: $4e
    halt                                          ; $6218: $76
    rlca                                          ; $6219: $07
    ld a, l                                       ; $621a: $7d
    dec de                                        ; $621b: $1b
    ld a, l                                       ; $621c: $7d
    ld [hl], d                                    ; $621d: $72
    ld a, [hl]                                    ; $621e: $7e

jr_0da_621f:
    dec a                                         ; $621f: $3d
    ccf                                           ; $6220: $3f
    ld a, l                                       ; $6221: $7d
    ld a, a                                       ; $6222: $7f
    ld a, l                                       ; $6223: $7d
    ld a, a                                       ; $6224: $7f
    ld a, l                                       ; $6225: $7d
    ld a, a                                       ; $6226: $7f
    ld a, l                                       ; $6227: $7d
    ld a, a                                       ; $6228: $7f
    rst $18                                       ; $6229: $df
    rst $38                                       ; $622a: $ff
    ld e, b                                       ; $622b: $58
    ld a, a                                       ; $622c: $7f
    ld [bc], a                                    ; $622d: $02
    ccf                                           ; $622e: $3f
    stop                                          ; $622f: $10 $00
    ld [bc], a                                    ; $6231: $02
    rlca                                          ; $6232: $07
    inc b                                         ; $6233: $04
    inc b                                         ; $6234: $04
    inc b                                         ; $6235: $04
    ld b, $02                                     ; $6236: $06 $02
    rlca                                          ; $6238: $07
    ld [bc], a                                    ; $6239: $02
    inc b                                         ; $623a: $04
    ld [de], a                                    ; $623b: $12
    nop                                           ; $623c: $00
    rst $38                                       ; $623d: $ff
    rlca                                          ; $623e: $07
    ld bc, $07f8                                  ; $623f: $01 $f8 $07
    di                                            ; $6242: $f3
    ld [bc], a                                    ; $6243: $02
    or $f7                                        ; $6244: $f6 $f7
    add c                                         ; $6246: $81
    ld bc, $001f                                  ; $6247: $01 $1f $00
    rst $38                                       ; $624a: $ff
    dec c                                         ; $624b: $0d
    inc b                                         ; $624c: $04
    ld sp, hl                                     ; $624d: $f9
    rlca                                          ; $624e: $07
    di                                            ; $624f: $f3
    ld [bc], a                                    ; $6250: $02
    db $eb                                        ; $6251: $eb
    ld a, [$00ec]                                 ; $6252: $fa $ec $00
    ei                                            ; $6255: $fb
    ld a, [$fffb]                                 ; $6256: $fa $fb $ff
    ld [bc], a                                    ; $6259: $02
    cpl                                           ; $625a: $2f
    adc d                                         ; $625b: $8a
    dec a                                         ; $625c: $3d
    ccf                                           ; $625d: $3f
    ld e, a                                       ; $625e: $5f
    ld a, a                                       ; $625f: $7f
    ld e, a                                       ; $6260: $5f
    ld a, a                                       ; $6261: $7f

jr_0da_6262:
    ld a, d                                       ; $6262: $7a
    ld a, a                                       ; $6263: $7f
    dec a                                         ; $6264: $3d
    ccf                                           ; $6265: $3f
    inc bc                                        ; $6266: $03
    ld a, a                                       ; $6267: $7f
    add c                                         ; $6268: $81
    ld e, a                                       ; $6269: $5f
    ld [bc], a                                    ; $626a: $02
    ccf                                           ; $626b: $3f
    adc [hl]                                      ; $626c: $8e
    rra                                           ; $626d: $1f
    rla                                           ; $626e: $17
    jr z, jr_0da_62b0                             ; $626f: $28 $3f

    ld [hl], a                                    ; $6271: $77
    ld a, a                                       ; $6272: $7f
    ld e, b                                       ; $6273: $58
    ld a, a                                       ; $6274: $7f
    ld e, h                                       ; $6275: $5c
    ld a, a                                       ; $6276: $7f
    sbc a                                         ; $6277: $9f
    rst $38                                       ; $6278: $ff
    sbc a                                         ; $6279: $9f
    rst $38                                       ; $627a: $ff
    ld [bc], a                                    ; $627b: $02
    jr c, jr_0da_6280                             ; $627c: $38 $02

    inc a                                         ; $627e: $3c
    add h                                         ; $627f: $84

jr_0da_6280:
    jr @+$3a                                      ; $6280: $18 $38

    inc l                                         ; $6282: $2c
    inc a                                         ; $6283: $3c
    ld [bc], a                                    ; $6284: $02
    jr c, jr_0da_6208                             ; $6285: $38 $81

    inc l                                         ; $6287: $2c
    ld [bc], a                                    ; $6288: $02
    inc a                                         ; $6289: $3c
    add c                                         ; $628a: $81
    inc [hl]                                      ; $628b: $34
    ld [bc], a                                    ; $628c: $02
    jr c, jr_0da_621f                             ; $628d: $38 $90

    jr nc, jr_0da_62a1                            ; $628f: $30 $10

    jr z, @+$3a                                   ; $6291: $28 $38

    inc d                                         ; $6293: $14
    inc a                                         ; $6294: $3c
    inc d                                         ; $6295: $14
    inc a                                         ; $6296: $3c
    inc [hl]                                      ; $6297: $34
    inc a                                         ; $6298: $3c
    ld [hl-], a                                   ; $6299: $32
    ld a, $32                                     ; $629a: $3e $32
    ld a, $ff                                     ; $629c: $3e $ff
    db $fd                                        ; $629e: $fd
    ld [bc], a                                    ; $629f: $02
    db $fc                                        ; $62a0: $fc

jr_0da_62a1:
    add d                                         ; $62a1: $82
    rst $38                                       ; $62a2: $ff
    cp a                                          ; $62a3: $bf
    ld [bc], a                                    ; $62a4: $02
    rst $38                                       ; $62a5: $ff
    ld [bc], a                                    ; $62a6: $02
    ccf                                           ; $62a7: $3f
    inc b                                         ; $62a8: $04
    ld a, a                                       ; $62a9: $7f
    add d                                         ; $62aa: $82
    jr c, jr_0da_62ec                             ; $62ab: $38 $3f

    ld [bc], a                                    ; $62ad: $02
    rra                                           ; $62ae: $1f
    ld [de], a                                    ; $62af: $12

jr_0da_62b0:
    nop                                           ; $62b0: $00
    adc d                                         ; $62b1: $8a
    rra                                           ; $62b2: $1f
    dec e                                         ; $62b3: $1d
    rla                                           ; $62b4: $17
    rra                                           ; $62b5: $1f
    inc d                                         ; $62b6: $14
    inc e                                         ; $62b7: $1c
    ld a, [de]                                    ; $62b8: $1a
    ld e, $0e                                     ; $62b9: $1e $0e
    ld e, $02                                     ; $62bb: $1e $02
    inc e                                         ; $62bd: $1c
    ld [bc], a                                    ; $62be: $02
    jr jr_0da_62d1                                ; $62bf: $18 $10

    nop                                           ; $62c1: $00
    rst $38                                       ; $62c2: $ff
    dec c                                         ; $62c3: $0d
    inc b                                         ; $62c4: $04
    ld sp, hl                                     ; $62c5: $f9
    rlca                                          ; $62c6: $07
    di                                            ; $62c7: $f3
    ld [bc], a                                    ; $62c8: $02
    db $eb                                        ; $62c9: $eb
    ld a, [$ffeb]                                 ; $62ca: $fa $eb $ff
    ei                                            ; $62cd: $fb
    ld a, [$fffb]                                 ; $62ce: $fa $fb $ff

jr_0da_62d1:
    ld [bc], a                                    ; $62d1: $02
    rla                                           ; $62d2: $17
    adc d                                         ; $62d3: $8a
    ld a, $3f                                     ; $62d4: $3e $3f
    ld e, a                                       ; $62d6: $5f
    ld a, a                                       ; $62d7: $7f
    ld a, [hl]                                    ; $62d8: $7e
    ld a, a                                       ; $62d9: $7f
    ld [hl], l                                    ; $62da: $75
    ld a, a                                       ; $62db: $7f
    dec sp                                        ; $62dc: $3b
    ccf                                           ; $62dd: $3f
    inc bc                                        ; $62de: $03
    ld a, a                                       ; $62df: $7f
    add c                                         ; $62e0: $81
    ld e, a                                       ; $62e1: $5f
    ld [bc], a                                    ; $62e2: $02
    ccf                                           ; $62e3: $3f
    ld [bc], a                                    ; $62e4: $02
    rra                                           ; $62e5: $1f
    adc h                                         ; $62e6: $8c
    jr z, jr_0da_6328                             ; $62e7: $28 $3f

    ld [hl], a                                    ; $62e9: $77
    ld a, a                                       ; $62ea: $7f
    ld d, b                                       ; $62eb: $50

jr_0da_62ec:
    ld a, a                                       ; $62ec: $7f
    ld e, c                                       ; $62ed: $59
    ld a, a                                       ; $62ee: $7f

jr_0da_62ef:
    ld e, a                                       ; $62ef: $5f
    ld a, a                                       ; $62f0: $7f
    sbc a                                         ; $62f1: $9f
    rst $38                                       ; $62f2: $ff
    ld [bc], a                                    ; $62f3: $02
    db $10                                        ; $62f4: $10
    ld [bc], a                                    ; $62f5: $02
    jr jr_0da_62fa                                ; $62f6: $18 $02

    inc e                                         ; $62f8: $1c
    ld [bc], a                                    ; $62f9: $02

jr_0da_62fa:
    ld e, $82                                     ; $62fa: $1e $82
    ld b, $1e                                     ; $62fc: $06 $1e
    ld [bc], a                                    ; $62fe: $02
    inc e                                         ; $62ff: $1c
    ld [bc], a                                    ; $6300: $02
    ld e, $93                                     ; $6301: $1e $93
    ld c, $1a                                     ; $6303: $0e $1a
    inc e                                         ; $6305: $1c
    inc d                                         ; $6306: $14
    jr jr_0da_6311                                ; $6307: $18 $08

    inc d                                         ; $6309: $14
    inc e                                         ; $630a: $1c
    ld a, [bc]                                    ; $630b: $0a

jr_0da_630c:
    ld e, $1b                                     ; $630c: $1e $1b
    rra                                           ; $630e: $1f
    add hl, de                                    ; $630f: $19
    rra                                           ; $6310: $1f

jr_0da_6311:
    dec e                                         ; $6311: $1d
    rra                                           ; $6312: $1f
    dec e                                         ; $6313: $1d
    rra                                           ; $6314: $1f
    cp a                                          ; $6315: $bf
    inc b                                         ; $6316: $04
    rst $38                                       ; $6317: $ff
    add a                                         ; $6318: $87
    sbc a                                         ; $6319: $9f
    rst $38                                       ; $631a: $ff
    cp a                                          ; $631b: $bf
    ld a, [hl]                                    ; $631c: $7e
    ld a, a                                       ; $631d: $7f
    dec a                                         ; $631e: $3d
    ccf                                           ; $631f: $3f
    ld [bc], a                                    ; $6320: $02
    rrca                                          ; $6321: $0f
    ld [bc], a                                    ; $6322: $02
    rlca                                          ; $6323: $07
    stop                                          ; $6324: $10 $00
    ld [bc], a                                    ; $6326: $02
    rra                                           ; $6327: $1f

jr_0da_6328:
    add d                                         ; $6328: $82
    rla                                           ; $6329: $17
    rra                                           ; $632a: $1f
    ld [bc], a                                    ; $632b: $02
    inc e                                         ; $632c: $1c
    add e                                         ; $632d: $83
    inc d                                         ; $632e: $14
    inc e                                         ; $632f: $1c
    ld [bc], a                                    ; $6330: $02
    inc bc                                        ; $6331: $03
    ld e, $82                                     ; $6332: $1e $82
    ld b, $1e                                     ; $6334: $06 $1e
    ld [bc], a                                    ; $6336: $02
    inc e                                         ; $6337: $1c
    stop                                          ; $6338: $10 $00
    rst $38                                       ; $633a: $ff
    dec c                                         ; $633b: $0d
    inc b                                         ; $633c: $04
    ld sp, hl                                     ; $633d: $f9
    rlca                                          ; $633e: $07
    di                                            ; $633f: $f3
    ld [bc], a                                    ; $6340: $02
    db $ec                                        ; $6341: $ec
    ld a, [$ffec]                                 ; $6342: $fa $ec $ff
    db $fc                                        ; $6345: $fc
    ld a, [$00fc]                                 ; $6346: $fa $fc $00
    ld [bc], a                                    ; $6349: $02
    inc de                                        ; $634a: $13
    ld [bc], a                                    ; $634b: $02
    ccf                                           ; $634c: $3f
    add l                                         ; $634d: $85
    ld e, a                                       ; $634e: $5f
    ld a, a                                       ; $634f: $7f
    ld a, [hl]                                    ; $6350: $7e
    ld a, a                                       ; $6351: $7f
    ld sp, $3f03                                  ; $6352: $31 $03 $3f
    inc bc                                        ; $6355: $03
    ld a, a                                       ; $6356: $7f
    add c                                         ; $6357: $81
    ld e, a                                       ; $6358: $5f
    ld [bc], a                                    ; $6359: $02
    ccf                                           ; $635a: $3f
    ld [bc], a                                    ; $635b: $02
    rra                                           ; $635c: $1f
    adc h                                         ; $635d: $8c
    jr nz, @+$41                                  ; $635e: $20 $3f

    ld [hl], b                                    ; $6360: $70
    ld a, a                                       ; $6361: $7f
    ld e, a                                       ; $6362: $5f
    ld a, a                                       ; $6363: $7f
    ld e, a                                       ; $6364: $5f
    ld a, a                                       ; $6365: $7f
    sbc a                                         ; $6366: $9f
    rst $38                                       ; $6367: $ff
    sbc a                                         ; $6368: $9f
    rst $38                                       ; $6369: $ff
    ld [bc], a                                    ; $636a: $02
    jr jr_0da_62ef                                ; $636b: $18 $82

    ld [$0418], sp                                ; $636d: $08 $18 $04
    ld e, $82                                     ; $6370: $1e $82
    ld b, $1e                                     ; $6372: $06 $1e
    ld [bc], a                                    ; $6374: $02
    inc e                                         ; $6375: $1c
    ld [bc], a                                    ; $6376: $02
    ld e, $84                                     ; $6377: $1e $84
    ld c, $1a                                     ; $6379: $0e $1a
    inc e                                         ; $637b: $1c
    inc d                                         ; $637c: $14
    ld [bc], a                                    ; $637d: $02
    jr jr_0da_630c                                ; $637e: $18 $8c

    inc b                                         ; $6380: $04
    inc e                                         ; $6381: $1c
    ld a, [bc]                                    ; $6382: $0a
    ld e, $1a                                     ; $6383: $1e $1a
    ld e, $1a                                     ; $6385: $1e $1a
    ld e, $1d                                     ; $6387: $1e $1d
    rra                                           ; $6389: $1f
    dec e                                         ; $638a: $1d
    rra                                           ; $638b: $1f
    inc bc                                        ; $638c: $03
    rst $38                                       ; $638d: $ff
    add l                                         ; $638e: $85
    sbc a                                         ; $638f: $9f
    rst $38                                       ; $6390: $ff
    cp a                                          ; $6391: $bf
    ld a, [hl]                                    ; $6392: $7e
    ld a, a                                       ; $6393: $7f
    ld [bc], a                                    ; $6394: $02
    ccf                                           ; $6395: $3f
    ld [bc], a                                    ; $6396: $02
    rra                                           ; $6397: $1f
    ld [bc], a                                    ; $6398: $02
    inc bc                                        ; $6399: $03
    ld [de], a                                    ; $639a: $12
    nop                                           ; $639b: $00
    add d                                         ; $639c: $82
    ld a, [hl-]                                   ; $639d: $3a
    ld a, $02                                     ; $639e: $3e $02
    ccf                                           ; $63a0: $3f
    add d                                         ; $63a1: $82
    ld a, [bc]                                    ; $63a2: $0a
    ld a, [hl-]                                   ; $63a3: $3a
    ld [bc], a                                    ; $63a4: $02
    jr c, jr_0da_6328                             ; $63a5: $38 $81

    inc c                                         ; $63a7: $0c
    inc bc                                        ; $63a8: $03
    inc a                                         ; $63a9: $3c
    ld [bc], a                                    ; $63aa: $02
    jr c, jr_0da_63bf                             ; $63ab: $38 $12

    nop                                           ; $63ad: $00
    rst $38                                       ; $63ae: $ff
    dec c                                         ; $63af: $0d
    inc b                                         ; $63b0: $04
    ld sp, hl                                     ; $63b1: $f9
    rlca                                          ; $63b2: $07
    di                                            ; $63b3: $f3
    ld [bc], a                                    ; $63b4: $02
    db $ec                                        ; $63b5: $ec
    ld a, [$ffec]                                 ; $63b6: $fa $ec $ff
    db $fc                                        ; $63b9: $fc
    ld a, [$00fc]                                 ; $63ba: $fa $fc $00
    ld [bc], a                                    ; $63bd: $02
    rla                                           ; $63be: $17

jr_0da_63bf:
    adc d                                         ; $63bf: $8a
    ld a, $3f                                     ; $63c0: $3e $3f
    ld e, a                                       ; $63c2: $5f
    ld a, a                                       ; $63c3: $7f
    ld a, [hl]                                    ; $63c4: $7e
    ld a, a                                       ; $63c5: $7f
    ld [hl], l                                    ; $63c6: $75
    ld a, a                                       ; $63c7: $7f
    dec sp                                        ; $63c8: $3b
    ccf                                           ; $63c9: $3f
    inc bc                                        ; $63ca: $03
    ld a, a                                       ; $63cb: $7f
    add c                                         ; $63cc: $81
    ld e, a                                       ; $63cd: $5f
    ld [bc], a                                    ; $63ce: $02
    ccf                                           ; $63cf: $3f
    ld [bc], a                                    ; $63d0: $02
    rra                                           ; $63d1: $1f
    adc h                                         ; $63d2: $8c
    ld hl, $503f                                  ; $63d3: $21 $3f $50
    ld a, a                                       ; $63d6: $7f
    ld e, b                                       ; $63d7: $58
    ld a, a                                       ; $63d8: $7f
    ld e, a                                       ; $63d9: $5f
    ld a, a                                       ; $63da: $7f
    rst $18                                       ; $63db: $df
    rst $38                                       ; $63dc: $ff
    cp a                                          ; $63dd: $bf
    rst $38                                       ; $63de: $ff
    ld [bc], a                                    ; $63df: $02
    db $10                                        ; $63e0: $10
    ld [bc], a                                    ; $63e1: $02
    jr jr_0da_63e6                                ; $63e2: $18 $02

    inc e                                         ; $63e4: $1c
    ld [bc], a                                    ; $63e5: $02

jr_0da_63e6:
    ld e, $82                                     ; $63e6: $1e $82
    ld b, $1e                                     ; $63e8: $06 $1e
    ld [bc], a                                    ; $63ea: $02
    inc e                                         ; $63eb: $1c
    ld [bc], a                                    ; $63ec: $02
    ld e, $92                                     ; $63ed: $1e $92
    ld c, $1a                                     ; $63ef: $0e $1a
    inc e                                         ; $63f1: $1c
    inc d                                         ; $63f2: $14

jr_0da_63f3:
    jr @+$0a                                      ; $63f3: $18 $08

    inc b                                         ; $63f5: $04
    inc e                                         ; $63f6: $1c
    ld a, [bc]                                    ; $63f7: $0a
    ld e, $1a                                     ; $63f8: $1e $1a
    ld e, $1a                                     ; $63fa: $1e $1a
    ld e, $19                                     ; $63fc: $1e $19
    rra                                           ; $63fe: $1f
    add hl, de                                    ; $63ff: $19
    rra                                           ; $6400: $1f
    inc bc                                        ; $6401: $03
    rst $38                                       ; $6402: $ff
    add c                                         ; $6403: $81
    cp a                                          ; $6404: $bf
    ld [bc], a                                    ; $6405: $02
    ld a, a                                       ; $6406: $7f
    inc b                                         ; $6407: $04
    ccf                                           ; $6408: $3f
    ld [bc], a                                    ; $6409: $02
    rra                                           ; $640a: $1f
    ld [bc], a                                    ; $640b: $02
    inc bc                                        ; $640c: $03
    ld [de], a                                    ; $640d: $12
    nop                                           ; $640e: $00
    ld [bc], a                                    ; $640f: $02
    ld a, $85                                     ; $6410: $3e $85
    ccf                                           ; $6412: $3f
    add hl, sp                                    ; $6413: $39
    ld l, $3e                                     ; $6414: $2e $3e
    jr jr_0da_641b                                ; $6416: $18 $03

    jr c, jr_0da_641c                             ; $6418: $38 $02

    inc a                                         ; $641a: $3c

jr_0da_641b:
    ld [bc], a                                    ; $641b: $02

jr_0da_641c:
    jr nc, jr_0da_6430                            ; $641c: $30 $12

    nop                                           ; $641e: $00
    rst $38                                       ; $641f: $ff
    dec c                                         ; $6420: $0d
    inc b                                         ; $6421: $04
    ld sp, hl                                     ; $6422: $f9
    rlca                                          ; $6423: $07
    di                                            ; $6424: $f3
    ld [bc], a                                    ; $6425: $02
    db $eb                                        ; $6426: $eb
    ld a, [$ffec]                                 ; $6427: $fa $ec $ff
    ei                                            ; $642a: $fb
    ld a, [$00fb]                                 ; $642b: $fa $fb $00
    ld [bc], a                                    ; $642e: $02
    cpl                                           ; $642f: $2f

jr_0da_6430:
    adc d                                         ; $6430: $8a
    dec a                                         ; $6431: $3d
    ccf                                           ; $6432: $3f
    ld e, a                                       ; $6433: $5f
    ld a, a                                       ; $6434: $7f
    ld e, a                                       ; $6435: $5f
    ld a, a                                       ; $6436: $7f
    ld a, d                                       ; $6437: $7a
    ld a, a                                       ; $6438: $7f
    dec a                                         ; $6439: $3d
    ccf                                           ; $643a: $3f
    inc bc                                        ; $643b: $03
    ld a, a                                       ; $643c: $7f
    add c                                         ; $643d: $81
    ld e, a                                       ; $643e: $5f
    ld [bc], a                                    ; $643f: $02
    ccf                                           ; $6440: $3f
    adc [hl]                                      ; $6441: $8e
    rra                                           ; $6442: $1f
    rla                                           ; $6443: $17
    jr c, @+$41                                   ; $6444: $38 $3f

    ld l, a                                       ; $6446: $6f
    ld a, a                                       ; $6447: $7f
    ld d, b                                       ; $6448: $50
    ld a, a                                       ; $6449: $7f
    ld e, b                                       ; $644a: $58
    ld a, a                                       ; $644b: $7f
    cp a                                          ; $644c: $bf
    rst $38                                       ; $644d: $ff
    cp a                                          ; $644e: $bf
    rst $38                                       ; $644f: $ff
    ld [bc], a                                    ; $6450: $02
    inc e                                         ; $6451: $1c
    ld [bc], a                                    ; $6452: $02
    ld e, $84                                     ; $6453: $1e $84
    inc c                                         ; $6455: $0c
    inc e                                         ; $6456: $1c
    ld d, $1e                                     ; $6457: $16 $1e
    ld [bc], a                                    ; $6459: $02
    inc e                                         ; $645a: $1c
    add c                                         ; $645b: $81
    ld d, $02                                     ; $645c: $16 $02
    ld e, $81                                     ; $645e: $1e $81
    ld a, [de]                                    ; $6460: $1a
    ld [bc], a                                    ; $6461: $02
    inc e                                         ; $6462: $1c
    add d                                         ; $6463: $82
    jr jr_0da_646e                                ; $6464: $18 $08

    ld [bc], a                                    ; $6466: $02
    jr jr_0da_63f3                                ; $6467: $18 $8a

jr_0da_6469:
    ld d, $1e                                     ; $6469: $16 $1e
    ld a, [bc]                                    ; $646b: $0a
    ld e, $1a                                     ; $646c: $1e $1a

jr_0da_646e:
    ld e, $1a                                     ; $646e: $1e $1a
    ld e, $19                                     ; $6470: $1e $19
    rra                                           ; $6472: $1f
    ld [bc], a                                    ; $6473: $02
    rst $38                                       ; $6474: $ff
    add d                                         ; $6475: $82
    cp b                                          ; $6476: $b8
    ld hl, sp+$02                                 ; $6477: $f8 $02
    ld a, a                                       ; $6479: $7f
    inc b                                         ; $647a: $04
    ccf                                           ; $647b: $3f
    add c                                         ; $647c: $81
    ld [hl], a                                    ; $647d: $77
    inc bc                                        ; $647e: $03
    ld a, a                                       ; $647f: $7f
    add d                                         ; $6480: $82
    cpl                                           ; $6481: $2f
    ccf                                           ; $6482: $3f
    ld [bc], a                                    ; $6483: $02
    ld e, $12                                     ; $6484: $1e $12
    nop                                           ; $6486: $00
    add h                                         ; $6487: $84
    ccf                                           ; $6488: $3f
    add hl, sp                                    ; $6489: $39
    ld a, $3a                                     ; $648a: $3e $3a
    ld [bc], a                                    ; $648c: $02
    inc a                                         ; $648d: $3c
    add d                                         ; $648e: $82
    inc l                                         ; $648f: $2c
    inc a                                         ; $6490: $3c
    ld [bc], a                                    ; $6491: $02
    jr c, jr_0da_6496                             ; $6492: $38 $02

    jr nc, jr_0da_64a8                            ; $6494: $30 $12

jr_0da_6496:
    nop                                           ; $6496: $00
    rst $38                                       ; $6497: $ff
    dec c                                         ; $6498: $0d
    inc b                                         ; $6499: $04
    ld sp, hl                                     ; $649a: $f9
    rlca                                          ; $649b: $07
    di                                            ; $649c: $f3
    ld [bc], a                                    ; $649d: $02
    db $eb                                        ; $649e: $eb
    ld a, [$ffec]                                 ; $649f: $fa $ec $ff
    ei                                            ; $64a2: $fb
    ld a, [$00fb]                                 ; $64a3: $fa $fb $00
    ld [bc], a                                    ; $64a6: $02
    rra                                           ; $64a7: $1f

jr_0da_64a8:
    add c                                         ; $64a8: $81
    ld a, e                                       ; $64a9: $7b
    inc bc                                        ; $64aa: $03
    ld a, a                                       ; $64ab: $7f
    add [hl]                                      ; $64ac: $86
    ld e, a                                       ; $64ad: $5f
    ld a, a                                       ; $64ae: $7f
    ld e, l                                       ; $64af: $5d
    ld a, a                                       ; $64b0: $7f
    ld a, $3f                                     ; $64b1: $3e $3f
    inc bc                                        ; $64b3: $03
    ld a, a                                       ; $64b4: $7f
    sub c                                         ; $64b5: $91
    ld e, a                                       ; $64b6: $5f
    ccf                                           ; $64b7: $3f
    cpl                                           ; $64b8: $2f
    rra                                           ; $64b9: $1f
    rla                                           ; $64ba: $17
    jr z, jr_0da_64fc                             ; $64bb: $28 $3f

    ld d, a                                       ; $64bd: $57
    ld a, a                                       ; $64be: $7f
    ret c                                         ; $64bf: $d8

    rst $38                                       ; $64c0: $ff
    sbc h                                         ; $64c1: $9c
    rst $38                                       ; $64c2: $ff
    cp a                                          ; $64c3: $bf
    rst $38                                       ; $64c4: $ff
    cp a                                          ; $64c5: $bf
    rst $38                                       ; $64c6: $ff
    ld [bc], a                                    ; $64c7: $02
    jr jr_0da_64cc                                ; $64c8: $18 $02

    ld e, $84                                     ; $64ca: $1e $84

jr_0da_64cc:
    inc d                                         ; $64cc: $14
    inc e                                         ; $64cd: $1c
    ld c, $1e                                     ; $64ce: $0e $1e
    ld [bc], a                                    ; $64d0: $02
    inc e                                         ; $64d1: $1c
    inc bc                                        ; $64d2: $03
    ld e, $81                                     ; $64d3: $1e $81
    ld a, [de]                                    ; $64d5: $1a
    ld [bc], a                                    ; $64d6: $02
    inc e                                         ; $64d7: $1c
    ld [bc], a                                    ; $64d8: $02
    jr jr_0da_6469                                ; $64d9: $18 $8e

    inc d                                         ; $64db: $14
    inc e                                         ; $64dc: $1c
    ld c, $1e                                     ; $64dd: $0e $1e
    ld a, [bc]                                    ; $64df: $0a
    ld e, $1a                                     ; $64e0: $1e $1a
    ld e, $1a                                     ; $64e2: $1e $1a
    ld e, $19                                     ; $64e4: $1e $19
    rra                                           ; $64e6: $1f
    db $fd                                        ; $64e7: $fd
    rst $38                                       ; $64e8: $ff
    ld [bc], a                                    ; $64e9: $02
    ld hl, sp+$02                                 ; $64ea: $f8 $02
    ld a, a                                       ; $64ec: $7f
    add h                                         ; $64ed: $84
    scf                                           ; $64ee: $37
    ccf                                           ; $64ef: $3f
    scf                                           ; $64f0: $37
    ccf                                           ; $64f1: $3f
    inc b                                         ; $64f2: $04
    ld a, a                                       ; $64f3: $7f
    add d                                         ; $64f4: $82
    ld h, [hl]                                    ; $64f5: $66
    ld a, a                                       ; $64f6: $7f
    ld [bc], a                                    ; $64f7: $02
    ccf                                           ; $64f8: $3f
    ld [de], a                                    ; $64f9: $12
    nop                                           ; $64fa: $00
    add [hl]                                      ; $64fb: $86

jr_0da_64fc:
    ccf                                           ; $64fc: $3f
    dec a                                         ; $64fd: $3d
    ld a, $3a                                     ; $64fe: $3e $3a
    ld l, $3a                                     ; $6500: $2e $3a
    ld [bc], a                                    ; $6502: $02
    inc a                                         ; $6503: $3c
    add d                                         ; $6504: $82
    jr @+$3a                                      ; $6505: $18 $38

    ld [bc], a                                    ; $6507: $02
    jr nz, jr_0da_651c                            ; $6508: $20 $12

    nop                                           ; $650a: $00
    rst $38                                       ; $650b: $ff
    dec c                                         ; $650c: $0d
    inc b                                         ; $650d: $04
    ld sp, hl                                     ; $650e: $f9
    rlca                                          ; $650f: $07
    di                                            ; $6510: $f3
    ld [bc], a                                    ; $6511: $02
    db $ec                                        ; $6512: $ec
    ld a, [$ffed]                                 ; $6513: $fa $ed $ff
    db $fc                                        ; $6516: $fc
    ld a, [$00fc]                                 ; $6517: $fa $fc $00
    ld [bc], a                                    ; $651a: $02
    ld e, a                                       ; $651b: $5f

jr_0da_651c:
    add e                                         ; $651c: $83
    ld a, e                                       ; $651d: $7b
    ld a, a                                       ; $651e: $7f
    ld e, a                                       ; $651f: $5f
    inc bc                                        ; $6520: $03
    ld a, a                                       ; $6521: $7f
    add c                                         ; $6522: $81
    inc a                                         ; $6523: $3c
    inc bc                                        ; $6524: $03
    ccf                                           ; $6525: $3f
    inc bc                                        ; $6526: $03
    ld a, a                                       ; $6527: $7f
    add e                                         ; $6528: $83
    ld e, a                                       ; $6529: $5f
    ccf                                           ; $652a: $3f
    cpl                                           ; $652b: $2f
    ld [bc], a                                    ; $652c: $02
    rra                                           ; $652d: $1f
    adc h                                         ; $652e: $8c
    jr nz, jr_0da_6570                            ; $652f: $20 $3f

    ld d, b                                       ; $6531: $50
    ld a, a                                       ; $6532: $7f
    ld e, a                                       ; $6533: $5f
    ld a, a                                       ; $6534: $7f
    ld e, a                                       ; $6535: $5f
    ld a, a                                       ; $6536: $7f
    cp a                                          ; $6537: $bf
    rst $38                                       ; $6538: $ff
    cp a                                          ; $6539: $bf
    rst $38                                       ; $653a: $ff
    ld [bc], a                                    ; $653b: $02
    inc e                                         ; $653c: $1c
    ld [bc], a                                    ; $653d: $02
    ld e, $83                                     ; $653e: $1e $83
    ld d, $1e                                     ; $6540: $16 $1e
    inc c                                         ; $6542: $0c
    inc bc                                        ; $6543: $03
    inc e                                         ; $6544: $1c
    inc bc                                        ; $6545: $03
    ld e, $81                                     ; $6546: $1e $81
    ld a, [de]                                    ; $6548: $1a
    ld [bc], a                                    ; $6549: $02
    inc e                                         ; $654a: $1c
    ld [bc], a                                    ; $654b: $02
    jr @-$72                                      ; $654c: $18 $8c

    inc b                                         ; $654e: $04
    inc e                                         ; $654f: $1c
    ld c, $1e                                     ; $6550: $0e $1e
    ld a, [de]                                    ; $6552: $1a
    ld e, $1a                                     ; $6553: $1e $1a
    ld e, $19                                     ; $6555: $1e $19
    rra                                           ; $6557: $1f
    add hl, de                                    ; $6558: $19
    rra                                           ; $6559: $1f
    ld [bc], a                                    ; $655a: $02
    rst $38                                       ; $655b: $ff
    add d                                         ; $655c: $82
    cp b                                          ; $655d: $b8
    ld hl, sp+$02                                 ; $655e: $f8 $02
    ld a, a                                       ; $6560: $7f
    add c                                         ; $6561: $81
    scf                                           ; $6562: $37
    inc bc                                        ; $6563: $03
    ccf                                           ; $6564: $3f
    add h                                         ; $6565: $84
    ld h, [hl]                                    ; $6566: $66
    ld a, a                                       ; $6567: $7f
    ld a, l                                       ; $6568: $7d
    ld a, a                                       ; $6569: $7f
    ld [bc], a                                    ; $656a: $02
    ld a, $14                                     ; $656b: $3e $14
    nop                                           ; $656d: $00
    adc b                                         ; $656e: $88
    ccf                                           ; $656f: $3f

jr_0da_6570:
    add hl, sp                                    ; $6570: $39
    ld a, $3a                                     ; $6571: $3e $3a
    inc l                                         ; $6573: $2c
    inc a                                         ; $6574: $3c
    jr @+$3a                                      ; $6575: $18 $38

    ld [bc], a                                    ; $6577: $02
    jr nc, jr_0da_658e                            ; $6578: $30 $14

    nop                                           ; $657a: $00
    rst $38                                       ; $657b: $ff
    dec c                                         ; $657c: $0d
    inc b                                         ; $657d: $04
    ld sp, hl                                     ; $657e: $f9
    rlca                                          ; $657f: $07
    di                                            ; $6580: $f3
    ld [bc], a                                    ; $6581: $02
    db $ec                                        ; $6582: $ec
    ld a, [$ffed]                                 ; $6583: $fa $ed $ff
    db $fc                                        ; $6586: $fc
    ld a, [$00fc]                                 ; $6587: $fa $fc $00
    ld [bc], a                                    ; $658a: $02
    rra                                           ; $658b: $1f
    adc d                                         ; $658c: $8a
    ld a, e                                       ; $658d: $7b

jr_0da_658e:
    ld a, a                                       ; $658e: $7f
    ld e, a                                       ; $658f: $5f
    ld a, a                                       ; $6590: $7f
    ld e, a                                       ; $6591: $5f
    ld a, a                                       ; $6592: $7f
    ld a, l                                       ; $6593: $7d
    ld a, a                                       ; $6594: $7f
    ld a, $3f                                     ; $6595: $3e $3f
    inc bc                                        ; $6597: $03
    ld a, a                                       ; $6598: $7f
    sub c                                         ; $6599: $91
    ld e, a                                       ; $659a: $5f
    ccf                                           ; $659b: $3f
    cpl                                           ; $659c: $2f
    rra                                           ; $659d: $1f
    rla                                           ; $659e: $17
    inc h                                         ; $659f: $24
    ccf                                           ; $65a0: $3f
    ld d, b                                       ; $65a1: $50
    ld a, a                                       ; $65a2: $7f
    ld e, b                                       ; $65a3: $58
    ld a, a                                       ; $65a4: $7f
    ld e, a                                       ; $65a5: $5f
    ld a, a                                       ; $65a6: $7f
    sbc a                                         ; $65a7: $9f
    rst $38                                       ; $65a8: $ff
    sbc a                                         ; $65a9: $9f
    rst $38                                       ; $65aa: $ff
    ld [bc], a                                    ; $65ab: $02
    jr jr_0da_65b0                                ; $65ac: $18 $02

    ld e, $84                                     ; $65ae: $1e $84

jr_0da_65b0:
    inc d                                         ; $65b0: $14
    inc e                                         ; $65b1: $1c
    ld c, $1e                                     ; $65b2: $0e $1e
    ld [bc], a                                    ; $65b4: $02
    inc e                                         ; $65b5: $1c
    inc bc                                        ; $65b6: $03
    ld e, $81                                     ; $65b7: $1e $81
    ld a, [de]                                    ; $65b9: $1a
    ld [bc], a                                    ; $65ba: $02
    inc e                                         ; $65bb: $1c
    ld [bc], a                                    ; $65bc: $02
    jr @-$70                                      ; $65bd: $18 $8e

    inc b                                         ; $65bf: $04
    inc e                                         ; $65c0: $1c
    ld a, [bc]                                    ; $65c1: $0a
    ld e, $1a                                     ; $65c2: $1e $1a
    ld e, $1a                                     ; $65c4: $1e $1a
    ld e, $1b                                     ; $65c6: $1e $1b
    rra                                           ; $65c8: $1f
    dec e                                         ; $65c9: $1d
    rra                                           ; $65ca: $1f
    rst $30                                       ; $65cb: $f7
    rst $38                                       ; $65cc: $ff
    ld [bc], a                                    ; $65cd: $02
    ld hl, sp-$7e                                 ; $65ce: $f8 $82
    rst $38                                       ; $65d0: $ff
    cp a                                          ; $65d1: $bf
    ld [bc], a                                    ; $65d2: $02
    rst $38                                       ; $65d3: $ff
    ld [bc], a                                    ; $65d4: $02
    ccf                                           ; $65d5: $3f
    add d                                         ; $65d6: $82
    ld a, $3f                                     ; $65d7: $3e $3f
    ld [bc], a                                    ; $65d9: $02
    ld a, a                                       ; $65da: $7f
    ld [bc], a                                    ; $65db: $02
    ld a, $14                                     ; $65dc: $3e $14
    nop                                           ; $65de: $00
    add d                                         ; $65df: $82
    ccf                                           ; $65e0: $3f
    add hl, sp                                    ; $65e1: $39
    ld [bc], a                                    ; $65e2: $02
    ld a, $04                                     ; $65e3: $3e $04
    jr c, jr_0da_65e9                             ; $65e5: $38 $02

    jr nc, jr_0da_65fd                            ; $65e7: $30 $14

jr_0da_65e9:
    nop                                           ; $65e9: $00
    rst $38                                       ; $65ea: $ff
    dec c                                         ; $65eb: $0d
    inc b                                         ; $65ec: $04
    ld sp, hl                                     ; $65ed: $f9
    rlca                                          ; $65ee: $07
    di                                            ; $65ef: $f3
    ld [bc], a                                    ; $65f0: $02
    db $eb                                        ; $65f1: $eb
    ld a, [$ffec]                                 ; $65f2: $fa $ec $ff
    ei                                            ; $65f5: $fb
    ld a, [$00fb]                                 ; $65f6: $fa $fb $00
    ld [bc], a                                    ; $65f9: $02
    cpl                                           ; $65fa: $2f
    adc d                                         ; $65fb: $8a
    dec a                                         ; $65fc: $3d

jr_0da_65fd:
    ccf                                           ; $65fd: $3f
    ld e, a                                       ; $65fe: $5f
    ld a, a                                       ; $65ff: $7f
    ld e, a                                       ; $6600: $5f
    ld a, a                                       ; $6601: $7f
    ld a, d                                       ; $6602: $7a
    ld a, a                                       ; $6603: $7f
    dec a                                         ; $6604: $3d
    ccf                                           ; $6605: $3f
    inc bc                                        ; $6606: $03
    ld a, a                                       ; $6607: $7f
    add c                                         ; $6608: $81
    ld e, a                                       ; $6609: $5f
    ld [bc], a                                    ; $660a: $02
    ccf                                           ; $660b: $3f
    adc [hl]                                      ; $660c: $8e
    rra                                           ; $660d: $1f
    rla                                           ; $660e: $17
    jr @+$21                                      ; $660f: $18 $1f

    ld l, a                                       ; $6611: $6f
    ld a, a                                       ; $6612: $7f
    ld d, b                                       ; $6613: $50
    ld a, a                                       ; $6614: $7f
    ld e, b                                       ; $6615: $58
    ld a, a                                       ; $6616: $7f
    ld e, a                                       ; $6617: $5f
    ld a, a                                       ; $6618: $7f
    sbc a                                         ; $6619: $9f
    rst $38                                       ; $661a: $ff
    ld [bc], a                                    ; $661b: $02
    inc e                                         ; $661c: $1c
    ld [bc], a                                    ; $661d: $02
    ld e, $84                                     ; $661e: $1e $84
    inc c                                         ; $6620: $0c
    inc e                                         ; $6621: $1c
    ld d, $1e                                     ; $6622: $16 $1e
    ld [bc], a                                    ; $6624: $02
    inc e                                         ; $6625: $1c
    add c                                         ; $6626: $81
    ld d, $02                                     ; $6627: $16 $02
    ld e, $81                                     ; $6629: $1e $81
    ld a, [de]                                    ; $662b: $1a
    ld [bc], a                                    ; $662c: $02
    inc e                                         ; $662d: $1c
    add d                                         ; $662e: $82
    jr jr_0da_6639                                ; $662f: $18 $08

    ld [bc], a                                    ; $6631: $02
    inc e                                         ; $6632: $1c
    adc h                                         ; $6633: $8c
    ld d, $1e                                     ; $6634: $16 $1e
    ld a, [bc]                                    ; $6636: $0a
    ld e, $1a                                     ; $6637: $1e $1a

jr_0da_6639:
    ld e, $1d                                     ; $6639: $1e $1d
    rra                                           ; $663b: $1f
    dec e                                         ; $663c: $1d
    rra                                           ; $663d: $1f
    push af                                       ; $663e: $f5
    rst $38                                       ; $663f: $ff
    ld [bc], a                                    ; $6640: $02
    ld hl, sp-$7c                                 ; $6641: $f8 $84
    rst $38                                       ; $6643: $ff
    cp a                                          ; $6644: $bf
    rst $38                                       ; $6645: $ff
    cp a                                          ; $6646: $bf
    ld [bc], a                                    ; $6647: $02
    rst $38                                       ; $6648: $ff
    ld [bc], a                                    ; $6649: $02
    ld a, a                                       ; $664a: $7f
    add d                                         ; $664b: $82
    ld a, $3f                                     ; $664c: $3e $3f
    ld [bc], a                                    ; $664e: $02
    rra                                           ; $664f: $1f
    ld [bc], a                                    ; $6650: $02
    inc bc                                        ; $6651: $03
    ld [de], a                                    ; $6652: $12
    nop                                           ; $6653: $00
    add d                                         ; $6654: $82
    cpl                                           ; $6655: $2f
    ccf                                           ; $6656: $3f
    ld [bc], a                                    ; $6657: $02
    ld a, [hl-]                                   ; $6658: $3a
    ld [bc], a                                    ; $6659: $02
    jr c, @-$7d                                   ; $665a: $38 $81

    inc c                                         ; $665c: $0c
    inc bc                                        ; $665d: $03
    inc a                                         ; $665e: $3c
    add d                                         ; $665f: $82
    jr z, jr_0da_669a                             ; $6660: $28 $38

    ld [bc], a                                    ; $6662: $02
    jr nc, jr_0da_6675                            ; $6663: $30 $10

    nop                                           ; $6665: $00
    rst $38                                       ; $6666: $ff
    dec c                                         ; $6667: $0d
    inc b                                         ; $6668: $04
    ld sp, hl                                     ; $6669: $f9
    rlca                                          ; $666a: $07
    di                                            ; $666b: $f3
    ld [bc], a                                    ; $666c: $02
    db $eb                                        ; $666d: $eb
    ld a, [$ffeb]                                 ; $666e: $fa $eb $ff
    ei                                            ; $6671: $fb
    ld sp, hl                                     ; $6672: $f9
    ei                                            ; $6673: $fb
    nop                                           ; $6674: $00

jr_0da_6675:
    ld [bc], a                                    ; $6675: $02
    rlca                                          ; $6676: $07
    add h                                         ; $6677: $84
    dec a                                         ; $6678: $3d
    ccf                                           ; $6679: $3f
    ld [hl], a                                    ; $667a: $77
    ld a, a                                       ; $667b: $7f
    ld [bc], a                                    ; $667c: $02
    ccf                                           ; $667d: $3f
    sbc b                                         ; $667e: $98
    ld a, a                                       ; $667f: $7f
    ld [hl], l                                    ; $6680: $75
    ccf                                           ; $6681: $3f
    dec a                                         ; $6682: $3d
    ld a, a                                       ; $6683: $7f
    ld [hl], d                                    ; $6684: $72
    ld a, a                                       ; $6685: $7f
    ld d, d                                       ; $6686: $52
    ccf                                           ; $6687: $3f
    dec a                                         ; $6688: $3d
    rra                                           ; $6689: $1f
    inc de                                        ; $668a: $13
    ccf                                           ; $668b: $3f
    jr c, jr_0da_66e5                             ; $668c: $38 $57

    ld a, a                                       ; $668e: $7f
    ld e, d                                       ; $668f: $5a
    ld a, a                                       ; $6690: $7f
    cp l                                          ; $6691: $bd
    rst $38                                       ; $6692: $ff
    sbc d                                         ; $6693: $9a
    rst $38                                       ; $6694: $ff
    cp l                                          ; $6695: $bd
    rst $38                                       ; $6696: $ff
    ld [bc], a                                    ; $6697: $02
    inc d                                         ; $6698: $14
    ld [bc], a                                    ; $6699: $02

jr_0da_669a:
    inc e                                         ; $669a: $1c
    add e                                         ; $669b: $83
    ld a, [de]                                    ; $669c: $1a
    ld e, $1a                                     ; $669d: $1e $1a
    ld [bc], a                                    ; $669f: $02
    ld e, $81                                     ; $66a0: $1e $81
    ld c, $02                                     ; $66a2: $0e $02
    inc e                                         ; $66a4: $1c
    add h                                         ; $66a5: $84
    ld e, $0e                                     ; $66a6: $1e $0e
    ld e, $0a                                     ; $66a8: $1e $0a
    ld [bc], a                                    ; $66aa: $02
    inc e                                         ; $66ab: $1c
    add d                                         ; $66ac: $82
    jr jr_0da_66b7                                ; $66ad: $18 $08

    ld [bc], a                                    ; $66af: $02
    inc e                                         ; $66b0: $1c
    sub e                                         ; $66b1: $93
    ld a, [bc]                                    ; $66b2: $0a
    ld e, $1a                                     ; $66b3: $1e $1a
    ld e, $1d                                     ; $66b5: $1e $1d

jr_0da_66b7:
    rra                                           ; $66b7: $1f
    add hl, de                                    ; $66b8: $19
    rra                                           ; $66b9: $1f
    dec e                                         ; $66ba: $1d
    rra                                           ; $66bb: $1f
    cp $8f                                        ; $66bc: $fe $8f
    ld a, [hl]                                    ; $66be: $7e
    ld d, c                                       ; $66bf: $51
    dec a                                         ; $66c0: $3d
    ccf                                           ; $66c1: $3f
    dec e                                         ; $66c2: $1d
    rra                                           ; $66c3: $1f
    dec sp                                        ; $66c4: $3b
    inc bc                                        ; $66c5: $03
    ccf                                           ; $66c6: $3f
    add d                                         ; $66c7: $82
    ld [de], a                                    ; $66c8: $12
    ld e, $02                                     ; $66c9: $1e $02
    inc c                                         ; $66cb: $0c
    stop                                          ; $66cc: $10 $00
    adc c                                         ; $66ce: $89
    ld a, a                                       ; $66cf: $7f
    ld a, c                                       ; $66d0: $79
    ld a, [hl]                                    ; $66d1: $7e
    ld a, d                                       ; $66d2: $7a
    inc a                                         ; $66d3: $3c
    ld a, h                                       ; $66d4: $7c
    jr c, jr_0da_674f                             ; $66d5: $38 $78

    ld d, h                                       ; $66d7: $54
    inc bc                                        ; $66d8: $03
    ld a, h                                       ; $66d9: $7c
    add d                                         ; $66da: $82
    ld c, b                                       ; $66db: $48
    ld a, b                                       ; $66dc: $78
    ld [bc], a                                    ; $66dd: $02
    jr nc, jr_0da_66f0                            ; $66de: $30 $10

    nop                                           ; $66e0: $00
    rst $38                                       ; $66e1: $ff
    dec c                                         ; $66e2: $0d
    inc b                                         ; $66e3: $04
    ld sp, hl                                     ; $66e4: $f9

jr_0da_66e5:
    rlca                                          ; $66e5: $07
    di                                            ; $66e6: $f3
    ld [bc], a                                    ; $66e7: $02
    db $eb                                        ; $66e8: $eb
    ld a, [$ffeb]                                 ; $66e9: $fa $eb $ff
    ei                                            ; $66ec: $fb
    ei                                            ; $66ed: $fb
    ei                                            ; $66ee: $fb
    rst $38                                       ; $66ef: $ff

jr_0da_66f0:
    ld [bc], a                                    ; $66f0: $02
    rrca                                          ; $66f1: $0f
    add h                                         ; $66f2: $84
    dec a                                         ; $66f3: $3d
    ccf                                           ; $66f4: $3f
    rst $28                                       ; $66f5: $ef
    rst $38                                       ; $66f6: $ff
    ld [bc], a                                    ; $66f7: $02
    ccf                                           ; $66f8: $3f
    adc [hl]                                      ; $66f9: $8e
    ld a, a                                       ; $66fa: $7f
    ld l, d                                       ; $66fb: $6a
    ccf                                           ; $66fc: $3f
    dec sp                                        ; $66fd: $3b
    ccf                                           ; $66fe: $3f
    inc h                                         ; $66ff: $24
    ccf                                           ; $6700: $3f
    inc h                                         ; $6701: $24
    ccf                                           ; $6702: $3f
    dec sp                                        ; $6703: $3b
    rra                                           ; $6704: $1f
    ld d, $1f                                     ; $6705: $16 $1f
    jr jr_0da_670b                                ; $6707: $18 $02

    ld a, a                                       ; $6709: $7f
    adc b                                         ; $670a: $88

jr_0da_670b:
    ld e, d                                       ; $670b: $5a
    ld a, a                                       ; $670c: $7f
    cp l                                          ; $670d: $bd
    rst $38                                       ; $670e: $ff
    sbc d                                         ; $670f: $9a
    rst $38                                       ; $6710: $ff
    sbc a                                         ; $6711: $9f
    db $fc                                        ; $6712: $fc
    ld [bc], a                                    ; $6713: $02
    ld [$1c02], sp                                ; $6714: $08 $02 $1c
    add e                                         ; $6717: $83
    ld a, [de]                                    ; $6718: $1a
    ld e, $16                                     ; $6719: $1e $16
    inc bc                                        ; $671b: $03
    ld e, $83                                     ; $671c: $1e $83
    inc e                                         ; $671e: $1c
    inc c                                         ; $671f: $0c
    ld d, $02                                     ; $6720: $16 $02
    ld e, $83                                     ; $6722: $1e $83
    ld [de], a                                    ; $6724: $12
    inc e                                         ; $6725: $1c
    inc c                                         ; $6726: $0c
    ld [bc], a                                    ; $6727: $02
    jr jr_0da_672c                                ; $6728: $18 $02

    inc e                                         ; $672a: $1c
    add c                                         ; $672b: $81

jr_0da_672c:
    ld a, [bc]                                    ; $672c: $0a
    inc bc                                        ; $672d: $03
    ld e, $8c                                     ; $672e: $1e $8c
    dec e                                         ; $6730: $1d
    rra                                           ; $6731: $1f
    dec e                                         ; $6732: $1d
    rra                                           ; $6733: $1f
    dec e                                         ; $6734: $1d
    rra                                           ; $6735: $1f
    db $fd                                        ; $6736: $fd
    sub a                                         ; $6737: $97
    db $fd                                        ; $6738: $fd
    sbc a                                         ; $6739: $9f
    halt                                          ; $673a: $76
    ld a, a                                       ; $673b: $7f
    ld [bc], a                                    ; $673c: $02
    ccf                                           ; $673d: $3f
    ld [bc], a                                    ; $673e: $02
    ld a, a                                       ; $673f: $7f
    add d                                         ; $6740: $82
    ld c, [hl]                                    ; $6741: $4e
    ld a, a                                       ; $6742: $7f
    ld [bc], a                                    ; $6743: $02
    dec sp                                        ; $6744: $3b
    ld [bc], a                                    ; $6745: $02
    inc bc                                        ; $6746: $03
    stop                                          ; $6747: $10 $00
    add d                                         ; $6749: $82
    rrca                                          ; $674a: $0f
    add hl, bc                                    ; $674b: $09
    ld [bc], a                                    ; $674c: $02
    ld c, $02                                     ; $674d: $0e $02

jr_0da_674f:
    inc c                                         ; $674f: $0c
    add c                                         ; $6750: $81
    ld b, $03                                     ; $6751: $06 $03
    ld c, $82                                     ; $6753: $0e $82
    ld b, $0e                                     ; $6755: $06 $0e
    ld [bc], a                                    ; $6757: $02
    inc c                                         ; $6758: $0c
    ld [bc], a                                    ; $6759: $02
    ld [$0010], sp                                ; $675a: $08 $10 $00
    rst $38                                       ; $675d: $ff
    dec c                                         ; $675e: $0d
    inc b                                         ; $675f: $04
    ld sp, hl                                     ; $6760: $f9
    rlca                                          ; $6761: $07
    di                                            ; $6762: $f3
    ld [bc], a                                    ; $6763: $02
    db $ec                                        ; $6764: $ec
    ld a, [$ffec]                                 ; $6765: $fa $ec $ff
    db $fc                                        ; $6768: $fc
    ld a, [$fffc]                                 ; $6769: $fa $fc $ff
    ld [bc], a                                    ; $676c: $02
    ld e, $84                                     ; $676d: $1e $84
    ld a, l                                       ; $676f: $7d
    ld a, a                                       ; $6770: $7f
    cpl                                           ; $6771: $2f
    ccf                                           ; $6772: $3f
    inc bc                                        ; $6773: $03
    ld a, a                                       ; $6774: $7f
    adc l                                         ; $6775: $8d
    ld l, d                                       ; $6776: $6a
    ccf                                           ; $6777: $3f
    dec sp                                        ; $6778: $3b
    ccf                                           ; $6779: $3f
    inc h                                         ; $677a: $24
    ld a, a                                       ; $677b: $7f
    ld h, h                                       ; $677c: $64
    ccf                                           ; $677d: $3f
    dec sp                                        ; $677e: $3b
    rra                                           ; $677f: $1f
    inc d                                         ; $6780: $14
    ccf                                           ; $6781: $3f
    jr c, jr_0da_6786                             ; $6782: $38 $02

    ld a, a                                       ; $6784: $7f
    adc b                                         ; $6785: $88

jr_0da_6786:
    ld e, b                                       ; $6786: $58
    ld a, a                                       ; $6787: $7f
    ld e, d                                       ; $6788: $5a
    ld a, a                                       ; $6789: $7f
    cp l                                          ; $678a: $bd
    rst $38                                       ; $678b: $ff
    sbc l                                         ; $678c: $9d
    rst $38                                       ; $678d: $ff
    ld [bc], a                                    ; $678e: $02
    ld [$1e02], sp                                ; $678f: $08 $02 $1e
    add c                                         ; $6792: $81
    ld a, [de]                                    ; $6793: $1a
    inc bc                                        ; $6794: $03
    ld e, $85                                     ; $6795: $1e $85
    inc e                                         ; $6797: $1c
    inc c                                         ; $6798: $0c
    inc e                                         ; $6799: $1c
    inc c                                         ; $679a: $0c
    ld d, $02                                     ; $679b: $16 $02
    ld e, $85                                     ; $679d: $1e $85
    ld [de], a                                    ; $679f: $12
    inc e                                         ; $67a0: $1c
    inc c                                         ; $67a1: $0c
    jr jr_0da_67ac                                ; $67a2: $18 $08

    ld [bc], a                                    ; $67a4: $02
    inc e                                         ; $67a5: $1c
    add c                                         ; $67a6: $81
    ld a, [bc]                                    ; $67a7: $0a
    inc bc                                        ; $67a8: $03
    ld e, $02                                     ; $67a9: $1e $02
    rra                                           ; $67ab: $1f

jr_0da_67ac:
    adc h                                         ; $67ac: $8c
    dec e                                         ; $67ad: $1d
    rra                                           ; $67ae: $1f
    dec e                                         ; $67af: $1d
    rra                                           ; $67b0: $1f
    cp [hl]                                       ; $67b1: $be
    pop de                                        ; $67b2: $d1
    cp $9f                                        ; $67b3: $fe $9f
    ld a, e                                       ; $67b5: $7b
    ld a, a                                       ; $67b6: $7f
    dec sp                                        ; $67b7: $3b
    ccf                                           ; $67b8: $3f
    inc b                                         ; $67b9: $04
    rra                                           ; $67ba: $1f
    ld [bc], a                                    ; $67bb: $02
    ld bc, $0012                                  ; $67bc: $01 $12 $00
    add d                                         ; $67bf: $82
    rra                                           ; $67c0: $1f
    dec e                                         ; $67c1: $1d
    ld [bc], a                                    ; $67c2: $02
    ld e, $84                                     ; $67c3: $1e $84
    inc c                                         ; $67c5: $0c
    inc e                                         ; $67c6: $1c
    inc c                                         ; $67c7: $0c
    inc e                                         ; $67c8: $1c
    ld [bc], a                                    ; $67c9: $02
    ld e, $82                                     ; $67ca: $1e $82
    ld b, $1e                                     ; $67cc: $06 $1e
    ld [bc], a                                    ; $67ce: $02
    inc e                                         ; $67cf: $1c
    ld [de], a                                    ; $67d0: $12
    nop                                           ; $67d1: $00
    rst $38                                       ; $67d2: $ff
    dec c                                         ; $67d3: $0d
    inc b                                         ; $67d4: $04
    ld sp, hl                                     ; $67d5: $f9
    rlca                                          ; $67d6: $07
    di                                            ; $67d7: $f3
    ld [bc], a                                    ; $67d8: $02
    db $ec                                        ; $67d9: $ec
    ld a, [$ffec]                                 ; $67da: $fa $ec $ff
    db $fc                                        ; $67dd: $fc
    ld sp, hl                                     ; $67de: $f9
    db $fc                                        ; $67df: $fc
    nop                                           ; $67e0: $00
    ld [bc], a                                    ; $67e1: $02
    rrca                                          ; $67e2: $0f
    add h                                         ; $67e3: $84
    dec a                                         ; $67e4: $3d
    ccf                                           ; $67e5: $3f
    rst $28                                       ; $67e6: $ef
    rst $38                                       ; $67e7: $ff
    ld [bc], a                                    ; $67e8: $02
    ccf                                           ; $67e9: $3f
    sbc b                                         ; $67ea: $98
    ld a, a                                       ; $67eb: $7f
    ld l, d                                       ; $67ec: $6a
    ccf                                           ; $67ed: $3f
    dec sp                                        ; $67ee: $3b
    ld a, a                                       ; $67ef: $7f
    ld h, h                                       ; $67f0: $64
    ld a, a                                       ; $67f1: $7f
    ld h, h                                       ; $67f2: $64
    ccf                                           ; $67f3: $3f
    dec sp                                        ; $67f4: $3b
    rra                                           ; $67f5: $1f
    inc d                                         ; $67f6: $14
    ccf                                           ; $67f7: $3f
    jr c, jr_0da_6859                             ; $67f8: $38 $5f

    ld a, a                                       ; $67fa: $7f
    ld e, d                                       ; $67fb: $5a
    ld a, a                                       ; $67fc: $7f
    db $dd                                        ; $67fd: $dd
    rst $38                                       ; $67fe: $ff
    cp d                                          ; $67ff: $ba
    rst $38                                       ; $6800: $ff
    cp l                                          ; $6801: $bd
    rst $38                                       ; $6802: $ff
    ld [bc], a                                    ; $6803: $02
    ld [$1c02], sp                                ; $6804: $08 $02 $1c
    add e                                         ; $6807: $83
    ld a, [de]                                    ; $6808: $1a
    ld e, $16                                     ; $6809: $1e $16
    inc bc                                        ; $680b: $03
    ld e, $83                                     ; $680c: $1e $83
    inc e                                         ; $680e: $1c
    inc c                                         ; $680f: $0c
    ld d, $02                                     ; $6810: $16 $02
    ld e, $83                                     ; $6812: $1e $83
    ld [de], a                                    ; $6814: $12
    inc e                                         ; $6815: $1c
    inc c                                         ; $6816: $0c
    ld [bc], a                                    ; $6817: $02
    jr jr_0da_681c                                ; $6818: $18 $02

    inc e                                         ; $681a: $1c
    sub b                                         ; $681b: $90

jr_0da_681c:
    ld a, [bc]                                    ; $681c: $0a
    ld e, $1a                                     ; $681d: $1e $1a
    ld e, $1b                                     ; $681f: $1e $1b
    rra                                           ; $6821: $1f
    dec e                                         ; $6822: $1d
    rra                                           ; $6823: $1f
    dec e                                         ; $6824: $1d
    rra                                           ; $6825: $1f
    cp $9f                                        ; $6826: $fe $9f
    ld a, [hl]                                    ; $6828: $7e
    ld c, a                                       ; $6829: $4f
    dec a                                         ; $682a: $3d
    scf                                           ; $682b: $37
    ld [bc], a                                    ; $682c: $02
    rra                                           ; $682d: $1f
    add d                                         ; $682e: $82
    dec de                                        ; $682f: $1b
    rra                                           ; $6830: $1f
    ld [bc], a                                    ; $6831: $02
    ld c, $14                                     ; $6832: $0e $14
    nop                                           ; $6834: $00
    adc b                                         ; $6835: $88
    ld a, a                                       ; $6836: $7f
    ld a, c                                       ; $6837: $79
    ld a, [hl]                                    ; $6838: $7e
    ld a, d                                       ; $6839: $7a
    inc a                                         ; $683a: $3c
    ld a, h                                       ; $683b: $7c
    ld e, b                                       ; $683c: $58
    ld a, b                                       ; $683d: $78
    ld [bc], a                                    ; $683e: $02
    ld a, h                                       ; $683f: $7c
    add d                                         ; $6840: $82
    ld c, b                                       ; $6841: $48
    ld a, b                                       ; $6842: $78
    ld [bc], a                                    ; $6843: $02
    ld [hl], b                                    ; $6844: $70
    ld [de], a                                    ; $6845: $12
    nop                                           ; $6846: $00
    rst $38                                       ; $6847: $ff
    dec c                                         ; $6848: $0d
    inc b                                         ; $6849: $04
    ld sp, hl                                     ; $684a: $f9
    rlca                                          ; $684b: $07
    di                                            ; $684c: $f3
    ld [bc], a                                    ; $684d: $02
    db $eb                                        ; $684e: $eb
    ld a, [$ffeb]                                 ; $684f: $fa $eb $ff
    ei                                            ; $6852: $fb
    ld a, [$fffb]                                 ; $6853: $fa $fb $ff
    ld [bc], a                                    ; $6856: $02
    rlca                                          ; $6857: $07
    add h                                         ; $6858: $84

jr_0da_6859:
    dec a                                         ; $6859: $3d
    ccf                                           ; $685a: $3f
    ld [hl], a                                    ; $685b: $77
    ld a, a                                       ; $685c: $7f
    ld [bc], a                                    ; $685d: $02
    ccf                                           ; $685e: $3f
    sbc b                                         ; $685f: $98
    ld a, a                                       ; $6860: $7f
    ld [hl], l                                    ; $6861: $75
    ccf                                           ; $6862: $3f
    dec a                                         ; $6863: $3d
    ld a, a                                       ; $6864: $7f
    ld [hl], d                                    ; $6865: $72
    ld a, a                                       ; $6866: $7f
    ld d, d                                       ; $6867: $52
    ccf                                           ; $6868: $3f
    dec a                                         ; $6869: $3d
    rra                                           ; $686a: $1f
    ld d, $3f                                     ; $686b: $16 $3f
    jr c, jr_0da_68c6                             ; $686d: $38 $57

    ld a, a                                       ; $686f: $7f
    ld e, d                                       ; $6870: $5a
    ld a, a                                       ; $6871: $7f
    cp l                                          ; $6872: $bd
    rst $38                                       ; $6873: $ff
    cp d                                          ; $6874: $ba
    rst $38                                       ; $6875: $ff
    cp l                                          ; $6876: $bd
    rst $38                                       ; $6877: $ff
    ld [bc], a                                    ; $6878: $02
    inc d                                         ; $6879: $14
    ld [bc], a                                    ; $687a: $02
    inc e                                         ; $687b: $1c
    add e                                         ; $687c: $83
    ld a, [de]                                    ; $687d: $1a
    ld e, $1a                                     ; $687e: $1e $1a
    ld [bc], a                                    ; $6880: $02
    ld e, $81                                     ; $6881: $1e $81
    ld c, $03                                     ; $6883: $0e $03
    inc e                                         ; $6885: $1c
    add e                                         ; $6886: $83
    inc c                                         ; $6887: $0c
    ld e, $0e                                     ; $6888: $1e $0e
    ld [bc], a                                    ; $688a: $02
    inc e                                         ; $688b: $1c
    add d                                         ; $688c: $82
    jr jr_0da_6897                                ; $688d: $18 $08

    ld [bc], a                                    ; $688f: $02
    inc e                                         ; $6890: $1c
    sub d                                         ; $6891: $92
    ld a, [de]                                    ; $6892: $1a
    ld e, $1a                                     ; $6893: $1e $1a
    ld e, $1d                                     ; $6895: $1e $1d

jr_0da_6897:
    rra                                           ; $6897: $1f
    add hl, de                                    ; $6898: $19
    rra                                           ; $6899: $1f
    dec e                                         ; $689a: $1d
    rra                                           ; $689b: $1f
    db $fd                                        ; $689c: $fd
    sbc a                                         ; $689d: $9f
    ld sp, hl                                     ; $689e: $f9
    cp a                                          ; $689f: $bf
    ld h, [hl]                                    ; $68a0: $66
    ld e, a                                       ; $68a1: $5f
    ld a, [hl]                                    ; $68a2: $7e
    ld e, a                                       ; $68a3: $5f
    ld [bc], a                                    ; $68a4: $02
    ccf                                           ; $68a5: $3f
    add d                                         ; $68a6: $82
    daa                                           ; $68a7: $27
    ccf                                           ; $68a8: $3f
    ld [bc], a                                    ; $68a9: $02
    dec e                                         ; $68aa: $1d
    ld [de], a                                    ; $68ab: $12
    nop                                           ; $68ac: $00
    add h                                         ; $68ad: $84
    rra                                           ; $68ae: $1f
    add hl, de                                    ; $68af: $19
    rra                                           ; $68b0: $1f
    add hl, de                                    ; $68b1: $19
    ld [bc], a                                    ; $68b2: $02
    ld e, $02                                     ; $68b3: $1e $02
    inc e                                         ; $68b5: $1c
    add c                                         ; $68b6: $81
    ld c, $03                                     ; $68b7: $0e $03
    ld e, $82                                     ; $68b9: $1e $82
    inc b                                         ; $68bb: $04
    inc e                                         ; $68bc: $1c
    ld [bc], a                                    ; $68bd: $02
    jr jr_0da_68d0                                ; $68be: $18 $10

    nop                                           ; $68c0: $00
    rst $38                                       ; $68c1: $ff
    dec c                                         ; $68c2: $0d
    inc b                                         ; $68c3: $04
    ld sp, hl                                     ; $68c4: $f9
    rlca                                          ; $68c5: $07

jr_0da_68c6:
    di                                            ; $68c6: $f3
    ld [bc], a                                    ; $68c7: $02
    db $eb                                        ; $68c8: $eb
    ld a, [$ffeb]                                 ; $68c9: $fa $eb $ff
    ei                                            ; $68cc: $fb
    ld a, [$fefb]                                 ; $68cd: $fa $fb $fe

jr_0da_68d0:
    ld [bc], a                                    ; $68d0: $02
    rrca                                          ; $68d1: $0f
    add l                                         ; $68d2: $85
    dec a                                         ; $68d3: $3d
    ccf                                           ; $68d4: $3f
    ld l, a                                       ; $68d5: $6f
    ld a, a                                       ; $68d6: $7f
    ld e, a                                       ; $68d7: $5f
    ld [bc], a                                    ; $68d8: $02
    ld a, a                                       ; $68d9: $7f
    sub a                                         ; $68da: $97
    ld a, l                                       ; $68db: $7d
    ld a, a                                       ; $68dc: $7f
    halt                                          ; $68dd: $76
    ld l, a                                       ; $68de: $6f
    ld a, c                                       ; $68df: $79
    ld a, a                                       ; $68e0: $7f
    ld c, c                                       ; $68e1: $49
    ccf                                           ; $68e2: $3f
    ld [hl], $1f                                  ; $68e3: $36 $1f
    dec de                                        ; $68e5: $1b
    ccf                                           ; $68e6: $3f
    jr c, jr_0da_6940                             ; $68e7: $38 $57

    ld a, a                                       ; $68e9: $7f
    ld a, d                                       ; $68ea: $7a
    ld a, a                                       ; $68eb: $7f
    cp l                                          ; $68ec: $bd
    rst $38                                       ; $68ed: $ff

jr_0da_68ee:
    cp d                                          ; $68ee: $ba
    rst $38                                       ; $68ef: $ff
    cp l                                          ; $68f0: $bd
    rst $38                                       ; $68f1: $ff
    ld [bc], a                                    ; $68f2: $02
    ld [$1802], sp                                ; $68f3: $08 $02 $18
    add d                                         ; $68f6: $82
    inc d                                         ; $68f7: $14
    inc e                                         ; $68f8: $1c
    inc bc                                        ; $68f9: $03
    ld e, $81                                     ; $68fa: $1e $81
    ld d, $03                                     ; $68fc: $16 $03
    inc e                                         ; $68fe: $1c
    add e                                         ; $68ff: $83
    inc b                                         ; $6900: $04
    inc e                                         ; $6901: $1c
    inc b                                         ; $6902: $04
    ld [bc], a                                    ; $6903: $02
    inc e                                         ; $6904: $1c
    add d                                         ; $6905: $82
    jr jr_0da_6910                                ; $6906: $18 $08

    ld [bc], a                                    ; $6908: $02
    jr jr_0da_690d                                ; $6909: $18 $02

    ld e, $8f                                     ; $690b: $1e $8f

jr_0da_690d:
    ld a, [de]                                    ; $690d: $1a
    ld e, $1d                                     ; $690e: $1e $1d

jr_0da_6910:
    rra                                           ; $6910: $1f
    add hl, de                                    ; $6911: $19
    rra                                           ; $6912: $1f
    add hl, de                                    ; $6913: $19
    rra                                           ; $6914: $1f
    ei                                            ; $6915: $fb
    sbc a                                         ; $6916: $9f
    ld a, e                                       ; $6917: $7b
    ld e, a                                       ; $6918: $5f
    halt                                          ; $6919: $76
    ld e, a                                       ; $691a: $5f
    ld l, a                                       ; $691b: $6f
    inc bc                                        ; $691c: $03
    ld a, a                                       ; $691d: $7f
    add d                                         ; $691e: $82
    ld h, a                                       ; $691f: $67
    ld a, a                                       ; $6920: $7f
    ld [bc], a                                    ; $6921: $02
    dec a                                         ; $6922: $3d
    ld [bc], a                                    ; $6923: $02
    inc e                                         ; $6924: $1c
    stop                                          ; $6925: $10 $00
    add h                                         ; $6927: $84
    rrca                                          ; $6928: $0f
    add hl, bc                                    ; $6929: $09
    rrca                                          ; $692a: $0f
    add hl, bc                                    ; $692b: $09
    ld [bc], a                                    ; $692c: $02
    ld c, $02                                     ; $692d: $0e $02
    inc c                                         ; $692f: $0c
    ld [bc], a                                    ; $6930: $02
    ld c, $82                                     ; $6931: $0e $82
    ld [bc], a                                    ; $6933: $02
    ld c, $02                                     ; $6934: $0e $02
    inc c                                         ; $6936: $0c
    ld [de], a                                    ; $6937: $12
    nop                                           ; $6938: $00
    rst $38                                       ; $6939: $ff
    dec c                                         ; $693a: $0d
    inc b                                         ; $693b: $04
    ld sp, hl                                     ; $693c: $f9
    rlca                                          ; $693d: $07
    di                                            ; $693e: $f3
    ld [bc], a                                    ; $693f: $02

jr_0da_6940:
    db $ec                                        ; $6940: $ec
    ld a, [$ffec]                                 ; $6941: $fa $ec $ff
    db $fc                                        ; $6944: $fc
    ld a, [$fffc]                                 ; $6945: $fa $fc $ff
    ld [bc], a                                    ; $6948: $02
    rlca                                          ; $6949: $07
    add e                                         ; $694a: $83
    ld a, l                                       ; $694b: $7d
    ld a, a                                       ; $694c: $7f
    ld l, a                                       ; $694d: $6f
    inc b                                         ; $694e: $04
    ld a, a                                       ; $694f: $7f
    sub a                                         ; $6950: $97
    ld [hl], l                                    ; $6951: $75
    ld a, a                                       ; $6952: $7f
    halt                                          ; $6953: $76
    ld l, a                                       ; $6954: $6f
    ld a, c                                       ; $6955: $79
    ld a, a                                       ; $6956: $7f
    ld c, c                                       ; $6957: $49
    ccf                                           ; $6958: $3f
    ld [hl], $1f                                  ; $6959: $36 $1f
    ld de, $383f                                  ; $695b: $11 $3f $38
    ld d, a                                       ; $695e: $57
    ld a, a                                       ; $695f: $7f
    ld a, b                                       ; $6960: $78
    ld a, a                                       ; $6961: $7f
    ld a, [$bdff]                                 ; $6962: $fa $ff $bd
    rst $38                                       ; $6965: $ff
    cp l                                          ; $6966: $bd
    rst $38                                       ; $6967: $ff
    ld [bc], a                                    ; $6968: $02
    inc d                                         ; $6969: $14
    ld [bc], a                                    ; $696a: $02
    jr jr_0da_68ee                                ; $696b: $18 $81

    ld d, $03                                     ; $696d: $16 $03
    ld e, $82                                     ; $696f: $1e $82
    inc e                                         ; $6971: $1c
    inc d                                         ; $6972: $14
    inc bc                                        ; $6973: $03
    inc e                                         ; $6974: $1c
    add e                                         ; $6975: $83
    inc b                                         ; $6976: $04
    ld e, $06                                     ; $6977: $1e $06
    ld [bc], a                                    ; $6979: $02
    inc e                                         ; $697a: $1c
    add d                                         ; $697b: $82
    jr jr_0da_6986                                ; $697c: $18 $08

    ld [bc], a                                    ; $697e: $02
    inc e                                         ; $697f: $1c
    ld [bc], a                                    ; $6980: $02
    ld e, $90                                     ; $6981: $1e $90
    ld a, [de]                                    ; $6983: $1a
    ld e, $1a                                     ; $6984: $1e $1a

jr_0da_6986:
    ld e, $1d                                     ; $6986: $1e $1d
    rra                                           ; $6988: $1f
    add hl, de                                    ; $6989: $19
    rra                                           ; $698a: $1f
    ei                                            ; $698b: $fb
    cp a                                          ; $698c: $bf
    ld a, e                                       ; $698d: $7b
    ld e, a                                       ; $698e: $5f
    ld [hl], $2f                                  ; $698f: $36 $2f
    ld [hl], $3f                                  ; $6991: $36 $3f
    ld [bc], a                                    ; $6993: $02
    ld a, a                                       ; $6994: $7f
    add d                                         ; $6995: $82
    ld h, a                                       ; $6996: $67
    ld a, a                                       ; $6997: $7f
    ld [bc], a                                    ; $6998: $02
    inc a                                         ; $6999: $3c
    ld [de], a                                    ; $699a: $12
    nop                                           ; $699b: $00
    add h                                         ; $699c: $84
    dec e                                         ; $699d: $1d
    dec de                                        ; $699e: $1b
    rra                                           ; $699f: $1f
    add hl, de                                    ; $69a0: $19
    ld [bc], a                                    ; $69a1: $02
    ld e, $02                                     ; $69a2: $1e $02
    inc e                                         ; $69a4: $1c
    inc b                                         ; $69a5: $04
    jr jr_0da_69bc                                ; $69a6: $18 $14

    nop                                           ; $69a8: $00
    rst $38                                       ; $69a9: $ff
    dec c                                         ; $69aa: $0d
    inc b                                         ; $69ab: $04
    ld sp, hl                                     ; $69ac: $f9
    rlca                                          ; $69ad: $07
    di                                            ; $69ae: $f3
    ld [bc], a                                    ; $69af: $02
    db $ec                                        ; $69b0: $ec
    ld a, [$ffec]                                 ; $69b1: $fa $ec $ff
    db $fc                                        ; $69b4: $fc
    ld sp, hl                                     ; $69b5: $f9
    db $fc                                        ; $69b6: $fc
    nop                                           ; $69b7: $00
    ld [bc], a                                    ; $69b8: $02
    rrca                                          ; $69b9: $0f
    add l                                         ; $69ba: $85
    dec a                                         ; $69bb: $3d

jr_0da_69bc:
    ccf                                           ; $69bc: $3f
    ld l, a                                       ; $69bd: $6f
    ld a, a                                       ; $69be: $7f
    ld e, a                                       ; $69bf: $5f
    ld [bc], a                                    ; $69c0: $02
    ld a, a                                       ; $69c1: $7f
    sub a                                         ; $69c2: $97
    ld a, l                                       ; $69c3: $7d
    ld a, a                                       ; $69c4: $7f
    halt                                          ; $69c5: $76
    ld l, a                                       ; $69c6: $6f
    ld a, c                                       ; $69c7: $79
    ld a, a                                       ; $69c8: $7f
    ld c, c                                       ; $69c9: $49
    ccf                                           ; $69ca: $3f
    ld [hl], $1f                                  ; $69cb: $36 $1f
    add hl, de                                    ; $69cd: $19
    ccf                                           ; $69ce: $3f
    jr c, @+$59                                   ; $69cf: $38 $57

    ld a, a                                       ; $69d1: $7f
    ld e, d                                       ; $69d2: $5a
    ld a, a                                       ; $69d3: $7f
    db $dd                                        ; $69d4: $dd
    rst $38                                       ; $69d5: $ff
    cp d                                          ; $69d6: $ba
    rst $38                                       ; $69d7: $ff
    cp l                                          ; $69d8: $bd
    rst $38                                       ; $69d9: $ff
    ld [bc], a                                    ; $69da: $02
    ld [$1802], sp                                ; $69db: $08 $02 $18
    add d                                         ; $69de: $82
    inc d                                         ; $69df: $14
    inc e                                         ; $69e0: $1c
    inc bc                                        ; $69e1: $03
    ld e, $81                                     ; $69e2: $1e $81
    ld d, $02                                     ; $69e4: $16 $02
    inc e                                         ; $69e6: $1c
    add h                                         ; $69e7: $84
    ld e, $06                                     ; $69e8: $1e $06
    ld e, $06                                     ; $69ea: $1e $06
    ld [bc], a                                    ; $69ec: $02
    inc e                                         ; $69ed: $1c
    add d                                         ; $69ee: $82
    jr jr_0da_69f9                                ; $69ef: $18 $08

    ld [bc], a                                    ; $69f1: $02
    inc e                                         ; $69f2: $1c
    sub d                                         ; $69f3: $92
    ld a, [de]                                    ; $69f4: $1a
    ld e, $1a                                     ; $69f5: $1e $1a
    ld e, $1b                                     ; $69f7: $1e $1b

jr_0da_69f9:
    rra                                           ; $69f9: $1f
    dec e                                         ; $69fa: $1d
    rra                                           ; $69fb: $1f
    dec e                                         ; $69fc: $1d
    rra                                           ; $69fd: $1f
    cp $8f                                        ; $69fe: $fe $8f
    ld a, [hl]                                    ; $6a00: $7e
    ld d, c                                       ; $6a01: $51
    dec a                                         ; $6a02: $3d
    ccf                                           ; $6a03: $3f
    dec de                                        ; $6a04: $1b
    rra                                           ; $6a05: $1f
    ld [bc], a                                    ; $6a06: $02
    ccf                                           ; $6a07: $3f
    add d                                         ; $6a08: $82
    ld [de], a                                    ; $6a09: $12
    ld e, $02                                     ; $6a0a: $1e $02
    ld c, $12                                     ; $6a0c: $0e $12
    nop                                           ; $6a0e: $00
    add [hl]                                      ; $6a0f: $86
    ld a, a                                       ; $6a10: $7f
    ld a, c                                       ; $6a11: $79
    ld a, [hl]                                    ; $6a12: $7e
    ld a, d                                       ; $6a13: $7a
    inc a                                         ; $6a14: $3c
    ld a, h                                       ; $6a15: $7c
    ld [bc], a                                    ; $6a16: $02
    ld a, b                                       ; $6a17: $78
    add d                                         ; $6a18: $82
    ld e, b                                       ; $6a19: $58
    ld a, b                                       ; $6a1a: $78
    ld [bc], a                                    ; $6a1b: $02
    ld [hl], b                                    ; $6a1c: $70
    inc d                                         ; $6a1d: $14
    nop                                           ; $6a1e: $00
    rst $38                                       ; $6a1f: $ff
    dec c                                         ; $6a20: $0d
    inc b                                         ; $6a21: $04
    ld sp, hl                                     ; $6a22: $f9
    rlca                                          ; $6a23: $07
    di                                            ; $6a24: $f3
    ld [bc], a                                    ; $6a25: $02
    db $eb                                        ; $6a26: $eb
    ld a, [$ffeb]                                 ; $6a27: $fa $eb $ff
    ei                                            ; $6a2a: $fb
    ld a, [$fffb]                                 ; $6a2b: $fa $fb $ff
    ld [bc], a                                    ; $6a2e: $02
    rlca                                          ; $6a2f: $07
    add h                                         ; $6a30: $84
    dec a                                         ; $6a31: $3d
    ccf                                           ; $6a32: $3f
    ld [hl], a                                    ; $6a33: $77
    ld a, a                                       ; $6a34: $7f
    ld [bc], a                                    ; $6a35: $02
    ccf                                           ; $6a36: $3f
    sbc b                                         ; $6a37: $98
    ld a, a                                       ; $6a38: $7f
    ld [hl], l                                    ; $6a39: $75
    ccf                                           ; $6a3a: $3f
    dec a                                         ; $6a3b: $3d
    ccf                                           ; $6a3c: $3f
    ld [hl-], a                                   ; $6a3d: $32
    ld a, a                                       ; $6a3e: $7f
    ld [hl], d                                    ; $6a3f: $72
    ccf                                           ; $6a40: $3f
    dec a                                         ; $6a41: $3d
    rra                                           ; $6a42: $1f
    inc de                                        ; $6a43: $13
    ccf                                           ; $6a44: $3f
    jr c, jr_0da_6aa6                             ; $6a45: $38 $5f

    ld a, a                                       ; $6a47: $7f
    ld e, d                                       ; $6a48: $5a
    ld a, a                                       ; $6a49: $7f
    cp l                                          ; $6a4a: $bd
    rst $38                                       ; $6a4b: $ff
    sbc d                                         ; $6a4c: $9a
    rst $38                                       ; $6a4d: $ff
    cp l                                          ; $6a4e: $bd
    rst $38                                       ; $6a4f: $ff
    ld [bc], a                                    ; $6a50: $02
    inc d                                         ; $6a51: $14
    ld [bc], a                                    ; $6a52: $02
    inc e                                         ; $6a53: $1c
    add e                                         ; $6a54: $83
    ld a, [de]                                    ; $6a55: $1a
    ld e, $1a                                     ; $6a56: $1e $1a
    ld [bc], a                                    ; $6a58: $02
    ld e, $81                                     ; $6a59: $1e $81
    ld c, $02                                     ; $6a5b: $0e $02
    inc e                                         ; $6a5d: $1c
    add h                                         ; $6a5e: $84
    ld e, $0e                                     ; $6a5f: $1e $0e
    ld e, $0a                                     ; $6a61: $1e $0a
    ld [bc], a                                    ; $6a63: $02
    inc e                                         ; $6a64: $1c
    add d                                         ; $6a65: $82
    jr jr_0da_6a70                                ; $6a66: $18 $08

    ld [bc], a                                    ; $6a68: $02
    inc e                                         ; $6a69: $1c
    sub e                                         ; $6a6a: $93
    ld a, [bc]                                    ; $6a6b: $0a
    ld e, $1a                                     ; $6a6c: $1e $1a
    ld e, $1d                                     ; $6a6e: $1e $1d

jr_0da_6a70:
    rra                                           ; $6a70: $1f
    dec e                                         ; $6a71: $1d
    rra                                           ; $6a72: $1f
    dec e                                         ; $6a73: $1d
    rra                                           ; $6a74: $1f
    rst $38                                       ; $6a75: $ff
    sub c                                         ; $6a76: $91
    db $fc                                        ; $6a77: $fc
    sbc a                                         ; $6a78: $9f
    ld a, e                                       ; $6a79: $7b
    ld a, a                                       ; $6a7a: $7f
    dec sp                                        ; $6a7b: $3b
    ccf                                           ; $6a7c: $3f
    ld [hl], a                                    ; $6a7d: $77
    inc bc                                        ; $6a7e: $03
    ld a, a                                       ; $6a7f: $7f
    add d                                         ; $6a80: $82
    dec h                                         ; $6a81: $25
    dec a                                         ; $6a82: $3d
    ld [bc], a                                    ; $6a83: $02
    jr jr_0da_6a96                                ; $6a84: $18 $10

    nop                                           ; $6a86: $00
    add [hl]                                      ; $6a87: $86
    rra                                           ; $6a88: $1f
    add hl, de                                    ; $6a89: $19
    rra                                           ; $6a8a: $1f
    dec e                                         ; $6a8b: $1d
    ld b, $1e                                     ; $6a8c: $06 $1e
    inc b                                         ; $6a8e: $04
    inc e                                         ; $6a8f: $1c
    add d                                         ; $6a90: $82
    inc b                                         ; $6a91: $04
    inc e                                         ; $6a92: $1c
    ld [bc], a                                    ; $6a93: $02
    jr jr_0da_6aa8                                ; $6a94: $18 $12

jr_0da_6a96:
    nop                                           ; $6a96: $00
    rst $38                                       ; $6a97: $ff
    dec c                                         ; $6a98: $0d
    inc b                                         ; $6a99: $04
    ld sp, hl                                     ; $6a9a: $f9
    rlca                                          ; $6a9b: $07
    di                                            ; $6a9c: $f3
    ld [bc], a                                    ; $6a9d: $02
    db $eb                                        ; $6a9e: $eb
    ei                                            ; $6a9f: $fb
    db $ec                                        ; $6aa0: $ec
    cp $fb                                        ; $6aa1: $fe $fb
    ld a, [$fcfb]                                 ; $6aa3: $fa $fb $fc

jr_0da_6aa6:
    ld [bc], a                                    ; $6aa6: $02
    add hl, de                                    ; $6aa7: $19

jr_0da_6aa8:
    sbc [hl]                                      ; $6aa8: $9e
    rla                                           ; $6aa9: $17
    rra                                           ; $6aaa: $1f
    ld a, [hl]                                    ; $6aab: $7e
    ld a, a                                       ; $6aac: $7f
    ld e, a                                       ; $6aad: $5f
    ld a, a                                       ; $6aae: $7f
    rst $28                                       ; $6aaf: $ef
    cp $ff                                        ; $6ab0: $fe $ff
    ld sp, hl                                     ; $6ab2: $f9
    ld a, e                                       ; $6ab3: $7b
    ld a, [hl]                                    ; $6ab4: $7e
    ld a, a                                       ; $6ab5: $7f
    ld [hl], d                                    ; $6ab6: $72
    ccf                                           ; $6ab7: $3f
    dec hl                                        ; $6ab8: $2b
    rra                                           ; $6ab9: $1f
    db $10                                        ; $6aba: $10
    ccf                                           ; $6abb: $3f
    add hl, sp                                    ; $6abc: $39
    ld d, [hl]                                    ; $6abd: $56
    ld a, [hl]                                    ; $6abe: $7e
    xor e                                         ; $6abf: $ab
    rst $38                                       ; $6ac0: $ff
    ld l, l                                       ; $6ac1: $6d
    ld a, a                                       ; $6ac2: $7f
    dec hl                                        ; $6ac3: $2b
    ccf                                           ; $6ac4: $3f
    ld c, l                                       ; $6ac5: $4d
    ld a, a                                       ; $6ac6: $7f
    ld [bc], a                                    ; $6ac7: $02
    inc b                                         ; $6ac8: $04
    add d                                         ; $6ac9: $82
    inc bc                                        ; $6aca: $03
    rlca                                          ; $6acb: $07
    ld [bc], a                                    ; $6acc: $02
    ld b, $02                                     ; $6acd: $06 $02
    inc b                                         ; $6acf: $04
    add d                                         ; $6ad0: $82
    ld b, $02                                     ; $6ad1: $06 $02
    ld [bc], a                                    ; $6ad3: $02
    inc b                                         ; $6ad4: $04
    inc bc                                        ; $6ad5: $03
    ld b, $81                                     ; $6ad6: $06 $81
    ld [bc], a                                    ; $6ad8: $02
    ld [bc], a                                    ; $6ad9: $02
    inc b                                         ; $6ada: $04
    inc c                                         ; $6adb: $0c
    nop                                           ; $6adc: $00
    sub b                                         ; $6add: $90
    ld l, b                                       ; $6ade: $68
    ld hl, sp+$20                                 ; $6adf: $f8 $20
    jr nc, jr_0da_6b22                            ; $6ae1: $30 $3f

    inc sp                                        ; $6ae3: $33
    ld a, a                                       ; $6ae4: $7f
    ld l, d                                       ; $6ae5: $6a
    ld a, l                                       ; $6ae6: $7d
    ld a, a                                       ; $6ae7: $7f
    ei                                            ; $6ae8: $fb
    rst $38                                       ; $6ae9: $ff
    cp a                                          ; $6aea: $bf
    rst $38                                       ; $6aeb: $ff
    ld e, b                                       ; $6aec: $58
    ld a, a                                       ; $6aed: $7f
    ld [bc], a                                    ; $6aee: $02
    ccf                                           ; $6aef: $3f
    ld [de], a                                    ; $6af0: $12
    nop                                           ; $6af1: $00
    ld [bc], a                                    ; $6af2: $02
    ld [bc], a                                    ; $6af3: $02
    add d                                         ; $6af4: $82
    inc bc                                        ; $6af5: $03
    ld bc, $0206                                  ; $6af6: $01 $06 $02
    ld [bc], a                                    ; $6af9: $02
    inc bc                                        ; $6afa: $03
    ld [bc], a                                    ; $6afb: $02
    ld [bc], a                                    ; $6afc: $02
    stop                                          ; $6afd: $10 $00
    rst $38                                       ; $6aff: $ff
    dec c                                         ; $6b00: $0d
    inc b                                         ; $6b01: $04
    ld sp, hl                                     ; $6b02: $f9
    rlca                                          ; $6b03: $07
    di                                            ; $6b04: $f3
    ld [bc], a                                    ; $6b05: $02
    db $eb                                        ; $6b06: $eb
    ei                                            ; $6b07: $fb
    db $ec                                        ; $6b08: $ec
    cp $fb                                        ; $6b09: $fe $fb
    ld a, [$fefb]                                 ; $6b0b: $fa $fb $fe
    ld [bc], a                                    ; $6b0e: $02
    add hl, de                                    ; $6b0f: $19
    sbc [hl]                                      ; $6b10: $9e
    rla                                           ; $6b11: $17
    rra                                           ; $6b12: $1f
    ld a, [hl]                                    ; $6b13: $7e
    ld a, a                                       ; $6b14: $7f
    ld e, a                                       ; $6b15: $5f
    ld a, a                                       ; $6b16: $7f
    rst $18                                       ; $6b17: $df
    db $fc                                        ; $6b18: $fc
    rst $38                                       ; $6b19: $ff
    ei                                            ; $6b1a: $fb
    ld [hl], a                                    ; $6b1b: $77
    ld a, l                                       ; $6b1c: $7d
    ld a, a                                       ; $6b1d: $7f
    ld [hl], l                                    ; $6b1e: $75
    ccf                                           ; $6b1f: $3f
    dec hl                                        ; $6b20: $2b
    ccf                                           ; $6b21: $3f

jr_0da_6b22:
    jr nc, jr_0da_6b63                            ; $6b22: $30 $3f

    add hl, sp                                    ; $6b24: $39
    ld d, [hl]                                    ; $6b25: $56
    ld a, [hl]                                    ; $6b26: $7e
    xor d                                         ; $6b27: $aa
    cp $6d                                        ; $6b28: $fe $6d
    ld a, a                                       ; $6b2a: $7f
    ld l, a                                       ; $6b2b: $6f
    ld a, a                                       ; $6b2c: $7f
    ld h, l                                       ; $6b2d: $65
    ld a, a                                       ; $6b2e: $7f
    ld [bc], a                                    ; $6b2f: $02
    inc b                                         ; $6b30: $04
    add d                                         ; $6b31: $82
    inc bc                                        ; $6b32: $03
    rlca                                          ; $6b33: $07
    ld [bc], a                                    ; $6b34: $02
    ld b, $02                                     ; $6b35: $06 $02
    inc b                                         ; $6b37: $04
    add d                                         ; $6b38: $82
    ld b, $02                                     ; $6b39: $06 $02
    dec b                                         ; $6b3b: $05
    ld b, $81                                     ; $6b3c: $06 $81
    ld [bc], a                                    ; $6b3e: $02
    ld [bc], a                                    ; $6b3f: $02
    inc b                                         ; $6b40: $04
    ld [$0200], sp                                ; $6b41: $08 $00 $02
    ld [bc], a                                    ; $6b44: $02
    add h                                         ; $6b45: $84
    rlca                                          ; $6b46: $07
    dec b                                         ; $6b47: $05
    sbc [hl]                                      ; $6b48: $9e
    ld a, [$3002]                                 ; $6b49: $fa $02 $30
    add d                                         ; $6b4c: $82
    dec a                                         ; $6b4d: $3d
    ld a, $02                                     ; $6b4e: $3e $02
    ccf                                           ; $6b50: $3f
    adc b                                         ; $6b51: $88
    ld a, e                                       ; $6b52: $7b
    ld a, [hl]                                    ; $6b53: $7e
    ld [hl], a                                    ; $6b54: $77
    ld a, a                                       ; $6b55: $7f
    xor a                                         ; $6b56: $af
    rst $38                                       ; $6b57: $ff
    db $f4                                        ; $6b58: $f4
    db $fc                                        ; $6b59: $fc
    ld [bc], a                                    ; $6b5a: $02
    ld a, [hl]                                    ; $6b5b: $7e
    ld [de], a                                    ; $6b5c: $12
    nop                                           ; $6b5d: $00
    add h                                         ; $6b5e: $84
    inc c                                         ; $6b5f: $0c
    inc b                                         ; $6b60: $04
    ld c, $06                                     ; $6b61: $0e $06

jr_0da_6b63:
    ld [bc], a                                    ; $6b63: $02
    rrca                                          ; $6b64: $0f
    add h                                         ; $6b65: $84
    add hl, bc                                    ; $6b66: $09
    rrca                                          ; $6b67: $0f
    ld b, $0e                                     ; $6b68: $06 $0e
    ld [bc], a                                    ; $6b6a: $02
    ld [$0012], sp                                ; $6b6b: $08 $12 $00
    rst $38                                       ; $6b6e: $ff
    dec c                                         ; $6b6f: $0d
    inc b                                         ; $6b70: $04
    ld sp, hl                                     ; $6b71: $f9
    rlca                                          ; $6b72: $07
    di                                            ; $6b73: $f3
    ld [bc], a                                    ; $6b74: $02
    db $ec                                        ; $6b75: $ec
    ei                                            ; $6b76: $fb
    db $ec                                        ; $6b77: $ec
    cp $fc                                        ; $6b78: $fe $fc
    ei                                            ; $6b7a: $fb
    db $fc                                        ; $6b7b: $fc
    cp $02                                        ; $6b7c: $fe $02
    inc e                                         ; $6b7e: $1c
    sbc [hl]                                      ; $6b7f: $9e
    scf                                           ; $6b80: $37
    ccf                                           ; $6b81: $3f
    ld a, [hl]                                    ; $6b82: $7e
    ld a, a                                       ; $6b83: $7f
    rst $18                                       ; $6b84: $df
    rst $38                                       ; $6b85: $ff
    rst $18                                       ; $6b86: $df
    db $fc                                        ; $6b87: $fc
    ld a, a                                       ; $6b88: $7f
    ld [hl], e                                    ; $6b89: $73
    ld [hl], a                                    ; $6b8a: $77
    ld a, l                                       ; $6b8b: $7d
    ld a, a                                       ; $6b8c: $7f
    ld [hl], l                                    ; $6b8d: $75
    ccf                                           ; $6b8e: $3f
    ld a, [hl+]                                   ; $6b8f: $2a
    ccf                                           ; $6b90: $3f
    ld sp, $f9ff                                  ; $6b91: $31 $ff $f9
    sub [hl]                                      ; $6b94: $96
    cp $69                                        ; $6b95: $fe $69
    ld a, a                                       ; $6b97: $7f
    dec hl                                        ; $6b98: $2b
    ccf                                           ; $6b99: $3f
    ld l, l                                       ; $6b9a: $6d
    ld a, a                                       ; $6b9b: $7f
    ld h, l                                       ; $6b9c: $65
    ld a, a                                       ; $6b9d: $7f
    ld [bc], a                                    ; $6b9e: $02
    inc b                                         ; $6b9f: $04
    add d                                         ; $6ba0: $82
    inc bc                                        ; $6ba1: $03
    rlca                                          ; $6ba2: $07
    inc b                                         ; $6ba3: $04
    ld b, $02                                     ; $6ba4: $06 $02
    inc b                                         ; $6ba6: $04
    add d                                         ; $6ba7: $82
    ld b, $02                                     ; $6ba8: $06 $02
    dec b                                         ; $6baa: $05
    ld b, $81                                     ; $6bab: $06 $81
    ld [bc], a                                    ; $6bad: $02
    ld [bc], a                                    ; $6bae: $02
    inc b                                         ; $6baf: $04
    ld a, [bc]                                    ; $6bb0: $0a
    nop                                           ; $6bb1: $00
    ld [bc], a                                    ; $6bb2: $02
    inc b                                         ; $6bb3: $04
    adc h                                         ; $6bb4: $8c
    ld [hl], e                                    ; $6bb5: $73
    ld a, [hl]                                    ; $6bb6: $7e
    ld [hl], a                                    ; $6bb7: $77
    ld a, c                                       ; $6bb8: $79
    ld a, a                                       ; $6bb9: $7f
    ld [hl], l                                    ; $6bba: $75
    or a                                          ; $6bbb: $b7
    rst $38                                       ; $6bbc: $ff
    cp [hl]                                       ; $6bbd: $be
    rst $38                                       ; $6bbe: $ff
    rst $28                                       ; $6bbf: $ef
    rst $38                                       ; $6bc0: $ff
    ld [bc], a                                    ; $6bc1: $02
    ld a, b                                       ; $6bc2: $78
    ld [de], a                                    ; $6bc3: $12
    nop                                           ; $6bc4: $00
    add d                                         ; $6bc5: $82
    ld b, $02                                     ; $6bc6: $06 $02
    inc b                                         ; $6bc8: $04
    inc b                                         ; $6bc9: $04
    ld [bc], a                                    ; $6bca: $02
    ld b, $82                                     ; $6bcb: $06 $82
    ld bc, $0207                                  ; $6bcd: $01 $07 $02
    ld b, $14                                     ; $6bd0: $06 $14
    nop                                           ; $6bd2: $00
    rst $38                                       ; $6bd3: $ff
    dec c                                         ; $6bd4: $0d
    inc b                                         ; $6bd5: $04
    ld sp, hl                                     ; $6bd6: $f9
    rlca                                          ; $6bd7: $07
    di                                            ; $6bd8: $f3
    ld [bc], a                                    ; $6bd9: $02
    db $ec                                        ; $6bda: $ec
    ei                                            ; $6bdb: $fb
    db $ed                                        ; $6bdc: $ed
    cp $fc                                        ; $6bdd: $fe $fc
    ei                                            ; $6bdf: $fb
    db $fc                                        ; $6be0: $fc
    db $fd                                        ; $6be1: $fd
    ld [bc], a                                    ; $6be2: $02
    add hl, de                                    ; $6be3: $19
    sbc [hl]                                      ; $6be4: $9e
    rla                                           ; $6be5: $17
    rra                                           ; $6be6: $1f
    ld a, [hl]                                    ; $6be7: $7e
    ld a, a                                       ; $6be8: $7f
    ld e, a                                       ; $6be9: $5f
    ld a, a                                       ; $6bea: $7f
    rst $18                                       ; $6beb: $df
    db $fc                                        ; $6bec: $fc
    rst $38                                       ; $6bed: $ff
    ei                                            ; $6bee: $fb
    ld a, e                                       ; $6bef: $7b
    ld a, [hl]                                    ; $6bf0: $7e
    ld a, a                                       ; $6bf1: $7f
    ld [hl], d                                    ; $6bf2: $72
    ccf                                           ; $6bf3: $3f
    dec hl                                        ; $6bf4: $2b
    ccf                                           ; $6bf5: $3f
    jr nc, jr_0da_6c37                            ; $6bf6: $30 $3f

    add hl, sp                                    ; $6bf8: $39
    ld d, [hl]                                    ; $6bf9: $56
    ld a, [hl]                                    ; $6bfa: $7e
    xor e                                         ; $6bfb: $ab
    rst $38                                       ; $6bfc: $ff
    ld l, l                                       ; $6bfd: $6d
    ld a, a                                       ; $6bfe: $7f
    ld e, e                                       ; $6bff: $5b
    ld a, a                                       ; $6c00: $7f
    ld c, l                                       ; $6c01: $4d
    ld a, a                                       ; $6c02: $7f
    ld [bc], a                                    ; $6c03: $02
    inc b                                         ; $6c04: $04
    add d                                         ; $6c05: $82
    inc bc                                        ; $6c06: $03
    rlca                                          ; $6c07: $07
    ld [bc], a                                    ; $6c08: $02
    ld b, $02                                     ; $6c09: $06 $02
    inc b                                         ; $6c0b: $04
    add d                                         ; $6c0c: $82
    ld b, $02                                     ; $6c0d: $06 $02
    dec b                                         ; $6c0f: $05
    ld b, $81                                     ; $6c10: $06 $81
    ld [bc], a                                    ; $6c12: $02
    ld [bc], a                                    ; $6c13: $02
    inc b                                         ; $6c14: $04
    inc c                                         ; $6c15: $0c
    nop                                           ; $6c16: $00
    add d                                         ; $6c17: $82
    ld l, b                                       ; $6c18: $68
    ld hl, sp+$02                                 ; $6c19: $f8 $02
    ld h, b                                       ; $6c1b: $60
    adc d                                         ; $6c1c: $8a
    ld a, a                                       ; $6c1d: $7f
    ld h, h                                       ; $6c1e: $64
    ld a, l                                       ; $6c1f: $7d
    ld d, a                                       ; $6c20: $57
    db $db                                        ; $6c21: $db
    rst $38                                       ; $6c22: $ff
    cp $ff                                        ; $6c23: $fe $ff
    or e                                          ; $6c25: $b3
    rst $38                                       ; $6c26: $ff
    ld [bc], a                                    ; $6c27: $02
    ld a, [hl]                                    ; $6c28: $7e
    inc d                                         ; $6c29: $14
    nop                                           ; $6c2a: $00
    ld [$0202], sp                                ; $6c2b: $08 $02 $02
    inc bc                                        ; $6c2e: $03
    inc d                                         ; $6c2f: $14
    nop                                           ; $6c30: $00
    rst $38                                       ; $6c31: $ff
    dec c                                         ; $6c32: $0d
    inc b                                         ; $6c33: $04
    ld sp, hl                                     ; $6c34: $f9
    rlca                                          ; $6c35: $07
    di                                            ; $6c36: $f3

jr_0da_6c37:
    ld [bc], a                                    ; $6c37: $02
    db $eb                                        ; $6c38: $eb
    ei                                            ; $6c39: $fb
    db $ec                                        ; $6c3a: $ec
    cp $fb                                        ; $6c3b: $fe $fb
    ld a, [$fdfb]                                 ; $6c3d: $fa $fb $fd
    ld [bc], a                                    ; $6c40: $02
    add hl, de                                    ; $6c41: $19
    sbc [hl]                                      ; $6c42: $9e
    rla                                           ; $6c43: $17
    rra                                           ; $6c44: $1f
    ld a, [hl]                                    ; $6c45: $7e
    ld a, a                                       ; $6c46: $7f
    ld e, a                                       ; $6c47: $5f
    ld a, a                                       ; $6c48: $7f
    rst $28                                       ; $6c49: $ef
    cp $ff                                        ; $6c4a: $fe $ff
    db $fd                                        ; $6c4c: $fd
    ld a, e                                       ; $6c4d: $7b
    ld a, [hl]                                    ; $6c4e: $7e
    ld a, a                                       ; $6c4f: $7f
    ld [hl], d                                    ; $6c50: $72
    ccf                                           ; $6c51: $3f
    add hl, hl                                    ; $6c52: $29
    ccf                                           ; $6c53: $3f
    jr nc, jr_0da_6c95                            ; $6c54: $30 $3f

    add hl, sp                                    ; $6c56: $39
    ld d, [hl]                                    ; $6c57: $56
    ld a, [hl]                                    ; $6c58: $7e
    xor d                                         ; $6c59: $aa
    cp $ad                                        ; $6c5a: $fe $ad
    rst $38                                       ; $6c5c: $ff
    ld e, e                                       ; $6c5d: $5b
    ld a, a                                       ; $6c5e: $7f
    ld e, l                                       ; $6c5f: $5d
    ld a, a                                       ; $6c60: $7f
    ld [bc], a                                    ; $6c61: $02
    inc b                                         ; $6c62: $04
    add d                                         ; $6c63: $82
    inc bc                                        ; $6c64: $03
    rlca                                          ; $6c65: $07
    ld [bc], a                                    ; $6c66: $02
    ld b, $02                                     ; $6c67: $06 $02
    inc b                                         ; $6c69: $04
    add d                                         ; $6c6a: $82
    ld b, $02                                     ; $6c6b: $06 $02
    ld [bc], a                                    ; $6c6d: $02
    inc b                                         ; $6c6e: $04
    inc bc                                        ; $6c6f: $03
    ld b, $81                                     ; $6c70: $06 $81
    ld [bc], a                                    ; $6c72: $02
    ld [bc], a                                    ; $6c73: $02
    inc b                                         ; $6c74: $04
    inc c                                         ; $6c75: $0c
    nop                                           ; $6c76: $00
    adc d                                         ; $6c77: $8a
    ld l, b                                       ; $6c78: $68
    ld hl, sp+$20                                 ; $6c79: $f8 $20
    jr nc, jr_0da_6cbc                            ; $6c7b: $30 $3f

    daa                                           ; $6c7d: $27
    ld a, a                                       ; $6c7e: $7f
    ld d, h                                       ; $6c7f: $54
    ld a, [hl]                                    ; $6c80: $7e
    ld a, a                                       ; $6c81: $7f
    ld [bc], a                                    ; $6c82: $02
    rst $38                                       ; $6c83: $ff
    add h                                         ; $6c84: $84
    cp h                                          ; $6c85: $bc
    rst $38                                       ; $6c86: $ff
    ld e, a                                       ; $6c87: $5f
    ld a, a                                       ; $6c88: $7f
    ld [bc], a                                    ; $6c89: $02
    jr c, jr_0da_6c9e                             ; $6c8a: $38 $12

    nop                                           ; $6c8c: $00
    add h                                         ; $6c8d: $84
    ld [bc], a                                    ; $6c8e: $02
    ld b, $02                                     ; $6c8f: $06 $02
    ld b, $02                                     ; $6c91: $06 $02
    inc b                                         ; $6c93: $04
    ld [bc], a                                    ; $6c94: $02

jr_0da_6c95:
    ld b, $82                                     ; $6c95: $06 $82
    inc bc                                        ; $6c97: $03
    rlca                                          ; $6c98: $07
    ld [bc], a                                    ; $6c99: $02
    ld b, $12                                     ; $6c9a: $06 $12
    nop                                           ; $6c9c: $00
    rst $38                                       ; $6c9d: $ff

jr_0da_6c9e:
    dec c                                         ; $6c9e: $0d
    inc b                                         ; $6c9f: $04
    ld sp, hl                                     ; $6ca0: $f9
    rlca                                          ; $6ca1: $07
    di                                            ; $6ca2: $f3
    ld [bc], a                                    ; $6ca3: $02
    db $eb                                        ; $6ca4: $eb
    ei                                            ; $6ca5: $fb
    db $ec                                        ; $6ca6: $ec
    cp $fb                                        ; $6ca7: $fe $fb
    ld a, [$fffb]                                 ; $6ca9: $fa $fb $ff
    ld [bc], a                                    ; $6cac: $02
    ld [de], a                                    ; $6cad: $12
    add d                                         ; $6cae: $82
    cpl                                           ; $6caf: $2f
    ccf                                           ; $6cb0: $3f
    ld [bc], a                                    ; $6cb1: $02
    rst $38                                       ; $6cb2: $ff
    sbc d                                         ; $6cb3: $9a
    ld c, a                                       ; $6cb4: $4f
    ld a, a                                       ; $6cb5: $7f
    ld [hl], a                                    ; $6cb6: $77
    ld a, [hl]                                    ; $6cb7: $7e
    rst $38                                       ; $6cb8: $ff
    db $fd                                        ; $6cb9: $fd
    ld sp, hl                                     ; $6cba: $f9
    rst $38                                       ; $6cbb: $ff

jr_0da_6cbc:
    ld a, a                                       ; $6cbc: $7f
    ld a, c                                       ; $6cbd: $79
    ccf                                           ; $6cbe: $3f
    dec h                                         ; $6cbf: $25
    ccf                                           ; $6cc0: $3f
    jr c, jr_0da_6d02                             ; $6cc1: $38 $3f

    add hl, sp                                    ; $6cc3: $39
    ld d, [hl]                                    ; $6cc4: $56
    ld a, [hl]                                    ; $6cc5: $7e
    xor d                                         ; $6cc6: $aa
    cp $5d                                        ; $6cc7: $fe $5d
    ld a, a                                       ; $6cc9: $7f
    sbc e                                         ; $6cca: $9b
    rst $38                                       ; $6ccb: $ff
    cp l                                          ; $6ccc: $bd
    rst $38                                       ; $6ccd: $ff
    ld [bc], a                                    ; $6cce: $02
    inc b                                         ; $6ccf: $04
    add d                                         ; $6cd0: $82
    inc bc                                        ; $6cd1: $03
    rlca                                          ; $6cd2: $07
    ld [bc], a                                    ; $6cd3: $02
    ld b, $02                                     ; $6cd4: $06 $02
    inc b                                         ; $6cd6: $04
    add d                                         ; $6cd7: $82
    ld b, $02                                     ; $6cd8: $06 $02
    inc b                                         ; $6cda: $04
    inc b                                         ; $6cdb: $04
    add d                                         ; $6cdc: $82
    ld b, $02                                     ; $6cdd: $06 $02
    ld [bc], a                                    ; $6cdf: $02
    inc b                                         ; $6ce0: $04
    inc c                                         ; $6ce1: $0c
    nop                                           ; $6ce2: $00
    sub b                                         ; $6ce3: $90
    db $ec                                        ; $6ce4: $ec
    db $fc                                        ; $6ce5: $fc
    sub b                                         ; $6ce6: $90
    ldh a, [$fe]                                  ; $6ce7: $f0 $fe
    rst $08                                       ; $6ce9: $cf
    ld a, [hl]                                    ; $6cea: $7e
    ld d, a                                       ; $6ceb: $57
    rst $38                                       ; $6cec: $ff
    ld sp, hl                                     ; $6ced: $f9
    cp l                                          ; $6cee: $bd
    rst $38                                       ; $6cef: $ff
    cp a                                          ; $6cf0: $bf
    rst $38                                       ; $6cf1: $ff
    ld e, a                                       ; $6cf2: $5f
    ld a, a                                       ; $6cf3: $7f
    ld [bc], a                                    ; $6cf4: $02
    dec a                                         ; $6cf5: $3d
    ld [de], a                                    ; $6cf6: $12
    nop                                           ; $6cf7: $00
    ld [bc], a                                    ; $6cf8: $02
    jr jr_0da_6cfd                                ; $6cf9: $18 $02

    db $10                                        ; $6cfb: $10
    ld [bc], a                                    ; $6cfc: $02

jr_0da_6cfd:
    jr jr_0da_6d01                                ; $6cfd: $18 $02

    rra                                           ; $6cff: $1f
    add h                                         ; $6d00: $84

jr_0da_6d01:
    add hl, de                                    ; $6d01: $19

jr_0da_6d02:
    rra                                           ; $6d02: $1f
    ld d, $1e                                     ; $6d03: $16 $1e
    ld [bc], a                                    ; $6d05: $02
    jr jr_0da_6d18                                ; $6d06: $18 $10

    nop                                           ; $6d08: $00
    rst $38                                       ; $6d09: $ff
    dec c                                         ; $6d0a: $0d
    inc b                                         ; $6d0b: $04
    ld sp, hl                                     ; $6d0c: $f9
    rlca                                          ; $6d0d: $07
    di                                            ; $6d0e: $f3
    ld [bc], a                                    ; $6d0f: $02
    db $ec                                        ; $6d10: $ec
    ei                                            ; $6d11: $fb
    db $ed                                        ; $6d12: $ed
    cp $fc                                        ; $6d13: $fe $fc
    ld a, [$fffc]                                 ; $6d15: $fa $fc $ff

jr_0da_6d18:
    ld [bc], a                                    ; $6d18: $02
    add hl, de                                    ; $6d19: $19
    add d                                         ; $6d1a: $82
    cpl                                           ; $6d1b: $2f
    ccf                                           ; $6d1c: $3f
    ld [bc], a                                    ; $6d1d: $02
    rst $38                                       ; $6d1e: $ff
    add a                                         ; $6d1f: $87
    ld c, a                                       ; $6d20: $4f
    ld a, a                                       ; $6d21: $7f
    rst $30                                       ; $6d22: $f7
    cp $ff                                        ; $6d23: $fe $ff
    db $fd                                        ; $6d25: $fd
    ld a, c                                       ; $6d26: $79
    ld [bc], a                                    ; $6d27: $02
    ld a, a                                       ; $6d28: $7f
    sub c                                         ; $6d29: $91
    ld a, c                                       ; $6d2a: $79
    ccf                                           ; $6d2b: $3f
    dec h                                         ; $6d2c: $25
    rra                                           ; $6d2d: $1f
    jr @+$01                                      ; $6d2e: $18 $ff

    db $fd                                        ; $6d30: $fd
    sub d                                         ; $6d31: $92
    cp $6d                                        ; $6d32: $fe $6d
    ld a, a                                       ; $6d34: $7f
    ld c, e                                       ; $6d35: $4b
    ld a, a                                       ; $6d36: $7f
    ld e, l                                       ; $6d37: $5d
    ld a, a                                       ; $6d38: $7f
    sbc l                                         ; $6d39: $9d
    rst $38                                       ; $6d3a: $ff
    ld [bc], a                                    ; $6d3b: $02
    rlca                                          ; $6d3c: $07
    add d                                         ; $6d3d: $82
    ld [bc], a                                    ; $6d3e: $02
    ld b, $04                                     ; $6d3f: $06 $04
    inc b                                         ; $6d41: $04
    add d                                         ; $6d42: $82
    ld b, $02                                     ; $6d43: $06 $02
    inc b                                         ; $6d45: $04
    inc b                                         ; $6d46: $04
    add d                                         ; $6d47: $82
    ld b, $02                                     ; $6d48: $06 $02
    ld [bc], a                                    ; $6d4a: $02
    inc b                                         ; $6d4b: $04
    inc c                                         ; $6d4c: $0c
    nop                                           ; $6d4d: $00
    adc [hl]                                      ; $6d4e: $8e
    add sp, -$08                                  ; $6d4f: $e8 $f8
    ld b, b                                       ; $6d51: $40
    ld [hl], b                                    ; $6d52: $70
    cp $cf                                        ; $6d53: $fe $cf
    ld a, l                                       ; $6d55: $7d
    ld d, a                                       ; $6d56: $57
    ld a, l                                       ; $6d57: $7d
    ld a, e                                       ; $6d58: $7b
    cp e                                          ; $6d59: $bb
    rst $38                                       ; $6d5a: $ff
    cp a                                          ; $6d5b: $bf
    rst $38                                       ; $6d5c: $ff
    ld [bc], a                                    ; $6d5d: $02
    ld a, e                                       ; $6d5e: $7b
    inc d                                         ; $6d5f: $14
    nop                                           ; $6d60: $00
    ld [bc], a                                    ; $6d61: $02
    jr jr_0da_6d66                                ; $6d62: $18 $02

    db $10                                        ; $6d64: $10
    ld [bc], a                                    ; $6d65: $02

jr_0da_6d66:
    jr jr_0da_6d6a                                ; $6d66: $18 $02

    ld e, $82                                     ; $6d68: $1e $82

jr_0da_6d6a:
    inc bc                                        ; $6d6a: $03
    rra                                           ; $6d6b: $1f
    ld [bc], a                                    ; $6d6c: $02
    ld e, $12                                     ; $6d6d: $1e $12
    nop                                           ; $6d6f: $00
    rst $38                                       ; $6d70: $ff
    dec c                                         ; $6d71: $0d
    inc b                                         ; $6d72: $04
    ld sp, hl                                     ; $6d73: $f9
    rlca                                          ; $6d74: $07
    di                                            ; $6d75: $f3
    ld [bc], a                                    ; $6d76: $02
    db $ec                                        ; $6d77: $ec
    ei                                            ; $6d78: $fb
    db $ed                                        ; $6d79: $ed
    cp $fc                                        ; $6d7a: $fe $fc
    ld a, [$fefc]                                 ; $6d7c: $fa $fc $fe
    ld [bc], a                                    ; $6d7f: $02
    ld [de], a                                    ; $6d80: $12
    add d                                         ; $6d81: $82
    cpl                                           ; $6d82: $2f
    ccf                                           ; $6d83: $3f
    ld [bc], a                                    ; $6d84: $02
    rst $38                                       ; $6d85: $ff
    sbc d                                         ; $6d86: $9a
    ld c, a                                       ; $6d87: $4f
    ld a, a                                       ; $6d88: $7f
    ld [hl], a                                    ; $6d89: $77
    ld a, [hl]                                    ; $6d8a: $7e
    rst $38                                       ; $6d8b: $ff
    db $fd                                        ; $6d8c: $fd
    ei                                            ; $6d8d: $fb
    cp $7f                                        ; $6d8e: $fe $7f
    ld a, d                                       ; $6d90: $7a
    ccf                                           ; $6d91: $3f
    dec h                                         ; $6d92: $25
    rra                                           ; $6d93: $1f
    jr jr_0da_6dd5                                ; $6d94: $18 $3f

    add hl, sp                                    ; $6d96: $39
    ld d, [hl]                                    ; $6d97: $56
    ld a, [hl]                                    ; $6d98: $7e
    xor e                                         ; $6d99: $ab
    rst $38                                       ; $6d9a: $ff
    ld l, l                                       ; $6d9b: $6d
    ld a, a                                       ; $6d9c: $7f
    ld l, e                                       ; $6d9d: $6b
    ld a, a                                       ; $6d9e: $7f
    ld c, l                                       ; $6d9f: $4d
    ld a, a                                       ; $6da0: $7f
    ld [bc], a                                    ; $6da1: $02
    inc b                                         ; $6da2: $04
    add d                                         ; $6da3: $82
    inc bc                                        ; $6da4: $03
    rlca                                          ; $6da5: $07
    ld [bc], a                                    ; $6da6: $02
    ld b, $02                                     ; $6da7: $06 $02
    inc b                                         ; $6da9: $04
    add d                                         ; $6daa: $82
    ld b, $02                                     ; $6dab: $06 $02
    inc b                                         ; $6dad: $04
    inc b                                         ; $6dae: $04
    add d                                         ; $6daf: $82
    ld b, $02                                     ; $6db0: $06 $02
    ld [bc], a                                    ; $6db2: $02
    inc b                                         ; $6db3: $04
    inc c                                         ; $6db4: $0c
    nop                                           ; $6db5: $00
    adc d                                         ; $6db6: $8a
    ld l, b                                       ; $6db7: $68
    ld hl, sp+$20                                 ; $6db8: $f8 $20
    jr nc, jr_0da_6dfa                            ; $6dba: $30 $3e

    inc sp                                        ; $6dbc: $33
    ld a, a                                       ; $6dbd: $7f
    ld l, d                                       ; $6dbe: $6a
    ld a, l                                       ; $6dbf: $7d
    ld a, a                                       ; $6dc0: $7f
    ld [bc], a                                    ; $6dc1: $02
    rst $38                                       ; $6dc2: $ff
    add d                                         ; $6dc3: $82
    cp [hl]                                       ; $6dc4: $be
    rst $38                                       ; $6dc5: $ff
    ld [bc], a                                    ; $6dc6: $02
    ld a, a                                       ; $6dc7: $7f
    inc d                                         ; $6dc8: $14
    nop                                           ; $6dc9: $00
    ld [bc], a                                    ; $6dca: $02
    ld [$0c82], sp                                ; $6dcb: $08 $82 $0c
    inc b                                         ; $6dce: $04
    ld [bc], a                                    ; $6dcf: $02
    ld [$0c02], sp                                ; $6dd0: $08 $02 $0c
    add d                                         ; $6dd3: $82
    inc bc                                        ; $6dd4: $03

jr_0da_6dd5:
    rrca                                          ; $6dd5: $0f
    ld [bc], a                                    ; $6dd6: $02
    ld c, $12                                     ; $6dd7: $0e $12
    nop                                           ; $6dd9: $00
    rst $38                                       ; $6dda: $ff
    dec c                                         ; $6ddb: $0d
    inc b                                         ; $6ddc: $04
    ld sp, hl                                     ; $6ddd: $f9
    rlca                                          ; $6dde: $07
    di                                            ; $6ddf: $f3
    ld [bc], a                                    ; $6de0: $02
    db $eb                                        ; $6de1: $eb
    ei                                            ; $6de2: $fb
    db $ec                                        ; $6de3: $ec
    cp $fb                                        ; $6de4: $fe $fb
    ei                                            ; $6de6: $fb
    ei                                            ; $6de7: $fb
    db $fd                                        ; $6de8: $fd
    ld [bc], a                                    ; $6de9: $02
    add hl, de                                    ; $6dea: $19
    sbc [hl]                                      ; $6deb: $9e
    rla                                           ; $6dec: $17
    rra                                           ; $6ded: $1f
    ld a, [hl]                                    ; $6dee: $7e
    ld a, a                                       ; $6def: $7f
    ld e, a                                       ; $6df0: $5f
    ld a, a                                       ; $6df1: $7f
    rst $28                                       ; $6df2: $ef
    cp $ff                                        ; $6df3: $fe $ff
    db $fd                                        ; $6df5: $fd
    ld a, e                                       ; $6df6: $7b
    ld a, [hl]                                    ; $6df7: $7e
    ld a, a                                       ; $6df8: $7f
    ld [hl], d                                    ; $6df9: $72

jr_0da_6dfa:
    ccf                                           ; $6dfa: $3f
    add hl, hl                                    ; $6dfb: $29
    ccf                                           ; $6dfc: $3f
    jr nc, jr_0da_6e3e                            ; $6dfd: $30 $3f

    add hl, sp                                    ; $6dff: $39
    ld d, [hl]                                    ; $6e00: $56
    ld a, [hl]                                    ; $6e01: $7e
    xor d                                         ; $6e02: $aa
    cp $ad                                        ; $6e03: $fe $ad
    rst $38                                       ; $6e05: $ff
    ld l, e                                       ; $6e06: $6b
    ld a, a                                       ; $6e07: $7f
    dec h                                         ; $6e08: $25
    ccf                                           ; $6e09: $3f
    ld [bc], a                                    ; $6e0a: $02
    inc b                                         ; $6e0b: $04
    add d                                         ; $6e0c: $82
    inc bc                                        ; $6e0d: $03
    rlca                                          ; $6e0e: $07
    ld [bc], a                                    ; $6e0f: $02
    ld b, $02                                     ; $6e10: $06 $02
    inc b                                         ; $6e12: $04
    add d                                         ; $6e13: $82
    ld b, $02                                     ; $6e14: $06 $02
    ld [bc], a                                    ; $6e16: $02
    inc b                                         ; $6e17: $04
    inc bc                                        ; $6e18: $03
    ld b, $81                                     ; $6e19: $06 $81
    ld [bc], a                                    ; $6e1b: $02
    ld [bc], a                                    ; $6e1c: $02
    inc b                                         ; $6e1d: $04
    inc c                                         ; $6e1e: $0c
    nop                                           ; $6e1f: $00
    add d                                         ; $6e20: $82

jr_0da_6e21:
    inc e                                         ; $6e21: $1c
    db $fc                                        ; $6e22: $fc
    ld [bc], a                                    ; $6e23: $02
    ld h, b                                       ; $6e24: $60
    adc h                                         ; $6e25: $8c
    ld [hl], a                                    ; $6e26: $77
    ld a, d                                       ; $6e27: $7a
    ld a, a                                       ; $6e28: $7f
    ld l, c                                       ; $6e29: $69
    ld [hl], a                                    ; $6e2a: $77
    ld a, a                                       ; $6e2b: $7f
    db $f4                                        ; $6e2c: $f4
    rst $38                                       ; $6e2d: $ff
    cp a                                          ; $6e2e: $bf
    rst $38                                       ; $6e2f: $ff
    db $e3                                        ; $6e30: $e3
    rst $38                                       ; $6e31: $ff
    ld [bc], a                                    ; $6e32: $02
    ld a, [hl]                                    ; $6e33: $7e
    ld [de], a                                    ; $6e34: $12
    nop                                           ; $6e35: $00
    add d                                         ; $6e36: $82
    inc bc                                        ; $6e37: $03
    ld bc, $0206                                  ; $6e38: $01 $06 $02
    ld d, $00                                     ; $6e3b: $16 $00
    rst $38                                       ; $6e3d: $ff

jr_0da_6e3e:
    rrca                                          ; $6e3e: $0f
    dec b                                         ; $6e3f: $05
    ld [bc], a                                    ; $6e40: $02
    ld de, $fbec                                  ; $6e41: $11 $ec $fb
    ld [$ebfc], a                                 ; $6e44: $ea $fc $eb
    inc b                                         ; $6e47: $04
    xor $09                                       ; $6e48: $ee $09
    ld a, [$fafb]                                 ; $6e4a: $fa $fb $fa
    cp $02                                        ; $6e4d: $fe $02
    add hl, de                                    ; $6e4f: $19
    sbc [hl]                                      ; $6e50: $9e
    rla                                           ; $6e51: $17
    rra                                           ; $6e52: $1f
    ld a, [hl]                                    ; $6e53: $7e
    ld a, a                                       ; $6e54: $7f
    ld e, a                                       ; $6e55: $5f
    ld a, a                                       ; $6e56: $7f
    rst $28                                       ; $6e57: $ef
    cp $ff                                        ; $6e58: $fe $ff
    ld sp, hl                                     ; $6e5a: $f9
    ld a, e                                       ; $6e5b: $7b
    ld a, [hl]                                    ; $6e5c: $7e
    ld a, a                                       ; $6e5d: $7f
    ld [hl], d                                    ; $6e5e: $72
    ccf                                           ; $6e5f: $3f
    dec hl                                        ; $6e60: $2b
    rra                                           ; $6e61: $1f
    db $10                                        ; $6e62: $10
    ccf                                           ; $6e63: $3f
    add hl, sp                                    ; $6e64: $39
    ld d, [hl]                                    ; $6e65: $56
    ld a, [hl]                                    ; $6e66: $7e
    cp e                                          ; $6e67: $bb
    rst $38                                       ; $6e68: $ff
    ld l, l                                       ; $6e69: $6d
    ld a, a                                       ; $6e6a: $7f
    scf                                           ; $6e6b: $37
    ccf                                           ; $6e6c: $3f
    ld [hl], d                                    ; $6e6d: $72
    ld a, a                                       ; $6e6e: $7f
    ld [bc], a                                    ; $6e6f: $02
    add b                                         ; $6e70: $80
    add d                                         ; $6e71: $82
    ld h, b                                       ; $6e72: $60
    ldh [rSC], a                                  ; $6e73: $e0 $02
    jp $869a                                      ; $6e75: $c3 $9a $86


    add a                                         ; $6e78: $87
    call nz, $8947                                ; $6e79: $c4 $47 $89
    adc a                                         ; $6e7c: $8f
    call z, $decf                                 ; $6e7d: $cc $cf $de
    ld e, a                                       ; $6e80: $5f
    sbc b                                         ; $6e81: $98
    sbc a                                         ; $6e82: $9f
    jr nc, @+$41                                  ; $6e83: $30 $3f

    ld a, b                                       ; $6e85: $78
    ld a, a                                       ; $6e86: $7f
    cp l                                          ; $6e87: $bd
    rst $38                                       ; $6e88: $ff
    ld [hl], b                                    ; $6e89: $70
    rst $18                                       ; $6e8a: $df
    rst $38                                       ; $6e8b: $ff
    rst $18                                       ; $6e8c: $df
    ld hl, sp-$41                                 ; $6e8d: $f8 $bf
    or $37                                        ; $6e8f: $f6 $37
    ld [bc], a                                    ; $6e91: $02
    db $10                                        ; $6e92: $10
    add h                                         ; $6e93: $84
    ld [$1418], sp                                ; $6e94: $08 $18 $14
    inc e                                         ; $6e97: $1c
    ld [bc], a                                    ; $6e98: $02
    jr jr_0da_6e21                                ; $6e99: $18 $86

    ld [$0818], sp                                ; $6e9b: $08 $18 $08
    jr jr_0da_6eac                                ; $6e9e: $18 $0c

    inc e                                         ; $6ea0: $1c
    ld [bc], a                                    ; $6ea1: $02
    ld e, $88                                     ; $6ea2: $1e $88
    ld b, $1e                                     ; $6ea4: $06 $1e
    dec c                                         ; $6ea6: $0d
    rra                                           ; $6ea7: $1f
    ld de, $071f                                  ; $6ea8: $11 $1f $07
    rra                                           ; $6eab: $1f

jr_0da_6eac:
    ld [bc], a                                    ; $6eac: $02
    jr jr_0da_6eb1                                ; $6ead: $18 $02

    add b                                         ; $6eaf: $80
    inc b                                         ; $6eb0: $04

jr_0da_6eb1:
    nop                                           ; $6eb1: $00
    add c                                         ; $6eb2: $81
    inc a                                         ; $6eb3: $3c
    inc bc                                        ; $6eb4: $03
    ccf                                           ; $6eb5: $3f
    adc d                                         ; $6eb6: $8a
    ld a, l                                       ; $6eb7: $7d
    ld a, a                                       ; $6eb8: $7f
    ld a, l                                       ; $6eb9: $7d
    ld a, a                                       ; $6eba: $7f
    cp e                                          ; $6ebb: $bb
    rst $38                                       ; $6ebc: $ff
    cp a                                          ; $6ebd: $bf

jr_0da_6ebe:
    rst $38                                       ; $6ebe: $ff
    pop de                                        ; $6ebf: $d1
    rst $38                                       ; $6ec0: $ff
    ld [bc], a                                    ; $6ec1: $02
    ld a, a                                       ; $6ec2: $7f
    stop                                          ; $6ec3: $10 $00
    ld [bc], a                                    ; $6ec5: $02
    inc b                                         ; $6ec6: $04
    ld [bc], a                                    ; $6ec7: $02
    rlca                                          ; $6ec8: $07
    ld b, $04                                     ; $6ec9: $06 $04
    inc b                                         ; $6ecb: $04
    ld b, $12                                     ; $6ecc: $06 $12
    nop                                           ; $6ece: $00
    rst $38                                       ; $6ecf: $ff
    rrca                                          ; $6ed0: $0f
    dec b                                         ; $6ed1: $05
    ld [bc], a                                    ; $6ed2: $02
    ld de, $fbec                                  ; $6ed3: $11 $ec $fb
    ld [$eaff], a                                 ; $6ed6: $ea $ff $ea
    rlca                                          ; $6ed9: $07
    db $ed                                        ; $6eda: $ed
    dec c                                         ; $6edb: $0d
    ld a, [$fafe]                                 ; $6edc: $fa $fe $fa
    nop                                           ; $6edf: $00
    ld [bc], a                                    ; $6ee0: $02
    ld c, $9a                                     ; $6ee1: $0e $9a
    dec sp                                        ; $6ee3: $3b
    ccf                                           ; $6ee4: $3f
    ld e, a                                       ; $6ee5: $5f
    ld a, a                                       ; $6ee6: $7f
    ld e, a                                       ; $6ee7: $5f
    ld a, a                                       ; $6ee8: $7f
    rst $38                                       ; $6ee9: $ff
    di                                            ; $6eea: $f3
    rst $38                                       ; $6eeb: $ff
    or $7f                                        ; $6eec: $f6 $7f
    ld a, c                                       ; $6eee: $79
    ld a, a                                       ; $6eef: $7f
    ld c, c                                       ; $6ef0: $49
    ccf                                           ; $6ef1: $3f
    ld [hl], $3f                                  ; $6ef2: $36 $3f
    ld sp, $785f                                  ; $6ef4: $31 $5f $78
    or a                                          ; $6ef7: $b7
    rst $38                                       ; $6ef8: $ff
    ld a, c                                       ; $6ef9: $79
    ld a, a                                       ; $6efa: $7f
    inc a                                         ; $6efb: $3c
    ccf                                           ; $6efc: $3f
    ld [bc], a                                    ; $6efd: $02
    ld a, a                                       ; $6efe: $7f
    add d                                         ; $6eff: $82
    ld a, l                                       ; $6f00: $7d
    ld a, a                                       ; $6f01: $7f
    inc b                                         ; $6f02: $04
    add b                                         ; $6f03: $80
    add d                                         ; $6f04: $82
    ld b, b                                       ; $6f05: $40
    ret nz                                        ; $6f06: $c0

    ld [bc], a                                    ; $6f07: $02
    ldh [$82], a                                  ; $6f08: $e0 $82
    ret nz                                        ; $6f0a: $c0

    ld b, b                                       ; $6f0b: $40
    ld [bc], a                                    ; $6f0c: $02
    jp $c792                                      ; $6f0d: $c3 $92 $c7


    ld b, a                                       ; $6f10: $47
    rst $18                                       ; $6f11: $df
    ld e, a                                       ; $6f12: $5f
    cp $ff                                        ; $6f13: $fe $ff
    sbc $ff                                       ; $6f15: $de $ff
    db $fd                                        ; $6f17: $fd
    rst $18                                       ; $6f18: $df
    push hl                                       ; $6f19: $e5
    rst $18                                       ; $6f1a: $df
    ld a, d                                       ; $6f1b: $7a
    rst $18                                       ; $6f1c: $df
    ld a, c                                       ; $6f1d: $79
    sbc a                                         ; $6f1e: $9f
    cp $ff                                        ; $6f1f: $fe $ff
    ld [bc], a                                    ; $6f21: $02
    inc bc                                        ; $6f22: $03
    ld [bc], a                                    ; $6f23: $02
    jr jr_0da_6ebe                                ; $6f24: $18 $98

    inc [hl]                                      ; $6f26: $34
    inc a                                         ; $6f27: $3c
    inc h                                         ; $6f28: $24
    inc a                                         ; $6f29: $3c
    ld a, [hl+]                                   ; $6f2a: $2a
    ld a, $06                                     ; $6f2b: $3e $06
    ld a, $04                                     ; $6f2d: $3e $04
    inc a                                         ; $6f2f: $3c
    inc b                                         ; $6f30: $04
    inc a                                         ; $6f31: $3c
    inc b                                         ; $6f32: $04
    inc a                                         ; $6f33: $3c
    jr jr_0da_6f6e                                ; $6f34: $18 $38

    ld c, $3e                                     ; $6f36: $0e $3e
    dec h                                         ; $6f38: $25
    ccf                                           ; $6f39: $3f
    add hl, de                                    ; $6f3a: $19
    ccf                                           ; $6f3b: $3f
    ld h, $3e                                     ; $6f3c: $26 $3e
    ld [bc], a                                    ; $6f3e: $02
    jr jr_0da_6f45                                ; $6f3f: $18 $04

    nop                                           ; $6f41: $00
    adc [hl]                                      ; $6f42: $8e
    ld a, l                                       ; $6f43: $7d
    ld a, a                                       ; $6f44: $7f

jr_0da_6f45:
    db $fd                                        ; $6f45: $fd
    rst $38                                       ; $6f46: $ff
    cp e                                          ; $6f47: $bb
    rst $38                                       ; $6f48: $ff
    or a                                          ; $6f49: $b7
    rst $38                                       ; $6f4a: $ff
    cp a                                          ; $6f4b: $bf
    rst $38                                       ; $6f4c: $ff
    ld [hl], h                                    ; $6f4d: $74
    ld a, h                                       ; $6f4e: $7c
    ld [hl-], a                                   ; $6f4f: $32
    ld a, $02                                     ; $6f50: $3e $02
    inc c                                         ; $6f52: $0c
    stop                                          ; $6f53: $10 $00
    add h                                         ; $6f55: $84
    ld bc, $0103                                  ; $6f56: $01 $03 $01
    inc bc                                        ; $6f59: $03
    ld [bc], a                                    ; $6f5a: $02
    ld [bc], a                                    ; $6f5b: $02
    add c                                         ; $6f5c: $81
    ld bc, $0303                                  ; $6f5d: $01 $03 $03
    ld d, $00                                     ; $6f60: $16 $00
    rst $38                                       ; $6f62: $ff
    rrca                                          ; $6f63: $0f
    dec b                                         ; $6f64: $05
    ld [bc], a                                    ; $6f65: $02
    ld de, $fbec                                  ; $6f66: $11 $ec $fb
    ld [$ea01], a                                 ; $6f69: $ea $01 $ea
    add hl, bc                                    ; $6f6c: $09
    db $eb                                        ; $6f6d: $eb

jr_0da_6f6e:
    dec c                                         ; $6f6e: $0d
    ld a, [$fa00]                                 ; $6f6f: $fa $00 $fa
    inc b                                         ; $6f72: $04
    ld [bc], a                                    ; $6f73: $02
    rlca                                          ; $6f74: $07
    sbc [hl]                                      ; $6f75: $9e
    inc c                                         ; $6f76: $0c
    rrca                                          ; $6f77: $0f
    add hl, sp                                    ; $6f78: $39
    ccf                                           ; $6f79: $3f
    ld a, [hl]                                    ; $6f7a: $7e
    ld [hl], a                                    ; $6f7b: $77
    ld e, a                                       ; $6f7c: $5f
    ld a, e                                       ; $6f7d: $7b
    rst $38                                       ; $6f7e: $ff
    push af                                       ; $6f7f: $f5
    ld a, a                                       ; $6f80: $7f
    ld [hl], h                                    ; $6f81: $74
    ld a, e                                       ; $6f82: $7b
    ld a, a                                       ; $6f83: $7f
    ld [hl], c                                    ; $6f84: $71
    ld e, a                                       ; $6f85: $5f
    inc hl                                        ; $6f86: $23
    ld a, $4f                                     ; $6f87: $3e $4f
    ld a, a                                       ; $6f89: $7f
    push af                                       ; $6f8a: $f5
    rst $38                                       ; $6f8b: $ff
    ld a, e                                       ; $6f8c: $7b
    ld a, a                                       ; $6f8d: $7f
    ld a, l                                       ; $6f8e: $7d
    ld a, a                                       ; $6f8f: $7f
    ld a, e                                       ; $6f90: $7b
    ld a, a                                       ; $6f91: $7f
    ld [hl], b                                    ; $6f92: $70
    ld a, a                                       ; $6f93: $7f
    ld [bc], a                                    ; $6f94: $02
    ldh [$91], a                                  ; $6f95: $e0 $91
    ccf                                           ; $6f97: $3f
    rst $38                                       ; $6f98: $ff
    cp $ff                                        ; $6f99: $fe $ff
    ldh a, [rIE]                                  ; $6f9b: $f0 $ff

jr_0da_6f9d:
    ldh [rIE], a                                  ; $6f9d: $e0 $ff
    pop de                                        ; $6f9f: $d1
    rst $38                                       ; $6fa0: $ff
    rst $20                                       ; $6fa1: $e7
    rst $38                                       ; $6fa2: $ff
    inc sp                                        ; $6fa3: $33
    rst $38                                       ; $6fa4: $ff
    dec e                                         ; $6fa5: $1d
    rst $38                                       ; $6fa6: $ff
    ld [c], a                                     ; $6fa7: $e2
    inc bc                                        ; $6fa8: $03
    cp $82                                        ; $6fa9: $fe $82
    jr nc, jr_0da_6f9d                            ; $6fab: $30 $f0

    ld [bc], a                                    ; $6fad: $02
    ret nz                                        ; $6fae: $c0

    ld [bc], a                                    ; $6faf: $02
    nop                                           ; $6fb0: $00
    ld [bc], a                                    ; $6fb1: $02
    add b                                         ; $6fb2: $80
    add d                                         ; $6fb3: $82
    ld b, b                                       ; $6fb4: $40
    ret nz                                        ; $6fb5: $c0

    ld [bc], a                                    ; $6fb6: $02
    inc c                                         ; $6fb7: $0c
    add [hl]                                      ; $6fb8: $86
    ld b, $0e                                     ; $6fb9: $06 $0e
    ld [bc], a                                    ; $6fbb: $02
    ld c, $05                                     ; $6fbc: $0e $05
    rrca                                          ; $6fbe: $0f
    ld [bc], a                                    ; $6fbf: $02
    ld a, [bc]                                    ; $6fc0: $0a
    ld d, $00                                     ; $6fc1: $16 $00
    adc [hl]                                      ; $6fc3: $8e
    ld a, l                                       ; $6fc4: $7d
    ld a, a                                       ; $6fc5: $7f
    ld a, e                                       ; $6fc6: $7b
    ld a, a                                       ; $6fc7: $7f
    cp e                                          ; $6fc8: $bb
    rst $38                                       ; $6fc9: $ff
    or a                                          ; $6fca: $b7
    rst $38                                       ; $6fcb: $ff
    ld c, [hl]                                    ; $6fcc: $4e
    ld a, [hl]                                    ; $6fcd: $7e
    ld a, [hl-]                                   ; $6fce: $3a
    ld a, $34                                     ; $6fcf: $3e $34

jr_0da_6fd1:
    inc a                                         ; $6fd1: $3c
    ld [bc], a                                    ; $6fd2: $02
    inc c                                         ; $6fd3: $0c
    stop                                          ; $6fd4: $10 $00
    add e                                         ; $6fd6: $83
    ld a, [bc]                                    ; $6fd7: $0a
    ld c, $0a                                     ; $6fd8: $0e $0a
    inc bc                                        ; $6fda: $03
    ld c, $82                                     ; $6fdb: $0e $82
    add hl, bc                                    ; $6fdd: $09
    rrca                                          ; $6fde: $0f
    ld [bc], a                                    ; $6fdf: $02
    ld c, $16                                     ; $6fe0: $0e $16
    nop                                           ; $6fe2: $00
    rst $38                                       ; $6fe3: $ff
    dec c                                         ; $6fe4: $0d
    inc b                                         ; $6fe5: $04
    ld [bc], a                                    ; $6fe6: $02
    ld de, $fbec                                  ; $6fe7: $11 $ec $fb
    ld [c], a                                     ; $6fea: $e2
    inc bc                                        ; $6feb: $03
    ld [c], a                                     ; $6fec: $e2
    add hl, bc                                    ; $6fed: $09
    ld a, [c]                                     ; $6fee: $f2
    inc b                                         ; $6fef: $04
    ld a, [c]                                     ; $6ff0: $f2
    rlca                                          ; $6ff1: $07
    ld [bc], a                                    ; $6ff2: $02
    ld bc, $0302                                  ; $6ff3: $01 $02 $03
    add [hl]                                      ; $6ff6: $86
    ld [bc], a                                    ; $6ff7: $02
    inc bc                                        ; $6ff8: $03
    inc b                                         ; $6ff9: $04
    rlca                                          ; $6ffa: $07
    ld b, $07                                     ; $6ffb: $06 $07
    ld [bc], a                                    ; $6ffd: $02
    rrca                                          ; $6ffe: $0f
    sub h                                         ; $6fff: $94
    inc e                                         ; $7000: $1c
    rra                                           ; $7001: $1f
    jr c, jr_0da_7043                             ; $7002: $38 $3f

    call c, $9aff                                 ; $7004: $dc $ff $9a
    rst $38                                       ; $7007: $ff
    ld hl, sp-$41                                 ; $7008: $f8 $bf
    ld a, a                                       ; $700a: $7f
    ld e, a                                       ; $700b: $5f
    inc a                                         ; $700c: $3c
    daa                                           ; $700d: $27
    ccf                                           ; $700e: $3f
    scf                                           ; $700f: $37
    ld e, a                                       ; $7010: $5f
    ld a, a                                       ; $7011: $7f
    ld b, a                                       ; $7012: $47
    ld a, [hl]                                    ; $7013: $7e
    ld [bc], a                                    ; $7014: $02
    jr nz, jr_0da_6fd1                            ; $7015: $20 $ba

    db $10                                        ; $7017: $10
    jr nc, jr_0da_7022                            ; $7018: $30 $08

    jr c, jr_0da_7050                             ; $701a: $38 $34

    inc a                                         ; $701c: $3c
    jr @+$3a                                      ; $701d: $18 $38

    ld [$0838], sp                                ; $701f: $08 $38 $08

jr_0da_7022:
    jr c, @+$0e                                   ; $7022: $38 $0c

jr_0da_7024:
    inc a                                         ; $7024: $3c
    ld e, $3e                                     ; $7025: $1e $3e
    ld h, $3e                                     ; $7027: $26 $3e
    dec c                                         ; $7029: $0d
    ccf                                           ; $702a: $3f
    ld sp, $073f                                  ; $702b: $31 $3f $07
    ccf                                           ; $702e: $3f
    ld e, $3a                                     ; $702f: $1e $3a
    inc [hl]                                      ; $7031: $34
    inc e                                         ; $7032: $1c
    inc [hl]                                      ; $7033: $34
    inc a                                         ; $7034: $3c
    sbc a                                         ; $7035: $9f
    rst $30                                       ; $7036: $f7
    ld e, a                                       ; $7037: $5f
    ld a, a                                       ; $7038: $7f
    ld [hl], l                                    ; $7039: $75
    ld a, a                                       ; $703a: $7f
    dec sp                                        ; $703b: $3b
    ccf                                           ; $703c: $3f
    ld [hl], l                                    ; $703d: $75
    ld a, a                                       ; $703e: $7f
    ld a, e                                       ; $703f: $7b
    ld a, a                                       ; $7040: $7f
    ld a, e                                       ; $7041: $7b
    ld a, a                                       ; $7042: $7f

jr_0da_7043:
    ld a, b                                       ; $7043: $78
    ld a, a                                       ; $7044: $7f
    ld a, e                                       ; $7045: $7b
    ld a, a                                       ; $7046: $7f
    rst $30                                       ; $7047: $f7
    rst $38                                       ; $7048: $ff
    rst $30                                       ; $7049: $f7
    rst $38                                       ; $704a: $ff
    rst $28                                       ; $704b: $ef
    rst $38                                       ; $704c: $ff
    ld d, [hl]                                    ; $704d: $56
    ld a, a                                       ; $704e: $7f
    ld l, c                                       ; $704f: $69

jr_0da_7050:
    ld a, c                                       ; $7050: $79
    ld [bc], a                                    ; $7051: $02
    jr nc, jr_0da_7056                            ; $7052: $30 $02

    nop                                           ; $7054: $00

jr_0da_7055:
    add h                                         ; $7055: $84

jr_0da_7056:
    ld bc, $0207                                  ; $7056: $01 $07 $02
    ld b, $04                                     ; $7059: $06 $04
    inc b                                         ; $705b: $04
    ld [bc], a                                    ; $705c: $02
    nop                                           ; $705d: $00
    ld b, $04                                     ; $705e: $06 $04
    add e                                         ; $7060: $83
    ld [bc], a                                    ; $7061: $02
    ld b, $02                                     ; $7062: $06 $02
    dec b                                         ; $7064: $05
    ld b, $82                                     ; $7065: $06 $82
    ld [bc], a                                    ; $7067: $02
    ld b, $02                                     ; $7068: $06 $02
    inc b                                         ; $706a: $04
    inc b                                         ; $706b: $04
    nop                                           ; $706c: $00
    rst $38                                       ; $706d: $ff
    dec c                                         ; $706e: $0d
    inc b                                         ; $706f: $04
    ld [bc], a                                    ; $7070: $02
    ld de, $fbec                                  ; $7071: $11 $ec $fb
    db $e4                                        ; $7074: $e4
    inc bc                                        ; $7075: $03
    push hl                                       ; $7076: $e5
    add hl, bc                                    ; $7077: $09
    db $f4                                        ; $7078: $f4
    inc b                                         ; $7079: $04
    db $f4                                        ; $707a: $f4
    add hl, bc                                    ; $707b: $09
    ld [bc], a                                    ; $707c: $02
    inc bc                                        ; $707d: $03
    sbc [hl]                                      ; $707e: $9e
    ld b, $07                                     ; $707f: $06 $07
    inc b                                         ; $7081: $04
    rlca                                          ; $7082: $07
    add hl, bc                                    ; $7083: $09
    rrca                                          ; $7084: $0f
    inc c                                         ; $7085: $0c
    rrca                                          ; $7086: $0f
    ld c, $0f                                     ; $7087: $0e $0f
    inc e                                         ; $7089: $1c
    rra                                           ; $708a: $1f
    jr jr_0da_70ac                                ; $708b: $18 $1f

    inc a                                         ; $708d: $3c
    ccf                                           ; $708e: $3f
    ld [hl], d                                    ; $708f: $72
    ld a, a                                       ; $7090: $7f
    cp b                                          ; $7091: $b8
    rst $38                                       ; $7092: $ff
    cp a                                          ; $7093: $bf
    rst $38                                       ; $7094: $ff
    ld l, h                                       ; $7095: $6c
    ld a, a                                       ; $7096: $7f
    ccf                                           ; $7097: $3f
    dec sp                                        ; $7098: $3b
    rrca                                          ; $7099: $0f
    ld c, $1b                                     ; $709a: $0e $1b
    rra                                           ; $709c: $1f
    ld [bc], a                                    ; $709d: $02
    jr nz, jr_0da_7024                            ; $709e: $20 $84

    db $10                                        ; $70a0: $10
    jr nc, jr_0da_70cb                            ; $70a1: $30 $28

    jr c, jr_0da_70a7                             ; $70a3: $38 $02

    jr nc, jr_0da_7055                            ; $70a5: $30 $ae

jr_0da_70a7:
    jr @+$3a                                      ; $70a7: $18 $38

    ld [$0838], sp                                ; $70a9: $08 $38 $08

jr_0da_70ac:
    jr c, jr_0da_70cc                             ; $70ac: $38 $1e

    ld a, $26                                     ; $70ae: $3e $26
    ld a, $0d                                     ; $70b0: $3e $0d
    ccf                                           ; $70b2: $3f
    add hl, sp                                    ; $70b3: $39
    ccf                                           ; $70b4: $3f
    ld b, $3e                                     ; $70b5: $06 $3e
    inc l                                         ; $70b7: $2c
    inc a                                         ; $70b8: $3c
    jr c, jr_0da_70d3                             ; $70b9: $38 $18

jr_0da_70bb:
    inc l                                         ; $70bb: $2c
    inc a                                         ; $70bc: $3c
    ld e, d                                       ; $70bd: $5a
    cp $58                                        ; $70be: $fe $58
    ld a, b                                       ; $70c0: $78
    ld a, l                                       ; $70c1: $7d
    ld a, a                                       ; $70c2: $7f
    sbc [hl]                                      ; $70c3: $9e
    ei                                            ; $70c4: $fb

jr_0da_70c5:
    sbc l                                         ; $70c5: $9d
    rst $30                                       ; $70c6: $f7
    ld a, l                                       ; $70c7: $7d
    ld l, a                                       ; $70c8: $6f
    jr c, jr_0da_710a                             ; $70c9: $38 $3f

jr_0da_70cb:
    scf                                           ; $70cb: $37

jr_0da_70cc:
    ccf                                           ; $70cc: $3f
    scf                                           ; $70cd: $37
    ccf                                           ; $70ce: $3f
    cpl                                           ; $70cf: $2f
    ccf                                           ; $70d0: $3f
    ld a, [hl-]                                   ; $70d1: $3a
    ccf                                           ; $70d2: $3f

jr_0da_70d3:
    dec [hl]                                      ; $70d3: $35
    dec a                                         ; $70d4: $3d
    ld [bc], a                                    ; $70d5: $02
    jr jr_0da_70e2                                ; $70d6: $18 $0a

    nop                                           ; $70d8: $00
    ld [bc], a                                    ; $70d9: $02
    ld e, $86                                     ; $70da: $1e $86
    add hl, de                                    ; $70dc: $19
    rra                                           ; $70dd: $1f
    add hl, de                                    ; $70de: $19
    rrca                                          ; $70df: $0f
    ld e, $16                                     ; $70e0: $1e $16

jr_0da_70e2:
    ld [bc], a                                    ; $70e2: $02
    inc e                                         ; $70e3: $1c
    add l                                         ; $70e4: $85
    inc c                                         ; $70e5: $0c
    inc e                                         ; $70e6: $1c
    inc c                                         ; $70e7: $0c
    inc e                                         ; $70e8: $1c
    inc d                                         ; $70e9: $14
    inc bc                                        ; $70ea: $03
    inc e                                         ; $70eb: $1c
    add d                                         ; $70ec: $82
    inc b                                         ; $70ed: $04
    inc e                                         ; $70ee: $1c
    ld [bc], a                                    ; $70ef: $02
    jr jr_0da_70fa                                ; $70f0: $18 $08

    nop                                           ; $70f2: $00
    rst $38                                       ; $70f3: $ff
    dec c                                         ; $70f4: $0d
    inc b                                         ; $70f5: $04
    ld [bc], a                                    ; $70f6: $02
    ld de, $fbec                                  ; $70f7: $11 $ec $fb

jr_0da_70fa:
    db $e4                                        ; $70fa: $e4
    inc bc                                        ; $70fb: $03
    and $09                                       ; $70fc: $e6 $09
    db $f4                                        ; $70fe: $f4
    inc b                                         ; $70ff: $04
    db $f4                                        ; $7100: $f4
    add hl, bc                                    ; $7101: $09
    ld [bc], a                                    ; $7102: $02
    ld [bc], a                                    ; $7103: $02
    ld [bc], a                                    ; $7104: $02
    rlca                                          ; $7105: $07
    add e                                         ; $7106: $83
    ld [$090f], sp                                ; $7107: $08 $0f $09

jr_0da_710a:
    inc bc                                        ; $710a: $03
    rrca                                          ; $710b: $0f
    sub d                                         ; $710c: $92
    inc c                                         ; $710d: $0c
    rrca                                          ; $710e: $0f
    jr jr_0da_7130                                ; $710f: $18 $1f

    inc e                                         ; $7111: $1c
    rra                                           ; $7112: $1f
    ld a, [hl-]                                   ; $7113: $3a
    ccf                                           ; $7114: $3f
    ld [hl], b                                    ; $7115: $70
    ld a, a                                       ; $7116: $7f
    cp a                                          ; $7117: $bf
    rst $38                                       ; $7118: $ff
    cp a                                          ; $7119: $bf
    rst $38                                       ; $711a: $ff
    ld b, a                                       ; $711b: $47
    ld a, a                                       ; $711c: $7f
    inc a                                         ; $711d: $3c
    ccf                                           ; $711e: $3f
    ld [bc], a                                    ; $711f: $02
    rrca                                          ; $7120: $0f
    add d                                         ; $7121: $82
    dec de                                        ; $7122: $1b
    rra                                           ; $7123: $1f
    ld [bc], a                                    ; $7124: $02
    jr nz, @+$06                                  ; $7125: $20 $04

    jr nc, jr_0da_70bb                            ; $7127: $30 $92

    db $10                                        ; $7129: $10

jr_0da_712a:
    jr nc, jr_0da_7134                            ; $712a: $30 $08

    jr c, jr_0da_7146                             ; $712c: $38 $18

    jr c, jr_0da_715e                             ; $712e: $38 $2e

jr_0da_7130:
    ld a, $06                                     ; $7130: $3e $06
    ld a, $2d                                     ; $7132: $3e $2d

jr_0da_7134:
    ccf                                           ; $7134: $3f
    inc sp                                        ; $7135: $33
    ccf                                           ; $7136: $3f
    ld h, $3e                                     ; $7137: $26 $3e
    inc c                                         ; $7139: $0c
    inc a                                         ; $713a: $3c
    ld [bc], a                                    ; $713b: $02
    jr c, jr_0da_70c5                             ; $713c: $38 $87

    inc l                                         ; $713e: $2c
    inc a                                         ; $713f: $3c
    ld e, d                                       ; $7140: $5a
    cp $be                                        ; $7141: $fe $be
    cp $58                                        ; $7143: $fe $58
    inc bc                                        ; $7145: $03

jr_0da_7146:
    ld a, b                                       ; $7146: $78
    sub d                                         ; $7147: $92
    sbc [hl]                                      ; $7148: $9e
    ei                                            ; $7149: $fb
    sbc l                                         ; $714a: $9d
    rst $30                                       ; $714b: $f7
    ld a, l                                       ; $714c: $7d
    ld l, a                                       ; $714d: $6f
    jr c, jr_0da_718f                             ; $714e: $38 $3f

    scf                                           ; $7150: $37
    ccf                                           ; $7151: $3f
    scf                                           ; $7152: $37
    ccf                                           ; $7153: $3f
    cpl                                           ; $7154: $2f
    ccf                                           ; $7155: $3f
    ld a, [hl-]                                   ; $7156: $3a
    ccf                                           ; $7157: $3f
    dec [hl]                                      ; $7158: $35
    dec a                                         ; $7159: $3d
    ld [bc], a                                    ; $715a: $02

jr_0da_715b:
    jr jr_0da_7169                                ; $715b: $18 $0c

    nop                                           ; $715d: $00

jr_0da_715e:
    add [hl]                                      ; $715e: $86
    add hl, de                                    ; $715f: $19
    rra                                           ; $7160: $1f
    add hl, de                                    ; $7161: $19
    rrca                                          ; $7162: $0f
    ld e, $16                                     ; $7163: $1e $16
    ld [bc], a                                    ; $7165: $02
    inc e                                         ; $7166: $1c
    add l                                         ; $7167: $85
    inc c                                         ; $7168: $0c

jr_0da_7169:
    inc e                                         ; $7169: $1c
    inc c                                         ; $716a: $0c
    inc e                                         ; $716b: $1c
    inc d                                         ; $716c: $14
    inc bc                                        ; $716d: $03
    inc e                                         ; $716e: $1c
    add d                                         ; $716f: $82
    inc b                                         ; $7170: $04
    inc e                                         ; $7171: $1c
    ld [bc], a                                    ; $7172: $02
    jr jr_0da_717d                                ; $7173: $18 $08

    nop                                           ; $7175: $00
    rst $38                                       ; $7176: $ff
    dec c                                         ; $7177: $0d
    inc b                                         ; $7178: $04
    ld [bc], a                                    ; $7179: $02
    ld de, $fbec                                  ; $717a: $11 $ec $fb

jr_0da_717d:
    db $e4                                        ; $717d: $e4
    inc bc                                        ; $717e: $03
    push hl                                       ; $717f: $e5
    add hl, bc                                    ; $7180: $09
    db $f4                                        ; $7181: $f4
    inc b                                         ; $7182: $04
    db $f4                                        ; $7183: $f4
    add hl, bc                                    ; $7184: $09
    ld [bc], a                                    ; $7185: $02
    inc bc                                        ; $7186: $03
    add a                                         ; $7187: $87
    ld b, $07                                     ; $7188: $06 $07
    inc c                                         ; $718a: $0c
    rrca                                          ; $718b: $0f
    add hl, bc                                    ; $718c: $09
    rrca                                          ; $718d: $0f
    inc c                                         ; $718e: $0c

jr_0da_718f:
    inc bc                                        ; $718f: $03
    rrca                                          ; $7190: $0f
    sub h                                         ; $7191: $94
    jr @+$21                                      ; $7192: $18 $1f

    inc e                                         ; $7194: $1c
    rra                                           ; $7195: $1f
    ld a, [hl-]                                   ; $7196: $3a
    ccf                                           ; $7197: $3f
    ld a, b                                       ; $7198: $78
    ld a, a                                       ; $7199: $7f
    cp l                                          ; $719a: $bd
    rst $38                                       ; $719b: $ff
    cp a                                          ; $719c: $bf
    rst $38                                       ; $719d: $ff
    ld l, h                                       ; $719e: $6c
    ld a, a                                       ; $719f: $7f
    dec a                                         ; $71a0: $3d
    ccf                                           ; $71a1: $3f
    rrca                                          ; $71a2: $0f
    ld c, $1b                                     ; $71a3: $0e $1b
    rra                                           ; $71a5: $1f
    ld [bc], a                                    ; $71a6: $02
    jr nz, jr_0da_712a                            ; $71a7: $20 $81

    db $10                                        ; $71a9: $10
    dec b                                         ; $71aa: $05
    jr nc, jr_0da_715b                            ; $71ab: $30 $ae

    jr @+$3a                                      ; $71ad: $18 $38

    ld [$1838], sp                                ; $71af: $08 $38 $18
    jr c, jr_0da_71e2                             ; $71b2: $38 $2e

    ld a, $0e                                     ; $71b4: $3e $0e
    ld a, $2d                                     ; $71b6: $3e $2d
    ccf                                           ; $71b8: $3f
    ld de, $063f                                  ; $71b9: $11 $3f $06
    ld a, $2c                                     ; $71bc: $3e $2c
    inc a                                         ; $71be: $3c
    jr c, jr_0da_71d9                             ; $71bf: $38 $18

    inc l                                         ; $71c1: $2c

jr_0da_71c2:
    inc a                                         ; $71c2: $3c
    ld e, d                                       ; $71c3: $5a
    cp $58                                        ; $71c4: $fe $58
    ld a, b                                       ; $71c6: $78
    ld a, l                                       ; $71c7: $7d
    ld a, a                                       ; $71c8: $7f
    sbc [hl]                                      ; $71c9: $9e
    ei                                            ; $71ca: $fb
    sbc l                                         ; $71cb: $9d
    rst $30                                       ; $71cc: $f7
    ld a, l                                       ; $71cd: $7d
    ld l, a                                       ; $71ce: $6f
    jr c, jr_0da_7210                             ; $71cf: $38 $3f

    scf                                           ; $71d1: $37
    ccf                                           ; $71d2: $3f
    scf                                           ; $71d3: $37
    ccf                                           ; $71d4: $3f
    cpl                                           ; $71d5: $2f
    ccf                                           ; $71d6: $3f
    ld a, [hl-]                                   ; $71d7: $3a
    ccf                                           ; $71d8: $3f

jr_0da_71d9:
    dec [hl]                                      ; $71d9: $35
    dec a                                         ; $71da: $3d
    ld [bc], a                                    ; $71db: $02
    jr jr_0da_71e8                                ; $71dc: $18 $0a

    nop                                           ; $71de: $00
    ld [bc], a                                    ; $71df: $02
    ld e, $86                                     ; $71e0: $1e $86

jr_0da_71e2:
    add hl, de                                    ; $71e2: $19
    rra                                           ; $71e3: $1f
    add hl, de                                    ; $71e4: $19
    rrca                                          ; $71e5: $0f
    ld e, $16                                     ; $71e6: $1e $16

jr_0da_71e8:
    ld [bc], a                                    ; $71e8: $02
    inc e                                         ; $71e9: $1c
    add l                                         ; $71ea: $85
    inc c                                         ; $71eb: $0c
    inc e                                         ; $71ec: $1c
    inc c                                         ; $71ed: $0c
    inc e                                         ; $71ee: $1c
    inc d                                         ; $71ef: $14
    inc bc                                        ; $71f0: $03
    inc e                                         ; $71f1: $1c
    add d                                         ; $71f2: $82
    inc b                                         ; $71f3: $04
    inc e                                         ; $71f4: $1c
    ld [bc], a                                    ; $71f5: $02
    jr jr_0da_7200                                ; $71f6: $18 $08

    nop                                           ; $71f8: $00
    rst $38                                       ; $71f9: $ff
    dec c                                         ; $71fa: $0d
    inc b                                         ; $71fb: $04
    ld [bc], a                                    ; $71fc: $02
    ld de, $fbec                                  ; $71fd: $11 $ec $fb

jr_0da_7200:
    db $e4                                        ; $7200: $e4
    inc bc                                        ; $7201: $03
    push hl                                       ; $7202: $e5
    add hl, bc                                    ; $7203: $09
    db $f4                                        ; $7204: $f4
    inc b                                         ; $7205: $04
    db $f4                                        ; $7206: $f4
    add hl, bc                                    ; $7207: $09
    ld [bc], a                                    ; $7208: $02
    inc bc                                        ; $7209: $03
    sub [hl]                                      ; $720a: $96
    ld b, $07                                     ; $720b: $06 $07
    inc b                                         ; $720d: $04
    rlca                                          ; $720e: $07
    add hl, bc                                    ; $720f: $09

jr_0da_7210:
    rrca                                          ; $7210: $0f
    inc c                                         ; $7211: $0c
    rrca                                          ; $7212: $0f
    ld c, $0f                                     ; $7213: $0e $0f
    jr jr_0da_7236                                ; $7215: $18 $1f

    inc e                                         ; $7217: $1c
    rra                                           ; $7218: $1f
    ld a, [hl-]                                   ; $7219: $3a
    ccf                                           ; $721a: $3f
    ld [hl], b                                    ; $721b: $70
    ld a, a                                       ; $721c: $7f
    cp a                                          ; $721d: $bf
    rst $38                                       ; $721e: $ff
    call z, Call_000_02ff                         ; $721f: $cc $ff $02
    ld a, a                                       ; $7222: $7f
    add [hl]                                      ; $7223: $86
    rrca                                          ; $7224: $0f
    dec bc                                        ; $7225: $0b
    rrca                                          ; $7226: $0f
    inc c                                         ; $7227: $0c
    dec de                                        ; $7228: $1b
    rra                                           ; $7229: $1f
    ld [bc], a                                    ; $722a: $02
    jr nz, @-$7a                                  ; $722b: $20 $84

    db $10                                        ; $722d: $10
    jr nc, @+$2a                                  ; $722e: $30 $28

    jr c, jr_0da_7234                             ; $7230: $38 $02

    jr nc, jr_0da_71c2                            ; $7232: $30 $8e

jr_0da_7234:
    jr jr_0da_726e                                ; $7234: $18 $38

jr_0da_7236:
    ld [$1838], sp                                ; $7236: $08 $38 $18
    jr c, @+$30                                   ; $7239: $38 $2e

    ld a, $06                                     ; $723b: $3e $06
    ld a, $3d                                     ; $723d: $3e $3d
    ccf                                           ; $723f: $3f
    inc bc                                        ; $7240: $03
    ccf                                           ; $7241: $3f
    ld [bc], a                                    ; $7242: $02
    ld a, $9e                                     ; $7243: $3e $9e
    jr c, @+$2a                                   ; $7245: $38 $28

    jr c, jr_0da_7261                             ; $7247: $38 $18

    inc l                                         ; $7249: $2c
    inc a                                         ; $724a: $3c
    ld e, d                                       ; $724b: $5a
    cp $58                                        ; $724c: $fe $58
    ld a, b                                       ; $724e: $78
    ld a, l                                       ; $724f: $7d
    ld a, a                                       ; $7250: $7f
    sbc [hl]                                      ; $7251: $9e
    ei                                            ; $7252: $fb
    sbc l                                         ; $7253: $9d
    rst $30                                       ; $7254: $f7
    ld a, l                                       ; $7255: $7d
    ld l, a                                       ; $7256: $6f
    jr c, jr_0da_7298                             ; $7257: $38 $3f

    scf                                           ; $7259: $37
    ccf                                           ; $725a: $3f
    scf                                           ; $725b: $37
    ccf                                           ; $725c: $3f
    cpl                                           ; $725d: $2f
    ccf                                           ; $725e: $3f
    ld a, [hl-]                                   ; $725f: $3a
    ccf                                           ; $7260: $3f

jr_0da_7261:
    dec [hl]                                      ; $7261: $35
    dec a                                         ; $7262: $3d
    ld [bc], a                                    ; $7263: $02
    jr jr_0da_7270                                ; $7264: $18 $0a

jr_0da_7266:
    nop                                           ; $7266: $00
    ld [bc], a                                    ; $7267: $02
    ld e, $86                                     ; $7268: $1e $86
    add hl, de                                    ; $726a: $19
    rra                                           ; $726b: $1f
    add hl, de                                    ; $726c: $19
    rrca                                          ; $726d: $0f

jr_0da_726e:
    ld e, $16                                     ; $726e: $1e $16

jr_0da_7270:
    ld [bc], a                                    ; $7270: $02
    inc e                                         ; $7271: $1c
    add l                                         ; $7272: $85
    inc c                                         ; $7273: $0c
    inc e                                         ; $7274: $1c
    inc c                                         ; $7275: $0c
    inc e                                         ; $7276: $1c
    inc d                                         ; $7277: $14
    inc bc                                        ; $7278: $03
    inc e                                         ; $7279: $1c
    add d                                         ; $727a: $82
    inc b                                         ; $727b: $04
    inc e                                         ; $727c: $1c
    ld [bc], a                                    ; $727d: $02
    jr jr_0da_7288                                ; $727e: $18 $08

    nop                                           ; $7280: $00
    rst $38                                       ; $7281: $ff
    dec c                                         ; $7282: $0d
    inc b                                         ; $7283: $04
    ld [bc], a                                    ; $7284: $02
    ld de, $fbec                                  ; $7285: $11 $ec $fb

jr_0da_7288:
    db $e4                                        ; $7288: $e4
    inc bc                                        ; $7289: $03
    push hl                                       ; $728a: $e5
    add hl, bc                                    ; $728b: $09
    db $f4                                        ; $728c: $f4
    inc b                                         ; $728d: $04
    db $f4                                        ; $728e: $f4
    add hl, bc                                    ; $728f: $09
    ld [bc], a                                    ; $7290: $02
    inc bc                                        ; $7291: $03
    add a                                         ; $7292: $87
    ld b, $07                                     ; $7293: $06 $07
    inc c                                         ; $7295: $0c
    rrca                                          ; $7296: $0f
    add hl, bc                                    ; $7297: $09

jr_0da_7298:
    rrca                                          ; $7298: $0f
    inc c                                         ; $7299: $0c
    inc bc                                        ; $729a: $03
    rrca                                          ; $729b: $0f
    sub h                                         ; $729c: $94
    jr @+$21                                      ; $729d: $18 $1f

    inc e                                         ; $729f: $1c
    rra                                           ; $72a0: $1f
    ld a, [hl-]                                   ; $72a1: $3a
    ccf                                           ; $72a2: $3f
    ld a, b                                       ; $72a3: $78
    ld a, a                                       ; $72a4: $7f
    cp l                                          ; $72a5: $bd
    rst $38                                       ; $72a6: $ff
    cp a                                          ; $72a7: $bf
    rst $38                                       ; $72a8: $ff
    ld l, h                                       ; $72a9: $6c
    ld a, a                                       ; $72aa: $7f
    dec a                                         ; $72ab: $3d
    ccf                                           ; $72ac: $3f
    rrca                                          ; $72ad: $0f
    ld c, $1b                                     ; $72ae: $0e $1b
    rra                                           ; $72b0: $1f
    ld [bc], a                                    ; $72b1: $02
    jr nz, @-$7d                                  ; $72b2: $20 $81

    db $10                                        ; $72b4: $10
    dec b                                         ; $72b5: $05
    jr nc, jr_0da_7266                            ; $72b6: $30 $ae

    jr @+$3a                                      ; $72b8: $18 $38

    ld [$1838], sp                                ; $72ba: $08 $38 $18
    jr c, jr_0da_72ed                             ; $72bd: $38 $2e

    ld a, $0e                                     ; $72bf: $3e $0e
    ld a, $2d                                     ; $72c1: $3e $2d
    ccf                                           ; $72c3: $3f
    ld de, $063f                                  ; $72c4: $11 $3f $06
    ld a, $2c                                     ; $72c7: $3e $2c
    inc a                                         ; $72c9: $3c
    jr c, jr_0da_72e4                             ; $72ca: $38 $18

    inc l                                         ; $72cc: $2c
    inc a                                         ; $72cd: $3c
    ld e, d                                       ; $72ce: $5a
    cp $58                                        ; $72cf: $fe $58
    ld a, b                                       ; $72d1: $78
    ld a, l                                       ; $72d2: $7d
    ld a, a                                       ; $72d3: $7f
    sbc [hl]                                      ; $72d4: $9e
    ei                                            ; $72d5: $fb
    sbc l                                         ; $72d6: $9d
    rst $30                                       ; $72d7: $f7
    ld a, l                                       ; $72d8: $7d
    ld l, a                                       ; $72d9: $6f
    jr c, jr_0da_731b                             ; $72da: $38 $3f

    scf                                           ; $72dc: $37
    ccf                                           ; $72dd: $3f
    scf                                           ; $72de: $37
    ccf                                           ; $72df: $3f
    cpl                                           ; $72e0: $2f
    ccf                                           ; $72e1: $3f
    ld a, [hl-]                                   ; $72e2: $3a
    ccf                                           ; $72e3: $3f

jr_0da_72e4:
    dec [hl]                                      ; $72e4: $35
    dec a                                         ; $72e5: $3d
    ld [bc], a                                    ; $72e6: $02
    jr jr_0da_72f3                                ; $72e7: $18 $0a

    nop                                           ; $72e9: $00
    ld [bc], a                                    ; $72ea: $02
    ld e, $86                                     ; $72eb: $1e $86

jr_0da_72ed:
    add hl, de                                    ; $72ed: $19
    rra                                           ; $72ee: $1f
    add hl, de                                    ; $72ef: $19
    rrca                                          ; $72f0: $0f
    ld e, $16                                     ; $72f1: $1e $16

jr_0da_72f3:
    ld [bc], a                                    ; $72f3: $02
    inc e                                         ; $72f4: $1c
    add l                                         ; $72f5: $85
    inc c                                         ; $72f6: $0c
    inc e                                         ; $72f7: $1c
    inc c                                         ; $72f8: $0c
    inc e                                         ; $72f9: $1c
    inc d                                         ; $72fa: $14
    inc bc                                        ; $72fb: $03
    inc e                                         ; $72fc: $1c
    add d                                         ; $72fd: $82
    inc b                                         ; $72fe: $04
    inc e                                         ; $72ff: $1c
    ld [bc], a                                    ; $7300: $02
    jr jr_0da_730b                                ; $7301: $18 $08

    nop                                           ; $7303: $00
    rst $38                                       ; $7304: $ff
    dec c                                         ; $7305: $0d
    inc b                                         ; $7306: $04
    ld [bc], a                                    ; $7307: $02
    ld de, $fbec                                  ; $7308: $11 $ec $fb

jr_0da_730b:
    db $e4                                        ; $730b: $e4
    inc bc                                        ; $730c: $03
    push hl                                       ; $730d: $e5
    add hl, bc                                    ; $730e: $09
    db $f4                                        ; $730f: $f4
    inc b                                         ; $7310: $04
    db $f4                                        ; $7311: $f4
    add hl, bc                                    ; $7312: $09
    ld [bc], a                                    ; $7313: $02
    inc bc                                        ; $7314: $03
    sbc [hl]                                      ; $7315: $9e
    ld b, $07                                     ; $7316: $06 $07
    inc b                                         ; $7318: $04
    rlca                                          ; $7319: $07
    add hl, bc                                    ; $731a: $09

jr_0da_731b:
    rrca                                          ; $731b: $0f
    inc c                                         ; $731c: $0c
    rrca                                          ; $731d: $0f
    ld c, $0f                                     ; $731e: $0e $0f
    inc e                                         ; $7320: $1c
    rra                                           ; $7321: $1f
    jr jr_0da_7343                                ; $7322: $18 $1f

    inc a                                         ; $7324: $3c
    ccf                                           ; $7325: $3f
    ld [hl], d                                    ; $7326: $72
    ld a, a                                       ; $7327: $7f
    cp b                                          ; $7328: $b8
    rst $38                                       ; $7329: $ff
    cp a                                          ; $732a: $bf
    rst $38                                       ; $732b: $ff
    ld l, h                                       ; $732c: $6c
    ld a, a                                       ; $732d: $7f
    ccf                                           ; $732e: $3f
    dec sp                                        ; $732f: $3b
    rrca                                          ; $7330: $0f
    ld c, $1b                                     ; $7331: $0e $1b
    rra                                           ; $7333: $1f
    ld [bc], a                                    ; $7334: $02
    jr nz, @-$7a                                  ; $7335: $20 $84

    db $10                                        ; $7337: $10
    jr nc, jr_0da_7362                            ; $7338: $30 $28

    jr c, jr_0da_733e                             ; $733a: $38 $02

    jr nc, @-$50                                  ; $733c: $30 $ae

jr_0da_733e:
    jr @+$3a                                      ; $733e: $18 $38

    ld [$0838], sp                                ; $7340: $08 $38 $08

jr_0da_7343:
    jr c, jr_0da_7363                             ; $7343: $38 $1e

    ld a, $26                                     ; $7345: $3e $26
    ld a, $0d                                     ; $7347: $3e $0d
    ccf                                           ; $7349: $3f
    add hl, sp                                    ; $734a: $39
    ccf                                           ; $734b: $3f
    ld b, $3e                                     ; $734c: $06 $3e
    inc l                                         ; $734e: $2c
    inc a                                         ; $734f: $3c
    jr c, jr_0da_736a                             ; $7350: $38 $18

    inc l                                         ; $7352: $2c
    inc a                                         ; $7353: $3c
    ld e, d                                       ; $7354: $5a
    cp $58                                        ; $7355: $fe $58
    ld a, b                                       ; $7357: $78
    ld a, l                                       ; $7358: $7d
    ld a, a                                       ; $7359: $7f
    sbc [hl]                                      ; $735a: $9e

jr_0da_735b:
    ei                                            ; $735b: $fb
    sbc l                                         ; $735c: $9d
    rst $30                                       ; $735d: $f7
    ld a, l                                       ; $735e: $7d
    ld l, a                                       ; $735f: $6f
    jr c, jr_0da_73a1                             ; $7360: $38 $3f

jr_0da_7362:
    scf                                           ; $7362: $37

jr_0da_7363:
    ccf                                           ; $7363: $3f
    scf                                           ; $7364: $37
    ccf                                           ; $7365: $3f
    cpl                                           ; $7366: $2f
    ccf                                           ; $7367: $3f
    ld a, [hl-]                                   ; $7368: $3a
    ccf                                           ; $7369: $3f

jr_0da_736a:
    dec [hl]                                      ; $736a: $35
    dec a                                         ; $736b: $3d
    ld [bc], a                                    ; $736c: $02
    jr jr_0da_7379                                ; $736d: $18 $0a

    nop                                           ; $736f: $00
    ld [bc], a                                    ; $7370: $02
    ld e, $86                                     ; $7371: $1e $86
    add hl, de                                    ; $7373: $19
    rra                                           ; $7374: $1f
    add hl, de                                    ; $7375: $19
    rrca                                          ; $7376: $0f
    ld e, $16                                     ; $7377: $1e $16

jr_0da_7379:
    ld [bc], a                                    ; $7379: $02
    inc e                                         ; $737a: $1c
    add l                                         ; $737b: $85
    inc c                                         ; $737c: $0c
    inc e                                         ; $737d: $1c
    inc c                                         ; $737e: $0c
    inc e                                         ; $737f: $1c
    inc d                                         ; $7380: $14
    inc bc                                        ; $7381: $03
    inc e                                         ; $7382: $1c
    add d                                         ; $7383: $82
    inc b                                         ; $7384: $04
    inc e                                         ; $7385: $1c
    ld [bc], a                                    ; $7386: $02
    jr jr_0da_7391                                ; $7387: $18 $08

    nop                                           ; $7389: $00
    rst $38                                       ; $738a: $ff
    dec c                                         ; $738b: $0d
    inc b                                         ; $738c: $04
    ld [bc], a                                    ; $738d: $02
    ld de, $fbec                                  ; $738e: $11 $ec $fb

jr_0da_7391:
    db $e4                                        ; $7391: $e4
    inc bc                                        ; $7392: $03
    and $09                                       ; $7393: $e6 $09
    db $f4                                        ; $7395: $f4
    inc b                                         ; $7396: $04
    db $f4                                        ; $7397: $f4
    add hl, bc                                    ; $7398: $09
    ld [bc], a                                    ; $7399: $02
    ld [bc], a                                    ; $739a: $02
    ld [bc], a                                    ; $739b: $02
    rlca                                          ; $739c: $07
    add e                                         ; $739d: $83
    ld [$090f], sp                                ; $739e: $08 $0f $09

jr_0da_73a1:
    inc bc                                        ; $73a1: $03
    rrca                                          ; $73a2: $0f
    sub d                                         ; $73a3: $92
    inc c                                         ; $73a4: $0c
    rrca                                          ; $73a5: $0f
    jr jr_0da_73c7                                ; $73a6: $18 $1f

    inc e                                         ; $73a8: $1c
    rra                                           ; $73a9: $1f
    ld a, [hl-]                                   ; $73aa: $3a
    ccf                                           ; $73ab: $3f
    ld a, b                                       ; $73ac: $78
    ld a, a                                       ; $73ad: $7f
    cp e                                          ; $73ae: $bb
    rst $38                                       ; $73af: $ff
    cp a                                          ; $73b0: $bf
    rst $38                                       ; $73b1: $ff
    ld d, e                                       ; $73b2: $53
    ld a, a                                       ; $73b3: $7f
    inc a                                         ; $73b4: $3c
    ccf                                           ; $73b5: $3f
    ld [bc], a                                    ; $73b6: $02
    rrca                                          ; $73b7: $0f
    add d                                         ; $73b8: $82
    dec de                                        ; $73b9: $1b
    rra                                           ; $73ba: $1f
    ld [bc], a                                    ; $73bb: $02
    jr nz, @+$06                                  ; $73bc: $20 $04

    jr nc, @-$6d                                  ; $73be: $30 $91

jr_0da_73c0:
    db $10                                        ; $73c0: $10
    jr nc, jr_0da_73cb                            ; $73c1: $30 $08

    jr c, jr_0da_73dd                             ; $73c3: $38 $18

    jr c, jr_0da_73f5                             ; $73c5: $38 $2e

jr_0da_73c7:
    ld a, $0e                                     ; $73c7: $3e $0e
    ld a, $2d                                     ; $73c9: $3e $2d

jr_0da_73cb:
    ccf                                           ; $73cb: $3f
    inc sp                                        ; $73cc: $33
    ccf                                           ; $73cd: $3f
    ld b, $3e                                     ; $73ce: $06 $3e
    jr jr_0da_73d5                                ; $73d0: $18 $03

    jr c, jr_0da_735b                             ; $73d2: $38 $87

    inc l                                         ; $73d4: $2c

jr_0da_73d5:
    inc a                                         ; $73d5: $3c
    ld e, d                                       ; $73d6: $5a
    cp $be                                        ; $73d7: $fe $be
    cp $58                                        ; $73d9: $fe $58
    inc bc                                        ; $73db: $03
    ld a, b                                       ; $73dc: $78

jr_0da_73dd:
    sub d                                         ; $73dd: $92
    sbc [hl]                                      ; $73de: $9e
    ei                                            ; $73df: $fb
    sbc l                                         ; $73e0: $9d
    rst $30                                       ; $73e1: $f7
    ld a, l                                       ; $73e2: $7d
    ld l, a                                       ; $73e3: $6f
    jr c, jr_0da_7425                             ; $73e4: $38 $3f

    scf                                           ; $73e6: $37
    ccf                                           ; $73e7: $3f
    scf                                           ; $73e8: $37
    ccf                                           ; $73e9: $3f
    cpl                                           ; $73ea: $2f
    ccf                                           ; $73eb: $3f
    ld a, [hl-]                                   ; $73ec: $3a
    ccf                                           ; $73ed: $3f
    dec [hl]                                      ; $73ee: $35
    dec a                                         ; $73ef: $3d
    ld [bc], a                                    ; $73f0: $02

jr_0da_73f1:
    jr jr_0da_73ff                                ; $73f1: $18 $0c

    nop                                           ; $73f3: $00
    add [hl]                                      ; $73f4: $86

jr_0da_73f5:
    add hl, de                                    ; $73f5: $19
    rra                                           ; $73f6: $1f
    add hl, de                                    ; $73f7: $19
    rrca                                          ; $73f8: $0f
    ld e, $16                                     ; $73f9: $1e $16
    ld [bc], a                                    ; $73fb: $02
    inc e                                         ; $73fc: $1c
    add l                                         ; $73fd: $85
    inc c                                         ; $73fe: $0c

jr_0da_73ff:
    inc e                                         ; $73ff: $1c
    inc c                                         ; $7400: $0c
    inc e                                         ; $7401: $1c
    inc d                                         ; $7402: $14
    inc bc                                        ; $7403: $03
    inc e                                         ; $7404: $1c
    add d                                         ; $7405: $82
    inc b                                         ; $7406: $04
    inc e                                         ; $7407: $1c
    ld [bc], a                                    ; $7408: $02
    jr jr_0da_7413                                ; $7409: $18 $08

    nop                                           ; $740b: $00
    rst $38                                       ; $740c: $ff
    dec c                                         ; $740d: $0d
    inc b                                         ; $740e: $04
    ld [bc], a                                    ; $740f: $02
    ld de, $fbec                                  ; $7410: $11 $ec $fb

jr_0da_7413:
    db $e4                                        ; $7413: $e4
    inc bc                                        ; $7414: $03
    push hl                                       ; $7415: $e5
    add hl, bc                                    ; $7416: $09
    db $f4                                        ; $7417: $f4
    inc b                                         ; $7418: $04
    db $f4                                        ; $7419: $f4
    add hl, bc                                    ; $741a: $09
    ld [bc], a                                    ; $741b: $02
    inc bc                                        ; $741c: $03
    add a                                         ; $741d: $87
    ld b, $07                                     ; $741e: $06 $07
    inc c                                         ; $7420: $0c
    rrca                                          ; $7421: $0f
    add hl, bc                                    ; $7422: $09
    rrca                                          ; $7423: $0f
    inc c                                         ; $7424: $0c

jr_0da_7425:
    inc bc                                        ; $7425: $03
    rrca                                          ; $7426: $0f
    sub h                                         ; $7427: $94
    jr @+$21                                      ; $7428: $18 $1f

    inc e                                         ; $742a: $1c
    rra                                           ; $742b: $1f
    ld a, [hl-]                                   ; $742c: $3a
    ccf                                           ; $742d: $3f
    ld a, b                                       ; $742e: $78
    ld a, a                                       ; $742f: $7f
    cp l                                          ; $7430: $bd
    rst $38                                       ; $7431: $ff
    cp a                                          ; $7432: $bf
    rst $38                                       ; $7433: $ff
    ld l, h                                       ; $7434: $6c
    ld a, a                                       ; $7435: $7f
    dec a                                         ; $7436: $3d
    ccf                                           ; $7437: $3f
    rrca                                          ; $7438: $0f
    ld c, $1b                                     ; $7439: $0e $1b
    rra                                           ; $743b: $1f
    ld [bc], a                                    ; $743c: $02
    jr nz, jr_0da_73c0                            ; $743d: $20 $81

    db $10                                        ; $743f: $10
    dec b                                         ; $7440: $05
    jr nc, jr_0da_73f1                            ; $7441: $30 $ae

    jr @+$3a                                      ; $7443: $18 $38

    ld [$1838], sp                                ; $7445: $08 $38 $18
    jr c, jr_0da_7478                             ; $7448: $38 $2e

    ld a, $0e                                     ; $744a: $3e $0e
    ld a, $2d                                     ; $744c: $3e $2d
    ccf                                           ; $744e: $3f
    ld de, $063f                                  ; $744f: $11 $3f $06
    ld a, $2c                                     ; $7452: $3e $2c
    inc a                                         ; $7454: $3c
    jr c, jr_0da_746f                             ; $7455: $38 $18

    inc l                                         ; $7457: $2c
    inc a                                         ; $7458: $3c
    ld e, d                                       ; $7459: $5a
    cp $58                                        ; $745a: $fe $58
    ld a, b                                       ; $745c: $78
    ld a, l                                       ; $745d: $7d
    ld a, a                                       ; $745e: $7f
    sbc [hl]                                      ; $745f: $9e
    ei                                            ; $7460: $fb
    sbc l                                         ; $7461: $9d
    rst $30                                       ; $7462: $f7
    ld a, l                                       ; $7463: $7d
    ld l, a                                       ; $7464: $6f
    jr c, jr_0da_74a6                             ; $7465: $38 $3f

    scf                                           ; $7467: $37
    ccf                                           ; $7468: $3f
    scf                                           ; $7469: $37
    ccf                                           ; $746a: $3f
    cpl                                           ; $746b: $2f
    ccf                                           ; $746c: $3f
    ld a, [hl-]                                   ; $746d: $3a
    ccf                                           ; $746e: $3f

jr_0da_746f:
    dec [hl]                                      ; $746f: $35
    dec a                                         ; $7470: $3d
    ld [bc], a                                    ; $7471: $02
    jr jr_0da_747e                                ; $7472: $18 $0a

    nop                                           ; $7474: $00
    ld [bc], a                                    ; $7475: $02
    ld e, $86                                     ; $7476: $1e $86

jr_0da_7478:
    add hl, de                                    ; $7478: $19
    rra                                           ; $7479: $1f
    add hl, de                                    ; $747a: $19
    rrca                                          ; $747b: $0f
    ld e, $16                                     ; $747c: $1e $16

jr_0da_747e:
    ld [bc], a                                    ; $747e: $02
    inc e                                         ; $747f: $1c
    add l                                         ; $7480: $85
    inc c                                         ; $7481: $0c
    inc e                                         ; $7482: $1c
    inc c                                         ; $7483: $0c
    inc e                                         ; $7484: $1c
    inc d                                         ; $7485: $14
    inc bc                                        ; $7486: $03
    inc e                                         ; $7487: $1c
    add d                                         ; $7488: $82
    inc b                                         ; $7489: $04
    inc e                                         ; $748a: $1c
    ld [bc], a                                    ; $748b: $02
    jr jr_0da_7496                                ; $748c: $18 $08

    nop                                           ; $748e: $00
    rst $38                                       ; $748f: $ff
    dec c                                         ; $7490: $0d
    inc b                                         ; $7491: $04
    ld hl, sp+$07                                 ; $7492: $f8 $07
    di                                            ; $7494: $f3
    ld [bc], a                                    ; $7495: $02

jr_0da_7496:
    db $eb                                        ; $7496: $eb
    ei                                            ; $7497: $fb
    db $ec                                        ; $7498: $ec
    cp $fb                                        ; $7499: $fe $fb
    ld a, [$fdfb]                                 ; $749b: $fa $fb $fd
    ld [bc], a                                    ; $749e: $02
    add hl, de                                    ; $749f: $19
    sbc [hl]                                      ; $74a0: $9e
    rla                                           ; $74a1: $17
    rra                                           ; $74a2: $1f
    ld a, [hl]                                    ; $74a3: $7e
    ld a, a                                       ; $74a4: $7f
    ld e, a                                       ; $74a5: $5f

jr_0da_74a6:
    ld a, a                                       ; $74a6: $7f
    rst $18                                       ; $74a7: $df
    db $fc                                        ; $74a8: $fc
    rst $38                                       ; $74a9: $ff
    ei                                            ; $74aa: $fb
    ld [hl], a                                    ; $74ab: $77
    ld a, l                                       ; $74ac: $7d
    ld a, a                                       ; $74ad: $7f
    ld [hl], l                                    ; $74ae: $75
    ccf                                           ; $74af: $3f
    dec hl                                        ; $74b0: $2b
    ccf                                           ; $74b1: $3f
    jr nc, jr_0da_74f3                            ; $74b2: $30 $3f

    add hl, sp                                    ; $74b4: $39
    ld d, [hl]                                    ; $74b5: $56
    ld a, [hl]                                    ; $74b6: $7e
    xor d                                         ; $74b7: $aa
    cp $5d                                        ; $74b8: $fe $5d
    ld a, a                                       ; $74ba: $7f
    sbc e                                         ; $74bb: $9b
    rst $38                                       ; $74bc: $ff
    cp l                                          ; $74bd: $bd
    rst $38                                       ; $74be: $ff
    ld [bc], a                                    ; $74bf: $02
    inc b                                         ; $74c0: $04
    add d                                         ; $74c1: $82
    inc bc                                        ; $74c2: $03
    rlca                                          ; $74c3: $07
    ld [bc], a                                    ; $74c4: $02
    ld b, $02                                     ; $74c5: $06 $02
    inc b                                         ; $74c7: $04
    add d                                         ; $74c8: $82
    ld b, $02                                     ; $74c9: $06 $02
    dec b                                         ; $74cb: $05
    ld b, $81                                     ; $74cc: $06 $81
    ld [bc], a                                    ; $74ce: $02
    ld [bc], a                                    ; $74cf: $02
    inc b                                         ; $74d0: $04
    inc c                                         ; $74d1: $0c
    nop                                           ; $74d2: $00
    sub b                                         ; $74d3: $90
    db $ec                                        ; $74d4: $ec
    db $fc                                        ; $74d5: $fc
    sub b                                         ; $74d6: $90
    ldh a, [$7d]                                  ; $74d7: $f0 $7d
    ld c, a                                       ; $74d9: $4f
    ld a, l                                       ; $74da: $7d
    ld e, a                                       ; $74db: $5f
    ld a, e                                       ; $74dc: $7b
    ld l, a                                       ; $74dd: $6f
    ld a, a                                       ; $74de: $7f
    ld [hl], a                                    ; $74df: $77
    xor [hl]                                      ; $74e0: $ae
    cp $f4                                        ; $74e1: $fe $f4
    db $fc                                        ; $74e3: $fc
    ld [bc], a                                    ; $74e4: $02
    ld a, [hl]                                    ; $74e5: $7e
    ld [de], a                                    ; $74e6: $12
    nop                                           ; $74e7: $00
    ld [bc], a                                    ; $74e8: $02
    ld b, $02                                     ; $74e9: $06 $02
    rlca                                          ; $74eb: $07
    add h                                         ; $74ec: $84
    dec b                                         ; $74ed: $05
    rlca                                          ; $74ee: $07
    inc bc                                        ; $74ef: $03
    rlca                                          ; $74f0: $07
    ld [bc], a                                    ; $74f1: $02
    inc b                                         ; $74f2: $04

jr_0da_74f3:
    inc d                                         ; $74f3: $14
    nop                                           ; $74f4: $00
    rst $38                                       ; $74f5: $ff
    dec c                                         ; $74f6: $0d
    inc b                                         ; $74f7: $04
    ld hl, sp+$07                                 ; $74f8: $f8 $07
    di                                            ; $74fa: $f3
    ld [bc], a                                    ; $74fb: $02
    db $eb                                        ; $74fc: $eb
    db $fc                                        ; $74fd: $fc
    db $eb                                        ; $74fe: $eb
    rst $38                                       ; $74ff: $ff
    ei                                            ; $7500: $fb
    db $fc                                        ; $7501: $fc
    ei                                            ; $7502: $fb
    db $fd                                        ; $7503: $fd
    ld [bc], a                                    ; $7504: $02
    ld c, $9e                                     ; $7505: $0e $9e
    dec sp                                        ; $7507: $3b
    ccf                                           ; $7508: $3f
    ld e, a                                       ; $7509: $5f
    ld a, a                                       ; $750a: $7f
    ld e, a                                       ; $750b: $5f
    ld a, a                                       ; $750c: $7f
    rst $38                                       ; $750d: $ff
    di                                            ; $750e: $f3
    rst $38                                       ; $750f: $ff
    or $7f                                        ; $7510: $f6 $7f
    ld a, c                                       ; $7512: $79
    ld a, a                                       ; $7513: $7f
    ld c, c                                       ; $7514: $49
    ccf                                           ; $7515: $3f
    ld [hl], $1f                                  ; $7516: $36 $1f
    ld de, $382f                                  ; $7518: $11 $2f $38
    ld e, e                                       ; $751b: $5b
    ld a, a                                       ; $751c: $7f
    dec l                                         ; $751d: $2d
    ccf                                           ; $751e: $3f
    ld e, d                                       ; $751f: $5a
    ld a, a                                       ; $7520: $7f
    adc l                                         ; $7521: $8d
    rst $38                                       ; $7522: $ff
    ld e, a                                       ; $7523: $5f
    ld [hl], e                                    ; $7524: $73
    inc b                                         ; $7525: $04
    inc b                                         ; $7526: $04
    add d                                         ; $7527: $82
    ld [bc], a                                    ; $7528: $02
    ld b, $02                                     ; $7529: $06 $02
    rlca                                          ; $752b: $07
    add d                                         ; $752c: $82
    ld b, $02                                     ; $752d: $06 $02
    inc bc                                        ; $752f: $03
    ld b, $83                                     ; $7530: $06 $83
    ld [bc], a                                    ; $7532: $02
    ld b, $02                                     ; $7533: $06 $02
    inc b                                         ; $7535: $04
    ld b, $02                                     ; $7536: $06 $02
    inc b                                         ; $7538: $04
    inc b                                         ; $7539: $04
    nop                                           ; $753a: $00
    inc b                                         ; $753b: $04
    inc b                                         ; $753c: $04
    ld [bc], a                                    ; $753d: $02
    ld b, $8a                                     ; $753e: $06 $8a
    ld a, l                                       ; $7540: $7d
    ld h, a                                       ; $7541: $67
    ld l, l                                       ; $7542: $6d
    ld a, a                                       ; $7543: $7f
    ld e, e                                       ; $7544: $5b
    ld a, a                                       ; $7545: $7f
    rst $30                                       ; $7546: $f7
    rst $38                                       ; $7547: $ff
    rst $08                                       ; $7548: $cf
    rst $38                                       ; $7549: $ff
    ld [bc], a                                    ; $754a: $02
    ld a, h                                       ; $754b: $7c
    add d                                         ; $754c: $82
    ld d, b                                       ; $754d: $50
    ld [hl], b                                    ; $754e: $70
    ld [bc], a                                    ; $754f: $02
    jr nc, jr_0da_7562                            ; $7550: $30 $10

    nop                                           ; $7552: $00
    inc b                                         ; $7553: $04
    ld bc, $0081                                  ; $7554: $01 $81 $00
    rlca                                          ; $7557: $07
    ld bc, $0014                                  ; $7558: $01 $14 $00
    rst $38                                       ; $755b: $ff
    dec c                                         ; $755c: $0d
    inc b                                         ; $755d: $04
    ld hl, sp+$07                                 ; $755e: $f8 $07
    di                                            ; $7560: $f3
    ld [bc], a                                    ; $7561: $02

jr_0da_7562:
    db $ec                                        ; $7562: $ec
    db $fc                                        ; $7563: $fc
    db $ec                                        ; $7564: $ec
    rst $38                                       ; $7565: $ff
    db $fc                                        ; $7566: $fc
    db $fd                                        ; $7567: $fd
    db $fc                                        ; $7568: $fc
    cp $02                                        ; $7569: $fe $02
    ld c, $9e                                     ; $756b: $0e $9e
    dec sp                                        ; $756d: $3b
    ccf                                           ; $756e: $3f
    ld e, a                                       ; $756f: $5f
    ld a, a                                       ; $7570: $7f
    ld e, a                                       ; $7571: $5f
    ld a, a                                       ; $7572: $7f
    rst $38                                       ; $7573: $ff
    di                                            ; $7574: $f3
    rst $38                                       ; $7575: $ff
    or $7f                                        ; $7576: $f6 $7f
    ld a, c                                       ; $7578: $79
    ld a, a                                       ; $7579: $7f
    ld c, c                                       ; $757a: $49
    ccf                                           ; $757b: $3f
    ld [hl], $1f                                  ; $757c: $36 $1f
    ld de, $382f                                  ; $757e: $11 $2f $38
    ld e, l                                       ; $7581: $5d
    ld a, a                                       ; $7582: $7f
    ld [hl], $3f                                  ; $7583: $36 $3f
    daa                                           ; $7585: $27
    ccf                                           ; $7586: $3f
    jr nc, jr_0da_75c8                            ; $7587: $30 $3f

    ld a, l                                       ; $7589: $7d
    ld a, a                                       ; $758a: $7f
    inc b                                         ; $758b: $04
    inc b                                         ; $758c: $04
    add d                                         ; $758d: $82
    ld [bc], a                                    ; $758e: $02
    ld b, $02                                     ; $758f: $06 $02
    rlca                                          ; $7591: $07
    add d                                         ; $7592: $82
    ld b, $02                                     ; $7593: $06 $02
    inc bc                                        ; $7595: $03
    ld b, $83                                     ; $7596: $06 $83
    ld [bc], a                                    ; $7598: $02
    ld b, $02                                     ; $7599: $06 $02
    inc b                                         ; $759b: $04
    ld b, $02                                     ; $759c: $06 $02
    inc b                                         ; $759e: $04
    ld [bc], a                                    ; $759f: $02
    nop                                           ; $75a0: $00
    inc b                                         ; $75a1: $04
    inc b                                         ; $75a2: $04
    ld [bc], a                                    ; $75a3: $02
    ld b, $87                                     ; $75a4: $06 $87
    rlca                                          ; $75a6: $07
    ld bc, $feff                                  ; $75a7: $01 $ff $fe
    rst $08                                       ; $75aa: $cf
    rst $38                                       ; $75ab: $ff
    ei                                            ; $75ac: $fb
    inc bc                                        ; $75ad: $03
    rst $38                                       ; $75ae: $ff
    add h                                         ; $75af: $84
    ld h, a                                       ; $75b0: $67
    ld a, a                                       ; $75b1: $7f
    ld c, b                                       ; $75b2: $48
    ld a, b                                       ; $75b3: $78
    ld [bc], a                                    ; $75b4: $02
    jr nc, jr_0da_75c9                            ; $75b5: $30 $12

    nop                                           ; $75b7: $00
    ld [bc], a                                    ; $75b8: $02
    ld bc, $001e                                  ; $75b9: $01 $1e $00
    rst $38                                       ; $75bc: $ff
    dec c                                         ; $75bd: $0d
    inc b                                         ; $75be: $04
    ld hl, sp+$07                                 ; $75bf: $f8 $07
    di                                            ; $75c1: $f3
    ld [bc], a                                    ; $75c2: $02
    db $ec                                        ; $75c3: $ec
    db $fd                                        ; $75c4: $fd
    db $ed                                        ; $75c5: $ed
    nop                                           ; $75c6: $00
    db $fc                                        ; $75c7: $fc

jr_0da_75c8:
    db $fd                                        ; $75c8: $fd

jr_0da_75c9:
    db $fc                                        ; $75c9: $fc
    cp $02                                        ; $75ca: $fe $02
    add hl, de                                    ; $75cc: $19
    sub h                                         ; $75cd: $94
    rla                                           ; $75ce: $17
    rra                                           ; $75cf: $1f
    ld a, [hl]                                    ; $75d0: $7e
    ld a, a                                       ; $75d1: $7f
    ld e, a                                       ; $75d2: $5f
    ld a, a                                       ; $75d3: $7f
    rst $18                                       ; $75d4: $df
    db $fc                                        ; $75d5: $fc
    rst $38                                       ; $75d6: $ff
    ei                                            ; $75d7: $fb
    ld [hl], a                                    ; $75d8: $77
    ld a, l                                       ; $75d9: $7d
    ld a, a                                       ; $75da: $7f
    ld [hl], l                                    ; $75db: $75
    ccf                                           ; $75dc: $3f
    dec hl                                        ; $75dd: $2b
    ld a, a                                       ; $75de: $7f
    ld [hl], b                                    ; $75df: $70
    sbc a                                         ; $75e0: $9f
    ld sp, hl                                     ; $75e1: $f9
    ld [bc], a                                    ; $75e2: $02
    ld a, [hl]                                    ; $75e3: $7e
    adc b                                         ; $75e4: $88
    dec hl                                        ; $75e5: $2b
    ccf                                           ; $75e6: $3f
    dec l                                         ; $75e7: $2d
    ccf                                           ; $75e8: $3f
    ld h, d                                       ; $75e9: $62
    ld a, a                                       ; $75ea: $7f
    ld [hl], c                                    ; $75eb: $71
    ld a, a                                       ; $75ec: $7f
    ld [bc], a                                    ; $75ed: $02
    inc b                                         ; $75ee: $04
    add d                                         ; $75ef: $82
    inc bc                                        ; $75f0: $03
    rlca                                          ; $75f1: $07
    ld [bc], a                                    ; $75f2: $02
    ld b, $02                                     ; $75f3: $06 $02
    inc b                                         ; $75f5: $04
    add d                                         ; $75f6: $82
    ld b, $02                                     ; $75f7: $06 $02
    dec b                                         ; $75f9: $05
    ld b, $81                                     ; $75fa: $06 $81
    ld [bc], a                                    ; $75fc: $02
    ld [bc], a                                    ; $75fd: $02
    inc b                                         ; $75fe: $04
    inc b                                         ; $75ff: $04
    nop                                           ; $7600: $00
    inc b                                         ; $7601: $04
    inc b                                         ; $7602: $04
    ld [bc], a                                    ; $7603: $02
    ld b, $84                                     ; $7604: $06 $84
    rlca                                          ; $7606: $07
    ld bc, $faee                                  ; $7607: $01 $ee $fa
    ld [bc], a                                    ; $760a: $02
    ldh [$88], a                                  ; $760b: $e0 $88
    rst $20                                       ; $760d: $e7
    rst $38                                       ; $760e: $ff
    rst $18                                       ; $760f: $df
    rst $38                                       ; $7610: $ff
    ld a, c                                       ; $7611: $79
    ld a, a                                       ; $7612: $7f
    ld [hl-], a                                   ; $7613: $32
    ld a, $02                                     ; $7614: $3e $02
    inc e                                         ; $7616: $1c
    ld d, $00                                     ; $7617: $16 $00
    ld [bc], a                                    ; $7619: $02
    ld bc, $001c                                  ; $761a: $01 $1c $00
    rst $38                                       ; $761d: $ff
    dec c                                         ; $761e: $0d
    inc b                                         ; $761f: $04
    ld hl, sp+$07                                 ; $7620: $f8 $07
    di                                            ; $7622: $f3
    ld [bc], a                                    ; $7623: $02
    db $eb                                        ; $7624: $eb
    db $fd                                        ; $7625: $fd
    db $ec                                        ; $7626: $ec
    nop                                           ; $7627: $00
    ei                                            ; $7628: $fb
    db $fd                                        ; $7629: $fd
    ei                                            ; $762a: $fb
    rst $38                                       ; $762b: $ff
    ld [bc], a                                    ; $762c: $02
    add hl, de                                    ; $762d: $19
    sbc [hl]                                      ; $762e: $9e
    rla                                           ; $762f: $17
    rra                                           ; $7630: $1f
    ld a, [hl]                                    ; $7631: $7e
    ld a, a                                       ; $7632: $7f
    ld e, a                                       ; $7633: $5f
    ld a, a                                       ; $7634: $7f
    rst $28                                       ; $7635: $ef
    cp $ff                                        ; $7636: $fe $ff
    ld sp, hl                                     ; $7638: $f9
    ld a, e                                       ; $7639: $7b
    ld a, [hl]                                    ; $763a: $7e
    ld a, a                                       ; $763b: $7f
    ld [hl], d                                    ; $763c: $72
    ccf                                           ; $763d: $3f
    dec hl                                        ; $763e: $2b
    rra                                           ; $763f: $1f
    db $10                                        ; $7640: $10
    ccf                                           ; $7641: $3f
    add hl, sp                                    ; $7642: $39
    sub $fe                                       ; $7643: $d6 $fe
    xor l                                         ; $7645: $ad
    rst $38                                       ; $7646: $ff
    ld l, e                                       ; $7647: $6b
    ld a, a                                       ; $7648: $7f
    add hl, hl                                    ; $7649: $29
    ccf                                           ; $764a: $3f
    ld l, a                                       ; $764b: $6f
    ld a, a                                       ; $764c: $7f
    ld [bc], a                                    ; $764d: $02
    inc b                                         ; $764e: $04
    add d                                         ; $764f: $82
    inc bc                                        ; $7650: $03
    rlca                                          ; $7651: $07
    ld [bc], a                                    ; $7652: $02
    ld b, $02                                     ; $7653: $06 $02
    inc b                                         ; $7655: $04
    add d                                         ; $7656: $82
    ld b, $02                                     ; $7657: $06 $02
    ld [bc], a                                    ; $7659: $02
    inc b                                         ; $765a: $04
    inc bc                                        ; $765b: $03
    ld b, $81                                     ; $765c: $06 $81
    ld [bc], a                                    ; $765e: $02
    ld [bc], a                                    ; $765f: $02
    inc b                                         ; $7660: $04
    ld b, $00                                     ; $7661: $06 $00
    ld [bc], a                                    ; $7663: $02
    inc b                                         ; $7664: $04
    add c                                         ; $7665: $81
    ld b, $02                                     ; $7666: $06 $02
    ld [bc], a                                    ; $7668: $02
    add e                                         ; $7669: $83
    ld b, $97                                     ; $766a: $06 $97
    ld sp, hl                                     ; $766c: $f9
    ld [bc], a                                    ; $766d: $02
    ld h, b                                       ; $766e: $60
    add [hl]                                      ; $766f: $86
    ld [hl], b                                    ; $7670: $70
    ld a, a                                       ; $7671: $7f
    cp $ff                                        ; $7672: $fe $ff
    rst $28                                       ; $7674: $ef
    rst $38                                       ; $7675: $ff
    ld [bc], a                                    ; $7676: $02
    ld a, a                                       ; $7677: $7f
    add d                                         ; $7678: $82
    dec a                                         ; $7679: $3d
    ccf                                           ; $767a: $3f
    ld [bc], a                                    ; $767b: $02
    rlca                                          ; $767c: $07
    ld [bc], a                                    ; $767d: $02
    ld [bc], a                                    ; $767e: $02
    ld [de], a                                    ; $767f: $12
    nop                                           ; $7680: $00
    add d                                         ; $7681: $82
    inc bc                                        ; $7682: $03
    ld bc, $0202                                  ; $7683: $01 $02 $02
    ld a, [de]                                    ; $7686: $1a
    nop                                           ; $7687: $00
    rst $38                                       ; $7688: $ff
    dec c                                         ; $7689: $0d
    inc b                                         ; $768a: $04
    ld hl, sp+$07                                 ; $768b: $f8 $07
    di                                            ; $768d: $f3
    ld [bc], a                                    ; $768e: $02
    db $eb                                        ; $768f: $eb
    db $fd                                        ; $7690: $fd
    db $ec                                        ; $7691: $ec
    nop                                           ; $7692: $00
    ei                                            ; $7693: $fb
    db $fd                                        ; $7694: $fd
    ei                                            ; $7695: $fb
    rst $38                                       ; $7696: $ff
    ld [bc], a                                    ; $7697: $02
    add hl, de                                    ; $7698: $19
    sbc [hl]                                      ; $7699: $9e
    rla                                           ; $769a: $17
    rra                                           ; $769b: $1f
    ld a, [hl]                                    ; $769c: $7e
    ld a, a                                       ; $769d: $7f
    ld e, a                                       ; $769e: $5f
    ld a, a                                       ; $769f: $7f
    rst $28                                       ; $76a0: $ef
    cp $ff                                        ; $76a1: $fe $ff
    ld sp, hl                                     ; $76a3: $f9
    ld a, e                                       ; $76a4: $7b
    ld a, [hl]                                    ; $76a5: $7e
    ld a, a                                       ; $76a6: $7f
    ld [hl], d                                    ; $76a7: $72
    ccf                                           ; $76a8: $3f
    dec hl                                        ; $76a9: $2b
    rra                                           ; $76aa: $1f
    db $10                                        ; $76ab: $10
    ccf                                           ; $76ac: $3f
    add hl, sp                                    ; $76ad: $39
    ld d, [hl]                                    ; $76ae: $56
    ld a, [hl]                                    ; $76af: $7e
    xor [hl]                                      ; $76b0: $ae
    cp $6b                                        ; $76b1: $fe $6b
    ld a, a                                       ; $76b3: $7f
    dec l                                         ; $76b4: $2d
    ccf                                           ; $76b5: $3f
    cpl                                           ; $76b6: $2f
    ccf                                           ; $76b7: $3f
    ld [bc], a                                    ; $76b8: $02
    inc b                                         ; $76b9: $04
    add d                                         ; $76ba: $82
    inc bc                                        ; $76bb: $03
    rlca                                          ; $76bc: $07
    ld [bc], a                                    ; $76bd: $02
    ld b, $02                                     ; $76be: $06 $02
    inc b                                         ; $76c0: $04
    add d                                         ; $76c1: $82
    ld b, $02                                     ; $76c2: $06 $02
    ld [bc], a                                    ; $76c4: $02
    inc b                                         ; $76c5: $04
    inc bc                                        ; $76c6: $03
    ld b, $81                                     ; $76c7: $06 $81
    ld [bc], a                                    ; $76c9: $02
    ld [bc], a                                    ; $76ca: $02
    inc b                                         ; $76cb: $04
    ld b, $00                                     ; $76cc: $06 $00
    ld [bc], a                                    ; $76ce: $02
    inc b                                         ; $76cf: $04
    add c                                         ; $76d0: $81
    ld b, $02                                     ; $76d1: $06 $02
    ld [bc], a                                    ; $76d3: $02
    add e                                         ; $76d4: $83
    ld b, $97                                     ; $76d5: $06 $97
    ld sp, hl                                     ; $76d7: $f9
    ld [bc], a                                    ; $76d8: $02
    ld h, b                                       ; $76d9: $60
    add [hl]                                      ; $76da: $86
    ld [hl], b                                    ; $76db: $70
    ld a, a                                       ; $76dc: $7f
    cp $ff                                        ; $76dd: $fe $ff
    rst $30                                       ; $76df: $f7
    rst $38                                       ; $76e0: $ff
    ld [bc], a                                    ; $76e1: $02
    ld a, a                                       ; $76e2: $7f
    ld [bc], a                                    ; $76e3: $02
    ccf                                           ; $76e4: $3f
    ld d, $00                                     ; $76e5: $16 $00
    add d                                         ; $76e7: $82
    inc bc                                        ; $76e8: $03
    ld bc, $0202                                  ; $76e9: $01 $02 $02
    ld a, [de]                                    ; $76ec: $1a
    nop                                           ; $76ed: $00
    rst $38                                       ; $76ee: $ff
    dec c                                         ; $76ef: $0d
    inc b                                         ; $76f0: $04
    ld hl, sp+$09                                 ; $76f1: $f8 $09
    ld a, [c]                                     ; $76f3: $f2
    inc bc                                        ; $76f4: $03
    db $fc                                        ; $76f5: $fc
    db $f4                                        ; $76f6: $f4
    di                                            ; $76f7: $f3
    db $fc                                        ; $76f8: $fc
    pop af                                        ; $76f9: $f1
    inc b                                         ; $76fa: $04
    ld bc, $02f9                                  ; $76fb: $01 $f9 $02
    inc bc                                        ; $76fe: $03
    sub b                                         ; $76ff: $90
    dec b                                         ; $7700: $05
    rlca                                          ; $7701: $07
    dec bc                                        ; $7702: $0b
    rrca                                          ; $7703: $0f
    ld e, e                                       ; $7704: $5b
    ld e, a                                       ; $7705: $5f
    sbc $ae                                       ; $7706: $de $ae
    ld h, c                                       ; $7708: $61
    ld e, a                                       ; $7709: $5f
    push de                                       ; $770a: $d5
    cp l                                          ; $770b: $bd
    ld l, d                                       ; $770c: $6a
    ld l, e                                       ; $770d: $6b
    ld [bc], a                                    ; $770e: $02
    inc bc                                        ; $770f: $03
    ld [bc], a                                    ; $7710: $02
    ld bc, $000c                                  ; $7711: $01 $0c $00
    ld [bc], a                                    ; $7714: $02
    inc bc                                        ; $7715: $03
    add d                                         ; $7716: $82
    ld [bc], a                                    ; $7717: $02
    inc bc                                        ; $7718: $03
    ld [bc], a                                    ; $7719: $02
    rlca                                          ; $771a: $07
    inc b                                         ; $771b: $04
    inc bc                                        ; $771c: $03
    ld [bc], a                                    ; $771d: $02
    ccf                                           ; $771e: $3f
    add d                                         ; $771f: $82
    inc hl                                        ; $7720: $23
    ccf                                           ; $7721: $3f
    ld [bc], a                                    ; $7722: $02
    rra                                           ; $7723: $1f
    sub b                                         ; $7724: $90
    ld [hl], h                                    ; $7725: $74
    ld a, a                                       ; $7726: $7f
    xor l                                         ; $7727: $ad
    rst $38                                       ; $7728: $ff
    db $fd                                        ; $7729: $fd
    rst $38                                       ; $772a: $ff
    db $fc                                        ; $772b: $fc
    rst $38                                       ; $772c: $ff
    cp $ff                                        ; $772d: $fe $ff
    rst $18                                       ; $772f: $df
    rst $38                                       ; $7730: $ff
    xor $fe                                       ; $7731: $ee $fe
    sub h                                         ; $7733: $94
    db $fc                                        ; $7734: $fc
    ld [bc], a                                    ; $7735: $02
    ret nc                                        ; $7736: $d0

    add h                                         ; $7737: $84
    cp b                                          ; $7738: $b8
    ld hl, sp-$1a                                 ; $7739: $f8 $e6
    cp $03                                        ; $773b: $fe $03
    db $fc                                        ; $773d: $fc
    adc e                                         ; $773e: $8b
    call nc, $e8f8                                ; $773f: $d4 $f8 $e8
    call c, $fc6c                                 ; $7742: $dc $6c $fc
    sub h                                         ; $7745: $94
    ld hl, sp+$08                                 ; $7746: $f8 $08
    ldh a, [$90]                                  ; $7748: $f0 $90
    ld [bc], a                                    ; $774a: $02
    ldh [rSC], a                                  ; $774b: $e0 $02
    ret nz                                        ; $774d: $c0

    add [hl]                                      ; $774e: $86
    or a                                          ; $774f: $b7
    rst $30                                       ; $7750: $f7
    ld a, a                                       ; $7751: $7f
    rst $08                                       ; $7752: $cf
    cp $d2                                        ; $7753: $fe $d2
    ld [bc], a                                    ; $7755: $02
    db $ec                                        ; $7756: $ec
    inc b                                         ; $7757: $04
    nop                                           ; $7758: $00
    ld [bc], a                                    ; $7759: $02
    rra                                           ; $775a: $1f
    add d                                         ; $775b: $82
    ld a, [de]                                    ; $775c: $1a
    ld e, $02                                     ; $775d: $1e $02
    inc b                                         ; $775f: $04
    ld d, $00                                     ; $7760: $16 $00
    rst $38                                       ; $7762: $ff
    dec c                                         ; $7763: $0d
    inc b                                         ; $7764: $04
    ld hl, sp+$09                                 ; $7765: $f8 $09
    ld a, [c]                                     ; $7767: $f2
    inc bc                                        ; $7768: $03
    ld a, [$f1f4]                                 ; $7769: $fa $f4 $f1
    db $fc                                        ; $776c: $fc
    pop af                                        ; $776d: $f1
    inc b                                         ; $776e: $04
    ld bc, $02fb                                  ; $776f: $01 $fb $02
    inc bc                                        ; $7772: $03
    add l                                         ; $7773: $85
    dec b                                         ; $7774: $05
    rlca                                          ; $7775: $07
    dec bc                                        ; $7776: $0b
    rrca                                          ; $7777: $0f
    dec bc                                        ; $7778: $0b
    inc bc                                        ; $7779: $03
    rrca                                          ; $777a: $0f
    ld [bc], a                                    ; $777b: $02
    ld d, c                                       ; $777c: $51
    adc d                                         ; $777d: $8a
    sbc $ae                                       ; $777e: $de $ae
    ld a, c                                       ; $7780: $79
    ld d, a                                       ; $7781: $57
    push de                                       ; $7782: $d5
    cp l                                          ; $7783: $bd
    ld l, d                                       ; $7784: $6a
    ld l, e                                       ; $7785: $6b
    ld [bc], a                                    ; $7786: $02
    inc bc                                        ; $7787: $03
    ld [bc], a                                    ; $7788: $02
    ld bc, $0008                                  ; $7789: $01 $08 $00
    ld [bc], a                                    ; $778c: $02
    ld bc, $0002                                  ; $778d: $01 $02 $00
    ld [bc], a                                    ; $7790: $02
    rlca                                          ; $7791: $07
    add d                                         ; $7792: $82
    ld [bc], a                                    ; $7793: $02
    inc bc                                        ; $7794: $03
    ld [bc], a                                    ; $7795: $02
    rlca                                          ; $7796: $07
    inc b                                         ; $7797: $04
    inc bc                                        ; $7798: $03
    ld [bc], a                                    ; $7799: $02
    rra                                           ; $779a: $1f
    add d                                         ; $779b: $82
    inc hl                                        ; $779c: $23
    ccf                                           ; $779d: $3f
    ld [bc], a                                    ; $779e: $02
    sbc a                                         ; $779f: $9f
    adc h                                         ; $77a0: $8c
    xor $ff                                       ; $77a1: $ee $ff
    push de                                       ; $77a3: $d5
    rst $38                                       ; $77a4: $ff
    db $fd                                        ; $77a5: $fd
    rst $38                                       ; $77a6: $ff
    ld hl, sp-$01                                 ; $77a7: $f8 $ff
    db $fc                                        ; $77a9: $fc
    rst $38                                       ; $77aa: $ff
    rst $10                                       ; $77ab: $d7
    rst $38                                       ; $77ac: $ff
    ld [bc], a                                    ; $77ad: $02
    ret nc                                        ; $77ae: $d0

    add e                                         ; $77af: $83
    cp h                                          ; $77b0: $bc
    db $fc                                        ; $77b1: $fc
    db $f4                                        ; $77b2: $f4
    inc b                                         ; $77b3: $04
    db $fc                                        ; $77b4: $fc
    adc e                                         ; $77b5: $8b
    call nc, $e8f8                                ; $77b6: $d4 $f8 $e8
    call c, $fc6c                                 ; $77b9: $dc $6c $fc
    sub h                                         ; $77bc: $94
    ld hl, sp+$08                                 ; $77bd: $f8 $08
    ldh a, [$90]                                  ; $77bf: $f0 $90
    ld [bc], a                                    ; $77c1: $02
    ldh [rSC], a                                  ; $77c2: $e0 $02
    ret nz                                        ; $77c4: $c0

    add [hl]                                      ; $77c5: $86
    or a                                          ; $77c6: $b7
    rst $30                                       ; $77c7: $f7
    ld a, a                                       ; $77c8: $7f
    rst $08                                       ; $77c9: $cf
    cp $d2                                        ; $77ca: $fe $d2
    ld [bc], a                                    ; $77cc: $02
    db $ec                                        ; $77cd: $ec
    add h                                         ; $77ce: $84
    ld [hl], a                                    ; $77cf: $77
    ld a, a                                       ; $77d0: $7f
    ld c, d                                       ; $77d1: $4a
    ld a, [hl]                                    ; $77d2: $7e
    ld [bc], a                                    ; $77d3: $02
    ld a, h                                       ; $77d4: $7c
    add d                                         ; $77d5: $82
    ld l, b                                       ; $77d6: $68
    ld a, b                                       ; $77d7: $78
    ld [bc], a                                    ; $77d8: $02
    db $10                                        ; $77d9: $10
    ld d, $00                                     ; $77da: $16 $00
    rst $38                                       ; $77dc: $ff
    dec c                                         ; $77dd: $0d
    inc b                                         ; $77de: $04
    ld hl, sp+$09                                 ; $77df: $f8 $09
    ld a, [c]                                     ; $77e1: $f2
    inc bc                                        ; $77e2: $03
    ei                                            ; $77e3: $fb
    db $f4                                        ; $77e4: $f4
    ld a, [c]                                     ; $77e5: $f2
    db $fc                                        ; $77e6: $fc
    pop af                                        ; $77e7: $f1
    inc b                                         ; $77e8: $04
    ld bc, $02fa                                  ; $77e9: $01 $fa $02
    ld bc, $0684                                  ; $77ec: $01 $84 $06
    rlca                                          ; $77ef: $07
    dec bc                                        ; $77f0: $0b
    rrca                                          ; $77f1: $0f
    ld [bc], a                                    ; $77f2: $02
    rlca                                          ; $77f3: $07
    ld [bc], a                                    ; $77f4: $02
    ld d, e                                       ; $77f5: $53
    adc d                                         ; $77f6: $8a
    sbc $ae                                       ; $77f7: $de $ae
    ld l, a                                       ; $77f9: $6f
    ld d, e                                       ; $77fa: $53
    push de                                       ; $77fb: $d5
    cp l                                          ; $77fc: $bd
    ld l, d                                       ; $77fd: $6a
    ld l, e                                       ; $77fe: $6b
    ld [bc], a                                    ; $77ff: $02
    inc bc                                        ; $7800: $03
    ld [bc], a                                    ; $7801: $02
    ld bc, $000a                                  ; $7802: $01 $0a $00
    ld [bc], a                                    ; $7805: $02
    ld bc, $0302                                  ; $7806: $01 $02 $03
    add d                                         ; $7809: $82
    inc b                                         ; $780a: $04
    rlca                                          ; $780b: $07
    ld [bc], a                                    ; $780c: $02
    inc bc                                        ; $780d: $03
    ld [bc], a                                    ; $780e: $02
    rlca                                          ; $780f: $07
    ld [bc], a                                    ; $7810: $02
    dec de                                        ; $7811: $1b
    add h                                         ; $7812: $84
    daa                                           ; $7813: $27
    ccf                                           ; $7814: $3f
    add hl, de                                    ; $7815: $19
    rra                                           ; $7816: $1f
    ld [bc], a                                    ; $7817: $02
    rrca                                          ; $7818: $0f
    adc c                                         ; $7819: $89
    ld e, $1f                                     ; $781a: $1e $1f
    cp l                                          ; $781c: $bd
    cp a                                          ; $781d: $bf
    db $fd                                        ; $781e: $fd
    rst $38                                       ; $781f: $ff
    ld hl, sp-$01                                 ; $7820: $f8 $ff
    db $fc                                        ; $7822: $fc
    inc bc                                        ; $7823: $03
    rst $38                                       ; $7824: $ff
    add d                                         ; $7825: $82
    xor $fe                                       ; $7826: $ee $fe
    ld [bc], a                                    ; $7828: $02
    and b                                         ; $7829: $a0
    add h                                         ; $782a: $84
    ld a, h                                       ; $782b: $7c
    db $fc                                        ; $782c: $fc
    db $e4                                        ; $782d: $e4
    db $fc                                        ; $782e: $fc
    ld [bc], a                                    ; $782f: $02
    ld hl, sp-$74                                 ; $7830: $f8 $8c
    db $fc                                        ; $7832: $fc
    call nc, $e8f8                                ; $7833: $d4 $f8 $e8
    call c, $fc6c                                 ; $7836: $dc $6c $fc
    sub h                                         ; $7839: $94
    ld hl, sp+$08                                 ; $783a: $f8 $08
    ldh a, [$90]                                  ; $783c: $f0 $90
    ld [bc], a                                    ; $783e: $02
    ldh [rSC], a                                  ; $783f: $e0 $02
    ret nz                                        ; $7841: $c0

    add [hl]                                      ; $7842: $86
    scf                                           ; $7843: $37
    rst $30                                       ; $7844: $f7
    rst $38                                       ; $7845: $ff
    rst $08                                       ; $7846: $cf
    cp $d2                                        ; $7847: $fe $d2
    ld [bc], a                                    ; $7849: $02
    db $ec                                        ; $784a: $ec
    ld [bc], a                                    ; $784b: $02
    nop                                           ; $784c: $00
    add d                                         ; $784d: $82
    dec h                                         ; $784e: $25
    ccf                                           ; $784f: $3f
    ld [bc], a                                    ; $7850: $02
    ld a, $82                                     ; $7851: $3e $82
    inc [hl]                                      ; $7853: $34
    inc a                                         ; $7854: $3c
    ld [bc], a                                    ; $7855: $02
    ld [$0016], sp                                ; $7856: $08 $16 $00
    rst $38                                       ; $7859: $ff
    dec bc                                        ; $785a: $0b
    inc bc                                        ; $785b: $03
    ld hl, sp+$09                                 ; $785c: $f8 $09
    ld a, [c]                                     ; $785e: $f2
    inc bc                                        ; $785f: $03
    ei                                            ; $7860: $fb
    db $f4                                        ; $7861: $f4
    push af                                       ; $7862: $f5
    db $fc                                        ; $7863: $fc
    di                                            ; $7864: $f3
    inc b                                         ; $7865: $04
    ld [bc], a                                    ; $7866: $02
    rlca                                          ; $7867: $07
    ld [bc], a                                    ; $7868: $02
    rrca                                          ; $7869: $0f
    adc b                                         ; $786a: $88
    ld l, e                                       ; $786b: $6b
    ld l, a                                       ; $786c: $6f
    db $db                                        ; $786d: $db
    cp a                                          ; $786e: $bf
    ld a, a                                       ; $786f: $7f
    ld c, a                                       ; $7870: $4f
    rst $10                                       ; $7871: $d7
    cp a                                          ; $7872: $bf
    ld [bc], a                                    ; $7873: $02
    ld a, c                                       ; $7874: $79
    ld [bc], a                                    ; $7875: $02
    inc bc                                        ; $7876: $03
    add h                                         ; $7877: $84
    ld [bc], a                                    ; $7878: $02
    inc bc                                        ; $7879: $03
    ld [bc], a                                    ; $787a: $02
    inc bc                                        ; $787b: $03
    ld [bc], a                                    ; $787c: $02
    ld bc, $000a                                  ; $787d: $01 $0a $00
    ld [bc], a                                    ; $7880: $02
    inc bc                                        ; $7881: $03
    add d                                         ; $7882: $82
    ld [bc], a                                    ; $7883: $02
    inc bc                                        ; $7884: $03
    ld [bc], a                                    ; $7885: $02
    rlca                                          ; $7886: $07
    ld [bc], a                                    ; $7887: $02
    inc de                                        ; $7888: $13
    sub [hl]                                      ; $7889: $96
    cpl                                           ; $788a: $2f
    ccf                                           ; $788b: $3f
    inc sp                                        ; $788c: $33
    ccf                                           ; $788d: $3f
    db $ed                                        ; $788e: $ed
    rst $38                                       ; $788f: $ff
    ld e, a                                       ; $7890: $5f
    rst $38                                       ; $7891: $ff
    cp h                                          ; $7892: $bc
    rst $38                                       ; $7893: $ff
    db $fd                                        ; $7894: $fd
    rst $38                                       ; $7895: $ff
    ld a, h                                       ; $7896: $7c
    rst $38                                       ; $7897: $ff
    xor [hl]                                      ; $7898: $ae
    rst $38                                       ; $7899: $ff
    or a                                          ; $789a: $b7
    rst $38                                       ; $789b: $ff
    ld a, b                                       ; $789c: $78
    ld hl, sp-$58                                 ; $789d: $f8 $a8
    cp b                                          ; $789f: $b8
    ld [bc], a                                    ; $78a0: $02
    or b                                          ; $78a1: $b0
    ld [bc], a                                    ; $78a2: $02
    ret nc                                        ; $78a3: $d0

    add h                                         ; $78a4: $84
    cp b                                          ; $78a5: $b8
    ld hl, sp-$1a                                 ; $78a6: $f8 $e6
    cp $03                                        ; $78a8: $fe $03
    db $fc                                        ; $78aa: $fc
    adc e                                         ; $78ab: $8b
    call nc, $e8f8                                ; $78ac: $d4 $f8 $e8
    call c, $fc6c                                 ; $78af: $dc $6c $fc
    sub h                                         ; $78b2: $94
    ld hl, sp+$08                                 ; $78b3: $f8 $08
    ldh a, [$90]                                  ; $78b5: $f0 $90
    ld [bc], a                                    ; $78b7: $02
    ldh [rSC], a                                  ; $78b8: $e0 $02
    add b                                         ; $78ba: $80
    add [hl]                                      ; $78bb: $86
    ld h, b                                       ; $78bc: $60
    ldh [$fe], a                                  ; $78bd: $e0 $fe
    sbc [hl]                                      ; $78bf: $9e
    rst $38                                       ; $78c0: $ff
    and a                                         ; $78c1: $a7
    ld [bc], a                                    ; $78c2: $02
    ld e, b                                       ; $78c3: $58
    rst $38                                       ; $78c4: $ff
    dec c                                         ; $78c5: $0d
    inc b                                         ; $78c6: $04
    ld hl, sp+$09                                 ; $78c7: $f8 $09
    ld a, [c]                                     ; $78c9: $f2
    inc bc                                        ; $78ca: $03
    ld sp, hl                                     ; $78cb: $f9
    db $f4                                        ; $78cc: $f4
    di                                            ; $78cd: $f3
    db $fc                                        ; $78ce: $fc
    di                                            ; $78cf: $f3
    inc b                                         ; $78d0: $04
    inc bc                                        ; $78d1: $03
    ld sp, hl                                     ; $78d2: $f9
    ld [bc], a                                    ; $78d3: $02
    rlca                                          ; $78d4: $07
    add e                                         ; $78d5: $83
    add hl, bc                                    ; $78d6: $09
    rrca                                          ; $78d7: $0f
    rla                                           ; $78d8: $17
    inc bc                                        ; $78d9: $03
    rra                                           ; $78da: $1f
    ld [bc], a                                    ; $78db: $02
    ld l, a                                       ; $78dc: $6f
    add [hl]                                      ; $78dd: $86
    rst $10                                       ; $78de: $d7
    or a                                          ; $78df: $b7
    ld a, l                                       ; $78e0: $7d
    ld c, e                                       ; $78e1: $4b
    rst $10                                       ; $78e2: $d7
    cp a                                          ; $78e3: $bf
    ld [bc], a                                    ; $78e4: $02
    ld a, c                                       ; $78e5: $79
    ld [bc], a                                    ; $78e6: $02
    inc bc                                        ; $78e7: $03
    add h                                         ; $78e8: $84
    ld [bc], a                                    ; $78e9: $02
    inc bc                                        ; $78ea: $03
    ld [bc], a                                    ; $78eb: $02
    inc bc                                        ; $78ec: $03
    ld [bc], a                                    ; $78ed: $02
    ld bc, $0006                                  ; $78ee: $01 $06 $00
    ld [bc], a                                    ; $78f1: $02
    ld bc, $0002                                  ; $78f2: $01 $02 $00
    ld [bc], a                                    ; $78f5: $02
    rlca                                          ; $78f6: $07
    add d                                         ; $78f7: $82
    ld [bc], a                                    ; $78f8: $02
    inc bc                                        ; $78f9: $03
    ld [bc], a                                    ; $78fa: $02
    rlca                                          ; $78fb: $07
    ld [bc], a                                    ; $78fc: $02
    inc sp                                        ; $78fd: $33
    sub h                                         ; $78fe: $94
    cpl                                           ; $78ff: $2f
    ccf                                           ; $7900: $3f
    rst $30                                       ; $7901: $f7
    rst $38                                       ; $7902: $ff
    ld e, c                                       ; $7903: $59
    rst $38                                       ; $7904: $ff
    xor a                                         ; $7905: $af
    rst $38                                       ; $7906: $ff
    db $fc                                        ; $7907: $fc
    rst $38                                       ; $7908: $ff
    db $fd                                        ; $7909: $fd
    rst $38                                       ; $790a: $ff
    inc a                                         ; $790b: $3c
    rst $38                                       ; $790c: $ff
    xor h                                         ; $790d: $ac
    rst $38                                       ; $790e: $ff
    or a                                          ; $790f: $b7
    rst $38                                       ; $7910: $ff
    ld a, b                                       ; $7911: $78
    ld hl, sp+$02                                 ; $7912: $f8 $02
    ret nc                                        ; $7914: $d0

    add e                                         ; $7915: $83
    cp h                                          ; $7916: $bc
    db $fc                                        ; $7917: $fc
    db $f4                                        ; $7918: $f4
    inc b                                         ; $7919: $04
    db $fc                                        ; $791a: $fc
    adc e                                         ; $791b: $8b
    call nc, $e8f8                                ; $791c: $d4 $f8 $e8
    call c, $fc6c                                 ; $791f: $dc $6c $fc
    sub h                                         ; $7922: $94
    ld hl, sp+$08                                 ; $7923: $f8 $08
    ldh a, [$90]                                  ; $7925: $f0 $90
    ld [bc], a                                    ; $7927: $02
    ldh [rSC], a                                  ; $7928: $e0 $02
    add b                                         ; $792a: $80
    add [hl]                                      ; $792b: $86
    ld h, b                                       ; $792c: $60
    ldh [$fe], a                                  ; $792d: $e0 $fe
    sbc [hl]                                      ; $792f: $9e
    rst $38                                       ; $7930: $ff
    and a                                         ; $7931: $a7
    ld [bc], a                                    ; $7932: $02
    ld e, b                                       ; $7933: $58
    add d                                         ; $7934: $82
    dec d                                         ; $7935: $15
    rla                                           ; $7936: $17
    ld [bc], a                                    ; $7937: $02
    ld d, $1c                                     ; $7938: $16 $1c
    nop                                           ; $793a: $00
    rst $38                                       ; $793b: $ff
    dec c                                         ; $793c: $0d
    inc b                                         ; $793d: $04
    ld hl, sp+$09                                 ; $793e: $f8 $09
    ld a, [c]                                     ; $7940: $f2
    inc bc                                        ; $7941: $03
    ei                                            ; $7942: $fb
    db $f4                                        ; $7943: $f4
    db $f4                                        ; $7944: $f4
    db $fc                                        ; $7945: $fc
    di                                            ; $7946: $f3
    inc b                                         ; $7947: $04
    inc bc                                        ; $7948: $03
    ld hl, sp+$02                                 ; $7949: $f8 $02
    inc c                                         ; $794b: $0c
    add d                                         ; $794c: $82
    dec bc                                        ; $794d: $0b
    rrca                                          ; $794e: $0f
    ld [bc], a                                    ; $794f: $02
    ld l, a                                       ; $7950: $6f
    add [hl]                                      ; $7951: $86
    rst $18                                       ; $7952: $df
    cp a                                          ; $7953: $bf
    ld a, e                                       ; $7954: $7b
    ld c, a                                       ; $7955: $4f
    rst $10                                       ; $7956: $d7
    cp a                                          ; $7957: $bf
    ld [bc], a                                    ; $7958: $02
    ld a, c                                       ; $7959: $79
    ld [bc], a                                    ; $795a: $02
    inc bc                                        ; $795b: $03
    add h                                         ; $795c: $84
    ld [bc], a                                    ; $795d: $02
    inc bc                                        ; $795e: $03
    ld [bc], a                                    ; $795f: $02
    inc bc                                        ; $7960: $03
    ld [bc], a                                    ; $7961: $02
    ld bc, $000a                                  ; $7962: $01 $0a $00
    ld [bc], a                                    ; $7965: $02
    ld bc, $0302                                  ; $7966: $01 $02 $03
    add d                                         ; $7969: $82
    inc b                                         ; $796a: $04
    rlca                                          ; $796b: $07
    ld [bc], a                                    ; $796c: $02
    inc bc                                        ; $796d: $03
    ld [bc], a                                    ; $796e: $02
    rra                                           ; $796f: $1f
    add [hl]                                      ; $7970: $86
    daa                                           ; $7971: $27
    ccf                                           ; $7972: $3f
    dec de                                        ; $7973: $1b
    rra                                           ; $7974: $1f
    dec a                                         ; $7975: $3d
    ccf                                           ; $7976: $3f
    ld [bc], a                                    ; $7977: $02
    rst $38                                       ; $7978: $ff
    adc [hl]                                      ; $7979: $8e
    cp $ff                                        ; $797a: $fe $ff
    ld sp, hl                                     ; $797c: $f9
    rst $38                                       ; $797d: $ff
    db $fc                                        ; $797e: $fc
    rst $38                                       ; $797f: $ff
    cp h                                          ; $7980: $bc
    rst $38                                       ; $7981: $ff
    or a                                          ; $7982: $b7
    rst $38                                       ; $7983: $ff
    ld a, b                                       ; $7984: $78
    ld hl, sp-$58                                 ; $7985: $f8 $a8
    cp b                                          ; $7987: $b8
    ld [bc], a                                    ; $7988: $02
    and b                                         ; $7989: $a0
    add h                                         ; $798a: $84
    ld a, h                                       ; $798b: $7c
    db $fc                                        ; $798c: $fc
    and $fe                                       ; $798d: $e6 $fe
    inc bc                                        ; $798f: $03
    db $fc                                        ; $7990: $fc
    adc e                                         ; $7991: $8b
    call nc, $e8f8                                ; $7992: $d4 $f8 $e8
    call c, $fc6c                                 ; $7995: $dc $6c $fc
    sub h                                         ; $7998: $94
    ld hl, sp+$08                                 ; $7999: $f8 $08
    ldh a, [$90]                                  ; $799b: $f0 $90
    ld [bc], a                                    ; $799d: $02
    ldh [rSC], a                                  ; $799e: $e0 $02
    add b                                         ; $79a0: $80
    add [hl]                                      ; $79a1: $86
    ld h, b                                       ; $79a2: $60
    ldh [$fe], a                                  ; $79a3: $e0 $fe
    sbc [hl]                                      ; $79a5: $9e
    rst $38                                       ; $79a6: $ff
    and a                                         ; $79a7: $a7
    ld [bc], a                                    ; $79a8: $02
    ld e, b                                       ; $79a9: $58
    ld [bc], a                                    ; $79aa: $02
    nop                                           ; $79ab: $00
    ld [bc], a                                    ; $79ac: $02
    dec bc                                        ; $79ad: $0b
    inc e                                         ; $79ae: $1c
    nop                                           ; $79af: $00
    rst $38                                       ; $79b0: $ff
    dec c                                         ; $79b1: $0d
    inc b                                         ; $79b2: $04
    ld hl, sp+$09                                 ; $79b3: $f8 $09
    ld a, [c]                                     ; $79b5: $f2
    inc bc                                        ; $79b6: $03
    ei                                            ; $79b7: $fb
    db $f4                                        ; $79b8: $f4
    di                                            ; $79b9: $f3
    db $fc                                        ; $79ba: $fc
    inc bc                                        ; $79bb: $03
    db $fc                                        ; $79bc: $fc
    pop af                                        ; $79bd: $f1
    inc b                                         ; $79be: $04
    ld [bc], a                                    ; $79bf: $02
    inc bc                                        ; $79c0: $03
    add [hl]                                      ; $79c1: $86
    dec b                                         ; $79c2: $05
    rlca                                          ; $79c3: $07
    dec bc                                        ; $79c4: $0b
    rrca                                          ; $79c5: $0f
    dec bc                                        ; $79c6: $0b
    rrca                                          ; $79c7: $0f
    ld [bc], a                                    ; $79c8: $02
    rra                                           ; $79c9: $1f
    ld [bc], a                                    ; $79ca: $02
    rlca                                          ; $79cb: $07
    ld [bc], a                                    ; $79cc: $02
    ld e, a                                       ; $79cd: $5f
    add [hl]                                      ; $79ce: $86
    pop de                                        ; $79cf: $d1
    xor a                                         ; $79d0: $af
    ld h, l                                       ; $79d1: $65
    ld e, l                                       ; $79d2: $5d
    ret c                                         ; $79d3: $d8

    cp b                                          ; $79d4: $b8
    ld [bc], a                                    ; $79d5: $02
    ld h, b                                       ; $79d6: $60
    ld a, [bc]                                    ; $79d7: $0a
    nop                                           ; $79d8: $00
    ld [bc], a                                    ; $79d9: $02
    inc bc                                        ; $79da: $03
    add d                                         ; $79db: $82
    ld [bc], a                                    ; $79dc: $02
    inc bc                                        ; $79dd: $03
    ld [bc], a                                    ; $79de: $02
    rlca                                          ; $79df: $07
    ld [bc], a                                    ; $79e0: $02
    inc bc                                        ; $79e1: $03
    ld [bc], a                                    ; $79e2: $02
    ccf                                           ; $79e3: $3f
    add d                                         ; $79e4: $82
    inc hl                                        ; $79e5: $23
    ccf                                           ; $79e6: $3f
    ld [bc], a                                    ; $79e7: $02
    rra                                           ; $79e8: $1f
    sub h                                         ; $79e9: $94
    scf                                           ; $79ea: $37
    ccf                                           ; $79eb: $3f
    db $ec                                        ; $79ec: $ec
    rst $38                                       ; $79ed: $ff
    cp l                                          ; $79ee: $bd
    rst $38                                       ; $79ef: $ff
    db $fc                                        ; $79f0: $fc
    rst $38                                       ; $79f1: $ff
    cp $ff                                        ; $79f2: $fe $ff
    rst $28                                       ; $79f4: $ef
    rst $38                                       ; $79f5: $ff
    and $fe                                       ; $79f6: $e6 $fe
    jp c, $7cfe                                   ; $79f8: $da $fe $7c

    db $fc                                        ; $79fb: $fc
    ld l, b                                       ; $79fc: $68
    ld hl, sp+$02                                 ; $79fd: $f8 $02
    sub b                                         ; $79ff: $90
    inc e                                         ; $7a00: $1c
    nop                                           ; $7a01: $00
    ld [bc], a                                    ; $7a02: $02
    ret nc                                        ; $7a03: $d0

    add h                                         ; $7a04: $84
    cp b                                          ; $7a05: $b8
    ld hl, sp-$1a                                 ; $7a06: $f8 $e6
    cp $03                                        ; $7a08: $fe $03
    db $fc                                        ; $7a0a: $fc
    adc e                                         ; $7a0b: $8b
    call nc, $e8f8                                ; $7a0c: $d4 $f8 $e8
    call c, $fc6c                                 ; $7a0f: $dc $6c $fc
    sub h                                         ; $7a12: $94
    ld hl, sp+$08                                 ; $7a13: $f8 $08
    rst $30                                       ; $7a15: $f7
    sub a                                         ; $7a16: $97
    ld [bc], a                                    ; $7a17: $02
    rst $38                                       ; $7a18: $ff
    add [hl]                                      ; $7a19: $86
    cp $ca                                        ; $7a1a: $fe $ca
    ld a, h                                       ; $7a1c: $7c
    call nc, $e868                                ; $7a1d: $d4 $68 $e8
    ld [bc], a                                    ; $7a20: $02
    add b                                         ; $7a21: $80
    ld [bc], a                                    ; $7a22: $02
    nop                                           ; $7a23: $00
    rst $38                                       ; $7a24: $ff
    dec c                                         ; $7a25: $0d
    inc b                                         ; $7a26: $04
    ld hl, sp+$09                                 ; $7a27: $f8 $09
    ld a, [c]                                     ; $7a29: $f2
    inc bc                                        ; $7a2a: $03
    ld sp, hl                                     ; $7a2b: $f9
    db $f4                                        ; $7a2c: $f4
    pop af                                        ; $7a2d: $f1
    db $fc                                        ; $7a2e: $fc
    ld bc, $f1fc                                  ; $7a2f: $01 $fc $f1
    inc b                                         ; $7a32: $04
    ld [bc], a                                    ; $7a33: $02
    inc bc                                        ; $7a34: $03
    add l                                         ; $7a35: $85
    dec b                                         ; $7a36: $05
    rlca                                          ; $7a37: $07
    dec bc                                        ; $7a38: $0b
    rrca                                          ; $7a39: $0f
    dec bc                                        ; $7a3a: $0b
    inc bc                                        ; $7a3b: $03
    rrca                                          ; $7a3c: $0f
    ld [bc], a                                    ; $7a3d: $02
    ld bc, $0002                                  ; $7a3e: $01 $02 $00
    ld [bc], a                                    ; $7a41: $02
    ld bc, $5f02                                  ; $7a42: $01 $02 $5f
    add [hl]                                      ; $7a45: $86
    db $dd                                        ; $7a46: $dd
    and e                                         ; $7a47: $a3
    ld h, l                                       ; $7a48: $65
    ld e, l                                       ; $7a49: $5d
    ret c                                         ; $7a4a: $d8

    cp b                                          ; $7a4b: $b8
    ld [bc], a                                    ; $7a4c: $02
    ld h, b                                       ; $7a4d: $60
    ld b, $00                                     ; $7a4e: $06 $00
    ld [bc], a                                    ; $7a50: $02
    ld bc, $0002                                  ; $7a51: $01 $02 $00
    ld [bc], a                                    ; $7a54: $02
    rlca                                          ; $7a55: $07
    add d                                         ; $7a56: $82
    ld [bc], a                                    ; $7a57: $02
    inc bc                                        ; $7a58: $03
    ld [bc], a                                    ; $7a59: $02
    rlca                                          ; $7a5a: $07
    ld [bc], a                                    ; $7a5b: $02
    inc bc                                        ; $7a5c: $03
    ld [bc], a                                    ; $7a5d: $02
    rra                                           ; $7a5e: $1f
    add d                                         ; $7a5f: $82
    inc hl                                        ; $7a60: $23
    ccf                                           ; $7a61: $3f
    ld [bc], a                                    ; $7a62: $02
    sbc a                                         ; $7a63: $9f
    sub h                                         ; $7a64: $94
    rst $28                                       ; $7a65: $ef
    rst $38                                       ; $7a66: $ff
    sub $ff                                       ; $7a67: $d6 $ff
    db $fd                                        ; $7a69: $fd
    rst $38                                       ; $7a6a: $ff
    ld hl, sp-$01                                 ; $7a6b: $f8 $ff
    db $fc                                        ; $7a6d: $fc
    rst $38                                       ; $7a6e: $ff
    rst $08                                       ; $7a6f: $cf
    rst $38                                       ; $7a70: $ff
    and $fe                                       ; $7a71: $e6 $fe
    jp c, $7cfe                                   ; $7a73: $da $fe $7c

    db $fc                                        ; $7a76: $fc
    ld l, b                                       ; $7a77: $68
    ld hl, sp+$02                                 ; $7a78: $f8 $02
    sub b                                         ; $7a7a: $90
    jr jr_0da_7a7d                                ; $7a7b: $18 $00

jr_0da_7a7d:
    ld [bc], a                                    ; $7a7d: $02
    ret nc                                        ; $7a7e: $d0

    add e                                         ; $7a7f: $83
    cp h                                          ; $7a80: $bc
    db $fc                                        ; $7a81: $fc
    db $f4                                        ; $7a82: $f4
    inc b                                         ; $7a83: $04
    db $fc                                        ; $7a84: $fc
    adc e                                         ; $7a85: $8b
    call nc, $e8f8                                ; $7a86: $d4 $f8 $e8
    call c, $fc6c                                 ; $7a89: $dc $6c $fc
    sub h                                         ; $7a8c: $94
    ld hl, sp+$08                                 ; $7a8d: $f8 $08
    rst $30                                       ; $7a8f: $f7
    sub a                                         ; $7a90: $97
    ld [bc], a                                    ; $7a91: $02
    rst $38                                       ; $7a92: $ff
    add h                                         ; $7a93: $84
    cp $ca                                        ; $7a94: $fe $ca
    ld a, h                                       ; $7a96: $7c
    call nc, $e802                                ; $7a97: $d4 $02 $e8
    ld [bc], a                                    ; $7a9a: $02
    add b                                         ; $7a9b: $80
    ld [bc], a                                    ; $7a9c: $02
    nop                                           ; $7a9d: $00
    rst $38                                       ; $7a9e: $ff
    dec c                                         ; $7a9f: $0d
    inc b                                         ; $7aa0: $04
    ld hl, sp+$09                                 ; $7aa1: $f8 $09
    ld a, [c]                                     ; $7aa3: $f2
    inc bc                                        ; $7aa4: $03
    ld a, [$f2f4]                                 ; $7aa5: $fa $f4 $f2
    db $fc                                        ; $7aa8: $fc
    ld [bc], a                                    ; $7aa9: $02
    db $fc                                        ; $7aaa: $fc
    pop af                                        ; $7aab: $f1
    inc b                                         ; $7aac: $04
    ld [bc], a                                    ; $7aad: $02
    ld bc, $0e83                                  ; $7aae: $01 $83 $0e
    rrca                                          ; $7ab1: $0f
    dec bc                                        ; $7ab2: $0b
    inc bc                                        ; $7ab3: $03
    rrca                                          ; $7ab4: $0f
    ld [bc], a                                    ; $7ab5: $02
    rlca                                          ; $7ab6: $07
    inc b                                         ; $7ab7: $04
    ld bc, $5f02                                  ; $7ab8: $01 $02 $5f
    add [hl]                                      ; $7abb: $86
    reti                                          ; $7abc: $d9


    and a                                         ; $7abd: $a7
    ld h, l                                       ; $7abe: $65
    ld e, l                                       ; $7abf: $5d
    ret c                                         ; $7ac0: $d8

    cp b                                          ; $7ac1: $b8
    ld [bc], a                                    ; $7ac2: $02
    ld h, b                                       ; $7ac3: $60
    ld [$0200], sp                                ; $7ac4: $08 $00 $02
    ld bc, $0302                                  ; $7ac7: $01 $02 $03
    add d                                         ; $7aca: $82
    inc b                                         ; $7acb: $04
    rlca                                          ; $7acc: $07
    ld [bc], a                                    ; $7acd: $02
    inc bc                                        ; $7ace: $03
    inc b                                         ; $7acf: $04
    rlca                                          ; $7ad0: $07
    add h                                         ; $7ad1: $84
    add hl, de                                    ; $7ad2: $19
    rra                                           ; $7ad3: $1f
    daa                                           ; $7ad4: $27
    ccf                                           ; $7ad5: $3f
    ld [bc], a                                    ; $7ad6: $02
    rra                                           ; $7ad7: $1f
    add a                                         ; $7ad8: $87
    cp [hl]                                       ; $7ad9: $be
    cp a                                          ; $7ada: $bf
    db $fd                                        ; $7adb: $fd
    rst $38                                       ; $7adc: $ff
    ld hl, sp-$01                                 ; $7add: $f8 $ff
    cp $03                                        ; $7adf: $fe $03
    rst $38                                       ; $7ae1: $ff
    adc b                                         ; $7ae2: $88
    and $fe                                       ; $7ae3: $e6 $fe
    jp c, $7cfe                                   ; $7ae5: $da $fe $7c

    db $fc                                        ; $7ae8: $fc
    ld l, b                                       ; $7ae9: $68
    ld hl, sp+$02                                 ; $7aea: $f8 $02
    sub b                                         ; $7aec: $90
    ld a, [de]                                    ; $7aed: $1a
    nop                                           ; $7aee: $00
    ld [bc], a                                    ; $7aef: $02
    and b                                         ; $7af0: $a0
    add h                                         ; $7af1: $84
    ld a, h                                       ; $7af2: $7c
    db $fc                                        ; $7af3: $fc
    and $fe                                       ; $7af4: $e6 $fe
    inc bc                                        ; $7af6: $03
    db $fc                                        ; $7af7: $fc
    adc e                                         ; $7af8: $8b
    call nc, $e8f8                                ; $7af9: $d4 $f8 $e8
    call c, $fc6c                                 ; $7afc: $dc $6c $fc
    sub h                                         ; $7aff: $94
    ld hl, sp+$08                                 ; $7b00: $f8 $08
    rst $30                                       ; $7b02: $f7
    sub a                                         ; $7b03: $97
    ld [bc], a                                    ; $7b04: $02
    rst $38                                       ; $7b05: $ff
    add [hl]                                      ; $7b06: $86
    cp $ca                                        ; $7b07: $fe $ca
    ld a, h                                       ; $7b09: $7c
    call nc, $e868                                ; $7b0a: $d4 $68 $e8
    ld [bc], a                                    ; $7b0d: $02
    add b                                         ; $7b0e: $80
    ld [bc], a                                    ; $7b0f: $02
    nop                                           ; $7b10: $00
    rst $38                                       ; $7b11: $ff
    dec c                                         ; $7b12: $0d
    inc b                                         ; $7b13: $04
    ld hl, sp+$09                                 ; $7b14: $f8 $09
    ld a, [c]                                     ; $7b16: $f2
    inc bc                                        ; $7b17: $03
    rst $30                                       ; $7b18: $f7
    push af                                       ; $7b19: $f5
    ldh a, [$fd]                                  ; $7b1a: $f0 $fd
    nop                                           ; $7b1c: $00
    db $fd                                        ; $7b1d: $fd
    ld a, [c]                                     ; $7b1e: $f2
    dec b                                         ; $7b1f: $05
    inc b                                         ; $7b20: $04
    ld bc, $0002                                  ; $7b21: $01 $02 $00
    ld [bc], a                                    ; $7b24: $02
    ld bc, $0e90                                  ; $7b25: $01 $90 $0e
    rrca                                          ; $7b28: $0f
    rla                                           ; $7b29: $17
    rra                                           ; $7b2a: $1f
    cpl                                           ; $7b2b: $2f
    ccf                                           ; $7b2c: $3f
    inc de                                        ; $7b2d: $13
    rra                                           ; $7b2e: $1f
    ld l, h                                       ; $7b2f: $6c
    ld l, a                                       ; $7b30: $6f
    rst $18                                       ; $7b31: $df
    cp a                                          ; $7b32: $bf
    ld [hl], l                                    ; $7b33: $75
    ld c, a                                       ; $7b34: $4f
    db $db                                        ; $7b35: $db
    cp a                                          ; $7b36: $bf
    ld [bc], a                                    ; $7b37: $02
    ld [hl], l                                    ; $7b38: $75
    add h                                         ; $7b39: $84
    ld [bc], a                                    ; $7b3a: $02
    inc bc                                        ; $7b3b: $03
    ld [bc], a                                    ; $7b3c: $02
    inc bc                                        ; $7b3d: $03
    ld [bc], a                                    ; $7b3e: $02
    ld bc, $0202                                  ; $7b3f: $01 $02 $02
    ld [bc], a                                    ; $7b42: $02
    ld c, $83                                     ; $7b43: $0e $83
    dec sp                                        ; $7b45: $3b
    ccf                                           ; $7b46: $3f
    ld e, l                                       ; $7b47: $5d
    inc b                                         ; $7b48: $04
    ld a, a                                       ; $7b49: $7f
    and c                                         ; $7b4a: $a1
    ld l, c                                       ; $7b4b: $69
    cp a                                          ; $7b4c: $bf
    or [hl]                                       ; $7b4d: $b6
    ld a, a                                       ; $7b4e: $7f
    sub $3f                                       ; $7b4f: $d6 $3f
    jp hl                                         ; $7b51: $e9


    rst $38                                       ; $7b52: $ff
    ld a, [c]                                     ; $7b53: $f2
    ld l, a                                       ; $7b54: $6f
    ld sp, hl                                     ; $7b55: $f9
    xor $ff                                       ; $7b56: $ee $ff
    and $ff                                       ; $7b58: $e6 $ff
    rst $20                                       ; $7b5a: $e7
    rst $38                                       ; $7b5b: $ff
    and a                                         ; $7b5c: $a7
    cp $77                                        ; $7b5d: $fe $77
    ei                                            ; $7b5f: $fb
    rst $38                                       ; $7b60: $ff
    di                                            ; $7b61: $f3
    ccf                                           ; $7b62: $3f
    ld sp, hl                                     ; $7b63: $f9
    ld c, [hl]                                    ; $7b64: $4e
    adc $4e                                       ; $7b65: $ce $4e
    adc $8a                                       ; $7b67: $ce $8a
    adc [hl]                                      ; $7b69: $8e
    ld b, h                                       ; $7b6a: $44
    call nz, $8002                                ; $7b6b: $c4 $02 $80
    ld [de], a                                    ; $7b6e: $12
    nop                                           ; $7b6f: $00
    ld [bc], a                                    ; $7b70: $02
    ret nz                                        ; $7b71: $c0

    ld [bc], a                                    ; $7b72: $02
    add b                                         ; $7b73: $80
    ld [bc], a                                    ; $7b74: $02
    ldh [$0a], a                                  ; $7b75: $e0 $0a
    add b                                         ; $7b77: $80
    ld [bc], a                                    ; $7b78: $02
    nop                                           ; $7b79: $00
    inc b                                         ; $7b7a: $04
    add b                                         ; $7b7b: $80
    add d                                         ; $7b7c: $82
    ld b, b                                       ; $7b7d: $40
    ret nz                                        ; $7b7e: $c0

    ld [bc], a                                    ; $7b7f: $02
    add b                                         ; $7b80: $80
    ld [bc], a                                    ; $7b81: $02
    ldh a, [rSC]                                  ; $7b82: $f0 $02
    ld hl, sp+$02                                 ; $7b84: $f8 $02
    nop                                           ; $7b86: $00
    rst $38                                       ; $7b87: $ff
    dec c                                         ; $7b88: $0d
    inc b                                         ; $7b89: $04
    ld hl, sp+$07                                 ; $7b8a: $f8 $07
    di                                            ; $7b8c: $f3
    ld [bc], a                                    ; $7b8d: $02
    db $eb                                        ; $7b8e: $eb
    ld a, [$ffeb]                                 ; $7b8f: $fa $eb $ff
    ei                                            ; $7b92: $fb
    ld a, [$fffb]                                 ; $7b93: $fa $fb $ff
    ld [bc], a                                    ; $7b96: $02
    rrca                                          ; $7b97: $0f
    add h                                         ; $7b98: $84
    dec a                                         ; $7b99: $3d
    ccf                                           ; $7b9a: $3f
    rst $20                                       ; $7b9b: $e7
    rst $38                                       ; $7b9c: $ff
    ld [bc], a                                    ; $7b9d: $02
    ccf                                           ; $7b9e: $3f
    sbc b                                         ; $7b9f: $98
    ld a, a                                       ; $7ba0: $7f
    ld l, d                                       ; $7ba1: $6a
    ccf                                           ; $7ba2: $3f
    dec sp                                        ; $7ba3: $3b
    ld a, a                                       ; $7ba4: $7f
    ld h, h                                       ; $7ba5: $64
    ld a, a                                       ; $7ba6: $7f
    ld h, h                                       ; $7ba7: $64
    ccf                                           ; $7ba8: $3f
    dec sp                                        ; $7ba9: $3b
    rra                                           ; $7baa: $1f
    ld d, $1f                                     ; $7bab: $16 $1f
    jr jr_0da_7be5                                ; $7bad: $18 $36

    ccf                                           ; $7baf: $3f
    ld d, l                                       ; $7bb0: $55
    ld a, a                                       ; $7bb1: $7f
    cp e                                          ; $7bb2: $bb
    rst $38                                       ; $7bb3: $ff
    push af                                       ; $7bb4: $f5
    rst $18                                       ; $7bb5: $df
    ei                                            ; $7bb6: $fb
    sbc a                                         ; $7bb7: $9f
    ld [bc], a                                    ; $7bb8: $02
    ld [$1c02], sp                                ; $7bb9: $08 $02 $1c
    add e                                         ; $7bbc: $83
    ld a, [de]                                    ; $7bbd: $1a
    ld e, $16                                     ; $7bbe: $1e $16
    inc bc                                        ; $7bc0: $03
    ld e, $82                                     ; $7bc1: $1e $82
    inc e                                         ; $7bc3: $1c
    inc c                                         ; $7bc4: $0c
    inc bc                                        ; $7bc5: $03
    ld e, $85                                     ; $7bc6: $1e $85
    ld [de], a                                    ; $7bc8: $12
    inc e                                         ; $7bc9: $1c
    inc c                                         ; $7bca: $0c
    jr jr_0da_7bd5                                ; $7bcb: $18 $08

    ld [bc], a                                    ; $7bcd: $02
    jr jr_0da_7bd2                                ; $7bce: $18 $02

    inc e                                         ; $7bd0: $1c
    sub h                                         ; $7bd1: $94

jr_0da_7bd2:
    ld a, [de]                                    ; $7bd2: $1a
    ld e, $1a                                     ; $7bd3: $1e $1a

jr_0da_7bd5:
    ld e, $1d                                     ; $7bd5: $1e $1d
    rra                                           ; $7bd7: $1f
    add hl, de                                    ; $7bd8: $19
    rra                                           ; $7bd9: $1f
    ld a, e                                       ; $7bda: $7b
    ld a, a                                       ; $7bdb: $7f
    ei                                            ; $7bdc: $fb
    adc a                                         ; $7bdd: $8f
    ei                                            ; $7bde: $fb
    adc a                                         ; $7bdf: $8f
    ld [hl], l                                    ; $7be0: $75
    ld a, a                                       ; $7be1: $7f
    dec [hl]                                      ; $7be2: $35
    ccf                                           ; $7be3: $3f
    ld c, [hl]                                    ; $7be4: $4e

jr_0da_7be5:
    ld a, a                                       ; $7be5: $7f
    ld [bc], a                                    ; $7be6: $02
    add hl, sp                                    ; $7be7: $39
    ld [bc], a                                    ; $7be8: $02
    ld bc, $0010                                  ; $7be9: $01 $10 $00
    add h                                         ; $7bec: $84
    rra                                           ; $7bed: $1f
    add hl, de                                    ; $7bee: $19
    ld e, $1a                                     ; $7bef: $1e $1a
    inc b                                         ; $7bf1: $04
    inc e                                         ; $7bf2: $1c
    ld [bc], a                                    ; $7bf3: $02
    ld e, $81                                     ; $7bf4: $1e $81
    ld a, [de]                                    ; $7bf6: $1a
    inc bc                                        ; $7bf7: $03
    ld e, $82                                     ; $7bf8: $1e $82
    inc b                                         ; $7bfa: $04
    inc e                                         ; $7bfb: $1c
    ld [bc], a                                    ; $7bfc: $02
    jr jr_0da_7c0d                                ; $7bfd: $18 $0e

    nop                                           ; $7bff: $00
    rst $38                                       ; $7c00: $ff
    dec c                                         ; $7c01: $0d
    inc b                                         ; $7c02: $04
    ld hl, sp+$07                                 ; $7c03: $f8 $07
    di                                            ; $7c05: $f3
    ld [bc], a                                    ; $7c06: $02
    db $eb                                        ; $7c07: $eb
    ld sp, hl                                     ; $7c08: $f9
    db $eb                                        ; $7c09: $eb
    rst $38                                       ; $7c0a: $ff
    ei                                            ; $7c0b: $fb
    ld sp, hl                                     ; $7c0c: $f9

jr_0da_7c0d:
    ei                                            ; $7c0d: $fb
    rst $38                                       ; $7c0e: $ff
    ld [bc], a                                    ; $7c0f: $02
    rlca                                          ; $7c10: $07
    add h                                         ; $7c11: $84
    ld e, $1f                                     ; $7c12: $1e $1f
    ld [hl], e                                    ; $7c14: $73
    ld a, a                                       ; $7c15: $7f
    ld [bc], a                                    ; $7c16: $02
    rra                                           ; $7c17: $1f
    sbc b                                         ; $7c18: $98
    ccf                                           ; $7c19: $3f
    dec [hl]                                      ; $7c1a: $35
    rra                                           ; $7c1b: $1f
    dec e                                         ; $7c1c: $1d
    ccf                                           ; $7c1d: $3f
    ld [hl-], a                                   ; $7c1e: $32
    ccf                                           ; $7c1f: $3f
    ld [hl-], a                                   ; $7c20: $32
    rra                                           ; $7c21: $1f
    dec e                                         ; $7c22: $1d
    rrca                                          ; $7c23: $0f
    dec bc                                        ; $7c24: $0b
    rrca                                          ; $7c25: $0f
    inc c                                         ; $7c26: $0c
    dec de                                        ; $7c27: $1b
    rra                                           ; $7c28: $1f
    ld l, d                                       ; $7c29: $6a
    ld a, a                                       ; $7c2a: $7f
    db $fd                                        ; $7c2b: $fd
    rst $18                                       ; $7c2c: $df
    ld a, [$7d9f]                                 ; $7c2d: $fa $9f $7d
    ld a, a                                       ; $7c30: $7f
    ld [bc], a                                    ; $7c31: $02
    jr z, jr_0da_7c36                             ; $7c32: $28 $02

    inc a                                         ; $7c34: $3c
    add e                                         ; $7c35: $83

jr_0da_7c36:
    ld a, [hl-]                                   ; $7c36: $3a
    ld a, $36                                     ; $7c37: $3e $36
    ld [bc], a                                    ; $7c39: $02
    ld a, $a3                                     ; $7c3a: $3e $a3
    ld e, $3c                                     ; $7c3c: $1e $3c
    inc l                                         ; $7c3e: $2c
    ld a, $1e                                     ; $7c3f: $3e $1e
    ld a, $12                                     ; $7c41: $3e $12
    inc a                                         ; $7c43: $3c
    inc l                                         ; $7c44: $2c
    jr c, @+$0a                                   ; $7c45: $38 $08

    jr c, jr_0da_7c61                             ; $7c47: $38 $18

    inc e                                         ; $7c49: $1c
    inc a                                         ; $7c4a: $3c
    ld a, [hl-]                                   ; $7c4b: $3a
    ld a, $3a                                     ; $7c4c: $3e $3a
    ld a, $3d                                     ; $7c4e: $3e $3d
    ccf                                           ; $7c50: $3f
    add hl, sp                                    ; $7c51: $39
    ccf                                           ; $7c52: $3f
    db $fd                                        ; $7c53: $fd
    adc a                                         ; $7c54: $8f
    db $fd                                        ; $7c55: $fd
    adc a                                         ; $7c56: $8f
    ld a, l                                       ; $7c57: $7d
    ld a, a                                       ; $7c58: $7f
    ld a, [de]                                    ; $7c59: $1a
    rra                                           ; $7c5a: $1f
    ld a, [de]                                    ; $7c5b: $1a
    rra                                           ; $7c5c: $1f
    daa                                           ; $7c5d: $27
    ccf                                           ; $7c5e: $3f
    ld [bc], a                                    ; $7c5f: $02
    inc e                                         ; $7c60: $1c

jr_0da_7c61:
    ld [de], a                                    ; $7c61: $12
    nop                                           ; $7c62: $00
    add h                                         ; $7c63: $84
    ccf                                           ; $7c64: $3f
    add hl, sp                                    ; $7c65: $39
    ld a, $3a                                     ; $7c66: $3e $3a
    inc b                                         ; $7c68: $04
    inc a                                         ; $7c69: $3c
    ld [bc], a                                    ; $7c6a: $02
    ld a, $81                                     ; $7c6b: $3e $81
    ld a, [de]                                    ; $7c6d: $1a
    inc bc                                        ; $7c6e: $03
    ld a, $82                                     ; $7c6f: $3e $82
    inc h                                         ; $7c71: $24
    inc a                                         ; $7c72: $3c
    ld [bc], a                                    ; $7c73: $02
    jr jr_0da_7c84                                ; $7c74: $18 $0e

    nop                                           ; $7c76: $00
    rst $38                                       ; $7c77: $ff
    dec c                                         ; $7c78: $0d
    inc b                                         ; $7c79: $04
    ld hl, sp+$07                                 ; $7c7a: $f8 $07
    di                                            ; $7c7c: $f3
    ld [bc], a                                    ; $7c7d: $02
    db $ec                                        ; $7c7e: $ec
    rst $30                                       ; $7c7f: $f7
    db $ec                                        ; $7c80: $ec
    rst $38                                       ; $7c81: $ff
    db $fc                                        ; $7c82: $fc
    ei                                            ; $7c83: $fb

jr_0da_7c84:
    db $fc                                        ; $7c84: $fc
    cp $02                                        ; $7c85: $fe $02
    inc bc                                        ; $7c87: $03
    ld [bc], a                                    ; $7c88: $02
    rrca                                          ; $7c89: $0f
    add d                                         ; $7c8a: $82
    add hl, sp                                    ; $7c8b: $39
    ccf                                           ; $7c8c: $3f
    ld [bc], a                                    ; $7c8d: $02
    rrca                                          ; $7c8e: $0f
    add h                                         ; $7c8f: $84
    rra                                           ; $7c90: $1f
    ld a, [de]                                    ; $7c91: $1a
    rrca                                          ; $7c92: $0f
    ld c, $03                                     ; $7c93: $0e $03
    rra                                           ; $7c95: $1f
    adc a                                         ; $7c96: $8f
    add hl, de                                    ; $7c97: $19
    rrca                                          ; $7c98: $0f
    ld c, $0f                                     ; $7c99: $0e $0f
    dec c                                         ; $7c9b: $0d
    rra                                           ; $7c9c: $1f
    ld [de], a                                    ; $7c9d: $12
    ld a, [hl]                                    ; $7c9e: $7e
    ld h, a                                       ; $7c9f: $67
    rst $38                                       ; $7ca0: $ff
    sbc a                                         ; $7ca1: $9f
    cp $8f                                        ; $7ca2: $fe $8f
    ld a, e                                       ; $7ca4: $7b
    ld c, e                                       ; $7ca5: $4b
    ld [bc], a                                    ; $7ca6: $02
    inc sp                                        ; $7ca7: $33
    ld [bc], a                                    ; $7ca8: $02
    ret nc                                        ; $7ca9: $d0

    add l                                         ; $7caa: $85
    ld a, b                                       ; $7cab: $78
    ld hl, sp-$0c                                 ; $7cac: $f8 $f4
    db $fc                                        ; $7cae: $fc
    db $ec                                        ; $7caf: $ec
    ld [bc], a                                    ; $7cb0: $02
    db $fc                                        ; $7cb1: $fc
    add e                                         ; $7cb2: $83
    cp h                                          ; $7cb3: $bc
    ld hl, sp-$28                                 ; $7cb4: $f8 $d8
    inc bc                                        ; $7cb6: $03
    db $fc                                        ; $7cb7: $fc
    sbc e                                         ; $7cb8: $9b
    inc h                                         ; $7cb9: $24
    ld hl, sp-$28                                 ; $7cba: $f8 $d8
    ld hl, sp-$68                                 ; $7cbc: $f8 $98
    db $fc                                        ; $7cbe: $fc
    inc a                                         ; $7cbf: $3c
    cp d                                          ; $7cc0: $ba
    cp $7a                                        ; $7cc1: $fe $7a
    cp $bd                                        ; $7cc3: $fe $bd
    rst $38                                       ; $7cc5: $ff
    ld a, c                                       ; $7cc6: $79
    rst $38                                       ; $7cc7: $ff
    ld a, a                                       ; $7cc8: $7f
    ld sp, hl                                     ; $7cc9: $f9
    scf                                           ; $7cca: $37
    ccf                                           ; $7ccb: $3f
    ld [hl], a                                    ; $7ccc: $77
    ld a, a                                       ; $7ccd: $7f
    ld l, e                                       ; $7cce: $6b
    ld a, a                                       ; $7ccf: $7f
    ld l, e                                       ; $7cd0: $6b
    ld a, a                                       ; $7cd1: $7f
    sbc l                                         ; $7cd2: $9d
    rst $38                                       ; $7cd3: $ff
    ld [bc], a                                    ; $7cd4: $02
    ld [hl], e                                    ; $7cd5: $73
    add d                                         ; $7cd6: $82
    ld [bc], a                                    ; $7cd7: $02
    inc bc                                        ; $7cd8: $03
    ld [bc], a                                    ; $7cd9: $02
    ld bc, $0010                                  ; $7cda: $01 $10 $00
    add d                                         ; $7cdd: $82
    rlca                                          ; $7cde: $07
    dec b                                         ; $7cdf: $05
    inc b                                         ; $7ce0: $04
    ld b, $02                                     ; $7ce1: $06 $02
    rlca                                          ; $7ce3: $07
    add c                                         ; $7ce4: $81
    dec b                                         ; $7ce5: $05
    inc bc                                        ; $7ce6: $03
    rlca                                          ; $7ce7: $07
    add d                                         ; $7ce8: $82
    ld [bc], a                                    ; $7ce9: $02
    ld b, $02                                     ; $7cea: $06 $02
    inc b                                         ; $7cec: $04
    stop                                          ; $7ced: $10 $00
    rst $38                                       ; $7cef: $ff
    dec c                                         ; $7cf0: $0d
    inc b                                         ; $7cf1: $04
    ld hl, sp+$07                                 ; $7cf2: $f8 $07
    di                                            ; $7cf4: $f3
    ld [bc], a                                    ; $7cf5: $02
    db $ec                                        ; $7cf6: $ec
    ld hl, sp-$14                                 ; $7cf7: $f8 $ec
    rst $38                                       ; $7cf9: $ff
    db $fc                                        ; $7cfa: $fc
    ei                                            ; $7cfb: $fb
    db $fc                                        ; $7cfc: $fc
    cp $02                                        ; $7cfd: $fe $02
    rlca                                          ; $7cff: $07
    add h                                         ; $7d00: $84
    ld e, $1f                                     ; $7d01: $1e $1f
    ld [hl], e                                    ; $7d03: $73
    ld a, a                                       ; $7d04: $7f
    ld [bc], a                                    ; $7d05: $02
    rra                                           ; $7d06: $1f
    add h                                         ; $7d07: $84
    ccf                                           ; $7d08: $3f
    dec [hl]                                      ; $7d09: $35
    rra                                           ; $7d0a: $1f
    dec e                                         ; $7d0b: $1d
    inc bc                                        ; $7d0c: $03
    ccf                                           ; $7d0d: $3f
    sub c                                         ; $7d0e: $91
    ld [hl-], a                                   ; $7d0f: $32
    ld a, a                                       ; $7d10: $7f
    ld a, l                                       ; $7d11: $7d
    rst $38                                       ; $7d12: $ff
    sub a                                         ; $7d13: $97
    rst $38                                       ; $7d14: $ff
    sub d                                         ; $7d15: $92
    db $fd                                        ; $7d16: $fd
    sbc a                                         ; $7d17: $9f
    ld l, [hl]                                    ; $7d18: $6e
    ld a, a                                       ; $7d19: $7f
    dec a                                         ; $7d1a: $3d
    ccf                                           ; $7d1b: $3f
    ld b, $07                                     ; $7d1c: $06 $07
    ld b, $07                                     ; $7d1e: $06 $07
    ld [bc], a                                    ; $7d20: $02
    ld d, b                                       ; $7d21: $50
    ld [bc], a                                    ; $7d22: $02
    ld a, b                                       ; $7d23: $78
    add e                                         ; $7d24: $83
    ld [hl], h                                    ; $7d25: $74
    ld a, h                                       ; $7d26: $7c
    ld l, h                                       ; $7d27: $6c
    ld [bc], a                                    ; $7d28: $02
    ld a, h                                       ; $7d29: $7c
    add e                                         ; $7d2a: $83
    inc a                                         ; $7d2b: $3c
    ld a, b                                       ; $7d2c: $78
    ld e, b                                       ; $7d2d: $58
    inc bc                                        ; $7d2e: $03
    ld a, h                                       ; $7d2f: $7c
    adc [hl]                                      ; $7d30: $8e
    inc h                                         ; $7d31: $24
    ld a, b                                       ; $7d32: $78
    ld e, b                                       ; $7d33: $58
    ld a, b                                       ; $7d34: $78
    jr jr_0da_7db3                                ; $7d35: $18 $7c

    inc a                                         ; $7d37: $3c
    ld a, [hl-]                                   ; $7d38: $3a
    ld a, [hl]                                    ; $7d39: $7e
    ld a, d                                       ; $7d3a: $7a
    ld a, [hl]                                    ; $7d3b: $7e
    dec a                                         ; $7d3c: $3d
    ld a, a                                       ; $7d3d: $7f
    ld a, c                                       ; $7d3e: $79
    ld [bc], a                                    ; $7d3f: $02
    ld a, a                                       ; $7d40: $7f
    adc e                                         ; $7d41: $8b
    ld a, c                                       ; $7d42: $79
    ld [hl], a                                    ; $7d43: $77
    ld a, a                                       ; $7d44: $7f
    ld [hl], a                                    ; $7d45: $77
    ld a, a                                       ; $7d46: $7f
    ld l, e                                       ; $7d47: $6b
    ld a, a                                       ; $7d48: $7f
    ld l, e                                       ; $7d49: $6b
    ld a, a                                       ; $7d4a: $7f
    sbc l                                         ; $7d4b: $9d
    rst $38                                       ; $7d4c: $ff
    ld [bc], a                                    ; $7d4d: $02
    ld [hl], e                                    ; $7d4e: $73
    add d                                         ; $7d4f: $82
    ld [bc], a                                    ; $7d50: $02
    inc bc                                        ; $7d51: $03
    ld [bc], a                                    ; $7d52: $02
    ld bc, $0010                                  ; $7d53: $01 $10 $00
    add d                                         ; $7d56: $82
    rlca                                          ; $7d57: $07
    dec b                                         ; $7d58: $05
    inc b                                         ; $7d59: $04
    ld b, $02                                     ; $7d5a: $06 $02
    rlca                                          ; $7d5c: $07
    add c                                         ; $7d5d: $81
    dec b                                         ; $7d5e: $05
    inc bc                                        ; $7d5f: $03
    rlca                                          ; $7d60: $07
    add d                                         ; $7d61: $82
    ld [bc], a                                    ; $7d62: $02
    ld b, $02                                     ; $7d63: $06 $02
    inc b                                         ; $7d65: $04
    stop                                          ; $7d66: $10 $00
    rst $38                                       ; $7d68: $ff
    dec c                                         ; $7d69: $0d
    inc b                                         ; $7d6a: $04
    ld hl, sp+$07                                 ; $7d6b: $f8 $07
    di                                            ; $7d6d: $f3
    ld [bc], a                                    ; $7d6e: $02
    db $eb                                        ; $7d6f: $eb
    ld sp, hl                                     ; $7d70: $f9
    db $eb                                        ; $7d71: $eb
    rst $38                                       ; $7d72: $ff
    ei                                            ; $7d73: $fb
    ei                                            ; $7d74: $fb
    ei                                            ; $7d75: $fb
    rst $38                                       ; $7d76: $ff
    ld [bc], a                                    ; $7d77: $02
    rlca                                          ; $7d78: $07
    add h                                         ; $7d79: $84
    ld e, $1f                                     ; $7d7a: $1e $1f
    ld [hl], e                                    ; $7d7c: $73
    ld a, a                                       ; $7d7d: $7f
    ld [bc], a                                    ; $7d7e: $02
    rra                                           ; $7d7f: $1f
    add h                                         ; $7d80: $84
    ccf                                           ; $7d81: $3f
    dec [hl]                                      ; $7d82: $35
    rra                                           ; $7d83: $1f
    dec e                                         ; $7d84: $1d
    ld [bc], a                                    ; $7d85: $02
    ccf                                           ; $7d86: $3f
    sub d                                         ; $7d87: $92
    ld a, a                                       ; $7d88: $7f
    ld [hl], d                                    ; $7d89: $72
    rst $38                                       ; $7d8a: $ff
    sbc l                                         ; $7d8b: $9d
    rst $38                                       ; $7d8c: $ff
    add a                                         ; $7d8d: $87
    rst $38                                       ; $7d8e: $ff
    sub d                                         ; $7d8f: $92
    cp $ff                                        ; $7d90: $fe $ff
    xor l                                         ; $7d92: $ad
    rst $38                                       ; $7d93: $ff
    ld a, d                                       ; $7d94: $7a
    ld a, a                                       ; $7d95: $7f
    dec c                                         ; $7d96: $0d
    rrca                                          ; $7d97: $0f
    dec c                                         ; $7d98: $0d
    rrca                                          ; $7d99: $0f
    ld [bc], a                                    ; $7d9a: $02

jr_0da_7d9b:
    jr z, jr_0da_7d9f                             ; $7d9b: $28 $02

    inc a                                         ; $7d9d: $3c
    add e                                         ; $7d9e: $83

jr_0da_7d9f:
    ld a, [hl-]                                   ; $7d9f: $3a
    ld a, $36                                     ; $7da0: $3e $36
    ld [bc], a                                    ; $7da2: $02
    ld a, $83                                     ; $7da3: $3e $83
    ld e, $3c                                     ; $7da5: $1e $3c
    inc l                                         ; $7da7: $2c
    inc bc                                        ; $7da8: $03
    ld a, $87                                     ; $7da9: $3e $87
    ld [de], a                                    ; $7dab: $12
    inc a                                         ; $7dac: $3c
    inc l                                         ; $7dad: $2c
    jr c, jr_0da_7db8                             ; $7dae: $38 $08

    jr c, jr_0da_7dca                             ; $7db0: $38 $18

    ld [bc], a                                    ; $7db2: $02

jr_0da_7db3:
    inc a                                         ; $7db3: $3c
    sub h                                         ; $7db4: $94
    ld a, [hl-]                                   ; $7db5: $3a
    ld a, $3a                                     ; $7db6: $3e $3a

jr_0da_7db8:
    ld a, $3d                                     ; $7db8: $3e $3d
    ccf                                           ; $7dba: $3f
    add hl, sp                                    ; $7dbb: $39
    ccf                                           ; $7dbc: $3f
    ld [hl], a                                    ; $7dbd: $77
    ld a, a                                       ; $7dbe: $7f
    ld [hl], a                                    ; $7dbf: $77
    ld a, a                                       ; $7dc0: $7f
    ld l, e                                       ; $7dc1: $6b
    ld a, a                                       ; $7dc2: $7f
    ld l, e                                       ; $7dc3: $6b
    ld a, a                                       ; $7dc4: $7f
    ld l, e                                       ; $7dc5: $6b
    ld a, a                                       ; $7dc6: $7f
    sbc l                                         ; $7dc7: $9d
    rst $38                                       ; $7dc8: $ff
    ld [bc], a                                    ; $7dc9: $02

jr_0da_7dca:
    ld [hl], e                                    ; $7dca: $73
    add d                                         ; $7dcb: $82
    ld [bc], a                                    ; $7dcc: $02
    inc bc                                        ; $7dcd: $03
    ld [bc], a                                    ; $7dce: $02
    ld bc, $000e                                  ; $7dcf: $01 $0e $00
    add h                                         ; $7dd2: $84
    rrca                                          ; $7dd3: $0f
    add hl, bc                                    ; $7dd4: $09
    ld c, $0a                                     ; $7dd5: $0e $0a
    inc b                                         ; $7dd7: $04
    inc c                                         ; $7dd8: $0c
    ld [bc], a                                    ; $7dd9: $02
    ld c, $81                                     ; $7dda: $0e $81
    ld a, [bc]                                    ; $7ddc: $0a
    inc bc                                        ; $7ddd: $03
    ld c, $82                                     ; $7dde: $0e $82
    inc b                                         ; $7de0: $04
    inc c                                         ; $7de1: $0c
    ld [bc], a                                    ; $7de2: $02
    ld [$000e], sp                                ; $7de3: $08 $0e $00
    rst $38                                       ; $7de6: $ff
    dec c                                         ; $7de7: $0d
    inc b                                         ; $7de8: $04
    ld hl, sp+$07                                 ; $7de9: $f8 $07
    di                                            ; $7deb: $f3
    ld [bc], a                                    ; $7dec: $02
    db $eb                                        ; $7ded: $eb
    ld sp, hl                                     ; $7dee: $f9
    db $eb                                        ; $7def: $eb
    rst $38                                       ; $7df0: $ff
    ei                                            ; $7df1: $fb
    ei                                            ; $7df2: $fb
    ei                                            ; $7df3: $fb
    rst $38                                       ; $7df4: $ff
    ld [bc], a                                    ; $7df5: $02
    ld bc, $1f02                                  ; $7df6: $01 $02 $1f
    add c                                         ; $7df9: $81
    add hl, bc                                    ; $7dfa: $09
    inc bc                                        ; $7dfb: $03
    rrca                                          ; $7dfc: $0f
    sbc b                                         ; $7dfd: $98
    rra                                           ; $7dfe: $1f
    dec e                                         ; $7dff: $1d
    ccf                                           ; $7e00: $3f
    ld a, $7f                                     ; $7e01: $3e $7f
    ld c, l                                       ; $7e03: $4d
    rst $38                                       ; $7e04: $ff
    add l                                         ; $7e05: $85
    rst $38                                       ; $7e06: $ff
    bit 7, a                                      ; $7e07: $cb $7f
    ld a, l                                       ; $7e09: $7d
    sub a                                         ; $7e0a: $97
    rst $30                                       ; $7e0b: $f7
    sbc [hl]                                      ; $7e0c: $9e
    rst $38                                       ; $7e0d: $ff
    ld l, h                                       ; $7e0e: $6c
    ld a, a                                       ; $7e0f: $7f
    dec e                                         ; $7e10: $1d
    rra                                           ; $7e11: $1f
    dec c                                         ; $7e12: $0d
    rrca                                          ; $7e13: $0f
    dec e                                         ; $7e14: $1d
    rra                                           ; $7e15: $1f
    ld [bc], a                                    ; $7e16: $02
    jr c, jr_0da_7d9b                             ; $7e17: $38 $82

    ld l, $3e                                     ; $7e19: $2e $3e
    ld [bc], a                                    ; $7e1b: $02
    ccf                                           ; $7e1c: $3f
    add c                                         ; $7e1d: $81
    add hl, sp                                    ; $7e1e: $39
    ld [bc], a                                    ; $7e1f: $02
    ccf                                           ; $7e20: $3f
    and e                                         ; $7e21: $a3
    rla                                           ; $7e22: $17
    ccf                                           ; $7e23: $3f
    scf                                           ; $7e24: $37
    ccf                                           ; $7e25: $3f
    rra                                           ; $7e26: $1f
    ld a, $0a                                     ; $7e27: $3e $0a
    ccf                                           ; $7e29: $3f
    add hl, sp                                    ; $7e2a: $39
    ld a, $26                                     ; $7e2b: $3e $26
    jr c, jr_0da_7e37                             ; $7e2d: $38 $08

    inc e                                         ; $7e2f: $1c
    inc a                                         ; $7e30: $3c
    ld a, [hl-]                                   ; $7e31: $3a
    ld a, $3a                                     ; $7e32: $3e $3a
    ld a, $3d                                     ; $7e34: $3e $3d
    ccf                                           ; $7e36: $3f

jr_0da_7e37:
    add hl, sp                                    ; $7e37: $39
    ccf                                           ; $7e38: $3f
    ld [hl], a                                    ; $7e39: $77
    ld a, a                                       ; $7e3a: $7f
    ld l, e                                       ; $7e3b: $6b
    ld a, a                                       ; $7e3c: $7f
    ld l, e                                       ; $7e3d: $6b
    ld a, a                                       ; $7e3e: $7f
    ld l, e                                       ; $7e3f: $6b
    ld a, a                                       ; $7e40: $7f
    ld e, l                                       ; $7e41: $5d
    ld a, a                                       ; $7e42: $7f
    sbc l                                         ; $7e43: $9d
    rst $38                                       ; $7e44: $ff
    ld [bc], a                                    ; $7e45: $02
    ld [hl], e                                    ; $7e46: $73
    add d                                         ; $7e47: $82
    ld [bc], a                                    ; $7e48: $02
    inc bc                                        ; $7e49: $03
    ld [bc], a                                    ; $7e4a: $02
    ld bc, $000e                                  ; $7e4b: $01 $0e $00
    add h                                         ; $7e4e: $84
    rrca                                          ; $7e4f: $0f
    add hl, bc                                    ; $7e50: $09
    ld c, $0a                                     ; $7e51: $0e $0a
    ld b, $0c                                     ; $7e53: $06 $0c
    add c                                         ; $7e55: $81
    ld a, [bc]                                    ; $7e56: $0a
    inc bc                                        ; $7e57: $03
    ld c, $82                                     ; $7e58: $0e $82
    inc b                                         ; $7e5a: $04
    inc c                                         ; $7e5b: $0c
    ld [bc], a                                    ; $7e5c: $02
    ld [$000e], sp                                ; $7e5d: $08 $0e $00
    rst $38                                       ; $7e60: $ff
    dec c                                         ; $7e61: $0d
    inc b                                         ; $7e62: $04
    ld hl, sp+$07                                 ; $7e63: $f8 $07
    di                                            ; $7e65: $f3
    ld [bc], a                                    ; $7e66: $02
    db $eb                                        ; $7e67: $eb
    ld sp, hl                                     ; $7e68: $f9
    db $eb                                        ; $7e69: $eb
    rst $38                                       ; $7e6a: $ff
    ei                                            ; $7e6b: $fb
    ei                                            ; $7e6c: $fb
    ei                                            ; $7e6d: $fb
    rst $38                                       ; $7e6e: $ff
    ld [bc], a                                    ; $7e6f: $02
    rlca                                          ; $7e70: $07
    add h                                         ; $7e71: $84
    ld e, $1f                                     ; $7e72: $1e $1f
    ld [hl], e                                    ; $7e74: $73
    ld a, a                                       ; $7e75: $7f
    ld [bc], a                                    ; $7e76: $02
    rra                                           ; $7e77: $1f
    sbc b                                         ; $7e78: $98
    ccf                                           ; $7e79: $3f
    dec [hl]                                      ; $7e7a: $35
    rra                                           ; $7e7b: $1f
    dec e                                         ; $7e7c: $1d
    ccf                                           ; $7e7d: $3f
    ld a, [hl-]                                   ; $7e7e: $3a
    ld a, a                                       ; $7e7f: $7f
    ld [hl], d                                    ; $7e80: $72
    rst $38                                       ; $7e81: $ff
    sbc l                                         ; $7e82: $9d
    rst $38                                       ; $7e83: $ff
    add a                                         ; $7e84: $87
    rst $38                                       ; $7e85: $ff
    sub d                                         ; $7e86: $92
    cp [hl]                                       ; $7e87: $be
    rst $38                                       ; $7e88: $ff
    xor l                                         ; $7e89: $ad
    rst $38                                       ; $7e8a: $ff
    ld a, [$0dff]                                 ; $7e8b: $fa $ff $0d
    rrca                                          ; $7e8e: $0f
    dec c                                         ; $7e8f: $0d
    rrca                                          ; $7e90: $0f
    ld [bc], a                                    ; $7e91: $02
    jr z, jr_0da_7e96                             ; $7e92: $28 $02

    inc a                                         ; $7e94: $3c
    add e                                         ; $7e95: $83

jr_0da_7e96:
    ld a, [hl-]                                   ; $7e96: $3a
    ld a, $36                                     ; $7e97: $3e $36
    ld [bc], a                                    ; $7e99: $02
    ld a, $83                                     ; $7e9a: $3e $83
    ld e, $3c                                     ; $7e9c: $1e $3c
    inc l                                         ; $7e9e: $2c
    inc bc                                        ; $7e9f: $03
    ld a, $9d                                     ; $7ea0: $3e $9d
    ld [de], a                                    ; $7ea2: $12
    inc a                                         ; $7ea3: $3c
    inc l                                         ; $7ea4: $2c
    jr c, @+$0a                                   ; $7ea5: $38 $08

    jr c, jr_0da_7ec1                             ; $7ea7: $38 $18

    inc e                                         ; $7ea9: $1c
    inc a                                         ; $7eaa: $3c
    ld a, [hl-]                                   ; $7eab: $3a
    ld a, $3a                                     ; $7eac: $3e $3a
    ld a, $3d                                     ; $7eae: $3e $3d
    ccf                                           ; $7eb0: $3f
    add hl, sp                                    ; $7eb1: $39
    ccf                                           ; $7eb2: $3f
    ld [hl], a                                    ; $7eb3: $77
    ld a, a                                       ; $7eb4: $7f
    ld [hl], a                                    ; $7eb5: $77
    ld a, a                                       ; $7eb6: $7f
    ld l, e                                       ; $7eb7: $6b
    ld a, a                                       ; $7eb8: $7f
    ld l, e                                       ; $7eb9: $6b
    ld a, a                                       ; $7eba: $7f
    ld l, e                                       ; $7ebb: $6b
    ld a, a                                       ; $7ebc: $7f
    sbc l                                         ; $7ebd: $9d
    rst $38                                       ; $7ebe: $ff
    ld [bc], a                                    ; $7ebf: $02
    ld [hl], e                                    ; $7ec0: $73

jr_0da_7ec1:
    add d                                         ; $7ec1: $82
    ld [bc], a                                    ; $7ec2: $02
    inc bc                                        ; $7ec3: $03
    ld [bc], a                                    ; $7ec4: $02
    ld bc, $000e                                  ; $7ec5: $01 $0e $00
    add h                                         ; $7ec8: $84
    rrca                                          ; $7ec9: $0f
    add hl, bc                                    ; $7eca: $09
    ld c, $0a                                     ; $7ecb: $0e $0a
    inc b                                         ; $7ecd: $04
    inc c                                         ; $7ece: $0c
    ld [bc], a                                    ; $7ecf: $02
    ld c, $81                                     ; $7ed0: $0e $81
    ld a, [bc]                                    ; $7ed2: $0a
    inc bc                                        ; $7ed3: $03
    ld c, $82                                     ; $7ed4: $0e $82
    inc b                                         ; $7ed6: $04
    inc c                                         ; $7ed7: $0c
    ld [bc], a                                    ; $7ed8: $02
    ld [$000e], sp                                ; $7ed9: $08 $0e $00
    rst $38                                       ; $7edc: $ff
    dec c                                         ; $7edd: $0d
    inc b                                         ; $7ede: $04
    ld hl, sp+$07                                 ; $7edf: $f8 $07
    di                                            ; $7ee1: $f3
    ld [bc], a                                    ; $7ee2: $02
    db $eb                                        ; $7ee3: $eb
    rst $30                                       ; $7ee4: $f7
    db $eb                                        ; $7ee5: $eb
    rst $38                                       ; $7ee6: $ff
    ei                                            ; $7ee7: $fb
    ld sp, hl                                     ; $7ee8: $f9
    ei                                            ; $7ee9: $fb
    rst $38                                       ; $7eea: $ff
    ld [bc], a                                    ; $7eeb: $02
    ld bc, $0702                                  ; $7eec: $01 $02 $07
    add d                                         ; $7eef: $82
    inc e                                         ; $7ef0: $1c
    rra                                           ; $7ef1: $1f
    ld [bc], a                                    ; $7ef2: $02
    rlca                                          ; $7ef3: $07
    add d                                         ; $7ef4: $82
    rrca                                          ; $7ef5: $0f
    dec c                                         ; $7ef6: $0d
    ld [bc], a                                    ; $7ef7: $02
    rlca                                          ; $7ef8: $07
    add h                                         ; $7ef9: $84
    rrca                                          ; $7efa: $0f
    ld c, $0f                                     ; $7efb: $0e $0f
    inc c                                         ; $7efd: $0c
    ld [bc], a                                    ; $7efe: $02
    rlca                                          ; $7eff: $07
    add d                                         ; $7f00: $82
    inc bc                                        ; $7f01: $03
    ld [bc], a                                    ; $7f02: $02
    ld [bc], a                                    ; $7f03: $02
    rrca                                          ; $7f04: $0f
    adc d                                         ; $7f05: $8a
    ld e, $13                                     ; $7f06: $1e $13
    ld a, [hl]                                    ; $7f08: $7e
    ld h, a                                       ; $7f09: $67
    rst $38                                       ; $7f0a: $ff
    sbc a                                         ; $7f0b: $9f
    cp $8f                                        ; $7f0c: $fe $8f
    ld a, e                                       ; $7f0e: $7b
    ld c, e                                       ; $7f0f: $4b
    ld [bc], a                                    ; $7f10: $02
    add sp, -$7b                                  ; $7f11: $e8 $85
    cp h                                          ; $7f13: $bc
    db $fc                                        ; $7f14: $fc
    ld a, [$f6fe]                                 ; $7f15: $fa $fe $f6
    ld [bc], a                                    ; $7f18: $02
    cp $a3                                        ; $7f19: $fe $a3
    ld e, [hl]                                    ; $7f1b: $5e
    db $fc                                        ; $7f1c: $fc
    ld l, h                                       ; $7f1d: $6c
    cp $be                                        ; $7f1e: $fe $be
    cp $92                                        ; $7f20: $fe $92
    db $fc                                        ; $7f22: $fc
    ld l, h                                       ; $7f23: $6c
    ld hl, sp-$38                                 ; $7f24: $f8 $c8
    ld hl, sp+$18                                 ; $7f26: $f8 $18
    call c, $bafc                                 ; $7f28: $dc $fc $ba
    cp $7a                                        ; $7f2b: $fe $7a
    cp $bd                                        ; $7f2d: $fe $bd
    rst $38                                       ; $7f2f: $ff
    ld a, c                                       ; $7f30: $79
    rst $38                                       ; $7f31: $ff
    call $1dcf                                    ; $7f32: $cd $cf $1d
    rra                                           ; $7f35: $1f
    dec e                                         ; $7f36: $1d
    rra                                           ; $7f37: $1f
    ld a, [de]                                    ; $7f38: $1a
    rra                                           ; $7f39: $1f
    ld a, [de]                                    ; $7f3a: $1a
    rra                                           ; $7f3b: $1f
    daa                                           ; $7f3c: $27
    ccf                                           ; $7f3d: $3f
    ld [bc], a                                    ; $7f3e: $02
    inc e                                         ; $7f3f: $1c
    ld [de], a                                    ; $7f40: $12
    nop                                           ; $7f41: $00
    add h                                         ; $7f42: $84
    ccf                                           ; $7f43: $3f
    add hl, sp                                    ; $7f44: $39
    ld a, $3a                                     ; $7f45: $3e $3a
    inc b                                         ; $7f47: $04
    inc a                                         ; $7f48: $3c
    ld [bc], a                                    ; $7f49: $02
    ld a, $81                                     ; $7f4a: $3e $81
    ld a, [de]                                    ; $7f4c: $1a
    inc bc                                        ; $7f4d: $03
    ld a, $82                                     ; $7f4e: $3e $82
    inc h                                         ; $7f50: $24
    inc a                                         ; $7f51: $3c
    ld [bc], a                                    ; $7f52: $02
    jr jr_0da_7f63                                ; $7f53: $18 $0e

    nop                                           ; $7f55: $00
    rst $38                                       ; $7f56: $ff
    dec c                                         ; $7f57: $0d
    inc b                                         ; $7f58: $04
    ld hl, sp+$07                                 ; $7f59: $f8 $07
    di                                            ; $7f5b: $f3
    ld [bc], a                                    ; $7f5c: $02
    db $eb                                        ; $7f5d: $eb
    ld sp, hl                                     ; $7f5e: $f9
    db $eb                                        ; $7f5f: $eb
    rst $38                                       ; $7f60: $ff
    ei                                            ; $7f61: $fb
    ld sp, hl                                     ; $7f62: $f9

jr_0da_7f63:
    ei                                            ; $7f63: $fb
    rst $38                                       ; $7f64: $ff
    ld [bc], a                                    ; $7f65: $02
    rlca                                          ; $7f66: $07
    add h                                         ; $7f67: $84
    ld e, $1f                                     ; $7f68: $1e $1f
    ld [hl], e                                    ; $7f6a: $73
    ld a, a                                       ; $7f6b: $7f
    ld [bc], a                                    ; $7f6c: $02
    rra                                           ; $7f6d: $1f
    sbc b                                         ; $7f6e: $98
    ccf                                           ; $7f6f: $3f
    dec [hl]                                      ; $7f70: $35
    rra                                           ; $7f71: $1f
    dec e                                         ; $7f72: $1d
    ccf                                           ; $7f73: $3f
    ld a, [hl-]                                   ; $7f74: $3a
    ccf                                           ; $7f75: $3f
    ld [hl-], a                                   ; $7f76: $32
    rra                                           ; $7f77: $1f
    dec e                                         ; $7f78: $1d
    rrca                                          ; $7f79: $0f
    dec bc                                        ; $7f7a: $0b
    rrca                                          ; $7f7b: $0f
    inc c                                         ; $7f7c: $0c
    dec de                                        ; $7f7d: $1b
    rra                                           ; $7f7e: $1f
    ld l, d                                       ; $7f7f: $6a
    ld a, a                                       ; $7f80: $7f
    db $fd                                        ; $7f81: $fd
    rst $18                                       ; $7f82: $df
    ld a, [$7d9f]                                 ; $7f83: $fa $9f $7d
    ld a, a                                       ; $7f86: $7f
    ld [bc], a                                    ; $7f87: $02
    jr z, jr_0da_7f8c                             ; $7f88: $28 $02

    inc a                                         ; $7f8a: $3c
    add e                                         ; $7f8b: $83

jr_0da_7f8c:
    ld a, [hl-]                                   ; $7f8c: $3a
    ld a, $36                                     ; $7f8d: $3e $36
    ld [bc], a                                    ; $7f8f: $02
    ld a, $83                                     ; $7f90: $3e $83
    ld e, $3c                                     ; $7f92: $1e $3c
    inc l                                         ; $7f94: $2c
    inc bc                                        ; $7f95: $03
    ld a, $9d                                     ; $7f96: $3e $9d
    ld [de], a                                    ; $7f98: $12
    inc a                                         ; $7f99: $3c
    inc l                                         ; $7f9a: $2c
    jr c, @+$0a                                   ; $7f9b: $38 $08

    jr c, jr_0da_7fb7                             ; $7f9d: $38 $18

    inc e                                         ; $7f9f: $1c
    inc a                                         ; $7fa0: $3c
    ld a, [hl-]                                   ; $7fa1: $3a
    ld a, $3a                                     ; $7fa2: $3e $3a
    ld a, $3d                                     ; $7fa4: $3e $3d
    ccf                                           ; $7fa6: $3f
    add hl, sp                                    ; $7fa7: $39
    ccf                                           ; $7fa8: $3f
    db $fd                                        ; $7fa9: $fd
    adc a                                         ; $7faa: $8f
    db $fd                                        ; $7fab: $fd
    adc a                                         ; $7fac: $8f
    ld a, l                                       ; $7fad: $7d
    ld a, a                                       ; $7fae: $7f
    ld a, [de]                                    ; $7faf: $1a
    rra                                           ; $7fb0: $1f
    ld a, [de]                                    ; $7fb1: $1a
    rra                                           ; $7fb2: $1f
    daa                                           ; $7fb3: $27
    ccf                                           ; $7fb4: $3f
    ld [bc], a                                    ; $7fb5: $02
    inc e                                         ; $7fb6: $1c

jr_0da_7fb7:
    ld [de], a                                    ; $7fb7: $12
    nop                                           ; $7fb8: $00
    add h                                         ; $7fb9: $84
    ccf                                           ; $7fba: $3f
    add hl, sp                                    ; $7fbb: $39
    ld a, $3a                                     ; $7fbc: $3e $3a
    inc b                                         ; $7fbe: $04
    inc a                                         ; $7fbf: $3c
    ld [bc], a                                    ; $7fc0: $02
    ld a, $81                                     ; $7fc1: $3e $81
    ld a, [de]                                    ; $7fc3: $1a
    inc bc                                        ; $7fc4: $03
    ld a, $82                                     ; $7fc5: $3e $82
    inc h                                         ; $7fc7: $24
    inc a                                         ; $7fc8: $3c
    ld [bc], a                                    ; $7fc9: $02
    jr jr_0da_7fda                                ; $7fca: $18 $0e

    nop                                           ; $7fcc: $00
    rst $38                                       ; $7fcd: $ff
    rlca                                          ; $7fce: $07
    ld bc, $07f8                                  ; $7fcf: $01 $f8 $07
    di                                            ; $7fd2: $f3
    ld [bc], a                                    ; $7fd3: $02
    push af                                       ; $7fd4: $f5
    ld a, [$0781]                                 ; $7fd5: $fa $81 $07
    rra                                           ; $7fd8: $1f
    nop                                           ; $7fd9: $00

jr_0da_7fda:
    rst $38                                       ; $7fda: $ff
    rlca                                          ; $7fdb: $07
    ld bc, $07f8                                  ; $7fdc: $01 $f8 $07
    di                                            ; $7fdf: $f3
    ld [bc], a                                    ; $7fe0: $02
    push af                                       ; $7fe1: $f5
    ld a, [$0781]                                 ; $7fe2: $fa $81 $07
    rra                                           ; $7fe5: $1f
    nop                                           ; $7fe6: $00
    rst $38                                       ; $7fe7: $ff
    rlca                                          ; $7fe8: $07
    ld bc, $07f8                                  ; $7fe9: $01 $f8 $07
    di                                            ; $7fec: $f3
    ld [bc], a                                    ; $7fed: $02
    or $fa                                        ; $7fee: $f6 $fa
    add c                                         ; $7ff0: $81
    rlca                                          ; $7ff1: $07
    rra                                           ; $7ff2: $1f
    nop                                           ; $7ff3: $00
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
