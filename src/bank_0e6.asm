; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0e6", ROMX[$4000], BANK[$e6]

    db $e6

    rlca                                          ; $4001: $07
    ld bc, $08f9                                  ; $4002: $01 $f9 $08
    ld a, [c]                                     ; $4005: $f2
    ld bc, $fcea                                  ; $4006: $01 $ea $fc
    ld [bc], a                                    ; $4009: $02
    ld d, $02                                     ; $400a: $16 $02
    ld d, a                                       ; $400c: $57
    ld [bc], a                                    ; $400d: $02
    sbc c                                         ; $400e: $99
    ld [bc], a                                    ; $400f: $02
    ld b, $02                                     ; $4010: $06 $02
    db $10                                        ; $4012: $10
    ld a, [bc]                                    ; $4013: $0a
    nop                                           ; $4014: $00
    add e                                         ; $4015: $83
    inc d                                         ; $4016: $14
    nop                                           ; $4017: $00
    ld [$0009], sp                                ; $4018: $08 $09 $00
    rst $38                                       ; $401b: $ff
    dec c                                         ; $401c: $0d
    inc b                                         ; $401d: $04
    ei                                            ; $401e: $fb
    dec b                                         ; $401f: $05
    push af                                       ; $4020: $f5
    cp $e8                                        ; $4021: $fe $e8
    ei                                            ; $4023: $fb
    jp hl                                         ; $4024: $e9


    cp $f8                                        ; $4025: $fe $f8
    ld a, [$fff8]                                 ; $4027: $fa $f8 $ff
    ld [bc], a                                    ; $402a: $02
    rrca                                          ; $402b: $0f
    sub d                                         ; $402c: $92
    inc [hl]                                      ; $402d: $34
    jr nc, jr_0e6_4082                            ; $402e: $30 $52

    ld d, b                                       ; $4030: $50
    ld sp, hl                                     ; $4031: $f9
    xor c                                         ; $4032: $a9
    cp [hl]                                       ; $4033: $be
    and [hl]                                      ; $4034: $a6
    ld a, a                                       ; $4035: $7f
    ld a, e                                       ; $4036: $7b
    ld a, a                                       ; $4037: $7f
    ld l, b                                       ; $4038: $68
    ccf                                           ; $4039: $3f
    inc h                                         ; $403a: $24
    ccf                                           ; $403b: $3f
    ld l, $1f                                     ; $403c: $2e $1f
    ld de, $3f02                                  ; $403e: $11 $02 $3f
    ld [bc], a                                    ; $4041: $02
    ld [hl], l                                    ; $4042: $75
    adc b                                         ; $4043: $88
    ld e, e                                       ; $4044: $5b
    ld a, e                                       ; $4045: $7b
    or l                                          ; $4046: $b5
    rst $38                                       ; $4047: $ff
    cp e                                          ; $4048: $bb
    rst $38                                       ; $4049: $ff
    cp e                                          ; $404a: $bb
    rst $38                                       ; $404b: $ff
    ld [bc], a                                    ; $404c: $02
    inc b                                         ; $404d: $04
    ld [bc], a                                    ; $404e: $02
    ld [bc], a                                    ; $404f: $02
    ld [bc], a                                    ; $4050: $02
    inc bc                                        ; $4051: $03
    ld b, $06                                     ; $4052: $06 $06
    inc b                                         ; $4054: $04
    inc b                                         ; $4055: $04
    ld [bc], a                                    ; $4056: $02
    nop                                           ; $4057: $00
    ld [bc], a                                    ; $4058: $02
    inc b                                         ; $4059: $04
    sbc c                                         ; $405a: $99
    ld [bc], a                                    ; $405b: $02
    ld b, $02                                     ; $405c: $06 $02
    ld b, $05                                     ; $405e: $06 $05
    rlca                                          ; $4060: $07
    dec b                                         ; $4061: $05
    rlca                                          ; $4062: $07
    dec b                                         ; $4063: $05
    rlca                                          ; $4064: $07
    db $dd                                        ; $4065: $dd
    rst $38                                       ; $4066: $ff
    sub b                                         ; $4067: $90
    ldh a, [$9d]                                  ; $4068: $f0 $9d
    rst $38                                       ; $406a: $ff
    ld a, l                                       ; $406b: $7d
    ld e, a                                       ; $406c: $5f
    ld a, d                                       ; $406d: $7a
    ld e, a                                       ; $406e: $5f
    ld a, [hl-]                                   ; $406f: $3a
    ccf                                           ; $4070: $3f
    dec sp                                        ; $4071: $3b
    ccf                                           ; $4072: $3f
    scf                                           ; $4073: $37
    inc bc                                        ; $4074: $03
    ccf                                           ; $4075: $3f
    ld [bc], a                                    ; $4076: $02
    add hl, de                                    ; $4077: $19
    stop                                          ; $4078: $10 $00
    add e                                         ; $407a: $83
    add hl, de                                    ; $407b: $19
    rra                                           ; $407c: $1f
    ld a, [de]                                    ; $407d: $1a
    ld [bc], a                                    ; $407e: $02
    ld e, $81                                     ; $407f: $1e $81
    ld [de], a                                    ; $4081: $12

jr_0e6_4082:
    ld [bc], a                                    ; $4082: $02
    inc e                                         ; $4083: $1c
    add c                                         ; $4084: $81
    inc c                                         ; $4085: $0c
    inc bc                                        ; $4086: $03
    inc e                                         ; $4087: $1c
    add c                                         ; $4088: $81
    inc b                                         ; $4089: $04
    inc bc                                        ; $408a: $03
    inc e                                         ; $408b: $1c
    ld c, $00                                     ; $408c: $0e $00
    rst $38                                       ; $408e: $ff
    rlca                                          ; $408f: $07
    ld bc, $08f9                                  ; $4090: $01 $f9 $08
    ld a, [c]                                     ; $4093: $f2
    ld bc, $fce9                                  ; $4094: $01 $e9 $fc
    ld [bc], a                                    ; $4097: $02
    ld d, $02                                     ; $4098: $16 $02
    ld e, e                                       ; $409a: $5b
    ld [bc], a                                    ; $409b: $02
    dec c                                         ; $409c: $0d
    ld [bc], a                                    ; $409d: $02
    add d                                         ; $409e: $82
    inc c                                         ; $409f: $0c
    nop                                           ; $40a0: $00
    add e                                         ; $40a1: $83
    inc d                                         ; $40a2: $14
    nop                                           ; $40a3: $00
    ld [$0009], sp                                ; $40a4: $08 $09 $00
    rst $38                                       ; $40a7: $ff
    dec c                                         ; $40a8: $0d
    inc b                                         ; $40a9: $04
    ei                                            ; $40aa: $fb
    dec b                                         ; $40ab: $05
    push af                                       ; $40ac: $f5
    cp $e8                                        ; $40ad: $fe $e8
    ld a, [$fee8]                                 ; $40af: $fa $e8 $fe
    ld hl, sp-$05                                 ; $40b2: $f8 $fb
    ld hl, sp-$02                                 ; $40b4: $f8 $fe
    ld [bc], a                                    ; $40b6: $02
    rlca                                          ; $40b7: $07
    add d                                         ; $40b8: $82
    add hl, de                                    ; $40b9: $19
    jr jr_0e6_40be                                ; $40ba: $18 $02

    inc l                                         ; $40bc: $2c
    adc [hl]                                      ; $40bd: $8e

jr_0e6_40be:
    ld l, [hl]                                    ; $40be: $6e
    ld c, d                                       ; $40bf: $4a
    ld e, a                                       ; $40c0: $5f
    ld d, c                                       ; $40c1: $51
    dec a                                         ; $40c2: $3d
    inc a                                         ; $40c3: $3c
    ccf                                           ; $40c4: $3f
    ld [hl-], a                                   ; $40c5: $32
    rra                                           ; $40c6: $1f
    ld de, $131b                                  ; $40c7: $11 $1b $13
    rrca                                          ; $40ca: $0f
    ld [$3f02], sp                                ; $40cb: $08 $02 $3f
    ld [bc], a                                    ; $40ce: $02
    ld a, [hl-]                                   ; $40cf: $3a
    adc b                                         ; $40d0: $88
    ld e, l                                       ; $40d1: $5d
    ld a, l                                       ; $40d2: $7d
    ld e, d                                       ; $40d3: $5a
    ld a, a                                       ; $40d4: $7f
    sbc l                                         ; $40d5: $9d
    rst $38                                       ; $40d6: $ff
    sbc l                                         ; $40d7: $9d
    rst $38                                       ; $40d8: $ff
    ld [bc], a                                    ; $40d9: $02
    ld [$0402], sp                                ; $40da: $08 $02 $04
    add d                                         ; $40dd: $82
    ld a, [bc]                                    ; $40de: $0a
    ld [bc], a                                    ; $40df: $02
    ld [bc], a                                    ; $40e0: $02
    rlca                                          ; $40e1: $07
    ld [bc], a                                    ; $40e2: $02
    ld [bc], a                                    ; $40e3: $02
    inc bc                                        ; $40e4: $03
    ld c, $85                                     ; $40e5: $0e $85
    ld b, $0c                                     ; $40e7: $06 $0c
    inc b                                         ; $40e9: $04
    inc c                                         ; $40ea: $0c
    inc b                                         ; $40eb: $04
    inc b                                         ; $40ec: $04
    ld [$0c02], sp                                ; $40ed: $08 $02 $0c
    sub e                                         ; $40f0: $93
    ld a, [bc]                                    ; $40f1: $0a
    ld c, $0a                                     ; $40f2: $0e $0a
    ld c, $0d                                     ; $40f4: $0e $0d
    rrca                                          ; $40f6: $0f
    add hl, bc                                    ; $40f7: $09
    rrca                                          ; $40f8: $0f
    cp e                                          ; $40f9: $bb
    rst $38                                       ; $40fa: $ff
    ld a, [c]                                     ; $40fb: $f2
    cp a                                          ; $40fc: $bf
    ld [hl], a                                    ; $40fd: $77
    ld a, [hl]                                    ; $40fe: $7e
    ld l, l                                       ; $40ff: $6d
    ld a, [hl]                                    ; $4100: $7e
    ld e, l                                       ; $4101: $5d
    ld a, a                                       ; $4102: $7f
    ld a, l                                       ; $4103: $7d
    inc bc                                        ; $4104: $03
    ld a, a                                       ; $4105: $7f
    add d                                         ; $4106: $82
    ld c, [hl]                                    ; $4107: $4e
    ld a, a                                       ; $4108: $7f
    ld [bc], a                                    ; $4109: $02
    ld a, e                                       ; $410a: $7b
    ld [bc], a                                    ; $410b: $02
    jr c, jr_0e6_411a                             ; $410c: $38 $0c

    nop                                           ; $410e: $00
    adc b                                         ; $410f: $88
    ld bc, $0107                                  ; $4110: $01 $07 $01
    rlca                                          ; $4113: $07
    ld b, $02                                     ; $4114: $06 $02
    ld b, $02                                     ; $4116: $06 $02
    inc b                                         ; $4118: $04
    inc b                                         ; $4119: $04

jr_0e6_411a:
    inc b                                         ; $411a: $04
    ld b, $02                                     ; $411b: $06 $02
    inc b                                         ; $411d: $04
    ld c, $00                                     ; $411e: $0e $00
    rst $38                                       ; $4120: $ff
    rlca                                          ; $4121: $07
    ld bc, $08f9                                  ; $4122: $01 $f9 $08
    ld a, [c]                                     ; $4125: $f2
    ld bc, $fce9                                  ; $4126: $01 $e9 $fc
    ld [bc], a                                    ; $4129: $02
    ld a, [de]                                    ; $412a: $1a
    ld [bc], a                                    ; $412b: $02
    ld c, l                                       ; $412c: $4d
    ld [bc], a                                    ; $412d: $02
    ld b, [hl]                                    ; $412e: $46
    ld [bc], a                                    ; $412f: $02
    add e                                         ; $4130: $83
    ld [bc], a                                    ; $4131: $02
    ld [$0004], sp                                ; $4132: $08 $04 $00
    ld [bc], a                                    ; $4135: $02
    db $10                                        ; $4136: $10
    inc b                                         ; $4137: $04
    nop                                           ; $4138: $00
    add e                                         ; $4139: $83
    inc d                                         ; $413a: $14
    nop                                           ; $413b: $00
    ld [$0009], sp                                ; $413c: $08 $09 $00
    rst $38                                       ; $413f: $ff
    dec c                                         ; $4140: $0d
    inc b                                         ; $4141: $04
    ei                                            ; $4142: $fb
    dec b                                         ; $4143: $05
    push af                                       ; $4144: $f5
    cp $e9                                        ; $4145: $fe $e9
    ld a, [$fee9]                                 ; $4147: $fa $e9 $fe
    ld sp, hl                                     ; $414a: $f9
    ei                                            ; $414b: $fb
    ld sp, hl                                     ; $414c: $f9
    cp $02                                        ; $414d: $fe $02
    rlca                                          ; $414f: $07
    add d                                         ; $4150: $82
    add hl, de                                    ; $4151: $19
    jr jr_0e6_4156                                ; $4152: $18 $02

    inc l                                         ; $4154: $2c
    adc [hl]                                      ; $4155: $8e

jr_0e6_4156:
    ld l, [hl]                                    ; $4156: $6e
    ld c, d                                       ; $4157: $4a
    ld e, a                                       ; $4158: $5f
    ld d, c                                       ; $4159: $51
    dec a                                         ; $415a: $3d
    inc a                                         ; $415b: $3c
    ccf                                           ; $415c: $3f
    ld [hl-], a                                   ; $415d: $32
    rra                                           ; $415e: $1f
    ld de, $171f                                  ; $415f: $11 $1f $17
    rrca                                          ; $4162: $0f
    ld [$1f02], sp                                ; $4163: $08 $02 $1f
    ld [bc], a                                    ; $4166: $02
    ld a, [hl-]                                   ; $4167: $3a
    adc b                                         ; $4168: $88
    dec l                                         ; $4169: $2d
    dec a                                         ; $416a: $3d
    ld e, d                                       ; $416b: $5a
    ld a, a                                       ; $416c: $7f
    ld e, l                                       ; $416d: $5d
    ld a, a                                       ; $416e: $7f
    sbc l                                         ; $416f: $9d
    rst $38                                       ; $4170: $ff
    ld [bc], a                                    ; $4171: $02
    ld [$0402], sp                                ; $4172: $08 $02 $04
    add d                                         ; $4175: $82
    ld a, [bc]                                    ; $4176: $0a
    ld [bc], a                                    ; $4177: $02
    ld [bc], a                                    ; $4178: $02
    rlca                                          ; $4179: $07
    ld [bc], a                                    ; $417a: $02
    ld [bc], a                                    ; $417b: $02
    inc bc                                        ; $417c: $03
    ld c, $85                                     ; $417d: $0e $85
    ld b, $0c                                     ; $417f: $06 $0c
    inc b                                         ; $4181: $04
    inc c                                         ; $4182: $0c
    inc b                                         ; $4183: $04
    inc b                                         ; $4184: $04
    ld [$0e02], sp                                ; $4185: $08 $02 $0e
    sub e                                         ; $4188: $93
    ld a, [bc]                                    ; $4189: $0a
    ld c, $0a                                     ; $418a: $0e $0a
    ld c, $0d                                     ; $418c: $0e $0d
    rrca                                          ; $418e: $0f
    dec c                                         ; $418f: $0d
    rrca                                          ; $4190: $0f
    cp e                                          ; $4191: $bb
    rst $38                                       ; $4192: $ff
    ei                                            ; $4193: $fb
    cp a                                          ; $4194: $bf
    rst $30                                       ; $4195: $f7
    cp a                                          ; $4196: $bf
    ld l, a                                       ; $4197: $6f
    ld a, a                                       ; $4198: $7f
    dec l                                         ; $4199: $2d
    ccf                                           ; $419a: $3f
    ld a, l                                       ; $419b: $7d
    inc bc                                        ; $419c: $03
    ld a, a                                       ; $419d: $7f
    add d                                         ; $419e: $82
    ld c, e                                       ; $419f: $4b
    ld a, e                                       ; $41a0: $7b
    ld [bc], a                                    ; $41a1: $02
    ld a, b                                       ; $41a2: $78
    ld c, $00                                     ; $41a3: $0e $00
    add e                                         ; $41a5: $83
    ld bc, $0107                                  ; $41a6: $01 $07 $01
    ld [bc], a                                    ; $41a9: $02
    rlca                                          ; $41aa: $07
    add e                                         ; $41ab: $83
    ld bc, $0507                                  ; $41ac: $01 $07 $05
    inc b                                         ; $41af: $04
    ld b, $02                                     ; $41b0: $06 $02
    inc b                                         ; $41b2: $04
    ld [de], a                                    ; $41b3: $12
    nop                                           ; $41b4: $00
    rst $38                                       ; $41b5: $ff
    rlca                                          ; $41b6: $07
    ld bc, $08f9                                  ; $41b7: $01 $f9 $08
    ld a, [c]                                     ; $41ba: $f2
    ld bc, $fcea                                  ; $41bb: $01 $ea $fc
    ld [bc], a                                    ; $41be: $02
    ld a, [de]                                    ; $41bf: $1a
    ld [bc], a                                    ; $41c0: $02
    ld c, l                                       ; $41c1: $4d
    ld [bc], a                                    ; $41c2: $02
    ld b, [hl]                                    ; $41c3: $46
    ld [bc], a                                    ; $41c4: $02
    add e                                         ; $41c5: $83
    ld [bc], a                                    ; $41c6: $02
    ld [$000a], sp                                ; $41c7: $08 $0a $00
    add e                                         ; $41ca: $83
    inc d                                         ; $41cb: $14
    nop                                           ; $41cc: $00
    ld [$0009], sp                                ; $41cd: $08 $09 $00
    rst $38                                       ; $41d0: $ff
    dec c                                         ; $41d1: $0d
    inc b                                         ; $41d2: $04
    ei                                            ; $41d3: $fb
    dec b                                         ; $41d4: $05
    push af                                       ; $41d5: $f5
    cp $e8                                        ; $41d6: $fe $e8
    ei                                            ; $41d8: $fb
    jp hl                                         ; $41d9: $e9


    rst $38                                       ; $41da: $ff
    ld hl, sp-$06                                 ; $41db: $f8 $fa
    ld hl, sp-$01                                 ; $41dd: $f8 $ff
    ld [bc], a                                    ; $41df: $02
    rrca                                          ; $41e0: $0f
    sub d                                         ; $41e1: $92
    inc [hl]                                      ; $41e2: $34
    jr nc, jr_0e6_4237                            ; $41e3: $30 $52

    ld d, b                                       ; $41e5: $50
    ld sp, hl                                     ; $41e6: $f9
    xor c                                         ; $41e7: $a9
    cp [hl]                                       ; $41e8: $be
    and [hl]                                      ; $41e9: $a6
    ld a, a                                       ; $41ea: $7f
    ld a, e                                       ; $41eb: $7b
    ld a, a                                       ; $41ec: $7f
    ld l, b                                       ; $41ed: $68
    ccf                                           ; $41ee: $3f
    inc h                                         ; $41ef: $24
    ccf                                           ; $41f0: $3f
    ld l, $1f                                     ; $41f1: $2e $1f
    ld de, $3f02                                  ; $41f3: $11 $02 $3f
    adc d                                         ; $41f6: $8a
    ld d, l                                       ; $41f7: $55
    ld [hl], l                                    ; $41f8: $75
    ld e, e                                       ; $41f9: $5b
    ld a, e                                       ; $41fa: $7b
    or l                                          ; $41fb: $b5
    rst $38                                       ; $41fc: $ff
    cp e                                          ; $41fd: $bb
    rst $38                                       ; $41fe: $ff
    cp e                                          ; $41ff: $bb
    rst $38                                       ; $4200: $ff
    ld [bc], a                                    ; $4201: $02
    ld [$0402], sp                                ; $4202: $08 $02 $04
    ld [bc], a                                    ; $4205: $02
    ld b, $06                                     ; $4206: $06 $06
    inc c                                         ; $4208: $0c
    inc b                                         ; $4209: $04
    ld [$0002], sp                                ; $420a: $08 $02 $00
    ld [bc], a                                    ; $420d: $02
    ld [$0c02], sp                                ; $420e: $08 $02 $0c
    sub l                                         ; $4211: $95
    inc b                                         ; $4212: $04
    inc c                                         ; $4213: $0c
    ld a, [bc]                                    ; $4214: $0a
    ld c, $0a                                     ; $4215: $0e $0a
    ld c, $0a                                     ; $4217: $0e $0a
    ld c, $b9                                     ; $4219: $0e $b9
    rst $38                                       ; $421b: $ff
    ld e, b                                       ; $421c: $58
    ld a, b                                       ; $421d: $78
    sbc l                                         ; $421e: $9d
    rst $38                                       ; $421f: $ff
    ld e, l                                       ; $4220: $5d
    ld a, a                                       ; $4221: $7f

jr_0e6_4222:
    ld a, d                                       ; $4222: $7a
    ld c, a                                       ; $4223: $4f
    ld a, [hl-]                                   ; $4224: $3a
    scf                                           ; $4225: $37
    ld [hl], $03                                  ; $4226: $36 $03
    ccf                                           ; $4228: $3f
    add d                                         ; $4229: $82
    daa                                           ; $422a: $27
    ccf                                           ; $422b: $3f
    ld [bc], a                                    ; $422c: $02
    inc a                                         ; $422d: $3c
    stop                                          ; $422e: $10 $00
    add h                                         ; $4230: $84
    add hl, de                                    ; $4231: $19
    rra                                           ; $4232: $1f
    ld e, $1a                                     ; $4233: $1e $1a
    ld b, $1c                                     ; $4235: $06 $1c

jr_0e6_4237:
    add c                                         ; $4237: $81
    inc c                                         ; $4238: $0c
    inc bc                                        ; $4239: $03
    inc e                                         ; $423a: $1c
    ld [bc], a                                    ; $423b: $02
    jr jr_0e6_424c                                ; $423c: $18 $0e

    nop                                           ; $423e: $00
    rst $38                                       ; $423f: $ff
    rlca                                          ; $4240: $07
    ld bc, $08f9                                  ; $4241: $01 $f9 $08
    ld a, [c]                                     ; $4244: $f2
    ld bc, $fce9                                  ; $4245: $01 $e9 $fc
    ld [bc], a                                    ; $4248: $02
    ld d, $02                                     ; $4249: $16 $02
    ld e, e                                       ; $424b: $5b

jr_0e6_424c:
    ld [bc], a                                    ; $424c: $02
    dec c                                         ; $424d: $0d
    ld [bc], a                                    ; $424e: $02
    add d                                         ; $424f: $82
    inc c                                         ; $4250: $0c
    nop                                           ; $4251: $00
    add e                                         ; $4252: $83
    inc d                                         ; $4253: $14
    nop                                           ; $4254: $00
    ld [$0009], sp                                ; $4255: $08 $09 $00
    rst $38                                       ; $4258: $ff
    dec c                                         ; $4259: $0d
    inc b                                         ; $425a: $04
    ei                                            ; $425b: $fb
    dec b                                         ; $425c: $05
    push af                                       ; $425d: $f5
    cp $e8                                        ; $425e: $fe $e8
    db $fc                                        ; $4260: $fc
    jp hl                                         ; $4261: $e9


    rst $38                                       ; $4262: $ff
    ld hl, sp-$04                                 ; $4263: $f8 $fc
    ld hl, sp-$03                                 ; $4265: $f8 $fd
    ld [bc], a                                    ; $4267: $02
    rra                                           ; $4268: $1f
    add d                                         ; $4269: $82
    ld [hl], $30                                  ; $426a: $36 $30
    ld [bc], a                                    ; $426c: $02
    ld e, l                                       ; $426d: $5d
    adc [hl]                                      ; $426e: $8e
    xor $ca                                       ; $426f: $ee $ca
    rst $08                                       ; $4271: $cf
    adc c                                         ; $4272: $89
    rst $38                                       ; $4273: $ff
    or $ff                                        ; $4274: $f6 $ff
    ret nc                                        ; $4276: $d0

    ld a, a                                       ; $4277: $7f
    ld [hl], b                                    ; $4278: $70
    ccf                                           ; $4279: $3f
    inc sp                                        ; $427a: $33
    rra                                           ; $427b: $1f
    add hl, de                                    ; $427c: $19
    ld [bc], a                                    ; $427d: $02
    ccf                                           ; $427e: $3f
    ld [bc], a                                    ; $427f: $02
    ld a, d                                       ; $4280: $7a
    adc b                                         ; $4281: $88
    xor l                                         ; $4282: $ad
    db $fd                                        ; $4283: $fd
    xor e                                         ; $4284: $ab
    rst $38                                       ; $4285: $ff
    ld h, l                                       ; $4286: $65
    ld a, a                                       ; $4287: $7f
    dec l                                         ; $4288: $2d
    ccf                                           ; $4289: $3f
    ld [bc], a                                    ; $428a: $02
    inc b                                         ; $428b: $04
    ld [bc], a                                    ; $428c: $02
    ld [bc], a                                    ; $428d: $02
    ld [bc], a                                    ; $428e: $02
    dec b                                         ; $428f: $05
    ld [bc], a                                    ; $4290: $02
    ld b, $02                                     ; $4291: $06 $02
    inc b                                         ; $4293: $04
    add d                                         ; $4294: $82
    ld b, $02                                     ; $4295: $06 $02
    ld b, $04                                     ; $4297: $06 $04
    inc c                                         ; $4299: $0c
    nop                                           ; $429a: $00
    add d                                         ; $429b: $82
    jr z, @-$06                                   ; $429c: $28 $f8

    ld [bc], a                                    ; $429e: $02
    jr nz, jr_0e6_4222                            ; $429f: $20 $81

    dec l                                         ; $42a1: $2d

jr_0e6_42a2:
    ld [bc], a                                    ; $42a2: $02
    ccf                                           ; $42a3: $3f
    adc l                                         ; $42a4: $8d
    daa                                           ; $42a5: $27
    ld a, a                                       ; $42a6: $7f
    ld [hl], h                                    ; $42a7: $74
    ld a, l                                       ; $42a8: $7d
    ld a, a                                       ; $42a9: $7f
    ld a, l                                       ; $42aa: $7d
    ld a, a                                       ; $42ab: $7f
    ei                                            ; $42ac: $fb
    rst $38                                       ; $42ad: $ff
    cp a                                          ; $42ae: $bf
    rst $38                                       ; $42af: $ff
    sbc h                                         ; $42b0: $9c
    rst $38                                       ; $42b1: $ff
    ld [bc], a                                    ; $42b2: $02
    ld a, a                                       ; $42b3: $7f
    ld [de], a                                    ; $42b4: $12
    nop                                           ; $42b5: $00
    ld [bc], a                                    ; $42b6: $02
    ld bc, $0008                                  ; $42b7: $01 $08 $00
    inc b                                         ; $42ba: $04
    ld bc, $000c                                  ; $42bb: $01 $0c $00
    rst $38                                       ; $42be: $ff
    rlca                                          ; $42bf: $07
    ld bc, $08f9                                  ; $42c0: $01 $f9 $08
    ld a, [c]                                     ; $42c3: $f2
    ld bc, $fee9                                  ; $42c4: $01 $e9 $fe
    ld [bc], a                                    ; $42c7: $02
    inc h                                         ; $42c8: $24
    ld [bc], a                                    ; $42c9: $02
    adc d                                         ; $42ca: $8a
    ld [bc], a                                    ; $42cb: $02
    ld b, l                                       ; $42cc: $45
    ld [bc], a                                    ; $42cd: $02
    ret nz                                        ; $42ce: $c0

    inc c                                         ; $42cf: $0c
    nop                                           ; $42d0: $00
    add e                                         ; $42d1: $83
    stop                                          ; $42d2: $10 $00
    ld [$0009], sp                                ; $42d4: $08 $09 $00
    rst $38                                       ; $42d7: $ff
    dec c                                         ; $42d8: $0d
    inc b                                         ; $42d9: $04
    ei                                            ; $42da: $fb
    dec b                                         ; $42db: $05
    push af                                       ; $42dc: $f5
    cp $e8                                        ; $42dd: $fe $e8
    db $fc                                        ; $42df: $fc
    jp hl                                         ; $42e0: $e9


    rst $38                                       ; $42e1: $ff
    ld hl, sp-$05                                 ; $42e2: $f8 $fb
    ld hl, sp+$01                                 ; $42e4: $f8 $01
    ld [bc], a                                    ; $42e6: $02
    rra                                           ; $42e7: $1f
    add d                                         ; $42e8: $82
    inc l                                         ; $42e9: $2c
    jr nz, jr_0e6_42ee                            ; $42ea: $20 $02

    ld e, h                                       ; $42ec: $5c
    add h                                         ; $42ed: $84

jr_0e6_42ee:
    adc $8a                                       ; $42ee: $ce $8a
    rst $18                                       ; $42f0: $df
    sub c                                         ; $42f1: $91
    ld [bc], a                                    ; $42f2: $02
    or $88                                        ; $42f3: $f6 $88
    ld a, a                                       ; $42f5: $7f
    ld d, b                                       ; $42f6: $50
    ld a, a                                       ; $42f7: $7f
    ld [hl], b                                    ; $42f8: $70
    ccf                                           ; $42f9: $3f
    inc sp                                        ; $42fa: $33
    rra                                           ; $42fb: $1f
    add hl, de                                    ; $42fc: $19
    ld [bc], a                                    ; $42fd: $02
    ccf                                           ; $42fe: $3f
    ld [bc], a                                    ; $42ff: $02
    ld a, d                                       ; $4300: $7a
    adc b                                         ; $4301: $88
    xor l                                         ; $4302: $ad
    db $fd                                        ; $4303: $fd
    xor e                                         ; $4304: $ab
    rst $38                                       ; $4305: $ff
    ld h, l                                       ; $4306: $65
    ld a, a                                       ; $4307: $7f
    dec [hl]                                      ; $4308: $35
    ccf                                           ; $4309: $3f
    ld [bc], a                                    ; $430a: $02
    inc b                                         ; $430b: $04
    ld [bc], a                                    ; $430c: $02
    ld [bc], a                                    ; $430d: $02
    ld [bc], a                                    ; $430e: $02
    dec b                                         ; $430f: $05
    ld [bc], a                                    ; $4310: $02
    ld b, $02                                     ; $4311: $06 $02
    inc b                                         ; $4313: $04
    add d                                         ; $4314: $82
    ld b, $02                                     ; $4315: $06 $02
    ld b, $04                                     ; $4317: $06 $04
    inc c                                         ; $4319: $0c
    nop                                           ; $431a: $00
    add d                                         ; $431b: $82
    sbc e                                         ; $431c: $9b
    ei                                            ; $431d: $fb
    ld [bc], a                                    ; $431e: $02
    jr nc, jr_0e6_42a2                            ; $431f: $30 $81

    inc a                                         ; $4321: $3c
    ld [bc], a                                    ; $4322: $02
    ccf                                           ; $4323: $3f
    add c                                         ; $4324: $81
    ld a, $02                                     ; $4325: $3e $02
    ccf                                           ; $4327: $3f
    adc d                                         ; $4328: $8a
    ld a, [hl]                                    ; $4329: $7e
    ld a, a                                       ; $432a: $7f
    ld a, [hl]                                    ; $432b: $7e
    ld a, a                                       ; $432c: $7f
    cp h                                          ; $432d: $bc
    rst $38                                       ; $432e: $ff
    rst $18                                       ; $432f: $df
    rst $38                                       ; $4330: $ff
    ld h, [hl]                                    ; $4331: $66
    ld a, [hl]                                    ; $4332: $7e
    ld [bc], a                                    ; $4333: $02
    inc a                                         ; $4334: $3c
    ld c, $00                                     ; $4335: $0e $00
    add [hl]                                      ; $4337: $86
    ld a, $32                                     ; $4338: $3e $32
    inc a                                         ; $433a: $3c
    inc c                                         ; $433b: $0c
    jr nc, @+$12                                  ; $433c: $30 $10

    ld [bc], a                                    ; $433e: $02
    jr c, jr_0e6_4343                             ; $433f: $38 $02

    ld a, $84                                     ; $4341: $3e $84

jr_0e6_4343:
    add hl, sp                                    ; $4343: $39
    ccf                                           ; $4344: $3f
    ld [hl], $3e                                  ; $4345: $36 $3e
    ld [bc], a                                    ; $4347: $02
    jr c, jr_0e6_4358                             ; $4348: $38 $0e

    nop                                           ; $434a: $00
    rst $38                                       ; $434b: $ff
    rlca                                          ; $434c: $07
    ld bc, $08f9                                  ; $434d: $01 $f9 $08
    ld a, [c]                                     ; $4350: $f2
    ld bc, $fee9                                  ; $4351: $01 $e9 $fe
    ld [bc], a                                    ; $4354: $02
    ld c, h                                       ; $4355: $4c
    ld [bc], a                                    ; $4356: $02
    adc [hl]                                      ; $4357: $8e

jr_0e6_4358:
    ld [bc], a                                    ; $4358: $02
    push bc                                       ; $4359: $c5
    ld [bc], a                                    ; $435a: $02
    add b                                         ; $435b: $80
    ld [bc], a                                    ; $435c: $02
    inc h                                         ; $435d: $24
    ld a, [bc]                                    ; $435e: $0a
    nop                                           ; $435f: $00
    add e                                         ; $4360: $83
    stop                                          ; $4361: $10 $00
    ld [$0009], sp                                ; $4363: $08 $09 $00
    rst $38                                       ; $4366: $ff
    dec c                                         ; $4367: $0d
    inc b                                         ; $4368: $04
    ei                                            ; $4369: $fb
    dec b                                         ; $436a: $05
    push af                                       ; $436b: $f5
    cp $e9                                        ; $436c: $fe $e9
    db $fc                                        ; $436e: $fc
    ld [$f9ff], a                                 ; $436f: $ea $ff $f9
    ei                                            ; $4372: $fb
    ld sp, hl                                     ; $4373: $f9
    rst $38                                       ; $4374: $ff
    ld [bc], a                                    ; $4375: $02
    rra                                           ; $4376: $1f
    add d                                         ; $4377: $82
    inc l                                         ; $4378: $2c
    jr nz, jr_0e6_437d                            ; $4379: $20 $02

    ld e, h                                       ; $437b: $5c
    add h                                         ; $437c: $84

jr_0e6_437d:
    adc $8a                                       ; $437d: $ce $8a
    rst $18                                       ; $437f: $df
    sub c                                         ; $4380: $91
    ld [bc], a                                    ; $4381: $02
    or $94                                        ; $4382: $f6 $94
    ld a, a                                       ; $4384: $7f
    ld d, b                                       ; $4385: $50
    ld a, a                                       ; $4386: $7f
    ld [hl], b                                    ; $4387: $70
    ccf                                           ; $4388: $3f
    inc sp                                        ; $4389: $33
    ccf                                           ; $438a: $3f
    add hl, sp                                    ; $438b: $39
    rst $18                                       ; $438c: $df
    rst $38                                       ; $438d: $ff
    cp d                                          ; $438e: $ba
    ld a, [$7d6d]                                 ; $438f: $fa $6d $7d
    dec hl                                        ; $4392: $2b
    ccf                                           ; $4393: $3f
    dec l                                         ; $4394: $2d
    ccf                                           ; $4395: $3f
    dec h                                         ; $4396: $25
    ccf                                           ; $4397: $3f
    ld [bc], a                                    ; $4398: $02
    inc b                                         ; $4399: $04
    ld [bc], a                                    ; $439a: $02
    ld [bc], a                                    ; $439b: $02
    ld [bc], a                                    ; $439c: $02
    dec b                                         ; $439d: $05
    ld [bc], a                                    ; $439e: $02
    ld b, $02                                     ; $439f: $06 $02
    inc b                                         ; $43a1: $04
    add d                                         ; $43a2: $82
    ld b, $02                                     ; $43a3: $06 $02
    ld b, $04                                     ; $43a5: $06 $04
    inc c                                         ; $43a7: $0c
    nop                                           ; $43a8: $00
    add d                                         ; $43a9: $82
    sbc b                                         ; $43aa: $98
    ld hl, sp+$02                                 ; $43ab: $f8 $02
    db $10                                        ; $43ad: $10
    add h                                         ; $43ae: $84
    ccf                                           ; $43af: $3f
    inc a                                         ; $43b0: $3c
    ccf                                           ; $43b1: $3f
    ld a, $02                                     ; $43b2: $3e $02
    ld a, a                                       ; $43b4: $7f
    adc b                                         ; $43b5: $88
    cp [hl]                                       ; $43b6: $be
    rst $38                                       ; $43b7: $ff
    db $fd                                        ; $43b8: $fd
    rst $38                                       ; $43b9: $ff
    ld e, e                                       ; $43ba: $5b
    ld a, a                                       ; $43bb: $7f
    ld l, a                                       ; $43bc: $6f
    ld a, a                                       ; $43bd: $7f
    ld [bc], a                                    ; $43be: $02
    jr nc, jr_0e6_43d1                            ; $43bf: $30 $10

    nop                                           ; $43c1: $00
    ld [bc], a                                    ; $43c2: $02
    ld c, $82                                     ; $43c3: $0e $82

jr_0e6_43c5:
    rrca                                          ; $43c5: $0f
    add hl, bc                                    ; $43c6: $09
    ld [bc], a                                    ; $43c7: $02
    ld c, $02                                     ; $43c8: $0e $02
    inc c                                         ; $43ca: $0c
    ld [bc], a                                    ; $43cb: $02
    ld c, $81                                     ; $43cc: $0e $81
    dec c                                         ; $43ce: $0d
    inc bc                                        ; $43cf: $03
    rrca                                          ; $43d0: $0f

jr_0e6_43d1:
    stop                                          ; $43d1: $10 $00
    rst $38                                       ; $43d3: $ff
    rlca                                          ; $43d4: $07
    ld bc, $08f9                                  ; $43d5: $01 $f9 $08
    ld a, [c]                                     ; $43d8: $f2
    ld bc, $feea                                  ; $43d9: $01 $ea $fe
    ld [bc], a                                    ; $43dc: $02
    ld c, h                                       ; $43dd: $4c
    ld [bc], a                                    ; $43de: $02
    adc [hl]                                      ; $43df: $8e
    ld [bc], a                                    ; $43e0: $02
    push bc                                       ; $43e1: $c5
    ld [bc], a                                    ; $43e2: $02
    add b                                         ; $43e3: $80
    ld [bc], a                                    ; $43e4: $02
    inc h                                         ; $43e5: $24
    ld a, [bc]                                    ; $43e6: $0a
    nop                                           ; $43e7: $00
    add e                                         ; $43e8: $83
    stop                                          ; $43e9: $10 $00
    ld [$0009], sp                                ; $43eb: $08 $09 $00
    rst $38                                       ; $43ee: $ff
    dec c                                         ; $43ef: $0d
    inc b                                         ; $43f0: $04
    ei                                            ; $43f1: $fb
    dec b                                         ; $43f2: $05
    push af                                       ; $43f3: $f5
    cp $e8                                        ; $43f4: $fe $e8
    db $fc                                        ; $43f6: $fc
    jp hl                                         ; $43f7: $e9


    rst $38                                       ; $43f8: $ff
    ld hl, sp-$04                                 ; $43f9: $f8 $fc
    ld hl, sp-$03                                 ; $43fb: $f8 $fd
    ld [bc], a                                    ; $43fd: $02
    rra                                           ; $43fe: $1f
    add d                                         ; $43ff: $82
    inc [hl]                                      ; $4400: $34
    jr nc, jr_0e6_4405                            ; $4401: $30 $02

    ld e, l                                       ; $4403: $5d
    adc [hl]                                      ; $4404: $8e

jr_0e6_4405:
    xor $ca                                       ; $4405: $ee $ca
    rst $08                                       ; $4407: $cf
    adc c                                         ; $4408: $89
    rst $38                                       ; $4409: $ff
    or $ff                                        ; $440a: $f6 $ff
    ret nc                                        ; $440c: $d0

    ld a, a                                       ; $440d: $7f
    ld [hl], b                                    ; $440e: $70
    ccf                                           ; $440f: $3f
    inc sp                                        ; $4410: $33
    rra                                           ; $4411: $1f
    add hl, de                                    ; $4412: $19
    ld [bc], a                                    ; $4413: $02
    ccf                                           ; $4414: $3f
    ld [bc], a                                    ; $4415: $02
    ld a, d                                       ; $4416: $7a
    adc b                                         ; $4417: $88
    xor l                                         ; $4418: $ad
    db $fd                                        ; $4419: $fd
    xor e                                         ; $441a: $ab
    rst $38                                       ; $441b: $ff
    ld l, l                                       ; $441c: $6d
    ld a, a                                       ; $441d: $7f
    dec h                                         ; $441e: $25
    ccf                                           ; $441f: $3f
    ld [bc], a                                    ; $4420: $02
    inc b                                         ; $4421: $04
    ld [bc], a                                    ; $4422: $02
    ld [bc], a                                    ; $4423: $02
    ld [bc], a                                    ; $4424: $02
    dec b                                         ; $4425: $05
    ld [bc], a                                    ; $4426: $02
    ld b, $02                                     ; $4427: $06 $02
    inc b                                         ; $4429: $04
    add d                                         ; $442a: $82
    ld b, $02                                     ; $442b: $06 $02
    ld b, $04                                     ; $442d: $06 $04
    inc c                                         ; $442f: $0c
    nop                                           ; $4430: $00
    add d                                         ; $4431: $82
    jr z, @-$06                                   ; $4432: $28 $f8

    ld [bc], a                                    ; $4434: $02
    jr nz, jr_0e6_43c5                            ; $4435: $20 $8e

    dec l                                         ; $4437: $2d
    ccf                                           ; $4438: $3f
    ld a, l                                       ; $4439: $7d
    ld h, a                                       ; $443a: $67
    ld a, a                                       ; $443b: $7f
    ld [hl], a                                    ; $443c: $77
    ld a, a                                       ; $443d: $7f
    ld a, h                                       ; $443e: $7c
    cp e                                          ; $443f: $bb
    rst $38                                       ; $4440: $ff
    cp [hl]                                       ; $4441: $be
    cp $f9                                        ; $4442: $fe $f9
    rst $38                                       ; $4444: $ff
    ld [bc], a                                    ; $4445: $02
    ccf                                           ; $4446: $3f
    inc d                                         ; $4447: $14
    nop                                           ; $4448: $00
    inc b                                         ; $4449: $04
    ld bc, $0016                                  ; $444a: $01 $16 $00
    rst $38                                       ; $444d: $ff
    rlca                                          ; $444e: $07
    ld bc, $08f9                                  ; $444f: $01 $f9 $08
    ld a, [c]                                     ; $4452: $f2
    ld bc, $fee9                                  ; $4453: $01 $e9 $fe
    ld [bc], a                                    ; $4456: $02
    inc l                                         ; $4457: $2c
    ld [bc], a                                    ; $4458: $02
    adc d                                         ; $4459: $8a
    ld [bc], a                                    ; $445a: $02
    ld b, l                                       ; $445b: $45
    ld [bc], a                                    ; $445c: $02
    ret nz                                        ; $445d: $c0

    inc c                                         ; $445e: $0c
    nop                                           ; $445f: $00
    add e                                         ; $4460: $83
    stop                                          ; $4461: $10 $00
    ld [$0009], sp                                ; $4463: $08 $09 $00
    rst $38                                       ; $4466: $ff
    dec c                                         ; $4467: $0d
    inc b                                         ; $4468: $04
    ei                                            ; $4469: $fb
    dec b                                         ; $446a: $05
    push af                                       ; $446b: $f5
    cp $e8                                        ; $446c: $fe $e8
    db $fc                                        ; $446e: $fc
    jp hl                                         ; $446f: $e9


    rst $38                                       ; $4470: $ff
    ld hl, sp-$05                                 ; $4471: $f8 $fb
    ld hl, sp+$01                                 ; $4473: $f8 $01
    ld [bc], a                                    ; $4475: $02
    rra                                           ; $4476: $1f
    add d                                         ; $4477: $82
    ld [hl], $30                                  ; $4478: $36 $30
    ld [bc], a                                    ; $447a: $02
    ld c, [hl]                                    ; $447b: $4e
    adc [hl]                                      ; $447c: $8e
    rst $10                                       ; $447d: $d7
    push bc                                       ; $447e: $c5
    rst $08                                       ; $447f: $cf
    adc b                                         ; $4480: $88
    rst $38                                       ; $4481: $ff
    ei                                            ; $4482: $fb
    rst $18                                       ; $4483: $df
    ret nz                                        ; $4484: $c0

    ld a, a                                       ; $4485: $7f
    ld [hl], b                                    ; $4486: $70
    ccf                                           ; $4487: $3f
    add hl, sp                                    ; $4488: $39
    rra                                           ; $4489: $1f
    add hl, de                                    ; $448a: $19
    ld [bc], a                                    ; $448b: $02
    ccf                                           ; $448c: $3f
    ld [bc], a                                    ; $448d: $02
    ld a, d                                       ; $448e: $7a
    adc b                                         ; $448f: $88
    xor l                                         ; $4490: $ad
    db $fd                                        ; $4491: $fd
    xor e                                         ; $4492: $ab
    rst $38                                       ; $4493: $ff
    ld l, l                                       ; $4494: $6d
    ld a, a                                       ; $4495: $7f
    ld e, l                                       ; $4496: $5d
    ld a, a                                       ; $4497: $7f
    ld [bc], a                                    ; $4498: $02
    inc b                                         ; $4499: $04
    ld [bc], a                                    ; $449a: $02
    ld [bc], a                                    ; $449b: $02
    ld [bc], a                                    ; $449c: $02
    dec b                                         ; $449d: $05
    ld [bc], a                                    ; $449e: $02
    ld b, $02                                     ; $449f: $06 $02
    inc b                                         ; $44a1: $04
    add d                                         ; $44a2: $82
    ld b, $02                                     ; $44a3: $06 $02
    ld b, $04                                     ; $44a5: $06 $04
    inc c                                         ; $44a7: $0c
    nop                                           ; $44a8: $00
    sub d                                         ; $44a9: $92
    ld l, h                                       ; $44aa: $6c
    db $fc                                        ; $44ab: $fc
    jr nz, jr_0e6_44de                            ; $44ac: $20 $30

    ld h, $3f                                     ; $44ae: $26 $3f
    dec a                                         ; $44b0: $3d
    cpl                                           ; $44b1: $2f
    dec a                                         ; $44b2: $3d
    cpl                                           ; $44b3: $2f
    ld a, l                                       ; $44b4: $7d
    ld [hl], a                                    ; $44b5: $77
    rst $38                                       ; $44b6: $ff
    ei                                            ; $44b7: $fb
    cp a                                          ; $44b8: $bf
    rst $38                                       ; $44b9: $ff
    rst $08                                       ; $44ba: $cf
    rst $38                                       ; $44bb: $ff
    ld [bc], a                                    ; $44bc: $02
    ccf                                           ; $44bd: $3f
    stop                                          ; $44be: $10 $00
    add d                                         ; $44c0: $82
    jr c, @+$2a                                   ; $44c1: $38 $28

    ld [bc], a                                    ; $44c3: $02
    jr c, jr_0e6_44c8                             ; $44c4: $38 $02

    jr nc, @-$76                                  ; $44c6: $30 $88

jr_0e6_44c8:
    db $10                                        ; $44c8: $10
    jr nc, jr_0e6_44e9                            ; $44c9: $30 $1e

    ld a, $31                                     ; $44cb: $3e $31
    ccf                                           ; $44cd: $3f
    ld e, $3e                                     ; $44ce: $1e $3e
    ld [bc], a                                    ; $44d0: $02
    jr nc, @+$10                                  ; $44d1: $30 $0e

    nop                                           ; $44d3: $00
    rst $38                                       ; $44d4: $ff
    rlca                                          ; $44d5: $07
    ld bc, $08f9                                  ; $44d6: $01 $f9 $08
    ld a, [c]                                     ; $44d9: $f2
    ld bc, $fee9                                  ; $44da: $01 $e9 $fe
    ld [bc], a                                    ; $44dd: $02

jr_0e6_44de:
    inc h                                         ; $44de: $24
    ld [bc], a                                    ; $44df: $02
    add $02                                       ; $44e0: $c6 $02
    and c                                         ; $44e2: $a1
    ld [bc], a                                    ; $44e3: $02
    ret nz                                        ; $44e4: $c0

    ld [bc], a                                    ; $44e5: $02
    nop                                           ; $44e6: $00
    ld [bc], a                                    ; $44e7: $02
    add b                                         ; $44e8: $80

jr_0e6_44e9:
    ld [$8300], sp                                ; $44e9: $08 $00 $83
    stop                                          ; $44ec: $10 $00
    ld [$0009], sp                                ; $44ee: $08 $09 $00
    rst $38                                       ; $44f1: $ff
    dec c                                         ; $44f2: $0d
    inc b                                         ; $44f3: $04
    ei                                            ; $44f4: $fb
    dec b                                         ; $44f5: $05
    push af                                       ; $44f6: $f5
    cp $e9                                        ; $44f7: $fe $e9
    db $fc                                        ; $44f9: $fc
    ld [$f9ff], a                                 ; $44fa: $ea $ff $f9
    ei                                            ; $44fd: $fb
    ld sp, hl                                     ; $44fe: $f9
    rst $38                                       ; $44ff: $ff
    ld [bc], a                                    ; $4500: $02
    rra                                           ; $4501: $1f
    add d                                         ; $4502: $82
    ld [hl], $30                                  ; $4503: $36 $30
    ld [bc], a                                    ; $4505: $02
    ld c, [hl]                                    ; $4506: $4e
    sbc d                                         ; $4507: $9a
    rst $10                                       ; $4508: $d7
    push bc                                       ; $4509: $c5
    rst $08                                       ; $450a: $cf
    adc b                                         ; $450b: $88
    rst $38                                       ; $450c: $ff
    ei                                            ; $450d: $fb
    rst $38                                       ; $450e: $ff
    ldh [$7f], a                                  ; $450f: $e0 $7f
    ld [hl], b                                    ; $4511: $70
    ccf                                           ; $4512: $3f
    add hl, sp                                    ; $4513: $39
    ccf                                           ; $4514: $3f
    add hl, sp                                    ; $4515: $39
    rst $18                                       ; $4516: $df
    rst $38                                       ; $4517: $ff
    cp d                                          ; $4518: $ba
    ld a, [$7d6d]                                 ; $4519: $fa $6d $7d
    ld c, e                                       ; $451c: $4b
    ld a, a                                       ; $451d: $7f
    ld e, l                                       ; $451e: $5d
    ld a, a                                       ; $451f: $7f
    ld e, l                                       ; $4520: $5d
    ld a, a                                       ; $4521: $7f
    ld [bc], a                                    ; $4522: $02
    inc b                                         ; $4523: $04
    ld [bc], a                                    ; $4524: $02
    ld [bc], a                                    ; $4525: $02
    ld [bc], a                                    ; $4526: $02
    dec b                                         ; $4527: $05
    ld [bc], a                                    ; $4528: $02
    ld b, $02                                     ; $4529: $06 $02
    inc b                                         ; $452b: $04
    add d                                         ; $452c: $82
    ld b, $02                                     ; $452d: $06 $02
    ld b, $04                                     ; $452f: $06 $04
    inc c                                         ; $4531: $0c
    nop                                           ; $4532: $00
    sub d                                         ; $4533: $92
    ld l, b                                       ; $4534: $68
    ld hl, sp+$20                                 ; $4535: $f8 $20
    jr nc, jr_0e6_4567                            ; $4537: $30 $2e

    ccf                                           ; $4539: $3f
    ld a, [hl]                                    ; $453a: $7e
    ld h, a                                       ; $453b: $67

jr_0e6_453c:
    ld a, l                                       ; $453c: $7d
    ld [hl], a                                    ; $453d: $77
    rst $38                                       ; $453e: $ff
    db $fc                                        ; $453f: $fc
    cp e                                          ; $4540: $bb
    rst $38                                       ; $4541: $ff
    rst $18                                       ; $4542: $df
    rst $38                                       ; $4543: $ff
    ld l, l                                       ; $4544: $6d
    ld a, a                                       ; $4545: $7f
    ld [bc], a                                    ; $4546: $02
    rra                                           ; $4547: $1f
    stop                                          ; $4548: $10 $00
    inc b                                         ; $454a: $04
    inc c                                         ; $454b: $0c
    inc b                                         ; $454c: $04
    ld [$0482], sp                                ; $454d: $08 $82 $04
    inc c                                         ; $4550: $0c
    ld [bc], a                                    ; $4551: $02
    ld c, $81                                     ; $4552: $0e $81
    ld bc, $0f03                                  ; $4554: $01 $03 $0f
    ld c, $00                                     ; $4557: $0e $00
    rst $38                                       ; $4559: $ff
    rlca                                          ; $455a: $07
    ld bc, $08f9                                  ; $455b: $01 $f9 $08
    ld a, [c]                                     ; $455e: $f2
    ld bc, $feea                                  ; $455f: $01 $ea $fe
    ld [bc], a                                    ; $4562: $02
    inc h                                         ; $4563: $24
    ld [bc], a                                    ; $4564: $02
    add $02                                       ; $4565: $c6 $02

jr_0e6_4567:
    and c                                         ; $4567: $a1
    ld [bc], a                                    ; $4568: $02
    ret nz                                        ; $4569: $c0

    inc c                                         ; $456a: $0c
    nop                                           ; $456b: $00
    add e                                         ; $456c: $83
    stop                                          ; $456d: $10 $00
    ld [$0009], sp                                ; $456f: $08 $09 $00
    rst $38                                       ; $4572: $ff
    dec c                                         ; $4573: $0d
    inc b                                         ; $4574: $04
    ei                                            ; $4575: $fb
    dec b                                         ; $4576: $05
    push af                                       ; $4577: $f5
    cp $e8                                        ; $4578: $fe $e8
    db $fc                                        ; $457a: $fc
    jp hl                                         ; $457b: $e9


    rst $38                                       ; $457c: $ff
    ld hl, sp-$04                                 ; $457d: $f8 $fc
    ld hl, sp-$03                                 ; $457f: $f8 $fd
    ld [bc], a                                    ; $4581: $02
    rra                                           ; $4582: $1f
    add d                                         ; $4583: $82
    inc [hl]                                      ; $4584: $34
    jr nc, jr_0e6_4589                            ; $4585: $30 $02

    ld e, l                                       ; $4587: $5d
    adc [hl]                                      ; $4588: $8e

jr_0e6_4589:
    xor $ca                                       ; $4589: $ee $ca
    rst $08                                       ; $458b: $cf
    adc c                                         ; $458c: $89
    rst $38                                       ; $458d: $ff
    or $ef                                        ; $458e: $f6 $ef
    ret nz                                        ; $4590: $c0

    ld a, a                                       ; $4591: $7f
    ld [hl], b                                    ; $4592: $70
    ccf                                           ; $4593: $3f
    inc sp                                        ; $4594: $33
    rra                                           ; $4595: $1f
    add hl, de                                    ; $4596: $19
    ld [bc], a                                    ; $4597: $02
    ccf                                           ; $4598: $3f
    ld [bc], a                                    ; $4599: $02
    ld a, d                                       ; $459a: $7a
    adc b                                         ; $459b: $88
    xor l                                         ; $459c: $ad
    db $fd                                        ; $459d: $fd
    xor e                                         ; $459e: $ab
    rst $38                                       ; $459f: $ff
    ld h, l                                       ; $45a0: $65
    ld a, a                                       ; $45a1: $7f
    dec l                                         ; $45a2: $2d
    ccf                                           ; $45a3: $3f
    ld [bc], a                                    ; $45a4: $02
    inc b                                         ; $45a5: $04
    ld [bc], a                                    ; $45a6: $02
    ld [bc], a                                    ; $45a7: $02
    ld [bc], a                                    ; $45a8: $02
    dec b                                         ; $45a9: $05
    ld [bc], a                                    ; $45aa: $02
    ld b, $02                                     ; $45ab: $06 $02
    inc b                                         ; $45ad: $04
    add d                                         ; $45ae: $82
    ld b, $02                                     ; $45af: $06 $02
    ld b, $04                                     ; $45b1: $06 $04
    inc c                                         ; $45b3: $0c
    nop                                           ; $45b4: $00
    add d                                         ; $45b5: $82
    jr z, @-$06                                   ; $45b6: $28 $f8

    ld [bc], a                                    ; $45b8: $02
    jr nz, jr_0e6_453c                            ; $45b9: $20 $81

    dec l                                         ; $45bb: $2d
    ld [bc], a                                    ; $45bc: $02

jr_0e6_45bd:
    ccf                                           ; $45bd: $3f
    adc l                                         ; $45be: $8d
    daa                                           ; $45bf: $27
    ld a, a                                       ; $45c0: $7f
    ld [hl], h                                    ; $45c1: $74
    ld a, l                                       ; $45c2: $7d
    ld a, a                                       ; $45c3: $7f
    ld a, l                                       ; $45c4: $7d
    ld a, a                                       ; $45c5: $7f
    ei                                            ; $45c6: $fb
    rst $38                                       ; $45c7: $ff
    cp a                                          ; $45c8: $bf
    rst $38                                       ; $45c9: $ff
    sbc h                                         ; $45ca: $9c
    rst $38                                       ; $45cb: $ff
    ld [bc], a                                    ; $45cc: $02
    ld a, a                                       ; $45cd: $7f
    ld c, $00                                     ; $45ce: $0e $00
    ld [$0601], sp                                ; $45d0: $08 $01 $06
    nop                                           ; $45d3: $00
    inc b                                         ; $45d4: $04
    ld bc, $000c                                  ; $45d5: $01 $0c $00
    rst $38                                       ; $45d8: $ff
    rlca                                          ; $45d9: $07
    ld bc, $08f9                                  ; $45da: $01 $f9 $08
    ld a, [c]                                     ; $45dd: $f2
    ld bc, $fee9                                  ; $45de: $01 $e9 $fe
    ld [bc], a                                    ; $45e1: $02
    inc l                                         ; $45e2: $2c
    ld [bc], a                                    ; $45e3: $02
    adc d                                         ; $45e4: $8a
    ld [bc], a                                    ; $45e5: $02
    ld b, l                                       ; $45e6: $45
    ld [bc], a                                    ; $45e7: $02
    ret nz                                        ; $45e8: $c0

    ld [bc], a                                    ; $45e9: $02
    nop                                           ; $45ea: $00
    ld [bc], a                                    ; $45eb: $02
    ld b, b                                       ; $45ec: $40
    ld [$8300], sp                                ; $45ed: $08 $00 $83
    stop                                          ; $45f0: $10 $00
    ld [$0009], sp                                ; $45f2: $08 $09 $00
    rst $38                                       ; $45f5: $ff
    rlca                                          ; $45f6: $07
    ld bc, $04fd                                  ; $45f7: $01 $fd $04
    ei                                            ; $45fa: $fb
    ld [bc], a                                    ; $45fb: $02
    ld a, [$02fc]                                 ; $45fc: $fa $fc $02
    inc c                                         ; $45ff: $0c
    sub a                                         ; $4600: $97
    ld [de], a                                    ; $4601: $12
    ld e, $3f                                     ; $4602: $1e $3f
    dec l                                         ; $4604: $2d
    inc sp                                        ; $4605: $33
    ccf                                           ; $4606: $3f
    ld hl, $613f                                  ; $4607: $21 $3f $61
    ld a, a                                       ; $460a: $7f
    ld d, c                                       ; $460b: $51
    ld a, a                                       ; $460c: $7f
    ld l, d                                       ; $460d: $6a
    ld a, [hl]                                    ; $460e: $7e
    inc a                                         ; $460f: $3c
    inc [hl]                                      ; $4610: $34
    jr jr_0e6_4613                                ; $4611: $18 $00

jr_0e6_4613:
    inc c                                         ; $4613: $0c
    nop                                           ; $4614: $00
    inc b                                         ; $4615: $04
    nop                                           ; $4616: $00
    jr jr_0e6_4620                                ; $4617: $18 $07

    nop                                           ; $4619: $00
    rst $38                                       ; $461a: $ff
    rlca                                          ; $461b: $07
    ld bc, $04fd                                  ; $461c: $01 $fd $04
    ei                                            ; $461f: $fb

jr_0e6_4620:
    ld [bc], a                                    ; $4620: $02
    ld sp, hl                                     ; $4621: $f9
    db $fc                                        ; $4622: $fc
    ld [bc], a                                    ; $4623: $02
    jr nc, jr_0e6_45bd                            ; $4624: $30 $97

    ld l, h                                       ; $4626: $6c
    ld a, h                                       ; $4627: $7c
    ld a, [hl]                                    ; $4628: $7e
    ld e, d                                       ; $4629: $5a
    ld h, [hl]                                    ; $462a: $66
    ld a, [hl]                                    ; $462b: $7e
    ld b, d                                       ; $462c: $42
    ld a, [hl]                                    ; $462d: $7e
    ld [hl], c                                    ; $462e: $71
    ld a, a                                       ; $462f: $7f
    ld l, c                                       ; $4630: $69
    ld a, a                                       ; $4631: $7f
    dec [hl]                                      ; $4632: $35
    ccf                                           ; $4633: $3f
    ld e, $1a                                     ; $4634: $1e $1a
    ld [bc], a                                    ; $4636: $02
    nop                                           ; $4637: $00
    ld [bc], a                                    ; $4638: $02
    nop                                           ; $4639: $00
    ld [bc], a                                    ; $463a: $02
    nop                                           ; $463b: $00
    inc b                                         ; $463c: $04
    rlca                                          ; $463d: $07
    nop                                           ; $463e: $00
    rst $38                                       ; $463f: $ff
    rlca                                          ; $4640: $07
    ld bc, $04fd                                  ; $4641: $01 $fd $04
    ei                                            ; $4644: $fb
    ld [bc], a                                    ; $4645: $02
    ld a, [$02fb]                                 ; $4646: $fa $fb $02
    inc c                                         ; $4649: $0c
    sub a                                         ; $464a: $97
    ld [de], a                                    ; $464b: $12
    ld e, $3f                                     ; $464c: $1e $3f
    dec l                                         ; $464e: $2d
    inc sp                                        ; $464f: $33
    ccf                                           ; $4650: $3f
    ld hl, $313f                                  ; $4651: $21 $3f $31
    ccf                                           ; $4654: $3f
    add hl, hl                                    ; $4655: $29
    ccf                                           ; $4656: $3f
    dec [hl]                                      ; $4657: $35
    ccf                                           ; $4658: $3f
    ld e, $1a                                     ; $4659: $1e $1a
    inc b                                         ; $465b: $04
    nop                                           ; $465c: $00
    inc b                                         ; $465d: $04
    nop                                           ; $465e: $00
    ld [bc], a                                    ; $465f: $02
    nop                                           ; $4660: $00
    ld [bc], a                                    ; $4661: $02
    rlca                                          ; $4662: $07
    nop                                           ; $4663: $00
    rst $38                                       ; $4664: $ff
    rlca                                          ; $4665: $07
    ld bc, $04fd                                  ; $4666: $01 $fd $04
    ei                                            ; $4669: $fb
    ld [bc], a                                    ; $466a: $02
    ld sp, hl                                     ; $466b: $f9
    db $fc                                        ; $466c: $fc
    ld [bc], a                                    ; $466d: $02
    ld b, $97                                     ; $466e: $06 $97
    dec de                                        ; $4670: $1b
    rra                                           ; $4671: $1f
    ccf                                           ; $4672: $3f
    dec l                                         ; $4673: $2d
    inc sp                                        ; $4674: $33
    ccf                                           ; $4675: $3f
    ld hl, $613f                                  ; $4676: $21 $3f $61
    ld a, a                                       ; $4679: $7f
    ld d, c                                       ; $467a: $51
    ld a, a                                       ; $467b: $7f
    ld l, d                                       ; $467c: $6a
    ld a, [hl]                                    ; $467d: $7e
    inc a                                         ; $467e: $3c
    inc l                                         ; $467f: $2c
    stop                                          ; $4680: $10 $00
    jr nz, jr_0e6_4684                            ; $4682: $20 $00

jr_0e6_4684:
    jr nz, jr_0e6_4686                            ; $4684: $20 $00

jr_0e6_4686:
    db $10                                        ; $4686: $10
    rlca                                          ; $4687: $07
    nop                                           ; $4688: $00
    rst $38                                       ; $4689: $ff
    rlca                                          ; $468a: $07
    ld bc, $04fd                                  ; $468b: $01 $fd $04
    ei                                            ; $468e: $fb
    ld [bc], a                                    ; $468f: $02
    ld a, [$02fc]                                 ; $4690: $fa $fc $02
    inc c                                         ; $4693: $0c
    sub a                                         ; $4694: $97
    ld [de], a                                    ; $4695: $12
    ld e, $3f                                     ; $4696: $1e $3f
    dec l                                         ; $4698: $2d
    inc sp                                        ; $4699: $33
    ccf                                           ; $469a: $3f
    ld hl, $313f                                  ; $469b: $21 $3f $31
    ccf                                           ; $469e: $3f
    add hl, hl                                    ; $469f: $29
    ccf                                           ; $46a0: $3f
    dec [hl]                                      ; $46a1: $35
    ccf                                           ; $46a2: $3f
    ld e, $16                                     ; $46a3: $1e $16
    ld [$0800], sp                                ; $46a5: $08 $00 $08
    nop                                           ; $46a8: $00
    stop                                          ; $46a9: $10 $00
    db $10                                        ; $46ab: $10
    rlca                                          ; $46ac: $07
    nop                                           ; $46ad: $00
    rst $38                                       ; $46ae: $ff
    rlca                                          ; $46af: $07
    ld bc, $04fd                                  ; $46b0: $01 $fd $04
    ei                                            ; $46b3: $fb
    ld [bc], a                                    ; $46b4: $02
    rst $30                                       ; $46b5: $f7
    db $fc                                        ; $46b6: $fc
    adc b                                         ; $46b7: $88
    inc c                                         ; $46b8: $0c
    nop                                           ; $46b9: $00
    stop                                          ; $46ba: $10 $00
    jr jr_0e6_46be                                ; $46bc: $18 $00

jr_0e6_46be:
    inc c                                         ; $46be: $0c
    nop                                           ; $46bf: $00
    ld [bc], a                                    ; $46c0: $02
    ld e, $8c                                     ; $46c1: $1e $8c
    dec [hl]                                      ; $46c3: $35
    ccf                                           ; $46c4: $3f
    add hl, hl                                    ; $46c5: $29
    ccf                                           ; $46c6: $3f
    inc sp                                        ; $46c7: $33
    ccf                                           ; $46c8: $3f
    ld h, [hl]                                    ; $46c9: $66
    ld e, d                                       ; $46ca: $5a
    ld a, [hl]                                    ; $46cb: $7e
    ld e, d                                       ; $46cc: $5a
    inc [hl]                                      ; $46cd: $34
    inc l                                         ; $46ce: $2c
    ld [bc], a                                    ; $46cf: $02
    jr jr_0e6_46da                                ; $46d0: $18 $08

    nop                                           ; $46d2: $00
    rst $38                                       ; $46d3: $ff
    rlca                                          ; $46d4: $07
    ld bc, $04fd                                  ; $46d5: $01 $fd $04
    ei                                            ; $46d8: $fb
    ld [bc], a                                    ; $46d9: $02

jr_0e6_46da:
    or $fc                                        ; $46da: $f6 $fc
    adc b                                         ; $46dc: $88
    ld [bc], a                                    ; $46dd: $02
    nop                                           ; $46de: $00
    ld bc, $0100                                  ; $46df: $01 $00 $01
    nop                                           ; $46e2: $00
    ld b, $00                                     ; $46e3: $06 $00
    ld [bc], a                                    ; $46e5: $02
    ld e, $8c                                     ; $46e6: $1e $8c
    dec hl                                        ; $46e8: $2b
    ccf                                           ; $46e9: $3f
    ld d, e                                       ; $46ea: $53
    ld a, a                                       ; $46eb: $7f
    ld h, [hl]                                    ; $46ec: $66
    ld a, [hl]                                    ; $46ed: $7e
    ld h, [hl]                                    ; $46ee: $66
    ld e, d                                       ; $46ef: $5a
    ld e, [hl]                                    ; $46f0: $5e
    ld a, d                                       ; $46f1: $7a
    ld l, h                                       ; $46f2: $6c
    ld e, h                                       ; $46f3: $5c
    ld [bc], a                                    ; $46f4: $02
    jr nc, jr_0e6_46ff                            ; $46f5: $30 $08

    nop                                           ; $46f7: $00
    rst $38                                       ; $46f8: $ff
    rlca                                          ; $46f9: $07
    ld bc, $04fd                                  ; $46fa: $01 $fd $04
    ei                                            ; $46fd: $fb
    ld [bc], a                                    ; $46fe: $02

jr_0e6_46ff:
    rst $30                                       ; $46ff: $f7
    ei                                            ; $4700: $fb
    adc b                                         ; $4701: $88
    ld [bc], a                                    ; $4702: $02
    nop                                           ; $4703: $00
    ld [bc], a                                    ; $4704: $02
    nop                                           ; $4705: $00
    inc b                                         ; $4706: $04
    nop                                           ; $4707: $00
    inc c                                         ; $4708: $0c
    nop                                           ; $4709: $00
    ld [bc], a                                    ; $470a: $02
    ld e, $8c                                     ; $470b: $1e $8c
    dec [hl]                                      ; $470d: $35
    ccf                                           ; $470e: $3f
    add hl, hl                                    ; $470f: $29
    ccf                                           ; $4710: $3f
    inc sp                                        ; $4711: $33
    ccf                                           ; $4712: $3f
    inc sp                                        ; $4713: $33
    dec l                                         ; $4714: $2d
    ccf                                           ; $4715: $3f
    dec l                                         ; $4716: $2d
    ld d, $1a                                     ; $4717: $16 $1a
    ld [bc], a                                    ; $4719: $02
    inc c                                         ; $471a: $0c
    ld [$ff00], sp                                ; $471b: $08 $00 $ff
    rlca                                          ; $471e: $07
    ld bc, $04fd                                  ; $471f: $01 $fd $04
    ei                                            ; $4722: $fb
    ld [bc], a                                    ; $4723: $02
    or $fc                                        ; $4724: $f6 $fc
    adc b                                         ; $4726: $88
    stop                                          ; $4727: $10 $00
    jr nz, jr_0e6_472b                            ; $4729: $20 $00

jr_0e6_472b:
    jr nz, jr_0e6_472d                            ; $472b: $20 $00

jr_0e6_472d:
    jr nc, jr_0e6_472f                            ; $472d: $30 $00

jr_0e6_472f:
    ld [bc], a                                    ; $472f: $02
    inc a                                         ; $4730: $3c
    adc h                                         ; $4731: $8c
    halt                                          ; $4732: $76
    ld a, [hl]                                    ; $4733: $7e
    ld l, c                                       ; $4734: $69
    ld a, a                                       ; $4735: $7f
    inc sp                                        ; $4736: $33
    ccf                                           ; $4737: $3f
    inc sp                                        ; $4738: $33
    dec l                                         ; $4739: $2d
    dec a                                         ; $473a: $3d
    cpl                                           ; $473b: $2f
    dec de                                        ; $473c: $1b
    dec e                                         ; $473d: $1d
    ld [bc], a                                    ; $473e: $02
    ld b, $08                                     ; $473f: $06 $08
    nop                                           ; $4741: $00
    rst $38                                       ; $4742: $ff
    rlca                                          ; $4743: $07
    ld bc, $04fd                                  ; $4744: $01 $fd $04
    ei                                            ; $4747: $fb
    ld [bc], a                                    ; $4748: $02
    rst $30                                       ; $4749: $f7
    db $fc                                        ; $474a: $fc
    adc b                                         ; $474b: $88
    jr nc, jr_0e6_474e                            ; $474c: $30 $00

jr_0e6_474e:
    ld [$0800], sp                                ; $474e: $08 $00 $08
    nop                                           ; $4751: $00
    inc c                                         ; $4752: $0c
    nop                                           ; $4753: $00
    ld [bc], a                                    ; $4754: $02
    ld e, $8c                                     ; $4755: $1e $8c
    dec [hl]                                      ; $4757: $35
    ccf                                           ; $4758: $3f
    add hl, hl                                    ; $4759: $29
    ccf                                           ; $475a: $3f
    inc sp                                        ; $475b: $33
    ccf                                           ; $475c: $3f
    inc sp                                        ; $475d: $33
    dec l                                         ; $475e: $2d
    ccf                                           ; $475f: $3f
    dec l                                         ; $4760: $2d
    ld a, [de]                                    ; $4761: $1a
    ld d, $02                                     ; $4762: $16 $02
    inc c                                         ; $4764: $0c
    ld [$ff00], sp                                ; $4765: $08 $00 $ff
    add hl, bc                                    ; $4768: $09
    ld [bc], a                                    ; $4769: $02
    db $fd                                        ; $476a: $fd
    inc b                                         ; $476b: $04
    ei                                            ; $476c: $fb
    ld [bc], a                                    ; $476d: $02
    db $fd                                        ; $476e: $fd
    ld sp, hl                                     ; $476f: $f9
    db $fd                                        ; $4770: $fd
    nop                                           ; $4771: $00
    ld [bc], a                                    ; $4772: $02
    ld bc, $0288                                  ; $4773: $01 $88 $02
    inc bc                                        ; $4776: $03
    ld b, l                                       ; $4777: $45
    rlca                                          ; $4778: $07
    sbc [hl]                                      ; $4779: $9e
    rlca                                          ; $477a: $07
    ld [hl], h                                    ; $477b: $74
    rlca                                          ; $477c: $07
    ld [bc], a                                    ; $477d: $02
    inc bc                                        ; $477e: $03
    inc d                                         ; $477f: $14
    nop                                           ; $4780: $00
    ld [bc], a                                    ; $4781: $02
    ld [hl], h                                    ; $4782: $74
    adc b                                         ; $4783: $88
    ld e, [hl]                                    ; $4784: $5e
    ld a, d                                       ; $4785: $7a
    ld l, $76                                     ; $4786: $2e $76
    add hl, bc                                    ; $4788: $09
    ld [hl], a                                    ; $4789: $77
    ld l, $7e                                     ; $478a: $2e $7e
    ld [bc], a                                    ; $478c: $02
    ld d, b                                       ; $478d: $50
    inc d                                         ; $478e: $14
    nop                                           ; $478f: $00
    rst $38                                       ; $4790: $ff
    add hl, bc                                    ; $4791: $09
    ld [bc], a                                    ; $4792: $02
    db $fd                                        ; $4793: $fd
    inc b                                         ; $4794: $04
    ei                                            ; $4795: $fb
    ld [bc], a                                    ; $4796: $02
    db $fc                                        ; $4797: $fc
    ld sp, hl                                     ; $4798: $f9
    db $fc                                        ; $4799: $fc
    ld bc, $0002                                  ; $479a: $01 $02 $00
    ld [bc], a                                    ; $479d: $02
    ld bc, $028a                                  ; $479e: $01 $8a $02
    inc bc                                        ; $47a1: $03
    dec b                                         ; $47a2: $05
    rlca                                          ; $47a3: $07
    ld c, $07                                     ; $47a4: $0e $07
    inc e                                         ; $47a6: $1c
    rlca                                          ; $47a7: $07
    db $e3                                        ; $47a8: $e3
    inc bc                                        ; $47a9: $03
    ld [de], a                                    ; $47aa: $12
    nop                                           ; $47ab: $00
    ld [bc], a                                    ; $47ac: $02
    inc b                                         ; $47ad: $04
    adc b                                         ; $47ae: $88
    cp $fa                                        ; $47af: $fe $fa
    adc [hl]                                      ; $47b1: $8e
    or $4b                                        ; $47b2: $f6 $4b
    push af                                       ; $47b4: $f5
    ld [hl], $fe                                  ; $47b5: $36 $fe
    ld [bc], a                                    ; $47b7: $02
    ret z                                         ; $47b8: $c8

    inc d                                         ; $47b9: $14
    nop                                           ; $47ba: $00
    rst $38                                       ; $47bb: $ff
    add hl, bc                                    ; $47bc: $09
    ld [bc], a                                    ; $47bd: $02
    db $fd                                        ; $47be: $fd
    inc b                                         ; $47bf: $04
    ei                                            ; $47c0: $fb
    ld [bc], a                                    ; $47c1: $02
    db $fc                                        ; $47c2: $fc
    ld a, [$01fc]                                 ; $47c3: $fa $fc $01
    ld [bc], a                                    ; $47c6: $02
    inc bc                                        ; $47c7: $03
    adc b                                         ; $47c8: $88
    ld c, $07                                     ; $47c9: $0e $07
    dec e                                         ; $47cb: $1d
    rrca                                          ; $47cc: $0f
    ld a, [hl+]                                   ; $47cd: $2a
    rrca                                          ; $47ce: $0f
    push bc                                       ; $47cf: $c5
    rlca                                          ; $47d0: $07
    ld [bc], a                                    ; $47d1: $02
    ld b, $14                                     ; $47d2: $06 $14
    nop                                           ; $47d4: $00
    ld [bc], a                                    ; $47d5: $02
    ld b, b                                       ; $47d6: $40
    ld [bc], a                                    ; $47d7: $02
    ld [hl], h                                    ; $47d8: $74
    adc b                                         ; $47d9: $88
    ld l, $7a                                     ; $47da: $2e $7a
    ld c, $76                                     ; $47dc: $0e $76
    dec bc                                        ; $47de: $0b
    ld [hl], l                                    ; $47df: $75
    ld l, [hl]                                    ; $47e0: $6e
    ld a, [hl]                                    ; $47e1: $7e
    ld [bc], a                                    ; $47e2: $02
    jr @+$14                                      ; $47e3: $18 $12

    nop                                           ; $47e5: $00
    rst $38                                       ; $47e6: $ff
    add hl, bc                                    ; $47e7: $09
    ld [bc], a                                    ; $47e8: $02
    db $fd                                        ; $47e9: $fd
    inc b                                         ; $47ea: $04
    ei                                            ; $47eb: $fb
    ld [bc], a                                    ; $47ec: $02
    db $fd                                        ; $47ed: $fd
    ld sp, hl                                     ; $47ee: $f9
    db $fd                                        ; $47ef: $fd
    nop                                           ; $47f0: $00
    adc b                                         ; $47f1: $88
    ld [hl], e                                    ; $47f2: $73
    inc bc                                        ; $47f3: $03
    adc l                                         ; $47f4: $8d
    rlca                                          ; $47f5: $07
    ld b, $07                                     ; $47f6: $06 $07
    inc b                                         ; $47f8: $04
    rlca                                          ; $47f9: $07
    ld [bc], a                                    ; $47fa: $02
    inc bc                                        ; $47fb: $03
    ld d, $00                                     ; $47fc: $16 $00
    ld [bc], a                                    ; $47fe: $02
    ld h, h                                       ; $47ff: $64
    adc b                                         ; $4800: $88
    ld a, $7a                                     ; $4801: $3e $7a
    ld c, $76                                     ; $4803: $0e $76
    dec bc                                        ; $4805: $0b
    ld [hl], l                                    ; $4806: $75
    ld l, [hl]                                    ; $4807: $6e
    ld a, [hl]                                    ; $4808: $7e
    ld [bc], a                                    ; $4809: $02
    db $10                                        ; $480a: $10
    inc d                                         ; $480b: $14
    nop                                           ; $480c: $00
    rst $38                                       ; $480d: $ff
    add hl, bc                                    ; $480e: $09
    ld [bc], a                                    ; $480f: $02
    db $fd                                        ; $4810: $fd
    inc b                                         ; $4811: $04
    ei                                            ; $4812: $fb
    ld [bc], a                                    ; $4813: $02
    db $fc                                        ; $4814: $fc
    ld sp, hl                                     ; $4815: $f9
    db $fc                                        ; $4816: $fc
    rst $38                                       ; $4817: $ff
    ld [bc], a                                    ; $4818: $02
    nop                                           ; $4819: $00
    ld [bc], a                                    ; $481a: $02
    inc bc                                        ; $481b: $03
    adc b                                         ; $481c: $88
    dec b                                         ; $481d: $05
    rlca                                          ; $481e: $07
    ld a, [bc]                                    ; $481f: $0a
    rrca                                          ; $4820: $0f
    inc a                                         ; $4821: $3c
    rrca                                          ; $4822: $0f
    add sp, $0f                                   ; $4823: $e8 $0f
    ld [bc], a                                    ; $4825: $02
    rlca                                          ; $4826: $07
    ld [de], a                                    ; $4827: $12
    nop                                           ; $4828: $00
    ld [bc], a                                    ; $4829: $02
    inc b                                         ; $482a: $04
    adc b                                         ; $482b: $88
    ld a, $3a                                     ; $482c: $3e $3a
    ld e, $36                                     ; $482e: $1e $36
    dec hl                                        ; $4830: $2b
    dec [hl]                                      ; $4831: $35
    ld c, $3e                                     ; $4832: $0e $3e
    ld [bc], a                                    ; $4834: $02
    jr c, jr_0e6_4839                             ; $4835: $38 $02

    db $10                                        ; $4837: $10
    ld [de], a                                    ; $4838: $12

jr_0e6_4839:
    nop                                           ; $4839: $00
    rst $38                                       ; $483a: $ff
    rrca                                          ; $483b: $0f
    dec b                                         ; $483c: $05
    ld hl, sp+$0a                                 ; $483d: $f8 $0a
    ld hl, sp+$05                                 ; $483f: $f8 $05
    pop af                                        ; $4841: $f1
    pop af                                        ; $4842: $f1
    pop af                                        ; $4843: $f1
    ld sp, hl                                     ; $4844: $f9
    ld bc, $f7f9                                  ; $4845: $01 $f9 $f7
    ld bc, $09f7                                  ; $4848: $01 $f7 $09
    adc e                                         ; $484b: $8b
    inc bc                                        ; $484c: $03
    nop                                           ; $484d: $00
    rrca                                          ; $484e: $0f
    inc bc                                        ; $484f: $03
    ld e, $0f                                     ; $4850: $1e $0f
    add hl, sp                                    ; $4852: $39
    ld e, $26                                     ; $4853: $1e $26
    add hl, de                                    ; $4855: $19
    jr jr_0e6_485a                                ; $4856: $18 $02

    rlca                                          ; $4858: $07
    ld [bc], a                                    ; $4859: $02

jr_0e6_485a:
    ld bc, $000d                                  ; $485a: $01 $0d $00
    sbc c                                         ; $485d: $99
    ld bc, $0100                                  ; $485e: $01 $00 $01
    nop                                           ; $4861: $00
    ldh [rP1], a                                  ; $4862: $e0 $00
    db $fc                                        ; $4864: $fc
    ldh [$be], a                                  ; $4865: $e0 $be
    db $fc                                        ; $4867: $fc
    adc [hl]                                      ; $4868: $8e
    ld a, h                                       ; $4869: $7c
    inc bc                                        ; $486a: $03
    cp $63                                        ; $486b: $fe $63
    cp $89                                        ; $486d: $fe $89
    rst $38                                       ; $486f: $ff
    pop af                                        ; $4870: $f1
    ccf                                           ; $4871: $3f
    dec h                                         ; $4872: $25
    rra                                           ; $4873: $1f
    add hl, de                                    ; $4874: $19
    rrca                                          ; $4875: $0f
    inc de                                        ; $4876: $13
    ld [bc], a                                    ; $4877: $02
    inc c                                         ; $4878: $0c
    sub d                                         ; $4879: $92
    inc bc                                        ; $487a: $03
    dec bc                                        ; $487b: $0b
    rlca                                          ; $487c: $07
    rst $08                                       ; $487d: $cf
    rlca                                          ; $487e: $07
    ld a, [c]                                     ; $487f: $f2
    adc a                                         ; $4880: $8f
    call nc, $9feb                                ; $4881: $d4 $eb $9f
    ld h, h                                       ; $4884: $64
    rst $08                                       ; $4885: $cf
    inc [hl]                                      ; $4886: $34
    daa                                           ; $4887: $27
    dec de                                        ; $4888: $1b
    ccf                                           ; $4889: $3f
    ld bc, $1703                                  ; $488a: $01 $03 $17
    nop                                           ; $488d: $00
    sub c                                         ; $488e: $91
    add a                                         ; $488f: $87
    nop                                           ; $4890: $00
    db $db                                        ; $4891: $db
    rlca                                          ; $4892: $07
    cp $01                                        ; $4893: $fe $01

jr_0e6_4895:
    jp hl                                         ; $4895: $e9


    ld e, $27                                     ; $4896: $1e $27
    sbc $af                                       ; $4898: $de $af
    reti                                          ; $489a: $d9


    xor l                                         ; $489b: $ad
    rst $18                                       ; $489c: $df
    cp a                                          ; $489d: $bf
    adc $dc                                       ; $489e: $ce $dc
    ld [bc], a                                    ; $48a0: $02
    ldh [$84], a                                  ; $48a1: $e0 $84
    nop                                           ; $48a3: $00
    add b                                         ; $48a4: $80
    nop                                           ; $48a5: $00
    ret nz                                        ; $48a6: $c0

jr_0e6_48a7:
    ld [bc], a                                    ; $48a7: $02
    add b                                         ; $48a8: $80
    add d                                         ; $48a9: $82
    nop                                           ; $48aa: $00
    add b                                         ; $48ab: $80
    dec b                                         ; $48ac: $05
    nop                                           ; $48ad: $00
    sub c                                         ; $48ae: $91
    add b                                         ; $48af: $80
    nop                                           ; $48b0: $00
    ldh [$80], a                                  ; $48b1: $e0 $80
    jr nc, jr_0e6_4895                            ; $48b3: $30 $e0

    jr c, jr_0e6_48a7                             ; $48b5: $38 $f0

    adc h                                         ; $48b7: $8c
    ld hl, sp-$74                                 ; $48b8: $f8 $8c
    ld a, b                                       ; $48ba: $78
    add $7c                                       ; $48bb: $c6 $7c
    ld c, $7c                                     ; $48bd: $0e $7c
    ld l, [hl]                                    ; $48bf: $6e
    ld [bc], a                                    ; $48c0: $02
    inc e                                         ; $48c1: $1c
    dec c                                         ; $48c2: $0d
    nop                                           ; $48c3: $00
    rst $38                                       ; $48c4: $ff
    rrca                                          ; $48c5: $0f
    dec b                                         ; $48c6: $05
    ld hl, sp+$0a                                 ; $48c7: $f8 $0a
    ld hl, sp+$05                                 ; $48c9: $f8 $05
    ldh a, [$f0]                                  ; $48cb: $f0 $f0
    ld a, [c]                                     ; $48cd: $f2
    ld hl, sp+$02                                 ; $48ce: $f8 $02
    ld hl, sp-$09                                 ; $48d0: $f8 $f7
    nop                                           ; $48d2: $00
    ld hl, sp+$08                                 ; $48d3: $f8 $08
    sub c                                         ; $48d5: $91
    ld b, $00                                     ; $48d6: $06 $00
    rra                                           ; $48d8: $1f
    ld b, $3f                                     ; $48d9: $06 $3f
    rra                                           ; $48db: $1f
    add hl, sp                                    ; $48dc: $39
    rra                                           ; $48dd: $1f
    inc a                                         ; $48de: $3c
    rlca                                          ; $48df: $07
    inc e                                         ; $48e0: $1c
    dec bc                                        ; $48e1: $0b
    jr jr_0e6_48f3                                ; $48e2: $18 $0f

    dec bc                                        ; $48e4: $0b
    rlca                                          ; $48e5: $07
    ld b, $02                                     ; $48e6: $06 $02
    ld bc, $000d                                  ; $48e8: $01 $0d $00
    sub l                                         ; $48eb: $95
    ldh [rP1], a                                  ; $48ec: $e0 $00
    ld hl, sp-$20                                 ; $48ee: $f8 $e0
    inc a                                         ; $48f0: $3c
    ld hl, sp+$0e                                 ; $48f1: $f8 $0e

jr_0e6_48f3:
    db $fc                                        ; $48f3: $fc
    ld b, a                                       ; $48f4: $47
    cp $8b                                        ; $48f5: $fe $8b
    rst $38                                       ; $48f7: $ff
    ld [hl], c                                    ; $48f8: $71
    rst $38                                       ; $48f9: $ff
    ld [c], a                                     ; $48fa: $e2
    rra                                           ; $48fb: $1f
    inc e                                         ; $48fc: $1c
    rrca                                          ; $48fd: $0f
    add hl, de                                    ; $48fe: $19
    ld c, $0a                                     ; $48ff: $0e $0a
    ld [bc], a                                    ; $4901: $02
    dec b                                         ; $4902: $05
    sub b                                         ; $4903: $90
    inc bc                                        ; $4904: $03
    ld h, a                                       ; $4905: $67
    inc bc                                        ; $4906: $03
    ld sp, hl                                     ; $4907: $f9
    ld b, a                                       ; $4908: $47
    ld [$4f75], a                                 ; $4909: $ea $75 $4f
    ld [hl-], a                                   ; $490c: $32
    ld h, a                                       ; $490d: $67
    ld a, [de]                                    ; $490e: $1a
    inc de                                        ; $490f: $13
    dec c                                         ; $4910: $0d
    rra                                           ; $4911: $1f
    nop                                           ; $4912: $00
    ld bc, $0019                                  ; $4913: $01 $19 $00
    sbc e                                         ; $4916: $9b
    add b                                         ; $4917: $80
    nop                                           ; $4918: $00
    jp $ff80                                      ; $4919: $c3 $80 $ff


    ret nz                                        ; $491c: $c0

    ld [hl], h                                    ; $491d: $74
    rst $08                                       ; $491e: $cf
    sub e                                         ; $491f: $93
    ld l, a                                       ; $4920: $6f
    ld d, a                                       ; $4921: $57
    db $ec                                        ; $4922: $ec
    sub $ef                                       ; $4923: $d6 $ef
    rst $18                                       ; $4925: $df
    rst $20                                       ; $4926: $e7
    ld l, [hl]                                    ; $4927: $6e
    ldh a, [rSVBK]                                ; $4928: $f0 $70
    add b                                         ; $492a: $80
    ret nz                                        ; $492b: $c0

    nop                                           ; $492c: $00
    ldh [rLCDC], a                                ; $492d: $e0 $40
    ret nz                                        ; $492f: $c0

    add b                                         ; $4930: $80
    ret nz                                        ; $4931: $c0

    ld [bc], a                                    ; $4932: $02
    add b                                         ; $4933: $80
    inc bc                                        ; $4934: $03
    nop                                           ; $4935: $00
    adc a                                         ; $4936: $8f
    add b                                         ; $4937: $80
    nop                                           ; $4938: $00
    ldh a, [$80]                                  ; $4939: $f0 $80
    ldh a, [$60]                                  ; $493b: $f0 $60
    ld hl, sp+$70                                 ; $493d: $f8 $70
    ret c                                         ; $493f: $d8

    or b                                          ; $4940: $b0
    adc $b8                                       ; $4941: $ce $b8
    adc a                                         ; $4943: $8f
    ld a, [hl]                                    ; $4944: $7e
    db $d3                                        ; $4945: $d3
    ld [bc], a                                    ; $4946: $02
    ld a, $0f                                     ; $4947: $3e $0f
    nop                                           ; $4949: $00
    rst $38                                       ; $494a: $ff
    rrca                                          ; $494b: $0f
    dec b                                         ; $494c: $05
    ld hl, sp+$0a                                 ; $494d: $f8 $0a
    ld hl, sp+$05                                 ; $494f: $f8 $05
    xor $f3                                       ; $4951: $ee $f3
    di                                            ; $4953: $f3
    ei                                            ; $4954: $fb
    or $03                                        ; $4955: $f6 $03
    db $f4                                        ; $4957: $f4
    ld b, $fe                                     ; $4958: $06 $fe
    rst $30                                       ; $495a: $f7
    sbc d                                         ; $495b: $9a
    ld h, b                                       ; $495c: $60
    nop                                           ; $495d: $00
    ldh a, [$60]                                  ; $495e: $f0 $60
    cp b                                          ; $4960: $b8
    ld [hl], b                                    ; $4961: $70
    sbc [hl]                                      ; $4962: $9e
    ld a, b                                       ; $4963: $78
    adc a                                         ; $4964: $8f
    ld a, [hl]                                    ; $4965: $7e
    sbc e                                         ; $4966: $9b
    ld a, a                                       ; $4967: $7f
    ld h, c                                       ; $4968: $61
    ccf                                           ; $4969: $3f
    ld b, [hl]                                    ; $496a: $46
    ccf                                           ; $496b: $3f
    jr z, jr_0e6_498d                             ; $496c: $28 $1f

    jr nz, jr_0e6_498f                            ; $496e: $20 $1f

    inc de                                        ; $4970: $13
    rrca                                          ; $4971: $0f
    ld [$0607], sp                                ; $4972: $08 $07 $06
    ld bc, $0004                                  ; $4975: $01 $04 $00
    or e                                          ; $4978: $b3
    inc bc                                        ; $4979: $03
    nop                                           ; $497a: $00
    add b                                         ; $497b: $80
    nop                                           ; $497c: $00
    ret nz                                        ; $497d: $c0

    add b                                         ; $497e: $80
    ldh [$c0], a                                  ; $497f: $e0 $c0
    ld h, b                                       ; $4981: $60
    ret nz                                        ; $4982: $c0

    ld hl, sp-$20                                 ; $4983: $f8 $e0
    ccf                                           ; $4985: $3f
    ldh a, [$7d]                                  ; $4986: $f0 $7d
    ld a, [c]                                     ; $4988: $f2
    sub d                                         ; $4989: $92
    rst $28                                       ; $498a: $ef
    xor [hl]                                      ; $498b: $ae
    ld e, a                                       ; $498c: $5f

jr_0e6_498d:
    ld l, h                                       ; $498d: $6c
    rra                                           ; $498e: $1f

jr_0e6_498f:
    ld c, e                                       ; $498f: $4b
    ccf                                           ; $4990: $3f
    ret nc                                        ; $4991: $d0

    cpl                                           ; $4992: $2f
    ld a, a                                       ; $4993: $7f
    sub b                                         ; $4994: $90
    ld a, a                                       ; $4995: $7f
    sbc d                                         ; $4996: $9a
    ld a, $c8                                     ; $4997: $3e $c8
    sbc b                                         ; $4999: $98
    ld h, b                                       ; $499a: $60
    inc bc                                        ; $499b: $03

jr_0e6_499c:
    nop                                           ; $499c: $00
    rrca                                          ; $499d: $0f
    inc bc                                        ; $499e: $03
    ld a, [hl]                                    ; $499f: $7e
    rlca                                          ; $49a0: $07
    and l                                         ; $49a1: $a5
    ld a, e                                       ; $49a2: $7b
    sbc [hl]                                      ; $49a3: $9e
    ld a, c                                       ; $49a4: $79
    cp a                                          ; $49a5: $bf
    ld h, h                                       ; $49a6: $64
    or [hl]                                       ; $49a7: $b6
    ld a, h                                       ; $49a8: $7c
    db $fc                                        ; $49a9: $fc
    jr c, jr_0e6_499c                             ; $49aa: $38 $f0

    rrca                                          ; $49ac: $0f
    nop                                           ; $49ad: $00
    adc e                                         ; $49ae: $8b
    ld [bc], a                                    ; $49af: $02
    nop                                           ; $49b0: $00
    rlca                                          ; $49b1: $07
    ld [bc], a                                    ; $49b2: $02
    dec b                                         ; $49b3: $05
    ld b, $05                                     ; $49b4: $06 $05
    ld b, $02                                     ; $49b6: $06 $02
    inc b                                         ; $49b8: $04
    ld [bc], a                                    ; $49b9: $02
    ld [bc], a                                    ; $49ba: $02
    inc b                                         ; $49bb: $04
    inc de                                        ; $49bc: $13
    nop                                           ; $49bd: $00
    add a                                         ; $49be: $87
    ld [hl], b                                    ; $49bf: $70
    jr nz, jr_0e6_4a32                            ; $49c0: $20 $70

    jr nc, jr_0e6_49e4                            ; $49c2: $30 $20

    db $10                                        ; $49c4: $10
    jr nc, jr_0e6_49ca                            ; $49c5: $30 $03

    nop                                           ; $49c7: $00
    add c                                         ; $49c8: $81
    rrca                                          ; $49c9: $0f

jr_0e6_49ca:
    dec d                                         ; $49ca: $15
    nop                                           ; $49cb: $00
    rst $38                                       ; $49cc: $ff
    dec c                                         ; $49cd: $0d
    inc b                                         ; $49ce: $04
    ld hl, sp+$0a                                 ; $49cf: $f8 $0a
    ld hl, sp+$05                                 ; $49d1: $f8 $05
    ld sp, hl                                     ; $49d3: $f9
    ld hl, sp-$08                                 ; $49d4: $f8 $f8
    nop                                           ; $49d6: $00
    ld sp, hl                                     ; $49d7: $f9
    ld [bc], a                                    ; $49d8: $02
    ld [$c7f8], sp                                ; $49d9: $08 $f8 $c7
    ld bc, $0600                                  ; $49dc: $01 $00 $06
    ld bc, $0709                                  ; $49df: $01 $09 $07
    inc sp                                        ; $49e2: $33
    rrca                                          ; $49e3: $0f

jr_0e6_49e4:
    inc sp                                        ; $49e4: $33
    rra                                           ; $49e5: $1f
    ld b, a                                       ; $49e6: $47
    ld a, $43                                     ; $49e7: $3e $43
    ld a, $e7                                     ; $49e9: $3e $e7
    ld a, [hl]                                    ; $49eb: $7e
    adc a                                         ; $49ec: $8f
    ld a, l                                       ; $49ed: $7d
    adc a                                         ; $49ee: $8f
    ld a, h                                       ; $49ef: $7c
    and $7c                                       ; $49f0: $e6 $7c
    adc [hl]                                      ; $49f2: $8e
    ld a, h                                       ; $49f3: $7c
    adc h                                         ; $49f4: $8c
    ld a, b                                       ; $49f5: $78
    ld e, h                                       ; $49f6: $5c
    jr c, jr_0e6_4a55                             ; $49f7: $38 $5c

    jr c, @+$5a                                   ; $49f9: $38 $58

    jr nc, jr_0e6_4a0c                            ; $49fb: $30 $0f

    nop                                           ; $49fd: $00
    call nc, Call_0e6_530f                        ; $49fe: $d4 $0f $53
    rst $28                                       ; $4a01: $ef
    rst $10                                       ; $4a02: $d7
    xor h                                         ; $4a03: $ac
    sub [hl]                                      ; $4a04: $96
    ld l, a                                       ; $4a05: $6f
    rst $38                                       ; $4a06: $ff
    ld h, a                                       ; $4a07: $67
    rra                                           ; $4a08: $1f
    pop hl                                        ; $4a09: $e1
    pop af                                        ; $4a0a: $f1
    rrca                                          ; $4a0b: $0f

jr_0e6_4a0c:
    pop af                                        ; $4a0c: $f1
    ld c, a                                       ; $4a0d: $4f
    pop de                                        ; $4a0e: $d1
    rrca                                          ; $4a0f: $0f
    dec bc                                        ; $4a10: $0b
    rlca                                          ; $4a11: $07
    add hl, bc                                    ; $4a12: $09
    rlca                                          ; $4a13: $07
    add hl, bc                                    ; $4a14: $09
    rlca                                          ; $4a15: $07
    dec bc                                        ; $4a16: $0b
    ld b, $0b                                     ; $4a17: $06 $0b
    ld b, $0e                                     ; $4a19: $06 $0e
    inc b                                         ; $4a1b: $04
    ld [bc], a                                    ; $4a1c: $02
    nop                                           ; $4a1d: $00
    ld [bc], a                                    ; $4a1e: $02
    nop                                           ; $4a1f: $00
    inc bc                                        ; $4a20: $03
    ld [bc], a                                    ; $4a21: $02
    inc bc                                        ; $4a22: $03
    ld [bc], a                                    ; $4a23: $02
    ld [bc], a                                    ; $4a24: $02
    inc bc                                        ; $4a25: $03
    nop                                           ; $4a26: $00
    adc e                                         ; $4a27: $8b
    ld [bc], a                                    ; $4a28: $02
    nop                                           ; $4a29: $00
    ld [bc], a                                    ; $4a2a: $02
    nop                                           ; $4a2b: $00
    ld [bc], a                                    ; $4a2c: $02
    nop                                           ; $4a2d: $00
    ld [bc], a                                    ; $4a2e: $02
    nop                                           ; $4a2f: $00
    ld [bc], a                                    ; $4a30: $02
    nop                                           ; $4a31: $00

jr_0e6_4a32:
    ld [bc], a                                    ; $4a32: $02
    rlca                                          ; $4a33: $07
    nop                                           ; $4a34: $00
    add c                                         ; $4a35: $81
    db $10                                        ; $4a36: $10
    inc bc                                        ; $4a37: $03
    nop                                           ; $4a38: $00
    add c                                         ; $4a39: $81
    jr c, jr_0e6_4a3e                             ; $4a3a: $38 $02

    db $10                                        ; $4a3c: $10
    dec de                                        ; $4a3d: $1b

jr_0e6_4a3e:
    nop                                           ; $4a3e: $00
    rst $38                                       ; $4a3f: $ff
    dec c                                         ; $4a40: $0d
    inc b                                         ; $4a41: $04
    ld hl, sp+$0a                                 ; $4a42: $f8 $0a
    ld hl, sp+$05                                 ; $4a44: $f8 $05
    ld a, [$f8f9]                                 ; $4a46: $fa $f9 $f8
    ld bc, $02fb                                  ; $4a49: $01 $fb $02
    ld [$c3f9], sp                                ; $4a4c: $08 $f9 $c3
    ld bc, $0600                                  ; $4a4f: $01 $00 $06
    ld bc, $0768                                  ; $4a52: $01 $68 $07

jr_0e6_4a55:
    ld sp, hl                                     ; $4a55: $f9
    ld b, a                                       ; $4a56: $47
    pop af                                        ; $4a57: $f1
    ld l, a                                       ; $4a58: $6f
    sbc h                                         ; $4a59: $9c
    ld l, a                                       ; $4a5a: $6f
    pop hl                                        ; $4a5b: $e1
    rra                                           ; $4a5c: $1f
    ld h, c                                       ; $4a5d: $61
    rra                                           ; $4a5e: $1f
    dec sp                                        ; $4a5f: $3b
    rra                                           ; $4a60: $1f
    inc hl                                        ; $4a61: $23
    rra                                           ; $4a62: $1f
    ld hl, $3b1f                                  ; $4a63: $21 $1f $3b
    ld e, $27                                     ; $4a66: $1e $27
    ld e, $23                                     ; $4a68: $1e $23
    ld e, $27                                     ; $4a6a: $1e $27
    ld e, $17                                     ; $4a6c: $1e $17
    ld c, $1e                                     ; $4a6e: $0e $1e
    nop                                           ; $4a70: $00
    add hl, hl                                    ; $4a71: $29
    ld e, $e7                                     ; $4a72: $1e $e7
    ld e, $ef                                     ; $4a74: $1e $ef
    sbc c                                         ; $4a76: $99
    db $ed                                        ; $4a77: $ed
    sbc a                                         ; $4a78: $9f
    rst $38                                       ; $4a79: $ff
    adc [hl]                                      ; $4a7a: $8e
    sbc $a2                                       ; $4a7b: $de $a2
    sub $ac                                       ; $4a7d: $d6 $ac
    xor $1c                                       ; $4a7f: $ee $1c
    add $3c                                       ; $4a81: $c6 $3c
    adc [hl]                                      ; $4a83: $8e
    ld a, h                                       ; $4a84: $7c
    cp h                                          ; $4a85: $bc
    ld a, b                                       ; $4a86: $78
    adc h                                         ; $4a87: $8c
    ld a, b                                       ; $4a88: $78
    ld e, h                                       ; $4a89: $5c
    jr c, jr_0e6_4ae4                             ; $4a8a: $38 $58

    jr nc, jr_0e6_4ae6                            ; $4a8c: $30 $58

    jr nc, jr_0e6_4a91                            ; $4a8e: $30 $01

    nop                                           ; $4a90: $00

jr_0e6_4a91:
    ld bc, $0017                                  ; $4a91: $01 $17 $00
    add e                                         ; $4a94: $83
    ldh [rLCDC], a                                ; $4a95: $e0 $40
    ldh [rSC], a                                  ; $4a97: $e0 $02
    ld b, b                                       ; $4a99: $40
    dec b                                         ; $4a9a: $05
    nop                                           ; $4a9b: $00
    add e                                         ; $4a9c: $83
    ld d, $0c                                     ; $4a9d: $16 $0c
    ld c, $02                                     ; $4a9f: $0e $02
    inc b                                         ; $4aa1: $04
    rla                                           ; $4aa2: $17
    nop                                           ; $4aa3: $00
    rst $38                                       ; $4aa4: $ff
    dec c                                         ; $4aa5: $0d
    inc b                                         ; $4aa6: $04
    ld hl, sp+$0a                                 ; $4aa7: $f8 $0a
    ld hl, sp+$05                                 ; $4aa9: $f8 $05
    ld a, [$faf9]                                 ; $4aab: $fa $f9 $fa
    ld bc, $02fd                                  ; $4aae: $01 $fd $02
    ld a, [bc]                                    ; $4ab1: $0a
    ei                                            ; $4ab2: $fb
    jp Jump_000_0001                              ; $4ab3: $c3 $01 $00


    ld b, $01                                     ; $4ab6: $06 $01
    ld l, b                                       ; $4ab8: $68
    rlca                                          ; $4ab9: $07
    ld hl, sp+$47                                 ; $4aba: $f8 $47
    ldh a, [$6f]                                  ; $4abc: $f0 $6f
    sub a                                         ; $4abe: $97
    ld l, a                                       ; $4abf: $6f
    ldh [$1f], a                                  ; $4ac0: $e0 $1f
    ld h, c                                       ; $4ac2: $61
    rra                                           ; $4ac3: $1f
    ld l, $1f                                     ; $4ac4: $2e $1f
    jr nz, jr_0e6_4ae7                            ; $4ac6: $20 $1f

    ld hl, $161f                                  ; $4ac8: $21 $1f $16
    rrca                                          ; $4acb: $0f
    db $10                                        ; $4acc: $10
    rrca                                          ; $4acd: $0f
    ld de, $0b0f                                  ; $4ace: $11 $0f $0b
    rlca                                          ; $4ad1: $07
    ld [$de07], sp                                ; $4ad2: $08 $07 $de
    nop                                           ; $4ad5: $00
    jp hl                                         ; $4ad6: $e9


    sbc [hl]                                      ; $4ad7: $9e
    ld h, a                                       ; $4ad8: $67
    sbc $ef                                       ; $4ad9: $de $ef
    reti                                          ; $4adb: $d9


    db $ed                                        ; $4adc: $ed
    rst $18                                       ; $4add: $df
    ld l, a                                       ; $4ade: $6f
    sbc $7c                                       ; $4adf: $de $7c
    ret nz                                        ; $4ae1: $c0

    db $ec                                        ; $4ae2: $ec
    ret c                                         ; $4ae3: $d8

jr_0e6_4ae4:
    db $ec                                        ; $4ae4: $ec
    ret c                                         ; $4ae5: $d8

jr_0e6_4ae6:
    ld l, h                                       ; $4ae6: $6c

jr_0e6_4ae7:
    ret c                                         ; $4ae7: $d8

    ld hl, sp-$30                                 ; $4ae8: $f8 $d0
    ret c                                         ; $4aea: $d8

    or b                                          ; $4aeb: $b0
    ret c                                         ; $4aec: $d8

    or b                                          ; $4aed: $b0
    ret c                                         ; $4aee: $d8

    or b                                          ; $4aef: $b0
    ret c                                         ; $4af0: $d8

    or b                                          ; $4af1: $b0
    ldh a, [$a0]                                  ; $4af2: $f0 $a0
    ld bc, $0100                                  ; $4af4: $01 $00 $01
    rla                                           ; $4af7: $17
    nop                                           ; $4af8: $00
    adc l                                         ; $4af9: $8d
    ldh [rLCDC], a                                ; $4afa: $e0 $40
    ret nz                                        ; $4afc: $c0

    add b                                         ; $4afd: $80
    ret nz                                        ; $4afe: $c0

    add b                                         ; $4aff: $80
    ld d, $0e                                     ; $4b00: $16 $0e
    ld [de], a                                    ; $4b02: $12
    ld c, $0c                                     ; $4b03: $0e $0c
    ld [bc], a                                    ; $4b05: $02
    inc bc                                        ; $4b06: $03
    add hl, de                                    ; $4b07: $19
    nop                                           ; $4b08: $00
    rst $38                                       ; $4b09: $ff
    dec bc                                        ; $4b0a: $0b
    inc bc                                        ; $4b0b: $03
    ld hl, sp+$0a                                 ; $4b0c: $f8 $0a
    ld hl, sp+$05                                 ; $4b0e: $f8 $05
    ld sp, hl                                     ; $4b10: $f9
    ld hl, sp-$07                                 ; $4b11: $f8 $f9
    nop                                           ; $4b13: $00
    ld sp, hl                                     ; $4b14: $f9
    ld [bc], a                                    ; $4b15: $02
    ld [bc], a                                    ; $4b16: $02
    nop                                           ; $4b17: $00
    sbc c                                         ; $4b18: $99
    inc bc                                        ; $4b19: $03
    nop                                           ; $4b1a: $00
    dec c                                         ; $4b1b: $0d
    inc bc                                        ; $4b1c: $03
    ld [hl], b                                    ; $4b1d: $70
    rrca                                          ; $4b1e: $0f
    rst $30                                       ; $4b1f: $f7
    ld c, a                                       ; $4b20: $4f
    and e                                         ; $4b21: $a3
    ld e, a                                       ; $4b22: $5f
    ld l, a                                       ; $4b23: $6f
    ld e, $47                                     ; $4b24: $1e $47
    ld a, $5f                                     ; $4b26: $3e $5f
    inc a                                         ; $4b28: $3c
    ld c, a                                       ; $4b29: $4f
    ld a, [hl-]                                   ; $4b2a: $3a
    sbc a                                         ; $4b2b: $9f
    ld a, c                                       ; $4b2c: $79
    sbc e                                         ; $4b2d: $9b
    ld [hl], h                                    ; $4b2e: $74
    cp l                                          ; $4b2f: $bd
    ld h, b                                       ; $4b30: $60
    ld [hl], b                                    ; $4b31: $70
    ld [bc], a                                    ; $4b32: $02
    jr nz, jr_0e6_4b38                            ; $4b33: $20 $03

    nop                                           ; $4b35: $00
    sbc c                                         ; $4b36: $99
    ld l, a                                       ; $4b37: $6f

jr_0e6_4b38:
    nop                                           ; $4b38: $00
    sub h                                         ; $4b39: $94
    ld l, a                                       ; $4b3a: $6f
    di                                            ; $4b3b: $f3
    rst $28                                       ; $4b3c: $ef
    rst $30                                       ; $4b3d: $f7
    call z, Call_000_2fd6                         ; $4b3e: $cc $d6 $2f
    rst $18                                       ; $4b41: $df
    ld h, a                                       ; $4b42: $67
    ld l, a                                       ; $4b43: $6f
    ldh a, [rPCM34]                               ; $4b44: $f0 $77
    adc [hl]                                      ; $4b46: $8e
    db $e3                                        ; $4b47: $e3
    ld e, $ee                                     ; $4b48: $1e $ee
    ld e, h                                       ; $4b4a: $5c
    and $9c                                       ; $4b4b: $e6 $9c
    call z, $f8b8                                 ; $4b4d: $cc $b8 $f8
    ld [bc], a                                    ; $4b50: $02
    db $10                                        ; $4b51: $10
    rlca                                          ; $4b52: $07
    nop                                           ; $4b53: $00
    add a                                         ; $4b54: $87
    ld [bc], a                                    ; $4b55: $02
    nop                                           ; $4b56: $00
    ld [bc], a                                    ; $4b57: $02
    nop                                           ; $4b58: $00
    inc bc                                        ; $4b59: $03
    ld [bc], a                                    ; $4b5a: $02
    inc bc                                        ; $4b5b: $03
    ld [bc], a                                    ; $4b5c: $02
    ld [bc], a                                    ; $4b5d: $02
    dec d                                         ; $4b5e: $15
    nop                                           ; $4b5f: $00
    rst $38                                       ; $4b60: $ff
    dec bc                                        ; $4b61: $0b
    inc bc                                        ; $4b62: $03
    ld hl, sp+$0a                                 ; $4b63: $f8 $0a
    ld hl, sp+$05                                 ; $4b65: $f8 $05
    rst $30                                       ; $4b67: $f7
    db $f4                                        ; $4b68: $f4
    rst $30                                       ; $4b69: $f7
    db $fc                                        ; $4b6a: $fc
    rst $30                                       ; $4b6b: $f7
    ld [bc], a                                    ; $4b6c: $02
    sub a                                         ; $4b6d: $97
    rlca                                          ; $4b6e: $07
    nop                                           ; $4b6f: $00
    rrca                                          ; $4b70: $0f
    rlca                                          ; $4b71: $07
    jr jr_0e6_4b83                                ; $4b72: $18 $0f

    inc a                                         ; $4b74: $3c
    rra                                           ; $4b75: $1f
    ld h, c                                       ; $4b76: $61
    ccf                                           ; $4b77: $3f
    ld [hl], e                                    ; $4b78: $73
    ccf                                           ; $4b79: $3f
    rst $00                                       ; $4b7a: $c7
    ld a, [hl]                                    ; $4b7b: $7e
    adc [hl]                                      ; $4b7c: $8e
    ld a, b                                       ; $4b7d: $78
    sbc a                                         ; $4b7e: $9f
    ld [hl], h                                    ; $4b7f: $74
    cp $67                                        ; $4b80: $fe $67
    ld h, h                                       ; $4b82: $64

jr_0e6_4b83:
    inc bc                                        ; $4b83: $03
    ld b, $02                                     ; $4b84: $06 $02
    ld bc, $0082                                  ; $4b86: $01 $82 $00
    ld bc, $0005                                  ; $4b89: $01 $05 $00
    sbc l                                         ; $4b8c: $9d
    ldh [rP1], a                                  ; $4b8d: $e0 $00
    dec de                                        ; $4b8f: $1b
    ldh [$7c], a                                  ; $4b90: $e0 $7c
    ei                                            ; $4b92: $fb
    rst $38                                       ; $4b93: $ff
    ret z                                         ; $4b94: $c8

    reti                                          ; $4b95: $d9


    and [hl]                                      ; $4b96: $a6
    and l                                         ; $4b97: $a5
    ld e, [hl]                                    ; $4b98: $5e
    ld d, l                                       ; $4b99: $55
    ld a, $7d                                     ; $4b9a: $3e $7d
    ld a, $96                                     ; $4b9c: $3e $96
    ld a, a                                       ; $4b9e: $7f
    and a                                         ; $4b9f: $a7
    ld e, b                                       ; $4ba0: $58
    db $fc                                        ; $4ba1: $fc
    jr nz, jr_0e6_4c22                            ; $4ba2: $20 $7e

    and h                                         ; $4ba4: $a4
    inc a                                         ; $4ba5: $3c
    ret c                                         ; $4ba6: $d8

    db $fc                                        ; $4ba7: $fc
    ld [$0318], sp                                ; $4ba8: $08 $18 $03
    nop                                           ; $4bab: $00
    adc l                                         ; $4bac: $8d
    jr nc, jr_0e6_4baf                            ; $4bad: $30 $00

jr_0e6_4baf:
    jr c, jr_0e6_4be1                             ; $4baf: $38 $30

    inc a                                         ; $4bb1: $3c
    nop                                           ; $4bb2: $00
    ld [de], a                                    ; $4bb3: $12
    inc a                                         ; $4bb4: $3c
    ld c, $3c                                     ; $4bb5: $0e $3c
    rra                                           ; $4bb7: $1f
    ld [hl-], a                                   ; $4bb8: $32
    dec de                                        ; $4bb9: $1b
    ld [bc], a                                    ; $4bba: $02
    ld a, $8a                                     ; $4bbb: $3e $8a
    inc e                                         ; $4bbd: $1c
    dec sp                                        ; $4bbe: $3b
    ld b, $13                                     ; $4bbf: $06 $13
    ld c, $16                                     ; $4bc1: $0e $16
    inc c                                         ; $4bc3: $0c
    ld h, $1c                                     ; $4bc4: $26 $1c
    inc l                                         ; $4bc6: $2c
    ld [bc], a                                    ; $4bc7: $02
    jr @+$07                                      ; $4bc8: $18 $05

    nop                                           ; $4bca: $00
    rst $38                                       ; $4bcb: $ff
    dec c                                         ; $4bcc: $0d

    db $04, $fc, $04, $f7, $fe

    db $eb                                        ; $4bd2: $eb
    ld a, [$ffeb]                                 ; $4bd3: $fa $eb $ff
    ei                                            ; $4bd6: $fb
    ld a, [$fffb]                                 ; $4bd7: $fa $fb $ff
    ld [bc], a                                    ; $4bda: $02
    dec bc                                        ; $4bdb: $0b
    ld [bc], a                                    ; $4bdc: $02
    rra                                           ; $4bdd: $1f
    ld b, $3f                                     ; $4bde: $06 $3f
    ld [bc], a                                    ; $4be0: $02

jr_0e6_4be1:
    rra                                           ; $4be1: $1f
    add d                                         ; $4be2: $82
    ccf                                           ; $4be3: $3f
    cpl                                           ; $4be4: $2f
    inc bc                                        ; $4be5: $03
    rra                                           ; $4be6: $1f
    add c                                         ; $4be7: $81
    db $10                                        ; $4be8: $10
    ld [bc], a                                    ; $4be9: $02
    rra                                           ; $4bea: $1f
    adc h                                         ; $4beb: $8c
    jr nc, jr_0e6_4c2d                            ; $4bec: $30 $3f

    ld d, b                                       ; $4bee: $50
    ld a, a                                       ; $4bef: $7f
    ld d, b                                       ; $4bf0: $50

jr_0e6_4bf1:
    ld a, a                                       ; $4bf1: $7f
    sub b                                         ; $4bf2: $90
    rst $38                                       ; $4bf3: $ff
    and [hl]                                      ; $4bf4: $a6
    rst $38                                       ; $4bf5: $ff
    ldh a, [rIE]                                  ; $4bf6: $f0 $ff
    ld [bc], a                                    ; $4bf8: $02
    db $10                                        ; $4bf9: $10
    ld [bc], a                                    ; $4bfa: $02
    jr jr_0e6_4c03                                ; $4bfb: $18 $06

    inc e                                         ; $4bfd: $1c
    ld [bc], a                                    ; $4bfe: $02
    jr jr_0e6_4b83                                ; $4bff: $18 $82

    inc e                                         ; $4c01: $1c
    inc d                                         ; $4c02: $14

jr_0e6_4c03:
    inc bc                                        ; $4c03: $03
    jr @-$7d                                      ; $4c04: $18 $81

    ld [$1802], sp                                ; $4c06: $08 $02 $18
    adc [hl]                                      ; $4c09: $8e
    inc c                                         ; $4c0a: $0c
    inc e                                         ; $4c0b: $1c
    ld [bc], a                                    ; $4c0c: $02
    ld e, $0a                                     ; $4c0d: $1e $0a
    ld e, $09                                     ; $4c0f: $1e $09
    rra                                           ; $4c11: $1f
    dec b                                         ; $4c12: $05
    rra                                           ; $4c13: $1f
    rrca                                          ; $4c14: $0f
    rra                                           ; $4c15: $1f
    rst $38                                       ; $4c16: $ff
    cp a                                          ; $4c17: $bf
    ld [bc], a                                    ; $4c18: $02
    rst $18                                       ; $4c19: $df
    ld [bc], a                                    ; $4c1a: $02
    rra                                           ; $4c1b: $1f
    inc b                                         ; $4c1c: $04
    ccf                                           ; $4c1d: $3f
    add d                                         ; $4c1e: $82
    dec l                                         ; $4c1f: $2d
    dec a                                         ; $4c20: $3d
    ld [bc], a                                    ; $4c21: $02

jr_0e6_4c22:
    dec e                                         ; $4c22: $1d
    ld [de], a                                    ; $4c23: $12
    nop                                           ; $4c24: $00
    add d                                         ; $4c25: $82
    rra                                           ; $4c26: $1f
    dec e                                         ; $4c27: $1d
    ld [bc], a                                    ; $4c28: $02
    dec de                                        ; $4c29: $1b
    ld [bc], a                                    ; $4c2a: $02
    jr jr_0e6_4c31                                ; $4c2b: $18 $04

jr_0e6_4c2d:
    inc e                                         ; $4c2d: $1c
    add d                                         ; $4c2e: $82
    inc d                                         ; $4c2f: $14
    inc e                                         ; $4c30: $1c

jr_0e6_4c31:
    ld [bc], a                                    ; $4c31: $02
    jr jr_0e6_4c46                                ; $4c32: $18 $12

    nop                                           ; $4c34: $00
    rst $38                                       ; $4c35: $ff
    dec c                                         ; $4c36: $0d
    inc b                                         ; $4c37: $04
    db $fc                                        ; $4c38: $fc
    inc b                                         ; $4c39: $04
    rst $30                                       ; $4c3a: $f7
    cp $ea                                        ; $4c3b: $fe $ea
    ld a, [$ffea]                                 ; $4c3d: $fa $ea $ff
    ld a, [$fafa]                                 ; $4c40: $fa $fa $fa
    rst $38                                       ; $4c43: $ff
    ld [bc], a                                    ; $4c44: $02
    dec bc                                        ; $4c45: $0b

jr_0e6_4c46:
    ld [bc], a                                    ; $4c46: $02
    rra                                           ; $4c47: $1f
    ld b, $3f                                     ; $4c48: $06 $3f
    ld [bc], a                                    ; $4c4a: $02
    rra                                           ; $4c4b: $1f
    add d                                         ; $4c4c: $82
    ccf                                           ; $4c4d: $3f
    cpl                                           ; $4c4e: $2f
    inc bc                                        ; $4c4f: $03
    rra                                           ; $4c50: $1f
    add c                                         ; $4c51: $81
    db $10                                        ; $4c52: $10
    ld [bc], a                                    ; $4c53: $02
    rra                                           ; $4c54: $1f
    adc h                                         ; $4c55: $8c
    db $10                                        ; $4c56: $10
    rra                                           ; $4c57: $1f
    jr nz, @+$41                                  ; $4c58: $20 $3f

    ld d, b                                       ; $4c5a: $50
    ld a, a                                       ; $4c5b: $7f
    ld d, b                                       ; $4c5c: $50

jr_0e6_4c5d:
    ld a, a                                       ; $4c5d: $7f
    ld d, b                                       ; $4c5e: $50
    ld a, a                                       ; $4c5f: $7f
    sub e                                         ; $4c60: $93
    rst $38                                       ; $4c61: $ff
    ld [bc], a                                    ; $4c62: $02
    db $10                                        ; $4c63: $10
    ld [bc], a                                    ; $4c64: $02
    jr jr_0e6_4c6d                                ; $4c65: $18 $06

    inc e                                         ; $4c67: $1c
    ld [bc], a                                    ; $4c68: $02
    jr @-$7c                                      ; $4c69: $18 $82

    inc e                                         ; $4c6b: $1c
    inc d                                         ; $4c6c: $14

jr_0e6_4c6d:
    inc bc                                        ; $4c6d: $03
    jr jr_0e6_4bf1                                ; $4c6e: $18 $81

    ld [$1802], sp                                ; $4c70: $08 $02 $18
    adc l                                         ; $4c73: $8d
    inc c                                         ; $4c74: $0c
    inc e                                         ; $4c75: $1c
    ld [bc], a                                    ; $4c76: $02
    ld e, $0b                                     ; $4c77: $1e $0b
    rra                                           ; $4c79: $1f
    add hl, bc                                    ; $4c7a: $09
    rra                                           ; $4c7b: $1f
    add hl, de                                    ; $4c7c: $19
    rra                                           ; $4c7d: $1f
    dec b                                         ; $4c7e: $05
    rra                                           ; $4c7f: $1f
    sub b                                         ; $4c80: $90
    inc b                                         ; $4c81: $04
    rst $38                                       ; $4c82: $ff
    add c                                         ; $4c83: $81
    sbc a                                         ; $4c84: $9f
    ld [bc], a                                    ; $4c85: $02
    ld a, a                                       ; $4c86: $7f
    ld [bc], a                                    ; $4c87: $02
    rra                                           ; $4c88: $1f
    add d                                         ; $4c89: $82
    rla                                           ; $4c8a: $17
    rra                                           ; $4c8b: $1f
    ld [bc], a                                    ; $4c8c: $02
    dec c                                         ; $4c8d: $0d
    ld [bc], a                                    ; $4c8e: $02
    ld bc, $0010                                  ; $4c8f: $01 $10 $00
    add d                                         ; $4c92: $82
    rrca                                          ; $4c93: $0f
    rra                                           ; $4c94: $1f
    ld [bc], a                                    ; $4c95: $02
    ld e, $02                                     ; $4c96: $1e $02
    jr @+$08                                      ; $4c98: $18 $06

    inc e                                         ; $4c9a: $1c
    add c                                         ; $4c9b: $81
    inc b                                         ; $4c9c: $04
    inc bc                                        ; $4c9d: $03
    inc e                                         ; $4c9e: $1c
    stop                                          ; $4c9f: $10 $00
    rst $38                                       ; $4ca1: $ff
    dec c                                         ; $4ca2: $0d
    inc b                                         ; $4ca3: $04
    db $fc                                        ; $4ca4: $fc
    inc b                                         ; $4ca5: $04
    rst $30                                       ; $4ca6: $f7
    cp $eb                                        ; $4ca7: $fe $eb
    ld a, [$ffeb]                                 ; $4ca9: $fa $eb $ff
    ei                                            ; $4cac: $fb
    ld a, [$fffb]                                 ; $4cad: $fa $fb $ff
    ld [bc], a                                    ; $4cb0: $02
    dec bc                                        ; $4cb1: $0b
    ld [bc], a                                    ; $4cb2: $02
    rra                                           ; $4cb3: $1f
    ld b, $3f                                     ; $4cb4: $06 $3f
    ld [bc], a                                    ; $4cb6: $02
    rra                                           ; $4cb7: $1f
    add d                                         ; $4cb8: $82
    ccf                                           ; $4cb9: $3f
    cpl                                           ; $4cba: $2f
    inc bc                                        ; $4cbb: $03
    rra                                           ; $4cbc: $1f
    add c                                         ; $4cbd: $81
    db $10                                        ; $4cbe: $10
    ld [bc], a                                    ; $4cbf: $02
    rra                                           ; $4cc0: $1f
    adc h                                         ; $4cc1: $8c

jr_0e6_4cc2:
    jr nc, jr_0e6_4d03                            ; $4cc2: $30 $3f

    ld h, b                                       ; $4cc4: $60
    ld a, a                                       ; $4cc5: $7f

jr_0e6_4cc6:
    ld d, b                                       ; $4cc6: $50
    ld a, a                                       ; $4cc7: $7f
    ld d, b                                       ; $4cc8: $50
    ld a, a                                       ; $4cc9: $7f
    sub b                                         ; $4cca: $90
    rst $38                                       ; $4ccb: $ff
    and a                                         ; $4ccc: $a7
    rst $38                                       ; $4ccd: $ff
    ld [bc], a                                    ; $4cce: $02
    db $10                                        ; $4ccf: $10
    ld [bc], a                                    ; $4cd0: $02
    jr jr_0e6_4cd9                                ; $4cd1: $18 $06

    inc e                                         ; $4cd3: $1c
    ld [bc], a                                    ; $4cd4: $02
    jr @-$7c                                      ; $4cd5: $18 $82

    inc e                                         ; $4cd7: $1c
    inc d                                         ; $4cd8: $14

jr_0e6_4cd9:
    inc bc                                        ; $4cd9: $03
    jr jr_0e6_4c5d                                ; $4cda: $18 $81

    ld [$1802], sp                                ; $4cdc: $08 $02 $18
    adc l                                         ; $4cdf: $8d
    inc c                                         ; $4ce0: $0c
    inc e                                         ; $4ce1: $1c
    ld [bc], a                                    ; $4ce2: $02
    ld e, $0a                                     ; $4ce3: $1e $0a
    ld e, $0a                                     ; $4ce5: $1e $0a
    ld e, $05                                     ; $4ce7: $1e $05
    rra                                           ; $4ce9: $1f
    rlca                                          ; $4cea: $07
    rra                                           ; $4ceb: $1f
    ldh a, [rSC]                                  ; $4cec: $f0 $02
    rst $38                                       ; $4cee: $ff
    add c                                         ; $4cef: $81
    sbc a                                         ; $4cf0: $9f

jr_0e6_4cf1:
    ld [bc], a                                    ; $4cf1: $02
    ld a, a                                       ; $4cf2: $7f
    ld [bc], a                                    ; $4cf3: $02
    rra                                           ; $4cf4: $1f
    add c                                         ; $4cf5: $81
    inc de                                        ; $4cf6: $13
    inc bc                                        ; $4cf7: $03
    rra                                           ; $4cf8: $1f
    ld [bc], a                                    ; $4cf9: $02
    ld bc, $0012                                  ; $4cfa: $01 $12 $00
    add d                                         ; $4cfd: $82
    rrca                                          ; $4cfe: $0f
    dec e                                         ; $4cff: $1d
    ld [bc], a                                    ; $4d00: $02
    ld e, $04                                     ; $4d01: $1e $04

jr_0e6_4d03:
    inc e                                         ; $4d03: $1c
    add c                                         ; $4d04: $81
    inc b                                         ; $4d05: $04
    dec b                                         ; $4d06: $05
    inc e                                         ; $4d07: $1c
    ld [de], a                                    ; $4d08: $12
    nop                                           ; $4d09: $00
    rst $38                                       ; $4d0a: $ff
    dec c                                         ; $4d0b: $0d
    inc b                                         ; $4d0c: $04
    db $fc                                        ; $4d0d: $fc
    inc b                                         ; $4d0e: $04
    rst $30                                       ; $4d0f: $f7
    cp $ea                                        ; $4d10: $fe $ea
    ld a, [$ffea]                                 ; $4d12: $fa $ea $ff
    ld a, [$fafa]                                 ; $4d15: $fa $fa $fa
    rst $38                                       ; $4d18: $ff
    ld [bc], a                                    ; $4d19: $02
    dec bc                                        ; $4d1a: $0b
    ld [bc], a                                    ; $4d1b: $02
    rra                                           ; $4d1c: $1f
    ld b, $3f                                     ; $4d1d: $06 $3f
    ld [bc], a                                    ; $4d1f: $02
    rra                                           ; $4d20: $1f
    add d                                         ; $4d21: $82
    ccf                                           ; $4d22: $3f
    cpl                                           ; $4d23: $2f
    inc bc                                        ; $4d24: $03
    rra                                           ; $4d25: $1f
    add c                                         ; $4d26: $81
    db $10                                        ; $4d27: $10
    ld [bc], a                                    ; $4d28: $02
    rra                                           ; $4d29: $1f
    adc h                                         ; $4d2a: $8c
    jr c, @+$41                                   ; $4d2b: $38 $3f

jr_0e6_4d2d:
    ld d, b                                       ; $4d2d: $50
    ld a, a                                       ; $4d2e: $7f
    ret nc                                        ; $4d2f: $d0

    rst $38                                       ; $4d30: $ff

jr_0e6_4d31:
    sub b                                         ; $4d31: $90
    rst $38                                       ; $4d32: $ff
    sub b                                         ; $4d33: $90
    rst $38                                       ; $4d34: $ff
    xor h                                         ; $4d35: $ac
    rst $38                                       ; $4d36: $ff
    ld [bc], a                                    ; $4d37: $02
    db $10                                        ; $4d38: $10
    ld [bc], a                                    ; $4d39: $02
    jr jr_0e6_4d42                                ; $4d3a: $18 $06

    inc e                                         ; $4d3c: $1c
    ld [bc], a                                    ; $4d3d: $02
    jr jr_0e6_4cc2                                ; $4d3e: $18 $82

    inc e                                         ; $4d40: $1c
    inc d                                         ; $4d41: $14

jr_0e6_4d42:
    inc bc                                        ; $4d42: $03
    jr jr_0e6_4cc6                                ; $4d43: $18 $81

    ld [$1802], sp                                ; $4d45: $08 $02 $18
    adc [hl]                                      ; $4d48: $8e
    ld [$0418], sp                                ; $4d49: $08 $18 $04
    inc e                                         ; $4d4c: $1c
    ld a, [bc]                                    ; $4d4d: $0a
    ld e, $0a                                     ; $4d4e: $1e $0a
    ld e, $0a                                     ; $4d50: $1e $0a
    ld e, $09                                     ; $4d52: $1e $09
    rra                                           ; $4d54: $1f
    ldh a, [rIE]                                  ; $4d55: $f0 $ff
    ld [bc], a                                    ; $4d57: $02
    ld a, a                                       ; $4d58: $7f
    ld [bc], a                                    ; $4d59: $02

jr_0e6_4d5a:
    rra                                           ; $4d5a: $1f
    ld b, $3f                                     ; $4d5b: $06 $3f
    add d                                         ; $4d5d: $82
    dec h                                         ; $4d5e: $25
    dec a                                         ; $4d5f: $3d
    ld [bc], a                                    ; $4d60: $02
    inc a                                         ; $4d61: $3c
    stop                                          ; $4d62: $10 $00
    add c                                         ; $4d64: $81
    add hl, bc                                    ; $4d65: $09
    inc b                                         ; $4d66: $04
    rra                                           ; $4d67: $1f
    add c                                         ; $4d68: $81
    add hl, de                                    ; $4d69: $19
    ld [bc], a                                    ; $4d6a: $02
    ld e, $02                                     ; $4d6b: $1e $02
    jr jr_0e6_4cf1                                ; $4d6d: $18 $82

    ld [$0218], sp                                ; $4d6f: $08 $18 $02
    db $10                                        ; $4d72: $10
    ld [de], a                                    ; $4d73: $12
    nop                                           ; $4d74: $00
    rst $38                                       ; $4d75: $ff
    dec c                                         ; $4d76: $0d
    inc b                                         ; $4d77: $04
    db $fc                                        ; $4d78: $fc
    inc b                                         ; $4d79: $04
    rst $30                                       ; $4d7a: $f7
    cp $eb                                        ; $4d7b: $fe $eb
    ld a, [$ffeb]                                 ; $4d7d: $fa $eb $ff
    ei                                            ; $4d80: $fb
    ld a, [$fffb]                                 ; $4d81: $fa $fb $ff
    ld [bc], a                                    ; $4d84: $02
    dec bc                                        ; $4d85: $0b
    ld [bc], a                                    ; $4d86: $02
    rra                                           ; $4d87: $1f
    ld b, $3f                                     ; $4d88: $06 $3f
    ld [bc], a                                    ; $4d8a: $02
    rra                                           ; $4d8b: $1f
    add d                                         ; $4d8c: $82
    ccf                                           ; $4d8d: $3f
    cpl                                           ; $4d8e: $2f
    inc bc                                        ; $4d8f: $03
    rra                                           ; $4d90: $1f
    add c                                         ; $4d91: $81
    db $10                                        ; $4d92: $10
    ld [bc], a                                    ; $4d93: $02
    rra                                           ; $4d94: $1f
    adc h                                         ; $4d95: $8c
    jr nc, jr_0e6_4dd7                            ; $4d96: $30 $3f

    ld d, b                                       ; $4d98: $50
    ld a, a                                       ; $4d99: $7f
    ld d, b                                       ; $4d9a: $50
    ld a, a                                       ; $4d9b: $7f
    sub b                                         ; $4d9c: $90
    rst $38                                       ; $4d9d: $ff
    sub b                                         ; $4d9e: $90
    rst $38                                       ; $4d9f: $ff

jr_0e6_4da0:
    xor $ff                                       ; $4da0: $ee $ff
    ld [bc], a                                    ; $4da2: $02
    db $10                                        ; $4da3: $10
    ld [bc], a                                    ; $4da4: $02
    jr jr_0e6_4dad                                ; $4da5: $18 $06

    inc e                                         ; $4da7: $1c
    ld [bc], a                                    ; $4da8: $02
    jr jr_0e6_4d2d                                ; $4da9: $18 $82

    inc e                                         ; $4dab: $1c
    inc d                                         ; $4dac: $14

jr_0e6_4dad:
    inc bc                                        ; $4dad: $03
    jr jr_0e6_4d31                                ; $4dae: $18 $81

    ld [$1802], sp                                ; $4db0: $08 $02 $18

jr_0e6_4db3:
    adc [hl]                                      ; $4db3: $8e
    inc c                                         ; $4db4: $0c
    inc e                                         ; $4db5: $1c
    ld b, $1e                                     ; $4db6: $06 $1e
    ld a, [bc]                                    ; $4db8: $0a
    ld e, $0a                                     ; $4db9: $1e $0a
    ld e, $09                                     ; $4dbb: $1e $09
    rra                                           ; $4dbd: $1f
    dec b                                         ; $4dbe: $05
    rra                                           ; $4dbf: $1f
    ldh a, [$bf]                                  ; $4dc0: $f0 $bf
    ld [bc], a                                    ; $4dc2: $02
    ld a, a                                       ; $4dc3: $7f
    inc b                                         ; $4dc4: $04
    ccf                                           ; $4dc5: $3f
    add c                                         ; $4dc6: $81
    ld h, $03                                     ; $4dc7: $26 $03
    ccf                                           ; $4dc9: $3f
    ld [bc], a                                    ; $4dca: $02
    inc a                                         ; $4dcb: $3c
    ld [de], a                                    ; $4dcc: $12
    nop                                           ; $4dcd: $00
    add c                                         ; $4dce: $81
    rrca                                          ; $4dcf: $0f
    ld [bc], a                                    ; $4dd0: $02
    rra                                           ; $4dd1: $1f
    add c                                         ; $4dd2: $81
    add hl, de                                    ; $4dd3: $19
    ld [bc], a                                    ; $4dd4: $02
    ld e, $02                                     ; $4dd5: $1e $02

jr_0e6_4dd7:
    jr jr_0e6_4d5a                                ; $4dd7: $18 $81

    ld [$1803], sp                                ; $4dd9: $08 $03 $18
    inc d                                         ; $4ddc: $14
    nop                                           ; $4ddd: $00
    rst $38                                       ; $4dde: $ff
    dec c                                         ; $4ddf: $0d
    inc b                                         ; $4de0: $04
    db $fc                                        ; $4de1: $fc
    inc b                                         ; $4de2: $04
    rst $30                                       ; $4de3: $f7
    cp $ea                                        ; $4de4: $fe $ea
    ld a, [$ffea]                                 ; $4de6: $fa $ea $ff
    ld a, [$fafa]                                 ; $4de9: $fa $fa $fa
    rst $38                                       ; $4dec: $ff
    ld [bc], a                                    ; $4ded: $02
    rrca                                          ; $4dee: $0f
    ld [bc], a                                    ; $4def: $02
    rra                                           ; $4df0: $1f
    inc bc                                        ; $4df1: $03
    ccf                                           ; $4df2: $3f
    sbc c                                         ; $4df3: $99
    add hl, sp                                    ; $4df4: $39
    ccf                                           ; $4df5: $3f
    jr nc, jr_0e6_4e17                            ; $4df6: $30 $1f

    dec e                                         ; $4df8: $1d
    ccf                                           ; $4df9: $3f
    inc h                                         ; $4dfa: $24
    rra                                           ; $4dfb: $1f
    ld [de], a                                    ; $4dfc: $12
    rra                                           ; $4dfd: $1f
    inc de                                        ; $4dfe: $13
    rra                                           ; $4dff: $1f
    jr @+$29                                      ; $4e00: $18 $27

    ccf                                           ; $4e02: $3f
    ld d, b                                       ; $4e03: $50
    ld a, a                                       ; $4e04: $7f
    ld d, b                                       ; $4e05: $50
    ld a, a                                       ; $4e06: $7f
    or b                                          ; $4e07: $b0
    rst $38                                       ; $4e08: $ff
    sub b                                         ; $4e09: $90
    rst $38                                       ; $4e0a: $ff
    ldh [rIE], a                                  ; $4e0b: $e0 $ff
    ld [bc], a                                    ; $4e0d: $02
    ld [$1802], sp                                ; $4e0e: $08 $02 $18
    inc bc                                        ; $4e11: $03
    inc e                                         ; $4e12: $1c
    add e                                         ; $4e13: $83
    inc c                                         ; $4e14: $0c
    inc e                                         ; $4e15: $1c

jr_0e6_4e16:
    inc c                                         ; $4e16: $0c

jr_0e6_4e17:
    ld [bc], a                                    ; $4e17: $02
    jr jr_0e6_4da0                                ; $4e18: $18 $86

    inc e                                         ; $4e1a: $1c
    inc b                                         ; $4e1b: $04
    jr jr_0e6_4e26                                ; $4e1c: $18 $08

    jr jr_0e6_4e28                                ; $4e1e: $18 $08

    ld [bc], a                                    ; $4e20: $02
    jr jr_0e6_4db3                                ; $4e21: $18 $90

    inc b                                         ; $4e23: $04
    inc e                                         ; $4e24: $1c
    ld a, [bc]                                    ; $4e25: $0a

jr_0e6_4e26:
    ld e, $0a                                     ; $4e26: $1e $0a

jr_0e6_4e28:
    ld e, $0d                                     ; $4e28: $1e $0d
    rra                                           ; $4e2a: $1f
    add hl, bc                                    ; $4e2b: $09
    rra                                           ; $4e2c: $1f
    rlca                                          ; $4e2d: $07
    rra                                           ; $4e2e: $1f
    rst $38                                       ; $4e2f: $ff
    sbc a                                         ; $4e30: $9f
    rst $38                                       ; $4e31: $ff
    cp a                                          ; $4e32: $bf
    ld [bc], a                                    ; $4e33: $02
    ld e, a                                       ; $4e34: $5f
    ld [bc], a                                    ; $4e35: $02
    rra                                           ; $4e36: $1f
    ld [bc], a                                    ; $4e37: $02
    ccf                                           ; $4e38: $3f
    ld [bc], a                                    ; $4e39: $02
    dec a                                         ; $4e3a: $3d
    add d                                         ; $4e3b: $82
    dec h                                         ; $4e3c: $25
    dec a                                         ; $4e3d: $3d
    ld [bc], a                                    ; $4e3e: $02
    jr jr_0e6_4e51                                ; $4e3f: $18 $10

    nop                                           ; $4e41: $00
    add h                                         ; $4e42: $84
    rra                                           ; $4e43: $1f
    add hl, de                                    ; $4e44: $19
    rra                                           ; $4e45: $1f
    dec e                                         ; $4e46: $1d
    ld [bc], a                                    ; $4e47: $02
    ld a, [de]                                    ; $4e48: $1a
    ld [bc], a                                    ; $4e49: $02
    jr jr_0e6_4e50                                ; $4e4a: $18 $04

    inc e                                         ; $4e4c: $1c
    add d                                         ; $4e4d: $82
    inc b                                         ; $4e4e: $04
    inc e                                         ; $4e4f: $1c

jr_0e6_4e50:
    ld [bc], a                                    ; $4e50: $02

jr_0e6_4e51:
    jr jr_0e6_4e63                                ; $4e51: $18 $10

    nop                                           ; $4e53: $00
    rst $38                                       ; $4e54: $ff
    dec c                                         ; $4e55: $0d
    inc b                                         ; $4e56: $04
    db $fc                                        ; $4e57: $fc
    inc b                                         ; $4e58: $04
    rst $30                                       ; $4e59: $f7
    cp $ea                                        ; $4e5a: $fe $ea
    ld a, [$ffea]                                 ; $4e5c: $fa $ea $ff
    ld a, [$fafa]                                 ; $4e5f: $fa $fa $fa
    rst $38                                       ; $4e62: $ff

jr_0e6_4e63:
    ld [bc], a                                    ; $4e63: $02
    rrca                                          ; $4e64: $0f
    ld [bc], a                                    ; $4e65: $02
    rra                                           ; $4e66: $1f
    inc bc                                        ; $4e67: $03
    ccf                                           ; $4e68: $3f
    sbc c                                         ; $4e69: $99
    add hl, sp                                    ; $4e6a: $39
    ccf                                           ; $4e6b: $3f
    jr nc, jr_0e6_4e8d                            ; $4e6c: $30 $1f

    dec e                                         ; $4e6e: $1d
    ccf                                           ; $4e6f: $3f
    inc h                                         ; $4e70: $24
    rra                                           ; $4e71: $1f
    ld [de], a                                    ; $4e72: $12
    rra                                           ; $4e73: $1f
    inc de                                        ; $4e74: $13
    rra                                           ; $4e75: $1f
    jr jr_0e6_4eaf                                ; $4e76: $18 $37

    ccf                                           ; $4e78: $3f
    jr nz, jr_0e6_4eba                            ; $4e79: $20 $3f

    ld d, b                                       ; $4e7b: $50
    ld a, a                                       ; $4e7c: $7f
    ld d, b                                       ; $4e7d: $50
    ld a, a                                       ; $4e7e: $7f
    or b                                          ; $4e7f: $b0
    rst $38                                       ; $4e80: $ff
    sub b                                         ; $4e81: $90
    rst $38                                       ; $4e82: $ff
    ld [bc], a                                    ; $4e83: $02
    ld [$1802], sp                                ; $4e84: $08 $02 $18
    inc bc                                        ; $4e87: $03
    inc e                                         ; $4e88: $1c
    add e                                         ; $4e89: $83

jr_0e6_4e8a:
    inc c                                         ; $4e8a: $0c
    inc e                                         ; $4e8b: $1c
    inc c                                         ; $4e8c: $0c

jr_0e6_4e8d:
    ld [bc], a                                    ; $4e8d: $02
    jr jr_0e6_4e16                                ; $4e8e: $18 $86

    inc e                                         ; $4e90: $1c
    inc b                                         ; $4e91: $04
    jr jr_0e6_4e9c                                ; $4e92: $18 $08

    jr jr_0e6_4e9e                                ; $4e94: $18 $08

    ld [bc], a                                    ; $4e96: $02
    jr @-$6e                                      ; $4e97: $18 $90

    inc b                                         ; $4e99: $04
    inc e                                         ; $4e9a: $1c
    ld a, [bc]                                    ; $4e9b: $0a

jr_0e6_4e9c:
    ld e, $0d                                     ; $4e9c: $1e $0d

jr_0e6_4e9e:
    rra                                           ; $4e9e: $1f
    add hl, bc                                    ; $4e9f: $09
    rra                                           ; $4ea0: $1f
    add hl, bc                                    ; $4ea1: $09
    rra                                           ; $4ea2: $1f
    rlca                                          ; $4ea3: $07
    rra                                           ; $4ea4: $1f
    cp a                                          ; $4ea5: $bf
    rst $28                                       ; $4ea6: $ef
    ld a, a                                       ; $4ea7: $7f
    ld c, a                                       ; $4ea8: $4f
    ld [bc], a                                    ; $4ea9: $02
    ccf                                           ; $4eaa: $3f
    inc b                                         ; $4eab: $04
    rra                                           ; $4eac: $1f
    add d                                         ; $4ead: $82
    daa                                           ; $4eae: $27

jr_0e6_4eaf:
    ccf                                           ; $4eaf: $3f
    ld [bc], a                                    ; $4eb0: $02
    dec e                                         ; $4eb1: $1d
    ld [bc], a                                    ; $4eb2: $02
    ld bc, $0010                                  ; $4eb3: $01 $10 $00
    add d                                         ; $4eb6: $82
    rra                                           ; $4eb7: $1f
    add hl, de                                    ; $4eb8: $19
    ld [bc], a                                    ; $4eb9: $02

jr_0e6_4eba:
    ld e, $02                                     ; $4eba: $1e $02
    jr jr_0e6_4ec2                                ; $4ebc: $18 $04

    inc e                                         ; $4ebe: $1c
    add d                                         ; $4ebf: $82
    ld b, $1e                                     ; $4ec0: $06 $1e

jr_0e6_4ec2:
    ld [bc], a                                    ; $4ec2: $02
    inc e                                         ; $4ec3: $1c
    ld [bc], a                                    ; $4ec4: $02
    jr jr_0e6_4ed7                                ; $4ec5: $18 $10

    nop                                           ; $4ec7: $00
    rst $38                                       ; $4ec8: $ff
    dec c                                         ; $4ec9: $0d
    inc b                                         ; $4eca: $04
    db $fc                                        ; $4ecb: $fc
    inc b                                         ; $4ecc: $04
    rst $30                                       ; $4ecd: $f7
    cp $eb                                        ; $4ece: $fe $eb
    ld a, [$ffeb]                                 ; $4ed0: $fa $eb $ff
    ei                                            ; $4ed3: $fb
    ld a, [$fffb]                                 ; $4ed4: $fa $fb $ff

jr_0e6_4ed7:
    ld [bc], a                                    ; $4ed7: $02
    rrca                                          ; $4ed8: $0f
    ld [bc], a                                    ; $4ed9: $02
    rra                                           ; $4eda: $1f
    inc bc                                        ; $4edb: $03
    ccf                                           ; $4edc: $3f
    sbc c                                         ; $4edd: $99
    add hl, sp                                    ; $4ede: $39
    ccf                                           ; $4edf: $3f
    jr nc, jr_0e6_4f01                            ; $4ee0: $30 $1f

    dec e                                         ; $4ee2: $1d
    ccf                                           ; $4ee3: $3f
    inc h                                         ; $4ee4: $24
    rra                                           ; $4ee5: $1f
    ld [de], a                                    ; $4ee6: $12
    rra                                           ; $4ee7: $1f
    inc de                                        ; $4ee8: $13
    rra                                           ; $4ee9: $1f
    jr @+$29                                      ; $4eea: $18 $27

    ccf                                           ; $4eec: $3f
    ld b, b                                       ; $4eed: $40
    ld a, a                                       ; $4eee: $7f
    ld d, b                                       ; $4eef: $50
    ld a, a                                       ; $4ef0: $7f
    ld d, b                                       ; $4ef1: $50
    ld a, a                                       ; $4ef2: $7f
    or b                                          ; $4ef3: $b0
    rst $38                                       ; $4ef4: $ff
    cp b                                          ; $4ef5: $b8

jr_0e6_4ef6:
    rst $38                                       ; $4ef6: $ff
    ld [bc], a                                    ; $4ef7: $02
    ld [$1802], sp                                ; $4ef8: $08 $02 $18
    inc bc                                        ; $4efb: $03
    inc e                                         ; $4efc: $1c
    add e                                         ; $4efd: $83
    inc c                                         ; $4efe: $0c
    inc e                                         ; $4eff: $1c
    inc c                                         ; $4f00: $0c

jr_0e6_4f01:
    ld [bc], a                                    ; $4f01: $02
    jr jr_0e6_4e8a                                ; $4f02: $18 $86

    inc e                                         ; $4f04: $1c
    inc b                                         ; $4f05: $04
    jr jr_0e6_4f10                                ; $4f06: $18 $08

    jr jr_0e6_4f12                                ; $4f08: $18 $08

    ld [bc], a                                    ; $4f0a: $02
    jr @-$6e                                      ; $4f0b: $18 $90

    inc b                                         ; $4f0d: $04
    inc e                                         ; $4f0e: $1c
    ld a, [bc]                                    ; $4f0f: $0a

jr_0e6_4f10:
    ld e, $0a                                     ; $4f10: $1e $0a

jr_0e6_4f12:
    ld e, $0d                                     ; $4f12: $1e $0d
    rra                                           ; $4f14: $1f
    add hl, bc                                    ; $4f15: $09
    rra                                           ; $4f16: $1f
    rlca                                          ; $4f17: $07
    rra                                           ; $4f18: $1f
    rst $38                                       ; $4f19: $ff
    rst $18                                       ; $4f1a: $df
    rst $38                                       ; $4f1b: $ff
    sbc a                                         ; $4f1c: $9f
    ld [bc], a                                    ; $4f1d: $02
    ld a, a                                       ; $4f1e: $7f
    ld b, $1f                                     ; $4f1f: $06 $1f
    ld [bc], a                                    ; $4f21: $02

jr_0e6_4f22:
    ld bc, $0012                                  ; $4f22: $01 $12 $00
    add d                                         ; $4f25: $82
    rra                                           ; $4f26: $1f
    dec e                                         ; $4f27: $1d
    ld [bc], a                                    ; $4f28: $02
    ld e, $02                                     ; $4f29: $1e $02
    jr jr_0e6_4f31                                ; $4f2b: $18 $04

    inc e                                         ; $4f2d: $1c
    add c                                         ; $4f2e: $81
    inc b                                         ; $4f2f: $04
    inc bc                                        ; $4f30: $03

jr_0e6_4f31:
    inc e                                         ; $4f31: $1c
    ld [de], a                                    ; $4f32: $12
    nop                                           ; $4f33: $00
    rst $38                                       ; $4f34: $ff
    dec c                                         ; $4f35: $0d
    inc b                                         ; $4f36: $04
    db $fc                                        ; $4f37: $fc
    inc b                                         ; $4f38: $04
    rst $30                                       ; $4f39: $f7
    cp $ea                                        ; $4f3a: $fe $ea
    ld a, [$ffea]                                 ; $4f3c: $fa $ea $ff
    ld a, [$fafa]                                 ; $4f3f: $fa $fa $fa
    rst $38                                       ; $4f42: $ff
    ld [bc], a                                    ; $4f43: $02
    rrca                                          ; $4f44: $0f
    ld [bc], a                                    ; $4f45: $02
    rra                                           ; $4f46: $1f
    inc bc                                        ; $4f47: $03
    ccf                                           ; $4f48: $3f
    sbc c                                         ; $4f49: $99
    add hl, sp                                    ; $4f4a: $39
    ccf                                           ; $4f4b: $3f
    jr nc, jr_0e6_4f6d                            ; $4f4c: $30 $1f

    dec e                                         ; $4f4e: $1d
    ccf                                           ; $4f4f: $3f
    inc h                                         ; $4f50: $24
    rra                                           ; $4f51: $1f
    ld [de], a                                    ; $4f52: $12
    rra                                           ; $4f53: $1f
    inc de                                        ; $4f54: $13
    rra                                           ; $4f55: $1f
    jr @+$29                                      ; $4f56: $18 $27

    ccf                                           ; $4f58: $3f
    ld d, b                                       ; $4f59: $50
    ld a, a                                       ; $4f5a: $7f
    or b                                          ; $4f5b: $b0
    rst $38                                       ; $4f5c: $ff
    sub b                                         ; $4f5d: $90
    rst $38                                       ; $4f5e: $ff
    sub b                                         ; $4f5f: $90
    rst $38                                       ; $4f60: $ff
    ldh [rIE], a                                  ; $4f61: $e0 $ff
    ld [bc], a                                    ; $4f63: $02
    ld [$1802], sp                                ; $4f64: $08 $02 $18
    inc bc                                        ; $4f67: $03

jr_0e6_4f68:
    inc e                                         ; $4f68: $1c
    add e                                         ; $4f69: $83
    inc c                                         ; $4f6a: $0c
    inc e                                         ; $4f6b: $1c
    inc c                                         ; $4f6c: $0c

jr_0e6_4f6d:
    ld [bc], a                                    ; $4f6d: $02
    jr jr_0e6_4ef6                                ; $4f6e: $18 $86

    inc e                                         ; $4f70: $1c
    inc b                                         ; $4f71: $04
    jr jr_0e6_4f7c                                ; $4f72: $18 $08

    jr jr_0e6_4f7e                                ; $4f74: $18 $08

    ld [bc], a                                    ; $4f76: $02
    jr @-$70                                      ; $4f77: $18 $8e

jr_0e6_4f79:
    inc c                                         ; $4f79: $0c
    inc e                                         ; $4f7a: $1c
    inc b                                         ; $4f7b: $04

jr_0e6_4f7c:
    inc e                                         ; $4f7c: $1c
    ld a, [bc]                                    ; $4f7d: $0a

jr_0e6_4f7e:
    ld e, $0a                                     ; $4f7e: $1e $0a
    ld e, $0d                                     ; $4f80: $1e $0d
    rra                                           ; $4f82: $1f
    add hl, bc                                    ; $4f83: $09
    rra                                           ; $4f84: $1f
    rst $38                                       ; $4f85: $ff
    sbc a                                         ; $4f86: $9f
    ld [bc], a                                    ; $4f87: $02
    ld a, a                                       ; $4f88: $7f
    ld [bc], a                                    ; $4f89: $02
    rra                                           ; $4f8a: $1f
    inc b                                         ; $4f8b: $04
    ccf                                           ; $4f8c: $3f
    add d                                         ; $4f8d: $82
    ld h, a                                       ; $4f8e: $67
    ld a, a                                       ; $4f8f: $7f
    ld [bc], a                                    ; $4f90: $02
    dec a                                         ; $4f91: $3d
    ld [bc], a                                    ; $4f92: $02
    inc e                                         ; $4f93: $1c
    stop                                          ; $4f94: $10 $00
    add h                                         ; $4f96: $84
    dec e                                         ; $4f97: $1d
    rla                                           ; $4f98: $17
    ld e, $12                                     ; $4f99: $1e $12
    ld [bc], a                                    ; $4f9b: $02
    inc e                                         ; $4f9c: $1c
    inc b                                         ; $4f9d: $04
    jr jr_0e6_4f22                                ; $4f9e: $18 $82

    inc b                                         ; $4fa0: $04
    inc e                                         ; $4fa1: $1c
    ld [bc], a                                    ; $4fa2: $02
    jr jr_0e6_4fb7                                ; $4fa3: $18 $12

    nop                                           ; $4fa5: $00
    rst $38                                       ; $4fa6: $ff
    dec c                                         ; $4fa7: $0d
    inc b                                         ; $4fa8: $04
    db $fc                                        ; $4fa9: $fc
    inc b                                         ; $4faa: $04
    rst $30                                       ; $4fab: $f7
    cp $eb                                        ; $4fac: $fe $eb
    ld a, [$ffeb]                                 ; $4fae: $fa $eb $ff
    ei                                            ; $4fb1: $fb
    ld a, [$fffb]                                 ; $4fb2: $fa $fb $ff
    ld [bc], a                                    ; $4fb5: $02
    rrca                                          ; $4fb6: $0f

jr_0e6_4fb7:
    ld [bc], a                                    ; $4fb7: $02
    rra                                           ; $4fb8: $1f
    inc bc                                        ; $4fb9: $03
    ccf                                           ; $4fba: $3f
    sbc c                                         ; $4fbb: $99
    add hl, sp                                    ; $4fbc: $39

Jump_0e6_4fbd:
    ccf                                           ; $4fbd: $3f
    jr nc, jr_0e6_4fdf                            ; $4fbe: $30 $1f

    dec e                                         ; $4fc0: $1d
    ccf                                           ; $4fc1: $3f
    inc h                                         ; $4fc2: $24
    rra                                           ; $4fc3: $1f
    ld [de], a                                    ; $4fc4: $12
    rra                                           ; $4fc5: $1f
    inc de                                        ; $4fc6: $13
    rra                                           ; $4fc7: $1f
    jr @+$29                                      ; $4fc8: $18 $27

    ccf                                           ; $4fca: $3f
    ld d, b                                       ; $4fcb: $50
    ld a, a                                       ; $4fcc: $7f
    ld d, b                                       ; $4fcd: $50
    ld a, a                                       ; $4fce: $7f
    or b                                          ; $4fcf: $b0
    rst $38                                       ; $4fd0: $ff
    sub b                                         ; $4fd1: $90
    rst $38                                       ; $4fd2: $ff
    ldh [rIE], a                                  ; $4fd3: $e0 $ff
    ld [bc], a                                    ; $4fd5: $02
    ld [$1802], sp                                ; $4fd6: $08 $02 $18
    inc bc                                        ; $4fd9: $03
    inc e                                         ; $4fda: $1c
    add e                                         ; $4fdb: $83
    inc c                                         ; $4fdc: $0c
    inc e                                         ; $4fdd: $1c
    inc c                                         ; $4fde: $0c

jr_0e6_4fdf:
    ld [bc], a                                    ; $4fdf: $02
    jr jr_0e6_4f68                                ; $4fe0: $18 $86

    inc e                                         ; $4fe2: $1c
    inc b                                         ; $4fe3: $04
    jr jr_0e6_4fee                                ; $4fe4: $18 $08

    jr jr_0e6_4ff0                                ; $4fe6: $18 $08

    ld [bc], a                                    ; $4fe8: $02
    jr jr_0e6_4f79                                ; $4fe9: $18 $8e

    inc b                                         ; $4feb: $04
    inc e                                         ; $4fec: $1c
    ld [bc], a                                    ; $4fed: $02

jr_0e6_4fee:
    ld e, $0a                                     ; $4fee: $1e $0a

jr_0e6_4ff0:
    ld e, $0a                                     ; $4ff0: $1e $0a
    ld e, $0d                                     ; $4ff2: $1e $0d
    rra                                           ; $4ff4: $1f
    dec e                                         ; $4ff5: $1d
    rra                                           ; $4ff6: $1f
    rst $38                                       ; $4ff7: $ff
    cp a                                          ; $4ff8: $bf
    ld [bc], a                                    ; $4ff9: $02
    ld a, a                                       ; $4ffa: $7f
    ld [bc], a                                    ; $4ffb: $02
    rra                                           ; $4ffc: $1f
    inc b                                         ; $4ffd: $04
    ccf                                           ; $4ffe: $3f
    add d                                         ; $4fff: $82
    daa                                           ; $5000: $27
    ccf                                           ; $5001: $3f
    ld [bc], a                                    ; $5002: $02
    inc a                                         ; $5003: $3c
    ld [de], a                                    ; $5004: $12
    nop                                           ; $5005: $00
    add h                                         ; $5006: $84
    rra                                           ; $5007: $1f
    dec de                                        ; $5008: $1b
    rra                                           ; $5009: $1f
    add hl, de                                    ; $500a: $19
    ld [bc], a                                    ; $500b: $02
    ld e, $06                                     ; $500c: $1e $06
    jr @+$16                                      ; $500e: $18 $14

    nop                                           ; $5010: $00
    rst $38                                       ; $5011: $ff

    db $0b, $03, $fc, $04, $f7, $fe, $ea, $fa, $eb, $fc, $fa, $fc, $02, $5e, $02, $bf
    db $02, $7f, $9a, $ff, $fa, $ff, $f0, $ff, $f6, $7f, $50, $3f, $30, $1f, $11, $0f
    db $08, $17, $1f, $11, $1f, $14, $1f, $14, $1f, $2c, $3f, $24, $3f, $02, $02, $02
    db $03, $06, $02, $82, $03, $01, $06, $02, $04, $00, $08, $02, $82, $b2, $fe, $02
    db $00, $84, $fc, $cc, $7c, $6c, $02, $3c, $04, $7e, $82, $63, $7f, $02, $7e, $10
    db $00, $ff, $0d, $04, $fc, $04, $f7, $fe, $ea, $fa, $eb, $fc, $fa, $fa, $fa, $fe
    db $02, $5e, $02, $bf, $02, $7f, $9a, $ff, $fa, $ff, $f0, $ff, $f6, $7f, $50, $3f
    db $30, $1f, $11, $0f, $08, $17, $1f, $11, $1f, $34, $3f, $34, $3f, $36, $3f, $31
    db $3f, $02, $02, $02, $03, $06, $02, $82, $03, $01, $06, $02, $04, $00, $08, $02
    db $82, $e6, $fe, $02, $00, $82, $3f, $3e, $04, $3f, $02, $7f, $02, $f9, $82, $c4
    db $fc, $02, $7e, $12, $00, $84, $0c, $04, $0c, $04, $02, $0f, $84, $09, $0f, $06
    db $0e, $02, $08, $12, $00, $ff, $0d, $04, $fc, $04, $f7, $fe, $eb, $fa, $ec, $fc
    db $fb, $fc, $fb, $fd, $02, $5e, $02, $bf, $02, $7f, $9a, $ff, $fa, $ff, $f0, $ff
    db $f6, $7f, $50, $3f, $30, $1f, $11, $0f, $08, $17, $1f, $11, $1f, $14, $1f, $24
    db $3f, $2c, $3f, $24, $3f, $02, $02, $02, $03, $06, $02, $82, $03, $01, $06, $02
    db $02, $00, $0a, $02, $02, $fe, $02, $00, $84, $fe, $ce, $7e, $6e, $02, $fe, $84
    db $dd, $ff, $67, $7f, $02, $1c, $1c, $00, $02, $01, $14, $00, $ff, $0d, $04, $fc
    db $04, $f7, $fe, $ea, $fa, $eb, $fc, $fa, $fa, $fa, $ff, $02, $5e, $02, $bf, $02
    db $7f, $9a, $ff, $fa, $ff, $f0, $ff, $f6, $7f, $50, $3f, $30, $1f, $11, $0f, $08
    db $17, $1f, $21, $3f, $2c, $3f, $28, $3f, $48, $7f, $48, $7f, $02, $02, $02, $03
    db $06, $02, $82, $03, $01, $06, $02, $04, $00, $08, $02, $02, $ff, $02, $40, $84
    db $7f, $4f, $7f, $5f, $02, $3f, $02, $7f, $82, $e7, $ff, $02, $7f, $02, $01, $12
    db $00, $02, $18, $02, $10, $02, $18, $02, $1f, $84, $19, $1f, $16, $1e, $02, $18
    db $10, $00, $ff, $0d, $04, $fc, $04, $f7, $fe, $eb, $fa, $ec, $fc, $fb, $fc, $fb
    db $fe, $02, $5e, $02, $bf, $02, $7f, $9a, $ff, $fa, $ff, $f0, $ff, $f6, $7f, $50
    db $3f, $30, $1f, $11, $0f, $08, $17, $1f, $11, $1f, $14, $1f, $24, $3f, $2c, $3f
    db $24, $3f, $02, $02, $02, $03, $06, $02, $82, $03, $01, $06, $02, $02, $00, $0a
    db $02, $02, $fc, $02, $00, $84, $fe, $ce, $7e, $6e, $02, $fe, $02, $7f, $81, $18
    db $03, $1f, $1c, $00, $02, $03, $02, $02, $12, $00, $ff

    add hl, bc                                    ; $51dd: $09
    ld [bc], a                                    ; $51de: $02
    ld sp, hl                                     ; $51df: $f9
    ld [$01f2], sp                                ; $51e0: $08 $f2 $01
    ld a, [c]                                     ; $51e3: $f2
    ld a, [$fdf2]                                 ; $51e4: $fa $f2 $fd
    ld [bc], a                                    ; $51e7: $02
    db $10                                        ; $51e8: $10
    ld [bc], a                                    ; $51e9: $02
    jr @-$64                                      ; $51ea: $18 $9a

    rla                                           ; $51ec: $17
    rra                                           ; $51ed: $1f
    jr jr_0e6_520f                                ; $51ee: $18 $1f

    db $10                                        ; $51f0: $10
    rra                                           ; $51f1: $1f
    inc d                                         ; $51f2: $14
    rra                                           ; $51f3: $1f
    jr jr_0e6_5215                                ; $51f4: $18 $1f

    ld [$150f], sp                                ; $51f6: $08 $0f $15
    rra                                           ; $51f9: $1f
    db $10                                        ; $51fa: $10
    rra                                           ; $51fb: $1f
    jr nc, jr_0e6_523d                            ; $51fc: $30 $3f

    jr nz, jr_0e6_523f                            ; $51fe: $20 $3f

    ld l, b                                       ; $5200: $68
    ld a, a                                       ; $5201: $7f
    cp [hl]                                       ; $5202: $be
    rst $38                                       ; $5203: $ff
    ld d, l                                       ; $5204: $55
    ld a, a                                       ; $5205: $7f
    ld [bc], a                                    ; $5206: $02
    ccf                                           ; $5207: $3f
    ld [bc], a                                    ; $5208: $02
    ld [bc], a                                    ; $5209: $02
    ld [bc], a                                    ; $520a: $02
    ld b, $81                                     ; $520b: $06 $81
    ld [bc], a                                    ; $520d: $02
    inc bc                                        ; $520e: $03

jr_0e6_520f:
    ld b, $83                                     ; $520f: $06 $83
    ld [bc], a                                    ; $5211: $02
    ld b, $02                                     ; $5212: $06 $02
    inc bc                                        ; $5214: $03

jr_0e6_5215:
    ld b, $02                                     ; $5215: $06 $02
    inc b                                         ; $5217: $04
    adc h                                         ; $5218: $8c
    ld [bc], a                                    ; $5219: $02
    ld b, $02                                     ; $521a: $06 $02
    ld b, $03                                     ; $521c: $06 $03
    rlca                                          ; $521e: $07
    dec b                                         ; $521f: $05
    rlca                                          ; $5220: $07
    ld bc, $0507                                  ; $5221: $01 $07 $05
    rlca                                          ; $5224: $07
    ld [bc], a                                    ; $5225: $02
    ld b, $02                                     ; $5226: $06 $02
    inc b                                         ; $5228: $04
    rst $38                                       ; $5229: $ff
    rlca                                          ; $522a: $07
    ld bc, $08f9                                  ; $522b: $01 $f9 $08
    ld a, [c]                                     ; $522e: $f2
    ld bc, $fcf3                                  ; $522f: $01 $f3 $fc
    ld [bc], a                                    ; $5232: $02
    ld b, c                                       ; $5233: $41
    ld [bc], a                                    ; $5234: $02
    ld h, e                                       ; $5235: $63
    add l                                         ; $5236: $85
    ld e, l                                       ; $5237: $5d
    ld a, a                                       ; $5238: $7f
    ld h, e                                       ; $5239: $63
    ld a, a                                       ; $523a: $7f
    ld d, c                                       ; $523b: $51
    inc bc                                        ; $523c: $03

jr_0e6_523d:
    ld a, a                                       ; $523d: $7f
    adc [hl]                                      ; $523e: $8e

jr_0e6_523f:
    ld h, c                                       ; $523f: $61
    ld a, a                                       ; $5240: $7f
    ld b, c                                       ; $5241: $41
    ld a, a                                       ; $5242: $7f
    ld d, l                                       ; $5243: $55
    ld a, a                                       ; $5244: $7f
    ld d, l                                       ; $5245: $55
    ld a, a                                       ; $5246: $7f
    ld d, l                                       ; $5247: $55
    ld a, a                                       ; $5248: $7f
    dec sp                                        ; $5249: $3b
    ccf                                           ; $524a: $3f
    dec l                                         ; $524b: $2d
    ccf                                           ; $524c: $3f
    ld [bc], a                                    ; $524d: $02
    rla                                           ; $524e: $17
    ld [bc], a                                    ; $524f: $02
    ld [bc], a                                    ; $5250: $02
    ld [bc], a                                    ; $5251: $02
    nop                                           ; $5252: $00
    rst $38                                       ; $5253: $ff
    rlca                                          ; $5254: $07
    ld bc, $08f9                                  ; $5255: $01 $f9 $08
    ld a, [c]                                     ; $5258: $f2
    ld bc, $fcf3                                  ; $5259: $01 $f3 $fc
    ld [bc], a                                    ; $525c: $02
    ld b, c                                       ; $525d: $41
    ld [bc], a                                    ; $525e: $02
    ld h, e                                       ; $525f: $63
    add l                                         ; $5260: $85
    ld e, l                                       ; $5261: $5d
    ld a, a                                       ; $5262: $7f
    ld h, e                                       ; $5263: $63
    ld a, a                                       ; $5264: $7f
    ld d, c                                       ; $5265: $51
    inc bc                                        ; $5266: $03
    ld a, a                                       ; $5267: $7f
    sub b                                         ; $5268: $90
    ld h, e                                       ; $5269: $63
    ld a, a                                       ; $526a: $7f
    ld b, c                                       ; $526b: $41
    ld a, a                                       ; $526c: $7f
    ld d, l                                       ; $526d: $55
    ld a, a                                       ; $526e: $7f
    ld l, l                                       ; $526f: $6d
    ld a, a                                       ; $5270: $7f
    ld l, c                                       ; $5271: $69
    ld a, a                                       ; $5272: $7f
    dec l                                         ; $5273: $2d
    ccf                                           ; $5274: $3f
    dec [hl]                                      ; $5275: $35
    ccf                                           ; $5276: $3f
    ld a, [hl-]                                   ; $5277: $3a
    ld a, $02                                     ; $5278: $3e $02
    inc b                                         ; $527a: $04
    ld [bc], a                                    ; $527b: $02
    nop                                           ; $527c: $00
    rst $38                                       ; $527d: $ff
    rlca                                          ; $527e: $07
    ld bc, $08f9                                  ; $527f: $01 $f9 $08
    ld a, [c]                                     ; $5282: $f2
    ld bc, $fcf3                                  ; $5283: $01 $f3 $fc
    ld [bc], a                                    ; $5286: $02
    ld b, c                                       ; $5287: $41
    ld [bc], a                                    ; $5288: $02
    ld h, e                                       ; $5289: $63
    sbc b                                         ; $528a: $98
    ld e, l                                       ; $528b: $5d
    ld a, a                                       ; $528c: $7f
    ld h, e                                       ; $528d: $63
    ld a, a                                       ; $528e: $7f
    ld d, c                                       ; $528f: $51
    ld a, a                                       ; $5290: $7f
    ld a, l                                       ; $5291: $7d
    ld a, a                                       ; $5292: $7f
    ld b, e                                       ; $5293: $43
    ld a, a                                       ; $5294: $7f
    ld b, c                                       ; $5295: $41
    ld a, a                                       ; $5296: $7f
    ld d, l                                       ; $5297: $55
    ld a, a                                       ; $5298: $7f
    ld d, l                                       ; $5299: $55
    ld a, a                                       ; $529a: $7f
    ld l, c                                       ; $529b: $69
    ld a, a                                       ; $529c: $7f
    ld e, a                                       ; $529d: $5f
    ld a, a                                       ; $529e: $7f
    xor c                                         ; $529f: $a9
    rst $38                                       ; $52a0: $ff
    ld l, [hl]                                    ; $52a1: $6e
    ld a, [hl]                                    ; $52a2: $7e
    ld [bc], a                                    ; $52a3: $02
    jr nc, jr_0e6_52a8                            ; $52a4: $30 $02

    nop                                           ; $52a6: $00
    rst $38                                       ; $52a7: $ff

jr_0e6_52a8:
    rlca                                          ; $52a8: $07
    ld bc, $08f9                                  ; $52a9: $01 $f9 $08
    ld a, [c]                                     ; $52ac: $f2
    ld bc, $fcf3                                  ; $52ad: $01 $f3 $fc
    ld [bc], a                                    ; $52b0: $02
    ld b, c                                       ; $52b1: $41
    ld [bc], a                                    ; $52b2: $02
    ld h, e                                       ; $52b3: $63
    sub [hl]                                      ; $52b4: $96
    ld e, l                                       ; $52b5: $5d
    ld a, a                                       ; $52b6: $7f
    ld h, e                                       ; $52b7: $63
    ld a, a                                       ; $52b8: $7f
    ld d, c                                       ; $52b9: $51
    ld a, a                                       ; $52ba: $7f
    ld a, l                                       ; $52bb: $7d
    ld a, a                                       ; $52bc: $7f
    ld b, e                                       ; $52bd: $43
    ld a, a                                       ; $52be: $7f
    ld b, c                                       ; $52bf: $41
    ld a, a                                       ; $52c0: $7f
    ld d, l                                       ; $52c1: $55
    ld a, a                                       ; $52c2: $7f
    ld d, l                                       ; $52c3: $55
    ld a, a                                       ; $52c4: $7f
    ld d, l                                       ; $52c5: $55
    ld a, a                                       ; $52c6: $7f
    ld l, [hl]                                    ; $52c7: $6e
    ld a, [hl]                                    ; $52c8: $7e
    ld e, d                                       ; $52c9: $5a
    ld a, [hl]                                    ; $52ca: $7e
    ld [bc], a                                    ; $52cb: $02
    ld [hl], h                                    ; $52cc: $74
    ld [bc], a                                    ; $52cd: $02
    jr nz, jr_0e6_52d2                            ; $52ce: $20 $02

    nop                                           ; $52d0: $00
    rst $38                                       ; $52d1: $ff

jr_0e6_52d2:
    rlca                                          ; $52d2: $07
    ld bc, $08f9                                  ; $52d3: $01 $f9 $08
    ld a, [c]                                     ; $52d6: $f2
    ld bc, $fcf3                                  ; $52d7: $01 $f3 $fc
    ld [bc], a                                    ; $52da: $02
    ld b, c                                       ; $52db: $41
    ld [bc], a                                    ; $52dc: $02
    ld h, e                                       ; $52dd: $63
    sbc b                                         ; $52de: $98
    ld e, l                                       ; $52df: $5d
    ld a, a                                       ; $52e0: $7f
    ld h, e                                       ; $52e1: $63
    ld a, a                                       ; $52e2: $7f
    ld d, c                                       ; $52e3: $51
    ld a, a                                       ; $52e4: $7f
    ld a, l                                       ; $52e5: $7d
    ld a, a                                       ; $52e6: $7f

jr_0e6_52e7:
    ld h, e                                       ; $52e7: $63
    ld a, a                                       ; $52e8: $7f
    ld b, c                                       ; $52e9: $41
    ld a, a                                       ; $52ea: $7f
    ld d, l                                       ; $52eb: $55
    ld a, a                                       ; $52ec: $7f
    ld d, l                                       ; $52ed: $55
    ld a, a                                       ; $52ee: $7f
    ld c, e                                       ; $52ef: $4b
    ld a, a                                       ; $52f0: $7f
    ld e, d                                       ; $52f1: $5a
    ld a, [hl]                                    ; $52f2: $7e
    ld d, [hl]                                    ; $52f3: $56
    ld a, [hl]                                    ; $52f4: $7e
    ld l, $3e                                     ; $52f5: $2e $3e
    ld [bc], a                                    ; $52f7: $02
    db $10                                        ; $52f8: $10
    ld [bc], a                                    ; $52f9: $02
    nop                                           ; $52fa: $00
    rst $38                                       ; $52fb: $ff
    rlca                                          ; $52fc: $07
    ld bc, $08f9                                  ; $52fd: $01 $f9 $08
    ld a, [c]                                     ; $5300: $f2
    ld bc, $fcf3                                  ; $5301: $01 $f3 $fc
    ld [bc], a                                    ; $5304: $02
    ld b, c                                       ; $5305: $41
    ld [bc], a                                    ; $5306: $02
    ld h, e                                       ; $5307: $63
    add l                                         ; $5308: $85
    ld e, l                                       ; $5309: $5d
    ld a, a                                       ; $530a: $7f
    ld h, e                                       ; $530b: $63
    ld a, a                                       ; $530c: $7f
    ld d, c                                       ; $530d: $51
    inc bc                                        ; $530e: $03

Call_0e6_530f:
    ld a, a                                       ; $530f: $7f
    sub b                                         ; $5310: $90
    ld h, c                                       ; $5311: $61

jr_0e6_5312:
    ld a, a                                       ; $5312: $7f
    ld b, c                                       ; $5313: $41
    ld a, a                                       ; $5314: $7f
    ld d, l                                       ; $5315: $55
    ld a, a                                       ; $5316: $7f
    ld d, e                                       ; $5317: $53
    ld a, a                                       ; $5318: $7f
    ld c, l                                       ; $5319: $4d
    ld a, a                                       ; $531a: $7f
    ld a, l                                       ; $531b: $7d
    ld a, a                                       ; $531c: $7f
    ld c, d                                       ; $531d: $4a
    ld a, [hl]                                    ; $531e: $7e
    ld a, [hl-]                                   ; $531f: $3a
    ld a, $02                                     ; $5320: $3e $02
    ld b, $02                                     ; $5322: $06 $02
    nop                                           ; $5324: $00
    rst $38                                       ; $5325: $ff
    add hl, bc                                    ; $5326: $09
    ld [bc], a                                    ; $5327: $02
    ld sp, hl                                     ; $5328: $f9
    ld [$01f2], sp                                ; $5329: $08 $f2 $01
    ld a, [c]                                     ; $532c: $f2
    db $fc                                        ; $532d: $fc
    ld a, [c]                                     ; $532e: $f2
    db $fd                                        ; $532f: $fd
    ld [bc], a                                    ; $5330: $02
    ld b, c                                       ; $5331: $41
    ld [bc], a                                    ; $5332: $02
    ld h, e                                       ; $5333: $63
    sbc d                                         ; $5334: $9a
    ld e, l                                       ; $5335: $5d
    ld a, a                                       ; $5336: $7f
    ld [hl+], a                                   ; $5337: $22
    ld a, $55                                     ; $5338: $3e $55
    ld a, a                                       ; $533a: $7f
    ld c, c                                       ; $533b: $49
    ld a, a                                       ; $533c: $7f
    ld l, e                                       ; $533d: $6b
    ld a, a                                       ; $533e: $7f
    ld [hl], $3e                                  ; $533f: $36 $3e
    ld h, c                                       ; $5341: $61
    ld a, a                                       ; $5342: $7f
    ld b, c                                       ; $5343: $41
    ld a, a                                       ; $5344: $7f
    push de                                       ; $5345: $d5
    rst $38                                       ; $5346: $ff
    ret                                           ; $5347: $c9


    rst $38                                       ; $5348: $ff
    xor d                                         ; $5349: $aa
    rst $38                                       ; $534a: $ff
    ld l, e                                       ; $534b: $6b
    ld a, a                                       ; $534c: $7f
    ld a, [hl+]                                   ; $534d: $2a
    ld a, $02                                     ; $534e: $3e $02
    ld [hl], $14                                  ; $5350: $36 $14
    nop                                           ; $5352: $00
    ld b, $01                                     ; $5353: $06 $01
    ld b, $00                                     ; $5355: $06 $00
    rst $38                                       ; $5357: $ff
    rlca                                          ; $5358: $07
    ld bc, $08f9                                  ; $5359: $01 $f9 $08
    ld a, [c]                                     ; $535c: $f2
    ld bc, $fcf3                                  ; $535d: $01 $f3 $fc
    ld [bc], a                                    ; $5360: $02
    jr c, jr_0e6_52e7                             ; $5361: $38 $84

    inc h                                         ; $5363: $24
    inc a                                         ; $5364: $3c
    inc d                                         ; $5365: $14
    inc e                                         ; $5366: $1c
    ld [bc], a                                    ; $5367: $02
    ld a, l                                       ; $5368: $7d
    sub h                                         ; $5369: $94
    ld h, e                                       ; $536a: $63
    ld a, a                                       ; $536b: $7f
    ld e, l                                       ; $536c: $5d
    ld a, a                                       ; $536d: $7f
    ld h, e                                       ; $536e: $63
    ld a, a                                       ; $536f: $7f
    ld d, l                                       ; $5370: $55
    ld a, a                                       ; $5371: $7f
    ld c, c                                       ; $5372: $49
    ld a, a                                       ; $5373: $7f
    ld l, e                                       ; $5374: $6b
    ld a, a                                       ; $5375: $7f
    ld [hl], l                                    ; $5376: $75
    ld a, a                                       ; $5377: $7f
    ld e, l                                       ; $5378: $5d
    ld a, a                                       ; $5379: $7f
    ld c, d                                       ; $537a: $4a
    ld a, [hl]                                    ; $537b: $7e
    ld l, $3e                                     ; $537c: $2e $3e
    ld [bc], a                                    ; $537e: $02
    jr nc, jr_0e6_5383                            ; $537f: $30 $02

    nop                                           ; $5381: $00
    rst $38                                       ; $5382: $ff

jr_0e6_5383:
    rlca                                          ; $5383: $07
    ld bc, $08f9                                  ; $5384: $01 $f9 $08
    ld a, [c]                                     ; $5387: $f2
    ld bc, $fcf3                                  ; $5388: $01 $f3 $fc
    ld [bc], a                                    ; $538b: $02
    jr jr_0e6_5312                                ; $538c: $18 $84

    inc d                                         ; $538e: $14
    inc e                                         ; $538f: $1c
    inc d                                         ; $5390: $14
    inc e                                         ; $5391: $1c
    ld [bc], a                                    ; $5392: $02

jr_0e6_5393:
    ld a, l                                       ; $5393: $7d
    sub h                                         ; $5394: $94
    ld h, e                                       ; $5395: $63
    ld a, a                                       ; $5396: $7f
    ld e, l                                       ; $5397: $5d
    ld a, a                                       ; $5398: $7f
    ld h, e                                       ; $5399: $63
    ld a, a                                       ; $539a: $7f
    ld d, l                                       ; $539b: $55
    ld a, a                                       ; $539c: $7f
    ld c, c                                       ; $539d: $49
    ld a, a                                       ; $539e: $7f
    ld l, e                                       ; $539f: $6b
    ld a, a                                       ; $53a0: $7f
    ld [hl], l                                    ; $53a1: $75
    ld a, a                                       ; $53a2: $7f
    ld e, l                                       ; $53a3: $5d
    ld a, a                                       ; $53a4: $7f
    add hl, hl                                    ; $53a5: $29
    ccf                                           ; $53a6: $3f
    ld l, $3e                                     ; $53a7: $2e $3e
    ld [bc], a                                    ; $53a9: $02
    db $10                                        ; $53aa: $10
    ld [bc], a                                    ; $53ab: $02
    nop                                           ; $53ac: $00
    rst $38                                       ; $53ad: $ff
    rlca                                          ; $53ae: $07
    ld bc, $08f9                                  ; $53af: $01 $f9 $08
    ld a, [c]                                     ; $53b2: $f2
    ld bc, $fcf3                                  ; $53b3: $01 $f3 $fc
    ld [bc], a                                    ; $53b6: $02
    inc c                                         ; $53b7: $0c
    add h                                         ; $53b8: $84
    ld a, [bc]                                    ; $53b9: $0a
    ld c, $14                                     ; $53ba: $0e $14
    inc e                                         ; $53bc: $1c
    ld [bc], a                                    ; $53bd: $02
    ld e, l                                       ; $53be: $5d
    sub h                                         ; $53bf: $94
    ld h, e                                       ; $53c0: $63
    ld a, a                                       ; $53c1: $7f
    ld e, l                                       ; $53c2: $5d
    ld a, a                                       ; $53c3: $7f
    ld h, e                                       ; $53c4: $63
    ld a, a                                       ; $53c5: $7f
    ld d, l                                       ; $53c6: $55
    ld a, a                                       ; $53c7: $7f
    ld c, c                                       ; $53c8: $49
    ld a, a                                       ; $53c9: $7f
    ld l, e                                       ; $53ca: $6b
    ld a, a                                       ; $53cb: $7f
    ld [hl], l                                    ; $53cc: $75
    ld a, a                                       ; $53cd: $7f
    dec l                                         ; $53ce: $2d
    ccf                                           ; $53cf: $3f
    dec l                                         ; $53d0: $2d
    ccf                                           ; $53d1: $3f
    dec [hl]                                      ; $53d2: $35
    scf                                           ; $53d3: $37
    ld [bc], a                                    ; $53d4: $02
    ld [bc], a                                    ; $53d5: $02
    ld [bc], a                                    ; $53d6: $02
    nop                                           ; $53d7: $00
    rst $38                                       ; $53d8: $ff
    rlca                                          ; $53d9: $07
    ld bc, $08f9                                  ; $53da: $01 $f9 $08
    ld a, [c]                                     ; $53dd: $f2
    ld bc, $fcf3                                  ; $53de: $01 $f3 $fc
    ld [bc], a                                    ; $53e1: $02
    ld c, $84                                     ; $53e2: $0e $84
    ld [de], a                                    ; $53e4: $12
    ld e, $14                                     ; $53e5: $1e $14
    inc e                                         ; $53e7: $1c
    ld [bc], a                                    ; $53e8: $02
    ld e, a                                       ; $53e9: $5f
    sub h                                         ; $53ea: $94
    ld h, e                                       ; $53eb: $63
    ld a, a                                       ; $53ec: $7f
    ld e, l                                       ; $53ed: $5d
    ld a, a                                       ; $53ee: $7f
    ld h, e                                       ; $53ef: $63
    ld a, a                                       ; $53f0: $7f
    ld d, l                                       ; $53f1: $55
    ld a, a                                       ; $53f2: $7f
    ld c, c                                       ; $53f3: $49
    ld a, a                                       ; $53f4: $7f
    ld l, e                                       ; $53f5: $6b
    ld a, a                                       ; $53f6: $7f
    ld [hl], l                                    ; $53f7: $75
    ld a, a                                       ; $53f8: $7f
    ld e, l                                       ; $53f9: $5d
    ld a, a                                       ; $53fa: $7f
    add hl, hl                                    ; $53fb: $29
    ccf                                           ; $53fc: $3f
    ld a, [hl-]                                   ; $53fd: $3a
    ld a, $02                                     ; $53fe: $3e $02
    ld b, $02                                     ; $5400: $06 $02
    nop                                           ; $5402: $00
    rst $38                                       ; $5403: $ff
    rlca                                          ; $5404: $07
    ld bc, $08f9                                  ; $5405: $01 $f9 $08
    ld a, [c]                                     ; $5408: $f2
    ld bc, $fcf3                                  ; $5409: $01 $f3 $fc
    ld [bc], a                                    ; $540c: $02
    jr jr_0e6_5393                                ; $540d: $18 $84

    jr z, jr_0e6_5449                             ; $540f: $28 $38

    inc h                                         ; $5411: $24
    inc a                                         ; $5412: $3c
    ld [bc], a                                    ; $5413: $02
    ld e, a                                       ; $5414: $5f
    sub h                                         ; $5415: $94
    ld h, e                                       ; $5416: $63
    ld a, a                                       ; $5417: $7f
    ld e, l                                       ; $5418: $5d
    ld a, a                                       ; $5419: $7f
    ld h, e                                       ; $541a: $63
    ld a, a                                       ; $541b: $7f
    ld d, l                                       ; $541c: $55
    ld a, a                                       ; $541d: $7f
    ld c, c                                       ; $541e: $49
    ld a, a                                       ; $541f: $7f
    ld l, e                                       ; $5420: $6b
    ld a, a                                       ; $5421: $7f
    ld [hl], l                                    ; $5422: $75
    ld a, a                                       ; $5423: $7f
    ld e, l                                       ; $5424: $5d
    ld a, a                                       ; $5425: $7f
    ld c, d                                       ; $5426: $4a
    ld a, [hl]                                    ; $5427: $7e
    ld a, [hl-]                                   ; $5428: $3a
    ld a, $02                                     ; $5429: $3e $02
    inc b                                         ; $542b: $04
    ld [bc], a                                    ; $542c: $02
    nop                                           ; $542d: $00
    rst $38                                       ; $542e: $ff
    rlca                                          ; $542f: $07
    ld bc, $08f9                                  ; $5430: $01 $f9 $08
    ld a, [c]                                     ; $5433: $f2
    ld bc, $fcf3                                  ; $5434: $01 $f3 $fc
    ld [bc], a                                    ; $5437: $02
    ld [hl], b                                    ; $5438: $70
    add h                                         ; $5439: $84
    ld c, b                                       ; $543a: $48
    ld a, b                                       ; $543b: $78
    inc [hl]                                      ; $543c: $34
    inc a                                         ; $543d: $3c
    ld [bc], a                                    ; $543e: $02
    ld e, l                                       ; $543f: $5d
    sub h                                         ; $5440: $94
    ld h, e                                       ; $5441: $63
    ld a, a                                       ; $5442: $7f
    ld e, l                                       ; $5443: $5d
    ld a, a                                       ; $5444: $7f
    ld h, e                                       ; $5445: $63
    ld a, a                                       ; $5446: $7f
    ld d, l                                       ; $5447: $55
    ld a, a                                       ; $5448: $7f

jr_0e6_5449:
    ld c, c                                       ; $5449: $49
    ld a, a                                       ; $544a: $7f
    ld l, e                                       ; $544b: $6b
    ld a, a                                       ; $544c: $7f
    ld [hl], l                                    ; $544d: $75
    ld a, a                                       ; $544e: $7f
    ld e, d                                       ; $544f: $5a
    ld a, [hl]                                    ; $5450: $7e
    ld e, d                                       ; $5451: $5a
    ld a, [hl]                                    ; $5452: $7e
    ld d, [hl]                                    ; $5453: $56
    halt                                          ; $5454: $76
    ld [bc], a                                    ; $5455: $02
    jr nz, jr_0e6_545a                            ; $5456: $20 $02

    nop                                           ; $5458: $00
    rst $38                                       ; $5459: $ff

jr_0e6_545a:
    add hl, bc                                    ; $545a: $09
    ld [bc], a                                    ; $545b: $02
    ld sp, hl                                     ; $545c: $f9
    ld [$01f2], sp                                ; $545d: $08 $f2 $01
    di                                            ; $5460: $f3
    ld a, [$00f3]                                 ; $5461: $fa $f3 $00
    ld [$0200], sp                                ; $5464: $08 $00 $02
    ld bc, $0292                                  ; $5467: $01 $92 $02
    inc bc                                        ; $546a: $03
    ld [bc], a                                    ; $546b: $02
    inc bc                                        ; $546c: $03
    inc b                                         ; $546d: $04
    rlca                                          ; $546e: $07
    ld [$150f], sp                                ; $546f: $08 $0f $15
    rra                                           ; $5472: $1f
    db $10                                        ; $5473: $10
    rra                                           ; $5474: $1f
    ld [hl], b                                    ; $5475: $70
    ld a, a                                       ; $5476: $7f
    cp e                                          ; $5477: $bb
    rst $38                                       ; $5478: $ff
    sub h                                         ; $5479: $94
    rst $38                                       ; $547a: $ff
    ld [bc], a                                    ; $547b: $02
    ld a, a                                       ; $547c: $7f
    ld [bc], a                                    ; $547d: $02
    nop                                           ; $547e: $00
    ld [bc], a                                    ; $547f: $02
    ld [$1802], sp                                ; $5480: $08 $02 $18
    sbc b                                         ; $5483: $98
    inc l                                         ; $5484: $2c
    inc a                                         ; $5485: $3c
    ld [hl+], a                                   ; $5486: $22
    ld a, $15                                     ; $5487: $3e $15
    ccf                                           ; $5489: $3f
    ld hl, $123f                                  ; $548a: $21 $3f $12
    ld a, $0c                                     ; $548d: $3e $0c
    inc a                                         ; $548f: $3c
    inc b                                         ; $5490: $04
    inc a                                         ; $5491: $3c
    inc b                                         ; $5492: $04
    inc a                                         ; $5493: $3c
    inc h                                         ; $5494: $24
    inc a                                         ; $5495: $3c
    jr z, jr_0e6_54d0                             ; $5496: $28 $38

    inc l                                         ; $5498: $2c
    inc a                                         ; $5499: $3c
    inc [hl]                                      ; $549a: $34
    inc a                                         ; $549b: $3c
    ld [bc], a                                    ; $549c: $02
    jr jr_0e6_54a1                                ; $549d: $18 $02

    nop                                           ; $549f: $00
    rst $38                                       ; $54a0: $ff

jr_0e6_54a1:
    add hl, bc                                    ; $54a1: $09
    ld [bc], a                                    ; $54a2: $02
    ld sp, hl                                     ; $54a3: $f9
    ld [$01f2], sp                                ; $54a4: $08 $f2 $01
    db $f4                                        ; $54a7: $f4
    ld sp, hl                                     ; $54a8: $f9
    db $f4                                        ; $54a9: $f4
    ld bc, $000a                                  ; $54aa: $01 $0a $00
    ld [bc], a                                    ; $54ad: $02
    ccf                                           ; $54ae: $3f
    adc [hl]                                      ; $54af: $8e
    ld b, b                                       ; $54b0: $40
    ld a, a                                       ; $54b1: $7f
    or b                                          ; $54b2: $b0
    rst $38                                       ; $54b3: $ff
    ldh [rIE], a                                  ; $54b4: $e0 $ff
    ld h, d                                       ; $54b6: $62
    ld a, a                                       ; $54b7: $7f
    ld c, a                                       ; $54b8: $4f
    ld a, a                                       ; $54b9: $7f
    ld e, d                                       ; $54ba: $5a
    ld a, [hl]                                    ; $54bb: $7e
    and [hl]                                      ; $54bc: $a6
    and $02                                       ; $54bd: $e6 $02
    ld h, b                                       ; $54bf: $60
    inc b                                         ; $54c0: $04
    nop                                           ; $54c1: $00
    ld [bc], a                                    ; $54c2: $02
    ld [$1802], sp                                ; $54c3: $08 $02 $18
    sub [hl]                                      ; $54c6: $96
    inc l                                         ; $54c7: $2c
    inc a                                         ; $54c8: $3c
    ld [hl+], a                                   ; $54c9: $22
    ld a, $d5                                     ; $54ca: $3e $d5
    rst $38                                       ; $54cc: $ff
    ld hl, $12ff                                  ; $54cd: $21 $ff $12

jr_0e6_54d0:
    cp $0c                                        ; $54d0: $fe $0c
    db $fc                                        ; $54d2: $fc
    ld [$48f8], sp                                ; $54d3: $08 $f8 $48
    ld hl, sp-$38                                 ; $54d6: $f8 $c8
    ld hl, sp-$58                                 ; $54d8: $f8 $a8
    ld hl, sp+$74                                 ; $54da: $f8 $74
    ld a, h                                       ; $54dc: $7c
    ld [bc], a                                    ; $54dd: $02
    ld [$0004], sp                                ; $54de: $08 $04 $00
    rst $38                                       ; $54e1: $ff
    add hl, bc                                    ; $54e2: $09
    ld [bc], a                                    ; $54e3: $02
    ld sp, hl                                     ; $54e4: $f9
    ld [$01f2], sp                                ; $54e5: $08 $f2 $01
    db $f4                                        ; $54e8: $f4
    ld sp, hl                                     ; $54e9: $f9
    db $f4                                        ; $54ea: $f4
    ld bc, $000a                                  ; $54eb: $01 $0a $00
    ld [bc], a                                    ; $54ee: $02
    ld a, a                                       ; $54ef: $7f
    adc h                                         ; $54f0: $8c
    add b                                         ; $54f1: $80
    rst $38                                       ; $54f2: $ff
    ldh a, [rIE]                                  ; $54f3: $f0 $ff
    db $10                                        ; $54f5: $10
    rra                                           ; $54f6: $1f
    inc hl                                        ; $54f7: $23
    ccf                                           ; $54f8: $3f
    cpl                                           ; $54f9: $2f
    ccf                                           ; $54fa: $3f
    inc l                                         ; $54fb: $2c
    inc a                                         ; $54fc: $3c
    ld [bc], a                                    ; $54fd: $02
    jr c, jr_0e6_5506                             ; $54fe: $38 $06

    nop                                           ; $5500: $00
    ld [bc], a                                    ; $5501: $02
    ld [$1802], sp                                ; $5502: $08 $02 $18
    sub [hl]                                      ; $5505: $96

jr_0e6_5506:
    inc l                                         ; $5506: $2c
    inc a                                         ; $5507: $3c
    ld [hl+], a                                   ; $5508: $22
    ld a, $d5                                     ; $5509: $3e $d5
    rst $38                                       ; $550b: $ff
    ld hl, $12ff                                  ; $550c: $21 $ff $12
    cp $0c                                        ; $550f: $fe $0c
    db $fc                                        ; $5511: $fc
    ld [$48f8], sp                                ; $5512: $08 $f8 $48
    ld hl, sp-$28                                 ; $5515: $f8 $d8
    ld hl, sp+$28                                 ; $5517: $f8 $28
    jr c, @+$2a                                   ; $5519: $38 $28

    jr c, jr_0e6_551f                             ; $551b: $38 $02

    jr jr_0e6_5523                                ; $551d: $18 $04

jr_0e6_551f:
    nop                                           ; $551f: $00
    rst $38                                       ; $5520: $ff
    add hl, bc                                    ; $5521: $09
    ld [bc], a                                    ; $5522: $02

jr_0e6_5523:
    ld sp, hl                                     ; $5523: $f9
    ld [$01f2], sp                                ; $5524: $08 $f2 $01
    db $f4                                        ; $5527: $f4
    ld sp, hl                                     ; $5528: $f9
    db $f4                                        ; $5529: $f4
    ld bc, $0008                                  ; $552a: $01 $08 $00
    ld [bc], a                                    ; $552d: $02
    ld b, c                                       ; $552e: $41
    adc l                                         ; $552f: $8d
    cp a                                          ; $5530: $bf
    rst $38                                       ; $5531: $ff
    ld b, b                                       ; $5532: $40
    ld a, a                                       ; $5533: $7f
    jr nc, jr_0e6_5575                            ; $5534: $30 $3f

    ld sp, $213f                                  ; $5536: $31 $3f $21
    ccf                                           ; $5539: $3f
    scf                                           ; $553a: $37
    ccf                                           ; $553b: $3f
    inc [hl]                                      ; $553c: $34
    inc bc                                        ; $553d: $03
    inc a                                         ; $553e: $3c
    ld b, $00                                     ; $553f: $06 $00
    ld [bc], a                                    ; $5541: $02
    ld [$1802], sp                                ; $5542: $08 $02 $18
    sub [hl]                                      ; $5545: $96
    inc l                                         ; $5546: $2c
    inc a                                         ; $5547: $3c
    ld [hl+], a                                   ; $5548: $22
    ld a, $d5                                     ; $5549: $3e $d5
    rst $38                                       ; $554b: $ff
    ld hl, $12ff                                  ; $554c: $21 $ff $12
    cp $0c                                        ; $554f: $fe $0c
    db $fc                                        ; $5551: $fc
    ld [$8cf8], sp                                ; $5552: $08 $f8 $8c
    db $fc                                        ; $5555: $fc
    call nc, Call_0e6_58fc                        ; $5556: $d4 $fc $58
    ld a, b                                       ; $5559: $78
    ld d, b                                       ; $555a: $50
    ld [hl], b                                    ; $555b: $70
    ld [bc], a                                    ; $555c: $02
    jr nc, jr_0e6_5563                            ; $555d: $30 $04

    nop                                           ; $555f: $00
    rst $38                                       ; $5560: $ff
    add hl, bc                                    ; $5561: $09
    ld [bc], a                                    ; $5562: $02

jr_0e6_5563:
    ld sp, hl                                     ; $5563: $f9
    ld [$01f2], sp                                ; $5564: $08 $f2 $01
    db $f4                                        ; $5567: $f4
    ld sp, hl                                     ; $5568: $f9
    db $f4                                        ; $5569: $f4
    ld bc, $0008                                  ; $556a: $01 $08 $00
    ld [bc], a                                    ; $556d: $02
    ld bc, $fe90                                  ; $556e: $01 $90 $fe
    rst $38                                       ; $5571: $ff
    add b                                         ; $5572: $80
    rst $38                                       ; $5573: $ff
    ld [hl], b                                    ; $5574: $70

jr_0e6_5575:
    ld a, a                                       ; $5575: $7f
    ld sp, $713f                                  ; $5576: $31 $3f $71
    ld a, a                                       ; $5579: $7f
    ld d, e                                       ; $557a: $53
    ld a, a                                       ; $557b: $7f
    xor d                                         ; $557c: $aa
    xor $6a                                       ; $557d: $ee $6a
    ld l, [hl]                                    ; $557f: $6e
    ld [bc], a                                    ; $5580: $02
    ld b, $04                                     ; $5581: $06 $04
    nop                                           ; $5583: $00
    ld [bc], a                                    ; $5584: $02
    ld [$1802], sp                                ; $5585: $08 $02 $18
    sub [hl]                                      ; $5588: $96
    inc l                                         ; $5589: $2c
    inc a                                         ; $558a: $3c
    ld [hl+], a                                   ; $558b: $22
    ld a, $d5                                     ; $558c: $3e $d5
    rst $38                                       ; $558e: $ff
    ld hl, $12ff                                  ; $558f: $21 $ff $12
    cp $0c                                        ; $5592: $fe $0c
    db $fc                                        ; $5594: $fc
    ld [$90f8], sp                                ; $5595: $08 $f8 $90
    ldh a, [$98]                                  ; $5598: $f0 $98
    ld hl, sp+$54                                 ; $559a: $f8 $54
    ld a, h                                       ; $559c: $7c
    cp b                                          ; $559d: $b8
    ld hl, sp+$02                                 ; $559e: $f8 $02
    ld h, b                                       ; $55a0: $60
    inc b                                         ; $55a1: $04
    nop                                           ; $55a2: $00
    rst $38                                       ; $55a3: $ff
    add hl, bc                                    ; $55a4: $09
    ld [bc], a                                    ; $55a5: $02
    ld sp, hl                                     ; $55a6: $f9
    ld [$01f2], sp                                ; $55a7: $08 $f2 $01
    db $f4                                        ; $55aa: $f4
    ld sp, hl                                     ; $55ab: $f9
    db $f4                                        ; $55ac: $f4
    ld bc, $0008                                  ; $55ad: $01 $08 $00
    ld [bc], a                                    ; $55b0: $02
    ld bc, $1e90                                  ; $55b1: $01 $90 $1e
    rra                                           ; $55b4: $1f
    ld h, b                                       ; $55b5: $60
    ld a, a                                       ; $55b6: $7f
    sub b                                         ; $55b7: $90
    rst $38                                       ; $55b8: $ff
    pop af                                        ; $55b9: $f1
    rst $38                                       ; $55ba: $ff
    ld [hl-], a                                   ; $55bb: $32
    ccf                                           ; $55bc: $3f
    daa                                           ; $55bd: $27
    ccf                                           ; $55be: $3f
    inc l                                         ; $55bf: $2c
    inc a                                         ; $55c0: $3c
    inc d                                         ; $55c1: $14
    inc e                                         ; $55c2: $1c
    ld [bc], a                                    ; $55c3: $02
    jr @+$06                                      ; $55c4: $18 $04

    nop                                           ; $55c6: $00
    ld [bc], a                                    ; $55c7: $02
    ld [$1802], sp                                ; $55c8: $08 $02 $18
    sub h                                         ; $55cb: $94
    inc l                                         ; $55cc: $2c
    inc a                                         ; $55cd: $3c
    ld [hl+], a                                   ; $55ce: $22
    ld a, $d5                                     ; $55cf: $3e $d5
    rst $38                                       ; $55d1: $ff
    ld hl, $12ff                                  ; $55d2: $21 $ff $12
    cp $0c                                        ; $55d5: $fe $0c
    db $fc                                        ; $55d7: $fc
    ld [$98f8], sp                                ; $55d8: $08 $f8 $98
    ld hl, sp-$38                                 ; $55db: $f8 $c8
    ld hl, sp+$28                                 ; $55dd: $f8 $28
    jr c, jr_0e6_55e3                             ; $55df: $38 $02

    jr jr_0e6_55e5                                ; $55e1: $18 $02

jr_0e6_55e3:
    db $10                                        ; $55e3: $10
    inc b                                         ; $55e4: $04

jr_0e6_55e5:
    nop                                           ; $55e5: $00
    rst $38                                       ; $55e6: $ff
    add hl, bc                                    ; $55e7: $09
    ld [bc], a                                    ; $55e8: $02
    ld sp, hl                                     ; $55e9: $f9
    ld [$01f2], sp                                ; $55ea: $08 $f2 $01
    db $f4                                        ; $55ed: $f4
    ld sp, hl                                     ; $55ee: $f9
    db $f4                                        ; $55ef: $f4
    ld bc, $0008                                  ; $55f0: $01 $08 $00
    ld [bc], a                                    ; $55f3: $02
    ld bc, $1f02                                  ; $55f4: $01 $02 $1f
    adc [hl]                                      ; $55f7: $8e
    jr nz, jr_0e6_5639                            ; $55f8: $20 $3f

    ld d, b                                       ; $55fa: $50
    ld a, a                                       ; $55fb: $7f
    or b                                          ; $55fc: $b0
    rst $38                                       ; $55fd: $ff
    ld [hl], d                                    ; $55fe: $72
    ld a, a                                       ; $55ff: $7f
    daa                                           ; $5600: $27
    ccf                                           ; $5601: $3f
    inc l                                         ; $5602: $2c
    inc a                                         ; $5603: $3c
    jr z, jr_0e6_563e                             ; $5604: $28 $38

    ld [bc], a                                    ; $5606: $02
    jr nc, @+$06                                  ; $5607: $30 $04

    nop                                           ; $5609: $00
    ld [bc], a                                    ; $560a: $02
    ld [$1802], sp                                ; $560b: $08 $02 $18
    sub h                                         ; $560e: $94
    inc l                                         ; $560f: $2c
    inc a                                         ; $5610: $3c
    ld [hl+], a                                   ; $5611: $22
    ld a, $d5                                     ; $5612: $3e $d5
    rst $38                                       ; $5614: $ff
    ld hl, $12ff                                  ; $5615: $21 $ff $12
    cp $0c                                        ; $5618: $fe $0c
    db $fc                                        ; $561a: $fc
    ld [$48f8], sp                                ; $561b: $08 $f8 $48
    ld hl, sp-$1c                                 ; $561e: $f8 $e4
    db $fc                                        ; $5620: $fc
    ld d, h                                       ; $5621: $54
    ld a, h                                       ; $5622: $7c
    ld [bc], a                                    ; $5623: $02
    jr c, jr_0e6_562c                             ; $5624: $38 $06

    nop                                           ; $5626: $00
    rst $38                                       ; $5627: $ff
    add hl, bc                                    ; $5628: $09
    ld [bc], a                                    ; $5629: $02
    ld hl, sp+$07                                 ; $562a: $f8 $07

jr_0e6_562c:
    ld a, [c]                                     ; $562c: $f2
    ld bc, $f9f6                                  ; $562d: $01 $f6 $f9
    or $ff                                        ; $5630: $f6 $ff
    ld [bc], a                                    ; $5632: $02
    ld [bc], a                                    ; $5633: $02
    sub h                                         ; $5634: $94
    dec b                                         ; $5635: $05
    rlca                                          ; $5636: $07
    inc b                                         ; $5637: $04
    rlca                                          ; $5638: $07

jr_0e6_5639:
    ld e, $1f                                     ; $5639: $1e $1f
    ld hl, $403f                                  ; $563b: $21 $3f $40

jr_0e6_563e:
    ld a, a                                       ; $563e: $7f
    ld e, b                                       ; $563f: $58
    ld a, a                                       ; $5640: $7f
    add h                                         ; $5641: $84
    rst $38                                       ; $5642: $ff
    add $ff                                       ; $5643: $c6 $ff
    cp a                                          ; $5645: $bf
    rst $38                                       ; $5646: $ff
    ld h, a                                       ; $5647: $67
    ld a, a                                       ; $5648: $7f
    ld [bc], a                                    ; $5649: $02
    inc e                                         ; $564a: $1c
    ld a, [bc]                                    ; $564b: $0a
    nop                                           ; $564c: $00
    ld [bc], a                                    ; $564d: $02
    inc c                                         ; $564e: $0c
    sub d                                         ; $564f: $92
    ld a, [hl+]                                   ; $5650: $2a
    ld l, $1a                                     ; $5651: $2e $1a
    ld a, $2a                                     ; $5653: $3e $2a
    ld a, $36                                     ; $5655: $3e $36
    ld a, $32                                     ; $5657: $3e $32
    ld a, $23                                     ; $5659: $3e $23
    dec a                                         ; $565b: $3d
    ld hl, $163f                                  ; $565c: $21 $3f $16
    ld a, $0a                                     ; $565f: $3e $0a
    ld a, $02                                     ; $5661: $3e $02
    inc [hl]                                      ; $5663: $34
    ld [$ff00], sp                                ; $5664: $08 $00 $ff
    add hl, bc                                    ; $5667: $09
    ld [bc], a                                    ; $5668: $02
    ld hl, sp+$07                                 ; $5669: $f8 $07
    ld a, [c]                                     ; $566b: $f2
    ld bc, $f9f5                                  ; $566c: $01 $f5 $f9
    push af                                       ; $566f: $f5
    nop                                           ; $5670: $00
    ld [bc], a                                    ; $5671: $02
    ld bc, $0284                                  ; $5672: $01 $84 $02
    inc bc                                        ; $5675: $03
    ld [bc], a                                    ; $5676: $02
    inc bc                                        ; $5677: $03
    ld [bc], a                                    ; $5678: $02
    ld bc, $0f02                                  ; $5679: $01 $02 $0f
    adc [hl]                                      ; $567c: $8e
    db $10                                        ; $567d: $10
    rra                                           ; $567e: $1f
    jr nz, jr_0e6_56c0                            ; $567f: $20 $3f

    inc h                                         ; $5681: $24
    ccf                                           ; $5682: $3f
    ld b, d                                       ; $5683: $42
    ld a, a                                       ; $5684: $7f
    and a                                         ; $5685: $a7
    rst $38                                       ; $5686: $ff
    ld e, a                                       ; $5687: $5f
    ld a, a                                       ; $5688: $7f
    daa                                           ; $5689: $27
    ccf                                           ; $568a: $3f
    ld [bc], a                                    ; $568b: $02
    jr jr_0e6_5696                                ; $568c: $18 $08

    nop                                           ; $568e: $00
    ld [bc], a                                    ; $568f: $02
    ld c, h                                       ; $5690: $4c
    sub h                                         ; $5691: $94
    ld a, [hl+]                                   ; $5692: $2a
    ld l, [hl]                                    ; $5693: $6e
    ld a, [de]                                    ; $5694: $1a
    ld a, [hl]                                    ; $5695: $7e

jr_0e6_5696:
    ld l, d                                       ; $5696: $6a
    ld a, [hl]                                    ; $5697: $7e
    halt                                          ; $5698: $76
    ld a, [hl]                                    ; $5699: $7e
    ld [hl-], a                                   ; $569a: $32
    ld a, [hl]                                    ; $569b: $7e
    inc hl                                        ; $569c: $23
    ld a, l                                       ; $569d: $7d
    ld hl, $167f                                  ; $569e: $21 $7f $16
    ld a, [hl]                                    ; $56a1: $7e
    inc a                                         ; $56a2: $3c
    ld a, h                                       ; $56a3: $7c
    inc d                                         ; $56a4: $14
    ld a, h                                       ; $56a5: $7c
    ld [bc], a                                    ; $56a6: $02
    ld l, b                                       ; $56a7: $68
    ld b, $00                                     ; $56a8: $06 $00
    rst $38                                       ; $56aa: $ff
    add hl, bc                                    ; $56ab: $09
    ld [bc], a                                    ; $56ac: $02
    ld hl, sp+$07                                 ; $56ad: $f8 $07
    ld a, [c]                                     ; $56af: $f2
    ld bc, $f8f5                                  ; $56b0: $01 $f5 $f8
    push af                                       ; $56b3: $f5
    nop                                           ; $56b4: $00
    ld [bc], a                                    ; $56b5: $02
    inc bc                                        ; $56b6: $03
    add d                                         ; $56b7: $82
    inc b                                         ; $56b8: $04
    rlca                                          ; $56b9: $07
    ld [bc], a                                    ; $56ba: $02
    inc bc                                        ; $56bb: $03
    ld [bc], a                                    ; $56bc: $02
    ld bc, $068e                                  ; $56bd: $01 $8e $06

jr_0e6_56c0:
    rlca                                          ; $56c0: $07
    ld [$160f], sp                                ; $56c1: $08 $0f $16
    rra                                           ; $56c4: $1f
    inc hl                                        ; $56c5: $23
    ccf                                           ; $56c6: $3f
    daa                                           ; $56c7: $27
    ccf                                           ; $56c8: $3f
    ld c, [hl]                                    ; $56c9: $4e
    ld a, a                                       ; $56ca: $7f
    cp e                                          ; $56cb: $bb
    rst $38                                       ; $56cc: $ff
    ld [bc], a                                    ; $56cd: $02
    db $e4                                        ; $56ce: $e4
    ld [$0200], sp                                ; $56cf: $08 $00 $02
    ret c                                         ; $56d2: $d8

    sub d                                         ; $56d3: $92
    inc h                                         ; $56d4: $24
    db $fc                                        ; $56d5: $fc
    sbc h                                         ; $56d6: $9c
    db $fc                                        ; $56d7: $fc
    and $fe                                       ; $56d8: $e6 $fe
    ld [hl-], a                                   ; $56da: $32
    cp $23                                        ; $56db: $fe $23
    db $fd                                        ; $56dd: $fd
    ld hl, $1eff                                  ; $56de: $21 $ff $1e
    cp $94                                        ; $56e1: $fe $94
    db $fc                                        ; $56e3: $fc
    or h                                          ; $56e4: $b4
    db $fc                                        ; $56e5: $fc
    ld [bc], a                                    ; $56e6: $02
    ld c, b                                       ; $56e7: $48
    ld a, [bc]                                    ; $56e8: $0a
    nop                                           ; $56e9: $00
    rst $38                                       ; $56ea: $ff
    add hl, bc                                    ; $56eb: $09
    ld [bc], a                                    ; $56ec: $02
    ld hl, sp+$07                                 ; $56ed: $f8 $07
    ld a, [c]                                     ; $56ef: $f2
    ld bc, $f8f4                                  ; $56f0: $01 $f4 $f8
    db $f4                                        ; $56f3: $f4
    nop                                           ; $56f4: $00
    ld [bc], a                                    ; $56f5: $02
    inc bc                                        ; $56f6: $03
    add d                                         ; $56f7: $82
    inc b                                         ; $56f8: $04
    rlca                                          ; $56f9: $07
    inc b                                         ; $56fa: $04
    inc bc                                        ; $56fb: $03
    adc h                                         ; $56fc: $8c
    inc c                                         ; $56fd: $0c
    rrca                                          ; $56fe: $0f
    db $10                                        ; $56ff: $10
    rra                                           ; $5700: $1f
    ld [hl+], a                                   ; $5701: $22
    ccf                                           ; $5702: $3f
    ld h, e                                       ; $5703: $63
    ld a, a                                       ; $5704: $7f
    adc [hl]                                      ; $5705: $8e
    rst $38                                       ; $5706: $ff
    di                                            ; $5707: $f3
    rst $38                                       ; $5708: $ff
    ld [bc], a                                    ; $5709: $02
    ld c, h                                       ; $570a: $4c
    ld a, [bc]                                    ; $570b: $0a
    nop                                           ; $570c: $00
    ld [bc], a                                    ; $570d: $02
    cp b                                          ; $570e: $b8
    sub d                                         ; $570f: $92
    ld h, h                                       ; $5710: $64
    db $fc                                        ; $5711: $fc
    inc e                                         ; $5712: $1c
    db $fc                                        ; $5713: $fc
    and $fe                                       ; $5714: $e6 $fe
    ld [hl-], a                                   ; $5716: $32
    cp $23                                        ; $5717: $fe $23
    db $fd                                        ; $5719: $fd
    ld hl, $1eff                                  ; $571a: $21 $ff $1e
    cp $ca                                        ; $571d: $fe $ca
    cp $da                                        ; $571f: $fe $da
    cp $02                                        ; $5721: $fe $02
    inc h                                         ; $5723: $24
    ld a, [bc]                                    ; $5724: $0a
    nop                                           ; $5725: $00
    rst $38                                       ; $5726: $ff
    add hl, bc                                    ; $5727: $09
    ld [bc], a                                    ; $5728: $02
    ld hl, sp+$07                                 ; $5729: $f8 $07
    ld a, [c]                                     ; $572b: $f2
    ld bc, $f9f4                                  ; $572c: $01 $f4 $f9
    db $f4                                        ; $572f: $f4
    nop                                           ; $5730: $00
    ld [bc], a                                    ; $5731: $02
    rlca                                          ; $5732: $07
    add h                                         ; $5733: $84
    inc b                                         ; $5734: $04
    rlca                                          ; $5735: $07
    ld [bc], a                                    ; $5736: $02
    inc bc                                        ; $5737: $03
    ld [bc], a                                    ; $5738: $02
    rlca                                          ; $5739: $07
    adc h                                         ; $573a: $8c
    jr c, jr_0e6_577c                             ; $573b: $38 $3f

    ld b, h                                       ; $573d: $44
    ld a, a                                       ; $573e: $7f
    ld b, h                                       ; $573f: $44
    ld a, a                                       ; $5740: $7f
    call z, $bfff                                 ; $5741: $cc $ff $bf
    rst $38                                       ; $5744: $ff
    cp e                                          ; $5745: $bb
    rst $38                                       ; $5746: $ff
    ld [bc], a                                    ; $5747: $02
    ld b, h                                       ; $5748: $44
    ld a, [bc]                                    ; $5749: $0a
    nop                                           ; $574a: $00
    ld [bc], a                                    ; $574b: $02
    ld [$5492], sp                                ; $574c: $08 $92 $54
    ld e, h                                       ; $574f: $5c
    inc [hl]                                      ; $5750: $34
    ld a, h                                       ; $5751: $7c
    ld c, h                                       ; $5752: $4c
    ld a, h                                       ; $5753: $7c
    ld h, [hl]                                    ; $5754: $66
    ld a, [hl]                                    ; $5755: $7e
    ld [hl-], a                                   ; $5756: $32
    ld a, [hl]                                    ; $5757: $7e
    inc hl                                        ; $5758: $23
    ld a, l                                       ; $5759: $7d
    ld hl, $367f                                  ; $575a: $21 $7f $36
    ld a, [hl]                                    ; $575d: $7e
    ld l, l                                       ; $575e: $6d
    ld a, a                                       ; $575f: $7f
    ld [bc], a                                    ; $5760: $02
    ld [de], a                                    ; $5761: $12
    ld a, [bc]                                    ; $5762: $0a
    nop                                           ; $5763: $00
    rst $38                                       ; $5764: $ff
    add hl, bc                                    ; $5765: $09
    ld [bc], a                                    ; $5766: $02
    ld hl, sp+$07                                 ; $5767: $f8 $07
    ld a, [c]                                     ; $5769: $f2
    ld bc, $faf4                                  ; $576a: $01 $f4 $fa
    db $f4                                        ; $576d: $f4
    rst $38                                       ; $576e: $ff
    ld [bc], a                                    ; $576f: $02
    ld [bc], a                                    ; $5770: $02
    sub h                                         ; $5771: $94
    dec b                                         ; $5772: $05
    rlca                                          ; $5773: $07
    dec b                                         ; $5774: $05
    rlca                                          ; $5775: $07
    inc b                                         ; $5776: $04
    rlca                                          ; $5777: $07
    ld a, $3f                                     ; $5778: $3e $3f
    ld b, e                                       ; $577a: $43
    ld a, a                                       ; $577b: $7f

jr_0e6_577c:
    adc c                                         ; $577c: $89
    rst $38                                       ; $577d: $ff
    cp c                                          ; $577e: $b9
    rst $38                                       ; $577f: $ff
    ret                                           ; $5780: $c9


    rst $38                                       ; $5781: $ff
    reti                                          ; $5782: $d9


    rst $38                                       ; $5783: $ff
    cp a                                          ; $5784: $bf
    rst $38                                       ; $5785: $ff
    ld [bc], a                                    ; $5786: $02
    ld l, a                                       ; $5787: $6f
    ld [bc], a                                    ; $5788: $02
    ld bc, $000a                                  ; $5789: $01 $0a $00
    ld [bc], a                                    ; $578c: $02
    ld b, $94                                     ; $578d: $06 $94
    ld a, [de]                                    ; $578f: $1a
    ld e, $1a                                     ; $5790: $1e $1a
    ld e, $0a                                     ; $5792: $1e $0a
    ld e, $16                                     ; $5794: $1e $16
    ld e, $12                                     ; $5796: $1e $12
    ld e, $03                                     ; $5798: $1e $03
    dec e                                         ; $579a: $1d
    ld bc, $161f                                  ; $579b: $01 $1f $16
    ld e, $0e                                     ; $579e: $1e $0e
    ld e, $0d                                     ; $57a0: $1e $0d
    rra                                           ; $57a2: $1f
    ld [bc], a                                    ; $57a3: $02
    ld [de], a                                    ; $57a4: $12
    inc b                                         ; $57a5: $04
    nop                                           ; $57a6: $00
    rst $38                                       ; $57a7: $ff

    db $09, $02, $fb

    dec b                                         ; $57ab: $05
    db $f4                                        ; $57ac: $f4
    nop                                           ; $57ad: $00

    db $f4, $fa, $f4, $ff, $02, $cf, $9a, $30, $7f, $7d, $62, $3d, $2a, $3d, $22, $32
    db $3f, $5f, $7d, $52, $7f, $50, $7f, $30, $3f, $08, $0f, $17, $1f, $1d, $1f, $00
    db $0f, $04, $00, $02, $13, $81, $0c, $02, $1e, $8f, $06, $1c, $14, $1c, $04, $0c
    db $1c, $1a, $1e, $0a, $1e, $0a, $1e, $0c, $1c, $02, $10, $81, $08, $03, $18, $82
    db $00, $10, $04, $00, $ff

    add hl, bc                                    ; $57f3: $09
    ld [bc], a                                    ; $57f4: $02
    ei                                            ; $57f5: $fb
    dec b                                         ; $57f6: $05
    db $f4                                        ; $57f7: $f4
    nop                                           ; $57f8: $00
    db $f4                                        ; $57f9: $f4
    ld a, [$fff4]                                 ; $57fa: $fa $f4 $ff
    ld [bc], a                                    ; $57fd: $02
    rst $08                                       ; $57fe: $cf
    sbc d                                         ; $57ff: $9a
    jr nc, @+$81                                  ; $5800: $30 $7f

    ld h, b                                       ; $5802: $60
    ld a, a                                       ; $5803: $7f
    dec a                                         ; $5804: $3d
    ld a, [hl+]                                   ; $5805: $2a
    dec a                                         ; $5806: $3d
    ld [hl+], a                                   ; $5807: $22
    ld [hl-], a                                   ; $5808: $32
    ccf                                           ; $5809: $3f
    ld e, a                                       ; $580a: $5f
    ld a, l                                       ; $580b: $7d
    ld d, d                                       ; $580c: $52
    ld a, a                                       ; $580d: $7f
    ld d, b                                       ; $580e: $50
    ld a, a                                       ; $580f: $7f
    jr nc, @+$41                                  ; $5810: $30 $3f

    ld [$170f], sp                                ; $5812: $08 $0f $17
    rra                                           ; $5815: $1f
    dec e                                         ; $5816: $1d
    rra                                           ; $5817: $1f
    nop                                           ; $5818: $00
    rrca                                          ; $5819: $0f
    inc b                                         ; $581a: $04
    nop                                           ; $581b: $00
    ld [bc], a                                    ; $581c: $02
    inc de                                        ; $581d: $13
    sub d                                         ; $581e: $92
    inc c                                         ; $581f: $0c
    ld e, $06                                     ; $5820: $1e $06
    ld e, $1c                                     ; $5822: $1e $1c
    inc d                                         ; $5824: $14
    inc e                                         ; $5825: $1c
    inc b                                         ; $5826: $04
    inc c                                         ; $5827: $0c
    inc e                                         ; $5828: $1c
    ld a, [de]                                    ; $5829: $1a
    ld e, $0a                                     ; $582a: $1e $0a
    ld e, $0a                                     ; $582c: $1e $0a
    ld e, $0c                                     ; $582e: $1e $0c
    inc e                                         ; $5830: $1c
    ld [bc], a                                    ; $5831: $02
    db $10                                        ; $5832: $10
    add c                                         ; $5833: $81
    ld [$1803], sp                                ; $5834: $08 $03 $18
    add d                                         ; $5837: $82
    nop                                           ; $5838: $00
    db $10                                        ; $5839: $10
    inc b                                         ; $583a: $04
    nop                                           ; $583b: $00
    rst $38                                       ; $583c: $ff
    add hl, bc                                    ; $583d: $09
    ld [bc], a                                    ; $583e: $02
    ei                                            ; $583f: $fb
    dec b                                         ; $5840: $05
    db $f4                                        ; $5841: $f4
    nop                                           ; $5842: $00
    db $f4                                        ; $5843: $f4
    ld a, [$fff4]                                 ; $5844: $fa $f4 $ff
    ld [bc], a                                    ; $5847: $02
    rst $08                                       ; $5848: $cf
    sbc d                                         ; $5849: $9a
    jr nc, jr_0e6_58cb                            ; $584a: $30 $7f

    ld h, b                                       ; $584c: $60
    ld a, a                                       ; $584d: $7f
    dec a                                         ; $584e: $3d
    ccf                                           ; $584f: $3f
    jr nz, @+$41                                  ; $5850: $20 $3f

    ld [hl-], a                                   ; $5852: $32
    ccf                                           ; $5853: $3f
    ld e, a                                       ; $5854: $5f
    ld a, l                                       ; $5855: $7d
    ld d, d                                       ; $5856: $52
    ld a, a                                       ; $5857: $7f
    ld d, b                                       ; $5858: $50
    ld a, a                                       ; $5859: $7f
    jr nc, jr_0e6_589b                            ; $585a: $30 $3f

    ld [$170f], sp                                ; $585c: $08 $0f $17
    rra                                           ; $585f: $1f
    dec e                                         ; $5860: $1d
    rra                                           ; $5861: $1f
    nop                                           ; $5862: $00
    rrca                                          ; $5863: $0f
    inc b                                         ; $5864: $04
    nop                                           ; $5865: $00
    ld [bc], a                                    ; $5866: $02
    inc de                                        ; $5867: $13
    add h                                         ; $5868: $84
    inc c                                         ; $5869: $0c
    ld e, $06                                     ; $586a: $1e $06
    ld e, $02                                     ; $586c: $1e $02
    inc e                                         ; $586e: $1c
    adc h                                         ; $586f: $8c
    inc b                                         ; $5870: $04
    inc e                                         ; $5871: $1c
    inc c                                         ; $5872: $0c
    inc e                                         ; $5873: $1c
    ld a, [de]                                    ; $5874: $1a
    ld e, $0a                                     ; $5875: $1e $0a
    ld e, $0a                                     ; $5877: $1e $0a
    ld e, $0c                                     ; $5879: $1e $0c
    inc e                                         ; $587b: $1c
    ld [bc], a                                    ; $587c: $02
    db $10                                        ; $587d: $10
    add c                                         ; $587e: $81
    ld [$1803], sp                                ; $587f: $08 $03 $18
    add d                                         ; $5882: $82
    nop                                           ; $5883: $00
    db $10                                        ; $5884: $10
    inc b                                         ; $5885: $04
    nop                                           ; $5886: $00
    rst $38                                       ; $5887: $ff
    add hl, bc                                    ; $5888: $09
    ld [bc], a                                    ; $5889: $02
    ei                                            ; $588a: $fb
    dec b                                         ; $588b: $05
    db $f4                                        ; $588c: $f4
    nop                                           ; $588d: $00
    push af                                       ; $588e: $f5
    ld a, [$fff5]                                 ; $588f: $fa $f5 $ff
    ld [bc], a                                    ; $5892: $02
    rst $08                                       ; $5893: $cf
    sub e                                         ; $5894: $93
    jr nc, jr_0e6_5916                            ; $5895: $30 $7f

    ld a, l                                       ; $5897: $7d
    ld h, d                                       ; $5898: $62
    dec a                                         ; $5899: $3d
    ld a, [hl+]                                   ; $589a: $2a

jr_0e6_589b:
    dec a                                         ; $589b: $3d
    ld [hl+], a                                   ; $589c: $22
    ld [hl-], a                                   ; $589d: $32
    ccf                                           ; $589e: $3f
    ld e, a                                       ; $589f: $5f
    ld a, l                                       ; $58a0: $7d
    sub d                                         ; $58a1: $92
    rst $38                                       ; $58a2: $ff
    ld [hl], b                                    ; $58a3: $70
    ld a, a                                       ; $58a4: $7f
    db $10                                        ; $58a5: $10
    rra                                           ; $58a6: $1f
    jr jr_0e6_58ac                                ; $58a7: $18 $03

    rra                                           ; $58a9: $1f
    add d                                         ; $58aa: $82
    nop                                           ; $58ab: $00

jr_0e6_58ac:
    rrca                                          ; $58ac: $0f
    ld b, $00                                     ; $58ad: $06 $00
    ld [bc], a                                    ; $58af: $02
    inc de                                        ; $58b0: $13
    add c                                         ; $58b1: $81
    inc c                                         ; $58b2: $0c
    ld [bc], a                                    ; $58b3: $02
    ld e, $8e                                     ; $58b4: $1e $8e
    ld b, $1c                                     ; $58b6: $06 $1c
    inc d                                         ; $58b8: $14
    inc e                                         ; $58b9: $1c
    inc b                                         ; $58ba: $04
    inc c                                         ; $58bb: $0c
    inc e                                         ; $58bc: $1c
    ld a, [de]                                    ; $58bd: $1a
    ld e, $09                                     ; $58be: $1e $09
    rra                                           ; $58c0: $1f
    ld c, $1e                                     ; $58c1: $0e $1e
    ld [$1805], sp                                ; $58c3: $08 $05 $18
    add d                                         ; $58c6: $82
    nop                                           ; $58c7: $00
    db $10                                        ; $58c8: $10
    ld b, $00                                     ; $58c9: $06 $00

jr_0e6_58cb:
    rst $38                                       ; $58cb: $ff
    add hl, bc                                    ; $58cc: $09
    ld [bc], a                                    ; $58cd: $02
    ei                                            ; $58ce: $fb
    dec b                                         ; $58cf: $05
    db $f4                                        ; $58d0: $f4
    nop                                           ; $58d1: $00
    db $f4                                        ; $58d2: $f4
    ld a, [$fff4]                                 ; $58d3: $fa $f4 $ff
    ld [bc], a                                    ; $58d6: $02
    rst $08                                       ; $58d7: $cf
    sub h                                         ; $58d8: $94
    jr nc, jr_0e6_595a                            ; $58d9: $30 $7f

    ld a, l                                       ; $58db: $7d
    ld l, d                                       ; $58dc: $6a
    dec a                                         ; $58dd: $3d
    ld [hl+], a                                   ; $58de: $22
    dec a                                         ; $58df: $3d
    ld [hl+], a                                   ; $58e0: $22
    ld a, [c]                                     ; $58e1: $f2
    rst $38                                       ; $58e2: $ff
    sbc a                                         ; $58e3: $9f
    db $fd                                        ; $58e4: $fd
    ld d, d                                       ; $58e5: $52
    ld a, a                                       ; $58e6: $7f
    jr nc, jr_0e6_5928                            ; $58e7: $30 $3f

    db $10                                        ; $58e9: $10
    rra                                           ; $58ea: $1f
    ld [$020f], sp                                ; $58eb: $08 $0f $02
    rlca                                          ; $58ee: $07
    add c                                         ; $58ef: $81
    ld a, [bc]                                    ; $58f0: $0a
    inc bc                                        ; $58f1: $03
    rrca                                          ; $58f2: $0f
    inc b                                         ; $58f3: $04
    nop                                           ; $58f4: $00
    ld [bc], a                                    ; $58f5: $02
    inc de                                        ; $58f6: $13
    add c                                         ; $58f7: $81
    inc c                                         ; $58f8: $0c
    ld [bc], a                                    ; $58f9: $02
    ld e, $8f                                     ; $58fa: $1e $8f

Call_0e6_58fc:
    ld d, $1c                                     ; $58fc: $16 $1c
    inc b                                         ; $58fe: $04
    inc e                                         ; $58ff: $1c
    inc b                                         ; $5900: $04
    rrca                                          ; $5901: $0f
    rra                                           ; $5902: $1f
    add hl, de                                    ; $5903: $19
    rra                                           ; $5904: $1f
    ld a, [bc]                                    ; $5905: $0a
    ld e, $0c                                     ; $5906: $1e $0c
    inc e                                         ; $5908: $1c
    ld [$0218], sp                                ; $5909: $08 $18 $02
    db $10                                        ; $590c: $10
    ld [bc], a                                    ; $590d: $02
    nop                                           ; $590e: $00
    inc b                                         ; $590f: $04
    db $10                                        ; $5910: $10
    inc b                                         ; $5911: $04
    nop                                           ; $5912: $00
    rst $38                                       ; $5913: $ff
    add hl, bc                                    ; $5914: $09
    ld [bc], a                                    ; $5915: $02

jr_0e6_5916:
    ei                                            ; $5916: $fb
    dec b                                         ; $5917: $05
    db $f4                                        ; $5918: $f4
    nop                                           ; $5919: $00
    db $f4                                        ; $591a: $f4
    ld a, [$fff4]                                 ; $591b: $fa $f4 $ff
    ld [bc], a                                    ; $591e: $02
    rst $08                                       ; $591f: $cf
    sub h                                         ; $5920: $94
    jr nc, jr_0e6_59a2                            ; $5921: $30 $7f

    ld a, l                                       ; $5923: $7d
    ld l, d                                       ; $5924: $6a
    dec a                                         ; $5925: $3d
    ld [hl+], a                                   ; $5926: $22
    dec a                                         ; $5927: $3d

jr_0e6_5928:
    ld [hl+], a                                   ; $5928: $22
    ld [de], a                                    ; $5929: $12
    rra                                           ; $592a: $1f
    rst $38                                       ; $592b: $ff
    db $fd                                        ; $592c: $fd
    sub d                                         ; $592d: $92
    rst $38                                       ; $592e: $ff
    ld d, b                                       ; $592f: $50
    ld a, a                                       ; $5930: $7f
    jr nc, jr_0e6_5972                            ; $5931: $30 $3f

    ld [$020f], sp                                ; $5933: $08 $0f $02
    rlca                                          ; $5936: $07
    add c                                         ; $5937: $81
    ld a, [bc]                                    ; $5938: $0a
    inc bc                                        ; $5939: $03
    rrca                                          ; $593a: $0f
    inc b                                         ; $593b: $04
    nop                                           ; $593c: $00
    ld [bc], a                                    ; $593d: $02
    inc de                                        ; $593e: $13
    add c                                         ; $593f: $81
    inc c                                         ; $5940: $0c
    ld [bc], a                                    ; $5941: $02
    ld e, $87                                     ; $5942: $1e $87
    ld d, $1c                                     ; $5944: $16 $1c
    inc b                                         ; $5946: $04
    inc e                                         ; $5947: $1c
    inc b                                         ; $5948: $04
    ld [$0218], sp                                ; $5949: $08 $18 $02
    rra                                           ; $594c: $1f
    add [hl]                                      ; $594d: $86
    add hl, bc                                    ; $594e: $09
    rra                                           ; $594f: $1f
    ld a, [bc]                                    ; $5950: $0a
    ld e, $0c                                     ; $5951: $1e $0c
    inc e                                         ; $5953: $1c
    ld [bc], a                                    ; $5954: $02
    db $10                                        ; $5955: $10
    ld [bc], a                                    ; $5956: $02
    nop                                           ; $5957: $00
    inc b                                         ; $5958: $04
    db $10                                        ; $5959: $10

jr_0e6_595a:
    inc b                                         ; $595a: $04
    nop                                           ; $595b: $00
    rst $38                                       ; $595c: $ff
    add hl, bc                                    ; $595d: $09
    ld [bc], a                                    ; $595e: $02
    ei                                            ; $595f: $fb
    dec b                                         ; $5960: $05
    db $f4                                        ; $5961: $f4
    nop                                           ; $5962: $00
    db $f4                                        ; $5963: $f4
    ld a, [$fff4]                                 ; $5964: $fa $f4 $ff
    ld [bc], a                                    ; $5967: $02
    rst $08                                       ; $5968: $cf
    sub h                                         ; $5969: $94
    jr nc, jr_0e6_59eb                            ; $596a: $30 $7f

    ld a, l                                       ; $596c: $7d
    ld l, d                                       ; $596d: $6a
    dec a                                         ; $596e: $3d
    ld [hl+], a                                   ; $596f: $22
    dec a                                         ; $5970: $3d
    ld [hl+], a                                   ; $5971: $22

jr_0e6_5972:
    ld [de], a                                    ; $5972: $12
    rra                                           ; $5973: $1f
    ccf                                           ; $5974: $3f
    dec a                                         ; $5975: $3d
    ld d, d                                       ; $5976: $52
    ld a, a                                       ; $5977: $7f
    sub b                                         ; $5978: $90
    rst $38                                       ; $5979: $ff
    ldh a, [rIE]                                  ; $597a: $f0 $ff
    ld [$020f], sp                                ; $597c: $08 $0f $02
    rlca                                          ; $597f: $07
    add c                                         ; $5980: $81
    ld a, [bc]                                    ; $5981: $0a
    inc bc                                        ; $5982: $03
    rrca                                          ; $5983: $0f
    inc b                                         ; $5984: $04
    nop                                           ; $5985: $00
    ld [bc], a                                    ; $5986: $02
    inc de                                        ; $5987: $13
    add c                                         ; $5988: $81
    inc c                                         ; $5989: $0c
    ld [bc], a                                    ; $598a: $02
    ld e, $87                                     ; $598b: $1e $87
    ld d, $1c                                     ; $598d: $16 $1c
    inc b                                         ; $598f: $04
    inc e                                         ; $5990: $1c
    inc b                                         ; $5991: $04
    ld [$0218], sp                                ; $5992: $08 $18 $02
    inc e                                         ; $5995: $1c
    add [hl]                                      ; $5996: $86
    ld a, [bc]                                    ; $5997: $0a
    ld e, $09                                     ; $5998: $1e $09
    rra                                           ; $599a: $1f
    rrca                                          ; $599b: $0f
    rra                                           ; $599c: $1f
    ld [bc], a                                    ; $599d: $02
    db $10                                        ; $599e: $10
    ld [bc], a                                    ; $599f: $02
    nop                                           ; $59a0: $00
    inc b                                         ; $59a1: $04

jr_0e6_59a2:
    db $10                                        ; $59a2: $10
    inc b                                         ; $59a3: $04
    nop                                           ; $59a4: $00
    rst $38                                       ; $59a5: $ff
    add hl, bc                                    ; $59a6: $09
    ld [bc], a                                    ; $59a7: $02
    ei                                            ; $59a8: $fb
    dec b                                         ; $59a9: $05
    db $f4                                        ; $59aa: $f4
    nop                                           ; $59ab: $00
    db $f4                                        ; $59ac: $f4
    ld a, [$fff4]                                 ; $59ad: $fa $f4 $ff
    ld [bc], a                                    ; $59b0: $02
    rst $08                                       ; $59b1: $cf
    sub h                                         ; $59b2: $94
    jr nc, jr_0e6_5a34                            ; $59b3: $30 $7f

    ld a, l                                       ; $59b5: $7d
    ld h, d                                       ; $59b6: $62
    dec a                                         ; $59b7: $3d
    ld [hl+], a                                   ; $59b8: $22
    dec a                                         ; $59b9: $3d
    ld a, [hl+]                                   ; $59ba: $2a
    ld a, [c]                                     ; $59bb: $f2
    rst $38                                       ; $59bc: $ff
    sbc a                                         ; $59bd: $9f
    db $fd                                        ; $59be: $fd
    ld d, d                                       ; $59bf: $52
    ld a, a                                       ; $59c0: $7f
    jr nc, jr_0e6_5a02                            ; $59c1: $30 $3f

    db $10                                        ; $59c3: $10
    rra                                           ; $59c4: $1f
    ld [$020f], sp                                ; $59c5: $08 $0f $02
    rlca                                          ; $59c8: $07
    add c                                         ; $59c9: $81
    ld a, [bc]                                    ; $59ca: $0a
    inc bc                                        ; $59cb: $03
    rrca                                          ; $59cc: $0f
    inc b                                         ; $59cd: $04
    nop                                           ; $59ce: $00
    ld [bc], a                                    ; $59cf: $02
    inc de                                        ; $59d0: $13
    add c                                         ; $59d1: $81
    inc c                                         ; $59d2: $0c
    ld [bc], a                                    ; $59d3: $02
    ld e, $8f                                     ; $59d4: $1e $8f
    ld b, $1c                                     ; $59d6: $06 $1c
    inc b                                         ; $59d8: $04
    inc e                                         ; $59d9: $1c
    inc d                                         ; $59da: $14
    rrca                                          ; $59db: $0f
    rra                                           ; $59dc: $1f
    add hl, de                                    ; $59dd: $19
    rra                                           ; $59de: $1f
    ld a, [bc]                                    ; $59df: $0a
    ld e, $0c                                     ; $59e0: $1e $0c
    inc e                                         ; $59e2: $1c
    ld [$0218], sp                                ; $59e3: $08 $18 $02
    db $10                                        ; $59e6: $10
    ld [bc], a                                    ; $59e7: $02
    nop                                           ; $59e8: $00
    inc b                                         ; $59e9: $04
    db $10                                        ; $59ea: $10

jr_0e6_59eb:
    inc b                                         ; $59eb: $04
    nop                                           ; $59ec: $00
    rst $38                                       ; $59ed: $ff
    add hl, bc                                    ; $59ee: $09
    ld [bc], a                                    ; $59ef: $02
    ei                                            ; $59f0: $fb
    dec b                                         ; $59f1: $05
    db $f4                                        ; $59f2: $f4
    nop                                           ; $59f3: $00
    db $f4                                        ; $59f4: $f4
    ld a, [$fff4]                                 ; $59f5: $fa $f4 $ff
    ld [bc], a                                    ; $59f8: $02
    rst $08                                       ; $59f9: $cf
    sub h                                         ; $59fa: $94
    jr nc, jr_0e6_5a7c                            ; $59fb: $30 $7f

    ld a, l                                       ; $59fd: $7d
    ld h, d                                       ; $59fe: $62
    dec a                                         ; $59ff: $3d
    ld [hl+], a                                   ; $5a00: $22
    dec a                                         ; $5a01: $3d

jr_0e6_5a02:
    ld a, [hl+]                                   ; $5a02: $2a
    ld [de], a                                    ; $5a03: $12
    rra                                           ; $5a04: $1f
    rst $38                                       ; $5a05: $ff
    db $fd                                        ; $5a06: $fd
    sub d                                         ; $5a07: $92
    rst $38                                       ; $5a08: $ff
    ld d, b                                       ; $5a09: $50
    ld a, a                                       ; $5a0a: $7f
    jr nc, jr_0e6_5a4c                            ; $5a0b: $30 $3f

    ld [$020f], sp                                ; $5a0d: $08 $0f $02
    rlca                                          ; $5a10: $07
    add c                                         ; $5a11: $81
    ld a, [bc]                                    ; $5a12: $0a
    inc bc                                        ; $5a13: $03
    rrca                                          ; $5a14: $0f
    inc b                                         ; $5a15: $04
    nop                                           ; $5a16: $00
    ld [bc], a                                    ; $5a17: $02
    inc de                                        ; $5a18: $13
    add c                                         ; $5a19: $81
    inc c                                         ; $5a1a: $0c
    ld [bc], a                                    ; $5a1b: $02
    ld e, $87                                     ; $5a1c: $1e $87
    ld b, $1c                                     ; $5a1e: $06 $1c
    inc b                                         ; $5a20: $04
    inc e                                         ; $5a21: $1c
    inc d                                         ; $5a22: $14
    ld [$0218], sp                                ; $5a23: $08 $18 $02
    rra                                           ; $5a26: $1f

jr_0e6_5a27:
    add [hl]                                      ; $5a27: $86
    add hl, bc                                    ; $5a28: $09
    rra                                           ; $5a29: $1f
    ld a, [bc]                                    ; $5a2a: $0a
    ld e, $0c                                     ; $5a2b: $1e $0c
    inc e                                         ; $5a2d: $1c
    ld [bc], a                                    ; $5a2e: $02
    db $10                                        ; $5a2f: $10
    ld [bc], a                                    ; $5a30: $02
    nop                                           ; $5a31: $00
    inc b                                         ; $5a32: $04
    db $10                                        ; $5a33: $10

jr_0e6_5a34:
    inc b                                         ; $5a34: $04
    nop                                           ; $5a35: $00
    rst $38                                       ; $5a36: $ff
    add hl, bc                                    ; $5a37: $09
    ld [bc], a                                    ; $5a38: $02
    ei                                            ; $5a39: $fb
    dec b                                         ; $5a3a: $05
    db $f4                                        ; $5a3b: $f4
    nop                                           ; $5a3c: $00
    db $f4                                        ; $5a3d: $f4
    ld a, [$fff4]                                 ; $5a3e: $fa $f4 $ff
    ld [bc], a                                    ; $5a41: $02
    rst $08                                       ; $5a42: $cf
    sub h                                         ; $5a43: $94
    jr nc, jr_0e6_5ac5                            ; $5a44: $30 $7f

    ld a, l                                       ; $5a46: $7d
    ld h, d                                       ; $5a47: $62
    dec a                                         ; $5a48: $3d
    ld [hl+], a                                   ; $5a49: $22
    dec a                                         ; $5a4a: $3d
    ld a, [hl+]                                   ; $5a4b: $2a

jr_0e6_5a4c:
    ld [de], a                                    ; $5a4c: $12
    rra                                           ; $5a4d: $1f
    ccf                                           ; $5a4e: $3f
    dec a                                         ; $5a4f: $3d
    ld d, d                                       ; $5a50: $52
    ld a, a                                       ; $5a51: $7f
    sub b                                         ; $5a52: $90
    rst $38                                       ; $5a53: $ff
    ldh a, [rIE]                                  ; $5a54: $f0 $ff
    ld [$020f], sp                                ; $5a56: $08 $0f $02
    rlca                                          ; $5a59: $07
    add c                                         ; $5a5a: $81
    ld a, [bc]                                    ; $5a5b: $0a
    inc bc                                        ; $5a5c: $03
    rrca                                          ; $5a5d: $0f
    inc b                                         ; $5a5e: $04
    nop                                           ; $5a5f: $00
    ld [bc], a                                    ; $5a60: $02
    inc de                                        ; $5a61: $13
    add c                                         ; $5a62: $81
    inc c                                         ; $5a63: $0c
    ld [bc], a                                    ; $5a64: $02
    ld e, $87                                     ; $5a65: $1e $87
    ld b, $1c                                     ; $5a67: $06 $1c
    inc b                                         ; $5a69: $04
    inc e                                         ; $5a6a: $1c
    inc d                                         ; $5a6b: $14
    ld [$0218], sp                                ; $5a6c: $08 $18 $02
    inc e                                         ; $5a6f: $1c
    add [hl]                                      ; $5a70: $86
    ld a, [bc]                                    ; $5a71: $0a
    ld e, $09                                     ; $5a72: $1e $09
    rra                                           ; $5a74: $1f
    rrca                                          ; $5a75: $0f
    rra                                           ; $5a76: $1f
    ld [bc], a                                    ; $5a77: $02
    db $10                                        ; $5a78: $10
    ld [bc], a                                    ; $5a79: $02
    nop                                           ; $5a7a: $00
    inc b                                         ; $5a7b: $04

jr_0e6_5a7c:
    db $10                                        ; $5a7c: $10
    inc b                                         ; $5a7d: $04
    nop                                           ; $5a7e: $00
    rst $38                                       ; $5a7f: $ff
    rlca                                          ; $5a80: $07
    ld bc, $06fa                                  ; $5a81: $01 $fa $06
    push af                                       ; $5a84: $f5
    rst $38                                       ; $5a85: $ff
    rst $30                                       ; $5a86: $f7
    db $fc                                        ; $5a87: $fc
    ld [bc], a                                    ; $5a88: $02
    inc e                                         ; $5a89: $1c
    add e                                         ; $5a8a: $83
    ld a, $22                                     ; $5a8b: $3e $22
    ld a, l                                       ; $5a8d: $7d
    ld [bc], a                                    ; $5a8e: $02
    ld d, a                                       ; $5a8f: $57
    adc a                                         ; $5a90: $8f
    ld l, c                                       ; $5a91: $69
    ld d, l                                       ; $5a92: $55
    ld l, e                                       ; $5a93: $6b
    ld a, $36                                     ; $5a94: $3e $36
    ld e, l                                       ; $5a96: $5d
    ld h, e                                       ; $5a97: $63
    ld a, l                                       ; $5a98: $7d
    ld b, e                                       ; $5a99: $43
    ld e, e                                       ; $5a9a: $5b
    ld h, a                                       ; $5a9b: $67
    ld [hl], h                                    ; $5a9c: $74
    ld l, b                                       ; $5a9d: $68
    ld b, b                                       ; $5a9e: $40
    ld h, b                                       ; $5a9f: $60
    ld [bc], a                                    ; $5aa0: $02
    nop                                           ; $5aa1: $00
    ld [bc], a                                    ; $5aa2: $02
    jr nz, jr_0e6_5a27                            ; $5aa3: $20 $82

    ld d, l                                       ; $5aa5: $55
    ld h, e                                       ; $5aa6: $63
    ld [bc], a                                    ; $5aa7: $02
    ld a, $02                                     ; $5aa8: $3e $02
    nop                                           ; $5aaa: $00
    rst $38                                       ; $5aab: $ff
    rlca                                          ; $5aac: $07
    ld bc, $06fa                                  ; $5aad: $01 $fa $06
    push af                                       ; $5ab0: $f5
    rst $38                                       ; $5ab1: $ff
    ld hl, sp-$04                                 ; $5ab2: $f8 $fc
    ld [bc], a                                    ; $5ab4: $02
    inc e                                         ; $5ab5: $1c
    add e                                         ; $5ab6: $83
    ld a, $22                                     ; $5ab7: $3e $22
    ld a, l                                       ; $5ab9: $7d
    ld [bc], a                                    ; $5aba: $02
    ld d, a                                       ; $5abb: $57
    adc a                                         ; $5abc: $8f
    ld l, c                                       ; $5abd: $69
    ld d, l                                       ; $5abe: $55
    ld l, e                                       ; $5abf: $6b
    ccf                                           ; $5ac0: $3f
    scf                                           ; $5ac1: $37
    ld l, e                                       ; $5ac2: $6b
    ld e, l                                       ; $5ac3: $5d
    ld a, a                                       ; $5ac4: $7f

jr_0e6_5ac5:
    ld c, c                                       ; $5ac5: $49
    or e                                          ; $5ac6: $b3
    db $dd                                        ; $5ac7: $dd
    ld hl, sp-$6c                                 ; $5ac8: $f8 $94
    or b                                          ; $5aca: $b0
    ret nc                                        ; $5acb: $d0

    inc b                                         ; $5acc: $04
    ld h, b                                       ; $5acd: $60
    add h                                         ; $5ace: $84
    ld [hl], b                                    ; $5acf: $70
    ld d, b                                       ; $5ad0: $50
    ld l, b                                       ; $5ad1: $68
    ld e, b                                       ; $5ad2: $58
    ld [bc], a                                    ; $5ad3: $02
    jr nc, @+$01                                  ; $5ad4: $30 $ff

    rlca                                          ; $5ad6: $07
    ld bc, $06fa                                  ; $5ad7: $01 $fa $06
    push af                                       ; $5ada: $f5
    rst $38                                       ; $5adb: $ff
    ld sp, hl                                     ; $5adc: $f9
    ei                                            ; $5add: $fb
    ld [bc], a                                    ; $5ade: $02
    inc e                                         ; $5adf: $1c
    sbc h                                         ; $5ae0: $9c
    ld a, [hl-]                                   ; $5ae1: $3a
    ld h, $6f                                     ; $5ae2: $26 $6f
    ld e, e                                       ; $5ae4: $5b
    ld [hl], l                                    ; $5ae5: $75
    ld c, e                                       ; $5ae6: $4b
    ld e, d                                       ; $5ae7: $5a
    ld a, [hl]                                    ; $5ae8: $7e
    scf                                           ; $5ae9: $37
    dec l                                         ; $5aea: $2d
    ld a, e                                       ; $5aeb: $7b
    ld c, l                                       ; $5aec: $4d
    ld l, a                                       ; $5aed: $6f
    ld e, c                                       ; $5aee: $59
    or e                                          ; $5aef: $b3
    db $dd                                        ; $5af0: $dd
    db $f4                                        ; $5af1: $f4
    sbc b                                         ; $5af2: $98
    ret c                                         ; $5af3: $d8

    cp b                                          ; $5af4: $b8
    or b                                          ; $5af5: $b0
    ldh a, [$e0]                                  ; $5af6: $f0 $e0
    ldh a, [rBCPS]                                ; $5af8: $f0 $68
    ld e, b                                       ; $5afa: $58
    ld l, b                                       ; $5afb: $68
    ld e, b                                       ; $5afc: $58
    ld [bc], a                                    ; $5afd: $02
    jr nc, @+$01                                  ; $5afe: $30 $ff

    dec bc                                        ; $5b00: $0b
    inc bc                                        ; $5b01: $03
    ld a, [$f506]                                 ; $5b02: $fa $06 $f5
    rst $38                                       ; $5b05: $ff
    push af                                       ; $5b06: $f5
    or $f5                                        ; $5b07: $f6 $f5
    cp $f5                                        ; $5b09: $fe $f5
    rst $38                                       ; $5b0b: $ff
    ld [bc], a                                    ; $5b0c: $02
    nop                                           ; $5b0d: $00
    ld [bc], a                                    ; $5b0e: $02
    rlca                                          ; $5b0f: $07
    add [hl]                                      ; $5b10: $86
    ccf                                           ; $5b11: $3f
    jr c, jr_0e6_5b85                             ; $5b12: $38 $71

    ld c, [hl]                                    ; $5b14: $4e
    call z, $02bf                                 ; $5b15: $cc $bf $02
    ld [hl], e                                    ; $5b18: $73
    adc d                                         ; $5b19: $8a
    ld [bc], a                                    ; $5b1a: $02
    inc bc                                        ; $5b1b: $03
    ld [bc], a                                    ; $5b1c: $02
    inc bc                                        ; $5b1d: $03
    ld b, $07                                     ; $5b1e: $06 $07
    dec c                                         ; $5b20: $0d
    dec bc                                        ; $5b21: $0b
    ld c, $09                                     ; $5b22: $0e $09
    ld [bc], a                                    ; $5b24: $02
    rlca                                          ; $5b25: $07
    ld [$0200], sp                                ; $5b26: $08 $00 $02
    ld b, $8f                                     ; $5b29: $06 $8f
    adc e                                         ; $5b2b: $8b
    adc l                                         ; $5b2c: $8d
    rst $08                                       ; $5b2d: $cf
    ld c, a                                       ; $5b2e: $4f
    ld [hl], a                                    ; $5b2f: $77
    cp b                                          ; $5b30: $b8
    rst $18                                       ; $5b31: $df
    ld a, [c]                                     ; $5b32: $f2
    dec [hl]                                      ; $5b33: $35
    jp c, Jump_000_09ff                           ; $5b34: $da $ff $09

    or $16                                        ; $5b37: $f6 $16
    ld h, b                                       ; $5b39: $60
    ld [bc], a                                    ; $5b3a: $02
    ldh [$81], a                                  ; $5b3b: $e0 $81
    jr nz, @+$04                                  ; $5b3d: $20 $02

    ret nz                                        ; $5b3f: $c0

    stop                                          ; $5b40: $10 $00
    ld b, $01                                     ; $5b42: $06 $01
    inc d                                         ; $5b44: $14
    nop                                           ; $5b45: $00
    rst $38                                       ; $5b46: $ff
    dec bc                                        ; $5b47: $0b
    inc bc                                        ; $5b48: $03
    ld a, [$f506]                                 ; $5b49: $fa $06 $f5
    rst $38                                       ; $5b4c: $ff
    ld a, [c]                                     ; $5b4d: $f2
    or $f2                                        ; $5b4e: $f6 $f2
    cp $f2                                        ; $5b50: $fe $f2
    inc bc                                        ; $5b52: $03
    ld [bc], a                                    ; $5b53: $02
    ld e, $8a                                     ; $5b54: $1e $8a
    ld a, l                                       ; $5b56: $7d
    ld h, e                                       ; $5b57: $63
    rst $28                                       ; $5b58: $ef
    sub b                                         ; $5b59: $90
    set 6, h                                      ; $5b5a: $cb $f4
    ld sp, $0e3e                                  ; $5b5c: $31 $3e $0e
    dec c                                         ; $5b5f: $0d
    ld [bc], a                                    ; $5b60: $02
    inc bc                                        ; $5b61: $03
    ld [bc], a                                    ; $5b62: $02
    dec c                                         ; $5b63: $0d
    add h                                         ; $5b64: $84
    ld [de], a                                    ; $5b65: $12
    rra                                           ; $5b66: $1f
    ld e, $13                                     ; $5b67: $1e $13
    ld [bc], a                                    ; $5b69: $02
    rrca                                          ; $5b6a: $0f
    add h                                         ; $5b6b: $84
    inc bc                                        ; $5b6c: $03
    ld [bc], a                                    ; $5b6d: $02
    inc bc                                        ; $5b6e: $03
    ld [bc], a                                    ; $5b6f: $02
    ld [bc], a                                    ; $5b70: $02
    ld bc, $0006                                  ; $5b71: $01 $06 $00
    ld [bc], a                                    ; $5b74: $02
    add b                                         ; $5b75: $80
    sub d                                         ; $5b76: $92
    ret nz                                        ; $5b77: $c0

    ld b, b                                       ; $5b78: $40
    ret nz                                        ; $5b79: $c0

    ld b, b                                       ; $5b7a: $40
    db $e3                                        ; $5b7b: $e3
    inc hl                                        ; $5b7c: $23
    ld l, a                                       ; $5b7d: $6f
    xor a                                         ; $5b7e: $af
    ld [hl], a                                    ; $5b7f: $77
    cp b                                          ; $5b80: $b8
    rst $18                                       ; $5b81: $df
    ld a, [c]                                     ; $5b82: $f2
    ld [hl], l                                    ; $5b83: $75
    sbc d                                         ; $5b84: $9a

jr_0e6_5b85:
    rst $38                                       ; $5b85: $ff
    add hl, bc                                    ; $5b86: $09
    halt                                          ; $5b87: $76
    sub [hl]                                      ; $5b88: $96
    inc bc                                        ; $5b89: $03
    ldh [$81], a                                  ; $5b8a: $e0 $81
    and b                                         ; $5b8c: $a0
    ld [bc], a                                    ; $5b8d: $02
    ld b, b                                       ; $5b8e: $40
    inc c                                         ; $5b8f: $0c
    nop                                           ; $5b90: $00
    ld [bc], a                                    ; $5b91: $02
    db $10                                        ; $5b92: $10
    adc h                                         ; $5b93: $8c
    inc e                                         ; $5b94: $1c
    inc c                                         ; $5b95: $0c
    ld e, $12                                     ; $5b96: $1e $12
    ld e, $12                                     ; $5b98: $1e $12
    rla                                           ; $5b9a: $17
    add hl, de                                    ; $5b9b: $19
    dec bc                                        ; $5b9c: $0b
    dec c                                         ; $5b9d: $0d
    dec bc                                        ; $5b9e: $0b
    dec c                                         ; $5b9f: $0d
    ld [bc], a                                    ; $5ba0: $02
    ld b, $08                                     ; $5ba1: $06 $08
    nop                                           ; $5ba3: $00
    rst $38                                       ; $5ba4: $ff
    dec bc                                        ; $5ba5: $0b
    inc bc                                        ; $5ba6: $03
    ld a, [$f506]                                 ; $5ba7: $fa $06 $f5
    rst $38                                       ; $5baa: $ff
    ldh a, [$f6]                                  ; $5bab: $f0 $f6
    ldh a, [$fe]                                  ; $5bad: $f0 $fe
    ldh a, [rTIMA]                                ; $5baf: $f0 $05
    ld [bc], a                                    ; $5bb1: $02
    ld h, b                                       ; $5bb2: $60
    adc [hl]                                      ; $5bb3: $8e
    db $fc                                        ; $5bb4: $fc
    sbc h                                         ; $5bb5: $9c
    cp [hl]                                       ; $5bb6: $be
    jp nz, $c1bf                                  ; $5bb7: $c2 $bf $c1

    ld d, a                                       ; $5bba: $57
    ld l, b                                       ; $5bbb: $68
    inc sp                                        ; $5bbc: $33
    inc a                                         ; $5bbd: $3c
    ld c, $0d                                     ; $5bbe: $0e $0d
    ld [bc], a                                    ; $5bc0: $02
    inc bc                                        ; $5bc1: $03
    ld [bc], a                                    ; $5bc2: $02
    ld bc, $0d02                                  ; $5bc3: $01 $02 $0d
    add h                                         ; $5bc6: $84
    ld [de], a                                    ; $5bc7: $12
    rra                                           ; $5bc8: $1f
    ld e, $13                                     ; $5bc9: $1e $13
    ld [bc], a                                    ; $5bcb: $02
    rrca                                          ; $5bcc: $0f
    add h                                         ; $5bcd: $84
    inc bc                                        ; $5bce: $03
    ld [bc], a                                    ; $5bcf: $02
    inc bc                                        ; $5bd0: $03
    ld [bc], a                                    ; $5bd1: $02
    ld [bc], a                                    ; $5bd2: $02
    ld bc, $0006                                  ; $5bd3: $01 $06 $00
    ld [bc], a                                    ; $5bd6: $02
    add b                                         ; $5bd7: $80
    sub d                                         ; $5bd8: $92
    ld b, b                                       ; $5bd9: $40
    ret nz                                        ; $5bda: $c0

    ldh [rNR41], a                                ; $5bdb: $e0 $20
    di                                            ; $5bdd: $f3
    inc de                                        ; $5bde: $13
    cp a                                          ; $5bdf: $bf
    ld e, a                                       ; $5be0: $5f
    ld [hl], a                                    ; $5be1: $77
    cp b                                          ; $5be2: $b8
    rst $18                                       ; $5be3: $df
    ld a, [c]                                     ; $5be4: $f2
    ld [hl], l                                    ; $5be5: $75
    sbc d                                         ; $5be6: $9a
    rst $38                                       ; $5be7: $ff
    add hl, bc                                    ; $5be8: $09
    halt                                          ; $5be9: $76
    sub [hl]                                      ; $5bea: $96
    inc bc                                        ; $5beb: $03
    ldh [$81], a                                  ; $5bec: $e0 $81
    and b                                         ; $5bee: $a0
    ld [bc], a                                    ; $5bef: $02
    ld b, b                                       ; $5bf0: $40
    inc c                                         ; $5bf1: $0c
    nop                                           ; $5bf2: $00
    ld [bc], a                                    ; $5bf3: $02
    ld b, b                                       ; $5bf4: $40
    adc d                                         ; $5bf5: $8a
    jr nc, jr_0e6_5c68                            ; $5bf6: $30 $70

    ld l, b                                       ; $5bf8: $68
    ld e, b                                       ; $5bf9: $58
    ld a, b                                       ; $5bfa: $78
    ld c, b                                       ; $5bfb: $48
    ld e, [hl]                                    ; $5bfc: $5e
    ld h, [hl]                                    ; $5bfd: $66
    daa                                           ; $5bfe: $27
    add hl, sp                                    ; $5bff: $39
    ld [bc], a                                    ; $5c00: $02
    ld e, $06                                     ; $5c01: $1e $06
    nop                                           ; $5c03: $00
    rst $38                                       ; $5c04: $ff
    dec bc                                        ; $5c05: $0b
    inc bc                                        ; $5c06: $03
    ld a, [$f506]                                 ; $5c07: $fa $06 $f5
    rst $38                                       ; $5c0a: $ff
    xor $f4                                       ; $5c0b: $ee $f4
    pop af                                        ; $5c0d: $f1
    db $fc                                        ; $5c0e: $fc
    db $f4                                        ; $5c0f: $f4
    inc b                                         ; $5c10: $04
    ld [bc], a                                    ; $5c11: $02
    ld [$1c90], sp                                ; $5c12: $08 $90 $1c
    inc d                                         ; $5c15: $14
    ld h, $3a                                     ; $5c16: $26 $3a
    cpl                                           ; $5c18: $2f
    ld sp, $3c23                                  ; $5c19: $31 $23 $3c
    rla                                           ; $5c1c: $17
    jr jr_0e6_5c28                                ; $5c1d: $18 $09

    ld c, $07                                     ; $5c1f: $0e $07
    inc b                                         ; $5c21: $04
    dec b                                         ; $5c22: $05
    ld b, $02                                     ; $5c23: $06 $02
    inc bc                                        ; $5c25: $03
    ld [bc], a                                    ; $5c26: $02
    nop                                           ; $5c27: $00

jr_0e6_5c28:
    ld [bc], a                                    ; $5c28: $02
    inc bc                                        ; $5c29: $03
    add c                                         ; $5c2a: $81
    inc b                                         ; $5c2b: $04
    ld [bc], a                                    ; $5c2c: $02
    rlca                                          ; $5c2d: $07
    add c                                         ; $5c2e: $81
    inc b                                         ; $5c2f: $04
    ld [bc], a                                    ; $5c30: $02
    inc bc                                        ; $5c31: $03
    ld [bc], a                                    ; $5c32: $02
    nop                                           ; $5c33: $00
    ld [bc], a                                    ; $5c34: $02
    add b                                         ; $5c35: $80
    sbc d                                         ; $5c36: $9a
    ret nz                                        ; $5c37: $c0

    ld b, b                                       ; $5c38: $40
    ld h, b                                       ; $5c39: $60
    and b                                         ; $5c3a: $a0
    ldh a, [rNR10]                                ; $5c3b: $f0 $10
    add sp, $18                                   ; $5c3d: $e8 $18
    ld a, b                                       ; $5c3f: $78
    adc b                                         ; $5c40: $88
    cpl                                           ; $5c41: $2f
    rst $10                                       ; $5c42: $d7
    db $dd                                        ; $5c43: $dd
    xor $77                                       ; $5c44: $ee $77
    ld a, h                                       ; $5c46: $7c
    sbc l                                         ; $5c47: $9d
    and $bf                                       ; $5c48: $e6 $bf
    jp nz, $e5dd                                  ; $5c4a: $c2 $dd $e5

    ld hl, sp-$48                                 ; $5c4d: $f8 $b8
    ld hl, sp-$58                                 ; $5c4f: $f8 $a8
    ld [bc], a                                    ; $5c51: $02
    ld d, b                                       ; $5c52: $50
    ld [bc], a                                    ; $5c53: $02
    nop                                           ; $5c54: $00
    ld [bc], a                                    ; $5c55: $02
    ld b, $8e                                     ; $5c56: $06 $8e
    ld e, $1a                                     ; $5c58: $1e $1a
    ld l, d                                       ; $5c5a: $6a
    halt                                          ; $5c5b: $76
    db $fc                                        ; $5c5c: $fc
    call nz, $2cf4                                ; $5c5d: $c4 $f4 $2c
    ld hl, sp-$48                                 ; $5c60: $f8 $b8
    ld h, b                                       ; $5c62: $60
    and b                                         ; $5c63: $a0
    ret nz                                        ; $5c64: $c0

    ld b, b                                       ; $5c65: $40
    ld [bc], a                                    ; $5c66: $02
    add b                                         ; $5c67: $80

jr_0e6_5c68:
    ld c, $00                                     ; $5c68: $0e $00
    rst $38                                       ; $5c6a: $ff
    add hl, bc                                    ; $5c6b: $09
    ld [bc], a                                    ; $5c6c: $02
    ld a, [$f506]                                 ; $5c6d: $fa $06 $f5

jr_0e6_5c70:
    rst $38                                       ; $5c70: $ff
    rst $30                                       ; $5c71: $f7
    ld sp, hl                                     ; $5c72: $f9
    rst $30                                       ; $5c73: $f7
    rst $38                                       ; $5c74: $ff
    ld [bc], a                                    ; $5c75: $02
    inc bc                                        ; $5c76: $03
    sbc b                                         ; $5c77: $98
    dec b                                         ; $5c78: $05
    ld b, $0b                                     ; $5c79: $06 $0b
    inc c                                         ; $5c7b: $0c
    ld a, e                                       ; $5c7c: $7b
    ld a, h                                       ; $5c7d: $7c
    sub a                                         ; $5c7e: $97
    ld hl, sp-$0d                                 ; $5c7f: $f8 $f3
    sbc h                                         ; $5c81: $9c
    halt                                          ; $5c82: $76
    ld a, c                                       ; $5c83: $79
    rla                                           ; $5c84: $17
    add hl, de                                    ; $5c85: $19
    rra                                           ; $5c86: $1f
    inc de                                        ; $5c87: $13
    cpl                                           ; $5c88: $2f
    inc sp                                        ; $5c89: $33
    dec a                                         ; $5c8a: $3d
    dec h                                         ; $5c8b: $25
    inc l                                         ; $5c8c: $2c
    inc [hl]                                      ; $5c8d: $34
    jr c, jr_0e6_5cb8                             ; $5c8e: $38 $28

    ld [bc], a                                    ; $5c90: $02
    db $10                                        ; $5c91: $10
    inc b                                         ; $5c92: $04
    nop                                           ; $5c93: $00
    ld [bc], a                                    ; $5c94: $02
    ld e, $88                                     ; $5c95: $1e $88
    cpl                                           ; $5c97: $2f
    ld sp, $253f                                  ; $5c98: $31 $3f $25
    dec hl                                        ; $5c9b: $2b
    dec [hl]                                      ; $5c9c: $35
    ld a, $32                                     ; $5c9d: $3e $32
    inc bc                                        ; $5c9f: $03
    inc a                                         ; $5ca0: $3c
    adc c                                         ; $5ca1: $89
    inc h                                         ; $5ca2: $24
    jr jr_0e6_5ccd                                ; $5ca3: $18 $28

    jr jr_0e6_5ccf                                ; $5ca5: $18 $28

    jr c, jr_0e6_5cb1                             ; $5ca7: $38 $08

    jr nc, jr_0e6_5cbb                            ; $5ca9: $30 $10

    ld [bc], a                                    ; $5cab: $02
    jr nz, jr_0e6_5cb6                            ; $5cac: $20 $08

    nop                                           ; $5cae: $00
    rst $38                                       ; $5caf: $ff
    add hl, bc                                    ; $5cb0: $09

jr_0e6_5cb1:
    ld [bc], a                                    ; $5cb1: $02

jr_0e6_5cb2:
    ld a, [$f506]                                 ; $5cb2: $fa $06 $f5
    rst $38                                       ; $5cb5: $ff

jr_0e6_5cb6:
    rst $30                                       ; $5cb6: $f7
    ld sp, hl                                     ; $5cb7: $f9

jr_0e6_5cb8:
    rst $30                                       ; $5cb8: $f7
    rst $38                                       ; $5cb9: $ff
    ld [bc], a                                    ; $5cba: $02

jr_0e6_5cbb:
    inc bc                                        ; $5cbb: $03
    sbc b                                         ; $5cbc: $98
    rlca                                          ; $5cbd: $07
    inc b                                         ; $5cbe: $04
    add hl, bc                                    ; $5cbf: $09
    ld c, $7f                                     ; $5cc0: $0e $7f
    ld a, b                                       ; $5cc2: $78
    sub a                                         ; $5cc3: $97
    ld hl, sp-$0d                                 ; $5cc4: $f8 $f3
    sbc h                                         ; $5cc6: $9c
    halt                                          ; $5cc7: $76
    ld a, c                                       ; $5cc8: $79
    rra                                           ; $5cc9: $1f
    ld de, $1d13                                  ; $5cca: $11 $13 $1d

jr_0e6_5ccd:
    rla                                           ; $5ccd: $17
    add hl, de                                    ; $5cce: $19

jr_0e6_5ccf:
    rra                                           ; $5ccf: $1f
    ld de, $1b17                                  ; $5cd0: $11 $17 $1b
    inc e                                         ; $5cd3: $1c
    inc d                                         ; $5cd4: $14
    ld [bc], a                                    ; $5cd5: $02
    ld [$0004], sp                                ; $5cd6: $08 $04 $00
    ld [bc], a                                    ; $5cd9: $02
    ld e, $88                                     ; $5cda: $1e $88
    cpl                                           ; $5cdc: $2f
    ld sp, $253f                                  ; $5cdd: $31 $3f $25
    dec hl                                        ; $5ce0: $2b
    dec [hl]                                      ; $5ce1: $35
    ld a, $32                                     ; $5ce2: $3e $32
    ld [bc], a                                    ; $5ce4: $02
    inc a                                         ; $5ce5: $3c
    add e                                         ; $5ce6: $83
    jr c, jr_0e6_5d11                             ; $5ce7: $38 $28

    db $10                                        ; $5ce9: $10
    ld [bc], a                                    ; $5cea: $02
    jr nc, jr_0e6_5c70                            ; $5ceb: $30 $83

    db $10                                        ; $5ced: $10
    jr nc, jr_0e6_5d00                            ; $5cee: $30 $10

    ld [bc], a                                    ; $5cf0: $02
    jr nz, jr_0e6_5cfd                            ; $5cf1: $20 $0a

    nop                                           ; $5cf3: $00
    rst $38                                       ; $5cf4: $ff
    add hl, bc                                    ; $5cf5: $09
    ld [bc], a                                    ; $5cf6: $02
    ld a, [$f506]                                 ; $5cf7: $fa $06 $f5
    rst $38                                       ; $5cfa: $ff
    rst $30                                       ; $5cfb: $f7
    ld sp, hl                                     ; $5cfc: $f9

jr_0e6_5cfd:
    rst $30                                       ; $5cfd: $f7
    rst $38                                       ; $5cfe: $ff
    ld [bc], a                                    ; $5cff: $02

jr_0e6_5d00:
    inc bc                                        ; $5d00: $03
    sbc b                                         ; $5d01: $98
    ld b, $05                                     ; $5d02: $06 $05
    dec de                                        ; $5d04: $1b
    inc e                                         ; $5d05: $1c
    ld [hl], a                                    ; $5d06: $77
    ld a, b                                       ; $5d07: $78
    sub e                                         ; $5d08: $93
    db $fc                                        ; $5d09: $fc
    rst $30                                       ; $5d0a: $f7
    sbc b                                         ; $5d0b: $98
    ld a, [hl]                                    ; $5d0c: $7e
    ld [hl], c                                    ; $5d0d: $71
    rla                                           ; $5d0e: $17
    add hl, de                                    ; $5d0f: $19
    inc de                                        ; $5d10: $13

jr_0e6_5d11:
    dec e                                         ; $5d11: $1d
    rla                                           ; $5d12: $17
    add hl, de                                    ; $5d13: $19
    dec bc                                        ; $5d14: $0b
    dec c                                         ; $5d15: $0d
    dec bc                                        ; $5d16: $0b
    dec c                                         ; $5d17: $0d
    ld c, $0a                                     ; $5d18: $0e $0a
    ld [bc], a                                    ; $5d1a: $02
    inc b                                         ; $5d1b: $04
    inc b                                         ; $5d1c: $04
    nop                                           ; $5d1d: $00
    ld [bc], a                                    ; $5d1e: $02

jr_0e6_5d1f:
    ld e, $88                                     ; $5d1f: $1e $88
    cpl                                           ; $5d21: $2f
    ld sp, $253f                                  ; $5d22: $31 $3f $25
    dec hl                                        ; $5d25: $2b
    dec [hl]                                      ; $5d26: $35
    ld a, $32                                     ; $5d27: $3e $32
    ld [bc], a                                    ; $5d29: $02
    inc a                                         ; $5d2a: $3c
    ld [bc], a                                    ; $5d2b: $02
    jr nc, jr_0e6_5cb2                            ; $5d2c: $30 $84

    db $10                                        ; $5d2e: $10
    jr nc, jr_0e6_5d41                            ; $5d2f: $30 $10

    jr nc, jr_0e6_5d35                            ; $5d31: $30 $02

    jr nz, jr_0e6_5d41                            ; $5d33: $20 $0c

jr_0e6_5d35:
    nop                                           ; $5d35: $00
    rst $38                                       ; $5d36: $ff
    add hl, bc                                    ; $5d37: $09
    ld [bc], a                                    ; $5d38: $02
    ld a, [$f506]                                 ; $5d39: $fa $06 $f5
    rst $38                                       ; $5d3c: $ff
    rst $30                                       ; $5d3d: $f7
    ld sp, hl                                     ; $5d3e: $f9
    rst $30                                       ; $5d3f: $f7
    rst $38                                       ; $5d40: $ff

jr_0e6_5d41:
    ld [bc], a                                    ; $5d41: $02
    rlca                                          ; $5d42: $07
    sub h                                         ; $5d43: $94
    dec bc                                        ; $5d44: $0b
    dec c                                         ; $5d45: $0d
    rla                                           ; $5d46: $17
    add hl, de                                    ; $5d47: $19
    ld [hl], a                                    ; $5d48: $77
    ld a, c                                       ; $5d49: $79
    cp [hl]                                       ; $5d4a: $be
    db $e3                                        ; $5d4b: $e3
    rst $28                                       ; $5d4c: $ef
    or d                                          ; $5d4d: $b2
    ld a, a                                       ; $5d4e: $7f
    ld h, l                                       ; $5d4f: $65
    ld c, [hl]                                    ; $5d50: $4e
    halt                                          ; $5d51: $76
    ld a, h                                       ; $5d52: $7c
    ld b, h                                       ; $5d53: $44
    ld e, b                                       ; $5d54: $58
    ld l, b                                       ; $5d55: $68
    ld [hl], b                                    ; $5d56: $70
    ld d, b                                       ; $5d57: $50
    ld [bc], a                                    ; $5d58: $02
    jr nz, jr_0e6_5d63                            ; $5d59: $20 $08

    nop                                           ; $5d5b: $00
    ld [bc], a                                    ; $5d5c: $02
    ld e, $88                                     ; $5d5d: $1e $88
    cpl                                           ; $5d5f: $2f
    ld sp, $253f                                  ; $5d60: $31 $3f $25

jr_0e6_5d63:
    dec hl                                        ; $5d63: $2b
    dec [hl]                                      ; $5d64: $35
    ld a, $32                                     ; $5d65: $3e $32
    ld [bc], a                                    ; $5d67: $02
    inc a                                         ; $5d68: $3c
    adc b                                         ; $5d69: $88
    inc l                                         ; $5d6a: $2c
    inc [hl]                                      ; $5d6b: $34
    inc l                                         ; $5d6c: $2c
    inc [hl]                                      ; $5d6d: $34
    jr c, jr_0e6_5d98                             ; $5d6e: $38 $28

    jr c, jr_0e6_5d9a                             ; $5d70: $38 $28

    ld [bc], a                                    ; $5d72: $02
    db $10                                        ; $5d73: $10
    ld a, [bc]                                    ; $5d74: $0a
    nop                                           ; $5d75: $00
    rst $38                                       ; $5d76: $ff
    add hl, bc                                    ; $5d77: $09
    ld [bc], a                                    ; $5d78: $02
    ld a, [$f506]                                 ; $5d79: $fa $06 $f5
    rst $38                                       ; $5d7c: $ff
    push af                                       ; $5d7d: $f5
    ld hl, sp-$0b                                 ; $5d7e: $f8 $f5

jr_0e6_5d80:
    rst $38                                       ; $5d80: $ff
    ld [bc], a                                    ; $5d81: $02
    inc c                                         ; $5d82: $0c
    sub d                                         ; $5d83: $92
    rla                                           ; $5d84: $17
    dec de                                        ; $5d85: $1b
    cpl                                           ; $5d86: $2f
    jr nc, @+$39                                  ; $5d87: $30 $37

    ld a, [hl+]                                   ; $5d89: $2a
    ld c, l                                       ; $5d8a: $4d
    ld [hl], a                                    ; $5d8b: $77
    cp e                                          ; $5d8c: $bb
    call z, $dcbb                                 ; $5d8d: $cc $bb $dc
    db $fd                                        ; $5d90: $fd
    cp [hl]                                       ; $5d91: $be
    ld c, a                                       ; $5d92: $4f
    ld c, e                                       ; $5d93: $4b
    rrca                                          ; $5d94: $0f
    ld a, [bc]                                    ; $5d95: $0a
    ld [bc], a                                    ; $5d96: $02
    dec b                                         ; $5d97: $05

jr_0e6_5d98:
    ld a, [bc]                                    ; $5d98: $0a
    nop                                           ; $5d99: $00

jr_0e6_5d9a:
    ld [bc], a                                    ; $5d9a: $02
    jr jr_0e6_5d1f                                ; $5d9b: $18 $82

    inc l                                         ; $5d9d: $2c
    inc [hl]                                      ; $5d9e: $34
    ld [bc], a                                    ; $5d9f: $02
    ld a, [hl]                                    ; $5da0: $7e
    adc h                                         ; $5da1: $8c
    cpl                                           ; $5da2: $2f
    ld [hl], c                                    ; $5da3: $71
    ld a, a                                       ; $5da4: $7f
    ld h, l                                       ; $5da5: $65
    ld l, e                                       ; $5da6: $6b
    dec [hl]                                      ; $5da7: $35
    ld e, a                                       ; $5da8: $5f
    inc sp                                        ; $5da9: $33
    ld l, a                                       ; $5daa: $6f
    dec l                                         ; $5dab: $2d
    ld b, l                                       ; $5dac: $45
    ld b, a                                       ; $5dad: $47
    ld [bc], a                                    ; $5dae: $02
    ld b, d                                       ; $5daf: $42
    inc c                                         ; $5db0: $0c
    nop                                           ; $5db1: $00
    rst $38                                       ; $5db2: $ff
    dec bc                                        ; $5db3: $0b
    inc bc                                        ; $5db4: $03
    ld a, [$f506]                                 ; $5db5: $fa $06 $f5
    rst $38                                       ; $5db8: $ff
    di                                            ; $5db9: $f3
    di                                            ; $5dba: $f3
    di                                            ; $5dbb: $f3
    ei                                            ; $5dbc: $fb
    di                                            ; $5dbd: $f3
    ld bc, $3e02                                  ; $5dbe: $01 $02 $3e
    add [hl]                                      ; $5dc1: $86
    ld a, a                                       ; $5dc2: $7f
    ld b, c                                       ; $5dc3: $41
    sub a                                         ; $5dc4: $97
    add sp, $75                                   ; $5dc5: $e8 $75
    ld a, d                                       ; $5dc7: $7a
    ld [bc], a                                    ; $5dc8: $02
    rrca                                          ; $5dc9: $0f
    ld [bc], a                                    ; $5dca: $02
    inc bc                                        ; $5dcb: $03
    add h                                         ; $5dcc: $84
    ld b, $05                                     ; $5dcd: $06 $05
    rlca                                          ; $5dcf: $07
    inc b                                         ; $5dd0: $04
    ld [bc], a                                    ; $5dd1: $02

jr_0e6_5dd2:
    inc bc                                        ; $5dd2: $03
    stop                                          ; $5dd3: $10 $00
    ld [bc], a                                    ; $5dd5: $02
    add b                                         ; $5dd6: $80
    sub b                                         ; $5dd7: $90
    ldh a, [rSVBK]                                ; $5dd8: $f0 $70
    ld a, l                                       ; $5dda: $7d
    adc l                                         ; $5ddb: $8d
    ld c, a                                       ; $5ddc: $4f
    or e                                          ; $5ddd: $b3
    or $ff                                        ; $5dde: $f6 $ff
    rst $18                                       ; $5de0: $df
    ld [c], a                                     ; $5de1: $e2
    ld a, d                                       ; $5de2: $7a
    rst $20                                       ; $5de3: $e7
    rst $38                                       ; $5de4: $ff
    rst $18                                       ; $5de5: $df
    cp h                                          ; $5de6: $bc
    call nc, Call_0e6_6802                        ; $5de7: $d4 $02 $68
    ld a, [bc]                                    ; $5dea: $0a
    nop                                           ; $5deb: $00
    ld [bc], a                                    ; $5dec: $02
    inc bc                                        ; $5ded: $03
    add [hl]                                      ; $5dee: $86
    rra                                           ; $5def: $1f
    dec e                                         ; $5df0: $1d
    ld a, [hl-]                                   ; $5df1: $3a
    ld h, $34                                     ; $5df2: $26 $34
    inc c                                         ; $5df4: $0c
    ld [bc], a                                    ; $5df5: $02
    jr c, jr_0e6_5d80                             ; $5df6: $38 $88

    inc a                                         ; $5df8: $3c
    inc b                                         ; $5df9: $04
    inc a                                         ; $5dfa: $3c
    inc d                                         ; $5dfb: $14
    inc l                                         ; $5dfc: $2c
    inc d                                         ; $5dfd: $14
    jr c, @+$0a                                   ; $5dfe: $38 $08

    ld [bc], a                                    ; $5e00: $02
    jr nc, jr_0e6_5e0f                            ; $5e01: $30 $0c

    nop                                           ; $5e03: $00
    rst $38                                       ; $5e04: $ff
    dec bc                                        ; $5e05: $0b
    inc bc                                        ; $5e06: $03
    ld a, [$f506]                                 ; $5e07: $fa $06 $f5
    rst $38                                       ; $5e0a: $ff
    db $f4                                        ; $5e0b: $f4
    di                                            ; $5e0c: $f3
    db $f4                                        ; $5e0d: $f4
    ei                                            ; $5e0e: $fb

jr_0e6_5e0f:
    db $f4                                        ; $5e0f: $f4
    ld bc, $3c02                                  ; $5e10: $01 $02 $3c
    add [hl]                                      ; $5e13: $86
    ld a, a                                       ; $5e14: $7f
    ld b, e                                       ; $5e15: $43
    adc e                                         ; $5e16: $8b
    db $f4                                        ; $5e17: $f4
    ld h, c                                       ; $5e18: $61
    ld a, [hl]                                    ; $5e19: $7e
    ld [bc], a                                    ; $5e1a: $02
    rra                                           ; $5e1b: $1f
    ld [bc], a                                    ; $5e1c: $02
    inc bc                                        ; $5e1d: $03
    add h                                         ; $5e1e: $84
    ld b, $05                                     ; $5e1f: $06 $05
    rlca                                          ; $5e21: $07
    inc b                                         ; $5e22: $04
    ld [bc], a                                    ; $5e23: $02

jr_0e6_5e24:
    inc bc                                        ; $5e24: $03
    stop                                          ; $5e25: $10 $00
    ld [bc], a                                    ; $5e27: $02
    add b                                         ; $5e28: $80
    sub b                                         ; $5e29: $90
    ldh [$60], a                                  ; $5e2a: $e0 $60
    ld a, l                                       ; $5e2c: $7d
    sbc l                                         ; $5e2d: $9d
    rra                                           ; $5e2e: $1f
    db $e3                                        ; $5e2f: $e3
    or $ff                                        ; $5e30: $f6 $ff
    rst $18                                       ; $5e32: $df
    ld [c], a                                     ; $5e33: $e2
    ld l, [hl]                                    ; $5e34: $6e
    di                                            ; $5e35: $f3
    rst $38                                       ; $5e36: $ff
    rst $18                                       ; $5e37: $df
    cp h                                          ; $5e38: $bc
    call nc, Call_0e6_6802                        ; $5e39: $d4 $02 $68
    ld a, [bc]                                    ; $5e3c: $0a
    nop                                           ; $5e3d: $00
    ld [bc], a                                    ; $5e3e: $02
    inc bc                                        ; $5e3f: $03
    add [hl]                                      ; $5e40: $86
    rra                                           ; $5e41: $1f
    dec e                                         ; $5e42: $1d
    ld a, [hl-]                                   ; $5e43: $3a
    ld h, $24                                     ; $5e44: $26 $24
    inc e                                         ; $5e46: $1c
    ld [bc], a                                    ; $5e47: $02
    jr c, jr_0e6_5dd2                             ; $5e48: $38 $88

    inc a                                         ; $5e4a: $3c
    inc b                                         ; $5e4b: $04
    inc a                                         ; $5e4c: $3c
    inc d                                         ; $5e4d: $14
    inc l                                         ; $5e4e: $2c
    inc d                                         ; $5e4f: $14
    jr c, @+$0a                                   ; $5e50: $38 $08

    ld [bc], a                                    ; $5e52: $02
    jr nc, jr_0e6_5e61                            ; $5e53: $30 $0c

    nop                                           ; $5e55: $00
    rst $38                                       ; $5e56: $ff
    dec bc                                        ; $5e57: $0b
    inc bc                                        ; $5e58: $03
    ld a, [$f506]                                 ; $5e59: $fa $06 $f5
    rst $38                                       ; $5e5c: $ff
    di                                            ; $5e5d: $f3
    di                                            ; $5e5e: $f3
    di                                            ; $5e5f: $f3
    ei                                            ; $5e60: $fb

jr_0e6_5e61:
    di                                            ; $5e61: $f3
    ld bc, $3c02                                  ; $5e62: $01 $02 $3c
    add [hl]                                      ; $5e65: $86
    ld a, a                                       ; $5e66: $7f
    ld b, e                                       ; $5e67: $43
    add e                                         ; $5e68: $83
    db $fc                                        ; $5e69: $fc
    ld [hl], c                                    ; $5e6a: $71
    ld a, [hl]                                    ; $5e6b: $7e
    ld [bc], a                                    ; $5e6c: $02
    rrca                                          ; $5e6d: $0f
    ld [bc], a                                    ; $5e6e: $02
    inc bc                                        ; $5e6f: $03
    add h                                         ; $5e70: $84
    ld b, $05                                     ; $5e71: $06 $05
    rlca                                          ; $5e73: $07
    inc b                                         ; $5e74: $04
    ld [bc], a                                    ; $5e75: $02
    inc bc                                        ; $5e76: $03
    stop                                          ; $5e77: $10 $00
    ld [bc], a                                    ; $5e79: $02
    add b                                         ; $5e7a: $80
    sub b                                         ; $5e7b: $90
    ldh a, [rSVBK]                                ; $5e7c: $f0 $70
    ld a, l                                       ; $5e7e: $7d
    adc l                                         ; $5e7f: $8d
    ld c, a                                       ; $5e80: $4f
    or e                                          ; $5e81: $b3
    or $ff                                        ; $5e82: $f6 $ff
    rst $18                                       ; $5e84: $df
    ld [c], a                                     ; $5e85: $e2
    ld l, [hl]                                    ; $5e86: $6e
    di                                            ; $5e87: $f3
    rst $38                                       ; $5e88: $ff
    rst $18                                       ; $5e89: $df
    cp h                                          ; $5e8a: $bc
    call nc, Call_0e6_6802                        ; $5e8b: $d4 $02 $68
    ld a, [bc]                                    ; $5e8e: $0a
    nop                                           ; $5e8f: $00
    ld [bc], a                                    ; $5e90: $02
    inc bc                                        ; $5e91: $03
    add [hl]                                      ; $5e92: $86
    rra                                           ; $5e93: $1f
    dec e                                         ; $5e94: $1d
    ld a, [hl-]                                   ; $5e95: $3a
    ld h, $24                                     ; $5e96: $26 $24
    inc e                                         ; $5e98: $1c
    ld [bc], a                                    ; $5e99: $02
    jr c, jr_0e6_5e24                             ; $5e9a: $38 $88

    inc a                                         ; $5e9c: $3c
    inc b                                         ; $5e9d: $04
    inc a                                         ; $5e9e: $3c
    inc d                                         ; $5e9f: $14
    inc l                                         ; $5ea0: $2c
    inc d                                         ; $5ea1: $14
    jr c, @+$0a                                   ; $5ea2: $38 $08

    ld [bc], a                                    ; $5ea4: $02
    jr nc, jr_0e6_5eb3                            ; $5ea5: $30 $0c

    nop                                           ; $5ea7: $00
    rst $38                                       ; $5ea8: $ff

jr_0e6_5ea9:
    dec bc                                        ; $5ea9: $0b
    inc bc                                        ; $5eaa: $03
    ld a, [$f506]                                 ; $5eab: $fa $06 $f5
    rst $38                                       ; $5eae: $ff
    di                                            ; $5eaf: $f3
    di                                            ; $5eb0: $f3
    di                                            ; $5eb1: $f3
    ei                                            ; $5eb2: $fb

jr_0e6_5eb3:
    di                                            ; $5eb3: $f3
    inc bc                                        ; $5eb4: $03
    inc b                                         ; $5eb5: $04
    nop                                           ; $5eb6: $00
    inc b                                         ; $5eb7: $04
    ld bc, $0382                                  ; $5eb8: $01 $82 $03
    ld [bc], a                                    ; $5ebb: $02
    ld [bc], a                                    ; $5ebc: $02
    ld bc, $0e88                                  ; $5ebd: $01 $88 $0e
    rrca                                          ; $5ec0: $0f
    dec [hl]                                      ; $5ec1: $35
    ld a, [hl-]                                   ; $5ec2: $3a
    ld c, e                                       ; $5ec3: $4b
    ld [hl], h                                    ; $5ec4: $74
    rst $38                                       ; $5ec5: $ff
    add e                                         ; $5ec6: $83
    ld [bc], a                                    ; $5ec7: $02
    ld a, h                                       ; $5ec8: $7c
    inc c                                         ; $5ec9: $0c
    nop                                           ; $5eca: $00
    ld [bc], a                                    ; $5ecb: $02
    ret nz                                        ; $5ecc: $c0

    adc [hl]                                      ; $5ecd: $8e
    or e                                          ; $5ece: $b3
    ld [hl], e                                    ; $5ecf: $73
    sbc $2f                                       ; $5ed0: $de $2f
    ld [hl], a                                    ; $5ed2: $77
    ld sp, hl                                     ; $5ed3: $f9
    sbc $ef                                       ; $5ed4: $de $ef
    or l                                          ; $5ed6: $b5
    ld e, [hl]                                    ; $5ed7: $5e
    db $fd                                        ; $5ed8: $fd
    ccf                                           ; $5ed9: $3f
    jp Jump_000_02c2                              ; $5eda: $c3 $c2 $02


    ld bc, $000c                                  ; $5edd: $01 $0c $00
    ld [bc], a                                    ; $5ee0: $02
    ld e, $86                                     ; $5ee1: $1e $86
    db $eb                                        ; $5ee3: $eb
    push af                                       ; $5ee4: $f5
    ld e, [hl]                                    ; $5ee5: $5e
    and d                                         ; $5ee6: $a2
    db $fc                                        ; $5ee7: $fc
    inc e                                         ; $5ee8: $1c
    ld [bc], a                                    ; $5ee9: $02
    ldh [$88], a                                  ; $5eea: $e0 $88
    ld b, b                                       ; $5eec: $40
    ret nz                                        ; $5eed: $c0

    ldh [rNR41], a                                ; $5eee: $e0 $20
    ldh [$a0], a                                  ; $5ef0: $e0 $a0
    ld h, b                                       ; $5ef2: $60
    and b                                         ; $5ef3: $a0
    ld [bc], a                                    ; $5ef4: $02
    ret nz                                        ; $5ef5: $c0

    inc c                                         ; $5ef6: $0c
    nop                                           ; $5ef7: $00
    rst $38                                       ; $5ef8: $ff
    dec c                                         ; $5ef9: $0d
    inc b                                         ; $5efa: $04
    ld a, [$f506]                                 ; $5efb: $fa $06 $f5
    rst $38                                       ; $5efe: $ff
    db $f4                                        ; $5eff: $f4
    ld a, [c]                                     ; $5f00: $f2
    db $f4                                        ; $5f01: $f4
    ld a, [$02f4]                                 ; $5f02: $fa $f4 $02
    db $f4                                        ; $5f05: $f4
    inc b                                         ; $5f06: $04
    ld a, [bc]                                    ; $5f07: $0a
    nop                                           ; $5f08: $00
    ld [bc], a                                    ; $5f09: $02
    rlca                                          ; $5f0a: $07
    adc b                                         ; $5f0b: $88
    ld a, [hl-]                                   ; $5f0c: $3a
    dec a                                         ; $5f0d: $3d
    ld c, e                                       ; $5f0e: $4b
    ld [hl], h                                    ; $5f0f: $74
    ld e, a                                       ; $5f10: $5f
    ld h, b                                       ; $5f11: $60
    rst $38                                       ; $5f12: $ff
    add c                                         ; $5f13: $81
    ld [bc], a                                    ; $5f14: $02
    ld a, [hl]                                    ; $5f15: $7e
    ld c, $00                                     ; $5f16: $0e $00
    ld [bc], a                                    ; $5f18: $02
    jr c, jr_0e6_5ea9                             ; $5f19: $38 $8e

    inc a                                         ; $5f1b: $3c
    inc h                                         ; $5f1c: $24
    ld e, a                                       ; $5f1d: $5f
    ld a, a                                       ; $5f1e: $7f
    ld a, [$27fd]                                 ; $5f1f: $fa $fd $27
    call c, $46bd                                 ; $5f22: $dc $bd $46
    rst $38                                       ; $5f25: $ff
    rra                                           ; $5f26: $1f
    rst $28                                       ; $5f27: $ef
    db $eb                                        ; $5f28: $eb
    ld [bc], a                                    ; $5f29: $02
    dec b                                         ; $5f2a: $05
    ld a, [bc]                                    ; $5f2b: $0a
    nop                                           ; $5f2c: $00
    ld [bc], a                                    ; $5f2d: $02
    rlca                                          ; $5f2e: $07
    sub [hl]                                      ; $5f2f: $96
    add hl, de                                    ; $5f30: $19
    ld e, $67                                     ; $5f31: $1e $67
    ld a, b                                       ; $5f33: $78
    cp a                                          ; $5f34: $bf
    jp $ac5c                                      ; $5f35: $c3 $5c $ac


    ldh a, [$90]                                  ; $5f38: $f0 $90
    ld h, b                                       ; $5f3a: $60
    ldh [$f0], a                                  ; $5f3b: $e0 $f0
    ld [hl], b                                    ; $5f3d: $70
    ld hl, sp-$78                                 ; $5f3e: $f8 $88
    ld a, h                                       ; $5f40: $7c
    adc h                                         ; $5f41: $8c
    ld l, h                                       ; $5f42: $6c
    db $f4                                        ; $5f43: $f4
    ret c                                         ; $5f44: $d8

    xor b                                         ; $5f45: $a8
    ld [bc], a                                    ; $5f46: $02
    ld [hl], b                                    ; $5f47: $70
    ld [$0200], sp                                ; $5f48: $08 $00 $02
    ld [bc], a                                    ; $5f4b: $02
    add d                                         ; $5f4c: $82
    inc bc                                        ; $5f4d: $03
    ld bc, $0202                                  ; $5f4e: $01 $02 $02
    jr jr_0e6_5f53                                ; $5f51: $18 $00

jr_0e6_5f53:
    rst $38                                       ; $5f53: $ff
    dec bc                                        ; $5f54: $0b
    inc bc                                        ; $5f55: $03
    ld a, [$f506]                                 ; $5f56: $fa $06 $f5
    rst $38                                       ; $5f59: $ff
    pop af                                        ; $5f5a: $f1

jr_0e6_5f5b:
    ld hl, sp-$0e                                 ; $5f5b: $f8 $f2
    nop                                           ; $5f5d: $00
    ld sp, hl                                     ; $5f5e: $f9
    rlca                                          ; $5f5f: $07
    ld [bc], a                                    ; $5f60: $02
    ld a, a                                       ; $5f61: $7f
    adc h                                         ; $5f62: $8c
    call c, Call_0e6_67a3                         ; $5f63: $dc $a3 $67
    ld a, b                                       ; $5f66: $78
    ld a, [de]                                    ; $5f67: $1a
    dec e                                         ; $5f68: $1d
    dec b                                         ; $5f69: $05
    ld b, $04                                     ; $5f6a: $06 $04
    rlca                                          ; $5f6c: $07
    ld [bc], a                                    ; $5f6d: $02
    inc bc                                        ; $5f6e: $03
    ld [bc], a                                    ; $5f6f: $02
    ld bc, $0702                                  ; $5f70: $01 $02 $07
    add d                                         ; $5f73: $82
    ld c, $09                                     ; $5f74: $0e $09
    ld [bc], a                                    ; $5f76: $02
    rrca                                          ; $5f77: $0f
    add h                                         ; $5f78: $84
    rra                                           ; $5f79: $1f
    ld [de], a                                    ; $5f7a: $12
    ld c, $0f                                     ; $5f7b: $0e $0f
    ld [bc], a                                    ; $5f7d: $02
    ld bc, $0382                                  ; $5f7e: $01 $82 $03
    ld [bc], a                                    ; $5f81: $02
    ld [bc], a                                    ; $5f82: $02
    ld bc, $c002                                  ; $5f83: $01 $02 $c0
    sbc d                                         ; $5f86: $9a
    and b                                         ; $5f87: $a0
    ld h, b                                       ; $5f88: $60
    ldh [rNR41], a                                ; $5f89: $e0 $20
    ret nc                                        ; $5f8b: $d0

    jr nc, jr_0e6_5ff6                            ; $5f8c: $30 $68

    sbc b                                         ; $5f8e: $98
    ld hl, sp+$08                                 ; $5f8f: $f8 $08

jr_0e6_5f91:
    jr c, jr_0e6_5f5b                             ; $5f91: $38 $c8

    sub l                                         ; $5f93: $95
    db $ed                                        ; $5f94: $ed
    cp a                                          ; $5f95: $bf
    add $fd                                       ; $5f96: $c6 $fd
    cp $af                                        ; $5f98: $fe $af
    ld [hl], d                                    ; $5f9a: $72
    rst $18                                       ; $5f9b: $df
    ld a, c                                       ; $5f9c: $79
    ld d, a                                       ; $5f9d: $57
    db $eb                                        ; $5f9e: $eb
    rst $28                                       ; $5f9f: $ef
    di                                            ; $5fa0: $f3
    ld [bc], a                                    ; $5fa1: $02
    sbc h                                         ; $5fa2: $9c
    ld [bc], a                                    ; $5fa3: $02
    nop                                           ; $5fa4: $00
    ld [bc], a                                    ; $5fa5: $02
    ld h, b                                       ; $5fa6: $60
    sub b                                         ; $5fa7: $90
    ld e, b                                       ; $5fa8: $58
    jr c, jr_0e6_601f                             ; $5fa9: $38 $74

    inc c                                         ; $5fab: $0c
    ld a, [hl-]                                   ; $5fac: $3a
    ld b, [hl]                                    ; $5fad: $46
    ld c, $72                                     ; $5fae: $0e $72
    ld l, l                                       ; $5fb0: $6d
    ld [hl], e                                    ; $5fb1: $73
    rra                                           ; $5fb2: $1f
    add hl, de                                    ; $5fb3: $19
    rlca                                          ; $5fb4: $07
    dec b                                         ; $5fb5: $05
    rlca                                          ; $5fb6: $07
    dec b                                         ; $5fb7: $05
    ld [bc], a                                    ; $5fb8: $02
    ld [bc], a                                    ; $5fb9: $02
    inc c                                         ; $5fba: $0c
    nop                                           ; $5fbb: $00
    rst $38                                       ; $5fbc: $ff
    dec bc                                        ; $5fbd: $0b
    inc bc                                        ; $5fbe: $03
    ld a, [$f506]                                 ; $5fbf: $fa $06 $f5
    rst $38                                       ; $5fc2: $ff
    ld a, [c]                                     ; $5fc3: $f2
    ld sp, hl                                     ; $5fc4: $f9
    ld a, [c]                                     ; $5fc5: $f2
    ld bc, $06f2                                  ; $5fc6: $01 $f2 $06
    ld [bc], a                                    ; $5fc9: $02
    ld [hl], b                                    ; $5fca: $70
    sbc d                                         ; $5fcb: $9a
    db $fc                                        ; $5fcc: $fc
    adc h                                         ; $5fcd: $8c
    ld l, a                                       ; $5fce: $6f
    ld [hl], e                                    ; $5fcf: $73
    ld d, $19                                     ; $5fd0: $16 $19
    rrca                                          ; $5fd2: $0f
    ld [$0605], sp                                ; $5fd3: $08 $05 $06
    dec b                                         ; $5fd6: $05
    ld b, $02                                     ; $5fd7: $06 $02
    inc bc                                        ; $5fd9: $03
    rrca                                          ; $5fda: $0f
    ld c, $1d                                     ; $5fdb: $0e $1d
    inc de                                        ; $5fdd: $13
    cpl                                           ; $5fde: $2f
    ld a, $3f                                     ; $5fdf: $3e $3f
    inc h                                         ; $5fe1: $24
    ld e, $1f                                     ; $5fe2: $1e $1f
    rlca                                          ; $5fe4: $07
    dec b                                         ; $5fe5: $05
    ld [bc], a                                    ; $5fe6: $02

jr_0e6_5fe7:
    inc bc                                        ; $5fe7: $03
    ld [$0200], sp                                ; $5fe8: $08 $00 $02
    add b                                         ; $5feb: $80
    add e                                         ; $5fec: $83
    ret nz                                        ; $5fed: $c0

    ld b, b                                       ; $5fee: $40
    jr nz, jr_0e6_5ff3                            ; $5fef: $20 $02

    ldh [$8f], a                                  ; $5ff1: $e0 $8f

jr_0e6_5ff3:
    jr nz, @-$2b                                  ; $5ff3: $20 $d3

    inc sp                                        ; $5ff5: $33

jr_0e6_5ff6:
    cp $1d                                        ; $5ff6: $fe $1d
    rst $38                                       ; $5ff8: $ff
    cp h                                          ; $5ff9: $bc
    ld e, [hl]                                    ; $5ffa: $5e
    db $e3                                        ; $5ffb: $e3
    rst $38                                       ; $5ffc: $ff
    ld c, l                                       ; $5ffd: $4d
    db $db                                        ; $5ffe: $db
    ld h, l                                       ; $5fff: $65
    xor $f2                                       ; $6000: $ee $f2
    ld [bc], a                                    ; $6002: $02
    inc a                                         ; $6003: $3c
    ld [de], a                                    ; $6004: $12
    nop                                           ; $6005: $00
    ld [bc], a                                    ; $6006: $02
    jr jr_0e6_5f91                                ; $6007: $18 $88

    inc e                                         ; $6009: $1c
    inc b                                         ; $600a: $04
    ld e, $02                                     ; $600b: $1e $02
    ld d, $1a                                     ; $600d: $16 $1a
    rrca                                          ; $600f: $0f
    dec c                                         ; $6010: $0d
    ld [bc], a                                    ; $6011: $02
    ld [bc], a                                    ; $6012: $02
    inc b                                         ; $6013: $04
    nop                                           ; $6014: $00
    rst $38                                       ; $6015: $ff
    dec bc                                        ; $6016: $0b
    inc bc                                        ; $6017: $03
    ld a, [$f506]                                 ; $6018: $fa $06 $f5
    rst $38                                       ; $601b: $ff
    push af                                       ; $601c: $f5
    or $f5                                        ; $601d: $f6 $f5

jr_0e6_601f:
    cp $f5                                        ; $601f: $fe $f5
    inc b                                         ; $6021: $04
    ld [bc], a                                    ; $6022: $02
    ld e, $8f                                     ; $6023: $1e $8f
    ld a, l                                       ; $6025: $7d
    ld h, e                                       ; $6026: $63
    rst $28                                       ; $6027: $ef
    sub b                                         ; $6028: $90
    ld a, e                                       ; $6029: $7b
    ld a, h                                       ; $602a: $7c
    inc e                                         ; $602b: $1c
    rla                                           ; $602c: $17
    inc sp                                        ; $602d: $33
    cpl                                           ; $602e: $2f
    ld a, $27                                     ; $602f: $3e $27
    ld a, [de]                                    ; $6031: $1a
    dec de                                        ; $6032: $1b
    dec b                                         ; $6033: $05
    ld [bc], a                                    ; $6034: $02
    rlca                                          ; $6035: $07
    add c                                         ; $6036: $81
    inc b                                         ; $6037: $04
    ld [bc], a                                    ; $6038: $02
    inc bc                                        ; $6039: $03
    inc c                                         ; $603a: $0c
    nop                                           ; $603b: $00
    ld [bc], a                                    ; $603c: $02
    add b                                         ; $603d: $80
    sub d                                         ; $603e: $92

jr_0e6_603f:
    ldh [$60], a                                  ; $603f: $e0 $60
    ret nc                                        ; $6041: $d0

    jr nc, jr_0e6_603f                            ; $6042: $30 $fb

    dec bc                                        ; $6044: $0b
    cp a                                          ; $6045: $bf
    call c, $ef77                                 ; $6046: $dc $77 $ef
    db $fd                                        ; $6049: $fd
    ld b, $77                                     ; $604a: $06 $77
    adc h                                         ; $604c: $8c
    db $fd                                        ; $604d: $fd
    cp $f6                                        ; $604e: $fe $f6
    sub a                                         ; $6050: $97
    ld [bc], a                                    ; $6051: $02
    ld h, c                                       ; $6052: $61
    ld c, $00                                     ; $6053: $0e $00
    ld [bc], a                                    ; $6055: $02
    ld a, $84                                     ; $6056: $3e $84
    dec a                                         ; $6058: $3d
    inc bc                                        ; $6059: $03
    ld l, $1e                                     ; $605a: $2e $1e
    ld [bc], a                                    ; $605c: $02
    jr nc, jr_0e6_5fe7                            ; $605d: $30 $88

    jr c, @+$0a                                   ; $605f: $38 $08

    inc a                                         ; $6061: $3c
    inc [hl]                                      ; $6062: $34
    inc l                                         ; $6063: $2c
    inc d                                         ; $6064: $14
    jr c, @+$0a                                   ; $6065: $38 $08

    ld [bc], a                                    ; $6067: $02
    jr nc, jr_0e6_6072                            ; $6068: $30 $08

    nop                                           ; $606a: $00
    rst $38                                       ; $606b: $ff
    dec c                                         ; $606c: $0d
    inc b                                         ; $606d: $04
    ld a, [$f506]                                 ; $606e: $fa $06 $f5
    rst $38                                       ; $6071: $ff

jr_0e6_6072:
    or $f4                                        ; $6072: $f6 $f4
    or $fc                                        ; $6074: $f6 $fc
    or $04                                        ; $6076: $f6 $04
    or $05                                        ; $6078: $f6 $05
    ld [bc], a                                    ; $607a: $02
    inc e                                         ; $607b: $1c
    add [hl]                                      ; $607c: $86
    ld a, e                                       ; $607d: $7b
    ld h, a                                       ; $607e: $67
    rst $38                                       ; $607f: $ff
    add b                                         ; $6080: $80
    ld [hl], d                                    ; $6081: $72
    ld a, l                                       ; $6082: $7d
    ld [bc], a                                    ; $6083: $02
    rrca                                          ; $6084: $0f
    add [hl]                                      ; $6085: $86
    ld [bc], a                                    ; $6086: $02
    inc bc                                        ; $6087: $03
    ld b, $05                                     ; $6088: $06 $05
    rlca                                          ; $608a: $07
    inc b                                         ; $608b: $04
    ld [bc], a                                    ; $608c: $02
    inc bc                                        ; $608d: $03
    stop                                          ; $608e: $10 $00
    ld [bc], a                                    ; $6090: $02
    ret nz                                        ; $6091: $c0

    sub d                                         ; $6092: $92
    db $fc                                        ; $6093: $fc
    inc a                                         ; $6094: $3c
    cp a                                          ; $6095: $bf
    ld b, e                                       ; $6096: $43
    cpl                                           ; $6097: $2f
    ret nc                                        ; $6098: $d0

    db $eb                                        ; $6099: $eb
    rst $30                                       ; $609a: $f7
    ld e, [hl]                                    ; $609b: $5e
    db $fd                                        ; $609c: $fd
    ld e, a                                       ; $609d: $5f
    ldh [$ee], a                                  ; $609e: $e0 $ee
    pop af                                        ; $60a0: $f1
    sbc a                                         ; $60a1: $9f
    rst $38                                       ; $60a2: $ff
    cp $92                                        ; $60a3: $fe $92
    ld [bc], a                                    ; $60a5: $02
    ld l, h                                       ; $60a6: $6c
    ld [$0200], sp                                ; $60a7: $08 $00 $02
    ld bc, $0788                                  ; $60aa: $01 $88 $07
    ld b, $1b                                     ; $60ad: $06 $1b
    dec e                                         ; $60af: $1d
    ld a, $22                                     ; $60b0: $3e $22
    call c, $02e4                                 ; $60b2: $dc $e4 $02
    db $fc                                        ; $60b5: $fc
    adc b                                         ; $60b6: $88
    cp h                                          ; $60b7: $bc
    call nz, $9afe                                ; $60b8: $c4 $fe $9a
    or [hl]                                       ; $60bb: $b6
    jp z, $e4dc                                   ; $60bc: $ca $dc $e4

    ld [bc], a                                    ; $60bf: $02
    jr c, @+$0c                                   ; $60c0: $38 $0a

    nop                                           ; $60c2: $00
    inc b                                         ; $60c3: $04
    ld bc, $001c                                  ; $60c4: $01 $1c $00
    rst $38                                       ; $60c7: $ff
    dec c                                         ; $60c8: $0d
    inc b                                         ; $60c9: $04
    ld a, [$f506]                                 ; $60ca: $fa $06 $f5
    rst $38                                       ; $60cd: $ff
    push af                                       ; $60ce: $f5
    db $f4                                        ; $60cf: $f4
    push af                                       ; $60d0: $f5
    db $fc                                        ; $60d1: $fc
    push af                                       ; $60d2: $f5
    inc b                                         ; $60d3: $04
    push af                                       ; $60d4: $f5
    dec b                                         ; $60d5: $05
    ld [bc], a                                    ; $60d6: $02

jr_0e6_60d7:
    inc e                                         ; $60d7: $1c
    add [hl]                                      ; $60d8: $86
    ld a, a                                       ; $60d9: $7f
    ld h, e                                       ; $60da: $63
    db $eb                                        ; $60db: $eb
    sub h                                         ; $60dc: $94
    ld [hl], b                                    ; $60dd: $70
    ld a, a                                       ; $60de: $7f
    ld [bc], a                                    ; $60df: $02
    rrca                                          ; $60e0: $0f
    add [hl]                                      ; $60e1: $86
    ld [bc], a                                    ; $60e2: $02
    inc bc                                        ; $60e3: $03
    ld b, $05                                     ; $60e4: $06 $05
    rlca                                          ; $60e6: $07
    inc b                                         ; $60e7: $04
    ld [bc], a                                    ; $60e8: $02
    inc bc                                        ; $60e9: $03
    stop                                          ; $60ea: $10 $00
    ld [bc], a                                    ; $60ec: $02
    ret nz                                        ; $60ed: $c0

    sub d                                         ; $60ee: $92
    cp h                                          ; $60ef: $bc
    ld a, h                                       ; $60f0: $7c
    rst $38                                       ; $60f1: $ff
    inc bc                                        ; $60f2: $03
    cpl                                           ; $60f3: $2f
    ret nc                                        ; $60f4: $d0

    db $e3                                        ; $60f5: $e3
    rst $38                                       ; $60f6: $ff
    ld e, [hl]                                    ; $60f7: $5e
    db $fd                                        ; $60f8: $fd
    ld e, a                                       ; $60f9: $5f
    ldh [$ee], a                                  ; $60fa: $e0 $ee
    pop af                                        ; $60fc: $f1
    sbc a                                         ; $60fd: $9f
    rst $38                                       ; $60fe: $ff
    or $9a                                        ; $60ff: $f6 $9a
    ld [bc], a                                    ; $6101: $02
    ld l, h                                       ; $6102: $6c
    ld [$0200], sp                                ; $6103: $08 $00 $02
    ld bc, $0788                                  ; $6106: $01 $88 $07
    ld b, $1b                                     ; $6109: $06 $1b
    dec e                                         ; $610b: $1d
    ld l, $32                                     ; $610c: $2e $32
    call c, $02e4                                 ; $610e: $dc $e4 $02
    db $fc                                        ; $6111: $fc
    adc b                                         ; $6112: $88
    cp h                                          ; $6113: $bc
    call nz, $9afe                                ; $6114: $c4 $fe $9a
    or [hl]                                       ; $6117: $b6
    jp z, $e4dc                                   ; $6118: $ca $dc $e4

    ld [bc], a                                    ; $611b: $02
    jr c, @+$0c                                   ; $611c: $38 $0a

    nop                                           ; $611e: $00
    inc b                                         ; $611f: $04
    ld bc, $001c                                  ; $6120: $01 $1c $00
    rst $38                                       ; $6123: $ff
    add hl, bc                                    ; $6124: $09
    ld [bc], a                                    ; $6125: $02
    ld sp, hl                                     ; $6126: $f9
    ld [$01f2], sp                                ; $6127: $08 $f2 $01
    di                                            ; $612a: $f3
    ld a, [$fff3]                                 ; $612b: $fa $f3 $ff
    ld [bc], a                                    ; $612e: $02
    rrca                                          ; $612f: $0f
    sbc h                                         ; $6130: $9c
    dec de                                        ; $6131: $1b
    rra                                           ; $6132: $1f
    ld sp, $533f                                  ; $6133: $31 $3f $53
    ld a, a                                       ; $6136: $7f
    ld c, l                                       ; $6137: $4d
    ld a, a                                       ; $6138: $7f
    rst $10                                       ; $6139: $d7
    rst $38                                       ; $613a: $ff
    ld [c], a                                     ; $613b: $e2
    rst $38                                       ; $613c: $ff
    sub h                                         ; $613d: $94
    rst $38                                       ; $613e: $ff
    sbc h                                         ; $613f: $9c
    rst $38                                       ; $6140: $ff
    xor d                                         ; $6141: $aa
    rst $18                                       ; $6142: $df
    push hl                                       ; $6143: $e5
    ld a, a                                       ; $6144: $7f
    ld e, a                                       ; $6145: $5f
    ld l, l                                       ; $6146: $6d
    ld a, d                                       ; $6147: $7a
    dec [hl]                                      ; $6148: $35
    ccf                                           ; $6149: $3f
    jr jr_0e6_616b                                ; $614a: $18 $1f

    rlca                                          ; $614c: $07
    ld [bc], a                                    ; $614d: $02
    nop                                           ; $614e: $00
    ld [bc], a                                    ; $614f: $02
    db $10                                        ; $6150: $10
    ld [bc], a                                    ; $6151: $02
    jr jr_0e6_60d7                                ; $6152: $18 $83

    inc c                                         ; $6154: $0c
    inc e                                         ; $6155: $1c
    ld a, [bc]                                    ; $6156: $0a
    inc bc                                        ; $6157: $03
    ld e, $81                                     ; $6158: $1e $81
    rla                                           ; $615a: $17
    ld [bc], a                                    ; $615b: $02
    rra                                           ; $615c: $1f
    adc [hl]                                      ; $615d: $8e
    dec e                                         ; $615e: $1d
    rrca                                          ; $615f: $0f
    rra                                           ; $6160: $1f
    rrca                                          ; $6161: $0f
    dec d                                         ; $6162: $15
    dec de                                        ; $6163: $1b
    dec c                                         ; $6164: $0d
    rra                                           ; $6165: $1f
    ld [de], a                                    ; $6166: $12
    ld c, $12                                     ; $6167: $0e $12
    ld e, $04                                     ; $6169: $1e $04

jr_0e6_616b:
    inc e                                         ; $616b: $1c
    ld [bc], a                                    ; $616c: $02
    jr jr_0e6_6172                                ; $616d: $18 $03

    nop                                           ; $616f: $00
    rst $38                                       ; $6170: $ff
    add hl, bc                                    ; $6171: $09

jr_0e6_6172:
    ld [bc], a                                    ; $6172: $02
    ld sp, hl                                     ; $6173: $f9
    ld [$01f2], sp                                ; $6174: $08 $f2 $01
    di                                            ; $6177: $f3
    ei                                            ; $6178: $fb
    di                                            ; $6179: $f3
    nop                                           ; $617a: $00
    ld [bc], a                                    ; $617b: $02
    rlca                                          ; $617c: $07
    sbc h                                         ; $617d: $9c
    add hl, de                                    ; $617e: $19
    rra                                           ; $617f: $1f
    ld sp, $4b3f                                  ; $6180: $31 $3f $4b
    ld a, a                                       ; $6183: $7f
    ld c, h                                       ; $6184: $4c
    ld a, a                                       ; $6185: $7f
    ld d, a                                       ; $6186: $57
    ld a, a                                       ; $6187: $7f
    ld [c], a                                     ; $6188: $e2
    rst $38                                       ; $6189: $ff
    call nc, $9cff                                ; $618a: $d4 $ff $9c
    rst $38                                       ; $618d: $ff
    xor d                                         ; $618e: $aa
    rst $18                                       ; $618f: $df
    push hl                                       ; $6190: $e5
    ld a, a                                       ; $6191: $7f
    ld e, a                                       ; $6192: $5f
    ld l, l                                       ; $6193: $6d
    ld a, d                                       ; $6194: $7a
    ld [hl], l                                    ; $6195: $75
    ccf                                           ; $6196: $3f
    jr c, jr_0e6_61b8                             ; $6197: $38 $1f

    rrca                                          ; $6199: $0f
    ld [bc], a                                    ; $619a: $02
    nop                                           ; $619b: $00
    ld [bc], a                                    ; $619c: $02
    db $10                                        ; $619d: $10
    ld [bc], a                                    ; $619e: $02
    inc e                                         ; $619f: $1c
    sbc c                                         ; $61a0: $99
    ld b, $1e                                     ; $61a1: $06 $1e
    ld a, [bc]                                    ; $61a3: $0a
    ld e, $17                                     ; $61a4: $1e $17
    rra                                           ; $61a6: $1f
    rla                                           ; $61a7: $17
    dec e                                         ; $61a8: $1d
    rrca                                          ; $61a9: $0f
    dec e                                         ; $61aa: $1d
    rrca                                          ; $61ab: $0f
    rra                                           ; $61ac: $1f
    rrca                                          ; $61ad: $0f
    dec d                                         ; $61ae: $15
    dec de                                        ; $61af: $1b
    dec c                                         ; $61b0: $0d
    rra                                           ; $61b1: $1f
    ld [de], a                                    ; $61b2: $12
    ld c, $12                                     ; $61b3: $0e $12
    ld e, $04                                     ; $61b5: $1e $04
    inc e                                         ; $61b7: $1c

jr_0e6_61b8:
    jr jr_0e6_61ca                                ; $61b8: $18 $10

    inc bc                                        ; $61ba: $03
    nop                                           ; $61bb: $00
    rst $38                                       ; $61bc: $ff
    add hl, bc                                    ; $61bd: $09
    ld [bc], a                                    ; $61be: $02
    ld sp, hl                                     ; $61bf: $f9
    ld [$01f2], sp                                ; $61c0: $08 $f2 $01
    di                                            ; $61c3: $f3
    ld sp, hl                                     ; $61c4: $f9
    di                                            ; $61c5: $f3
    cp $02                                        ; $61c6: $fe $02
    rrca                                          ; $61c8: $0f
    sbc h                                         ; $61c9: $9c

jr_0e6_61ca:
    inc sp                                        ; $61ca: $33
    ccf                                           ; $61cb: $3f
    ld [hl], c                                    ; $61cc: $71
    ld a, a                                       ; $61cd: $7f
    ld d, e                                       ; $61ce: $53
    ld a, a                                       ; $61cf: $7f
    adc l                                         ; $61d0: $8d
    rst $38                                       ; $61d1: $ff
    rst $10                                       ; $61d2: $d7
    rst $38                                       ; $61d3: $ff
    db $e4                                        ; $61d4: $e4
    rst $38                                       ; $61d5: $ff
    and h                                         ; $61d6: $a4
    rst $38                                       ; $61d7: $ff
    sbc h                                         ; $61d8: $9c
    rst $38                                       ; $61d9: $ff
    xor d                                         ; $61da: $aa
    rst $18                                       ; $61db: $df
    push hl                                       ; $61dc: $e5
    ld a, a                                       ; $61dd: $7f
    ld e, a                                       ; $61de: $5f
    ld l, l                                       ; $61df: $6d
    ld a, d                                       ; $61e0: $7a
    dec [hl]                                      ; $61e1: $35
    ccf                                           ; $61e2: $3f
    jr jr_0e6_61f4                                ; $61e3: $18 $0f

    rlca                                          ; $61e5: $07
    inc b                                         ; $61e6: $04
    nop                                           ; $61e7: $00
    ld [bc], a                                    ; $61e8: $02
    jr @-$7b                                      ; $61e9: $18 $83

    inc c                                         ; $61eb: $0c
    inc e                                         ; $61ec: $1c
    ld a, [bc]                                    ; $61ed: $0a
    inc bc                                        ; $61ee: $03
    ld e, $90                                     ; $61ef: $1e $90
    ld d, $1e                                     ; $61f1: $16 $1e
    rra                                           ; $61f3: $1f

jr_0e6_61f4:
    dec e                                         ; $61f4: $1d
    rrca                                          ; $61f5: $0f
    rra                                           ; $61f6: $1f
    rrca                                          ; $61f7: $0f
    dec d                                         ; $61f8: $15
    dec de                                        ; $61f9: $1b
    dec c                                         ; $61fa: $0d
    rra                                           ; $61fb: $1f
    ld [de], a                                    ; $61fc: $12
    ld c, $12                                     ; $61fd: $0e $12
    ld e, $06                                     ; $61ff: $1e $06
    ld [bc], a                                    ; $6201: $02
    inc e                                         ; $6202: $1c
    add d                                         ; $6203: $82
    jr jr_0e6_6216                                ; $6204: $18 $10

    ld [bc], a                                    ; $6206: $02
    nop                                           ; $6207: $00
    rst $38                                       ; $6208: $ff
    add hl, bc                                    ; $6209: $09
    ld [bc], a                                    ; $620a: $02
    ld sp, hl                                     ; $620b: $f9
    ld [$01f2], sp                                ; $620c: $08 $f2 $01
    di                                            ; $620f: $f3
    ei                                            ; $6210: $fb
    di                                            ; $6211: $f3
    nop                                           ; $6212: $00
    ld [bc], a                                    ; $6213: $02
    rlca                                          ; $6214: $07
    sbc h                                         ; $6215: $9c

jr_0e6_6216:
    add hl, de                                    ; $6216: $19
    rra                                           ; $6217: $1f
    ld sp, $4b3f                                  ; $6218: $31 $3f $4b
    ld a, a                                       ; $621b: $7f
    ld c, h                                       ; $621c: $4c
    ld a, a                                       ; $621d: $7f
    ld d, a                                       ; $621e: $57
    ld a, a                                       ; $621f: $7f
    ld [c], a                                     ; $6220: $e2
    rst $38                                       ; $6221: $ff
    call nc, $9cff                                ; $6222: $d4 $ff $9c
    rst $38                                       ; $6225: $ff
    xor d                                         ; $6226: $aa
    rst $18                                       ; $6227: $df
    push hl                                       ; $6228: $e5
    ld a, a                                       ; $6229: $7f
    ld e, a                                       ; $622a: $5f
    ld l, l                                       ; $622b: $6d
    ld a, d                                       ; $622c: $7a
    ld [hl], l                                    ; $622d: $75
    ccf                                           ; $622e: $3f
    jr c, jr_0e6_6250                             ; $622f: $38 $1f

    rrca                                          ; $6231: $0f
    ld [bc], a                                    ; $6232: $02
    nop                                           ; $6233: $00
    ld [bc], a                                    ; $6234: $02
    db $10                                        ; $6235: $10
    ld [bc], a                                    ; $6236: $02
    inc e                                         ; $6237: $1c
    sbc c                                         ; $6238: $99
    ld b, $1e                                     ; $6239: $06 $1e
    ld a, [bc]                                    ; $623b: $0a
    ld e, $17                                     ; $623c: $1e $17
    rra                                           ; $623e: $1f
    rla                                           ; $623f: $17
    dec e                                         ; $6240: $1d
    rrca                                          ; $6241: $0f
    dec e                                         ; $6242: $1d
    rrca                                          ; $6243: $0f
    rra                                           ; $6244: $1f
    rrca                                          ; $6245: $0f
    dec d                                         ; $6246: $15
    dec de                                        ; $6247: $1b
    dec c                                         ; $6248: $0d
    rra                                           ; $6249: $1f
    ld [de], a                                    ; $624a: $12
    ld c, $12                                     ; $624b: $0e $12
    ld e, $04                                     ; $624d: $1e $04
    inc e                                         ; $624f: $1c

jr_0e6_6250:
    jr jr_0e6_6262                                ; $6250: $18 $10

    inc bc                                        ; $6252: $03
    nop                                           ; $6253: $00
    rst $38                                       ; $6254: $ff
    add hl, bc                                    ; $6255: $09
    ld [bc], a                                    ; $6256: $02
    ld sp, hl                                     ; $6257: $f9
    ld [$01f2], sp                                ; $6258: $08 $f2 $01
    push af                                       ; $625b: $f5
    ld sp, hl                                     ; $625c: $f9
    push af                                       ; $625d: $f5
    nop                                           ; $625e: $00
    ld [bc], a                                    ; $625f: $02
    rrca                                          ; $6260: $0f
    sbc b                                         ; $6261: $98

jr_0e6_6262:
    add hl, de                                    ; $6262: $19
    ld e, $2b                                     ; $6263: $1e $2b
    dec a                                         ; $6265: $3d
    ld c, [hl]                                    ; $6266: $4e
    ld a, a                                       ; $6267: $7f
    ld [hl], e                                    ; $6268: $73
    ld a, a                                       ; $6269: $7f
    sub c                                         ; $626a: $91
    rst $38                                       ; $626b: $ff
    adc c                                         ; $626c: $89
    rst $38                                       ; $626d: $ff
    or a                                          ; $626e: $b7
    rst $18                                       ; $626f: $df
    ld a, [c]                                     ; $6270: $f2
    ld a, a                                       ; $6271: $7f
    ld e, a                                       ; $6272: $5f
    ld l, a                                       ; $6273: $6f
    ld a, l                                       ; $6274: $7d
    ld [hl], $3f                                  ; $6275: $36 $3f
    jr jr_0e6_6288                                ; $6277: $18 $0f

    rlca                                          ; $6279: $07
    ld b, $00                                     ; $627a: $06 $00
    ld [bc], a                                    ; $627c: $02
    ld [hl], b                                    ; $627d: $70
    sbc b                                         ; $627e: $98
    ld e, b                                       ; $627f: $58
    ld a, b                                       ; $6280: $78
    ld d, h                                       ; $6281: $54
    ld a, h                                       ; $6282: $7c
    ld a, $7e                                     ; $6283: $3e $7e
    halt                                          ; $6285: $76
    ld a, [hl]                                    ; $6286: $7e
    ld e, a                                       ; $6287: $5f

jr_0e6_6288:
    ld a, l                                       ; $6288: $7d
    rrca                                          ; $6289: $0f
    ld [hl], a                                    ; $628a: $77
    dec de                                        ; $628b: $1b
    ld l, l                                       ; $628c: $6d
    ld a, a                                       ; $628d: $7f
    ld a, d                                       ; $628e: $7a

jr_0e6_628f:
    ld e, [hl]                                    ; $628f: $5e
    ld [hl], d                                    ; $6290: $72
    ld e, $64                                     ; $6291: $1e $64
    ld a, h                                       ; $6293: $7c
    jr jr_0e6_6306                                ; $6294: $18 $70

    ld h, b                                       ; $6296: $60
    ld b, $00                                     ; $6297: $06 $00
    rst $38                                       ; $6299: $ff
    add hl, bc                                    ; $629a: $09
    ld [bc], a                                    ; $629b: $02
    ld sp, hl                                     ; $629c: $f9
    ld [$01f2], sp                                ; $629d: $08 $f2 $01
    or $f9                                        ; $62a0: $f6 $f9
    or $00                                        ; $62a2: $f6 $00
    ld [bc], a                                    ; $62a4: $02
    ld b, $96                                     ; $62a5: $06 $96
    dec de                                        ; $62a7: $1b
    dec e                                         ; $62a8: $1d
    dec [hl]                                      ; $62a9: $35
    dec sp                                        ; $62aa: $3b
    ld c, [hl]                                    ; $62ab: $4e
    ld a, a                                       ; $62ac: $7f
    halt                                          ; $62ad: $76
    ld a, a                                       ; $62ae: $7f
    sub c                                         ; $62af: $91
    rst $38                                       ; $62b0: $ff
    adc c                                         ; $62b1: $89
    rst $38                                       ; $62b2: $ff
    rst $10                                       ; $62b3: $d7
    cp a                                          ; $62b4: $bf
    ld a, [$7d77]                                 ; $62b5: $fa $77 $7d
    ld c, [hl]                                    ; $62b8: $4e
    ld a, a                                       ; $62b9: $7f
    jr nc, jr_0e6_62db                            ; $62ba: $30 $1f

    rrca                                          ; $62bc: $0f
    ld [$0200], sp                                ; $62bd: $08 $00 $02
    ld h, b                                       ; $62c0: $60
    add l                                         ; $62c1: $85
    ld e, b                                       ; $62c2: $58
    jr c, @+$6e                                   ; $62c3: $38 $6c

    ld a, h                                       ; $62c5: $7c
    ld a, [hl-]                                   ; $62c6: $3a
    inc bc                                        ; $62c7: $03
    ld a, [hl]                                    ; $62c8: $7e
    adc [hl]                                      ; $62c9: $8e
    ld d, e                                       ; $62ca: $53
    ld a, a                                       ; $62cb: $7f
    rrca                                          ; $62cc: $0f
    ld [hl], l                                    ; $62cd: $75
    rra                                           ; $62ce: $1f
    ld h, l                                       ; $62cf: $65
    ld l, e                                       ; $62d0: $6b
    ld a, [hl]                                    ; $62d1: $7e
    ld c, [hl]                                    ; $62d2: $4e
    ld [hl], d                                    ; $62d3: $72
    ld a, [hl]                                    ; $62d4: $7e
    inc c                                         ; $62d5: $0c
    ld a, b                                       ; $62d6: $78
    ld [hl], b                                    ; $62d7: $70
    ld [$ff00], sp                                ; $62d8: $08 $00 $ff

jr_0e6_62db:
    add hl, bc                                    ; $62db: $09
    ld [bc], a                                    ; $62dc: $02
    ld sp, hl                                     ; $62dd: $f9
    ld [$01f2], sp                                ; $62de: $08 $f2 $01
    di                                            ; $62e1: $f3
    ld a, [$fff3]                                 ; $62e2: $fa $f3 $ff
    ld [bc], a                                    ; $62e5: $02
    add hl, bc                                    ; $62e6: $09
    sbc h                                         ; $62e7: $9c
    rra                                           ; $62e8: $1f
    ld e, $3d                                     ; $62e9: $1e $3d
    inc sp                                        ; $62eb: $33
    ld e, a                                       ; $62ec: $5f
    ld h, e                                       ; $62ed: $63
    ld e, l                                       ; $62ee: $5d
    ld l, a                                       ; $62ef: $6f
    rst $10                                       ; $62f0: $d7
    rst $28                                       ; $62f1: $ef
    ld [c], a                                     ; $62f2: $e2
    rst $38                                       ; $62f3: $ff
    sub h                                         ; $62f4: $94
    rst $38                                       ; $62f5: $ff
    sbc h                                         ; $62f6: $9c

jr_0e6_62f7:
    rst $38                                       ; $62f7: $ff
    xor d                                         ; $62f8: $aa
    ld e, a                                       ; $62f9: $5f
    ld h, l                                       ; $62fa: $65
    ld a, a                                       ; $62fb: $7f
    ld e, a                                       ; $62fc: $5f
    dec l                                         ; $62fd: $2d
    ld a, [hl-]                                   ; $62fe: $3a
    dec [hl]                                      ; $62ff: $35
    ccf                                           ; $6300: $3f
    jr jr_0e6_6312                                ; $6301: $18 $0f

    rlca                                          ; $6303: $07
    ld [bc], a                                    ; $6304: $02
    nop                                           ; $6305: $00

jr_0e6_6306:
    ld [bc], a                                    ; $6306: $02
    db $10                                        ; $6307: $10
    ld [bc], a                                    ; $6308: $02
    jr jr_0e6_628f                                ; $6309: $18 $84

    inc e                                         ; $630b: $1c
    inc c                                         ; $630c: $0c
    ld a, [bc]                                    ; $630d: $0a
    ld d, $02                                     ; $630e: $16 $02
    ld e, $81                                     ; $6310: $1e $81

jr_0e6_6312:
    rla                                           ; $6312: $17
    ld [bc], a                                    ; $6313: $02
    rra                                           ; $6314: $1f
    sub b                                         ; $6315: $90
    dec e                                         ; $6316: $1d
    rrca                                          ; $6317: $0f
    rra                                           ; $6318: $1f
    rrca                                          ; $6319: $0f
    dec d                                         ; $631a: $15
    dec de                                        ; $631b: $1b
    inc c                                         ; $631c: $0c
    ld e, $12                                     ; $631d: $1e $12
    ld c, $10                                     ; $631f: $0e $10
    inc e                                         ; $6321: $1c
    inc b                                         ; $6322: $04
    inc e                                         ; $6323: $1c
    jr @+$12                                      ; $6324: $18 $10

    inc bc                                        ; $6326: $03
    nop                                           ; $6327: $00
    rst $38                                       ; $6328: $ff
    add hl, bc                                    ; $6329: $09
    ld [bc], a                                    ; $632a: $02
    ld sp, hl                                     ; $632b: $f9
    ld [$01f2], sp                                ; $632c: $08 $f2 $01
    ld a, [c]                                     ; $632f: $f2
    ld a, [$fff2]                                 ; $6330: $fa $f2 $ff
    ld [bc], a                                    ; $6333: $02
    ld bc, $239e                                  ; $6334: $01 $9e $23
    ld [hl+], a                                   ; $6337: $22
    ld a, a                                       ; $6338: $7f
    ld a, h                                       ; $6339: $7c
    ld e, a                                       ; $633a: $5f
    ld [hl], e                                    ; $633b: $73
    db $dd                                        ; $633c: $dd
    db $e3                                        ; $633d: $e3
    rst $18                                       ; $633e: $df
    rst $20                                       ; $633f: $e7
    ld a, [$9ce7]                                 ; $6340: $fa $e7 $9c
    rst $30                                       ; $6343: $f7
    sbc h                                         ; $6344: $9c
    rst $30                                       ; $6345: $f7
    cp $df                                        ; $6346: $fe $df
    ld h, e                                       ; $6348: $63
    ld e, a                                       ; $6349: $5f
    ld [hl], l                                    ; $634a: $75
    ld a, a                                       ; $634b: $7f
    ld e, a                                       ; $634c: $5f
    dec l                                         ; $634d: $2d
    ld a, [hl-]                                   ; $634e: $3a
    dec [hl]                                      ; $634f: $35
    rra                                           ; $6350: $1f
    jr jr_0e6_6362                                ; $6351: $18 $0f

    rlca                                          ; $6353: $07
    ld [bc], a                                    ; $6354: $02
    db $10                                        ; $6355: $10
    ld [bc], a                                    ; $6356: $02
    inc e                                         ; $6357: $1c
    add a                                         ; $6358: $87
    ld e, $06                                     ; $6359: $1e $06
    ld e, $02                                     ; $635b: $1e $02
    rra                                           ; $635d: $1f
    dec de                                        ; $635e: $1b
    rla                                           ; $635f: $17
    ld [bc], a                                    ; $6360: $02
    rra                                           ; $6361: $1f

jr_0e6_6362:
    adc a                                         ; $6362: $8f
    dec e                                         ; $6363: $1d
    rrca                                          ; $6364: $0f
    rra                                           ; $6365: $1f
    rrca                                          ; $6366: $0f
    dec d                                         ; $6367: $15
    rrca                                          ; $6368: $0f
    dec d                                         ; $6369: $15
    ld a, [de]                                    ; $636a: $1a
    inc c                                         ; $636b: $0c
    ld e, $12                                     ; $636c: $1e $12
    ld c, $10                                     ; $636e: $0e $10
    inc e                                         ; $6370: $1c
    inc b                                         ; $6371: $04
    ld [bc], a                                    ; $6372: $02
    jr jr_0e6_62f7                                ; $6373: $18 $82

    stop                                          ; $6375: $10 $00
    rst $38                                       ; $6377: $ff
    add hl, bc                                    ; $6378: $09
    ld [bc], a                                    ; $6379: $02
    ld sp, hl                                     ; $637a: $f9
    ld [$01f2], sp                                ; $637b: $08 $f2 $01
    rst $30                                       ; $637e: $f7
    ld a, [$fff7]                                 ; $637f: $fa $f7 $ff
    ld [bc], a                                    ; $6382: $02
    inc bc                                        ; $6383: $03
    sub h                                         ; $6384: $94
    rlca                                          ; $6385: $07
    inc b                                         ; $6386: $04
    ld c, a                                       ; $6387: $4f
    ld c, b                                       ; $6388: $48
    cp a                                          ; $6389: $bf
    ldh a, [rIE]                                  ; $638a: $f0 $ff
    ldh [$9f], a                                  ; $638c: $e0 $9f
    pop af                                        ; $638e: $f1
    xor $5b                                       ; $638f: $ee $5b
    ld c, a                                       ; $6391: $4f
    ld a, a                                       ; $6392: $7f
    ld a, d                                       ; $6393: $7a
    dec l                                         ; $6394: $2d
    ccf                                           ; $6395: $3f
    jr jr_0e6_63b7                                ; $6396: $18 $1f

    rlca                                          ; $6398: $07
    ld a, [bc]                                    ; $6399: $0a
    nop                                           ; $639a: $00
    ld [bc], a                                    ; $639b: $02
    db $10                                        ; $639c: $10
    add [hl]                                      ; $639d: $86
    ld a, [de]                                    ; $639e: $1a
    ld a, [bc]                                    ; $639f: $0a
    dec e                                         ; $63a0: $1d
    rlca                                          ; $63a1: $07
    rra                                           ; $63a2: $1f
    rla                                           ; $63a3: $17
    ld [bc], a                                    ; $63a4: $02
    rra                                           ; $63a5: $1f
    adc c                                         ; $63a6: $89
    rlca                                          ; $63a7: $07
    dec e                                         ; $63a8: $1d
    rrca                                          ; $63a9: $0f
    ld a, [de]                                    ; $63aa: $1a
    ld c, $12                                     ; $63ab: $0e $12
    ld e, $04                                     ; $63ad: $1e $04
    inc e                                         ; $63af: $1c
    ld [bc], a                                    ; $63b0: $02
    jr jr_0e6_63be                                ; $63b1: $18 $0b

    nop                                           ; $63b3: $00
    rst $38                                       ; $63b4: $ff
    add hl, bc                                    ; $63b5: $09
    ld [bc], a                                    ; $63b6: $02

jr_0e6_63b7:
    ld sp, hl                                     ; $63b7: $f9
    ld [$01f2], sp                                ; $63b8: $08 $f2 $01
    rst $30                                       ; $63bb: $f7
    ld sp, hl                                     ; $63bc: $f9
    rst $30                                       ; $63bd: $f7

jr_0e6_63be:
    ld bc, $0002                                  ; $63be: $01 $02 $00
    ld [bc], a                                    ; $63c1: $02
    ld bc, $4792                                  ; $63c2: $01 $92 $47
    ld b, [hl]                                    ; $63c5: $46
    ld l, a                                       ; $63c6: $6f
    ld l, b                                       ; $63c7: $68
    cp a                                          ; $63c8: $bf
    ldh a, [$df]                                  ; $63c9: $f0 $df
    ldh a, [$ef]                                  ; $63cb: $f0 $ef
    ld e, l                                       ; $63cd: $5d
    ld h, a                                       ; $63ce: $67
    ld a, a                                       ; $63cf: $7f
    ld a, h                                       ; $63d0: $7c
    daa                                           ; $63d1: $27
    ccf                                           ; $63d2: $3f
    inc e                                         ; $63d3: $1c
    rrca                                          ; $63d4: $0f
    inc bc                                        ; $63d5: $03
    ld a, [bc]                                    ; $63d6: $0a
    nop                                           ; $63d7: $00
    ld [bc], a                                    ; $63d8: $02
    ret nz                                        ; $63d9: $c0

    sub h                                         ; $63da: $94
    ldh [rNR41], a                                ; $63db: $e0 $20
    or $16                                        ; $63dd: $f6 $16
    ld a, [$fb0e]                                 ; $63df: $fa $0e $fb
    ld a, $cf                                     ; $63e2: $3e $cf
    cp $1e                                        ; $63e4: $fe $1e
    ld a, [$e4be]                                 ; $63e6: $fa $be $e4
    ld a, h                                       ; $63e9: $7c
    adc b                                         ; $63ea: $88
    ld hl, sp+$70                                 ; $63eb: $f8 $70
    ldh [$80], a                                  ; $63ed: $e0 $80
    ld a, [bc]                                    ; $63ef: $0a
    nop                                           ; $63f0: $00
    rst $38                                       ; $63f1: $ff
    dec bc                                        ; $63f2: $0b
    inc bc                                        ; $63f3: $03
    push af                                       ; $63f4: $f5
    inc c                                         ; $63f5: $0c
    rst $30                                       ; $63f6: $f7
    ld b, $ec                                     ; $63f7: $06 $ec
    ld a, [$00ec]                                 ; $63f9: $fa $ec $00
    db $fc                                        ; $63fc: $fc
    db $fd                                        ; $63fd: $fd
    ld [bc], a                                    ; $63fe: $02
    ld c, $9e                                     ; $63ff: $0e $9e
    dec d                                         ; $6401: $15
    rra                                           ; $6402: $1f
    ld d, $1e                                     ; $6403: $16 $1e
    inc l                                         ; $6405: $2c
    inc a                                         ; $6406: $3c
    ld d, [hl]                                    ; $6407: $56
    ld a, [hl]                                    ; $6408: $7e
    ld a, e                                       ; $6409: $7b
    ld e, a                                       ; $640a: $5f
    adc e                                         ; $640b: $8b
    rst $38                                       ; $640c: $ff
    and [hl]                                      ; $640d: $a6
    rst $38                                       ; $640e: $ff
    push de                                       ; $640f: $d5
    xor a                                         ; $6410: $af
    jp z, $99bf                                   ; $6411: $ca $bf $99

    rst $38                                       ; $6414: $ff
    ld [$69f7], a                                 ; $6415: $ea $f7 $69
    ld a, a                                       ; $6418: $7f
    ld e, [hl]                                    ; $6419: $5e
    ld l, a                                       ; $641a: $6f
    dec sp                                        ; $641b: $3b
    cpl                                           ; $641c: $2f
    dec d                                         ; $641d: $15
    ld e, $02                                     ; $641e: $1e $02
    jr nc, @-$60                                  ; $6420: $30 $9e

    jr z, jr_0e6_645c                             ; $6422: $28 $38

    jr z, @+$3a                                   ; $6424: $28 $38

    inc [hl]                                      ; $6426: $34
    inc a                                         ; $6427: $3c
    ld a, [hl+]                                   ; $6428: $2a
    ld a, $1e                                     ; $6429: $3e $1e
    ld a, [hl-]                                   ; $642b: $3a
    inc de                                        ; $642c: $13
    dec a                                         ; $642d: $3d
    cpl                                           ; $642e: $2f
    dec [hl]                                      ; $642f: $35
    dec hl                                        ; $6430: $2b
    dec [hl]                                      ; $6431: $35
    inc sp                                        ; $6432: $33
    dec e                                         ; $6433: $1d
    add hl, de                                    ; $6434: $19
    ccf                                           ; $6435: $3f
    cpl                                           ; $6436: $2f
    rla                                           ; $6437: $17
    ld d, $3e                                     ; $6438: $16 $3e
    ld a, [hl-]                                   ; $643a: $3a
    ld [hl], $34                                  ; $643b: $36 $34
    inc e                                         ; $643d: $1c
    jr z, @+$3a                                   ; $643e: $28 $38

    ld [bc], a                                    ; $6440: $02
    db $db                                        ; $6441: $db
    add h                                         ; $6442: $84
    rst $28                                       ; $6443: $ef
    rst $30                                       ; $6444: $f7
    inc h                                         ; $6445: $24
    inc a                                         ; $6446: $3c
    ld [bc], a                                    ; $6447: $02
    jr jr_0e6_6462                                ; $6448: $18 $18

    nop                                           ; $644a: $00
    rst $38                                       ; $644b: $ff
    rrca                                          ; $644c: $0f
    dec b                                         ; $644d: $05
    push af                                       ; $644e: $f5
    inc c                                         ; $644f: $0c
    rst $30                                       ; $6450: $f7
    ld b, $ee                                     ; $6451: $06 $ee
    ld hl, sp-$12                                 ; $6453: $f8 $ee
    nop                                           ; $6455: $00
    di                                            ; $6456: $f3
    ld [bc], a                                    ; $6457: $02
    cp $f9                                        ; $6458: $fe $f9

jr_0e6_645a:
    cp $ff                                        ; $645a: $fe $ff

jr_0e6_645c:
    ld [bc], a                                    ; $645c: $02
    ld bc, $0281                                  ; $645d: $01 $81 $02
    inc bc                                        ; $6460: $03
    inc bc                                        ; $6461: $03

jr_0e6_6462:
    ld [bc], a                                    ; $6462: $02
    ld bc, $2002                                  ; $6463: $01 $02 $20
    ld [bc], a                                    ; $6466: $02
    ld l, b                                       ; $6467: $68
    ld [bc], a                                    ; $6468: $02
    ld h, l                                       ; $6469: $65
    sub d                                         ; $646a: $92
    xor e                                         ; $646b: $ab
    rst $28                                       ; $646c: $ef
    or c                                          ; $646d: $b1
    rst $38                                       ; $646e: $ff
    sbc a                                         ; $646f: $9f
    ei                                            ; $6470: $fb
    or a                                          ; $6471: $b7
    rst $30                                       ; $6472: $f7
    xor $bf                                       ; $6473: $ee $bf
    sub h                                         ; $6475: $94
    rst $28                                       ; $6476: $ef
    or $bf                                        ; $6477: $f6 $bf
    jp nc, Jump_0e6_4fbd                          ; $6479: $d2 $bd $4f

    ld [hl], a                                    ; $647c: $77
    ld [bc], a                                    ; $647d: $02
    add b                                         ; $647e: $80
    ld [bc], a                                    ; $647f: $02
    ret nz                                        ; $6480: $c0

    ld [bc], a                                    ; $6481: $02
    nop                                           ; $6482: $00
    ld [bc], a                                    ; $6483: $02
    add b                                         ; $6484: $80
    ld [bc], a                                    ; $6485: $02
    pop bc                                        ; $6486: $c1
    ld [bc], a                                    ; $6487: $02
    push bc                                       ; $6488: $c5
    sub h                                         ; $6489: $94
    xor c                                         ; $648a: $a9
    jp hl                                         ; $648b: $e9


    dec [hl]                                      ; $648c: $35
    db $fd                                        ; $648d: $fd
    ld h, e                                       ; $648e: $63
    rst $38                                       ; $648f: $ff
    cp [hl]                                       ; $6490: $be
    rst $30                                       ; $6491: $f7
    ld a, e                                       ; $6492: $7b
    ei                                            ; $6493: $fb
    sbc l                                         ; $6494: $9d
    rst $38                                       ; $6495: $ff
    ld c, d                                       ; $6496: $4a
    db $fd                                        ; $6497: $fd
    sbc e                                         ; $6498: $9b
    rst $38                                       ; $6499: $ff
    ld d, d                                       ; $649a: $52
    rst $28                                       ; $649b: $ef
    cp h                                          ; $649c: $bc
    ei                                            ; $649d: $fb
    inc b                                         ; $649e: $04
    ld [bc], a                                    ; $649f: $02
    add a                                         ; $64a0: $87
    ld bc, $0103                                  ; $64a1: $01 $03 $01
    inc bc                                        ; $64a4: $03
    ld bc, $0103                                  ; $64a5: $01 $03 $01
    ld [bc], a                                    ; $64a8: $02
    inc bc                                        ; $64a9: $03
    ld [bc], a                                    ; $64aa: $02
    ld bc, $0302                                  ; $64ab: $01 $02 $03
    add e                                         ; $64ae: $83
    ld bc, $0103                                  ; $64af: $01 $03 $01
    ld [bc], a                                    ; $64b2: $02
    ld [bc], a                                    ; $64b3: $02
    adc b                                         ; $64b4: $88
    sbc $5a                                       ; $64b5: $de $5a
    sbc h                                         ; $64b7: $9c
    sub h                                         ; $64b8: $94
    db $fc                                        ; $64b9: $fc
    db $ec                                        ; $64ba: $ec
    ld l, b                                       ; $64bb: $68
    ld a, b                                       ; $64bc: $78
    ld [bc], a                                    ; $64bd: $02
    or h                                          ; $64be: $b4

jr_0e6_64bf:
    adc h                                         ; $64bf: $8c
    push af                                       ; $64c0: $f5
    or a                                          ; $64c1: $b7
    ld [hl], d                                    ; $64c2: $72
    ld d, e                                       ; $64c3: $53
    ld a, [hl]                                    ; $64c4: $7e
    ld l, a                                       ; $64c5: $6f
    dec l                                         ; $64c6: $2d
    dec a                                         ; $64c7: $3d
    ld e, d                                       ; $64c8: $5a
    ld e, e                                       ; $64c9: $5b
    ld a, [hl+]                                   ; $64ca: $2a
    dec hl                                        ; $64cb: $2b
    ld [bc], a                                    ; $64cc: $02
    ld de, $0012                                  ; $64cd: $11 $12 $00
    inc bc                                        ; $64d0: $03
    jr nz, jr_0e6_64d5                            ; $64d1: $20 $02

    nop                                           ; $64d3: $00
    inc b                                         ; $64d4: $04

jr_0e6_64d5:
    jr nz, jr_0e6_645a                            ; $64d5: $20 $83

    nop                                           ; $64d7: $00
    dec d                                         ; $64d8: $15
    dec [hl]                                      ; $64d9: $35
    ld [bc], a                                    ; $64da: $02
    ld [hl+], a                                   ; $64db: $22
    ld [de], a                                    ; $64dc: $12
    nop                                           ; $64dd: $00
    rst $38                                       ; $64de: $ff
    rlca                                          ; $64df: $07
    ld bc, $0cf5                                  ; $64e0: $01 $f5 $0c
    rst $30                                       ; $64e3: $f7
    ld b, $01                                     ; $64e4: $06 $01
    ei                                            ; $64e6: $fb
    ld [bc], a                                    ; $64e7: $02
    add hl, bc                                    ; $64e8: $09
    ld e, $00                                     ; $64e9: $1e $00
    rst $38                                       ; $64eb: $ff
    rrca                                          ; $64ec: $0f
    dec b                                         ; $64ed: $05
    push af                                       ; $64ee: $f5
    inc c                                         ; $64ef: $0c
    rst $30                                       ; $64f0: $f7
    ld b, $f5                                     ; $64f1: $06 $f5
    push af                                       ; $64f3: $f5
    db $ed                                        ; $64f4: $ed
    db $fd                                        ; $64f5: $fd
    push af                                       ; $64f6: $f5
    dec b                                         ; $64f7: $05
    db $fd                                        ; $64f8: $fd
    ld a, [$00fd]                                 ; $64f9: $fa $fd $00
    ld [bc], a                                    ; $64fc: $02
    jr nz, jr_0e6_6501                            ; $64fd: $20 $02

    ld b, c                                       ; $64ff: $41
    sbc d                                         ; $6500: $9a

jr_0e6_6501:
    jp nz, $a1c3                                  ; $6501: $c2 $c3 $a1

    pop hl                                        ; $6504: $e1
    xor b                                         ; $6505: $a8
    add sp, -$47                                  ; $6506: $e8 $b9
    reti                                          ; $6508: $d9


    cp [hl]                                       ; $6509: $be
    xor $bb                                       ; $650a: $ee $bb
    rst $10                                       ; $650c: $d7
    xor l                                         ; $650d: $ad
    db $db                                        ; $650e: $db
    ld d, h                                       ; $650f: $54
    ld l, a                                       ; $6510: $6f
    ld d, e                                       ; $6511: $53
    ld a, h                                       ; $6512: $7c
    daa                                           ; $6513: $27
    dec sp                                        ; $6514: $3b
    rla                                           ; $6515: $17
    dec e                                         ; $6516: $1d
    dec bc                                        ; $6517: $0b
    ld c, $06                                     ; $6518: $0e $06
    rlca                                          ; $651a: $07
    ld [bc], a                                    ; $651b: $02
    ld bc, $1802                                  ; $651c: $01 $02 $18
    add d                                         ; $651f: $82
    jr z, jr_0e6_655a                             ; $6520: $28 $38

    ld [bc], a                                    ; $6522: $02
    jr nc, jr_0e6_6527                            ; $6523: $30 $02

    jr nz, jr_0e6_6529                            ; $6525: $20 $02

jr_0e6_6527:
    jr nc, jr_0e6_652b                            ; $6527: $30 $02

jr_0e6_6529:
    db $10                                        ; $6529: $10
    ld [bc], a                                    ; $652a: $02

jr_0e6_652b:
    jr jr_0e6_64bf                                ; $652b: $18 $92

    inc d                                         ; $652d: $14
    inc e                                         ; $652e: $1c
    inc d                                         ; $652f: $14
    inc e                                         ; $6530: $1c
    and l                                         ; $6531: $a5
    cp l                                          ; $6532: $bd
    ld h, [hl]                                    ; $6533: $66
    rst $38                                       ; $6534: $ff
    rst $30                                       ; $6535: $f7
    ld a, [hl]                                    ; $6536: $7e
    rst $28                                       ; $6537: $ef
    cp l                                          ; $6538: $bd
    db $d3                                        ; $6539: $d3
    rst $38                                       ; $653a: $ff
    set 7, a                                      ; $653b: $cb $ff
    sub c                                         ; $653d: $91
    rst $38                                       ; $653e: $ff
    ld [bc], a                                    ; $653f: $02
    inc b                                         ; $6540: $04
    ld [bc], a                                    ; $6541: $02
    add d                                         ; $6542: $82
    sbc d                                         ; $6543: $9a
    ld b, e                                       ; $6544: $43
    jp $8785                                      ; $6545: $c3 $85 $87


    dec d                                         ; $6548: $15
    rla                                           ; $6549: $17
    sbc l                                         ; $654a: $9d
    sbc e                                         ; $654b: $9b
    ld a, l                                       ; $654c: $7d
    ld [hl], a                                    ; $654d: $77
    db $dd                                        ; $654e: $dd
    db $eb                                        ; $654f: $eb
    or l                                          ; $6550: $b5
    db $db                                        ; $6551: $db
    ld a, [hl+]                                   ; $6552: $2a
    or $ca                                        ; $6553: $f6 $ca
    ld a, $e4                                     ; $6555: $3e $e4
    call c, $b8e8                                 ; $6557: $dc $e8 $b8

jr_0e6_655a:
    ret nc                                        ; $655a: $d0

    ld [hl], b                                    ; $655b: $70
    ld h, b                                       ; $655c: $60
    ldh [rSC], a                                  ; $655d: $e0 $02
    add b                                         ; $655f: $80
    adc h                                         ; $6560: $8c
    add hl, bc                                    ; $6561: $09
    rra                                           ; $6562: $1f
    ld a, [de]                                    ; $6563: $1a
    rlca                                          ; $6564: $07
    dec e                                         ; $6565: $1d
    rra                                           ; $6566: $1f
    dec bc                                        ; $6567: $0b
    rrca                                          ; $6568: $0f
    dec b                                         ; $6569: $05
    ld b, $1c                                     ; $656a: $06 $1c
    rra                                           ; $656c: $1f
    ld [bc], a                                    ; $656d: $02
    dec de                                        ; $656e: $1b
    add h                                         ; $656f: $84
    dec d                                         ; $6570: $15
    ld d, $d4                                     ; $6571: $16 $d4
    rst $10                                       ; $6573: $d7
    ld [bc], a                                    ; $6574: $02
    inc hl                                        ; $6575: $23
    inc c                                         ; $6576: $0c
    nop                                           ; $6577: $00
    add h                                         ; $6578: $84
    db $10                                        ; $6579: $10
    jr c, @+$1a                                   ; $657a: $38 $18

    jr nz, jr_0e6_6580                            ; $657c: $20 $02

    jr c, @-$7c                                   ; $657e: $38 $82

jr_0e6_6580:
    jr nc, jr_0e6_6592                            ; $6580: $30 $10

    ld [bc], a                                    ; $6582: $02
    jr nz, jr_0e6_6587                            ; $6583: $20 $02

    jr c, jr_0e6_6589                             ; $6585: $38 $02

jr_0e6_6587:
    jr jr_0e6_658b                                ; $6587: $18 $02

jr_0e6_6589:
    jr z, jr_0e6_658d                             ; $6589: $28 $02

jr_0e6_658b:
    dec hl                                        ; $658b: $2b
    ld [bc], a                                    ; $658c: $02

jr_0e6_658d:
    inc b                                         ; $658d: $04
    inc c                                         ; $658e: $0c
    nop                                           ; $658f: $00
    rst $38                                       ; $6590: $ff
    rlca                                          ; $6591: $07

jr_0e6_6592:
    ld bc, $0cf5                                  ; $6592: $01 $f5 $0c
    rst $30                                       ; $6595: $f7
    ld b, $03                                     ; $6596: $06 $03
    ei                                            ; $6598: $fb
    ld [bc], a                                    ; $6599: $02
    add hl, bc                                    ; $659a: $09
    ld e, $00                                     ; $659b: $1e $00
    rst $38                                       ; $659d: $ff
    rrca                                          ; $659e: $0f
    dec b                                         ; $659f: $05
    push af                                       ; $65a0: $f5
    inc c                                         ; $65a1: $0c
    rst $30                                       ; $65a2: $f7
    ld b, $f5                                     ; $65a3: $06 $f5
    push af                                       ; $65a5: $f5
    db $ec                                        ; $65a6: $ec
    db $fd                                        ; $65a7: $fd
    push af                                       ; $65a8: $f5
    dec b                                         ; $65a9: $05
    db $fc                                        ; $65aa: $fc
    ld sp, hl                                     ; $65ab: $f9
    db $fc                                        ; $65ac: $fc
    ld bc, $4102                                  ; $65ad: $01 $02 $41
    sbc h                                         ; $65b0: $9c
    jp nz, $a1c3                                  ; $65b1: $c2 $c3 $a1

    pop hl                                        ; $65b4: $e1
    xor b                                         ; $65b5: $a8
    add sp, -$47                                  ; $65b6: $e8 $b9
    reti                                          ; $65b8: $d9


    sbc d                                         ; $65b9: $9a
    ld [$d7bf], a                                 ; $65ba: $ea $bf $d7
    xor a                                         ; $65bd: $af
    reti                                          ; $65be: $d9


    or [hl]                                       ; $65bf: $b6
    rst $08                                       ; $65c0: $cf
    ld c, c                                       ; $65c1: $49
    ld a, [hl]                                    ; $65c2: $7e
    ld b, e                                       ; $65c3: $43
    ld a, l                                       ; $65c4: $7d
    ld l, $3a                                     ; $65c5: $2e $3a
    rla                                           ; $65c7: $17
    dec e                                         ; $65c8: $1d
    dec bc                                        ; $65c9: $0b
    ld c, $05                                     ; $65ca: $0e $05
    rlca                                          ; $65cc: $07
    ld [bc], a                                    ; $65cd: $02
    inc bc                                        ; $65ce: $03
    ld [bc], a                                    ; $65cf: $02
    inc c                                         ; $65d0: $0c
    add d                                         ; $65d1: $82
    inc d                                         ; $65d2: $14
    inc e                                         ; $65d3: $1c
    ld [bc], a                                    ; $65d4: $02
    jr jr_0e6_65d9                                ; $65d5: $18 $02

    db $10                                        ; $65d7: $10
    ld [bc], a                                    ; $65d8: $02

jr_0e6_65d9:
    jr @+$04                                      ; $65d9: $18 $02

    ld [$0c02], sp                                ; $65db: $08 $02 $0c
    sub d                                         ; $65de: $92
    inc d                                         ; $65df: $14
    inc e                                         ; $65e0: $1c
    inc d                                         ; $65e1: $14
    inc e                                         ; $65e2: $1c
    or l                                          ; $65e3: $b5
    xor l                                         ; $65e4: $ad
    ld h, [hl]                                    ; $65e5: $66
    rst $38                                       ; $65e6: $ff
    rst $28                                       ; $65e7: $ef
    ld a, [hl]                                    ; $65e8: $7e
    rst $30                                       ; $65e9: $f7
    cp l                                          ; $65ea: $bd
    set 7, a                                      ; $65eb: $cb $ff
    db $d3                                        ; $65ed: $d3
    rst $38                                       ; $65ee: $ff
    adc c                                         ; $65ef: $89
    rst $38                                       ; $65f0: $ff
    ld [bc], a                                    ; $65f1: $02
    add d                                         ; $65f2: $82
    sbc h                                         ; $65f3: $9c
    ld b, e                                       ; $65f4: $43
    jp $8785                                      ; $65f5: $c3 $85 $87


    dec d                                         ; $65f8: $15
    rla                                           ; $65f9: $17
    sbc l                                         ; $65fa: $9d
    sbc e                                         ; $65fb: $9b
    ld e, c                                       ; $65fc: $59
    ld d, a                                       ; $65fd: $57
    db $fd                                        ; $65fe: $fd
    db $eb                                        ; $65ff: $eb
    push af                                       ; $6600: $f5
    sbc e                                         ; $6601: $9b
    ld l, l                                       ; $6602: $6d
    di                                            ; $6603: $f3
    sub d                                         ; $6604: $92
    ld a, [hl]                                    ; $6605: $7e
    jp nz, $74be                                  ; $6606: $c2 $be $74

    ld e, h                                       ; $6609: $5c
    add sp, -$48                                  ; $660a: $e8 $b8
    ret nc                                        ; $660c: $d0

    ld [hl], b                                    ; $660d: $70
    and b                                         ; $660e: $a0
    ldh [rSC], a                                  ; $660f: $e0 $02
    ret nz                                        ; $6611: $c0

    add c                                         ; $6612: $81
    rlca                                          ; $6613: $07
    ld [bc], a                                    ; $6614: $02
    rrca                                          ; $6615: $0f
    add l                                         ; $6616: $85
    dec b                                         ; $6617: $05
    rrca                                          ; $6618: $0f
    ld c, $06                                     ; $6619: $0e $06
    rlca                                          ; $661b: $07
    ld [bc], a                                    ; $661c: $02
    dec b                                         ; $661d: $05
    add h                                         ; $661e: $84
    ld [bc], a                                    ; $661f: $02
    inc bc                                        ; $6620: $03
    ld a, [bc]                                    ; $6621: $0a
    dec bc                                        ; $6622: $0b
    ld [bc], a                                    ; $6623: $02
    ld bc, $0002                                  ; $6624: $01 $02 $00
    ld [bc], a                                    ; $6627: $02
    ret nc                                        ; $6628: $d0

    ld [bc], a                                    ; $6629: $02
    jr nz, jr_0e6_6636                            ; $662a: $20 $0a

    nop                                           ; $662c: $00
    add c                                         ; $662d: $81
    ld h, b                                       ; $662e: $60
    ld [bc], a                                    ; $662f: $02
    ldh a, [$85]                                  ; $6630: $f0 $85
    and b                                         ; $6632: $a0
    ldh a, [rSVBK]                                ; $6633: $f0 $70
    ld h, b                                       ; $6635: $60

jr_0e6_6636:
    ldh [rSC], a                                  ; $6636: $e0 $02
    and b                                         ; $6638: $a0
    add h                                         ; $6639: $84
    ret nz                                        ; $663a: $c0

    ld b, b                                       ; $663b: $40
    ld d, b                                       ; $663c: $50
    ret nc                                        ; $663d: $d0

    ld [bc], a                                    ; $663e: $02
    add b                                         ; $663f: $80
    ld [bc], a                                    ; $6640: $02
    nop                                           ; $6641: $00
    ld [bc], a                                    ; $6642: $02
    dec bc                                        ; $6643: $0b
    ld [bc], a                                    ; $6644: $02
    inc b                                         ; $6645: $04
    ld a, [bc]                                    ; $6646: $0a
    nop                                           ; $6647: $00
    rst $38                                       ; $6648: $ff
    rlca                                          ; $6649: $07
    ld bc, $0cf5                                  ; $664a: $01 $f5 $0c
    rst $30                                       ; $664d: $f7
    ld b, $00                                     ; $664e: $06 $00
    ei                                            ; $6650: $fb
    ld [bc], a                                    ; $6651: $02
    add hl, bc                                    ; $6652: $09
    ld e, $00                                     ; $6653: $1e $00
    rst $38                                       ; $6655: $ff
    rrca                                          ; $6656: $0f
    dec b                                         ; $6657: $05
    push af                                       ; $6658: $f5
    inc c                                         ; $6659: $0c
    rst $30                                       ; $665a: $f7
    ld b, $f5                                     ; $665b: $06 $f5
    push af                                       ; $665d: $f5
    db $ec                                        ; $665e: $ec
    db $fd                                        ; $665f: $fd
    push af                                       ; $6660: $f5
    dec b                                         ; $6661: $05
    db $fc                                        ; $6662: $fc
    ld sp, hl                                     ; $6663: $f9
    db $fc                                        ; $6664: $fc
    ld bc, $4102                                  ; $6665: $01 $02 $41
    sbc h                                         ; $6668: $9c
    ld b, d                                       ; $6669: $42
    ld b, e                                       ; $666a: $43
    and c                                         ; $666b: $a1
    pop hl                                        ; $666c: $e1
    xor b                                         ; $666d: $a8
    add sp, -$47                                  ; $666e: $e8 $b9
    reti                                          ; $6670: $d9


    cp d                                          ; $6671: $ba
    jp z, $d7bf                                   ; $6672: $ca $bf $d7

    xor a                                         ; $6675: $af
    reti                                          ; $6676: $d9


    xor [hl]                                      ; $6677: $ae
    rst $10                                       ; $6678: $d7
    ld c, c                                       ; $6679: $49
    ld a, [hl]                                    ; $667a: $7e
    ld b, e                                       ; $667b: $43
    ld a, l                                       ; $667c: $7d
    ld l, $3a                                     ; $667d: $2e $3a
    rla                                           ; $667f: $17
    dec e                                         ; $6680: $1d
    dec bc                                        ; $6681: $0b
    ld c, $05                                     ; $6682: $0e $05
    rlca                                          ; $6684: $07
    ld [bc], a                                    ; $6685: $02
    inc bc                                        ; $6686: $03
    ld [bc], a                                    ; $6687: $02
    inc c                                         ; $6688: $0c
    add d                                         ; $6689: $82
    inc d                                         ; $668a: $14
    inc e                                         ; $668b: $1c
    ld [bc], a                                    ; $668c: $02
    jr jr_0e6_6691                                ; $668d: $18 $02

    db $10                                        ; $668f: $10
    ld [bc], a                                    ; $6690: $02

jr_0e6_6691:
    jr @+$04                                      ; $6691: $18 $02

    ld [$0c02], sp                                ; $6693: $08 $02 $0c
    adc l                                         ; $6696: $8d
    inc d                                         ; $6697: $14
    inc e                                         ; $6698: $1c
    inc d                                         ; $6699: $14
    inc e                                         ; $669a: $1c
    or l                                          ; $669b: $b5
    xor l                                         ; $669c: $ad
    ld h, [hl]                                    ; $669d: $66
    rst $38                                       ; $669e: $ff
    rst $28                                       ; $669f: $ef
    ld a, [hl]                                    ; $66a0: $7e
    rst $30                                       ; $66a1: $f7
    cp l                                          ; $66a2: $bd
    rst $28                                       ; $66a3: $ef
    ld [bc], a                                    ; $66a4: $02
    rst $38                                       ; $66a5: $ff
    add e                                         ; $66a6: $83
    db $db                                        ; $66a7: $db
    cp l                                          ; $66a8: $bd
    rst $20                                       ; $66a9: $e7
    ld [bc], a                                    ; $66aa: $02
    add d                                         ; $66ab: $82
    sbc h                                         ; $66ac: $9c
    ld b, d                                       ; $66ad: $42
    jp nz, $8785                                  ; $66ae: $c2 $85 $87

    dec d                                         ; $66b1: $15
    rla                                           ; $66b2: $17
    sbc l                                         ; $66b3: $9d
    sbc e                                         ; $66b4: $9b
    ld e, l                                       ; $66b5: $5d
    ld d, e                                       ; $66b6: $53
    db $fd                                        ; $66b7: $fd
    db $eb                                        ; $66b8: $eb
    push af                                       ; $66b9: $f5
    sbc e                                         ; $66ba: $9b
    ld [hl], l                                    ; $66bb: $75
    db $eb                                        ; $66bc: $eb
    sub d                                         ; $66bd: $92
    ld a, [hl]                                    ; $66be: $7e
    jp nz, $74be                                  ; $66bf: $c2 $be $74

    ld e, h                                       ; $66c2: $5c
    add sp, -$48                                  ; $66c3: $e8 $b8
    ret nc                                        ; $66c5: $d0

    ld [hl], b                                    ; $66c6: $70
    and b                                         ; $66c7: $a0
    ldh [rSC], a                                  ; $66c8: $e0 $02
    ret nz                                        ; $66ca: $c0

    adc b                                         ; $66cb: $88
    rlca                                          ; $66cc: $07
    ld c, $0d                                     ; $66cd: $0e $0d
    dec b                                         ; $66cf: $05
    rrca                                          ; $66d0: $0f
    ld c, $03                                     ; $66d1: $0e $03
    ld [bc], a                                    ; $66d3: $02
    ld [bc], a                                    ; $66d4: $02
    ld bc, $0002                                  ; $66d5: $01 $02 $00
    ld [bc], a                                    ; $66d8: $02
    ld [$0004], sp                                ; $66d9: $08 $04 $00
    ld [bc], a                                    ; $66dc: $02
    ret nc                                        ; $66dd: $d0

    ld [bc], a                                    ; $66de: $02
    jr nz, jr_0e6_66eb                            ; $66df: $20 $0a

    nop                                           ; $66e1: $00
    adc b                                         ; $66e2: $88
    ldh [rSVBK], a                                ; $66e3: $e0 $70
    or b                                          ; $66e5: $b0
    and b                                         ; $66e6: $a0
    ldh a, [rSVBK]                                ; $66e7: $f0 $70
    ret nz                                        ; $66e9: $c0

    ld b, b                                       ; $66ea: $40

jr_0e6_66eb:
    ld [bc], a                                    ; $66eb: $02
    add b                                         ; $66ec: $80
    ld [bc], a                                    ; $66ed: $02
    nop                                           ; $66ee: $00
    ld [bc], a                                    ; $66ef: $02
    db $10                                        ; $66f0: $10
    inc b                                         ; $66f1: $04
    nop                                           ; $66f2: $00
    ld [bc], a                                    ; $66f3: $02
    dec bc                                        ; $66f4: $0b
    ld [bc], a                                    ; $66f5: $02
    inc b                                         ; $66f6: $04
    ld a, [bc]                                    ; $66f7: $0a
    nop                                           ; $66f8: $00
    rst $38                                       ; $66f9: $ff
    rlca                                          ; $66fa: $07
    ld bc, $0cf5                                  ; $66fb: $01 $f5 $0c
    rst $30                                       ; $66fe: $f7
    ld b, $fd                                     ; $66ff: $06 $fd
    ei                                            ; $6701: $fb
    ld [bc], a                                    ; $6702: $02
    add hl, bc                                    ; $6703: $09
    ld e, $00                                     ; $6704: $1e $00
    rst $38                                       ; $6706: $ff
    rrca                                          ; $6707: $0f
    dec b                                         ; $6708: $05
    push af                                       ; $6709: $f5
    inc c                                         ; $670a: $0c
    rst $30                                       ; $670b: $f7
    ld b, $f5                                     ; $670c: $06 $f5
    push af                                       ; $670e: $f5
    db $ec                                        ; $670f: $ec
    db $fd                                        ; $6710: $fd
    push af                                       ; $6711: $f5
    dec b                                         ; $6712: $05
    db $fc                                        ; $6713: $fc
    ld sp, hl                                     ; $6714: $f9
    db $fc                                        ; $6715: $fc
    ld bc, $4102                                  ; $6716: $01 $02 $41
    sbc h                                         ; $6719: $9c
    ld b, d                                       ; $671a: $42
    ld b, e                                       ; $671b: $43
    and c                                         ; $671c: $a1
    pop hl                                        ; $671d: $e1
    xor b                                         ; $671e: $a8
    add sp, -$47                                  ; $671f: $e8 $b9
    reti                                          ; $6721: $d9


    cp d                                          ; $6722: $ba
    jp z, $d7bf                                   ; $6723: $ca $bf $d7

    xor a                                         ; $6726: $af
    reti                                          ; $6727: $d9


    xor [hl]                                      ; $6728: $ae
    rst $10                                       ; $6729: $d7
    ld c, c                                       ; $672a: $49
    ld a, [hl]                                    ; $672b: $7e
    ld b, e                                       ; $672c: $43
    ld a, l                                       ; $672d: $7d
    ld l, $3a                                     ; $672e: $2e $3a
    rla                                           ; $6730: $17
    dec e                                         ; $6731: $1d
    dec bc                                        ; $6732: $0b
    ld c, $05                                     ; $6733: $0e $05
    rlca                                          ; $6735: $07
    ld [bc], a                                    ; $6736: $02
    inc bc                                        ; $6737: $03
    ld [bc], a                                    ; $6738: $02
    inc c                                         ; $6739: $0c
    add d                                         ; $673a: $82
    inc d                                         ; $673b: $14
    inc e                                         ; $673c: $1c
    ld [bc], a                                    ; $673d: $02
    jr jr_0e6_6742                                ; $673e: $18 $02

    db $10                                        ; $6740: $10
    ld [bc], a                                    ; $6741: $02

jr_0e6_6742:
    jr @+$04                                      ; $6742: $18 $02

    ld [$0c02], sp                                ; $6744: $08 $02 $0c
    add a                                         ; $6747: $87
    inc d                                         ; $6748: $14
    inc e                                         ; $6749: $1c
    inc d                                         ; $674a: $14
    inc e                                         ; $674b: $1c
    or l                                          ; $674c: $b5
    xor l                                         ; $674d: $ad
    ld h, [hl]                                    ; $674e: $66
    ld [bc], a                                    ; $674f: $02
    rst $38                                       ; $6750: $ff
    add l                                         ; $6751: $85
    ld e, d                                       ; $6752: $5a
    rst $38                                       ; $6753: $ff
    and l                                         ; $6754: $a5
    rst $38                                       ; $6755: $ff
    rst $20                                       ; $6756: $e7
    ld [bc], a                                    ; $6757: $02
    db $db                                        ; $6758: $db
    add d                                         ; $6759: $82
    db $fd                                        ; $675a: $fd
    rst $20                                       ; $675b: $e7
    ld [bc], a                                    ; $675c: $02
    add d                                         ; $675d: $82
    sbc h                                         ; $675e: $9c
    ld b, d                                       ; $675f: $42
    jp nz, $8785                                  ; $6760: $c2 $85 $87

    dec d                                         ; $6763: $15
    rla                                           ; $6764: $17
    sbc l                                         ; $6765: $9d
    sbc e                                         ; $6766: $9b
    ld e, l                                       ; $6767: $5d
    ld d, e                                       ; $6768: $53
    db $fd                                        ; $6769: $fd
    db $eb                                        ; $676a: $eb
    push af                                       ; $676b: $f5
    sbc e                                         ; $676c: $9b
    ld [hl], l                                    ; $676d: $75
    db $eb                                        ; $676e: $eb
    sub d                                         ; $676f: $92
    ld a, [hl]                                    ; $6770: $7e
    jp nz, $74be                                  ; $6771: $c2 $be $74

    ld e, h                                       ; $6774: $5c
    add sp, -$48                                  ; $6775: $e8 $b8
    ret nc                                        ; $6777: $d0

    ld [hl], b                                    ; $6778: $70
    and b                                         ; $6779: $a0
    ldh [rSC], a                                  ; $677a: $e0 $02
    ret nz                                        ; $677c: $c0

    add [hl]                                      ; $677d: $86
    rlca                                          ; $677e: $07
    ld c, $0f                                     ; $677f: $0e $0f
    inc bc                                        ; $6781: $03
    rrca                                          ; $6782: $0f
    ld c, $02                                     ; $6783: $0e $02
    ld bc, $0004                                  ; $6785: $01 $04 $00
    ld [bc], a                                    ; $6788: $02
    ld [$0004], sp                                ; $6789: $08 $04 $00
    ld [bc], a                                    ; $678c: $02
    ret nc                                        ; $678d: $d0

    ld [bc], a                                    ; $678e: $02
    jr nz, jr_0e6_679b                            ; $678f: $20 $0a

    nop                                           ; $6791: $00
    add [hl]                                      ; $6792: $86
    ldh [rSVBK], a                                ; $6793: $e0 $70
    or b                                          ; $6795: $b0
    ret nz                                        ; $6796: $c0

    ldh a, [rSVBK]                                ; $6797: $f0 $70
    ld [bc], a                                    ; $6799: $02
    add b                                         ; $679a: $80

jr_0e6_679b:
    inc b                                         ; $679b: $04
    nop                                           ; $679c: $00
    ld [bc], a                                    ; $679d: $02
    db $10                                        ; $679e: $10
    inc b                                         ; $679f: $04
    nop                                           ; $67a0: $00
    ld [bc], a                                    ; $67a1: $02
    dec bc                                        ; $67a2: $0b

Call_0e6_67a3:
    ld [bc], a                                    ; $67a3: $02
    inc b                                         ; $67a4: $04
    ld a, [bc]                                    ; $67a5: $0a
    nop                                           ; $67a6: $00
    rst $38                                       ; $67a7: $ff
    rlca                                          ; $67a8: $07
    ld bc, $0cf5                                  ; $67a9: $01 $f5 $0c
    rst $30                                       ; $67ac: $f7
    ld b, $fa                                     ; $67ad: $06 $fa
    ei                                            ; $67af: $fb
    ld [bc], a                                    ; $67b0: $02
    add hl, bc                                    ; $67b1: $09
    ld e, $00                                     ; $67b2: $1e $00
    rst $38                                       ; $67b4: $ff
    rrca                                          ; $67b5: $0f
    dec b                                         ; $67b6: $05
    push af                                       ; $67b7: $f5
    inc c                                         ; $67b8: $0c
    rst $30                                       ; $67b9: $f7
    ld b, $f5                                     ; $67ba: $06 $f5
    push af                                       ; $67bc: $f5
    db $ec                                        ; $67bd: $ec
    db $fd                                        ; $67be: $fd
    push af                                       ; $67bf: $f5
    dec b                                         ; $67c0: $05
    db $fc                                        ; $67c1: $fc
    ld sp, hl                                     ; $67c2: $f9
    db $fc                                        ; $67c3: $fc
    ld bc, $4102                                  ; $67c4: $01 $02 $41
    sbc h                                         ; $67c7: $9c
    ld b, d                                       ; $67c8: $42
    ld b, e                                       ; $67c9: $43
    and c                                         ; $67ca: $a1
    pop hl                                        ; $67cb: $e1
    xor b                                         ; $67cc: $a8
    add sp, -$47                                  ; $67cd: $e8 $b9
    reti                                          ; $67cf: $d9


    cp d                                          ; $67d0: $ba
    jp z, $d7bf                                   ; $67d1: $ca $bf $d7

    xor a                                         ; $67d4: $af
    reti                                          ; $67d5: $d9


    xor [hl]                                      ; $67d6: $ae
    rst $10                                       ; $67d7: $d7
    ld c, c                                       ; $67d8: $49
    ld a, [hl]                                    ; $67d9: $7e
    ld b, e                                       ; $67da: $43
    ld a, l                                       ; $67db: $7d
    ld l, $3a                                     ; $67dc: $2e $3a
    rla                                           ; $67de: $17
    dec e                                         ; $67df: $1d
    dec bc                                        ; $67e0: $0b
    ld c, $05                                     ; $67e1: $0e $05
    rlca                                          ; $67e3: $07
    ld [bc], a                                    ; $67e4: $02
    inc bc                                        ; $67e5: $03
    ld [bc], a                                    ; $67e6: $02
    inc c                                         ; $67e7: $0c
    add d                                         ; $67e8: $82
    inc d                                         ; $67e9: $14
    inc e                                         ; $67ea: $1c
    ld [bc], a                                    ; $67eb: $02
    jr jr_0e6_67f0                                ; $67ec: $18 $02

    db $10                                        ; $67ee: $10
    ld [bc], a                                    ; $67ef: $02

jr_0e6_67f0:
    jr @+$04                                      ; $67f0: $18 $02

    ld [$0c02], sp                                ; $67f2: $08 $02 $0c
    add a                                         ; $67f5: $87
    inc d                                         ; $67f6: $14
    inc e                                         ; $67f7: $1c
    inc d                                         ; $67f8: $14
    inc e                                         ; $67f9: $1c
    or l                                          ; $67fa: $b5
    cp l                                          ; $67fb: $bd
    halt                                          ; $67fc: $76
    ld [bc], a                                    ; $67fd: $02
    rst $38                                       ; $67fe: $ff
    adc c                                         ; $67ff: $89
    ld l, l                                       ; $6800: $6d
    rst $38                                       ; $6801: $ff

Call_0e6_6802:
    rst $08                                       ; $6802: $cf
    rst $30                                       ; $6803: $f7
    rst $10                                       ; $6804: $d7
    ei                                            ; $6805: $fb
    adc a                                         ; $6806: $8f
    pop af                                        ; $6807: $f1
    sbc a                                         ; $6808: $9f
    ld [bc], a                                    ; $6809: $02
    add d                                         ; $680a: $82
    sbc h                                         ; $680b: $9c
    ld b, d                                       ; $680c: $42
    jp nz, $8785                                  ; $680d: $c2 $85 $87

    dec d                                         ; $6810: $15
    rla                                           ; $6811: $17
    sbc l                                         ; $6812: $9d
    sbc e                                         ; $6813: $9b
    ld e, l                                       ; $6814: $5d
    ld d, e                                       ; $6815: $53
    db $fd                                        ; $6816: $fd
    db $eb                                        ; $6817: $eb
    push af                                       ; $6818: $f5
    sbc e                                         ; $6819: $9b
    ld [hl], l                                    ; $681a: $75
    db $eb                                        ; $681b: $eb
    sub d                                         ; $681c: $92
    ld a, [hl]                                    ; $681d: $7e
    jp nz, $74be                                  ; $681e: $c2 $be $74

    ld e, h                                       ; $6821: $5c
    add sp, -$48                                  ; $6822: $e8 $b8
    ret nc                                        ; $6824: $d0

    ld [hl], b                                    ; $6825: $70
    and b                                         ; $6826: $a0
    ldh [rSC], a                                  ; $6827: $e0 $02
    ret nz                                        ; $6829: $c0

    add c                                         ; $682a: $81
    ld b, $02                                     ; $682b: $06 $02
    rrca                                          ; $682d: $0f
    add e                                         ; $682e: $83
    ld [bc], a                                    ; $682f: $02
    ld c, $0f                                     ; $6830: $0e $0f
    ld [bc], a                                    ; $6832: $02
    ld bc, $0004                                  ; $6833: $01 $04 $00
    ld [bc], a                                    ; $6836: $02
    ld [$0004], sp                                ; $6837: $08 $04 $00
    ld [bc], a                                    ; $683a: $02
    ret nc                                        ; $683b: $d0

    ld [bc], a                                    ; $683c: $02
    jr nz, jr_0e6_6849                            ; $683d: $20 $0a

    nop                                           ; $683f: $00
    add [hl]                                      ; $6840: $86
    and b                                         ; $6841: $a0
    ld [hl], b                                    ; $6842: $70
    or b                                          ; $6843: $b0
    ld b, b                                       ; $6844: $40
    ld [hl], b                                    ; $6845: $70
    ldh a, [rSC]                                  ; $6846: $f0 $02
    add b                                         ; $6848: $80

jr_0e6_6849:
    inc b                                         ; $6849: $04
    nop                                           ; $684a: $00
    ld [bc], a                                    ; $684b: $02
    db $10                                        ; $684c: $10
    inc b                                         ; $684d: $04
    nop                                           ; $684e: $00
    ld [bc], a                                    ; $684f: $02
    dec bc                                        ; $6850: $0b
    ld [bc], a                                    ; $6851: $02
    inc b                                         ; $6852: $04
    ld a, [bc]                                    ; $6853: $0a
    nop                                           ; $6854: $00
    rst $38                                       ; $6855: $ff
    rlca                                          ; $6856: $07
    ld bc, $0cf5                                  ; $6857: $01 $f5 $0c
    rst $30                                       ; $685a: $f7
    ld b, $f9                                     ; $685b: $06 $f9
    ld a, [$0102]                                 ; $685d: $fa $02 $01
    ld e, $00                                     ; $6860: $1e $00
    rst $38                                       ; $6862: $ff
    rrca                                          ; $6863: $0f
    dec b                                         ; $6864: $05
    push af                                       ; $6865: $f5
    inc c                                         ; $6866: $0c
    rst $30                                       ; $6867: $f7
    ld b, $f5                                     ; $6868: $06 $f5
    push af                                       ; $686a: $f5
    db $ec                                        ; $686b: $ec
    db $fd                                        ; $686c: $fd
    push af                                       ; $686d: $f5
    dec b                                         ; $686e: $05
    db $fc                                        ; $686f: $fc
    ld a, [$00fc]                                 ; $6870: $fa $fc $00
    ld [bc], a                                    ; $6873: $02
    ld b, c                                       ; $6874: $41
    sbc h                                         ; $6875: $9c
    ld b, d                                       ; $6876: $42
    ld b, e                                       ; $6877: $43
    and c                                         ; $6878: $a1
    pop hl                                        ; $6879: $e1
    xor b                                         ; $687a: $a8
    add sp, -$47                                  ; $687b: $e8 $b9
    reti                                          ; $687d: $d9


    cp d                                          ; $687e: $ba
    jp z, $d7bf                                   ; $687f: $ca $bf $d7

    xor a                                         ; $6882: $af
    reti                                          ; $6883: $d9


    xor [hl]                                      ; $6884: $ae
    rst $10                                       ; $6885: $d7
    ld c, c                                       ; $6886: $49
    ld a, [hl]                                    ; $6887: $7e
    ld b, e                                       ; $6888: $43
    ld a, l                                       ; $6889: $7d
    ld l, $3a                                     ; $688a: $2e $3a
    rla                                           ; $688c: $17
    dec e                                         ; $688d: $1d
    dec bc                                        ; $688e: $0b
    ld c, $06                                     ; $688f: $0e $06
    rlca                                          ; $6891: $07
    ld [bc], a                                    ; $6892: $02
    ld bc, $0c02                                  ; $6893: $01 $02 $0c
    add d                                         ; $6896: $82
    inc d                                         ; $6897: $14
    inc e                                         ; $6898: $1c
    ld [bc], a                                    ; $6899: $02
    jr jr_0e6_689e                                ; $689a: $18 $02

    db $10                                        ; $689c: $10
    ld [bc], a                                    ; $689d: $02

jr_0e6_689e:
    jr @+$04                                      ; $689e: $18 $02

    ld [$0c02], sp                                ; $68a0: $08 $02 $0c
    add a                                         ; $68a3: $87
    inc d                                         ; $68a4: $14
    inc e                                         ; $68a5: $1c
    inc d                                         ; $68a6: $14
    inc e                                         ; $68a7: $1c
    or l                                          ; $68a8: $b5
    cp l                                          ; $68a9: $bd
    ld a, [hl]                                    ; $68aa: $7e
    ld [bc], a                                    ; $68ab: $02
    rst $38                                       ; $68ac: $ff
    add l                                         ; $68ad: $85
    ld l, l                                       ; $68ae: $6d
    rst $30                                       ; $68af: $f7
    sub a                                         ; $68b0: $97
    rst $38                                       ; $68b1: $ff
    rst $20                                       ; $68b2: $e7
    ld [bc], a                                    ; $68b3: $02
    rst $28                                       ; $68b4: $ef
    add d                                         ; $68b5: $82
    reti                                          ; $68b6: $d9


    rst $18                                       ; $68b7: $df
    ld [bc], a                                    ; $68b8: $02
    add d                                         ; $68b9: $82
    sbc h                                         ; $68ba: $9c
    ld b, d                                       ; $68bb: $42
    jp nz, $8785                                  ; $68bc: $c2 $85 $87

    dec d                                         ; $68bf: $15
    rla                                           ; $68c0: $17
    sbc l                                         ; $68c1: $9d
    sbc e                                         ; $68c2: $9b
    ld e, l                                       ; $68c3: $5d
    ld d, e                                       ; $68c4: $53
    db $fd                                        ; $68c5: $fd
    db $eb                                        ; $68c6: $eb
    push af                                       ; $68c7: $f5
    sbc e                                         ; $68c8: $9b
    ld [hl], l                                    ; $68c9: $75
    db $eb                                        ; $68ca: $eb
    sub d                                         ; $68cb: $92
    ld a, [hl]                                    ; $68cc: $7e
    jp nz, $74be                                  ; $68cd: $c2 $be $74

    ld e, h                                       ; $68d0: $5c
    add sp, -$48                                  ; $68d1: $e8 $b8
    ret nc                                        ; $68d3: $d0

    ld [hl], b                                    ; $68d4: $70
    ld h, b                                       ; $68d5: $60
    ldh [rSC], a                                  ; $68d6: $e0 $02
    add b                                         ; $68d8: $80
    add c                                         ; $68d9: $81
    ld c, $02                                     ; $68da: $0e $02
    rra                                           ; $68dc: $1f
    add c                                         ; $68dd: $81
    inc b                                         ; $68de: $04
    ld [bc], a                                    ; $68df: $02
    rra                                           ; $68e0: $1f
    ld b, $00                                     ; $68e1: $06 $00
    ld b, $10                                     ; $68e3: $06 $10
    ld [bc], a                                    ; $68e5: $02
    ret nc                                        ; $68e6: $d0

    ld [bc], a                                    ; $68e7: $02
    jr nz, jr_0e6_68f4                            ; $68e8: $20 $0a

    nop                                           ; $68ea: $00
    add c                                         ; $68eb: $81
    db $10                                        ; $68ec: $10
    ld [bc], a                                    ; $68ed: $02
    jr c, @-$7d                                   ; $68ee: $38 $81

    jr nz, jr_0e6_68f4                            ; $68f0: $20 $02

    jr c, jr_0e6_68fa                             ; $68f2: $38 $06

jr_0e6_68f4:
    nop                                           ; $68f4: $00
    ld b, $08                                     ; $68f5: $06 $08
    ld [bc], a                                    ; $68f7: $02
    dec bc                                        ; $68f8: $0b
    ld [bc], a                                    ; $68f9: $02

jr_0e6_68fa:
    inc b                                         ; $68fa: $04
    ld a, [bc]                                    ; $68fb: $0a
    nop                                           ; $68fc: $00
    rst $38                                       ; $68fd: $ff
    rlca                                          ; $68fe: $07
    ld bc, $0cf5                                  ; $68ff: $01 $f5 $0c
    rst $30                                       ; $6902: $f7
    ld b, $f8                                     ; $6903: $06 $f8
    ld a, [$0102]                                 ; $6905: $fa $02 $01
    ld [bc], a                                    ; $6908: $02
    nop                                           ; $6909: $00
    add e                                         ; $690a: $83
    ld [bc], a                                    ; $690b: $02
    nop                                           ; $690c: $00
    inc b                                         ; $690d: $04
    add hl, de                                    ; $690e: $19
    nop                                           ; $690f: $00
    rst $38                                       ; $6910: $ff
    rrca                                          ; $6911: $0f
    dec b                                         ; $6912: $05
    push af                                       ; $6913: $f5
    inc c                                         ; $6914: $0c
    rst $30                                       ; $6915: $f7
    ld b, $f4                                     ; $6916: $06 $f4
    push af                                       ; $6918: $f5
    db $ec                                        ; $6919: $ec
    db $fd                                        ; $691a: $fd
    db $f4                                        ; $691b: $f4
    dec b                                         ; $691c: $05
    db $fc                                        ; $691d: $fc
    ld a, [$00fc]                                 ; $691e: $fa $fc $00
    ld [bc], a                                    ; $6921: $02
    jr nz, jr_0e6_6926                            ; $6922: $20 $02

    ld b, c                                       ; $6924: $41
    sbc d                                         ; $6925: $9a

jr_0e6_6926:
    jp nz, $a1c3                                  ; $6926: $c2 $c3 $a1

    pop hl                                        ; $6929: $e1
    xor b                                         ; $692a: $a8
    add sp, -$47                                  ; $692b: $e8 $b9
    reti                                          ; $692d: $d9


    sbc a                                         ; $692e: $9f
    rst $28                                       ; $692f: $ef
    cp e                                          ; $6930: $bb
    sub $ab                                       ; $6931: $d6 $ab
    rst $18                                       ; $6933: $df
    ld d, l                                       ; $6934: $55
    ld l, a                                       ; $6935: $6f
    ld d, c                                       ; $6936: $51
    ld a, a                                       ; $6937: $7f
    daa                                           ; $6938: $27
    dec sp                                        ; $6939: $3b
    rla                                           ; $693a: $17
    dec e                                         ; $693b: $1d
    dec bc                                        ; $693c: $0b
    ld c, $06                                     ; $693d: $0e $06
    rlca                                          ; $693f: $07
    ld [bc], a                                    ; $6940: $02
    ld bc, $0c02                                  ; $6941: $01 $02 $0c
    add d                                         ; $6944: $82
    inc d                                         ; $6945: $14
    inc e                                         ; $6946: $1c
    ld [bc], a                                    ; $6947: $02
    jr jr_0e6_694c                                ; $6948: $18 $02

    db $10                                        ; $694a: $10
    ld [bc], a                                    ; $694b: $02

jr_0e6_694c:
    jr @+$04                                      ; $694c: $18 $02

    ld [$0c02], sp                                ; $694e: $08 $02 $0c
    adc l                                         ; $6951: $8d
    inc d                                         ; $6952: $14
    inc e                                         ; $6953: $1c
    inc d                                         ; $6954: $14
    inc e                                         ; $6955: $1c
    or l                                          ; $6956: $b5
    xor l                                         ; $6957: $ad
    ld l, [hl]                                    ; $6958: $6e
    rst $38                                       ; $6959: $ff
    rst $30                                       ; $695a: $f7
    ld a, [hl]                                    ; $695b: $7e
    rst $28                                       ; $695c: $ef
    db $fd                                        ; $695d: $fd
    db $db                                        ; $695e: $db
    ld [bc], a                                    ; $695f: $02
    rst $38                                       ; $6960: $ff
    add e                                         ; $6961: $83
    or a                                          ; $6962: $b7
    reti                                          ; $6963: $d9


    ld e, a                                       ; $6964: $5f
    ld [bc], a                                    ; $6965: $02
    inc b                                         ; $6966: $04
    ld [bc], a                                    ; $6967: $02
    add d                                         ; $6968: $82
    sbc d                                         ; $6969: $9a
    ld b, e                                       ; $696a: $43
    jp $8785                                      ; $696b: $c3 $85 $87


    dec d                                         ; $696e: $15
    rla                                           ; $696f: $17
    sbc l                                         ; $6970: $9d
    sbc e                                         ; $6971: $9b
    ld a, c                                       ; $6972: $79
    ld [hl], a                                    ; $6973: $77
    db $dd                                        ; $6974: $dd
    db $eb                                        ; $6975: $eb
    or l                                          ; $6976: $b5
    db $db                                        ; $6977: $db
    ld a, [hl+]                                   ; $6978: $2a
    or $ca                                        ; $6979: $f6 $ca
    ld a, $e4                                     ; $697b: $3e $e4
    call c, $b8e8                                 ; $697d: $dc $e8 $b8
    ret nc                                        ; $6980: $d0

    ld [hl], b                                    ; $6981: $70
    ld h, b                                       ; $6982: $60
    ldh [rSC], a                                  ; $6983: $e0 $02
    add b                                         ; $6985: $80
    add [hl]                                      ; $6986: $86
    ld e, $13                                     ; $6987: $1e $13
    ld d, $17                                     ; $6989: $16 $17
    rrca                                          ; $698b: $0f
    inc c                                         ; $698c: $0c
    ld [bc], a                                    ; $698d: $02
    dec de                                        ; $698e: $1b
    ld [bc], a                                    ; $698f: $02
    nop                                           ; $6990: $00
    ld b, $10                                     ; $6991: $06 $10
    ld [bc], a                                    ; $6993: $02
    ret nc                                        ; $6994: $d0

    ld [bc], a                                    ; $6995: $02
    jr nz, jr_0e6_69a4                            ; $6996: $20 $0c

    nop                                           ; $6998: $00
    add h                                         ; $6999: $84
    db $10                                        ; $699a: $10
    jr c, jr_0e6_69c5                             ; $699b: $38 $28

    jr nc, jr_0e6_69a1                            ; $699d: $30 $02

    jr c, jr_0e6_69a5                             ; $699f: $38 $04

jr_0e6_69a1:
    nop                                           ; $69a1: $00
    ld b, $08                                     ; $69a2: $06 $08

jr_0e6_69a4:
    ld [bc], a                                    ; $69a4: $02

jr_0e6_69a5:
    dec bc                                        ; $69a5: $0b
    ld [bc], a                                    ; $69a6: $02
    inc b                                         ; $69a7: $04
    inc c                                         ; $69a8: $0c
    nop                                           ; $69a9: $00
    rst $38                                       ; $69aa: $ff
    rlca                                          ; $69ab: $07
    ld bc, $0cf5                                  ; $69ac: $01 $f5 $0c
    rst $30                                       ; $69af: $f7
    ld b, $fb                                     ; $69b0: $06 $fb
    ld hl, sp+$02                                 ; $69b2: $f8 $02
    ld bc, $0002                                  ; $69b4: $01 $02 $00
    add e                                         ; $69b7: $83
    ld [bc], a                                    ; $69b8: $02
    nop                                           ; $69b9: $00
    inc b                                         ; $69ba: $04
    add hl, de                                    ; $69bb: $19
    nop                                           ; $69bc: $00
    rst $38                                       ; $69bd: $ff
    rrca                                          ; $69be: $0f
    dec b                                         ; $69bf: $05
    push af                                       ; $69c0: $f5
    inc c                                         ; $69c1: $0c
    rst $30                                       ; $69c2: $f7
    ld b, $f4                                     ; $69c3: $06 $f4

jr_0e6_69c5:
    push af                                       ; $69c5: $f5
    db $ec                                        ; $69c6: $ec
    db $fd                                        ; $69c7: $fd
    db $f4                                        ; $69c8: $f4
    dec b                                         ; $69c9: $05
    db $fc                                        ; $69ca: $fc
    ld a, [$00fc]                                 ; $69cb: $fa $fc $00
    ld [bc], a                                    ; $69ce: $02
    jr nz, jr_0e6_69d3                            ; $69cf: $20 $02

jr_0e6_69d1:
    ld b, c                                       ; $69d1: $41
    sbc h                                         ; $69d2: $9c

jr_0e6_69d3:
    jp nz, $a1c3                                  ; $69d3: $c2 $c3 $a1

    pop hl                                        ; $69d6: $e1
    xor b                                         ; $69d7: $a8
    add sp, -$47                                  ; $69d8: $e8 $b9
    reti                                          ; $69da: $d9


    cp [hl]                                       ; $69db: $be
    xor $bb                                       ; $69dc: $ee $bb
    rst $10                                       ; $69de: $d7
    xor l                                         ; $69df: $ad
    db $db                                        ; $69e0: $db
    ld d, h                                       ; $69e1: $54
    ld l, a                                       ; $69e2: $6f
    ld d, c                                       ; $69e3: $51
    ld a, a                                       ; $69e4: $7f
    daa                                           ; $69e5: $27
    dec sp                                        ; $69e6: $3b
    rla                                           ; $69e7: $17
    ld e, $0f                                     ; $69e8: $1e $0f
    ld c, $07                                     ; $69ea: $0e $07
    inc b                                         ; $69ec: $04
    rlca                                          ; $69ed: $07
    inc b                                         ; $69ee: $04
    ld [bc], a                                    ; $69ef: $02
    inc c                                         ; $69f0: $0c
    add d                                         ; $69f1: $82
    inc d                                         ; $69f2: $14
    inc e                                         ; $69f3: $1c
    ld [bc], a                                    ; $69f4: $02
    jr jr_0e6_69f9                                ; $69f5: $18 $02

    db $10                                        ; $69f7: $10
    ld [bc], a                                    ; $69f8: $02

jr_0e6_69f9:
    jr @+$04                                      ; $69f9: $18 $02

    ld [$0c02], sp                                ; $69fb: $08 $02 $0c
    sub d                                         ; $69fe: $92
    inc d                                         ; $69ff: $14
    inc e                                         ; $6a00: $1c
    inc d                                         ; $6a01: $14
    inc e                                         ; $6a02: $1c
    or l                                          ; $6a03: $b5
    xor l                                         ; $6a04: $ad
    ld h, [hl]                                    ; $6a05: $66
    rst $38                                       ; $6a06: $ff
    rst $28                                       ; $6a07: $ef
    ld a, [hl]                                    ; $6a08: $7e
    rst $30                                       ; $6a09: $f7
    cp l                                          ; $6a0a: $bd
    db $eb                                        ; $6a0b: $eb
    rst $38                                       ; $6a0c: $ff
    db $d3                                        ; $6a0d: $d3
    rst $38                                       ; $6a0e: $ff
    set 7, a                                      ; $6a0f: $cb $ff
    ld [bc], a                                    ; $6a11: $02
    inc b                                         ; $6a12: $04
    ld [bc], a                                    ; $6a13: $02
    add d                                         ; $6a14: $82
    sbc d                                         ; $6a15: $9a
    ld b, e                                       ; $6a16: $43
    jp $8785                                      ; $6a17: $c3 $85 $87


    dec d                                         ; $6a1a: $15
    rla                                           ; $6a1b: $17
    sbc l                                         ; $6a1c: $9d
    sbc e                                         ; $6a1d: $9b
    ld a, l                                       ; $6a1e: $7d
    ld [hl], a                                    ; $6a1f: $77
    db $dd                                        ; $6a20: $dd
    db $eb                                        ; $6a21: $eb
    or l                                          ; $6a22: $b5
    db $db                                        ; $6a23: $db
    ld a, [hl+]                                   ; $6a24: $2a
    or $ca                                        ; $6a25: $f6 $ca
    ld a, $e4                                     ; $6a27: $3e $e4
    call c, $b8e8                                 ; $6a29: $dc $e8 $b8
    ret nc                                        ; $6a2c: $d0

    ld [hl], b                                    ; $6a2d: $70
    ld h, b                                       ; $6a2e: $60
    ldh [rSC], a                                  ; $6a2f: $e0 $02
    add b                                         ; $6a31: $80
    add l                                         ; $6a32: $85
    ld a, [bc]                                    ; $6a33: $0a
    rra                                           ; $6a34: $1f
    inc e                                         ; $6a35: $1c
    rra                                           ; $6a36: $1f
    ld a, [de]                                    ; $6a37: $1a
    ld [bc], a                                    ; $6a38: $02
    rra                                           ; $6a39: $1f
    add e                                         ; $6a3a: $83
    dec c                                         ; $6a3b: $0d
    rra                                           ; $6a3c: $1f
    rrca                                          ; $6a3d: $0f
    ld [bc], a                                    ; $6a3e: $02
    inc d                                         ; $6a3f: $14
    add d                                         ; $6a40: $82
    jr jr_0e6_6a4b                                ; $6a41: $18 $08

    ld [bc], a                                    ; $6a43: $02
    db $10                                        ; $6a44: $10
    ld [bc], a                                    ; $6a45: $02
    ldh a, [rSC]                                  ; $6a46: $f0 $02
    jr nz, jr_0e6_6a56                            ; $6a48: $20 $0c

    nop                                           ; $6a4a: $00

jr_0e6_6a4b:
    add c                                         ; $6a4b: $81
    db $10                                        ; $6a4c: $10
    ld [bc], a                                    ; $6a4d: $02
    jr c, jr_0e6_69d1                             ; $6a4e: $38 $81

    jr nc, jr_0e6_6a54                            ; $6a50: $30 $02

    jr c, jr_0e6_6a56                             ; $6a52: $38 $02

jr_0e6_6a54:
    jr nz, @+$04                                  ; $6a54: $20 $02

jr_0e6_6a56:
    nop                                           ; $6a56: $00
    ld b, $08                                     ; $6a57: $06 $08
    ld [bc], a                                    ; $6a59: $02
    dec bc                                        ; $6a5a: $0b
    ld [bc], a                                    ; $6a5b: $02
    inc b                                         ; $6a5c: $04
    inc c                                         ; $6a5d: $0c
    nop                                           ; $6a5e: $00
    rst $38                                       ; $6a5f: $ff
    rlca                                          ; $6a60: $07
    ld bc, $0cf5                                  ; $6a61: $01 $f5 $0c
    rst $30                                       ; $6a64: $f7
    ld b, $01                                     ; $6a65: $06 $01
    rst $30                                       ; $6a67: $f7
    ld [bc], a                                    ; $6a68: $02
    ld bc, $001e                                  ; $6a69: $01 $1e $00
    rst $38                                       ; $6a6c: $ff
    rrca                                          ; $6a6d: $0f
    dec b                                         ; $6a6e: $05
    push af                                       ; $6a6f: $f5
    inc c                                         ; $6a70: $0c
    rst $30                                       ; $6a71: $f7
    ld b, $f5                                     ; $6a72: $06 $f5
    push af                                       ; $6a74: $f5
    db $ec                                        ; $6a75: $ec
    db $fd                                        ; $6a76: $fd
    push af                                       ; $6a77: $f5
    dec b                                         ; $6a78: $05
    db $fc                                        ; $6a79: $fc
    ld sp, hl                                     ; $6a7a: $f9
    db $fc                                        ; $6a7b: $fc
    ld bc, $4102                                  ; $6a7c: $01 $02 $41
    sbc h                                         ; $6a7f: $9c
    jp nz, $a1c3                                  ; $6a80: $c2 $c3 $a1

    pop hl                                        ; $6a83: $e1
    xor b                                         ; $6a84: $a8
    add sp, -$47                                  ; $6a85: $e8 $b9
    reti                                          ; $6a87: $d9


    sbc d                                         ; $6a88: $9a
    ld [$d7bf], a                                 ; $6a89: $ea $bf $d7
    xor a                                         ; $6a8c: $af
    reti                                          ; $6a8d: $d9


    or [hl]                                       ; $6a8e: $b6
    rst $08                                       ; $6a8f: $cf
    ld c, c                                       ; $6a90: $49
    ld a, [hl]                                    ; $6a91: $7e
    ld b, e                                       ; $6a92: $43
    ld a, l                                       ; $6a93: $7d
    ld l, $3a                                     ; $6a94: $2e $3a
    rla                                           ; $6a96: $17
    dec e                                         ; $6a97: $1d
    dec bc                                        ; $6a98: $0b
    rrca                                          ; $6a99: $0f
    dec b                                         ; $6a9a: $05
    rlca                                          ; $6a9b: $07
    ld [bc], a                                    ; $6a9c: $02
    inc bc                                        ; $6a9d: $03
    ld [bc], a                                    ; $6a9e: $02
    inc c                                         ; $6a9f: $0c
    add d                                         ; $6aa0: $82
    inc d                                         ; $6aa1: $14
    inc e                                         ; $6aa2: $1c
    ld [bc], a                                    ; $6aa3: $02
    jr jr_0e6_6aa8                                ; $6aa4: $18 $02

    db $10                                        ; $6aa6: $10
    ld [bc], a                                    ; $6aa7: $02

jr_0e6_6aa8:
    jr @+$04                                      ; $6aa8: $18 $02

    ld [$0c02], sp                                ; $6aaa: $08 $02 $0c
    sub d                                         ; $6aad: $92
    inc d                                         ; $6aae: $14
    inc e                                         ; $6aaf: $1c
    inc d                                         ; $6ab0: $14
    inc e                                         ; $6ab1: $1c
    or l                                          ; $6ab2: $b5
    xor l                                         ; $6ab3: $ad
    ld h, [hl]                                    ; $6ab4: $66
    rst $38                                       ; $6ab5: $ff
    rst $30                                       ; $6ab6: $f7
    ld a, [hl]                                    ; $6ab7: $7e
    rst $28                                       ; $6ab8: $ef
    cp l                                          ; $6ab9: $bd
    db $d3                                        ; $6aba: $d3
    rst $38                                       ; $6abb: $ff
    set 7, a                                      ; $6abc: $cb $ff
    ret                                           ; $6abe: $c9


    rst $38                                       ; $6abf: $ff
    ld [bc], a                                    ; $6ac0: $02
    add d                                         ; $6ac1: $82
    sbc h                                         ; $6ac2: $9c
    ld b, e                                       ; $6ac3: $43
    jp $8785                                      ; $6ac4: $c3 $85 $87


    dec d                                         ; $6ac7: $15
    rla                                           ; $6ac8: $17
    sbc l                                         ; $6ac9: $9d
    sbc e                                         ; $6aca: $9b
    ld e, c                                       ; $6acb: $59
    ld d, a                                       ; $6acc: $57
    db $fd                                        ; $6acd: $fd
    db $eb                                        ; $6ace: $eb
    push af                                       ; $6acf: $f5
    sbc e                                         ; $6ad0: $9b
    ld l, l                                       ; $6ad1: $6d
    di                                            ; $6ad2: $f3
    sub d                                         ; $6ad3: $92
    ld a, [hl]                                    ; $6ad4: $7e
    jp nz, $74be                                  ; $6ad5: $c2 $be $74

    ld e, h                                       ; $6ad8: $5c
    add sp, -$48                                  ; $6ad9: $e8 $b8
    ret nc                                        ; $6adb: $d0

    ld [hl], b                                    ; $6adc: $70
    and b                                         ; $6add: $a0
    ldh [rSC], a                                  ; $6ade: $e0 $02
    ret nz                                        ; $6ae0: $c0

    adc [hl]                                      ; $6ae1: $8e
    rlca                                          ; $6ae2: $07
    rrca                                          ; $6ae3: $0f
    ld c, $07                                     ; $6ae4: $0e $07
    rrca                                          ; $6ae6: $0f
    dec c                                         ; $6ae7: $0d
    rrca                                          ; $6ae8: $0f
    add hl, bc                                    ; $6ae9: $09
    ld c, $0a                                     ; $6aea: $0e $0a
    rrca                                          ; $6aec: $0f

jr_0e6_6aed:
    ld bc, $020e                                  ; $6aed: $01 $0e $02
    ld [bc], a                                    ; $6af0: $02
    inc c                                         ; $6af1: $0c
    ld [bc], a                                    ; $6af2: $02
    nop                                           ; $6af3: $00
    ld [bc], a                                    ; $6af4: $02
    ret nc                                        ; $6af5: $d0

    ld [bc], a                                    ; $6af6: $02
    jr nz, jr_0e6_6b03                            ; $6af7: $20 $0a

    nop                                           ; $6af9: $00
    add [hl]                                      ; $6afa: $86
    jr nz, jr_0e6_6aed                            ; $6afb: $20 $f0

    ld [hl], b                                    ; $6afd: $70
    ldh [$f0], a                                  ; $6afe: $e0 $f0
    or b                                          ; $6b00: $b0
    ld [bc], a                                    ; $6b01: $02
    ret nz                                        ; $6b02: $c0

jr_0e6_6b03:
    ld [bc], a                                    ; $6b03: $02
    add b                                         ; $6b04: $80
    ld [bc], a                                    ; $6b05: $02
    nop                                           ; $6b06: $00
    ld [bc], a                                    ; $6b07: $02
    db $10                                        ; $6b08: $10
    inc b                                         ; $6b09: $04
    nop                                           ; $6b0a: $00
    ld [bc], a                                    ; $6b0b: $02
    dec bc                                        ; $6b0c: $0b
    ld [bc], a                                    ; $6b0d: $02
    inc b                                         ; $6b0e: $04
    ld a, [bc]                                    ; $6b0f: $0a
    nop                                           ; $6b10: $00
    rst $38                                       ; $6b11: $ff
    rlca                                          ; $6b12: $07
    ld bc, $0cf5                                  ; $6b13: $01 $f5 $0c
    rst $30                                       ; $6b16: $f7
    ld b, $00                                     ; $6b17: $06 $00
    ld sp, hl                                     ; $6b19: $f9
    ld [bc], a                                    ; $6b1a: $02
    ld bc, $001e                                  ; $6b1b: $01 $1e $00
    rst $38                                       ; $6b1e: $ff
    rrca                                          ; $6b1f: $0f
    dec b                                         ; $6b20: $05
    push af                                       ; $6b21: $f5
    inc c                                         ; $6b22: $0c
    rst $30                                       ; $6b23: $f7
    ld b, $f5                                     ; $6b24: $06 $f5
    push af                                       ; $6b26: $f5
    db $ec                                        ; $6b27: $ec
    db $fd                                        ; $6b28: $fd
    push af                                       ; $6b29: $f5
    dec b                                         ; $6b2a: $05
    db $fc                                        ; $6b2b: $fc
    ld sp, hl                                     ; $6b2c: $f9
    db $fc                                        ; $6b2d: $fc
    ld bc, $4102                                  ; $6b2e: $01 $02 $41
    sbc h                                         ; $6b31: $9c
    ld b, d                                       ; $6b32: $42
    ld b, e                                       ; $6b33: $43
    and c                                         ; $6b34: $a1
    pop hl                                        ; $6b35: $e1
    xor b                                         ; $6b36: $a8
    add sp, -$47                                  ; $6b37: $e8 $b9
    reti                                          ; $6b39: $d9


    cp d                                          ; $6b3a: $ba
    jp z, $d7bf                                   ; $6b3b: $ca $bf $d7

    xor a                                         ; $6b3e: $af
    reti                                          ; $6b3f: $d9


    xor [hl]                                      ; $6b40: $ae
    rst $10                                       ; $6b41: $d7
    ld c, c                                       ; $6b42: $49
    ld a, [hl]                                    ; $6b43: $7e
    ld b, e                                       ; $6b44: $43
    ld a, l                                       ; $6b45: $7d
    ld l, $3a                                     ; $6b46: $2e $3a
    rla                                           ; $6b48: $17
    dec e                                         ; $6b49: $1d
    dec bc                                        ; $6b4a: $0b
    ld c, $05                                     ; $6b4b: $0e $05
    rlca                                          ; $6b4d: $07
    ld [bc], a                                    ; $6b4e: $02
    inc bc                                        ; $6b4f: $03
    ld [bc], a                                    ; $6b50: $02
    inc c                                         ; $6b51: $0c
    add d                                         ; $6b52: $82
    inc d                                         ; $6b53: $14
    inc e                                         ; $6b54: $1c
    ld [bc], a                                    ; $6b55: $02
    jr jr_0e6_6b5a                                ; $6b56: $18 $02

    db $10                                        ; $6b58: $10
    ld [bc], a                                    ; $6b59: $02

jr_0e6_6b5a:
    jr @+$04                                      ; $6b5a: $18 $02

    ld [$0c02], sp                                ; $6b5c: $08 $02 $0c
    adc l                                         ; $6b5f: $8d
    inc d                                         ; $6b60: $14
    inc e                                         ; $6b61: $1c
    inc d                                         ; $6b62: $14
    inc e                                         ; $6b63: $1c
    or l                                          ; $6b64: $b5
    xor l                                         ; $6b65: $ad
    ld h, [hl]                                    ; $6b66: $66
    rst $38                                       ; $6b67: $ff
    rst $28                                       ; $6b68: $ef
    ld a, [hl]                                    ; $6b69: $7e
    rst $30                                       ; $6b6a: $f7
    cp l                                          ; $6b6b: $bd
    rst $28                                       ; $6b6c: $ef
    ld [bc], a                                    ; $6b6d: $02
    rst $38                                       ; $6b6e: $ff
    add e                                         ; $6b6f: $83
    db $db                                        ; $6b70: $db
    cp l                                          ; $6b71: $bd
    rst $20                                       ; $6b72: $e7
    ld [bc], a                                    ; $6b73: $02
    add d                                         ; $6b74: $82
    sbc h                                         ; $6b75: $9c
    ld b, d                                       ; $6b76: $42
    jp nz, $8785                                  ; $6b77: $c2 $85 $87

    dec d                                         ; $6b7a: $15
    rla                                           ; $6b7b: $17
    sbc l                                         ; $6b7c: $9d
    sbc e                                         ; $6b7d: $9b
    ld e, l                                       ; $6b7e: $5d
    ld d, e                                       ; $6b7f: $53
    db $fd                                        ; $6b80: $fd
    db $eb                                        ; $6b81: $eb
    push af                                       ; $6b82: $f5
    sbc e                                         ; $6b83: $9b
    ld [hl], l                                    ; $6b84: $75
    db $eb                                        ; $6b85: $eb
    sub d                                         ; $6b86: $92
    ld a, [hl]                                    ; $6b87: $7e
    jp nz, $74be                                  ; $6b88: $c2 $be $74

    ld e, h                                       ; $6b8b: $5c
    add sp, -$48                                  ; $6b8c: $e8 $b8
    ret nc                                        ; $6b8e: $d0

    ld [hl], b                                    ; $6b8f: $70
    and b                                         ; $6b90: $a0
    ldh [rSC], a                                  ; $6b91: $e0 $02
    ret nz                                        ; $6b93: $c0

    adc b                                         ; $6b94: $88
    rlca                                          ; $6b95: $07
    ld c, $0d                                     ; $6b96: $0e $0d
    dec b                                         ; $6b98: $05
    rrca                                          ; $6b99: $0f
    ld c, $03                                     ; $6b9a: $0e $03
    ld [bc], a                                    ; $6b9c: $02
    ld [bc], a                                    ; $6b9d: $02
    ld bc, $0002                                  ; $6b9e: $01 $02 $00
    ld [bc], a                                    ; $6ba1: $02
    ld [$0004], sp                                ; $6ba2: $08 $04 $00
    ld [bc], a                                    ; $6ba5: $02
    ret nc                                        ; $6ba6: $d0

    ld [bc], a                                    ; $6ba7: $02
    jr nz, jr_0e6_6bb4                            ; $6ba8: $20 $0a

    nop                                           ; $6baa: $00
    adc b                                         ; $6bab: $88
    ldh [rSVBK], a                                ; $6bac: $e0 $70
    or b                                          ; $6bae: $b0
    and b                                         ; $6baf: $a0
    ldh a, [rSVBK]                                ; $6bb0: $f0 $70
    ret nz                                        ; $6bb2: $c0

    ld b, b                                       ; $6bb3: $40

jr_0e6_6bb4:
    ld [bc], a                                    ; $6bb4: $02
    add b                                         ; $6bb5: $80
    ld [bc], a                                    ; $6bb6: $02
    nop                                           ; $6bb7: $00
    ld [bc], a                                    ; $6bb8: $02
    db $10                                        ; $6bb9: $10
    inc b                                         ; $6bba: $04
    nop                                           ; $6bbb: $00
    ld [bc], a                                    ; $6bbc: $02
    dec bc                                        ; $6bbd: $0b
    ld [bc], a                                    ; $6bbe: $02
    inc b                                         ; $6bbf: $04
    ld a, [bc]                                    ; $6bc0: $0a
    nop                                           ; $6bc1: $00
    rst $38                                       ; $6bc2: $ff
    rlca                                          ; $6bc3: $07
    ld bc, $0cf5                                  ; $6bc4: $01 $f5 $0c
    rst $30                                       ; $6bc7: $f7
    ld b, $fd                                     ; $6bc8: $06 $fd
    ei                                            ; $6bca: $fb
    ld [bc], a                                    ; $6bcb: $02
    add hl, bc                                    ; $6bcc: $09
    ld e, $00                                     ; $6bcd: $1e $00
    rst $38                                       ; $6bcf: $ff
    rrca                                          ; $6bd0: $0f
    dec b                                         ; $6bd1: $05
    push af                                       ; $6bd2: $f5
    inc c                                         ; $6bd3: $0c
    rst $30                                       ; $6bd4: $f7
    ld b, $f5                                     ; $6bd5: $06 $f5
    push af                                       ; $6bd7: $f5
    db $ec                                        ; $6bd8: $ec
    db $fd                                        ; $6bd9: $fd
    push af                                       ; $6bda: $f5
    dec b                                         ; $6bdb: $05
    db $fc                                        ; $6bdc: $fc
    ld sp, hl                                     ; $6bdd: $f9
    db $fc                                        ; $6bde: $fc
    ld bc, $4102                                  ; $6bdf: $01 $02 $41
    sbc h                                         ; $6be2: $9c
    ld b, d                                       ; $6be3: $42
    ld b, e                                       ; $6be4: $43
    and c                                         ; $6be5: $a1
    pop hl                                        ; $6be6: $e1
    xor b                                         ; $6be7: $a8
    add sp, -$47                                  ; $6be8: $e8 $b9
    reti                                          ; $6bea: $d9


    cp d                                          ; $6beb: $ba
    jp z, $d7bf                                   ; $6bec: $ca $bf $d7

    xor a                                         ; $6bef: $af
    reti                                          ; $6bf0: $d9


    xor [hl]                                      ; $6bf1: $ae
    rst $10                                       ; $6bf2: $d7
    ld c, c                                       ; $6bf3: $49
    ld a, [hl]                                    ; $6bf4: $7e
    ld b, e                                       ; $6bf5: $43
    ld a, l                                       ; $6bf6: $7d
    ld l, $3a                                     ; $6bf7: $2e $3a
    rla                                           ; $6bf9: $17
    dec e                                         ; $6bfa: $1d
    dec bc                                        ; $6bfb: $0b
    ld c, $05                                     ; $6bfc: $0e $05
    rlca                                          ; $6bfe: $07
    ld [bc], a                                    ; $6bff: $02
    inc bc                                        ; $6c00: $03
    ld [bc], a                                    ; $6c01: $02
    inc c                                         ; $6c02: $0c
    add d                                         ; $6c03: $82
    inc d                                         ; $6c04: $14
    inc e                                         ; $6c05: $1c
    ld [bc], a                                    ; $6c06: $02
    jr jr_0e6_6c0b                                ; $6c07: $18 $02

    db $10                                        ; $6c09: $10
    ld [bc], a                                    ; $6c0a: $02

jr_0e6_6c0b:
    jr @+$04                                      ; $6c0b: $18 $02

    ld [$0c02], sp                                ; $6c0d: $08 $02 $0c
    add a                                         ; $6c10: $87
    inc d                                         ; $6c11: $14
    inc e                                         ; $6c12: $1c
    inc d                                         ; $6c13: $14
    inc e                                         ; $6c14: $1c
    or l                                          ; $6c15: $b5
    xor l                                         ; $6c16: $ad
    ld l, [hl]                                    ; $6c17: $6e
    ld [bc], a                                    ; $6c18: $02
    rst $38                                       ; $6c19: $ff
    adc c                                         ; $6c1a: $89
    or [hl]                                       ; $6c1b: $b6
    rst $38                                       ; $6c1c: $ff
    di                                            ; $6c1d: $f3
    rst $28                                       ; $6c1e: $ef
    db $eb                                        ; $6c1f: $eb
    rst $18                                       ; $6c20: $df
    pop af                                        ; $6c21: $f1
    adc a                                         ; $6c22: $8f
    ld sp, hl                                     ; $6c23: $f9
    ld [bc], a                                    ; $6c24: $02
    add d                                         ; $6c25: $82
    sbc h                                         ; $6c26: $9c
    ld b, d                                       ; $6c27: $42
    jp nz, $8785                                  ; $6c28: $c2 $85 $87

    dec d                                         ; $6c2b: $15
    rla                                           ; $6c2c: $17
    sbc l                                         ; $6c2d: $9d
    sbc e                                         ; $6c2e: $9b
    ld e, l                                       ; $6c2f: $5d
    ld d, e                                       ; $6c30: $53
    db $fd                                        ; $6c31: $fd
    db $eb                                        ; $6c32: $eb
    push af                                       ; $6c33: $f5
    sbc e                                         ; $6c34: $9b
    ld [hl], l                                    ; $6c35: $75
    db $eb                                        ; $6c36: $eb
    sub d                                         ; $6c37: $92
    ld a, [hl]                                    ; $6c38: $7e
    jp nz, $74be                                  ; $6c39: $c2 $be $74

    ld e, h                                       ; $6c3c: $5c
    add sp, -$48                                  ; $6c3d: $e8 $b8
    ret nc                                        ; $6c3f: $d0

    ld [hl], b                                    ; $6c40: $70
    and b                                         ; $6c41: $a0
    ldh [rSC], a                                  ; $6c42: $e0 $02
    ret nz                                        ; $6c44: $c0

    add [hl]                                      ; $6c45: $86
    dec b                                         ; $6c46: $05
    ld c, $0d                                     ; $6c47: $0e $0d
    ld [bc], a                                    ; $6c49: $02
    ld c, $0f                                     ; $6c4a: $0e $0f
    ld [bc], a                                    ; $6c4c: $02
    ld bc, $0004                                  ; $6c4d: $01 $04 $00
    ld [bc], a                                    ; $6c50: $02
    ld [$0004], sp                                ; $6c51: $08 $04 $00
    ld [bc], a                                    ; $6c54: $02
    ret nc                                        ; $6c55: $d0

    ld [bc], a                                    ; $6c56: $02
    jr nz, jr_0e6_6c63                            ; $6c57: $20 $0a

    nop                                           ; $6c59: $00
    add c                                         ; $6c5a: $81
    ld h, b                                       ; $6c5b: $60
    ld [bc], a                                    ; $6c5c: $02
    ldh a, [$83]                                  ; $6c5d: $f0 $83
    ld b, b                                       ; $6c5f: $40
    ld [hl], b                                    ; $6c60: $70
    ldh a, [rSC]                                  ; $6c61: $f0 $02

jr_0e6_6c63:
    add b                                         ; $6c63: $80
    inc b                                         ; $6c64: $04
    nop                                           ; $6c65: $00
    ld [bc], a                                    ; $6c66: $02
    db $10                                        ; $6c67: $10
    inc b                                         ; $6c68: $04
    nop                                           ; $6c69: $00
    ld [bc], a                                    ; $6c6a: $02
    dec bc                                        ; $6c6b: $0b
    ld [bc], a                                    ; $6c6c: $02
    inc b                                         ; $6c6d: $04
    ld a, [bc]                                    ; $6c6e: $0a
    nop                                           ; $6c6f: $00
    rst $38                                       ; $6c70: $ff
    rlca                                          ; $6c71: $07
    ld bc, $0cf5                                  ; $6c72: $01 $f5 $0c
    rst $30                                       ; $6c75: $f7
    ld b, $f9                                     ; $6c76: $06 $f9
    ld sp, hl                                     ; $6c78: $f9
    ld [bc], a                                    ; $6c79: $02
    ld bc, $001e                                  ; $6c7a: $01 $1e $00
    rst $38                                       ; $6c7d: $ff
    rrca                                          ; $6c7e: $0f
    dec b                                         ; $6c7f: $05
    push af                                       ; $6c80: $f5
    inc c                                         ; $6c81: $0c
    rst $30                                       ; $6c82: $f7
    ld b, $f5                                     ; $6c83: $06 $f5
    push af                                       ; $6c85: $f5
    db $ec                                        ; $6c86: $ec
    db $fd                                        ; $6c87: $fd
    push af                                       ; $6c88: $f5
    dec b                                         ; $6c89: $05
    db $fc                                        ; $6c8a: $fc
    ld a, [$00fc]                                 ; $6c8b: $fa $fc $00
    ld [bc], a                                    ; $6c8e: $02
    ld b, c                                       ; $6c8f: $41
    sbc h                                         ; $6c90: $9c
    ld b, d                                       ; $6c91: $42
    ld b, e                                       ; $6c92: $43
    and c                                         ; $6c93: $a1
    pop hl                                        ; $6c94: $e1
    xor b                                         ; $6c95: $a8
    add sp, -$47                                  ; $6c96: $e8 $b9
    reti                                          ; $6c98: $d9


    cp d                                          ; $6c99: $ba
    jp z, $d7bf                                   ; $6c9a: $ca $bf $d7

    xor a                                         ; $6c9d: $af
    reti                                          ; $6c9e: $d9


    xor [hl]                                      ; $6c9f: $ae
    rst $10                                       ; $6ca0: $d7
    ld c, c                                       ; $6ca1: $49
    ld a, [hl]                                    ; $6ca2: $7e
    ld b, e                                       ; $6ca3: $43
    ld a, l                                       ; $6ca4: $7d
    ld l, $3a                                     ; $6ca5: $2e $3a
    rla                                           ; $6ca7: $17
    dec e                                         ; $6ca8: $1d
    dec bc                                        ; $6ca9: $0b
    ld c, $06                                     ; $6caa: $0e $06
    rlca                                          ; $6cac: $07
    ld [bc], a                                    ; $6cad: $02
    ld bc, $0c02                                  ; $6cae: $01 $02 $0c
    add d                                         ; $6cb1: $82
    inc d                                         ; $6cb2: $14
    inc e                                         ; $6cb3: $1c
    ld [bc], a                                    ; $6cb4: $02
    jr jr_0e6_6cb9                                ; $6cb5: $18 $02

    db $10                                        ; $6cb7: $10
    ld [bc], a                                    ; $6cb8: $02

jr_0e6_6cb9:
    jr @+$04                                      ; $6cb9: $18 $02

    ld [$0c02], sp                                ; $6cbb: $08 $02 $0c
    add a                                         ; $6cbe: $87
    inc d                                         ; $6cbf: $14
    inc e                                         ; $6cc0: $1c
    inc d                                         ; $6cc1: $14
    inc e                                         ; $6cc2: $1c
    or l                                          ; $6cc3: $b5
    xor l                                         ; $6cc4: $ad
    ld l, [hl]                                    ; $6cc5: $6e
    ld [bc], a                                    ; $6cc6: $02
    rst $38                                       ; $6cc7: $ff
    add l                                         ; $6cc8: $85
    or [hl]                                       ; $6cc9: $b6
    rst $28                                       ; $6cca: $ef
    jp hl                                         ; $6ccb: $e9


    rst $38                                       ; $6ccc: $ff
    rst $20                                       ; $6ccd: $e7
    ld [bc], a                                    ; $6cce: $02
    rst $30                                       ; $6ccf: $f7
    add d                                         ; $6cd0: $82
    sbc e                                         ; $6cd1: $9b
    ei                                            ; $6cd2: $fb
    ld [bc], a                                    ; $6cd3: $02
    add d                                         ; $6cd4: $82
    sbc h                                         ; $6cd5: $9c
    ld b, d                                       ; $6cd6: $42
    jp nz, $8785                                  ; $6cd7: $c2 $85 $87

    dec d                                         ; $6cda: $15
    rla                                           ; $6cdb: $17
    sbc l                                         ; $6cdc: $9d
    sbc e                                         ; $6cdd: $9b
    ld e, l                                       ; $6cde: $5d
    ld d, e                                       ; $6cdf: $53
    db $fd                                        ; $6ce0: $fd
    db $eb                                        ; $6ce1: $eb
    push af                                       ; $6ce2: $f5
    sbc e                                         ; $6ce3: $9b
    ld [hl], l                                    ; $6ce4: $75
    db $eb                                        ; $6ce5: $eb
    sub d                                         ; $6ce6: $92
    ld a, [hl]                                    ; $6ce7: $7e
    jp nz, $74be                                  ; $6ce8: $c2 $be $74

    ld e, h                                       ; $6ceb: $5c
    add sp, -$48                                  ; $6cec: $e8 $b8
    ret nc                                        ; $6cee: $d0

    ld [hl], b                                    ; $6cef: $70
    ld h, b                                       ; $6cf0: $60
    ldh [rSC], a                                  ; $6cf1: $e0 $02
    add b                                         ; $6cf3: $80
    add c                                         ; $6cf4: $81
    add hl, bc                                    ; $6cf5: $09
    ld [bc], a                                    ; $6cf6: $02
    rra                                           ; $6cf7: $1f
    add c                                         ; $6cf8: $81
    inc b                                         ; $6cf9: $04
    ld [bc], a                                    ; $6cfa: $02
    rra                                           ; $6cfb: $1f
    ld b, $00                                     ; $6cfc: $06 $00
    ld b, $10                                     ; $6cfe: $06 $10
    ld [bc], a                                    ; $6d00: $02
    ret nc                                        ; $6d01: $d0

    ld [bc], a                                    ; $6d02: $02
    jr nz, jr_0e6_6d0f                            ; $6d03: $20 $0a

    nop                                           ; $6d05: $00
    add c                                         ; $6d06: $81
    jr nc, jr_0e6_6d0b                            ; $6d07: $30 $02

    jr c, @-$7d                                   ; $6d09: $38 $81

jr_0e6_6d0b:
    jr nz, jr_0e6_6d0f                            ; $6d0b: $20 $02

    jr c, jr_0e6_6d15                             ; $6d0d: $38 $06

jr_0e6_6d0f:
    nop                                           ; $6d0f: $00
    ld b, $08                                     ; $6d10: $06 $08
    ld [bc], a                                    ; $6d12: $02
    dec bc                                        ; $6d13: $0b
    ld [bc], a                                    ; $6d14: $02

jr_0e6_6d15:
    inc b                                         ; $6d15: $04
    ld a, [bc]                                    ; $6d16: $0a
    nop                                           ; $6d17: $00
    rst $38                                       ; $6d18: $ff
    rlca                                          ; $6d19: $07
    ld bc, $0cf5                                  ; $6d1a: $01 $f5 $0c
    rst $30                                       ; $6d1d: $f7
    ld b, $f8                                     ; $6d1e: $06 $f8
    ei                                            ; $6d20: $fb
    ld [bc], a                                    ; $6d21: $02
    inc b                                         ; $6d22: $04
    ld [bc], a                                    ; $6d23: $02
    nop                                           ; $6d24: $00
    add e                                         ; $6d25: $83
    ld [bc], a                                    ; $6d26: $02
    nop                                           ; $6d27: $00
    ld bc, $0019                                  ; $6d28: $01 $19 $00
    rst $38                                       ; $6d2b: $ff
    rrca                                          ; $6d2c: $0f
    dec b                                         ; $6d2d: $05
    push af                                       ; $6d2e: $f5
    inc c                                         ; $6d2f: $0c
    rst $30                                       ; $6d30: $f7
    ld b, $f4                                     ; $6d31: $06 $f4
    push af                                       ; $6d33: $f5
    db $ec                                        ; $6d34: $ec
    db $fd                                        ; $6d35: $fd
    db $f4                                        ; $6d36: $f4
    dec b                                         ; $6d37: $05
    db $fc                                        ; $6d38: $fc
    ld a, [$00fc]                                 ; $6d39: $fa $fc $00
    ld [bc], a                                    ; $6d3c: $02
    jr nz, jr_0e6_6d41                            ; $6d3d: $20 $02

    ld b, c                                       ; $6d3f: $41
    sbc d                                         ; $6d40: $9a

jr_0e6_6d41:
    jp nz, $a1c3                                  ; $6d41: $c2 $c3 $a1

    pop hl                                        ; $6d44: $e1
    xor b                                         ; $6d45: $a8
    add sp, -$47                                  ; $6d46: $e8 $b9
    reti                                          ; $6d48: $d9


    sbc [hl]                                      ; $6d49: $9e
    xor $bb                                       ; $6d4a: $ee $bb
    rst $10                                       ; $6d4c: $d7
    xor l                                         ; $6d4d: $ad
    db $db                                        ; $6d4e: $db
    ld d, h                                       ; $6d4f: $54
    ld l, a                                       ; $6d50: $6f
    ld d, e                                       ; $6d51: $53
    ld a, h                                       ; $6d52: $7c
    daa                                           ; $6d53: $27
    dec sp                                        ; $6d54: $3b
    rla                                           ; $6d55: $17
    dec e                                         ; $6d56: $1d
    dec bc                                        ; $6d57: $0b
    ld c, $06                                     ; $6d58: $0e $06
    rlca                                          ; $6d5a: $07
    ld [bc], a                                    ; $6d5b: $02
    ld bc, $0c02                                  ; $6d5c: $01 $02 $0c
    add d                                         ; $6d5f: $82
    inc d                                         ; $6d60: $14
    inc e                                         ; $6d61: $1c
    ld [bc], a                                    ; $6d62: $02
    jr jr_0e6_6d67                                ; $6d63: $18 $02

    db $10                                        ; $6d65: $10
    ld [bc], a                                    ; $6d66: $02

jr_0e6_6d67:
    jr @+$04                                      ; $6d67: $18 $02

    ld [$0c02], sp                                ; $6d69: $08 $02 $0c
    adc l                                         ; $6d6c: $8d
    inc d                                         ; $6d6d: $14
    inc e                                         ; $6d6e: $1c
    inc d                                         ; $6d6f: $14
    inc e                                         ; $6d70: $1c
    or l                                          ; $6d71: $b5
    xor l                                         ; $6d72: $ad
    ld h, [hl]                                    ; $6d73: $66
    rst $38                                       ; $6d74: $ff
    rst $28                                       ; $6d75: $ef
    ld a, [hl]                                    ; $6d76: $7e
    rst $30                                       ; $6d77: $f7
    cp a                                          ; $6d78: $bf
    db $db                                        ; $6d79: $db
    ld [bc], a                                    ; $6d7a: $02
    rst $38                                       ; $6d7b: $ff
    add e                                         ; $6d7c: $83
    db $ed                                        ; $6d7d: $ed
    sbc e                                         ; $6d7e: $9b
    ld a, [$0402]                                 ; $6d7f: $fa $02 $04
    ld [bc], a                                    ; $6d82: $02
    add d                                         ; $6d83: $82
    sbc d                                         ; $6d84: $9a
    ld b, e                                       ; $6d85: $43
    jp $8785                                      ; $6d86: $c3 $85 $87


    dec d                                         ; $6d89: $15
    rla                                           ; $6d8a: $17
    sbc l                                         ; $6d8b: $9d
    sbc e                                         ; $6d8c: $9b
    ld sp, hl                                     ; $6d8d: $f9
    rst $30                                       ; $6d8e: $f7
    db $dd                                        ; $6d8f: $dd
    ld l, e                                       ; $6d90: $6b
    push af                                       ; $6d91: $f5
    db $db                                        ; $6d92: $db
    xor d                                         ; $6d93: $aa
    or $ca                                        ; $6d94: $f6 $ca
    cp $e4                                        ; $6d96: $fe $e4
    call c, $b8e8                                 ; $6d98: $dc $e8 $b8
    ret nc                                        ; $6d9b: $d0

    ld [hl], b                                    ; $6d9c: $70
    ld h, b                                       ; $6d9d: $60
    ldh [rSC], a                                  ; $6d9e: $e0 $02
    add b                                         ; $6da0: $80
    add [hl]                                      ; $6da1: $86
    add hl, bc                                    ; $6da2: $09
    rra                                           ; $6da3: $1f
    dec d                                         ; $6da4: $15
    rrca                                          ; $6da5: $0f
    rra                                           ; $6da6: $1f
    inc e                                         ; $6da7: $1c
    ld [bc], a                                    ; $6da8: $02
    inc bc                                        ; $6da9: $03
    ld [bc], a                                    ; $6daa: $02
    nop                                           ; $6dab: $00
    ld b, $10                                     ; $6dac: $06 $10
    ld [bc], a                                    ; $6dae: $02
    ret nc                                        ; $6daf: $d0

    ld [bc], a                                    ; $6db0: $02
    jr nz, jr_0e6_6dbf                            ; $6db1: $20 $0c

    nop                                           ; $6db3: $00
    add d                                         ; $6db4: $82
    jr c, jr_0e6_6dbf                             ; $6db5: $38 $08

    ld [bc], a                                    ; $6db7: $02
    jr z, jr_0e6_6dbc                             ; $6db8: $28 $02

    jr nc, jr_0e6_6dbe                            ; $6dba: $30 $02

jr_0e6_6dbc:
    jr @+$04                                      ; $6dbc: $18 $02

jr_0e6_6dbe:
    nop                                           ; $6dbe: $00

jr_0e6_6dbf:
    ld b, $08                                     ; $6dbf: $06 $08
    ld [bc], a                                    ; $6dc1: $02
    dec bc                                        ; $6dc2: $0b
    ld [bc], a                                    ; $6dc3: $02
    inc b                                         ; $6dc4: $04
    inc c                                         ; $6dc5: $0c
    nop                                           ; $6dc6: $00
    rst $38                                       ; $6dc7: $ff
    rlca                                          ; $6dc8: $07
    ld bc, $0cf5                                  ; $6dc9: $01 $f5 $0c
    rst $30                                       ; $6dcc: $f7
    ld b, $fb                                     ; $6dcd: $06 $fb
    db $fd                                        ; $6dcf: $fd
    ld [bc], a                                    ; $6dd0: $02
    inc b                                         ; $6dd1: $04
    ld [bc], a                                    ; $6dd2: $02
    nop                                           ; $6dd3: $00
    add e                                         ; $6dd4: $83
    ld [bc], a                                    ; $6dd5: $02
    nop                                           ; $6dd6: $00
    ld bc, $0019                                  ; $6dd7: $01 $19 $00
    rst $38                                       ; $6dda: $ff
    rrca                                          ; $6ddb: $0f
    dec b                                         ; $6ddc: $05
    push af                                       ; $6ddd: $f5
    inc c                                         ; $6dde: $0c
    rst $30                                       ; $6ddf: $f7
    ld b, $f4                                     ; $6de0: $06 $f4
    push af                                       ; $6de2: $f5
    db $ec                                        ; $6de3: $ec
    db $fd                                        ; $6de4: $fd
    db $f4                                        ; $6de5: $f4
    dec b                                         ; $6de6: $05

jr_0e6_6de7:
    db $fc                                        ; $6de7: $fc
    ld a, [$00fc]                                 ; $6de8: $fa $fc $00
    ld [bc], a                                    ; $6deb: $02
    jr nz, jr_0e6_6df0                            ; $6dec: $20 $02

    ld b, c                                       ; $6dee: $41
    sbc d                                         ; $6def: $9a

jr_0e6_6df0:
    jp nz, $a1c3                                  ; $6df0: $c2 $c3 $a1

    pop hl                                        ; $6df3: $e1
    xor b                                         ; $6df4: $a8
    add sp, -$47                                  ; $6df5: $e8 $b9
    reti                                          ; $6df7: $d9


    cp [hl]                                       ; $6df8: $be
    xor $bb                                       ; $6df9: $ee $bb
    rst $10                                       ; $6dfb: $d7
    xor l                                         ; $6dfc: $ad
    db $db                                        ; $6dfd: $db
    ld d, h                                       ; $6dfe: $54
    ld l, a                                       ; $6dff: $6f
    ld d, e                                       ; $6e00: $53
    ld a, h                                       ; $6e01: $7c
    daa                                           ; $6e02: $27
    dec sp                                        ; $6e03: $3b
    rla                                           ; $6e04: $17
    dec e                                         ; $6e05: $1d
    dec bc                                        ; $6e06: $0b
    ld c, $06                                     ; $6e07: $0e $06
    rlca                                          ; $6e09: $07
    ld [bc], a                                    ; $6e0a: $02
    ld bc, $0c02                                  ; $6e0b: $01 $02 $0c
    add d                                         ; $6e0e: $82
    inc d                                         ; $6e0f: $14
    inc e                                         ; $6e10: $1c
    ld [bc], a                                    ; $6e11: $02
    jr jr_0e6_6e16                                ; $6e12: $18 $02

    db $10                                        ; $6e14: $10
    ld [bc], a                                    ; $6e15: $02

jr_0e6_6e16:
    jr @+$04                                      ; $6e16: $18 $02

    ld [$0c02], sp                                ; $6e18: $08 $02 $0c
    sub d                                         ; $6e1b: $92
    inc d                                         ; $6e1c: $14
    inc e                                         ; $6e1d: $1c
    inc d                                         ; $6e1e: $14
    inc e                                         ; $6e1f: $1c
    or l                                          ; $6e20: $b5
    xor l                                         ; $6e21: $ad
    ld h, [hl]                                    ; $6e22: $66
    rst $38                                       ; $6e23: $ff
    rst $30                                       ; $6e24: $f7
    ld a, [hl]                                    ; $6e25: $7e
    rst $28                                       ; $6e26: $ef
    cp l                                          ; $6e27: $bd
    rst $10                                       ; $6e28: $d7
    rst $38                                       ; $6e29: $ff
    set 7, a                                      ; $6e2a: $cb $ff
    db $d3                                        ; $6e2c: $d3
    rst $38                                       ; $6e2d: $ff
    ld [bc], a                                    ; $6e2e: $02
    inc b                                         ; $6e2f: $04
    ld [bc], a                                    ; $6e30: $02
    add d                                         ; $6e31: $82
    and h                                         ; $6e32: $a4
    ld b, e                                       ; $6e33: $43
    jp $8785                                      ; $6e34: $c3 $85 $87


    dec d                                         ; $6e37: $15
    rla                                           ; $6e38: $17
    sbc l                                         ; $6e39: $9d
    sbc e                                         ; $6e3a: $9b
    ld a, l                                       ; $6e3b: $7d
    ld [hl], a                                    ; $6e3c: $77
    db $dd                                        ; $6e3d: $dd
    db $eb                                        ; $6e3e: $eb
    or l                                          ; $6e3f: $b5
    db $db                                        ; $6e40: $db
    ld a, [hl+]                                   ; $6e41: $2a
    or $ca                                        ; $6e42: $f6 $ca
    cp [hl]                                       ; $6e44: $be
    db $e4                                        ; $6e45: $e4
    call c, Call_0e6_78e8                         ; $6e46: $dc $e8 $78
    ldh a, [rSVBK]                                ; $6e49: $f0 $70
    ldh [rNR41], a                                ; $6e4b: $e0 $20
    ldh [rNR41], a                                ; $6e4d: $e0 $20
    add hl, bc                                    ; $6e4f: $09
    rra                                           ; $6e50: $1f
    inc e                                         ; $6e51: $1c
    rrca                                          ; $6e52: $0f
    dec e                                         ; $6e53: $1d
    rra                                           ; $6e54: $1f
    rlca                                          ; $6e55: $07
    ld b, $02                                     ; $6e56: $06 $02
    inc bc                                        ; $6e58: $03
    ld b, $10                                     ; $6e59: $06 $10
    ld [bc], a                                    ; $6e5b: $02
    ret nc                                        ; $6e5c: $d0

    ld [bc], a                                    ; $6e5d: $02
    jr nz, jr_0e6_6e6c                            ; $6e5e: $20 $0c

    nop                                           ; $6e60: $00
    add c                                         ; $6e61: $81
    db $10                                        ; $6e62: $10
    inc bc                                        ; $6e63: $03
    jr c, jr_0e6_6de7                             ; $6e64: $38 $81

    ld [$3802], sp                                ; $6e66: $08 $02 $38
    add e                                         ; $6e69: $83
    jr nc, jr_0e6_6ea4                            ; $6e6a: $30 $38

jr_0e6_6e6c:
    jr nc, jr_0e6_6e70                            ; $6e6c: $30 $02

    jr z, @-$7c                                   ; $6e6e: $28 $82

jr_0e6_6e70:
    jr jr_0e6_6e82                                ; $6e70: $18 $10

    ld [bc], a                                    ; $6e72: $02
    ld [$0f02], sp                                ; $6e73: $08 $02 $0f
    ld [bc], a                                    ; $6e76: $02
    inc b                                         ; $6e77: $04
    inc c                                         ; $6e78: $0c
    nop                                           ; $6e79: $00
    rst $38                                       ; $6e7a: $ff
    rlca                                          ; $6e7b: $07
    ld bc, $0cf5                                  ; $6e7c: $01 $f5 $0c
    rst $30                                       ; $6e7f: $f7
    ld b, $01                                     ; $6e80: $06 $01

jr_0e6_6e82:
    db $fc                                        ; $6e82: $fc
    ld [bc], a                                    ; $6e83: $02
    ld bc, $001e                                  ; $6e84: $01 $1e $00
    rst $38                                       ; $6e87: $ff
    rrca                                          ; $6e88: $0f
    dec b                                         ; $6e89: $05
    push af                                       ; $6e8a: $f5
    inc c                                         ; $6e8b: $0c
    rst $30                                       ; $6e8c: $f7
    ld b, $f5                                     ; $6e8d: $06 $f5
    push af                                       ; $6e8f: $f5
    db $ec                                        ; $6e90: $ec
    db $fd                                        ; $6e91: $fd
    push af                                       ; $6e92: $f5
    dec b                                         ; $6e93: $05
    db $fc                                        ; $6e94: $fc
    ld sp, hl                                     ; $6e95: $f9
    db $fc                                        ; $6e96: $fc
    ld bc, $4102                                  ; $6e97: $01 $02 $41
    sbc h                                         ; $6e9a: $9c
    jp nz, $a1c3                                  ; $6e9b: $c2 $c3 $a1

    pop hl                                        ; $6e9e: $e1
    xor b                                         ; $6e9f: $a8
    add sp, -$47                                  ; $6ea0: $e8 $b9
    reti                                          ; $6ea2: $d9


    sbc d                                         ; $6ea3: $9a

jr_0e6_6ea4:
    ld [$d7bf], a                                 ; $6ea4: $ea $bf $d7
    xor a                                         ; $6ea7: $af
    reti                                          ; $6ea8: $d9


    or [hl]                                       ; $6ea9: $b6
    rst $08                                       ; $6eaa: $cf
    ld c, c                                       ; $6eab: $49
    ld a, [hl]                                    ; $6eac: $7e
    ld b, e                                       ; $6ead: $43
    ld a, l                                       ; $6eae: $7d
    ld l, $3a                                     ; $6eaf: $2e $3a
    rla                                           ; $6eb1: $17
    dec e                                         ; $6eb2: $1d
    dec bc                                        ; $6eb3: $0b
    ld c, $05                                     ; $6eb4: $0e $05
    rlca                                          ; $6eb6: $07
    ld [bc], a                                    ; $6eb7: $02
    inc bc                                        ; $6eb8: $03
    ld [bc], a                                    ; $6eb9: $02
    inc c                                         ; $6eba: $0c
    add d                                         ; $6ebb: $82
    inc d                                         ; $6ebc: $14
    inc e                                         ; $6ebd: $1c
    ld [bc], a                                    ; $6ebe: $02
    jr jr_0e6_6ec3                                ; $6ebf: $18 $02

    db $10                                        ; $6ec1: $10
    ld [bc], a                                    ; $6ec2: $02

jr_0e6_6ec3:
    jr @+$04                                      ; $6ec3: $18 $02

    ld [$0c02], sp                                ; $6ec5: $08 $02 $0c
    sub d                                         ; $6ec8: $92
    inc d                                         ; $6ec9: $14
    inc e                                         ; $6eca: $1c
    inc d                                         ; $6ecb: $14
    inc e                                         ; $6ecc: $1c
    or l                                          ; $6ecd: $b5
    xor l                                         ; $6ece: $ad
    ld h, [hl]                                    ; $6ecf: $66
    rst $38                                       ; $6ed0: $ff
    rst $28                                       ; $6ed1: $ef
    ld a, [hl]                                    ; $6ed2: $7e
    rst $30                                       ; $6ed3: $f7
    cp l                                          ; $6ed4: $bd
    set 7, a                                      ; $6ed5: $cb $ff
    db $d3                                        ; $6ed7: $d3
    rst $38                                       ; $6ed8: $ff
    sub e                                         ; $6ed9: $93
    rst $38                                       ; $6eda: $ff
    ld [bc], a                                    ; $6edb: $02
    add d                                         ; $6edc: $82
    sbc h                                         ; $6edd: $9c
    ld b, e                                       ; $6ede: $43
    jp $8785                                      ; $6edf: $c3 $85 $87


    dec d                                         ; $6ee2: $15
    rla                                           ; $6ee3: $17
    sbc l                                         ; $6ee4: $9d
    sbc e                                         ; $6ee5: $9b
    ld e, c                                       ; $6ee6: $59
    ld d, a                                       ; $6ee7: $57
    db $fd                                        ; $6ee8: $fd
    db $eb                                        ; $6ee9: $eb
    push af                                       ; $6eea: $f5
    sbc e                                         ; $6eeb: $9b
    ld l, l                                       ; $6eec: $6d
    di                                            ; $6eed: $f3
    sub d                                         ; $6eee: $92
    ld a, [hl]                                    ; $6eef: $7e
    jp nz, $74be                                  ; $6ef0: $c2 $be $74

    ld e, h                                       ; $6ef3: $5c
    add sp, -$48                                  ; $6ef4: $e8 $b8
    ret nc                                        ; $6ef6: $d0

    ldh a, [$a0]                                  ; $6ef7: $f0 $a0
    ldh [rSC], a                                  ; $6ef9: $e0 $02
    ret nz                                        ; $6efb: $c0

    add [hl]                                      ; $6efc: $86
    inc b                                         ; $6efd: $04
    rrca                                          ; $6efe: $0f
    ld c, $07                                     ; $6eff: $0e $07
    rrca                                          ; $6f01: $0f
    dec c                                         ; $6f02: $0d
    ld [bc], a                                    ; $6f03: $02
    inc bc                                        ; $6f04: $03
    ld [bc], a                                    ; $6f05: $02
    ld bc, $0002                                  ; $6f06: $01 $02 $00
    ld [bc], a                                    ; $6f09: $02
    ld [$0004], sp                                ; $6f0a: $08 $04 $00
    ld [bc], a                                    ; $6f0d: $02
    ret nc                                        ; $6f0e: $d0

    ld [bc], a                                    ; $6f0f: $02
    jr nz, jr_0e6_6f1c                            ; $6f10: $20 $0a

    nop                                           ; $6f12: $00
    adc [hl]                                      ; $6f13: $8e
    ldh [$f0], a                                  ; $6f14: $e0 $f0
    ld [hl], b                                    ; $6f16: $70
    ldh [$f0], a                                  ; $6f17: $e0 $f0
    or b                                          ; $6f19: $b0
    ldh a, [$90]                                  ; $6f1a: $f0 $90

jr_0e6_6f1c:
    ld [hl], b                                    ; $6f1c: $70
    ld d, b                                       ; $6f1d: $50
    ldh a, [$80]                                  ; $6f1e: $f0 $80
    ld [hl], b                                    ; $6f20: $70
    ld b, b                                       ; $6f21: $40
    ld [bc], a                                    ; $6f22: $02
    jr nc, jr_0e6_6f27                            ; $6f23: $30 $02

    nop                                           ; $6f25: $00
    ld [bc], a                                    ; $6f26: $02

jr_0e6_6f27:
    dec bc                                        ; $6f27: $0b
    ld [bc], a                                    ; $6f28: $02
    inc b                                         ; $6f29: $04
    ld a, [bc]                                    ; $6f2a: $0a
    nop                                           ; $6f2b: $00
    rst $38                                       ; $6f2c: $ff
    rlca                                          ; $6f2d: $07
    ld bc, $0cf5                                  ; $6f2e: $01 $f5 $0c
    rst $30                                       ; $6f31: $f7
    ld b, $00                                     ; $6f32: $06 $00
    ld a, [$0102]                                 ; $6f34: $fa $02 $01
    ld e, $00                                     ; $6f37: $1e $00
    rst $38                                       ; $6f39: $ff
    rrca                                          ; $6f3a: $0f
    dec b                                         ; $6f3b: $05
    push af                                       ; $6f3c: $f5
    inc c                                         ; $6f3d: $0c
    rst $30                                       ; $6f3e: $f7
    ld b, $f5                                     ; $6f3f: $06 $f5
    push af                                       ; $6f41: $f5
    db $ec                                        ; $6f42: $ec
    db $fd                                        ; $6f43: $fd
    push af                                       ; $6f44: $f5
    dec b                                         ; $6f45: $05
    db $fc                                        ; $6f46: $fc
    ld sp, hl                                     ; $6f47: $f9
    db $fc                                        ; $6f48: $fc
    ld bc, $4102                                  ; $6f49: $01 $02 $41
    sbc h                                         ; $6f4c: $9c
    ld b, d                                       ; $6f4d: $42
    ld b, e                                       ; $6f4e: $43
    and c                                         ; $6f4f: $a1
    pop hl                                        ; $6f50: $e1
    xor b                                         ; $6f51: $a8
    add sp, -$47                                  ; $6f52: $e8 $b9
    reti                                          ; $6f54: $d9


    cp d                                          ; $6f55: $ba
    jp z, $d7bf                                   ; $6f56: $ca $bf $d7

    xor a                                         ; $6f59: $af
    reti                                          ; $6f5a: $d9


    xor [hl]                                      ; $6f5b: $ae
    rst $10                                       ; $6f5c: $d7
    ld c, c                                       ; $6f5d: $49
    ld a, [hl]                                    ; $6f5e: $7e
    ld b, e                                       ; $6f5f: $43
    ld a, l                                       ; $6f60: $7d
    ld l, $3a                                     ; $6f61: $2e $3a
    rla                                           ; $6f63: $17
    dec e                                         ; $6f64: $1d
    dec bc                                        ; $6f65: $0b
    ld c, $05                                     ; $6f66: $0e $05
    rlca                                          ; $6f68: $07
    ld [bc], a                                    ; $6f69: $02
    inc bc                                        ; $6f6a: $03
    ld [bc], a                                    ; $6f6b: $02
    inc c                                         ; $6f6c: $0c
    add d                                         ; $6f6d: $82
    inc d                                         ; $6f6e: $14
    inc e                                         ; $6f6f: $1c
    ld [bc], a                                    ; $6f70: $02
    jr jr_0e6_6f75                                ; $6f71: $18 $02

    db $10                                        ; $6f73: $10
    ld [bc], a                                    ; $6f74: $02

jr_0e6_6f75:
    jr @+$04                                      ; $6f75: $18 $02

    ld [$0c02], sp                                ; $6f77: $08 $02 $0c
    adc l                                         ; $6f7a: $8d
    inc d                                         ; $6f7b: $14
    inc e                                         ; $6f7c: $1c
    inc d                                         ; $6f7d: $14
    inc e                                         ; $6f7e: $1c
    or l                                          ; $6f7f: $b5
    xor l                                         ; $6f80: $ad
    ld h, [hl]                                    ; $6f81: $66
    rst $38                                       ; $6f82: $ff
    rst $30                                       ; $6f83: $f7
    ld a, [hl]                                    ; $6f84: $7e
    rst $28                                       ; $6f85: $ef
    cp l                                          ; $6f86: $bd
    rst $30                                       ; $6f87: $f7
    ld [bc], a                                    ; $6f88: $02
    rst $38                                       ; $6f89: $ff
    add e                                         ; $6f8a: $83
    db $db                                        ; $6f8b: $db
    cp l                                          ; $6f8c: $bd
    rst $20                                       ; $6f8d: $e7
    ld [bc], a                                    ; $6f8e: $02
    add d                                         ; $6f8f: $82
    sbc h                                         ; $6f90: $9c
    ld b, d                                       ; $6f91: $42
    jp nz, $8785                                  ; $6f92: $c2 $85 $87

    dec d                                         ; $6f95: $15
    rla                                           ; $6f96: $17
    sbc l                                         ; $6f97: $9d
    sbc e                                         ; $6f98: $9b
    ld e, l                                       ; $6f99: $5d
    ld d, e                                       ; $6f9a: $53
    db $fd                                        ; $6f9b: $fd
    db $eb                                        ; $6f9c: $eb
    push af                                       ; $6f9d: $f5
    sbc e                                         ; $6f9e: $9b
    ld [hl], l                                    ; $6f9f: $75
    db $eb                                        ; $6fa0: $eb
    sub d                                         ; $6fa1: $92
    ld a, [hl]                                    ; $6fa2: $7e
    jp nz, $74be                                  ; $6fa3: $c2 $be $74

    ld e, h                                       ; $6fa6: $5c
    add sp, -$48                                  ; $6fa7: $e8 $b8
    ret nc                                        ; $6fa9: $d0

    ld [hl], b                                    ; $6faa: $70
    and b                                         ; $6fab: $a0
    ldh [rSC], a                                  ; $6fac: $e0 $02
    ret nz                                        ; $6fae: $c0

    adc b                                         ; $6faf: $88
    rlca                                          ; $6fb0: $07
    ld c, $0d                                     ; $6fb1: $0e $0d
    dec b                                         ; $6fb3: $05
    rrca                                          ; $6fb4: $0f
    ld c, $03                                     ; $6fb5: $0e $03
    ld [bc], a                                    ; $6fb7: $02
    ld [bc], a                                    ; $6fb8: $02
    ld bc, $0002                                  ; $6fb9: $01 $02 $00
    ld [bc], a                                    ; $6fbc: $02
    ld [$0004], sp                                ; $6fbd: $08 $04 $00
    ld [bc], a                                    ; $6fc0: $02
    ret nc                                        ; $6fc1: $d0

    ld [bc], a                                    ; $6fc2: $02
    jr nz, jr_0e6_6fcf                            ; $6fc3: $20 $0a

    nop                                           ; $6fc5: $00
    adc b                                         ; $6fc6: $88
    ldh [rSVBK], a                                ; $6fc7: $e0 $70
    or b                                          ; $6fc9: $b0
    and b                                         ; $6fca: $a0
    ldh a, [rSVBK]                                ; $6fcb: $f0 $70
    ret nz                                        ; $6fcd: $c0

    ld b, b                                       ; $6fce: $40

jr_0e6_6fcf:
    ld [bc], a                                    ; $6fcf: $02
    add b                                         ; $6fd0: $80
    ld [bc], a                                    ; $6fd1: $02
    nop                                           ; $6fd2: $00
    ld [bc], a                                    ; $6fd3: $02
    db $10                                        ; $6fd4: $10
    inc b                                         ; $6fd5: $04
    nop                                           ; $6fd6: $00
    ld [bc], a                                    ; $6fd7: $02
    dec bc                                        ; $6fd8: $0b
    ld [bc], a                                    ; $6fd9: $02
    inc b                                         ; $6fda: $04
    ld a, [bc]                                    ; $6fdb: $0a
    nop                                           ; $6fdc: $00
    rst $38                                       ; $6fdd: $ff
    rlca                                          ; $6fde: $07
    ld bc, $0cf5                                  ; $6fdf: $01 $f5 $0c
    rst $30                                       ; $6fe2: $f7
    ld b, $fd                                     ; $6fe3: $06 $fd
    ei                                            ; $6fe5: $fb
    ld [bc], a                                    ; $6fe6: $02
    add hl, bc                                    ; $6fe7: $09
    ld e, $00                                     ; $6fe8: $1e $00
    rst $38                                       ; $6fea: $ff

Call_0e6_6feb:
    dec d                                         ; $6feb: $15
    ld [$1f00], sp                                ; $6fec: $08 $00 $1f
    ld hl, sp+$07                                 ; $6fef: $f8 $07

jr_0e6_6ff1:
    ld sp, hl                                     ; $6ff1: $f9
    ld bc, $09f6                                  ; $6ff2: $01 $f6 $09
    rst $28                                       ; $6ff5: $ef
    ld de, $17f0                                  ; $6ff6: $11 $f0 $17
    rst $38                                       ; $6ff9: $ff
    nop                                           ; $6ffa: $00
    rst $38                                       ; $6ffb: $ff

jr_0e6_6ffc:
    ld [$10ff], sp                                ; $6ffc: $08 $ff $10
    rst $38                                       ; $6fff: $ff
    jr jr_0e6_7004                                ; $7000: $18 $02

    inc bc                                        ; $7002: $03
    add d                                         ; $7003: $82

jr_0e6_7004:
    dec c                                         ; $7004: $0d
    rrca                                          ; $7005: $0f
    ld [bc], a                                    ; $7006: $02
    inc de                                        ; $7007: $13
    ld [bc], a                                    ; $7008: $02
    nop                                           ; $7009: $00
    ld [bc], a                                    ; $700a: $02
    ld a, a                                       ; $700b: $7f
    adc d                                         ; $700c: $8a
    add e                                         ; $700d: $83
    rst $38                                       ; $700e: $ff
    ld h, [hl]                                    ; $700f: $66
    rst $38                                       ; $7010: $ff
    ld a, e                                       ; $7011: $7b
    cp a                                          ; $7012: $bf
    inc sp                                        ; $7013: $33
    rst $08                                       ; $7014: $cf
    add a                                         ; $7015: $87
    rst $38                                       ; $7016: $ff
    ld [bc], a                                    ; $7017: $02
    ld a, a                                       ; $7018: $7f
    inc b                                         ; $7019: $04
    ld bc, $0202                                  ; $701a: $01 $02 $02
    ld [bc], a                                    ; $701d: $02
    ld bc, $4f02                                  ; $701e: $01 $02 $4f
    ld [bc], a                                    ; $7021: $02
    ld bc, $0282                                  ; $7022: $01 $82 $02
    inc bc                                        ; $7025: $03
    ld [bc], a                                    ; $7026: $02
    ld a, a                                       ; $7027: $7f
    sbc d                                         ; $7028: $9a
    db $db                                        ; $7029: $db
    xor $9e                                       ; $702a: $ee $9e
    db $fd                                        ; $702c: $fd
    ld hl, sp-$01                                 ; $702d: $f8 $ff
    sbc h                                         ; $702f: $9c
    rst $20                                       ; $7030: $e7
    halt                                          ; $7031: $76
    xor a                                         ; $7032: $af
    call $aa7f                                    ; $7033: $cd $7f $aa
    rst $18                                       ; $7036: $df
    call nc, Call_000_2abf                        ; $7037: $d4 $bf $2a
    rst $38                                       ; $703a: $ff
    ld d, h                                       ; $703b: $54
    rst $18                                       ; $703c: $df
    ld e, b                                       ; $703d: $58
    rst $18                                       ; $703e: $df
    ld [hl], c                                    ; $703f: $71
    cp $d6                                        ; $7040: $fe $d6
    ld sp, hl                                     ; $7042: $f9
    ld [bc], a                                    ; $7043: $02
    dec b                                         ; $7044: $05
    sbc [hl]                                      ; $7045: $9e
    rrca                                          ; $7046: $0f
    ld a, [bc]                                    ; $7047: $0a
    ld c, $0d                                     ; $7048: $0e $0d
    dec e                                         ; $704a: $1d
    inc de                                        ; $704b: $13
    dec c                                         ; $704c: $0d
    rrca                                          ; $704d: $0f
    inc c                                         ; $704e: $0c
    dec bc                                        ; $704f: $0b
    halt                                          ; $7050: $76
    ld a, c                                       ; $7051: $79
    or e                                          ; $7052: $b3
    rst $28                                       ; $7053: $ef
    add sp, -$21                                  ; $7054: $e8 $df
    pop de                                        ; $7056: $d1
    ccf                                           ; $7057: $3f
    and a                                         ; $7058: $a7
    ld a, a                                       ; $7059: $7f
    ld e, h                                       ; $705a: $5c
    rst $38                                       ; $705b: $ff
    cp a                                          ; $705c: $bf
    ld a, a                                       ; $705d: $7f
    ret c                                         ; $705e: $d8

    jr c, jr_0e6_70b1                             ; $705f: $38 $50

    or b                                          ; $7061: $b0
    db $10                                        ; $7062: $10
    ldh a, [rSC]                                  ; $7063: $f0 $02
    jr nc, jr_0e6_6ff1                            ; $7065: $30 $8a

    inc a                                         ; $7067: $3c
    inc l                                         ; $7068: $2c
    ld d, $1a                                     ; $7069: $16 $1a
    rrca                                          ; $706b: $0f
    add hl, bc                                    ; $706c: $09
    dec a                                         ; $706d: $3d
    scf                                           ; $706e: $37
    dec hl                                        ; $706f: $2b
    ccf                                           ; $7070: $3f
    ld [bc], a                                    ; $7071: $02
    inc a                                         ; $7072: $3c
    ld [bc], a                                    ; $7073: $02
    jr nz, jr_0e6_7078                            ; $7074: $20 $02

    nop                                           ; $7076: $00
    ld [bc], a                                    ; $7077: $02

jr_0e6_7078:
    jr c, jr_0e6_6ffc                             ; $7078: $38 $82

    ld e, $3e                                     ; $707a: $1e $3e
    ld [bc], a                                    ; $707c: $02
    dec h                                         ; $707d: $25
    ld [$0600], sp                                ; $707e: $08 $00 $06
    add b                                         ; $7081: $80
    ld c, $00                                     ; $7082: $0e $00
    add d                                         ; $7084: $82
    ld a, [de]                                    ; $7085: $1a
    dec e                                         ; $7086: $1d
    ld [bc], a                                    ; $7087: $02
    rlca                                          ; $7088: $07
    ld d, $00                                     ; $7089: $16 $00
    adc d                                         ; $708b: $8a
    ld [hl], b                                    ; $708c: $70
    ld a, a                                       ; $708d: $7f
    rrca                                          ; $708e: $0f
    ld a, a                                       ; $708f: $7f
    dec d                                         ; $7090: $15
    ld l, d                                       ; $7091: $6a
    ld l, $ff                                     ; $7092: $2e $ff
    reti                                          ; $7094: $d9


    ld h, $02                                     ; $7095: $26 $02
    rst $38                                       ; $7097: $ff
    ld b, $00                                     ; $7098: $06 $00
    sbc b                                         ; $709a: $98
    ld a, b                                       ; $709b: $78
    ld e, b                                       ; $709c: $58
    jr jr_0e6_7117                                ; $709d: $18 $78

    ld e, b                                       ; $709f: $58
    ld l, b                                       ; $70a0: $68
    ld e, b                                       ; $70a1: $58
    jr z, jr_0e6_70b2                             ; $70a2: $28 $0e

    ld a, [hl]                                    ; $70a4: $7e
    ld a, c                                       ; $70a5: $79
    ld e, a                                       ; $70a6: $5f
    scf                                           ; $70a7: $37
    ld c, b                                       ; $70a8: $48
    ld l, d                                       ; $70a9: $6a
    db $fd                                        ; $70aa: $fd
    xor e                                         ; $70ab: $ab
    ld d, a                                       ; $70ac: $57
    ld e, l                                       ; $70ad: $5d
    cp [hl]                                       ; $70ae: $be
    xor $f1                                       ; $70af: $ee $f1

jr_0e6_70b1:
    rst $30                                       ; $70b1: $f7

jr_0e6_70b2:
    rrca                                          ; $70b2: $0f
    ld [bc], a                                    ; $70b3: $02
    ld hl, sp+$08                                 ; $70b4: $f8 $08
    nop                                           ; $70b6: $00
    ld [bc], a                                    ; $70b7: $02
    inc b                                         ; $70b8: $04
    ld [bc], a                                    ; $70b9: $02
    ld [$0b02], sp                                ; $70ba: $08 $02 $0b
    ld [bc], a                                    ; $70bd: $02
    inc e                                         ; $70be: $1c
    adc d                                         ; $70bf: $8a
    db $f4                                        ; $70c0: $f4
    db $fc                                        ; $70c1: $fc
    ld e, b                                       ; $70c2: $58
    cp b                                          ; $70c3: $b8
    ld l, b                                       ; $70c4: $68
    ld hl, sp-$70                                 ; $70c5: $f8 $90
    ldh a, [$a0]                                  ; $70c7: $f0 $a0
    ld h, b                                       ; $70c9: $60
    ld [bc], a                                    ; $70ca: $02
    ret nz                                        ; $70cb: $c0

    ld a, [bc]                                    ; $70cc: $0a
    nop                                           ; $70cd: $00
    rst $38                                       ; $70ce: $ff
    rlca                                          ; $70cf: $07
    ld bc, $1f00                                  ; $70d0: $01 $00 $1f
    ld hl, sp+$07                                 ; $70d3: $f8 $07
    ld a, [c]                                     ; $70d5: $f2
    inc de                                        ; $70d6: $13
    add h                                         ; $70d7: $84
    nop                                           ; $70d8: $00
    ld [bc], a                                    ; $70d9: $02
    nop                                           ; $70da: $00
    inc bc                                        ; $70db: $03
    inc e                                         ; $70dc: $1c
    nop                                           ; $70dd: $00
    rst $38                                       ; $70de: $ff
    dec d                                         ; $70df: $15
    ld [$1f00], sp                                ; $70e0: $08 $00 $1f
    ld hl, sp+$07                                 ; $70e3: $f8 $07
    ld sp, hl                                     ; $70e5: $f9
    inc bc                                        ; $70e6: $03
    push af                                       ; $70e7: $f5
    dec bc                                        ; $70e8: $0b
    xor $13                                       ; $70e9: $ee $13
    ldh a, [rNR22]                                ; $70eb: $f0 $17
    cp $00                                        ; $70ed: $fe $00
    cp $08                                        ; $70ef: $fe $08
    cp $10                                        ; $70f1: $fe $10
    cp $18                                        ; $70f3: $fe $18
    ld [bc], a                                    ; $70f5: $02
    rrca                                          ; $70f6: $0f
    add d                                         ; $70f7: $82
    ld [hl], $3f                                  ; $70f8: $36 $3f
    ld [bc], a                                    ; $70fa: $02
    ld c, a                                       ; $70fb: $4f
    ld [bc], a                                    ; $70fc: $02
    inc bc                                        ; $70fd: $03
    sub b                                         ; $70fe: $90
    push hl                                       ; $70ff: $e5
    and $1e                                       ; $7100: $e6 $1e
    db $fd                                        ; $7102: $fd
    dec bc                                        ; $7103: $0b
    rst $38                                       ; $7104: $ff

jr_0e6_7105:
    cp $ff                                        ; $7105: $fe $ff
    adc $3f                                       ; $7107: $ce $3f
    inc c                                         ; $7109: $0c
    rst $38                                       ; $710a: $ff
    db $fd                                        ; $710b: $fd
    rst $38                                       ; $710c: $ff
    dec e                                         ; $710d: $1d
    rra                                           ; $710e: $1f
    ld [bc], a                                    ; $710f: $02
    rlca                                          ; $7110: $07
    ld [bc], a                                    ; $7111: $02
    inc bc                                        ; $7112: $03
    add h                                         ; $7113: $84
    inc b                                         ; $7114: $04
    rlca                                          ; $7115: $07
    inc a                                         ; $7116: $3c

jr_0e6_7117:
    ccf                                           ; $7117: $3f
    ld [bc], a                                    ; $7118: $02
    inc bc                                        ; $7119: $03
    sbc [hl]                                      ; $711a: $9e
    dec b                                         ; $711b: $05
    rlca                                          ; $711c: $07
    rrca                                          ; $711d: $0f
    ld c, $17                                     ; $711e: $0e $17
    ld e, $fc                                     ; $7120: $1e $fc
    ei                                            ; $7122: $fb
    db $d3                                        ; $7123: $d3
    ld a, a                                       ; $7124: $7f
    or $e9                                        ; $7125: $f6 $e9
    ld [c], a                                     ; $7127: $e2
    db $fd                                        ; $7128: $fd
    ld a, b                                       ; $7129: $78
    sbc a                                         ; $712a: $9f
    db $dd                                        ; $712b: $dd
    cp a                                          ; $712c: $bf
    or [hl]                                       ; $712d: $b6
    ld a, l                                       ; $712e: $7d
    xor d                                         ; $712f: $aa
    ld a, a                                       ; $7130: $7f
    ld d, b                                       ; $7131: $50
    rst $38                                       ; $7132: $ff
    ld [$52ff], a                                 ; $7133: $ea $ff $52
    ld a, l                                       ; $7136: $7d
    push bc                                       ; $7137: $c5
    ld a, [$2802]                                 ; $7138: $fa $02 $28
    sbc b                                         ; $713b: $98
    ld a, [hl]                                    ; $713c: $7e
    ld d, [hl]                                    ; $713d: $56
    ld [hl], a                                    ; $713e: $77
    ld l, l                                       ; $713f: $6d
    ld [$699b], a                                 ; $7140: $ea $9b $69
    ld a, c                                       ; $7143: $79
    ld h, a                                       ; $7144: $67
    ld e, [hl]                                    ; $7145: $5e
    sub l                                         ; $7146: $95
    rst $28                                       ; $7147: $ef
    cp a                                          ; $7148: $bf
    ld a, a                                       ; $7149: $7f
    call nz, Call_000_087c                        ; $714a: $c4 $7c $08
    ld hl, sp-$70                                 ; $714d: $f8 $90
    ldh a, [$bf]                                  ; $714f: $f0 $bf
    rst $38                                       ; $7151: $ff
    ld b, c                                       ; $7152: $41
    rst $38                                       ; $7153: $ff
    ld [bc], a                                    ; $7154: $02
    cp $02                                        ; $7155: $fe $02
    ret nz                                        ; $7157: $c0

    ld [bc], a                                    ; $7158: $02
    add b                                         ; $7159: $80
    ld [bc], a                                    ; $715a: $02
    ld [$0c88], sp                                ; $715b: $08 $88 $0c
    inc b                                         ; $715e: $04
    ld c, $02                                     ; $715f: $0e $02
    ld a, [bc]                                    ; $7161: $0a
    ld c, $06                                     ; $7162: $0e $06
    ld c, $02                                     ; $7164: $0e $02
    ld [$0006], sp                                ; $7166: $08 $06 $00
    ld [bc], a                                    ; $7169: $02
    ld [$0e02], sp                                ; $716a: $08 $02 $0e
    ld [bc], a                                    ; $716d: $02
    dec b                                         ; $716e: $05
    ld [$0200], sp                                ; $716f: $08 $00 $02
    ld h, b                                       ; $7172: $60
    adc b                                         ; $7173: $88
    and b                                         ; $7174: $a0
    ldh [$a0], a                                  ; $7175: $e0 $a0
    ret nz                                        ; $7177: $c0

    add b                                         ; $7178: $80
    ldh [$80], a                                  ; $7179: $e0 $80
    ldh [rSC], a                                  ; $717b: $e0 $02
    ld h, b                                       ; $717d: $60
    ld [$0200], sp                                ; $717e: $08 $00 $02
    jr nz, jr_0e6_7105                            ; $7181: $20 $82

    ld a, [de]                                    ; $7183: $1a
    dec e                                         ; $7184: $1d
    ld [bc], a                                    ; $7185: $02
    rlca                                          ; $7186: $07
    inc d                                         ; $7187: $14
    nop                                           ; $7188: $00
    adc h                                         ; $7189: $8c
    dec bc                                        ; $718a: $0b
    inc e                                         ; $718b: $1c
    db $10                                        ; $718c: $10
    rra                                           ; $718d: $1f
    rrca                                          ; $718e: $0f
    rra                                           ; $718f: $1f
    dec d                                         ; $7190: $15
    ld a, [bc]                                    ; $7191: $0a
    ld l, $ff                                     ; $7192: $2e $ff
    reti                                          ; $7194: $d9


    ld h, $02                                     ; $7195: $26 $02
    rst $38                                       ; $7197: $ff
    inc b                                         ; $7198: $04
    nop                                           ; $7199: $00
    inc b                                         ; $719a: $04
    db $10                                        ; $719b: $10
    add e                                         ; $719c: $83
    jr jr_0e6_71a7                                ; $719d: $18 $08

    jr @+$04                                      ; $719f: $18 $02

    ld [$1881], sp                                ; $71a1: $08 $81 $18
    ld [bc], a                                    ; $71a4: $02
    ld e, $8e                                     ; $71a5: $1e $8e

jr_0e6_71a7:
    add hl, bc                                    ; $71a7: $09
    rra                                           ; $71a8: $1f
    ld c, a                                       ; $71a9: $4f
    ldh a, [$38]                                  ; $71aa: $f0 $38
    rst $38                                       ; $71ac: $ff
    xor e                                         ; $71ad: $ab
    ld d, a                                       ; $71ae: $57
    ld e, l                                       ; $71af: $5d
    cp [hl]                                       ; $71b0: $be
    xor $f1                                       ; $71b1: $ee $f1
    rst $30                                       ; $71b3: $f7
    rrca                                          ; $71b4: $0f
    ld [bc], a                                    ; $71b5: $02
    ld hl, sp+$08                                 ; $71b6: $f8 $08
    nop                                           ; $71b8: $00
    ld [bc], a                                    ; $71b9: $02
    inc b                                         ; $71ba: $04
    ld [bc], a                                    ; $71bb: $02
    ld [$0b02], sp                                ; $71bc: $08 $02 $0b
    ld [bc], a                                    ; $71bf: $02
    inc e                                         ; $71c0: $1c
    adc d                                         ; $71c1: $8a
    db $f4                                        ; $71c2: $f4
    db $fc                                        ; $71c3: $fc
    ld e, b                                       ; $71c4: $58
    cp b                                          ; $71c5: $b8
    ld l, b                                       ; $71c6: $68
    ld hl, sp-$70                                 ; $71c7: $f8 $90
    ldh a, [$a0]                                  ; $71c9: $f0 $a0
    ld h, b                                       ; $71cb: $60
    ld [bc], a                                    ; $71cc: $02
    ret nz                                        ; $71cd: $c0

    ld [$ff00], sp                                ; $71ce: $08 $00 $ff
    rlca                                          ; $71d1: $07
    ld bc, $1f00                                  ; $71d2: $01 $00 $1f
    ld hl, sp+$07                                 ; $71d5: $f8 $07
    pop af                                        ; $71d7: $f1
    ld [de], a                                    ; $71d8: $12
    add h                                         ; $71d9: $84
    nop                                           ; $71da: $00
    ld [bc], a                                    ; $71db: $02
    nop                                           ; $71dc: $00
    inc bc                                        ; $71dd: $03
    inc e                                         ; $71de: $1c
    nop                                           ; $71df: $00
    rst $38                                       ; $71e0: $ff
    inc de                                        ; $71e1: $13
    rlca                                          ; $71e2: $07
    nop                                           ; $71e3: $00
    rra                                           ; $71e4: $1f
    ld hl, sp+$07                                 ; $71e5: $f8 $07
    ld sp, hl                                     ; $71e7: $f9
    inc b                                         ; $71e8: $04
    db $ed                                        ; $71e9: $ed
    inc c                                         ; $71ea: $0c
    db $ed                                        ; $71eb: $ed
    inc d                                         ; $71ec: $14
    ld a, [$fd18]                                 ; $71ed: $fa $18 $fd
    nop                                           ; $71f0: $00
    db $fd                                        ; $71f1: $fd
    ld [$10fd], sp                                ; $71f2: $08 $fd $10
    ld [bc], a                                    ; $71f5: $02
    ccf                                           ; $71f6: $3f
    add h                                         ; $71f7: $84
    rst $20                                       ; $71f8: $e7
    rst $38                                       ; $71f9: $ff
    rra                                           ; $71fa: $1f
    dec e                                         ; $71fb: $1d
    ld [bc], a                                    ; $71fc: $02
    rlca                                          ; $71fd: $07
    sub d                                         ; $71fe: $92
    adc e                                         ; $71ff: $8b
    adc a                                         ; $7200: $8f
    ld a, a                                       ; $7201: $7f
    db $fc                                        ; $7202: $fc
    inc de                                        ; $7203: $13
    rst $38                                       ; $7204: $ff
    cp $ff                                        ; $7205: $fe $ff
    db $ed                                        ; $7207: $ed
    ld a, [hl]                                    ; $7208: $7e
    ld c, c                                       ; $7209: $49
    cp a                                          ; $720a: $bf
    ld a, [de]                                    ; $720b: $1a
    cp $fb                                        ; $720c: $fe $fb
    rst $38                                       ; $720e: $ff
    ld c, $0f                                     ; $720f: $0e $0f
    ld [bc], a                                    ; $7211: $02
    rlca                                          ; $7212: $07
    add h                                         ; $7213: $84
    add hl, bc                                    ; $7214: $09
    rrca                                          ; $7215: $0f
    ld a, c                                       ; $7216: $79
    ld a, [hl]                                    ; $7217: $7e
    ld [bc], a                                    ; $7218: $02
    ld [bc], a                                    ; $7219: $02
    add e                                         ; $721a: $83
    rlca                                          ; $721b: $07
    dec b                                         ; $721c: $05
    rrca                                          ; $721d: $0f
    ld [bc], a                                    ; $721e: $02
    ld a, [bc]                                    ; $721f: $0a
    add d                                         ; $7220: $82
    dec c                                         ; $7221: $0d
    ld b, $02                                     ; $7222: $06 $02
    rlca                                          ; $7224: $07
    sub d                                         ; $7225: $92
    inc b                                         ; $7226: $04
    add hl, bc                                    ; $7227: $09
    ld c, $1d                                     ; $7228: $0e $1d
    dec de                                        ; $722a: $1b
    ld c, $0b                                     ; $722b: $0e $0b
    inc e                                         ; $722d: $1c
    dec de                                        ; $722e: $1b
    ld a, [hl+]                                   ; $722f: $2a
    ccf                                           ; $7230: $3f
    jr c, jr_0e6_726a                             ; $7231: $38 $37

    ret nc                                        ; $7233: $d0

    rst $38                                       ; $7234: $ff
    xor l                                         ; $7235: $ad
    rst $38                                       ; $7236: $ff
    ld [hl], e                                    ; $7237: $73
    ld [bc], a                                    ; $7238: $02
    rst $18                                       ; $7239: $df
    add c                                         ; $723a: $81
    and e                                         ; $723b: $a3
    ld [bc], a                                    ; $723c: $02
    ret nz                                        ; $723d: $c0

    sub h                                         ; $723e: $94
    ldh [$60], a                                  ; $723f: $e0 $60
    ld [hl], b                                    ; $7241: $70
    ret nc                                        ; $7242: $d0

    xor b                                         ; $7243: $a8
    cp b                                          ; $7244: $b8
    sbc h                                         ; $7245: $9c
    sub h                                         ; $7246: $94
    ld a, [hl]                                    ; $7247: $7e
    ld [c], a                                     ; $7248: $e2
    ld d, d                                       ; $7249: $52
    cp $ec                                        ; $724a: $fe $ec
    db $fc                                        ; $724c: $fc
    ld a, b                                       ; $724d: $78
    ld hl, sp+$40                                 ; $724e: $f8 $40
    ret nz                                        ; $7250: $c0

    ld b, b                                       ; $7251: $40
    ret nz                                        ; $7252: $c0

    ld [bc], a                                    ; $7253: $02
    add b                                         ; $7254: $80
    ld [bc], a                                    ; $7255: $02
    rst $38                                       ; $7256: $ff
    add d                                         ; $7257: $82
    inc bc                                        ; $7258: $03
    rst $38                                       ; $7259: $ff
    ld [bc], a                                    ; $725a: $02
    db $fc                                        ; $725b: $fc
    ld [bc], a                                    ; $725c: $02
    nop                                           ; $725d: $00
    ld [bc], a                                    ; $725e: $02
    inc c                                         ; $725f: $0c
    ld [bc], a                                    ; $7260: $02
    ld a, [bc]                                    ; $7261: $0a
    ld [$0200], sp                                ; $7262: $08 $00 $02
    inc b                                         ; $7265: $04
    ld [bc], a                                    ; $7266: $02
    ld [$0b02], sp                                ; $7267: $08 $02 $0b

jr_0e6_726a:
    ld [bc], a                                    ; $726a: $02
    inc e                                         ; $726b: $1c
    adc d                                         ; $726c: $8a
    db $f4                                        ; $726d: $f4
    db $fc                                        ; $726e: $fc
    ld e, b                                       ; $726f: $58
    cp b                                          ; $7270: $b8
    add sp, -$08                                  ; $7271: $e8 $f8
    sub b                                         ; $7273: $90
    ldh a, [$a0]                                  ; $7274: $f0 $a0
    ld h, b                                       ; $7276: $60
    ld [bc], a                                    ; $7277: $02
    ret nz                                        ; $7278: $c0

    ld [bc], a                                    ; $7279: $02
    jr nc, @-$74                                  ; $727a: $30 $8a

    ld b, b                                       ; $727c: $40
    ld [hl], b                                    ; $727d: $70
    and b                                         ; $727e: $a0
    ldh a, [$b0]                                  ; $727f: $f0 $b0
    ret nc                                        ; $7281: $d0

    sub b                                         ; $7282: $90
    ldh [rLCDC], a                                ; $7283: $e0 $40
    ld [hl], b                                    ; $7285: $70
    ld [bc], a                                    ; $7286: $02
    jr nc, jr_0e6_7293                            ; $7287: $30 $0a

    nop                                           ; $7289: $00
    add h                                         ; $728a: $84
    dec a                                         ; $728b: $3d
    ld a, [hl-]                                   ; $728c: $3a
    inc c                                         ; $728d: $0c
    rrca                                          ; $728e: $0f
    ld [bc], a                                    ; $728f: $02
    inc bc                                        ; $7290: $03
    ld [bc], a                                    ; $7291: $02
    nop                                           ; $7292: $00

jr_0e6_7293:
    sbc h                                         ; $7293: $9c
    ld c, $0f                                     ; $7294: $0e $0f
    inc bc                                        ; $7296: $03
    dec c                                         ; $7297: $0d
    dec bc                                        ; $7298: $0b
    dec c                                         ; $7299: $0d
    ld a, [bc]                                    ; $729a: $0a
    rlca                                          ; $729b: $07
    dec b                                         ; $729c: $05
    rrca                                          ; $729d: $0f
    ld a, [bc]                                    ; $729e: $0a
    rrca                                          ; $729f: $0f
    dec c                                         ; $72a0: $0d
    rrca                                          ; $72a1: $0f
    ld [$0b0f], sp                                ; $72a2: $08 $0f $0b
    inc c                                         ; $72a5: $0c
    nop                                           ; $72a6: $00

jr_0e6_72a7:
    rrca                                          ; $72a7: $0f
    ld c, $0f                                     ; $72a8: $0e $0f
    dec b                                         ; $72aa: $05
    ld a, [bc]                                    ; $72ab: $0a
    ld l, $ff                                     ; $72ac: $2e $ff
    cp e                                          ; $72ae: $bb
    ld b, h                                       ; $72af: $44
    ld [bc], a                                    ; $72b0: $02
    rst $38                                       ; $72b1: $ff
    ld [bc], a                                    ; $72b2: $02
    nop                                           ; $72b3: $00
    adc c                                         ; $72b4: $89
    jr nc, jr_0e6_72a7                            ; $72b5: $30 $f0

    ld h, b                                       ; $72b7: $60
    ldh [rNR41], a                                ; $72b8: $e0 $20
    ldh [$b0], a                                  ; $72ba: $e0 $b0
    ret nc                                        ; $72bc: $d0

    jr nc, jr_0e6_72c1                            ; $72bd: $30 $02

    ret nc                                        ; $72bf: $d0

    sub c                                         ; $72c0: $91

jr_0e6_72c1:
    ldh a, [$0e]                                  ; $72c1: $f0 $0e
    cp $61                                        ; $72c3: $fe $61
    sbc a                                         ; $72c5: $9f
    xor [hl]                                      ; $72c6: $ae
    ld [hl], c                                    ; $72c7: $71
    db $10                                        ; $72c8: $10
    rst $38                                       ; $72c9: $ff
    xor e                                         ; $72ca: $ab
    ld d, a                                       ; $72cb: $57
    ld a, l                                       ; $72cc: $7d
    cp [hl]                                       ; $72cd: $be
    adc $f1                                       ; $72ce: $ce $f1
    rst $10                                       ; $72d0: $d7
    cpl                                           ; $72d1: $2f
    ld [bc], a                                    ; $72d2: $02
    ld hl, sp+$02                                 ; $72d3: $f8 $02
    nop                                           ; $72d5: $00
    rst $38                                       ; $72d6: $ff
    rlca                                          ; $72d7: $07
    ld bc, $1f00                                  ; $72d8: $01 $00 $1f
    ld hl, sp+$07                                 ; $72db: $f8 $07
    ldh a, [rIF]                                  ; $72dd: $f0 $0f
    add h                                         ; $72df: $84
    nop                                           ; $72e0: $00
    ld [bc], a                                    ; $72e1: $02
    nop                                           ; $72e2: $00
    inc bc                                        ; $72e3: $03
    inc e                                         ; $72e4: $1c
    nop                                           ; $72e5: $00
    rst $38                                       ; $72e6: $ff
    dec d                                         ; $72e7: $15
    ld [$1f00], sp                                ; $72e8: $08 $00 $1f
    ld hl, sp+$07                                 ; $72eb: $f8 $07
    ld sp, hl                                     ; $72ed: $f9
    ld [bc], a                                    ; $72ee: $02
    pop af                                        ; $72ef: $f1
    ld a, [bc]                                    ; $72f0: $0a
    xor $12                                       ; $72f1: $ee $12
    ldh a, [rNR22]                                ; $72f3: $f0 $17
    cp $00                                        ; $72f5: $fe $00
    cp $08                                        ; $72f7: $fe $08
    cp $10                                        ; $72f9: $fe $10
    cp $18                                        ; $72fb: $fe $18
    ld [bc], a                                    ; $72fd: $02
    rrca                                          ; $72fe: $0f
    add d                                         ; $72ff: $82
    dec sp                                        ; $7300: $3b
    ccf                                           ; $7301: $3f
    ld [bc], a                                    ; $7302: $02
    rlca                                          ; $7303: $07
    ld [bc], a                                    ; $7304: $02
    inc bc                                        ; $7305: $03
    add l                                         ; $7306: $85
    ld [c], a                                     ; $7307: $e2
    db $e3                                        ; $7308: $e3
    rra                                           ; $7309: $1f
    cp $85                                        ; $730a: $fe $85
    ld [bc], a                                    ; $730c: $02
    rst $38                                       ; $730d: $ff
    adc c                                         ; $730e: $89
    ld a, a                                       ; $730f: $7f
    ld a, e                                       ; $7310: $7b
    sbc a                                         ; $7311: $9f
    ld [de], a                                    ; $7312: $12
    rst $28                                       ; $7313: $ef
    add $ff                                       ; $7314: $c6 $ff
    ld a, $3f                                     ; $7316: $3e $3f
    ld [bc], a                                    ; $7318: $02
    inc bc                                        ; $7319: $03
    ld [bc], a                                    ; $731a: $02
    ld bc, $0284                                  ; $731b: $01 $84 $02
    inc bc                                        ; $731e: $03
    ld e, $1f                                     ; $731f: $1e $1f
    ld [bc], a                                    ; $7321: $02
    ld bc, $0004                                  ; $7322: $01 $04 $00
    ld [bc], a                                    ; $7325: $02
    ld bc, $0302                                  ; $7326: $01 $02 $03
    ld [bc], a                                    ; $7329: $02
    ld bc, $0794                                  ; $732a: $01 $94 $07
    ld b, $0b                                     ; $732d: $06 $0b
    ld c, $fc                                     ; $732f: $0e $fc
    rst $38                                       ; $7331: $ff
    ld l, a                                       ; $7332: $6f
    cp e                                          ; $7333: $bb
    ld hl, sp-$09                                 ; $7334: $f8 $f7
    di                                            ; $7336: $f3
    db $fc                                        ; $7337: $fc
    cp h                                          ; $7338: $bc
    ld c, a                                       ; $7339: $4f
    ld l, h                                       ; $733a: $6c
    rst $18                                       ; $733b: $df

jr_0e6_733c:
    jp c, $56bf                                   ; $733c: $da $bf $56

    cp a                                          ; $733f: $bf
    ld [bc], a                                    ; $7340: $02
    ld e, h                                       ; $7341: $5c
    sub a                                         ; $7342: $97
    rst $38                                       ; $7343: $ff
    xor e                                         ; $7344: $ab
    push af                                       ; $7345: $f5
    sub $d9                                       ; $7346: $d6 $d9
    ld a, [hl-]                                   ; $7348: $3a
    jp z, $dfff                                   ; $7349: $ca $ff $df

    cp a                                          ; $734c: $bf
    or [hl]                                       ; $734d: $b6
    ld e, [hl]                                    ; $734e: $5e
    cp c                                          ; $734f: $b9
    ld a, a                                       ; $7350: $7f
    ld c, a                                       ; $7351: $4f
    rst $38                                       ; $7352: $ff
    ld c, b                                       ; $7353: $48
    ld hl, sp+$10                                 ; $7354: $f8 $10
    ldh a, [$3f]                                  ; $7356: $f0 $3f
    rst $38                                       ; $7358: $ff
    ld b, b                                       ; $7359: $40
    inc bc                                        ; $735a: $03
    rst $38                                       ; $735b: $ff
    add c                                         ; $735c: $81
    ld b, b                                       ; $735d: $40
    inc bc                                        ; $735e: $03
    ret nz                                        ; $735f: $c0

    ld [bc], a                                    ; $7360: $02
    db $10                                        ; $7361: $10
    add c                                         ; $7362: $81
    jr @+$04                                      ; $7363: $18 $02

    ld [$1803], sp                                ; $7365: $08 $03 $18
    ld a, [bc]                                    ; $7368: $0a
    nop                                           ; $7369: $00
    ld [bc], a                                    ; $736a: $02
    jr jr_0e6_736f                                ; $736b: $18 $02

    ld e, $02                                     ; $736d: $1e $02

jr_0e6_736f:
    dec b                                         ; $736f: $05
    ld [$0200], sp                                ; $7370: $08 $00 $02
    ld b, b                                       ; $7373: $40
    add [hl]                                      ; $7374: $86
    add b                                         ; $7375: $80
    ret nz                                        ; $7376: $c0

    add b                                         ; $7377: $80
    ret nz                                        ; $7378: $c0

    add b                                         ; $7379: $80
    ret nz                                        ; $737a: $c0

    ld [bc], a                                    ; $737b: $02
    ld b, b                                       ; $737c: $40
    inc c                                         ; $737d: $0c
    nop                                           ; $737e: $00
    add h                                         ; $737f: $84
    dec a                                         ; $7380: $3d
    ld a, [hl-]                                   ; $7381: $3a
    ld c, $0f                                     ; $7382: $0e $0f
    ld [bc], a                                    ; $7384: $02
    ld bc, $000a                                  ; $7385: $01 $0a $00
    sub h                                         ; $7388: $94
    ld a, [bc]                                    ; $7389: $0a
    ccf                                           ; $738a: $3f
    dec e                                         ; $738b: $1d
    ccf                                           ; $738c: $3f
    ld a, [hl+]                                   ; $738d: $2a
    cpl                                           ; $738e: $2f
    inc a                                         ; $738f: $3c
    ccf                                           ; $7390: $3f
    ld sp, $303e                                  ; $7391: $31 $3e $30
    ccf                                           ; $7394: $3f
    rrca                                          ; $7395: $0f
    ccf                                           ; $7396: $3f
    dec d                                         ; $7397: $15
    ld a, [hl+]                                   ; $7398: $2a
    ld l, $ff                                     ; $7399: $2e $ff
    cp e                                          ; $739b: $bb
    ld b, h                                       ; $739c: $44
    ld [bc], a                                    ; $739d: $02
    rst $38                                       ; $739e: $ff
    inc b                                         ; $739f: $04
    nop                                           ; $73a0: $00
    ld [bc], a                                    ; $73a1: $02
    jr nz, jr_0e6_733c                            ; $73a2: $20 $98

    jr nc, jr_0e6_73b6                            ; $73a4: $30 $10

    jr nc, jr_0e6_73b8                            ; $73a6: $30 $10

    or b                                          ; $73a8: $b0
    ret nc                                        ; $73a9: $d0

    ld d, b                                       ; $73aa: $50
    ldh a, [$9e]                                  ; $73ab: $f0 $9e
    cp $41                                        ; $73ad: $fe $41
    cp a                                          ; $73af: $bf
    xor $31                                       ; $73b0: $ee $31
    db $10                                        ; $73b2: $10
    rst $38                                       ; $73b3: $ff
    xor e                                         ; $73b4: $ab
    ld d, a                                       ; $73b5: $57

jr_0e6_73b6:
    ld e, l                                       ; $73b6: $5d
    cp [hl]                                       ; $73b7: $be

jr_0e6_73b8:
    xor $f1                                       ; $73b8: $ee $f1
    rst $10                                       ; $73ba: $d7
    cpl                                           ; $73bb: $2f
    ld [bc], a                                    ; $73bc: $02
    ld hl, sp+$08                                 ; $73bd: $f8 $08
    nop                                           ; $73bf: $00
    ld [bc], a                                    ; $73c0: $02
    inc b                                         ; $73c1: $04
    ld [bc], a                                    ; $73c2: $02
    ld [$0b02], sp                                ; $73c3: $08 $02 $0b
    ld [bc], a                                    ; $73c6: $02
    inc e                                         ; $73c7: $1c
    adc d                                         ; $73c8: $8a
    db $f4                                        ; $73c9: $f4
    db $fc                                        ; $73ca: $fc
    ld e, b                                       ; $73cb: $58
    cp b                                          ; $73cc: $b8
    ld l, b                                       ; $73cd: $68
    ld hl, sp-$70                                 ; $73ce: $f8 $90
    ldh a, [$a0]                                  ; $73d0: $f0 $a0
    ld h, b                                       ; $73d2: $60
    ld [bc], a                                    ; $73d3: $02
    ret nz                                        ; $73d4: $c0

    ld [$ff00], sp                                ; $73d5: $08 $00 $ff
    rlca                                          ; $73d8: $07
    ld bc, $1f00                                  ; $73d9: $01 $00 $1f
    ld hl, sp+$07                                 ; $73dc: $f8 $07
    ldh a, [rNR10]                                ; $73de: $f0 $10
    add h                                         ; $73e0: $84
    nop                                           ; $73e1: $00
    ld [bc], a                                    ; $73e2: $02
    nop                                           ; $73e3: $00
    ld bc, $001c                                  ; $73e4: $01 $1c $00
    rst $38                                       ; $73e7: $ff
    dec d                                         ; $73e8: $15
    ld [$1f00], sp                                ; $73e9: $08 $00 $1f
    ld hl, sp+$07                                 ; $73ec: $f8 $07
    ld sp, hl                                     ; $73ee: $f9
    nop                                           ; $73ef: $00
    ld hl, sp+$08                                 ; $73f0: $f8 $08
    db $f4                                        ; $73f2: $f4
    db $10                                        ; $73f3: $10
    di                                            ; $73f4: $f3
    jr jr_0e6_73fa                                ; $73f5: $18 $03

    inc bc                                        ; $73f7: $03
    inc bc                                        ; $73f8: $03
    dec bc                                        ; $73f9: $0b

jr_0e6_73fa:
    inc bc                                        ; $73fa: $03
    inc de                                        ; $73fb: $13
    inc bc                                        ; $73fc: $03
    ld d, $02                                     ; $73fd: $16 $02
    ld bc, $0682                                  ; $73ff: $01 $82 $06
    rlca                                          ; $7402: $07
    ld [bc], a                                    ; $7403: $02
    add hl, bc                                    ; $7404: $09
    ld [bc], a                                    ; $7405: $02
    nop                                           ; $7406: $00
    ld [bc], a                                    ; $7407: $02
    inc e                                         ; $7408: $1c
    adc d                                         ; $7409: $8a
    ld h, e                                       ; $740a: $63
    ld a, a                                       ; $740b: $7f
    and c                                         ; $740c: $a1
    rst $38                                       ; $740d: $ff
    rst $18                                       ; $740e: $df
    cp a                                          ; $740f: $bf
    cp l                                          ; $7410: $bd
    jp $ff81                                      ; $7411: $c3 $81 $ff


    ld [bc], a                                    ; $7414: $02
    ld a, a                                       ; $7415: $7f
    ld [bc], a                                    ; $7416: $02
    inc bc                                        ; $7417: $03
    ld b, $00                                     ; $7418: $06 $00
    ld [bc], a                                    ; $741a: $02
    daa                                           ; $741b: $27
    ld [bc], a                                    ; $741c: $02
    ld bc, $ff02                                  ; $741d: $01 $02 $ff
    sbc h                                         ; $7420: $9c
    db $fd                                        ; $7421: $fd
    rst $18                                       ; $7422: $df
    cp e                                          ; $7423: $bb
    rst $38                                       ; $7424: $ff
    db $fc                                        ; $7425: $fc
    rst $38                                       ; $7426: $ff
    push de                                       ; $7427: $d5
    xor [hl]                                      ; $7428: $ae
    inc l                                         ; $7429: $2c
    rst $30                                       ; $742a: $f7
    xor $df                                       ; $742b: $ee $df
    jp z, $d5bf                                   ; $742d: $ca $bf $d5

    cp a                                          ; $7430: $bf
    sbc e                                         ; $7431: $9b
    rst $38                                       ; $7432: $ff
    or h                                          ; $7433: $b4
    rst $38                                       ; $7434: $ff
    cp b                                          ; $7435: $b8
    rst $38                                       ; $7436: $ff
    or e                                          ; $7437: $b3
    db $fc                                        ; $7438: $fc
    ld h, b                                       ; $7439: $60
    ld a, a                                       ; $743a: $7f
    adc a                                         ; $743b: $8f
    rst $38                                       ; $743c: $ff
    ld [bc], a                                    ; $743d: $02
    ld [bc], a                                    ; $743e: $02
    sbc [hl]                                      ; $743f: $9e
    rlca                                          ; $7440: $07
    dec b                                         ; $7441: $05
    cpl                                           ; $7442: $2f
    ld l, $be                                     ; $7443: $2e $be
    or e                                          ; $7445: $b3
    ld [hl], e                                    ; $7446: $73
    rst $08                                       ; $7447: $cf
    adc $bf                                       ; $7448: $ce $bf
    and e                                         ; $744a: $a3
    ld a, a                                       ; $744b: $7f
    adc a                                         ; $744c: $8f
    rst $38                                       ; $744d: $ff
    ld e, b                                       ; $744e: $58
    ld hl, sp-$50                                 ; $744f: $f8 $b0
    ld [hl], b                                    ; $7451: $70
    or b                                          ; $7452: $b0
    ld [hl], b                                    ; $7453: $70
    ld h, b                                       ; $7454: $60
    ldh [rNR41], a                                ; $7455: $e0 $20
    ldh [$60], a                                  ; $7457: $e0 $60
    and b                                         ; $7459: $a0
    ld d, b                                       ; $745a: $50
    or b                                          ; $745b: $b0
    sbc h                                         ; $745c: $9c
    db $fc                                        ; $745d: $fc
    ld [bc], a                                    ; $745e: $02
    and b                                         ; $745f: $a0
    adc [hl]                                      ; $7460: $8e
    ldh a, [$d0]                                  ; $7461: $f0 $d0
    ld hl, sp+$48                                 ; $7463: $f8 $48
    xor h                                         ; $7465: $ac
    cp h                                          ; $7466: $bc
    call c, $8a54                                 ; $7467: $dc $54 $8a
    or $de                                        ; $746a: $f6 $de
    ld [c], a                                     ; $746c: $e2
    ld l, d                                       ; $746d: $6a
    or $02                                        ; $746e: $f6 $02
    sbc $08                                       ; $7470: $de $08
    nop                                           ; $7472: $00
    ld [bc], a                                    ; $7473: $02
    inc b                                         ; $7474: $04
    ld [bc], a                                    ; $7475: $02
    ld [$0b02], sp                                ; $7476: $08 $02 $0b
    ld a, [bc]                                    ; $7479: $0a
    nop                                           ; $747a: $00
    add [hl]                                      ; $747b: $86
    inc b                                         ; $747c: $04
    rlca                                          ; $747d: $07
    pop de                                        ; $747e: $d1
    rst $28                                       ; $747f: $ef
    ld a, $39                                     ; $7480: $3e $39
    ld [bc], a                                    ; $7482: $02
    rlca                                          ; $7483: $07
    stop                                          ; $7484: $10 $00
    add e                                         ; $7486: $83
    inc bc                                        ; $7487: $03
    dec b                                         ; $7488: $05
    rlca                                          ; $7489: $07
    ld [bc], a                                    ; $748a: $02
    nop                                           ; $748b: $00
    adc c                                         ; $748c: $89
    rlca                                          ; $748d: $07
    dec b                                         ; $748e: $05
    ld [bc], a                                    ; $748f: $02
    xor d                                         ; $7490: $aa
    ld d, l                                       ; $7491: $55
    ld [hl], a                                    ; $7492: $77
    rst $38                                       ; $7493: $ff
    rst $08                                       ; $7494: $cf
    jr nc, @+$04                                  ; $7495: $30 $02

    rst $38                                       ; $7497: $ff
    stop                                          ; $7498: $10 $00
    adc [hl]                                      ; $749a: $8e
    ld e, a                                       ; $749b: $5f
    cp a                                          ; $749c: $bf
    ld a, [hl-]                                   ; $749d: $3a
    push bc                                       ; $749e: $c5
    pop bc                                        ; $749f: $c1
    rst $38                                       ; $74a0: $ff
    ld e, h                                       ; $74a1: $5c
    cp a                                          ; $74a2: $bf
    db $ed                                        ; $74a3: $ed
    di                                            ; $74a4: $f3
    halt                                          ; $74a5: $76
    adc [hl]                                      ; $74a6: $8e
    cp b                                          ; $74a7: $b8
    ld a, b                                       ; $74a8: $78
    ld [bc], a                                    ; $74a9: $02
    ret nz                                        ; $74aa: $c0

    ld c, $00                                     ; $74ab: $0e $00
    ld [bc], a                                    ; $74ad: $02
    rlca                                          ; $74ae: $07
    add d                                         ; $74af: $82
    dec b                                         ; $74b0: $05
    rlca                                          ; $74b1: $07
    ld [bc], a                                    ; $74b2: $02
    ld b, $82                                     ; $74b3: $06 $82
    ld [bc], a                                    ; $74b5: $02
    ld b, $02                                     ; $74b6: $06 $02
    inc b                                         ; $74b8: $04
    ld d, $00                                     ; $74b9: $16 $00
    rst $38                                       ; $74bb: $ff
    rlca                                          ; $74bc: $07
    ld bc, $1f00                                  ; $74bd: $01 $00 $1f
    ld hl, sp+$07                                 ; $74c0: $f8 $07
    or $13                                        ; $74c2: $f6 $13
    add h                                         ; $74c4: $84
    nop                                           ; $74c5: $00
    ld [bc], a                                    ; $74c6: $02
    nop                                           ; $74c7: $00
    ld bc, $001c                                  ; $74c8: $01 $1c $00
    rst $38                                       ; $74cb: $ff
    dec d                                         ; $74cc: $15
    ld [$1f00], sp                                ; $74cd: $08 $00 $1f
    ld hl, sp+$07                                 ; $74d0: $f8 $07
    ld sp, hl                                     ; $74d2: $f9
    nop                                           ; $74d3: $00
    ld hl, sp+$08                                 ; $74d4: $f8 $08
    or $10                                        ; $74d6: $f6 $10
    or $18                                        ; $74d8: $f6 $18
    ld b, $03                                     ; $74da: $06 $03
    ld b, $0b                                     ; $74dc: $06 $0b
    ld b, $13                                     ; $74de: $06 $13
    ld b, $15                                     ; $74e0: $06 $15
    ld [bc], a                                    ; $74e2: $02
    ld bc, $0682                                  ; $74e3: $01 $82 $06
    rlca                                          ; $74e6: $07
    ld [bc], a                                    ; $74e7: $02
    add hl, bc                                    ; $74e8: $09
    ld [bc], a                                    ; $74e9: $02
    nop                                           ; $74ea: $00
    ld [bc], a                                    ; $74eb: $02
    ccf                                           ; $74ec: $3f
    adc d                                         ; $74ed: $8a
    ld b, c                                       ; $74ee: $41
    ld a, a                                       ; $74ef: $7f
    or e                                          ; $74f0: $b3
    rst $38                                       ; $74f1: $ff
    cp l                                          ; $74f2: $bd
    rst $18                                       ; $74f3: $df
    sbc c                                         ; $74f4: $99
    rst $20                                       ; $74f5: $e7
    ld b, e                                       ; $74f6: $43
    ld a, a                                       ; $74f7: $7f
    ld [bc], a                                    ; $74f8: $02
    ccf                                           ; $74f9: $3f
    ld [bc], a                                    ; $74fa: $02
    ld bc, $0006                                  ; $74fb: $01 $06 $00
    ld [bc], a                                    ; $74fe: $02
    daa                                           ; $74ff: $27
    ld [bc], a                                    ; $7500: $02
    ld bc, $fe9e                                  ; $7501: $01 $9e $fe
    rst $38                                       ; $7504: $ff
    cp e                                          ; $7505: $bb
    rst $18                                       ; $7506: $df
    cp $fd                                        ; $7507: $fe $fd
    pop af                                        ; $7509: $f1
    rst $38                                       ; $750a: $ff
    xor e                                         ; $750b: $ab
    call c, $ef58                                 ; $750c: $dc $58 $ef
    adc h                                         ; $750f: $8c
    rst $38                                       ; $7510: $ff
    rst $10                                       ; $7511: $d7
    cp a                                          ; $7512: $bf
    jp c, $b5bf                                   ; $7513: $da $bf $b5

    rst $38                                       ; $7516: $ff
    cp d                                          ; $7517: $ba
    rst $38                                       ; $7518: $ff
    or b                                          ; $7519: $b0
    rst $38                                       ; $751a: $ff
    and a                                         ; $751b: $a7
    ld hl, sp+$60                                 ; $751c: $f8 $60
    ld a, a                                       ; $751e: $7f
    adc a                                         ; $751f: $8f
    rst $38                                       ; $7520: $ff
    ld [bc], a                                    ; $7521: $02
    inc b                                         ; $7522: $04
    ld [bc], a                                    ; $7523: $02
    ld l, a                                       ; $7524: $6f
    sbc h                                         ; $7525: $9c
    cp a                                          ; $7526: $bf
    push af                                       ; $7527: $f5
    rst $38                                       ; $7528: $ff
    jp nz, $3fd1                                  ; $7529: $c2 $d1 $3f

    daa                                           ; $752c: $27
    rst $38                                       ; $752d: $ff
    xor c                                         ; $752e: $a9
    ld sp, hl                                     ; $752f: $f9
    ld l, b                                       ; $7530: $68
    ld hl, sp-$10                                 ; $7531: $f8 $f0
    ld [hl], b                                    ; $7533: $70
    ld h, b                                       ; $7534: $60
    ldh [rNR41], a                                ; $7535: $e0 $20
    ldh [$60], a                                  ; $7537: $e0 $60
    and b                                         ; $7539: $a0
    ld d, b                                       ; $753a: $50
    or b                                          ; $753b: $b0
    sbc h                                         ; $753c: $9c
    db $fc                                        ; $753d: $fc
    ld l, e                                       ; $753e: $6b
    or a                                          ; $753f: $b7
    rst $20                                       ; $7540: $e7
    jr jr_0e6_7545                                ; $7541: $18 $02

    db $10                                        ; $7543: $10
    sub b                                         ; $7544: $90

jr_0e6_7545:
    db $fc                                        ; $7545: $fc
    db $ec                                        ; $7546: $ec
    cp h                                          ; $7547: $bc
    db $f4                                        ; $7548: $f4
    cp $c6                                        ; $7549: $fe $c6
    or $0e                                        ; $754b: $f6 $0e
    ld a, $c6                                     ; $754d: $3e $c6
    push de                                       ; $754f: $d5
    db $ed                                        ; $7550: $ed
    and l                                         ; $7551: $a5
    cp e                                          ; $7552: $bb
    ld e, a                                       ; $7553: $5f
    ld h, e                                       ; $7554: $63
    ld [bc], a                                    ; $7555: $02
    jr c, jr_0e6_755a                             ; $7556: $38 $02

    inc b                                         ; $7558: $04
    ld [bc], a                                    ; $7559: $02

jr_0e6_755a:
    ld [$0b02], sp                                ; $755a: $08 $02 $0b
    ld [bc], a                                    ; $755d: $02
    inc e                                         ; $755e: $1c
    add h                                         ; $755f: $84
    db $f4                                        ; $7560: $f4
    db $fc                                        ; $7561: $fc
    ld e, b                                       ; $7562: $58
    cp b                                          ; $7563: $b8
    inc b                                         ; $7564: $04
    nop                                           ; $7565: $00
    add [hl]                                      ; $7566: $86
    inc b                                         ; $7567: $04
    rlca                                          ; $7568: $07
    pop de                                        ; $7569: $d1
    rst $28                                       ; $756a: $ef
    ld a, $39                                     ; $756b: $3e $39
    ld [bc], a                                    ; $756d: $02
    rlca                                          ; $756e: $07
    dec d                                         ; $756f: $15
    nop                                           ; $7570: $00
    adc c                                         ; $7571: $89
    rlca                                          ; $7572: $07
    dec b                                         ; $7573: $05
    ld [bc], a                                    ; $7574: $02
    xor d                                         ; $7575: $aa
    ld d, l                                       ; $7576: $55
    ld [hl], a                                    ; $7577: $77
    rst $38                                       ; $7578: $ff
    rst $08                                       ; $7579: $cf
    jr nc, jr_0e6_757e                            ; $757a: $30 $02

    rst $38                                       ; $757c: $ff
    inc d                                         ; $757d: $14

jr_0e6_757e:
    nop                                           ; $757e: $00
    adc d                                         ; $757f: $8a
    pop bc                                        ; $7580: $c1
    rst $38                                       ; $7581: $ff
    ld e, h                                       ; $7582: $5c
    cp a                                          ; $7583: $bf
    db $ed                                        ; $7584: $ed
    di                                            ; $7585: $f3
    halt                                          ; $7586: $76
    adc [hl]                                      ; $7587: $8e
    cp b                                          ; $7588: $b8
    ld a, b                                       ; $7589: $78
    ld [bc], a                                    ; $758a: $02
    ret nz                                        ; $758b: $c0

    inc d                                         ; $758c: $14
    nop                                           ; $758d: $00
    add d                                         ; $758e: $82
    ld bc, $0203                                  ; $758f: $01 $03 $02
    ld [bc], a                                    ; $7592: $02
    inc e                                         ; $7593: $1c
    nop                                           ; $7594: $00
    rst $38                                       ; $7595: $ff
    rlca                                          ; $7596: $07
    ld bc, $1f00                                  ; $7597: $01 $00 $1f
    ld hl, sp+$07                                 ; $759a: $f8 $07
    db $fc                                        ; $759c: $fc
    rla                                           ; $759d: $17
    add h                                         ; $759e: $84
    nop                                           ; $759f: $00
    ld bc, $2000                                  ; $75a0: $01 $00 $20
    inc e                                         ; $75a3: $1c
    nop                                           ; $75a4: $00
    rst $38                                       ; $75a5: $ff
    dec d                                         ; $75a6: $15
    ld [$1f00], sp                                ; $75a7: $08 $00 $1f
    ld hl, sp+$07                                 ; $75aa: $f8 $07
    ld sp, hl                                     ; $75ac: $f9
    nop                                           ; $75ad: $00
    ld hl, sp+$08                                 ; $75ae: $f8 $08
    push af                                       ; $75b0: $f5
    db $10                                        ; $75b1: $10
    push af                                       ; $75b2: $f5
    jr jr_0e6_75ba                                ; $75b3: $18 $05

    inc bc                                        ; $75b5: $03
    dec b                                         ; $75b6: $05

Jump_0e6_75b7:
    dec bc                                        ; $75b7: $0b
    dec b                                         ; $75b8: $05
    inc de                                        ; $75b9: $13

jr_0e6_75ba:
    dec b                                         ; $75ba: $05
    dec d                                         ; $75bb: $15
    ld [bc], a                                    ; $75bc: $02
    ld bc, $0682                                  ; $75bd: $01 $82 $06
    rlca                                          ; $75c0: $07
    ld [bc], a                                    ; $75c1: $02
    add hl, bc                                    ; $75c2: $09
    ld [bc], a                                    ; $75c3: $02
    nop                                           ; $75c4: $00
    ld [bc], a                                    ; $75c5: $02
    ccf                                           ; $75c6: $3f
    adc d                                         ; $75c7: $8a
    ld b, c                                       ; $75c8: $41
    ld a, a                                       ; $75c9: $7f
    or e                                          ; $75ca: $b3
    rst $38                                       ; $75cb: $ff
    cp l                                          ; $75cc: $bd
    rst $18                                       ; $75cd: $df
    sbc c                                         ; $75ce: $99
    rst $20                                       ; $75cf: $e7
    ld b, e                                       ; $75d0: $43
    ld a, a                                       ; $75d1: $7f
    ld [bc], a                                    ; $75d2: $02
    ccf                                           ; $75d3: $3f
    ld [bc], a                                    ; $75d4: $02
    ld bc, $0006                                  ; $75d5: $01 $06 $00
    ld [bc], a                                    ; $75d8: $02
    daa                                           ; $75d9: $27
    ld [bc], a                                    ; $75da: $02
    dec b                                         ; $75db: $05
    sbc [hl]                                      ; $75dc: $9e
    ei                                            ; $75dd: $fb
    rst $38                                       ; $75de: $ff
    cp a                                          ; $75df: $bf
    sbc $f8                                       ; $75e0: $de $f8
    rst $38                                       ; $75e2: $ff
    ldh a, [rIE]                                  ; $75e3: $f0 $ff
    xor c                                         ; $75e5: $a9
    sbc $58                                       ; $75e6: $de $58
    rst $28                                       ; $75e8: $ef
    adc [hl]                                      ; $75e9: $8e
    rst $38                                       ; $75ea: $ff
    db $db                                        ; $75eb: $db
    cp a                                          ; $75ec: $bf
    call nc, $babf                                ; $75ed: $d4 $bf $ba
    rst $38                                       ; $75f0: $ff
    cp h                                          ; $75f1: $bc
    rst $38                                       ; $75f2: $ff

jr_0e6_75f3:
    xor b                                         ; $75f3: $a8
    rst $28                                       ; $75f4: $ef

jr_0e6_75f5:
    sub e                                         ; $75f5: $93
    db $fc                                        ; $75f6: $fc
    ld h, b                                       ; $75f7: $60
    ld a, a                                       ; $75f8: $7f
    adc a                                         ; $75f9: $8f
    rst $38                                       ; $75fa: $ff
    ld [bc], a                                    ; $75fb: $02
    ld [de], a                                    ; $75fc: $12
    adc a                                         ; $75fd: $8f
    cpl                                           ; $75fe: $2f
    ccf                                           ; $75ff: $3f
    cp a                                          ; $7600: $bf
    or c                                          ; $7601: $b1
    ld a, c                                       ; $7602: $79
    add $c8                                       ; $7603: $c6 $c8
    cp a                                          ; $7605: $bf
    ld d, $ff                                     ; $7606: $16 $ff
    cpl                                           ; $7608: $2f
    rst $38                                       ; $7609: $ff
    ret nc                                        ; $760a: $d0

    ldh a, [$b0]                                  ; $760b: $f0 $b0
    ld [bc], a                                    ; $760d: $02
    ld [hl], b                                    ; $760e: $70
    add [hl]                                      ; $760f: $86
    or b                                          ; $7610: $b0
    jr nz, jr_0e6_75f3                            ; $7611: $20 $e0

    jr nz, jr_0e6_75f5                            ; $7613: $20 $e0

    ld d, b                                       ; $7615: $50
    ld [bc], a                                    ; $7616: $02
    or b                                          ; $7617: $b0
    add l                                         ; $7618: $85
    ret nc                                        ; $7619: $d0

    sbc [hl]                                      ; $761a: $9e
    ld a, [hl]                                    ; $761b: $7e
    ld c, l                                       ; $761c: $4d
    or e                                          ; $761d: $b3
    ld [bc], a                                    ; $761e: $02
    inc b                                         ; $761f: $04
    sub d                                         ; $7620: $92
    xor [hl]                                      ; $7621: $ae
    xor d                                         ; $7622: $aa
    or $5a                                        ; $7623: $f6 $5a
    cp $82                                        ; $7625: $fe $82
    ld e, $e2                                     ; $7627: $1e $e2
    db $eb                                        ; $7629: $eb
    or a                                          ; $762a: $b7
    sbc c                                         ; $762b: $99
    db $dd                                        ; $762c: $dd
    ld c, l                                       ; $762d: $4d
    ld l, e                                       ; $762e: $6b
    ld l, a                                       ; $762f: $6f
    ld [hl], c                                    ; $7630: $71
    cpl                                           ; $7631: $2f
    inc sp                                        ; $7632: $33
    ld [bc], a                                    ; $7633: $02
    jr jr_0e6_7638                                ; $7634: $18 $02

    inc b                                         ; $7636: $04
    ld [bc], a                                    ; $7637: $02

jr_0e6_7638:
    ld [$0b02], sp                                ; $7638: $08 $02 $0b
    ld [bc], a                                    ; $763b: $02
    inc e                                         ; $763c: $1c
    add d                                         ; $763d: $82
    db $f4                                        ; $763e: $f4
    db $fc                                        ; $763f: $fc
    ld b, $00                                     ; $7640: $06 $00
    add [hl]                                      ; $7642: $86
    inc b                                         ; $7643: $04
    rlca                                          ; $7644: $07
    pop de                                        ; $7645: $d1
    rst $28                                       ; $7646: $ef
    ld a, $39                                     ; $7647: $3e $39
    ld [bc], a                                    ; $7649: $02
    rlca                                          ; $764a: $07
    ld [de], a                                    ; $764b: $12
    nop                                           ; $764c: $00
    adc h                                         ; $764d: $8c
    rlca                                          ; $764e: $07
    ld bc, $0700                                  ; $764f: $01 $00 $07
    dec b                                         ; $7652: $05
    ld [bc], a                                    ; $7653: $02
    xor d                                         ; $7654: $aa
    ld d, l                                       ; $7655: $55
    ld [hl], a                                    ; $7656: $77
    rst $38                                       ; $7657: $ff
    rst $08                                       ; $7658: $cf
    jr nc, jr_0e6_765d                            ; $7659: $30 $02

    rst $38                                       ; $765b: $ff
    ld [de], a                                    ; $765c: $12

jr_0e6_765d:
    nop                                           ; $765d: $00
    adc h                                         ; $765e: $8c
    inc e                                         ; $765f: $1c
    db $e3                                        ; $7660: $e3
    ld [hl], e                                    ; $7661: $73
    rst $38                                       ; $7662: $ff
    ld e, h                                       ; $7663: $5c
    cp a                                          ; $7664: $bf
    db $ed                                        ; $7665: $ed
    di                                            ; $7666: $f3
    halt                                          ; $7667: $76
    adc [hl]                                      ; $7668: $8e
    cp b                                          ; $7669: $b8
    ld a, b                                       ; $766a: $78
    ld [bc], a                                    ; $766b: $02
    ret nz                                        ; $766c: $c0

    ld [de], a                                    ; $766d: $12
    nop                                           ; $766e: $00
    ld [bc], a                                    ; $766f: $02
    inc bc                                        ; $7670: $03
    add d                                         ; $7671: $82
    ld bc, $0203                                  ; $7672: $01 $03 $02
    ld [bc], a                                    ; $7675: $02
    ld a, [de]                                    ; $7676: $1a
    nop                                           ; $7677: $00
    rst $38                                       ; $7678: $ff
    rlca                                          ; $7679: $07
    ld bc, $1f00                                  ; $767a: $01 $00 $1f
    ld hl, sp+$07                                 ; $767d: $f8 $07
    ei                                            ; $767f: $fb
    rla                                           ; $7680: $17
    add h                                         ; $7681: $84
    nop                                           ; $7682: $00
    ld de, $0800                                  ; $7683: $11 $00 $08
    inc e                                         ; $7686: $1c
    nop                                           ; $7687: $00
    rst $38                                       ; $7688: $ff
    dec d                                         ; $7689: $15
    ld [$1f00], sp                                ; $768a: $08 $00 $1f
    ld hl, sp+$07                                 ; $768d: $f8 $07
    ld sp, hl                                     ; $768f: $f9
    nop                                           ; $7690: $00
    ld hl, sp+$08                                 ; $7691: $f8 $08
    push af                                       ; $7693: $f5
    db $10                                        ; $7694: $10
    or $18                                        ; $7695: $f6 $18
    dec b                                         ; $7697: $05
    inc bc                                        ; $7698: $03
    dec b                                         ; $7699: $05
    dec bc                                        ; $769a: $0b
    dec b                                         ; $769b: $05
    inc de                                        ; $769c: $13
    dec b                                         ; $769d: $05
    dec d                                         ; $769e: $15
    ld [bc], a                                    ; $769f: $02
    ld bc, $0682                                  ; $76a0: $01 $82 $06
    rlca                                          ; $76a3: $07
    ld [bc], a                                    ; $76a4: $02
    add hl, bc                                    ; $76a5: $09
    ld [bc], a                                    ; $76a6: $02
    nop                                           ; $76a7: $00
    ld [bc], a                                    ; $76a8: $02
    ccf                                           ; $76a9: $3f
    adc d                                         ; $76aa: $8a
    ld b, c                                       ; $76ab: $41
    ld a, a                                       ; $76ac: $7f
    or e                                          ; $76ad: $b3
    rst $38                                       ; $76ae: $ff
    cp l                                          ; $76af: $bd
    rst $18                                       ; $76b0: $df
    sbc c                                         ; $76b1: $99
    rst $20                                       ; $76b2: $e7
    ld b, e                                       ; $76b3: $43
    ld a, a                                       ; $76b4: $7f
    ld [bc], a                                    ; $76b5: $02
    ccf                                           ; $76b6: $3f
    ld [bc], a                                    ; $76b7: $02
    ld bc, $0006                                  ; $76b8: $01 $06 $00
    ld [bc], a                                    ; $76bb: $02
    daa                                           ; $76bc: $27
    ld [bc], a                                    ; $76bd: $02
    ld bc, $ff02                                  ; $76be: $01 $02 $ff
    sbc h                                         ; $76c1: $9c
    cp e                                          ; $76c2: $bb
    rst $18                                       ; $76c3: $df
    cp $fd                                        ; $76c4: $fe $fd
    ldh a, [rIE]                                  ; $76c6: $f0 $ff
    xor b                                         ; $76c8: $a8
    rst $18                                       ; $76c9: $df
    ld e, h                                       ; $76ca: $5c

jr_0e6_76cb:
    rst $28                                       ; $76cb: $ef
    adc e                                         ; $76cc: $8b
    rst $38                                       ; $76cd: $ff
    push de                                       ; $76ce: $d5
    cp a                                          ; $76cf: $bf
    jp c, $b5bf                                   ; $76d0: $da $bf $b5

    rst $38                                       ; $76d3: $ff
    xor d                                         ; $76d4: $aa
    rst $28                                       ; $76d5: $ef
    xor b                                         ; $76d6: $a8
    rst $28                                       ; $76d7: $ef
    sub c                                         ; $76d8: $91
    cp $60                                        ; $76d9: $fe $60
    ld a, a                                       ; $76db: $7f
    adc a                                         ; $76dc: $8f
    rst $38                                       ; $76dd: $ff
    ld [bc], a                                    ; $76de: $02
    ld de, $2f9e                                  ; $76df: $11 $9e $2f
    ccf                                           ; $76e2: $3f
    cp a                                          ; $76e3: $bf
    or c                                          ; $76e4: $b1
    ld [hl], l                                    ; $76e5: $75
    jp z, $9fe4                                   ; $76e6: $ca $e4 $9f

    sub b                                         ; $76e9: $90
    ld a, a                                       ; $76ea: $7f
    cpl                                           ; $76eb: $2f
    rst $38                                       ; $76ec: $ff
    add sp, -$08                                  ; $76ed: $e8 $f8
    ret c                                         ; $76ef: $d8

    jr c, @+$52                                   ; $76f0: $38 $50

    or b                                          ; $76f2: $b0
    ld d, b                                       ; $76f3: $50
    or b                                          ; $76f4: $b0
    jr nc, @-$0e                                  ; $76f5: $30 $f0

    ld [hl], b                                    ; $76f7: $70
    or b                                          ; $76f8: $b0
    jr nc, jr_0e6_76cb                            ; $76f9: $30 $d0

    sbc a                                         ; $76fb: $9f
    rst $38                                       ; $76fc: $ff
    ld d, [hl]                                    ; $76fd: $56
    cp c                                          ; $76fe: $b9
    ld [bc], a                                    ; $76ff: $02
    ld h, [hl]                                    ; $7700: $66
    sub b                                         ; $7701: $90
    cp $da                                        ; $7702: $fe $da
    cp $42                                        ; $7704: $fe $42
    sbc l                                         ; $7706: $9d
    db $e3                                        ; $7707: $e3
    rst $10                                       ; $7708: $d7
    cp c                                          ; $7709: $b9
    ld l, l                                       ; $770a: $6d
    set 4, e                                      ; $770b: $cb $e3
    rst $30                                       ; $770d: $f7
    cpl                                           ; $770e: $2f
    ld sp, $3b37                                  ; $770f: $31 $37 $3b
    ld [bc], a                                    ; $7712: $02
    ld [$0402], sp                                ; $7713: $08 $02 $04
    ld [bc], a                                    ; $7716: $02
    ld [$0b02], sp                                ; $7717: $08 $02 $0b
    ld [bc], a                                    ; $771a: $02
    inc e                                         ; $771b: $1c
    add h                                         ; $771c: $84
    db $f4                                        ; $771d: $f4
    db $fc                                        ; $771e: $fc
    ret c                                         ; $771f: $d8

    jr c, jr_0e6_7728                             ; $7720: $38 $06

    nop                                           ; $7722: $00
    add [hl]                                      ; $7723: $86
    inc b                                         ; $7724: $04
    rlca                                          ; $7725: $07
    pop de                                        ; $7726: $d1
    rst $28                                       ; $7727: $ef

jr_0e6_7728:
    ld a, $39                                     ; $7728: $3e $39
    ld [bc], a                                    ; $772a: $02
    rlca                                          ; $772b: $07
    ld [de], a                                    ; $772c: $12
    nop                                           ; $772d: $00
    add c                                         ; $772e: $81
    ld b, $02                                     ; $772f: $06 $02
    ld bc, $0789                                  ; $7731: $01 $89 $07
    dec b                                         ; $7734: $05
    ld [bc], a                                    ; $7735: $02
    xor d                                         ; $7736: $aa
    ld d, l                                       ; $7737: $55
    ld [hl], a                                    ; $7738: $77
    rst $38                                       ; $7739: $ff
    rst $08                                       ; $773a: $cf
    jr nc, jr_0e6_773f                            ; $773b: $30 $02

    rst $38                                       ; $773d: $ff
    ld [de], a                                    ; $773e: $12

jr_0e6_773f:
    nop                                           ; $773f: $00
    adc h                                         ; $7740: $8c
    ld [$39f0], sp                                ; $7741: $08 $f0 $39
    rst $38                                       ; $7744: $ff
    ld e, h                                       ; $7745: $5c
    cp a                                          ; $7746: $bf
    db $ed                                        ; $7747: $ed
    di                                            ; $7748: $f3
    halt                                          ; $7749: $76
    adc [hl]                                      ; $774a: $8e
    cp b                                          ; $774b: $b8
    ld a, b                                       ; $774c: $78
    ld [bc], a                                    ; $774d: $02
    ret nz                                        ; $774e: $c0

    inc d                                         ; $774f: $14
    nop                                           ; $7750: $00
    add d                                         ; $7751: $82
    ld bc, $0203                                  ; $7752: $01 $03 $02
    ld [bc], a                                    ; $7755: $02
    ld a, [de]                                    ; $7756: $1a
    nop                                           ; $7757: $00
    rst $38                                       ; $7758: $ff
    rlca                                          ; $7759: $07
    ld bc, $1f00                                  ; $775a: $01 $00 $1f
    ld hl, sp+$07                                 ; $775d: $f8 $07
    ei                                            ; $775f: $fb
    dec d                                         ; $7760: $15
    add h                                         ; $7761: $84
    nop                                           ; $7762: $00
    ld [bc], a                                    ; $7763: $02
    nop                                           ; $7764: $00
    ld bc, $001c                                  ; $7765: $01 $1c $00
    rst $38                                       ; $7768: $ff
    dec d                                         ; $7769: $15
    ld [$1f00], sp                                ; $776a: $08 $00 $1f
    ld hl, sp+$07                                 ; $776d: $f8 $07
    ld sp, hl                                     ; $776f: $f9
    nop                                           ; $7770: $00
    rst $30                                       ; $7771: $f7
    ld [$10f4], sp                                ; $7772: $08 $f4 $10
    push af                                       ; $7775: $f5
    jr jr_0e6_777c                                ; $7776: $18 $04

    ld [bc], a                                    ; $7778: $02
    inc b                                         ; $7779: $04
    ld a, [bc]                                    ; $777a: $0a
    inc b                                         ; $777b: $04

jr_0e6_777c:
    ld [de], a                                    ; $777c: $12
    inc b                                         ; $777d: $04
    dec d                                         ; $777e: $15
    ld [bc], a                                    ; $777f: $02
    inc bc                                        ; $7780: $03
    add d                                         ; $7781: $82
    ld c, $0f                                     ; $7782: $0e $0f
    ld [bc], a                                    ; $7784: $02
    ld bc, $0002                                  ; $7785: $01 $02 $00
    ld [bc], a                                    ; $7788: $02
    ld a, $8a                                     ; $7789: $3e $8a
    ld b, c                                       ; $778b: $41
    ld a, a                                       ; $778c: $7f
    or e                                          ; $778d: $b3
    rst $38                                       ; $778e: $ff
    cp l                                          ; $778f: $bd
    rst $18                                       ; $7790: $df
    sbc c                                         ; $7791: $99
    rst $20                                       ; $7792: $e7
    ld b, e                                       ; $7793: $43
    ld a, a                                       ; $7794: $7f
    ld [bc], a                                    ; $7795: $02
    ccf                                           ; $7796: $3f
    ld [bc], a                                    ; $7797: $02
    ld bc, $0006                                  ; $7798: $01 $06 $00
    ld [bc], a                                    ; $779b: $02
    rlca                                          ; $779c: $07
    ld [bc], a                                    ; $779d: $02
    ld bc, $0282                                  ; $779e: $01 $82 $02
    inc bc                                        ; $77a1: $03
    ld [bc], a                                    ; $77a2: $02
    rst $38                                       ; $77a3: $ff
    add e                                         ; $77a4: $83
    ei                                            ; $77a5: $fb
    rst $18                                       ; $77a6: $df
    cp a                                          ; $77a7: $bf
    ld [bc], a                                    ; $77a8: $02

jr_0e6_77a9:
    cp $95                                        ; $77a9: $fe $95
    db $fd                                        ; $77ab: $fd
    sub h                                         ; $77ac: $94
    rst $28                                       ; $77ad: $ef
    inc l                                         ; $77ae: $2c
    rst $30                                       ; $77af: $f7
    db $ed                                        ; $77b0: $ed
    rst $18                                       ; $77b1: $df
    jp z, $ddbf                                   ; $77b2: $ca $bf $dd

    cp a                                          ; $77b5: $bf
    sbc d                                         ; $77b6: $9a
    rst $38                                       ; $77b7: $ff
    cp h                                          ; $77b8: $bc
    rst $38                                       ; $77b9: $ff
    xor b                                         ; $77ba: $a8
    rst $28                                       ; $77bb: $ef
    or b                                          ; $77bc: $b0
    rst $38                                       ; $77bd: $ff
    ld h, b                                       ; $77be: $60
    ld a, a                                       ; $77bf: $7f
    ld [bc], a                                    ; $77c0: $02
    ld [bc], a                                    ; $77c1: $02
    ld [bc], a                                    ; $77c2: $02
    cpl                                           ; $77c3: $2f
    sbc h                                         ; $77c4: $9c
    ld a, [hl]                                    ; $77c5: $7e
    ld [hl], c                                    ; $77c6: $71
    ld a, c                                       ; $77c7: $79
    ld b, a                                       ; $77c8: $47
    add $bf                                       ; $77c9: $c6 $bf
    sub b                                         ; $77cb: $90
    ld a, a                                       ; $77cc: $7f
    xor [hl]                                      ; $77cd: $ae
    ld a, a                                       ; $77ce: $7f
    ccf                                           ; $77cf: $3f
    rst $38                                       ; $77d0: $ff
    ld a, b                                       ; $77d1: $78
    ld hl, sp-$28                                 ; $77d2: $f8 $d8
    jr c, @+$5a                                   ; $77d4: $38 $58

    cp b                                          ; $77d6: $b8
    jr nc, jr_0e6_77a9                            ; $77d7: $30 $d0

    sub b                                         ; $77d9: $90
    ldh a, [rSVBK]                                ; $77da: $f0 $70
    ret nc                                        ; $77dc: $d0

    sbc b                                         ; $77dd: $98
    add sp, $0e                                   ; $77de: $e8 $0e
    cp $02                                        ; $77e0: $fe $02
    inc b                                         ; $77e2: $04
    sub d                                         ; $77e3: $92
    xor $ea                                       ; $77e4: $ee $ea
    or $5a                                        ; $77e6: $f6 $5a
    cp $82                                        ; $77e8: $fe $82
    ld e, $e2                                     ; $77ea: $1e $e2
    db $eb                                        ; $77ec: $eb
    or a                                          ; $77ed: $b7
    sbc c                                         ; $77ee: $99
    db $dd                                        ; $77ef: $dd
    call Call_0e6_6feb                            ; $77f0: $cd $eb $6f
    ld [hl], c                                    ; $77f3: $71
    cpl                                           ; $77f4: $2f
    inc sp                                        ; $77f5: $33
    ld [bc], a                                    ; $77f6: $02
    jr jr_0e6_77fb                                ; $77f7: $18 $02

    ld [bc], a                                    ; $77f9: $02
    ld [bc], a                                    ; $77fa: $02

jr_0e6_77fb:
    inc b                                         ; $77fb: $04
    ld [bc], a                                    ; $77fc: $02
    dec bc                                        ; $77fd: $0b
    ld [bc], a                                    ; $77fe: $02
    ld e, $82                                     ; $77ff: $1e $82
    db $f4                                        ; $7801: $f4
    db $fc                                        ; $7802: $fc
    ld b, $00                                     ; $7803: $06 $00
    adc b                                         ; $7805: $88
    ld [bc], a                                    ; $7806: $02
    inc bc                                        ; $7807: $03
    ld [bc], a                                    ; $7808: $02
    inc bc                                        ; $7809: $03
    db $f4                                        ; $780a: $f4
    db $eb                                        ; $780b: $eb
    ld a, $31                                     ; $780c: $3e $31
    ld [bc], a                                    ; $780e: $02
    rrca                                          ; $780f: $0f
    ld de, $0200                                  ; $7810: $11 $00 $02
    inc bc                                        ; $7813: $03
    ld [bc], a                                    ; $7814: $02
    nop                                           ; $7815: $00
    adc c                                         ; $7816: $89
    inc bc                                        ; $7817: $03
    ld a, d                                       ; $7818: $7a
    db $fd                                        ; $7819: $fd
    ld d, l                                       ; $781a: $55
    xor d                                         ; $781b: $aa
    cp e                                          ; $781c: $bb
    rst $38                                       ; $781d: $ff
    rst $28                                       ; $781e: $ef
    db $10                                        ; $781f: $10
    ld [bc], a                                    ; $7820: $02
    rst $38                                       ; $7821: $ff
    stop                                          ; $7822: $10 $00
    adc [hl]                                      ; $7824: $8e
    call c, $8d64                                 ; $7825: $dc $64 $8d
    ld a, [c]                                     ; $7828: $f2
    ld c, a                                       ; $7829: $4f
    rst $38                                       ; $782a: $ff
    xor [hl]                                      ; $782b: $ae
    ld e, a                                       ; $782c: $5f
    or $f9                                        ; $782d: $f6 $f9
    dec sp                                        ; $782f: $3b
    rst $00                                       ; $7830: $c7
    ld e, h                                       ; $7831: $5c
    cp h                                          ; $7832: $bc
    ld [bc], a                                    ; $7833: $02
    ldh [rNR12], a                                ; $7834: $e0 $12
    nop                                           ; $7836: $00
    add [hl]                                      ; $7837: $86
    inc bc                                        ; $7838: $03
    rlca                                          ; $7839: $07
    dec b                                         ; $783a: $05
    rlca                                          ; $783b: $07
    ld [bc], a                                    ; $783c: $02
    ld b, $02                                     ; $783d: $06 $02
    inc b                                         ; $783f: $04
    ld d, $00                                     ; $7840: $16 $00
    rst $38                                       ; $7842: $ff
    rlca                                          ; $7843: $07
    ld bc, $1f00                                  ; $7844: $01 $00 $1f
    ld hl, sp+$07                                 ; $7847: $f8 $07
    ei                                            ; $7849: $fb
    rla                                           ; $784a: $17
    add h                                         ; $784b: $84
    nop                                           ; $784c: $00
    ld de, $0800                                  ; $784d: $11 $00 $08
    inc e                                         ; $7850: $1c
    nop                                           ; $7851: $00
    rst $38                                       ; $7852: $ff
    dec d                                         ; $7853: $15
    ld [$1f00], sp                                ; $7854: $08 $00 $1f
    ld hl, sp+$07                                 ; $7857: $f8 $07
    ld sp, hl                                     ; $7859: $f9
    nop                                           ; $785a: $00
    or $08                                        ; $785b: $f6 $08
    di                                            ; $785d: $f3
    db $10                                        ; $785e: $10
    db $f4                                        ; $785f: $f4
    jr jr_0e6_7865                                ; $7860: $18 $03

    ld [bc], a                                    ; $7862: $02
    inc bc                                        ; $7863: $03
    ld a, [bc]                                    ; $7864: $0a

jr_0e6_7865:
    inc bc                                        ; $7865: $03
    ld [de], a                                    ; $7866: $12
    inc bc                                        ; $7867: $03
    ld d, $02                                     ; $7868: $16 $02
    inc bc                                        ; $786a: $03
    add d                                         ; $786b: $82
    ld c, $0f                                     ; $786c: $0e $0f
    ld [bc], a                                    ; $786e: $02
    ld bc, $0002                                  ; $786f: $01 $02 $00
    ld [bc], a                                    ; $7872: $02
    inc e                                         ; $7873: $1c
    adc h                                         ; $7874: $8c
    ld h, e                                       ; $7875: $63
    ld a, a                                       ; $7876: $7f
    and c                                         ; $7877: $a1
    rst $38                                       ; $7878: $ff
    cp a                                          ; $7879: $bf
    rst $18                                       ; $787a: $df
    sbc h                                         ; $787b: $9c
    db $e3                                        ; $787c: $e3
    ld b, b                                       ; $787d: $40
    ld a, a                                       ; $787e: $7f
    dec a                                         ; $787f: $3d
    ccf                                           ; $7880: $3f
    ld [bc], a                                    ; $7881: $02
    inc bc                                        ; $7882: $03
    ld b, $00                                     ; $7883: $06 $00
    ld [bc], a                                    ; $7885: $02
    rlca                                          ; $7886: $07
    ld [bc], a                                    ; $7887: $02
    ld [bc], a                                    ; $7888: $02
    sbc [hl]                                      ; $7889: $9e
    dec b                                         ; $788a: $05
    rlca                                          ; $788b: $07
    inc bc                                        ; $788c: $03
    ld [bc], a                                    ; $788d: $02
    rst $38                                       ; $788e: $ff
    cp $da                                        ; $788f: $fe $da
    rst $28                                       ; $7891: $ef
    cp $fd                                        ; $7892: $fe $fd
    db $fc                                        ; $7894: $fc
    rst $38                                       ; $7895: $ff
    xor [hl]                                      ; $7896: $ae
    db $d3                                        ; $7897: $d3
    jp c, Jump_0e6_75b7                           ; $7898: $da $b7 $75

    rst $28                                       ; $789b: $ef
    push de                                       ; $789c: $d5
    rst $28                                       ; $789d: $ef
    jp z, $9dff                                   ; $789e: $ca $ff $9d

    rst $38                                       ; $78a1: $ff
    xor d                                         ; $78a2: $aa
    rst $28                                       ; $78a3: $ef
    cp b                                          ; $78a4: $b8
    rst $38                                       ; $78a5: $ff
    ldh a, [rIE]                                  ; $78a6: $f0 $ff
    ld [bc], a                                    ; $78a8: $02
    inc b                                         ; $78a9: $04
    ld [bc], a                                    ; $78aa: $02
    ld e, [hl]                                    ; $78ab: $5e
    sub e                                         ; $78ac: $93
    rst $38                                       ; $78ad: $ff
    pop hl                                        ; $78ae: $e1
    di                                            ; $78af: $f3
    adc [hl]                                      ; $78b0: $8e
    call $223f                                    ; $78b1: $cd $3f $22
    rst $38                                       ; $78b4: $ff
    ld e, l                                       ; $78b5: $5d
    rst $38                                       ; $78b6: $ff
    ld h, e                                       ; $78b7: $63
    rst $38                                       ; $78b8: $ff
    ld [hl], a                                    ; $78b9: $77
    rst $38                                       ; $78ba: $ff
    ld a, h                                       ; $78bb: $7c
    db $fc                                        ; $78bc: $fc
    ret c                                         ; $78bd: $d8

    jr c, jr_0e6_7938                             ; $78be: $38 $78

    ld [bc], a                                    ; $78c0: $02
    sbc b                                         ; $78c1: $98
    add a                                         ; $78c2: $87
    ld hl, sp-$58                                 ; $78c3: $f8 $a8
    ret c                                         ; $78c5: $d8

    cp b                                          ; $78c6: $b8
    ret z                                         ; $78c7: $c8

    ld e, b                                       ; $78c8: $58
    add sp, $02                                   ; $78c9: $e8 $02
    ld [$dc92], sp                                ; $78cb: $08 $92 $dc
    call nc, $b4ec                                ; $78ce: $d4 $ec $b4
    db $fc                                        ; $78d1: $fc
    inc b                                         ; $78d2: $04
    inc a                                         ; $78d3: $3c
    call nz, $6ed6                                ; $78d4: $c4 $d6 $6e
    ld [hl-], a                                   ; $78d7: $32
    cp d                                          ; $78d8: $ba
    sbc d                                         ; $78d9: $9a
    sub $de                                       ; $78da: $d6 $de
    ld [c], a                                     ; $78dc: $e2
    ld a, d                                       ; $78dd: $7a
    ld h, [hl]                                    ; $78de: $66
    ld [bc], a                                    ; $78df: $02
    inc e                                         ; $78e0: $1c
    inc b                                         ; $78e1: $04
    nop                                           ; $78e2: $00
    ld [bc], a                                    ; $78e3: $02
    ld b, $02                                     ; $78e4: $06 $02
    ld a, [bc]                                    ; $78e6: $0a
    ld [bc], a                                    ; $78e7: $02

Call_0e6_78e8:
    rra                                           ; $78e8: $1f
    ld b, $00                                     ; $78e9: $06 $00
    ld [bc], a                                    ; $78eb: $02
    ld bc, $0288                                  ; $78ec: $01 $88 $02
    inc bc                                        ; $78ef: $03

jr_0e6_78f0:
    ld [bc], a                                    ; $78f0: $02
    inc bc                                        ; $78f1: $03
    db $f4                                        ; $78f2: $f4
    db $eb                                        ; $78f3: $eb
    ld a, $31                                     ; $78f4: $3e $31
    ld [bc], a                                    ; $78f6: $02
    rrca                                          ; $78f7: $0f
    rrca                                          ; $78f8: $0f
    nop                                           ; $78f9: $00
    add d                                         ; $78fa: $82
    inc bc                                        ; $78fb: $03
    nop                                           ; $78fc: $00
    ld [bc], a                                    ; $78fd: $02
    inc bc                                        ; $78fe: $03
    adc e                                         ; $78ff: $8b
    nop                                           ; $7900: $00
    add b                                         ; $7901: $80
    rst $38                                       ; $7902: $ff
    ld a, d                                       ; $7903: $7a
    db $fd                                        ; $7904: $fd
    ld d, l                                       ; $7905: $55
    xor d                                         ; $7906: $aa
    cp e                                          ; $7907: $bb
    rst $38                                       ; $7908: $ff
    rst $28                                       ; $7909: $ef

jr_0e6_790a:
    db $10                                        ; $790a: $10
    ld [bc], a                                    ; $790b: $02
    rst $38                                       ; $790c: $ff
    ld c, $00                                     ; $790d: $0e $00
    sub b                                         ; $790f: $90
    jr jr_0e6_790a                                ; $7910: $18 $f8

    xor a                                         ; $7912: $af
    ld [hl], a                                    ; $7913: $77
    ld c, [hl]                                    ; $7914: $4e
    or c                                          ; $7915: $b1
    ld h, a                                       ; $7916: $67
    rst $38                                       ; $7917: $ff
    xor [hl]                                      ; $7918: $ae
    ld e, a                                       ; $7919: $5f
    or $f9                                        ; $791a: $f6 $f9
    dec sp                                        ; $791c: $3b
    rst $00                                       ; $791d: $c7
    ld e, h                                       ; $791e: $5c
    cp h                                          ; $791f: $bc
    ld [bc], a                                    ; $7920: $02
    ldh [rNR10], a                                ; $7921: $e0 $10
    nop                                           ; $7923: $00
    adc b                                         ; $7924: $88
    dec c                                         ; $7925: $0d
    rrca                                          ; $7926: $0f
    ld b, $0e                                     ; $7927: $06 $0e
    ld a, [bc]                                    ; $7929: $0a
    ld c, $04                                     ; $792a: $0e $04
    inc c                                         ; $792c: $0c
    ld [bc], a                                    ; $792d: $02
    ld [$0014], sp                                ; $792e: $08 $14 $00
    rst $38                                       ; $7931: $ff
    rlca                                          ; $7932: $07
    ld bc, $1f00                                  ; $7933: $01 $00 $1f
    ld hl, sp+$07                                 ; $7936: $f8 $07

jr_0e6_7938:
    ld a, [$8416]                                 ; $7938: $fa $16 $84
    nop                                           ; $793b: $00
    ld de, $0800                                  ; $793c: $11 $00 $08
    inc e                                         ; $793f: $1c
    nop                                           ; $7940: $00
    rst $38                                       ; $7941: $ff
    dec d                                         ; $7942: $15
    ld [$1f00], sp                                ; $7943: $08 $00 $1f
    ld hl, sp+$07                                 ; $7946: $f8 $07
    ld sp, hl                                     ; $7948: $f9
    nop                                           ; $7949: $00
    push af                                       ; $794a: $f5
    ld [$10f2], sp                                ; $794b: $08 $f2 $10
    di                                            ; $794e: $f3
    rla                                           ; $794f: $17
    ld [bc], a                                    ; $7950: $02
    ld [bc], a                                    ; $7951: $02
    ld [bc], a                                    ; $7952: $02
    ld a, [bc]                                    ; $7953: $0a
    ld [bc], a                                    ; $7954: $02
    ld [de], a                                    ; $7955: $12
    ld [bc], a                                    ; $7956: $02
    jr jr_0e6_795b                                ; $7957: $18 $02

    inc bc                                        ; $7959: $03
    add d                                         ; $795a: $82

jr_0e6_795b:
    ld c, $0f                                     ; $795b: $0e $0f
    ld [bc], a                                    ; $795d: $02
    ld bc, $0002                                  ; $795e: $01 $02 $00
    ld [bc], a                                    ; $7961: $02
    jr c, jr_0e6_78f0                             ; $7962: $38 $8c

    ld b, a                                       ; $7964: $47
    ld a, a                                       ; $7965: $7f
    and c                                         ; $7966: $a1
    rst $38                                       ; $7967: $ff
    cp a                                          ; $7968: $bf
    rst $18                                       ; $7969: $df
    sbc [hl]                                      ; $796a: $9e
    rst $20                                       ; $796b: $e7
    ld b, h                                       ; $796c: $44
    ld a, e                                       ; $796d: $7b
    ld sp, $023f                                  ; $796e: $31 $3f $02
    rrca                                          ; $7971: $0f
    ld b, $00                                     ; $7972: $06 $00
    ld [bc], a                                    ; $7974: $02
    rlca                                          ; $7975: $07
    ld [bc], a                                    ; $7976: $02
    ld [bc], a                                    ; $7977: $02
    add d                                         ; $7978: $82
    dec b                                         ; $7979: $05
    rlca                                          ; $797a: $07
    ld [bc], a                                    ; $797b: $02
    inc bc                                        ; $797c: $03
    sbc d                                         ; $797d: $9a
    rlca                                          ; $797e: $07
    ld b, $fb                                     ; $797f: $06 $fb
    cp $de                                        ; $7981: $fe $de
    rst $28                                       ; $7983: $ef
    sbc $fd                                       ; $7984: $de $fd
    db $fc                                        ; $7986: $fc
    rst $38                                       ; $7987: $ff
    and $db                                       ; $7988: $e6 $db
    rst $18                                       ; $798a: $df
    or e                                          ; $798b: $b3
    ld h, e                                       ; $798c: $63
    rst $38                                       ; $798d: $ff
    or $ef                                        ; $798e: $f6 $ef
    call $9aff                                    ; $7990: $cd $ff $9a
    rst $38                                       ; $7993: $ff
    xor l                                         ; $7994: $ad
    rst $28                                       ; $7995: $ef
    cp b                                          ; $7996: $b8
    rst $38                                       ; $7997: $ff
    ld [bc], a                                    ; $7998: $02
    ld [$5e02], sp                                ; $7999: $08 $02 $5e
    sbc h                                         ; $799c: $9c
    rst $38                                       ; $799d: $ff
    db $e3                                        ; $799e: $e3
    rst $38                                       ; $799f: $ff
    add l                                         ; $79a0: $85
    jp $943e                                      ; $79a1: $c3 $3e $94


    ld a, a                                       ; $79a4: $7f
    dec hl                                        ; $79a5: $2b
    cp $5e                                        ; $79a6: $fe $5e
    rst $38                                       ; $79a8: $ff
    ld h, e                                       ; $79a9: $63
    rst $38                                       ; $79aa: $ff
    ld h, c                                       ; $79ab: $61
    rst $38                                       ; $79ac: $ff
    rst $18                                       ; $79ad: $df
    ccf                                           ; $79ae: $3f
    ld [hl], b                                    ; $79af: $70
    sub b                                         ; $79b0: $90
    sbc b                                         ; $79b1: $98
    ld hl, sp-$68                                 ; $79b2: $f8 $98
    ld hl, sp-$48                                 ; $79b4: $f8 $b8
    ret c                                         ; $79b6: $d8

    ld e, b                                       ; $79b7: $58
    add sp, $02                                   ; $79b8: $e8 $02
    ld [$5c92], sp                                ; $79ba: $08 $92 $5c
    ld d, h                                       ; $79bd: $54
    ld l, h                                       ; $79be: $6c
    inc [hl]                                      ; $79bf: $34
    ld a, h                                       ; $79c0: $7c
    inc b                                         ; $79c1: $04
    inc a                                         ; $79c2: $3c
    ld b, h                                       ; $79c3: $44
    ld d, [hl]                                    ; $79c4: $56
    ld l, [hl]                                    ; $79c5: $6e
    ld [hl-], a                                   ; $79c6: $32
    ld a, [hl-]                                   ; $79c7: $3a
    ld a, [de]                                    ; $79c8: $1a
    ld d, [hl]                                    ; $79c9: $56
    ld e, [hl]                                    ; $79ca: $5e
    ld h, d                                       ; $79cb: $62
    ld a, e                                       ; $79cc: $7b
    ld h, a                                       ; $79cd: $67
    ld [bc], a                                    ; $79ce: $02
    inc e                                         ; $79cf: $1c
    ld [bc], a                                    ; $79d0: $02
    ld [$0006], sp                                ; $79d1: $08 $06 $00
    ld [bc], a                                    ; $79d4: $02
    inc bc                                        ; $79d5: $03
    ld b, $00                                     ; $79d6: $06 $00
    ld [bc], a                                    ; $79d8: $02
    inc bc                                        ; $79d9: $03
    ld [bc], a                                    ; $79da: $02
    ld bc, $0288                                  ; $79db: $01 $88 $02
    inc bc                                        ; $79de: $03
    ld [bc], a                                    ; $79df: $02
    inc bc                                        ; $79e0: $03
    db $f4                                        ; $79e1: $f4
    db $eb                                        ; $79e2: $eb
    ld a, $31                                     ; $79e3: $3e $31
    ld [bc], a                                    ; $79e5: $02
    rrca                                          ; $79e6: $0f
    inc c                                         ; $79e7: $0c
    nop                                           ; $79e8: $00
    sub d                                         ; $79e9: $92
    ld bc, $0003                                  ; $79ea: $01 $03 $00
    inc bc                                        ; $79ed: $03
    nop                                           ; $79ee: $00
    inc bc                                        ; $79ef: $03
    pop bc                                        ; $79f0: $c1
    cp $80                                        ; $79f1: $fe $80
    rst $38                                       ; $79f3: $ff
    ld a, d                                       ; $79f4: $7a
    db $fd                                        ; $79f5: $fd
    ld d, l                                       ; $79f6: $55
    xor d                                         ; $79f7: $aa
    cp e                                          ; $79f8: $bb
    rst $38                                       ; $79f9: $ff
    rst $28                                       ; $79fa: $ef
    db $10                                        ; $79fb: $10
    ld [bc], a                                    ; $79fc: $02

jr_0e6_79fd:
    rst $38                                       ; $79fd: $ff
    inc c                                         ; $79fe: $0c
    nop                                           ; $79ff: $00
    sub d                                         ; $7a00: $92
    ld h, b                                       ; $7a01: $60
    and b                                         ; $7a02: $a0
    jr jr_0e6_79fd                                ; $7a03: $18 $f8

    cpl                                           ; $7a05: $2f
    rst $30                                       ; $7a06: $f7
    adc $31                                       ; $7a07: $ce $31
    inc hl                                        ; $7a09: $23
    rst $38                                       ; $7a0a: $ff
    xor [hl]                                      ; $7a0b: $ae
    ld e, a                                       ; $7a0c: $5f
    or $f9                                        ; $7a0d: $f6 $f9
    dec sp                                        ; $7a0f: $3b
    rst $00                                       ; $7a10: $c7
    ld e, h                                       ; $7a11: $5c
    cp h                                          ; $7a12: $bc
    ld [bc], a                                    ; $7a13: $02
    ldh [$0e], a                                  ; $7a14: $e0 $0e
    nop                                           ; $7a16: $00
    ld [bc], a                                    ; $7a17: $02
    ld a, [bc]                                    ; $7a18: $0a
    ld [bc], a                                    ; $7a19: $02
    ccf                                           ; $7a1a: $3f
    add [hl]                                      ; $7a1b: $86
    inc [hl]                                      ; $7a1c: $34
    inc a                                         ; $7a1d: $3c
    jr z, jr_0e6_7a58                             ; $7a1e: $28 $38

    db $10                                        ; $7a20: $10
    jr nc, jr_0e6_7a25                            ; $7a21: $30 $02

    jr nz, jr_0e6_7a37                            ; $7a23: $20 $12

jr_0e6_7a25:
    nop                                           ; $7a25: $00
    rst $38                                       ; $7a26: $ff
    rlca                                          ; $7a27: $07
    ld bc, $1f00                                  ; $7a28: $01 $00 $1f
    ld hl, sp+$07                                 ; $7a2b: $f8 $07
    ld sp, hl                                     ; $7a2d: $f9
    ld d, $84                                     ; $7a2e: $16 $84
    nop                                           ; $7a30: $00
    ld [hl+], a                                   ; $7a31: $22
    nop                                           ; $7a32: $00
    db $10                                        ; $7a33: $10
    inc b                                         ; $7a34: $04
    nop                                           ; $7a35: $00
    add e                                         ; $7a36: $83

jr_0e6_7a37:
    ld bc, $0300                                  ; $7a37: $01 $00 $03
    dec d                                         ; $7a3a: $15
    nop                                           ; $7a3b: $00
    rst $38                                       ; $7a3c: $ff
    dec d                                         ; $7a3d: $15
    ld [$1f00], sp                                ; $7a3e: $08 $00 $1f
    ld hl, sp+$07                                 ; $7a41: $f8 $07
    ld sp, hl                                     ; $7a43: $f9
    nop                                           ; $7a44: $00
    di                                            ; $7a45: $f3
    ld [$10f1], sp                                ; $7a46: $08 $f1 $10
    ld a, [c]                                     ; $7a49: $f2
    rla                                           ; $7a4a: $17
    ld bc, $0102                                  ; $7a4b: $01 $02 $01
    ld a, [bc]                                    ; $7a4e: $0a
    ld bc, $0112                                  ; $7a4f: $01 $12 $01
    jr jr_0e6_7a56                                ; $7a52: $18 $02

    inc bc                                        ; $7a54: $03
    add d                                         ; $7a55: $82

jr_0e6_7a56:
    ld c, $0f                                     ; $7a56: $0e $0f

jr_0e6_7a58:
    ld [bc], a                                    ; $7a58: $02
    ld bc, $0002                                  ; $7a59: $01 $02 $00
    ld [bc], a                                    ; $7a5c: $02
    jr c, @-$72                                   ; $7a5d: $38 $8c

    ld b, a                                       ; $7a5f: $47
    ld a, a                                       ; $7a60: $7f
    and c                                         ; $7a61: $a1
    rst $38                                       ; $7a62: $ff
    cp a                                          ; $7a63: $bf
    rst $18                                       ; $7a64: $df
    sbc [hl]                                      ; $7a65: $9e
    rst $20                                       ; $7a66: $e7
    ld b, h                                       ; $7a67: $44
    ld a, e                                       ; $7a68: $7b
    ld sp, $023f                                  ; $7a69: $31 $3f $02
    rrca                                          ; $7a6c: $0f
    ld b, $00                                     ; $7a6d: $06 $00
    ld [bc], a                                    ; $7a6f: $02
    rlca                                          ; $7a70: $07
    ld [bc], a                                    ; $7a71: $02
    ld bc, $0502                                  ; $7a72: $01 $02 $05
    adc e                                         ; $7a75: $8b
    rlca                                          ; $7a76: $07
    ld b, $0f                                     ; $7a77: $06 $0f
    inc c                                         ; $7a79: $0c
    inc d                                         ; $7a7a: $14
    rra                                           ; $7a7b: $1f
    ld c, $0d                                     ; $7a7c: $0e $0d
    db $fc                                        ; $7a7e: $fc
    rst $38                                       ; $7a7f: $ff
    ld a, [hl-]                                   ; $7a80: $3a
    ld [bc], a                                    ; $7a81: $02
    rst $38                                       ; $7a82: $ff
    adc a                                         ; $7a83: $8f
    db $ed                                        ; $7a84: $ed
    ld e, h                                       ; $7a85: $5c
    ld a, e                                       ; $7a86: $7b
    cp a                                          ; $7a87: $bf
    rst $38                                       ; $7a88: $ff
    di                                            ; $7a89: $f3
    call $fd3b                                    ; $7a8a: $cd $3b $fd
    ld [$d5f7], a                                 ; $7a8d: $ea $f7 $d5
    rst $28                                       ; $7a90: $ef
    sbc d                                         ; $7a91: $9a
    rst $38                                       ; $7a92: $ff
    ld [bc], a                                    ; $7a93: $02
    add hl, bc                                    ; $7a94: $09
    sbc [hl]                                      ; $7a95: $9e
    ccf                                           ; $7a96: $3f
    ld [hl], $ff                                  ; $7a97: $36 $ff
    add sp, -$10                                  ; $7a99: $e8 $f0
    rra                                           ; $7a9b: $1f
    sbc e                                         ; $7a9c: $9b
    ld [hl], a                                    ; $7a9d: $77
    inc [hl]                                      ; $7a9e: $34
    db $fc                                        ; $7a9f: $fc
    ld c, d                                       ; $7aa0: $4a
    rst $38                                       ; $7aa1: $ff
    cp [hl]                                       ; $7aa2: $be
    ld a, a                                       ; $7aa3: $7f
    ld a, l                                       ; $7aa4: $7d
    db $fd                                        ; $7aa5: $fd
    ld h, e                                       ; $7aa6: $63
    rst $38                                       ; $7aa7: $ff

jr_0e6_7aa8:
    ret nc                                        ; $7aa8: $d0

    ccf                                           ; $7aa9: $3f
    ld e, a                                       ; $7aaa: $5f
    cp a                                          ; $7aab: $bf
    ld d, b                                       ; $7aac: $50
    or b                                          ; $7aad: $b0
    jr jr_0e6_7aa8                                ; $7aae: $18 $f8

    sbc b                                         ; $7ab0: $98
    ld hl, sp-$48                                 ; $7ab1: $f8 $b8
    ret c                                         ; $7ab3: $d8

    ld [bc], a                                    ; $7ab4: $02
    ld b, b                                       ; $7ab5: $40
    adc [hl]                                      ; $7ab6: $8e
    jr nz, jr_0e6_7b19                            ; $7ab7: $20 $60

    ld [hl], b                                    ; $7ab9: $70
    db $10                                        ; $7aba: $10
    jr jr_0e6_7b35                                ; $7abb: $18 $78

    ld e, b                                       ; $7abd: $58
    ld l, b                                       ; $7abe: $68
    inc [hl]                                      ; $7abf: $34
    ld c, h                                       ; $7ac0: $4c
    ld a, h                                       ; $7ac1: $7c
    ld b, h                                       ; $7ac2: $44
    ld c, d                                       ; $7ac3: $4a
    ld a, d                                       ; $7ac4: $7a
    ld [bc], a                                    ; $7ac5: $02
    ld h, d                                       ; $7ac6: $62
    add d                                         ; $7ac7: $82
    ld [de], a                                    ; $7ac8: $12
    ld [hl], d                                    ; $7ac9: $72
    ld [bc], a                                    ; $7aca: $02
    ld [hl], e                                    ; $7acb: $73
    ld [bc], a                                    ; $7acc: $02
    add hl, bc                                    ; $7acd: $09
    ld [bc], a                                    ; $7ace: $02
    ld bc, $000a                                  ; $7acf: $01 $0a $00
    add e                                         ; $7ad2: $83
    ld [bc], a                                    ; $7ad3: $02
    inc bc                                        ; $7ad4: $03
    ld [bc], a                                    ; $7ad5: $02
    inc bc                                        ; $7ad6: $03
    inc bc                                        ; $7ad7: $03
    ld [bc], a                                    ; $7ad8: $02
    ld bc, $0288                                  ; $7ad9: $01 $88 $02
    inc bc                                        ; $7adc: $03
    ld [bc], a                                    ; $7add: $02
    inc bc                                        ; $7ade: $03
    db $f4                                        ; $7adf: $f4
    db $eb                                        ; $7ae0: $eb
    ld a, $31                                     ; $7ae1: $3e $31
    ld [bc], a                                    ; $7ae3: $02
    rrca                                          ; $7ae4: $0f
    dec bc                                        ; $7ae5: $0b
    nop                                           ; $7ae6: $00
    sub e                                         ; $7ae7: $93
    inc bc                                        ; $7ae8: $03
    ld bc, $b003                                  ; $7ae9: $01 $03 $b0
    cp a                                          ; $7aec: $bf
    ret nz                                        ; $7aed: $c0

    rst $38                                       ; $7aee: $ff
    pop bc                                        ; $7aef: $c1
    cp $80                                        ; $7af0: $fe $80
    rst $38                                       ; $7af2: $ff
    ld a, d                                       ; $7af3: $7a
    db $fd                                        ; $7af4: $fd
    ld d, l                                       ; $7af5: $55
    xor d                                         ; $7af6: $aa
    cp e                                          ; $7af7: $bb
    rst $38                                       ; $7af8: $ff
    rst $28                                       ; $7af9: $ef
    db $10                                        ; $7afa: $10
    ld [bc], a                                    ; $7afb: $02
    rst $38                                       ; $7afc: $ff
    ld a, [bc]                                    ; $7afd: $0a
    nop                                           ; $7afe: $00

jr_0e6_7aff:
    add c                                         ; $7aff: $81
    and b                                         ; $7b00: $a0
    ld [bc], a                                    ; $7b01: $02
    ld h, b                                       ; $7b02: $60
    sub c                                         ; $7b03: $91
    and b                                         ; $7b04: $a0
    jr jr_0e6_7aff                                ; $7b05: $18 $f8

    daa                                           ; $7b07: $27
    rst $38                                       ; $7b08: $ff
    adc $31                                       ; $7b09: $ce $31
    inc hl                                        ; $7b0b: $23
    rst $38                                       ; $7b0c: $ff
    xor [hl]                                      ; $7b0d: $ae
    ld e, a                                       ; $7b0e: $5f
    or $f9                                        ; $7b0f: $f6 $f9
    dec sp                                        ; $7b11: $3b
    rst $00                                       ; $7b12: $c7
    ld e, h                                       ; $7b13: $5c
    cp h                                          ; $7b14: $bc
    ld [bc], a                                    ; $7b15: $02
    ldh [$0c], a                                  ; $7b16: $e0 $0c
    nop                                           ; $7b18: $00

jr_0e6_7b19:
    ld [bc], a                                    ; $7b19: $02
    ld b, $02                                     ; $7b1a: $06 $02
    ld a, [bc]                                    ; $7b1c: $0a
    ld [bc], a                                    ; $7b1d: $02
    ccf                                           ; $7b1e: $3f
    add [hl]                                      ; $7b1f: $86
    inc [hl]                                      ; $7b20: $34
    inc a                                         ; $7b21: $3c
    jr z, jr_0e6_7b5c                             ; $7b22: $28 $38

    db $10                                        ; $7b24: $10
    jr nc, jr_0e6_7b29                            ; $7b25: $30 $02

    jr nz, jr_0e6_7b39                            ; $7b27: $20 $10

jr_0e6_7b29:
    nop                                           ; $7b29: $00
    rst $38                                       ; $7b2a: $ff
    rlca                                          ; $7b2b: $07
    ld bc, $1f00                                  ; $7b2c: $01 $00 $1f
    ld hl, sp+$07                                 ; $7b2f: $f8 $07
    or $16                                        ; $7b31: $f6 $16
    add d                                         ; $7b33: $82
    nop                                           ; $7b34: $00

jr_0e6_7b35:
    ret nz                                        ; $7b35: $c0

    inc b                                         ; $7b36: $04
    nop                                           ; $7b37: $00
    adc e                                         ; $7b38: $8b

jr_0e6_7b39:
    ld [bc], a                                    ; $7b39: $02
    nop                                           ; $7b3a: $00
    ld c, $00                                     ; $7b3b: $0e $00
    ld b, $00                                     ; $7b3d: $06 $00
    ld b, $00                                     ; $7b3f: $06 $00
    inc bc                                        ; $7b41: $03
    nop                                           ; $7b42: $00
    inc bc                                        ; $7b43: $03
    rrca                                          ; $7b44: $0f
    nop                                           ; $7b45: $00
    rst $38                                       ; $7b46: $ff
    inc de                                        ; $7b47: $13
    rlca                                          ; $7b48: $07
    nop                                           ; $7b49: $00
    rra                                           ; $7b4a: $1f
    ld hl, sp+$07                                 ; $7b4b: $f8 $07
    db $f4                                        ; $7b4d: $f4
    dec b                                         ; $7b4e: $05

jr_0e6_7b4f:
    db $ec                                        ; $7b4f: $ec
    dec c                                         ; $7b50: $0d
    db $ed                                        ; $7b51: $ed
    dec d                                         ; $7b52: $15
    db $fc                                        ; $7b53: $fc
    nop                                           ; $7b54: $00
    db $fc                                        ; $7b55: $fc
    ld [$10fc], sp                                ; $7b56: $08 $fc $10
    db $fc                                        ; $7b59: $fc
    jr @+$04                                      ; $7b5a: $18 $02

jr_0e6_7b5c:
    ld bc, $0004                                  ; $7b5c: $01 $04 $00
    ld [bc], a                                    ; $7b5f: $02
    ld bc, $0282                                  ; $7b60: $01 $82 $02
    inc bc                                        ; $7b63: $03
    ld [bc], a                                    ; $7b64: $02
    ccf                                           ; $7b65: $3f
    add h                                         ; $7b66: $84
    ld a, [c]                                     ; $7b67: $f2
    rst $38                                       ; $7b68: $ff
    ld a, [bc]                                    ; $7b69: $0a
    rrca                                          ; $7b6a: $0f
    ld [bc], a                                    ; $7b6b: $02
    rlca                                          ; $7b6c: $07
    adc [hl]                                      ; $7b6d: $8e
    rrca                                          ; $7b6e: $0f
    dec bc                                        ; $7b6f: $0b
    sub a                                         ; $7b70: $97
    sbc a                                         ; $7b71: $9f
    ld a, a                                       ; $7b72: $7f
    db $fc                                        ; $7b73: $fc
    dec de                                        ; $7b74: $1b
    rst $38                                       ; $7b75: $ff
    rst $20                                       ; $7b76: $e7
    cp $ca                                        ; $7b77: $fe $ca
    dec a                                         ; $7b79: $3d
    dec de                                        ; $7b7a: $1b
    rst $38                                       ; $7b7b: $ff
    ld [bc], a                                    ; $7b7c: $02
    ld bc, $179e                                  ; $7b7d: $01 $9e $17
    ld d, $3f                                     ; $7b80: $16 $3f
    dec hl                                        ; $7b82: $2b
    inc a                                         ; $7b83: $3c
    inc [hl]                                      ; $7b84: $34
    halt                                          ; $7b85: $76
    ld c, a                                       ; $7b86: $4f
    ld [hl], e                                    ; $7b87: $73
    ld a, a                                       ; $7b88: $7f
    or $af                                        ; $7b89: $f6 $af
    db $dd                                        ; $7b8b: $dd
    or a                                          ; $7b8c: $b7
    jp c, $a2be                                   ; $7b8d: $da $be $a2

    cp $a4                                        ; $7b90: $fe $a4
    db $fc                                        ; $7b92: $fc
    call nc, $a4ac                                ; $7b93: $d4 $ac $a4
    db $fc                                        ; $7b96: $fc
    rst $00                                       ; $7b97: $c7
    cp a                                          ; $7b98: $bf
    sub h                                         ; $7b99: $94
    rst $38                                       ; $7b9a: $ff
    call z, $02bf                                 ; $7b9b: $cc $bf $02
    ret nz                                        ; $7b9e: $c0

    add e                                         ; $7b9f: $83
    ld h, b                                       ; $7ba0: $60
    and b                                         ; $7ba1: $a0
    ld [hl], b                                    ; $7ba2: $70
    ld [bc], a                                    ; $7ba3: $02
    sub b                                         ; $7ba4: $90
    add c                                         ; $7ba5: $81
    ldh a, [rSC]                                  ; $7ba6: $f0 $02
    ld d, b                                       ; $7ba8: $50
    ld [bc], a                                    ; $7ba9: $02
    ld l, b                                       ; $7baa: $68
    ld [bc], a                                    ; $7bab: $02
    xor b                                         ; $7bac: $a8
    ld [bc], a                                    ; $7bad: $02
    jr z, jr_0e6_7bb2                             ; $7bae: $28 $02

    jr @+$04                                      ; $7bb0: $18 $02

jr_0e6_7bb2:
    ld [$1402], sp                                ; $7bb2: $08 $02 $14
    ld [bc], a                                    ; $7bb5: $02
    ld [$0202], sp                                ; $7bb6: $08 $02 $02
    ld [bc], a                                    ; $7bb9: $02
    push af                                       ; $7bba: $f5
    add h                                         ; $7bbb: $84
    dec c                                         ; $7bbc: $0d
    db $fd                                        ; $7bbd: $fd
    ret nz                                        ; $7bbe: $c0

    db $fc                                        ; $7bbf: $fc
    inc b                                         ; $7bc0: $04
    nop                                           ; $7bc1: $00
    ld [bc], a                                    ; $7bc2: $02
    jr jr_0e6_7b4f                                ; $7bc3: $18 $8a

    ld h, b                                       ; $7bc5: $60
    ld a, b                                       ; $7bc6: $78
    and b                                         ; $7bc7: $a0
    ld hl, sp-$68                                 ; $7bc8: $f8 $98
    ld hl, sp-$48                                 ; $7bca: $f8 $b8
    ret nz                                        ; $7bcc: $c0

    add b                                         ; $7bcd: $80
    ld hl, sp+$02                                 ; $7bce: $f8 $02
    ld a, a                                       ; $7bd0: $7f
    ld [bc], a                                    ; $7bd1: $02
    ld bc, $0004                                  ; $7bd2: $01 $04 $00
    ld [bc], a                                    ; $7bd5: $02
    ld bc, $0684                                  ; $7bd6: $01 $84 $06
    rlca                                          ; $7bd9: $07
    dec e                                         ; $7bda: $1d
    ld a, [de]                                    ; $7bdb: $1a
    ld [bc], a                                    ; $7bdc: $02
    rlca                                          ; $7bdd: $07

jr_0e6_7bde:
    add e                                         ; $7bde: $83
    inc b                                         ; $7bdf: $04
    rlca                                          ; $7be0: $07
    nop                                           ; $7be1: $00
    inc bc                                        ; $7be2: $03
    rlca                                          ; $7be3: $07
    sbc b                                         ; $7be4: $98
    inc bc                                        ; $7be5: $03
    inc b                                         ; $7be6: $04
    ld bc, $0506                                  ; $7be7: $01 $06 $05
    inc bc                                        ; $7bea: $03
    ld b, $07                                     ; $7beb: $06 $07
    inc b                                         ; $7bed: $04
    rlca                                          ; $7bee: $07
    xor b                                         ; $7bef: $a8
    rst $28                                       ; $7bf0: $ef
    ld hl, sp-$01                                 ; $7bf1: $f8 $ff
    ld [hl], b                                    ; $7bf3: $70
    ld a, a                                       ; $7bf4: $7f
    ld c, a                                       ; $7bf5: $4f
    ld a, a                                       ; $7bf6: $7f
    jp z, $97f5                                   ; $7bf7: $ca $f5 $97

    ld a, a                                       ; $7bfa: $7f
    ld e, l                                       ; $7bfb: $5d
    and d                                         ; $7bfc: $a2
    ld [bc], a                                    ; $7bfd: $02
    rst $38                                       ; $7bfe: $ff
    sbc [hl]                                      ; $7bff: $9e
    ld d, b                                       ; $7c00: $50
    cp b                                          ; $7c01: $b8
    reti                                          ; $7c02: $d9


    add hl, sp                                    ; $7c03: $39
    jr z, jr_0e6_7bde                             ; $7c04: $28 $d8

    ret z                                         ; $7c06: $c8

    ld hl, sp-$54                                 ; $7c07: $f8 $ac
    db $f4                                        ; $7c09: $f4
    inc c                                         ; $7c0a: $0c
    db $f4                                        ; $7c0b: $f4
    ld [hl-], a                                   ; $7c0c: $32
    cp $03                                        ; $7c0d: $fe $03
    rst $38                                       ; $7c0f: $ff
    ld a, [de]                                    ; $7c10: $1a
    push hl                                       ; $7c11: $e5
    call z, $0237                                 ; $7c12: $cc $37 $02
    rst $38                                       ; $7c15: $ff
    ld d, l                                       ; $7c16: $55
    xor e                                         ; $7c17: $ab
    cp [hl]                                       ; $7c18: $be
    ld e, a                                       ; $7c19: $5f
    ld h, a                                       ; $7c1a: $67
    ld hl, sp-$15                                 ; $7c1b: $f8 $eb
    rla                                           ; $7c1d: $17
    ld [bc], a                                    ; $7c1e: $02
    db $fc                                        ; $7c1f: $fc
    ld [bc], a                                    ; $7c20: $02
    ld b, $02                                     ; $7c21: $06 $02
    push af                                       ; $7c23: $f5
    ld [bc], a                                    ; $7c24: $02
    ld [bc], a                                    ; $7c25: $02
    ld b, $00                                     ; $7c26: $06 $00
    ld [bc], a                                    ; $7c28: $02
    inc bc                                        ; $7c29: $03
    ld [bc], a                                    ; $7c2a: $02
    add l                                         ; $7c2b: $85
    adc h                                         ; $7c2c: $8c
    ld a, a                                       ; $7c2d: $7f
    rst $38                                       ; $7c2e: $ff
    push hl                                       ; $7c2f: $e5
    dec e                                         ; $7c30: $1d
    inc a                                         ; $7c31: $3c
    db $fc                                        ; $7c32: $fc
    ret z                                         ; $7c33: $c8

    ld hl, sp-$30                                 ; $7c34: $f8 $d0
    jr nc, jr_0e6_7c98                            ; $7c36: $30 $60

    ldh [rSC], a                                  ; $7c38: $e0 $02
    add b                                         ; $7c3a: $80
    ld [bc], a                                    ; $7c3b: $02
    nop                                           ; $7c3c: $00
    rst $38                                       ; $7c3d: $ff
    add hl, bc                                    ; $7c3e: $09
    ld [bc], a                                    ; $7c3f: $02
    nop                                           ; $7c40: $00
    rra                                           ; $7c41: $1f
    ld hl, sp+$07                                 ; $7c42: $f8 $07
    rst $28                                       ; $7c44: $ef
    inc de                                        ; $7c45: $13
    rst $28                                       ; $7c46: $ef
    ld d, $82                                     ; $7c47: $16 $82
    nop                                           ; $7c49: $00
    ret nz                                        ; $7c4a: $c0

    ld [bc], a                                    ; $7c4b: $02
    nop                                           ; $7c4c: $00
    add a                                         ; $7c4d: $87
    jr z, jr_0e6_7c50                             ; $7c4e: $28 $00

jr_0e6_7c50:
    inc h                                         ; $7c50: $24
    nop                                           ; $7c51: $00
    inc b                                         ; $7c52: $04
    nop                                           ; $7c53: $00
    inc b                                         ; $7c54: $04
    dec b                                         ; $7c55: $05
    nop                                           ; $7c56: $00
    add c                                         ; $7c57: $81
    ld [bc], a                                    ; $7c58: $02
    dec h                                         ; $7c59: $25
    nop                                           ; $7c5a: $00
    adc d                                         ; $7c5b: $8a
    inc b                                         ; $7c5c: $04
    nop                                           ; $7c5d: $00
    inc b                                         ; $7c5e: $04
    nop                                           ; $7c5f: $00
    ld b, $00                                     ; $7c60: $06 $00
    ld [bc], a                                    ; $7c62: $02
    nop                                           ; $7c63: $00
    inc bc                                        ; $7c64: $03
    nop                                           ; $7c65: $00
    rst $38                                       ; $7c66: $ff
    inc de                                        ; $7c67: $13
    rlca                                          ; $7c68: $07
    nop                                           ; $7c69: $00
    rra                                           ; $7c6a: $1f
    ld hl, sp+$07                                 ; $7c6b: $f8 $07
    push af                                       ; $7c6d: $f5
    dec b                                         ; $7c6e: $05
    xor $0d                                       ; $7c6f: $ee $0d
    db $ed                                        ; $7c71: $ed
    dec d                                         ; $7c72: $15

jr_0e6_7c73:
    ei                                            ; $7c73: $fb
    jr jr_0e6_7c73                                ; $7c74: $18 $fd

    nop                                           ; $7c76: $00
    db $fd                                        ; $7c77: $fd
    ld [$10fd], sp                                ; $7c78: $08 $fd $10
    ld [bc], a                                    ; $7c7b: $02
    ld bc, $0002                                  ; $7c7c: $01 $02 $00
    ld [bc], a                                    ; $7c7f: $02
    ld bc, $0282                                  ; $7c80: $01 $82 $02
    inc bc                                        ; $7c83: $03
    ld [bc], a                                    ; $7c84: $02
    ccf                                           ; $7c85: $3f
    add d                                         ; $7c86: $82
    db $e3                                        ; $7c87: $e3
    rst $38                                       ; $7c88: $ff
    ld [bc], a                                    ; $7c89: $02
    rra                                           ; $7c8a: $1f
    sub d                                         ; $7c8b: $92
    rrca                                          ; $7c8c: $0f
    dec bc                                        ; $7c8d: $0b
    rla                                           ; $7c8e: $17
    rra                                           ; $7c8f: $1f
    cp $f9                                        ; $7c90: $fe $f9
    daa                                           ; $7c92: $27

jr_0e6_7c93:
    rst $38                                       ; $7c93: $ff
    db $fd                                        ; $7c94: $fd
    cp $da                                        ; $7c95: $fe $da
    db $fd                                        ; $7c97: $fd

jr_0e6_7c98:
    sub e                                         ; $7c98: $93
    ld a, a                                       ; $7c99: $7f
    dec [hl]                                      ; $7c9a: $35
    db $fd                                        ; $7c9b: $fd
    rst $30                                       ; $7c9c: $f7
    rst $38                                       ; $7c9d: $ff
    ld [bc], a                                    ; $7c9e: $02
    dec bc                                        ; $7c9f: $0b
    sbc [hl]                                      ; $7ca0: $9e
    rra                                           ; $7ca1: $1f
    dec d                                         ; $7ca2: $15
    ld e, $1a                                     ; $7ca3: $1e $1a
    dec sp                                        ; $7ca5: $3b
    daa                                           ; $7ca6: $27
    add hl, sp                                    ; $7ca7: $39
    ccf                                           ; $7ca8: $3f
    ld a, e                                       ; $7ca9: $7b
    ld d, a                                       ; $7caa: $57
    xor $db                                       ; $7cab: $ee $db
    ld d, l                                       ; $7cad: $55
    rst $38                                       ; $7cae: $ff
    pop de                                        ; $7caf: $d1
    cp a                                          ; $7cb0: $bf
    ld [c], a                                     ; $7cb1: $e2
    cp [hl]                                       ; $7cb2: $be
    add d                                         ; $7cb3: $82
    cp $f7                                        ; $7cb4: $fe $f7
    xor a                                         ; $7cb6: $af
    sub h                                         ; $7cb7: $94
    rst $28                                       ; $7cb8: $ef
    adc h                                         ; $7cb9: $8c
    rst $38                                       ; $7cba: $ff
    inc bc                                        ; $7cbb: $03
    rst $38                                       ; $7cbc: $ff
    call Call_000_02f3                            ; $7cbd: $cd $f3 $02
    add b                                         ; $7cc0: $80
    add l                                         ; $7cc1: $85
    ldh [$60], a                                  ; $7cc2: $e0 $60
    or b                                          ; $7cc4: $b0
    ret nc                                        ; $7cc5: $d0

    jr c, jr_0e6_7cca                             ; $7cc6: $38 $02

    ld c, b                                       ; $7cc8: $48
    add c                                         ; $7cc9: $81

jr_0e6_7cca:
    ld hl, sp+$02                                 ; $7cca: $f8 $02
    db $f4                                        ; $7ccc: $f4
    ld [bc], a                                    ; $7ccd: $02
    ld d, d                                       ; $7cce: $52
    add d                                         ; $7ccf: $82
    ld a, [hl-]                                   ; $7cd0: $3a
    ld a, [$cc02]                                 ; $7cd1: $fa $02 $cc
    ld [bc], a                                    ; $7cd4: $02
    jr nc, jr_0e6_7cd9                            ; $7cd5: $30 $02

    ld b, b                                       ; $7cd7: $40
    ld [bc], a                                    ; $7cd8: $02

jr_0e6_7cd9:
    nop                                           ; $7cd9: $00
    ld [bc], a                                    ; $7cda: $02
    ret nz                                        ; $7cdb: $c0

    add h                                         ; $7cdc: $84
    ld a, $fe                                     ; $7cdd: $3e $fe
    rlca                                          ; $7cdf: $07
    rst $38                                       ; $7ce0: $ff
    ld [bc], a                                    ; $7ce1: $02
    ei                                            ; $7ce2: $fb
    ld [bc], a                                    ; $7ce3: $02
    inc b                                         ; $7ce4: $04
    ld [bc], a                                    ; $7ce5: $02
    ld [bc], a                                    ; $7ce6: $02
    ld [bc], a                                    ; $7ce7: $02
    jr z, jr_0e6_7cec                             ; $7ce8: $28 $02

    db $10                                        ; $7cea: $10
    ld [bc], a                                    ; $7ceb: $02

jr_0e6_7cec:
    nop                                           ; $7cec: $00
    ld [bc], a                                    ; $7ced: $02
    ld [bc], a                                    ; $7cee: $02
    ld [bc], a                                    ; $7cef: $02
    inc b                                         ; $7cf0: $04
    ld [bc], a                                    ; $7cf1: $02
    ld a, [bc]                                    ; $7cf2: $0a
    ld [bc], a                                    ; $7cf3: $02
    dec e                                         ; $7cf4: $1d
    adc d                                         ; $7cf5: $8a
    db $f4                                        ; $7cf6: $f4
    db $fc                                        ; $7cf7: $fc
    ret c                                         ; $7cf8: $d8

    jr c, jr_0e6_7d73                             ; $7cf9: $38 $78

    ld hl, sp-$70                                 ; $7cfb: $f8 $90
    ldh a, [$a0]                                  ; $7cfd: $f0 $a0
    ld h, b                                       ; $7cff: $60
    ld [bc], a                                    ; $7d00: $02
    ret nz                                        ; $7d01: $c0

    ld [bc], a                                    ; $7d02: $02
    nop                                           ; $7d03: $00
    ld [bc], a                                    ; $7d04: $02
    jr c, jr_0e6_7c93                             ; $7d05: $38 $8c

    ld b, b                                       ; $7d07: $40
    ld a, b                                       ; $7d08: $78
    and b                                         ; $7d09: $a0
    ld hl, sp-$48                                 ; $7d0a: $f8 $b8
    ret c                                         ; $7d0c: $d8

    sbc b                                         ; $7d0d: $98
    ldh [rLCDC], a                                ; $7d0e: $e0 $40
    ld a, b                                       ; $7d10: $78
    jr nc, jr_0e6_7d4b                            ; $7d11: $30 $38

    ld [bc], a                                    ; $7d13: $02
    ld [$0006], sp                                ; $7d14: $08 $06 $00
    ld [bc], a                                    ; $7d17: $02
    inc bc                                        ; $7d18: $03
    add h                                         ; $7d19: $84
    ld e, $1d                                     ; $7d1a: $1e $1d

jr_0e6_7d1c:
    ld b, $07                                     ; $7d1c: $06 $07
    ld [bc], a                                    ; $7d1e: $02
    ld bc, $0004                                  ; $7d1f: $01 $04 $00
    sbc d                                         ; $7d22: $9a
    inc bc                                        ; $7d23: $03
    dec b                                         ; $7d24: $05
    inc bc                                        ; $7d25: $03
    dec b                                         ; $7d26: $05
    ld [bc], a                                    ; $7d27: $02
    rlca                                          ; $7d28: $07
    dec b                                         ; $7d29: $05
    rlca                                          ; $7d2a: $07
    ld [bc], a                                    ; $7d2b: $02
    rlca                                          ; $7d2c: $07
    nop                                           ; $7d2d: $00
    rlca                                          ; $7d2e: $07
    nop                                           ; $7d2f: $00
    rlca                                          ; $7d30: $07
    ld sp, hl                                     ; $7d31: $f9
    cp $70                                        ; $7d32: $fe $70
    ld a, a                                       ; $7d34: $7f
    ld c, a                                       ; $7d35: $4f
    ld a, a                                       ; $7d36: $7f
    push bc                                       ; $7d37: $c5
    ld a, [$7fb7]                                 ; $7d38: $fa $b7 $7f
    push de                                       ; $7d3b: $d5
    ld a, [hl+]                                   ; $7d3c: $2a
    ld [bc], a                                    ; $7d3d: $02
    rst $38                                       ; $7d3e: $ff
    inc b                                         ; $7d3f: $04
    nop                                           ; $7d40: $00
    sbc d                                         ; $7d41: $9a
    jr z, jr_0e6_7d1c                             ; $7d42: $28 $d8

    ld c, b                                       ; $7d44: $48
    ld hl, sp-$58                                 ; $7d45: $f8 $a8
    ld hl, sp+$0c                                 ; $7d47: $f8 $0c
    db $f4                                        ; $7d49: $f4
    xor h                                         ; $7d4a: $ac

jr_0e6_7d4b:
    db $f4                                        ; $7d4b: $f4
    rlca                                          ; $7d4c: $07
    rst $38                                       ; $7d4d: $ff
    ld [hl+], a                                   ; $7d4e: $22
    db $dd                                        ; $7d4f: $dd
    reti                                          ; $7d50: $d9


    ld l, $0e                                     ; $7d51: $2e $0e
    rst $30                                       ; $7d53: $f7
    xor e                                         ; $7d54: $ab
    ld d, a                                       ; $7d55: $57
    ld a, l                                       ; $7d56: $7d
    cp [hl]                                       ; $7d57: $be
    xor $f1                                       ; $7d58: $ee $f1
    rst $30                                       ; $7d5a: $f7
    rrca                                          ; $7d5b: $0f
    ld [bc], a                                    ; $7d5c: $02
    ld hl, sp+$02                                 ; $7d5d: $f8 $02
    nop                                           ; $7d5f: $00
    rst $38                                       ; $7d60: $ff
    add hl, bc                                    ; $7d61: $09
    ld [bc], a                                    ; $7d62: $02
    nop                                           ; $7d63: $00
    rra                                           ; $7d64: $1f
    ld hl, sp+$07                                 ; $7d65: $f8 $07
    ldh a, [rNR14]                                ; $7d67: $f0 $14
    ldh a, [rNR21]                                ; $7d69: $f0 $16
    add d                                         ; $7d6b: $82
    nop                                           ; $7d6c: $00
    ret nz                                        ; $7d6d: $c0

    ld [bc], a                                    ; $7d6e: $02
    nop                                           ; $7d6f: $00
    adc c                                         ; $7d70: $89
    inc b                                         ; $7d71: $04
    nop                                           ; $7d72: $00

jr_0e6_7d73:
    ld d, [hl]                                    ; $7d73: $56
    nop                                           ; $7d74: $00
    ld [bc], a                                    ; $7d75: $02
    nop                                           ; $7d76: $00
    ld [$2000], sp                                ; $7d77: $08 $00 $20
    inc bc                                        ; $7d7a: $03
    nop                                           ; $7d7b: $00
    add c                                         ; $7d7c: $81
    inc b                                         ; $7d7d: $04
    add hl, bc                                    ; $7d7e: $09
    nop                                           ; $7d7f: $00
    add c                                         ; $7d80: $81
    ld bc, $0021                                  ; $7d81: $01 $21 $00
    add c                                         ; $7d84: $81
    inc bc                                        ; $7d85: $03
    inc bc                                        ; $7d86: $03
    nop                                           ; $7d87: $00

jr_0e6_7d88:
    rst $38                                       ; $7d88: $ff
    dec d                                         ; $7d89: $15
    ld [$1f00], sp                                ; $7d8a: $08 $00 $1f
    ld hl, sp+$07                                 ; $7d8d: $f8 $07
    ld sp, hl                                     ; $7d8f: $f9
    ld bc, $09f6                                  ; $7d90: $01 $f6 $09
    rst $28                                       ; $7d93: $ef
    ld de, $17ef                                  ; $7d94: $11 $ef $17
    rst $38                                       ; $7d97: $ff
    nop                                           ; $7d98: $00
    rst $38                                       ; $7d99: $ff
    ld [$10ff], sp                                ; $7d9a: $08 $ff $10
    rst $38                                       ; $7d9d: $ff
    jr jr_0e6_7da2                                ; $7d9e: $18 $02

    inc bc                                        ; $7da0: $03
    add d                                         ; $7da1: $82

jr_0e6_7da2:
    inc c                                         ; $7da2: $0c
    rrca                                          ; $7da3: $0f
    ld [bc], a                                    ; $7da4: $02
    inc de                                        ; $7da5: $13
    ld [bc], a                                    ; $7da6: $02
    nop                                           ; $7da7: $00
    ld [bc], a                                    ; $7da8: $02
    add hl, sp                                    ; $7da9: $39
    adc c                                         ; $7daa: $89
    rst $00                                       ; $7dab: $c7
    rst $38                                       ; $7dac: $ff
    ld b, d                                       ; $7dad: $42
    rst $38                                       ; $7dae: $ff
    cp a                                          ; $7daf: $bf
    ld a, a                                       ; $7db0: $7f
    ld a, e                                       ; $7db1: $7b
    add a                                         ; $7db2: $87
    inc bc                                        ; $7db3: $03
    inc bc                                        ; $7db4: $03
    rst $38                                       ; $7db5: $ff
    inc b                                         ; $7db6: $04
    ld bc, $0002                                  ; $7db7: $01 $02 $00
    ld [bc], a                                    ; $7dba: $02
    ld bc, $4f02                                  ; $7dbb: $01 $02 $4f
    ld [bc], a                                    ; $7dbe: $02
    ld bc, $0002                                  ; $7dbf: $01 $02 $00
    ld [bc], a                                    ; $7dc2: $02
    ld bc, $ff9a                                  ; $7dc3: $01 $9a $ff
    cp $be                                        ; $7dc6: $fe $be
    db $dd                                        ; $7dc8: $dd
    cp h                                          ; $7dc9: $bc
    ei                                            ; $7dca: $fb
    ld sp, hl                                     ; $7dcb: $f9
    cp $5c                                        ; $7dcc: $fe $5c
    and a                                         ; $7dce: $a7
    or a                                          ; $7dcf: $b7
    ld l, a                                       ; $7dd0: $6f
    db $ed                                        ; $7dd1: $ed
    rst $18                                       ; $7dd2: $df
    xor d                                         ; $7dd3: $aa
    rst $18                                       ; $7dd4: $df
    sub h                                         ; $7dd5: $94
    rst $38                                       ; $7dd6: $ff
    ld a, [hl-]                                   ; $7dd7: $3a
    rst $38                                       ; $7dd8: $ff
    ld d, h                                       ; $7dd9: $54
    rst $18                                       ; $7dda: $df
    ld [hl], c                                    ; $7ddb: $71
    cp $d6                                        ; $7ddc: $fe $d6
    ld sp, hl                                     ; $7dde: $f9
    ld [bc], a                                    ; $7ddf: $02

jr_0e6_7de0:
    dec bc                                        ; $7de0: $0b
    sbc [hl]                                      ; $7de1: $9e
    rra                                           ; $7de2: $1f
    dec d                                         ; $7de3: $15
    ld e, $1a                                     ; $7de4: $1e $1a
    dec sp                                        ; $7de6: $3b
    daa                                           ; $7de7: $27
    add hl, de                                    ; $7de8: $19
    rra                                           ; $7de9: $1f
    dec sp                                        ; $7dea: $3b
    scf                                           ; $7deb: $37
    and $db                                       ; $7dec: $e6 $db
    ld [hl], l                                    ; $7dee: $75
    db $dd                                        ; $7def: $dd
    jp nc, $a5be                                  ; $7df0: $d2 $be $a5

    db $fd                                        ; $7df3: $fd
    rrca                                          ; $7df4: $0f
    rst $38                                       ; $7df5: $ff
    jp nc, $bffe                                  ; $7df6: $d2 $fe $bf

    ld a, a                                       ; $7df9: $7f
    or b                                          ; $7dfa: $b0
    ld [hl], b                                    ; $7dfb: $70
    ld h, b                                       ; $7dfc: $60
    and b                                         ; $7dfd: $a0
    jr nz, jr_0e6_7de0                            ; $7dfe: $20 $e0

    ld [bc], a                                    ; $7e00: $02
    jr nz, jr_0e6_7d88                            ; $7e01: $20 $85

    jr c, jr_0e6_7e1d                             ; $7e03: $38 $18

    inc l                                         ; $7e05: $2c
    inc [hl]                                      ; $7e06: $34
    ld c, $02                                     ; $7e07: $0e $02
    ld [de], a                                    ; $7e09: $12
    add e                                         ; $7e0a: $83
    ld a, $2e                                     ; $7e0b: $3e $2e
    ld a, $02                                     ; $7e0d: $3e $02
    ld a, [hl-]                                   ; $7e0f: $3a
    ld [bc], a                                    ; $7e10: $02
    dec b                                         ; $7e11: $05
    ld [bc], a                                    ; $7e12: $02
    dec h                                         ; $7e13: $25
    ld [bc], a                                    ; $7e14: $02
    ld [bc], a                                    ; $7e15: $02
    ld [bc], a                                    ; $7e16: $02
    jr c, @-$7c                                   ; $7e17: $38 $82

    ld e, $3e                                     ; $7e19: $1e $3e
    ld [bc], a                                    ; $7e1b: $02
    dec h                                         ; $7e1c: $25

jr_0e6_7e1d:
    ld b, $00                                     ; $7e1d: $06 $00
    ld [$0c80], sp                                ; $7e1f: $08 $80 $0c
    nop                                           ; $7e22: $00
    add d                                         ; $7e23: $82
    ld a, [de]                                    ; $7e24: $1a
    dec e                                         ; $7e25: $1d
    ld [bc], a                                    ; $7e26: $02
    rlca                                          ; $7e27: $07
    ld d, $00                                     ; $7e28: $16 $00
    adc d                                         ; $7e2a: $8a
    ld [hl], b                                    ; $7e2b: $70
    ld a, a                                       ; $7e2c: $7f
    rrca                                          ; $7e2d: $0f
    ld a, a                                       ; $7e2e: $7f
    dec d                                         ; $7e2f: $15
    ld l, d                                       ; $7e30: $6a
    ld l, $ff                                     ; $7e31: $2e $ff
    reti                                          ; $7e33: $d9


    ld h, $02                                     ; $7e34: $26 $02
    rst $38                                       ; $7e36: $ff
    ld b, $00                                     ; $7e37: $06 $00
    add c                                         ; $7e39: $81
    ld d, b                                       ; $7e3a: $50
    ld [bc], a                                    ; $7e3b: $02
    ld [hl], b                                    ; $7e3c: $70
    sub l                                         ; $7e3d: $95
    ld d, b                                       ; $7e3e: $50
    jr jr_0e6_7ea9                                ; $7e3f: $18 $68

    ld e, b                                       ; $7e41: $58
    ld l, b                                       ; $7e42: $68
    ld c, $7e                                     ; $7e43: $0e $7e
    ld de, $737f                                  ; $7e45: $11 $7f $73
    ld c, h                                       ; $7e48: $4c
    jr z, @+$01                                   ; $7e49: $28 $ff

    xor e                                         ; $7e4b: $ab
    ld d, a                                       ; $7e4c: $57
    ld e, l                                       ; $7e4d: $5d
    cp [hl]                                       ; $7e4e: $be
    xor $f1                                       ; $7e4f: $ee $f1
    rst $30                                       ; $7e51: $f7
    rrca                                          ; $7e52: $0f
    ld [bc], a                                    ; $7e53: $02
    ld hl, sp+$08                                 ; $7e54: $f8 $08
    nop                                           ; $7e56: $00
    ld [bc], a                                    ; $7e57: $02
    inc b                                         ; $7e58: $04
    ld [bc], a                                    ; $7e59: $02
    ld [$0b02], sp                                ; $7e5a: $08 $02 $0b
    ld [bc], a                                    ; $7e5d: $02
    inc e                                         ; $7e5e: $1c
    adc d                                         ; $7e5f: $8a
    db $f4                                        ; $7e60: $f4
    db $fc                                        ; $7e61: $fc
    sbc b                                         ; $7e62: $98
    ld a, b                                       ; $7e63: $78
    ld l, b                                       ; $7e64: $68
    ld hl, sp-$70                                 ; $7e65: $f8 $90
    ldh a, [$a0]                                  ; $7e67: $f0 $a0
    ld h, b                                       ; $7e69: $60
    ld [bc], a                                    ; $7e6a: $02
    ret nz                                        ; $7e6b: $c0

    ld a, [bc]                                    ; $7e6c: $0a
    nop                                           ; $7e6d: $00
    rst $38                                       ; $7e6e: $ff
    rlca                                          ; $7e6f: $07
    ld bc, $1f00                                  ; $7e70: $01 $00 $1f
    ld hl, sp+$07                                 ; $7e73: $f8 $07
    pop af                                        ; $7e75: $f1
    ld d, $84                                     ; $7e76: $16 $84
    nop                                           ; $7e78: $00
    jr nz, jr_0e6_7e7b                            ; $7e79: $20 $00

jr_0e6_7e7b:
    db $10                                        ; $7e7b: $10
    ld b, $00                                     ; $7e7c: $06 $00
    add e                                         ; $7e7e: $83
    ld b, c                                       ; $7e7f: $41
    nop                                           ; $7e80: $00
    ld hl, $0005                                  ; $7e81: $21 $05 $00
    add c                                         ; $7e84: $81
    jr nz, jr_0e6_7e94                            ; $7e85: $20 $0d

    nop                                           ; $7e87: $00
    rst $38                                       ; $7e88: $ff
    dec d                                         ; $7e89: $15
    ld [$1f00], sp                                ; $7e8a: $08 $00 $1f
    ld hl, sp+$07                                 ; $7e8d: $f8 $07
    ld sp, hl                                     ; $7e8f: $f9
    ld bc, $09f6                                  ; $7e90: $01 $f6 $09
    rst $28                                       ; $7e93: $ef

jr_0e6_7e94:
    ld de, $18f0                                  ; $7e94: $11 $f0 $18
    rst $38                                       ; $7e97: $ff
    nop                                           ; $7e98: $00
    rst $38                                       ; $7e99: $ff
    ld [$10ff], sp                                ; $7e9a: $08 $ff $10
    rst $38                                       ; $7e9d: $ff
    jr jr_0e6_7ea2                                ; $7e9e: $18 $02

    inc bc                                        ; $7ea0: $03
    add d                                         ; $7ea1: $82

jr_0e6_7ea2:
    dec c                                         ; $7ea2: $0d
    rrca                                          ; $7ea3: $0f
    ld [bc], a                                    ; $7ea4: $02
    inc de                                        ; $7ea5: $13
    ld [bc], a                                    ; $7ea6: $02
    nop                                           ; $7ea7: $00
    ld [bc], a                                    ; $7ea8: $02

jr_0e6_7ea9:
    ld a, a                                       ; $7ea9: $7f
    adc d                                         ; $7eaa: $8a
    add e                                         ; $7eab: $83
    rst $38                                       ; $7eac: $ff
    ld h, [hl]                                    ; $7ead: $66
    rst $38                                       ; $7eae: $ff
    ld a, e                                       ; $7eaf: $7b
    cp a                                          ; $7eb0: $bf
    inc sp                                        ; $7eb1: $33
    rst $08                                       ; $7eb2: $cf
    add a                                         ; $7eb3: $87
    rst $38                                       ; $7eb4: $ff
    ld [bc], a                                    ; $7eb5: $02
    ld a, a                                       ; $7eb6: $7f
    inc b                                         ; $7eb7: $04
    ld bc, $0202                                  ; $7eb8: $01 $02 $02
    ld [bc], a                                    ; $7ebb: $02
    ld bc, $4f02                                  ; $7ebc: $01 $02 $4f
    ld [bc], a                                    ; $7ebf: $02
    ld bc, $0282                                  ; $7ec0: $01 $82 $02
    inc bc                                        ; $7ec3: $03
    ld [bc], a                                    ; $7ec4: $02
    ld a, a                                       ; $7ec5: $7f
    sbc d                                         ; $7ec6: $9a
    db $db                                        ; $7ec7: $db
    xor $9e                                       ; $7ec8: $ee $9e
    db $fd                                        ; $7eca: $fd
    ld hl, sp-$01                                 ; $7ecb: $f8 $ff
    sbc h                                         ; $7ecd: $9c
    rst $20                                       ; $7ece: $e7
    halt                                          ; $7ecf: $76
    xor a                                         ; $7ed0: $af
    call $aa7f                                    ; $7ed1: $cd $7f $aa
    rst $18                                       ; $7ed4: $df
    call nc, Call_000_2abf                        ; $7ed5: $d4 $bf $2a
    rst $38                                       ; $7ed8: $ff
    ld d, h                                       ; $7ed9: $54
    rst $18                                       ; $7eda: $df
    ld e, b                                       ; $7edb: $58
    rst $18                                       ; $7edc: $df
    ld [hl], c                                    ; $7edd: $71
    cp $d6                                        ; $7ede: $fe $d6
    ld sp, hl                                     ; $7ee0: $f9
    ld [bc], a                                    ; $7ee1: $02
    dec b                                         ; $7ee2: $05
    sbc [hl]                                      ; $7ee3: $9e
    rrca                                          ; $7ee4: $0f
    ld a, [bc]                                    ; $7ee5: $0a
    ld c, $0d                                     ; $7ee6: $0e $0d
    dec e                                         ; $7ee8: $1d
    inc de                                        ; $7ee9: $13
    dec c                                         ; $7eea: $0d
    rrca                                          ; $7eeb: $0f
    inc c                                         ; $7eec: $0c
    dec bc                                        ; $7eed: $0b
    halt                                          ; $7eee: $76
    ld a, c                                       ; $7eef: $79
    or e                                          ; $7ef0: $b3
    rst $28                                       ; $7ef1: $ef
    jp hl                                         ; $7ef2: $e9


    rst $18                                       ; $7ef3: $df
    jp nc, $a63e                                  ; $7ef4: $d2 $3e $a6

    ld a, [hl]                                    ; $7ef7: $7e
    ld e, l                                       ; $7ef8: $5d
    rst $38                                       ; $7ef9: $ff
    cp a                                          ; $7efa: $bf
    ld a, a                                       ; $7efb: $7f
    ret c                                         ; $7efc: $d8

    jr c, jr_0e6_7f4f                             ; $7efd: $38 $50

    or b                                          ; $7eff: $b0
    db $10                                        ; $7f00: $10
    ldh a, [rSC]                                  ; $7f01: $f0 $02
    ld h, b                                       ; $7f03: $60
    adc d                                         ; $7f04: $8a
    ld a, b                                       ; $7f05: $78
    ld e, b                                       ; $7f06: $58
    inc l                                         ; $7f07: $2c
    inc [hl]                                      ; $7f08: $34
    ld e, $12                                     ; $7f09: $1e $12
    ld a, d                                       ; $7f0b: $7a
    ld l, [hl]                                    ; $7f0c: $6e
    ld d, [hl]                                    ; $7f0d: $56
    ld a, [hl]                                    ; $7f0e: $7e
    ld [bc], a                                    ; $7f0f: $02
    ld a, b                                       ; $7f10: $78
    ld [bc], a                                    ; $7f11: $02
    ld b, h                                       ; $7f12: $44
    ld [bc], a                                    ; $7f13: $02
    ld c, d                                       ; $7f14: $4a
    ld [bc], a                                    ; $7f15: $02
    ld [hl], l                                    ; $7f16: $75
    add d                                         ; $7f17: $82
    ld a, $7e                                     ; $7f18: $3e $7e
    ld [bc], a                                    ; $7f1a: $02
    ld c, d                                       ; $7f1b: $4a
    ld [bc], a                                    ; $7f1c: $02
    nop                                           ; $7f1d: $00
    ld [bc], a                                    ; $7f1e: $02
    jr nz, @+$06                                  ; $7f1f: $20 $04

    nop                                           ; $7f21: $00
    ld b, $80                                     ; $7f22: $06 $80
    ld c, $00                                     ; $7f24: $0e $00
    add d                                         ; $7f26: $82
    ld a, [de]                                    ; $7f27: $1a
    dec e                                         ; $7f28: $1d
    ld [bc], a                                    ; $7f29: $02
    rlca                                          ; $7f2a: $07
    ld d, $00                                     ; $7f2b: $16 $00
    adc d                                         ; $7f2d: $8a
    ld [hl], b                                    ; $7f2e: $70
    ld a, a                                       ; $7f2f: $7f
    rrca                                          ; $7f30: $0f
    ld a, a                                       ; $7f31: $7f
    dec d                                         ; $7f32: $15
    ld l, d                                       ; $7f33: $6a
    ld l, $ff                                     ; $7f34: $2e $ff
    reti                                          ; $7f36: $d9


    ld h, $02                                     ; $7f37: $26 $02
    rst $38                                       ; $7f39: $ff
    ld b, $00                                     ; $7f3a: $06 $00
    sbc b                                         ; $7f3c: $98
    ld a, b                                       ; $7f3d: $78
    ld e, b                                       ; $7f3e: $58
    jr jr_0e6_7fb9                                ; $7f3f: $18 $78

    ld e, b                                       ; $7f41: $58
    ld l, b                                       ; $7f42: $68
    ld e, b                                       ; $7f43: $58
    jr z, jr_0e6_7f54                             ; $7f44: $28 $0e

    ld a, [hl]                                    ; $7f46: $7e
    ld a, c                                       ; $7f47: $79
    ld e, a                                       ; $7f48: $5f
    scf                                           ; $7f49: $37
    ld c, b                                       ; $7f4a: $48
    ld l, d                                       ; $7f4b: $6a
    db $fd                                        ; $7f4c: $fd
    xor e                                         ; $7f4d: $ab
    ld d, a                                       ; $7f4e: $57

jr_0e6_7f4f:
    ld e, l                                       ; $7f4f: $5d
    cp [hl]                                       ; $7f50: $be
    xor $f1                                       ; $7f51: $ee $f1
    rst $30                                       ; $7f53: $f7

jr_0e6_7f54:
    rrca                                          ; $7f54: $0f
    ld [bc], a                                    ; $7f55: $02
    ld hl, sp+$08                                 ; $7f56: $f8 $08
    nop                                           ; $7f58: $00
    ld [bc], a                                    ; $7f59: $02
    inc b                                         ; $7f5a: $04
    ld [bc], a                                    ; $7f5b: $02
    ld [$0b02], sp                                ; $7f5c: $08 $02 $0b
    ld [bc], a                                    ; $7f5f: $02
    inc e                                         ; $7f60: $1c
    adc d                                         ; $7f61: $8a
    db $f4                                        ; $7f62: $f4
    db $fc                                        ; $7f63: $fc
    ld e, b                                       ; $7f64: $58
    cp b                                          ; $7f65: $b8
    ld l, b                                       ; $7f66: $68
    ld hl, sp-$70                                 ; $7f67: $f8 $90
    ldh a, [$a0]                                  ; $7f69: $f0 $a0
    ld h, b                                       ; $7f6b: $60
    ld [bc], a                                    ; $7f6c: $02
    ret nz                                        ; $7f6d: $c0

    ld a, [bc]                                    ; $7f6e: $0a
    nop                                           ; $7f6f: $00
    rst $38                                       ; $7f70: $ff
    rlca                                          ; $7f71: $07
    ld bc, $1f00                                  ; $7f72: $01 $00 $1f
    ld hl, sp+$07                                 ; $7f75: $f8 $07
    ld a, [c]                                     ; $7f77: $f2
    rla                                           ; $7f78: $17
    add h                                         ; $7f79: $84
    nop                                           ; $7f7a: $00
    jr nz, jr_0e6_7f7d                            ; $7f7b: $20 $00

jr_0e6_7f7d:
    jr nc, jr_0e6_7f87                            ; $7f7d: $30 $08

    nop                                           ; $7f7f: $00
    add e                                         ; $7f80: $83
    ld b, d                                       ; $7f81: $42
    nop                                           ; $7f82: $00
    ld b, c                                       ; $7f83: $41
    ld de, $ff00                                  ; $7f84: $11 $00 $ff

jr_0e6_7f87:
    rlca                                          ; $7f87: $07
    ld bc, $1f00                                  ; $7f88: $01 $00 $1f
    ld hl, sp+$07                                 ; $7f8b: $f8 $07
    ld a, [c]                                     ; $7f8d: $f2
    ld d, $84                                     ; $7f8e: $16 $84
    nop                                           ; $7f90: $00
    stop                                          ; $7f91: $10 $00
    jr @+$10                                      ; $7f93: $18 $0e

    nop                                           ; $7f95: $00
    add c                                         ; $7f96: $81
    ld de, $000d                                  ; $7f97: $11 $0d $00
    rst $38                                       ; $7f9a: $ff
    rlca                                          ; $7f9b: $07
    ld bc, $1f00                                  ; $7f9c: $01 $00 $1f
    ld hl, sp+$07                                 ; $7f9f: $f8 $07
    di                                            ; $7fa1: $f3
    ld de, $0084                                  ; $7fa2: $11 $84 $00
    ld hl, $2100                                  ; $7fa5: $21 $00 $21
    inc e                                         ; $7fa8: $1c
    nop                                           ; $7fa9: $00
    rst $38                                       ; $7faa: $ff
    rlca                                          ; $7fab: $07
    ld bc, $1f00                                  ; $7fac: $01 $00 $1f
    ld hl, sp+$07                                 ; $7faf: $f8 $07
    pop af                                        ; $7fb1: $f1
    ld a, [bc]                                    ; $7fb2: $0a
    add h                                         ; $7fb3: $84
    nop                                           ; $7fb4: $00
    ld bc, $0200                                  ; $7fb5: $01 $00 $02
    inc e                                         ; $7fb8: $1c

jr_0e6_7fb9:
    nop                                           ; $7fb9: $00
    rst $38                                       ; $7fba: $ff
    dec bc                                        ; $7fbb: $0b
    inc bc                                        ; $7fbc: $03
    nop                                           ; $7fbd: $00
    rrca                                          ; $7fbe: $0f
    db $fd                                        ; $7fbf: $fd
    inc bc                                        ; $7fc0: $03
    db $eb                                        ; $7fc1: $eb
    ld a, [bc]                                    ; $7fc2: $0a
    ei                                            ; $7fc3: $fb
    nop                                           ; $7fc4: $00
    ei                                            ; $7fc5: $fb
    ld [$0183], sp                                ; $7fc6: $08 $83 $01
    nop                                           ; $7fc9: $00
    ld [bc], a                                    ; $7fca: $02
    dec b                                         ; $7fcb: $05
    nop                                           ; $7fcc: $00
    add c                                         ; $7fcd: $81
    inc b                                         ; $7fce: $04
    dec c                                         ; $7fcf: $0d
    nop                                           ; $7fd0: $00
    add e                                         ; $7fd1: $83
    jr nz, jr_0e6_7fd4                            ; $7fd2: $20 $00

jr_0e6_7fd4:
    ld b, b                                       ; $7fd4: $40
    add hl, bc                                    ; $7fd5: $09
    nop                                           ; $7fd6: $00
    ld [bc], a                                    ; $7fd7: $02
    rlca                                          ; $7fd8: $07
    adc [hl]                                      ; $7fd9: $8e
    jr nc, @+$41                                  ; $7fda: $30 $3f

    ld c, a                                       ; $7fdc: $4f
    ld [hl], b                                    ; $7fdd: $70
    cp a                                          ; $7fde: $bf
    ret nz                                        ; $7fdf: $c0

    ccf                                           ; $7fe0: $3f
    ret nz                                        ; $7fe1: $c0

    rrca                                          ; $7fe2: $0f
    ld [hl], b                                    ; $7fe3: $70
    nop                                           ; $7fe4: $00
    ccf                                           ; $7fe5: $3f
    nop                                           ; $7fe6: $00
    rlca                                          ; $7fe7: $07
    stop                                          ; $7fe8: $10 $00
    ld [bc], a                                    ; $7fea: $02
    ldh [$8e], a                                  ; $7feb: $e0 $8e
    inc c                                         ; $7fed: $0c
    db $fc                                        ; $7fee: $fc
    ld a, [c]                                     ; $7fef: $f2
    ld c, $fd                                     ; $7ff0: $0e $fd
    inc bc                                        ; $7ff2: $03
    db $fc                                        ; $7ff3: $fc
    inc bc                                        ; $7ff4: $03
    ldh a, [$0e]                                  ; $7ff5: $f0 $0e
    nop                                           ; $7ff7: $00
    db $fc                                        ; $7ff8: $fc
    nop                                           ; $7ff9: $00
    ldh [$0e], a                                  ; $7ffa: $e0 $0e
    nop                                           ; $7ffc: $00
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
