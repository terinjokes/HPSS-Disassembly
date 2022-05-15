; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0aa", ROMX[$4000], BANK[$aa]

    xor d                                         ; $4000: $aa
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    or l                                          ; $4003: $b5
    ld b, [hl]                                    ; $4004: $46
    sbc l                                         ; $4005: $9d
    ld l, e                                       ; $4006: $6b
    nop                                           ; $4007: $00
    inc bc                                        ; $4008: $03
    ld b, b                                       ; $4009: $40
    ld bc, $6b9d                                  ; $400a: $01 $9d $6b
    ld d, c                                       ; $400d: $51
    ld a, [hl-]                                   ; $400e: $3a
    or l                                          ; $400f: $b5
    ld b, [hl]                                    ; $4010: $46
    ldh [rSB], a                                  ; $4011: $e0 $01
    ld [hl], e                                    ; $4013: $73
    ld a, $9d                                     ; $4014: $3e $9d
    ld l, e                                       ; $4016: $6b
    nop                                           ; $4017: $00
    inc bc                                        ; $4018: $03
    rst $08                                       ; $4019: $cf
    add hl, sp                                    ; $401a: $39
    sbc l                                         ; $401b: $9d
    ld l, e                                       ; $401c: $6b
    or l                                          ; $401d: $b5
    ld b, [hl]                                    ; $401e: $46
    nop                                           ; $401f: $00
    inc bc                                        ; $4020: $03
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    sub h                                         ; $4023: $94
    ld b, d                                       ; $4024: $42
    sbc l                                         ; $4025: $9d
    ld l, e                                       ; $4026: $6b
    ret nz                                        ; $4027: $c0

    ld bc, $00e0                                  ; $4028: $01 $e0 $00
    sub h                                         ; $402b: $94
    ld b, d                                       ; $402c: $42
    ldh [rSB], a                                  ; $402d: $e0 $01
    nop                                           ; $402f: $00
    inc bc                                        ; $4030: $03
    jr nz, jr_0aa_4035                            ; $4031: $20 $02

    or l                                          ; $4033: $b5
    ld b, [hl]                                    ; $4034: $46

jr_0aa_4035:
    sub l                                         ; $4035: $95
    inc bc                                        ; $4036: $03
    cp $23                                        ; $4037: $fe $23
    rst $08                                       ; $4039: $cf
    add hl, sp                                    ; $403a: $39
    or l                                          ; $403b: $b5
    ld b, [hl]                                    ; $403c: $46
    sub l                                         ; $403d: $95
    inc bc                                        ; $403e: $03
    cp $23                                        ; $403f: $fe $23
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    cp c                                          ; $4043: $b9
    inc de                                        ; $4044: $13
    nop                                           ; $4045: $00
    ld [bc], a                                    ; $4046: $02
    sub $4a                                       ; $4047: $d6 $4a
    ld b, c                                       ; $4049: $41
    dec b                                         ; $404a: $05
    sub h                                         ; $404b: $94
    ld b, d                                       ; $404c: $42
    ret nz                                        ; $404d: $c0

    ld [bc], a                                    ; $404e: $02
    sub l                                         ; $404f: $95
    inc bc                                        ; $4050: $03
    ld b, b                                       ; $4051: $40
    ld bc, $46b5                                  ; $4052: $01 $b5 $46
    ldh [rSC], a                                  ; $4055: $e0 $02
    sub l                                         ; $4057: $95
    inc bc                                        ; $4058: $03
    rst $08                                       ; $4059: $cf
    add hl, sp                                    ; $405a: $39
    or l                                          ; $405b: $b5
    ld b, [hl]                                    ; $405c: $46
    ld d, c                                       ; $405d: $51
    ld a, [hl-]                                   ; $405e: $3a
    sub l                                         ; $405f: $95
    inc bc                                        ; $4060: $03
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    sub l                                         ; $4063: $95
    inc bc                                        ; $4064: $03
    add b                                         ; $4065: $80
    ld [bc], a                                    ; $4066: $02
    rst $30                                       ; $4067: $f7
    ld d, d                                       ; $4068: $52
    and e                                         ; $4069: $a3
    nop                                           ; $406a: $00
    sub e                                         ; $406b: $93
    ld b, d                                       ; $406c: $42
    cp b                                          ; $406d: $b8
    dec bc                                        ; $406e: $0b
    nop                                           ; $406f: $00
    inc bc                                        ; $4070: $03
    ret nz                                        ; $4071: $c0

    nop                                           ; $4072: $00
    ld [hl], d                                    ; $4073: $72
    ld a, $40                                     ; $4074: $3e $40
    ld [bc], a                                    ; $4076: $02
    sub l                                         ; $4077: $95
    inc bc                                        ; $4078: $03
    ret nz                                        ; $4079: $c0

    ld bc, $3a10                                  ; $407a: $01 $10 $3a
    or l                                          ; $407d: $b5
    ld b, [hl]                                    ; $407e: $46
    nop                                           ; $407f: $00
    inc bc                                        ; $4080: $03
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    sub h                                         ; $4083: $94
    ld b, d                                       ; $4084: $42
    ld bc, $9d06                                  ; $4085: $01 $06 $9d
    ld l, e                                       ; $4088: $6b
    add [hl]                                      ; $4089: $86
    nop                                           ; $408a: $00
    or l                                          ; $408b: $b5
    ld b, [hl]                                    ; $408c: $46
    and b                                         ; $408d: $a0
    ld [bc], a                                    ; $408e: $02
    ld c, e                                       ; $408f: $4b
    dec d                                         ; $4090: $15
    ret nz                                        ; $4091: $c0

    nop                                           ; $4092: $00
    adc d                                         ; $4093: $8a
    ld hl, $0220                                  ; $4094: $21 $20 $02
    sub e                                         ; $4097: $93
    ld b, d                                       ; $4098: $42
    ldh [rSB], a                                  ; $4099: $e0 $01
    ld d, e                                       ; $409b: $53
    ld b, d                                       ; $409c: $42
    sub l                                         ; $409d: $95
    inc bc                                        ; $409e: $03
    cp $23                                        ; $409f: $fe $23
    nop                                           ; $40a1: $00
    nop                                           ; $40a2: $00
    or l                                          ; $40a3: $b5
    ld b, [hl]                                    ; $40a4: $46
    adc d                                         ; $40a5: $8a
    ld hl, $6b9d                                  ; $40a6: $21 $9d $6b
    ret nz                                        ; $40a9: $c0

    nop                                           ; $40aa: $00
    ld d, d                                       ; $40ab: $52
    dec b                                         ; $40ac: $05
    jr nz, jr_0aa_40b1                            ; $40ad: $20 $02

    or l                                          ; $40af: $b5
    ld b, [hl]                                    ; $40b0: $46

jr_0aa_40b1:
    add b                                         ; $40b1: $80
    nop                                           ; $40b2: $00
    ld [hl], e                                    ; $40b3: $73
    ld a, $8a                                     ; $40b4: $3e $8a
    ld [$01c0], sp                                ; $40b6: $08 $c0 $01
    nop                                           ; $40b9: $00
    ld bc, $4253                                  ; $40ba: $01 $53 $42
    sub l                                         ; $40bd: $95
    inc bc                                        ; $40be: $03
    and b                                         ; $40bf: $a0
    ld [bc], a                                    ; $40c0: $02
    nop                                           ; $40c1: $00
    nop                                           ; $40c2: $00
    or l                                          ; $40c3: $b5
    ld b, [hl]                                    ; $40c4: $46
    sbc l                                         ; $40c5: $9d
    ld l, e                                       ; $40c6: $6b
    adc d                                         ; $40c7: $8a
    ld hl, $04c4                                  ; $40c8: $21 $c4 $04
    ld d, c                                       ; $40cb: $51
    ld a, [hl-]                                   ; $40cc: $3a
    ld h, b                                       ; $40cd: $60
    ld [bc], a                                    ; $40ce: $02
    cp b                                          ; $40cf: $b8
    dec bc                                        ; $40d0: $0b
    add c                                         ; $40d1: $81
    dec b                                         ; $40d2: $05
    ld d, c                                       ; $40d3: $51
    ld a, [hl-]                                   ; $40d4: $3a
    and b                                         ; $40d5: $a0
    ld [bc], a                                    ; $40d6: $02
    cp c                                          ; $40d7: $b9
    inc de                                        ; $40d8: $13
    add b                                         ; $40d9: $80
    nop                                           ; $40da: $00
    ld d, e                                       ; $40db: $53
    ld b, d                                       ; $40dc: $42
    adc d                                         ; $40dd: $8a
    ld hl, $01c0                                  ; $40de: $21 $c0 $01
    nop                                           ; $40e1: $00
    nop                                           ; $40e2: $00
    ld d, c                                       ; $40e3: $51
    ld a, [hl-]                                   ; $40e4: $3a
    sbc l                                         ; $40e5: $9d
    ld l, e                                       ; $40e6: $6b
    or l                                          ; $40e7: $b5
    ld b, [hl]                                    ; $40e8: $46
    add b                                         ; $40e9: $80
    nop                                           ; $40ea: $00
    sub h                                         ; $40eb: $94
    ld b, d                                       ; $40ec: $42
    ld h, b                                       ; $40ed: $60
    ld [bc], a                                    ; $40ee: $02
    adc d                                         ; $40ef: $8a
    ld hl, $0180                                  ; $40f0: $21 $80 $01
    sub l                                         ; $40f3: $95
    inc bc                                        ; $40f4: $03
    cp $23                                        ; $40f5: $fe $23
    add b                                         ; $40f7: $80
    ld [bc], a                                    ; $40f8: $02
    ld b, b                                       ; $40f9: $40
    ld bc, $39ef                                  ; $40fa: $01 $ef $39
    adc d                                         ; $40fd: $8a
    ld hl, $46b5                                  ; $40fe: $21 $b5 $46
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    sub e                                         ; $4103: $93
    ld b, d                                       ; $4104: $42
    nop                                           ; $4105: $00
    ld [bc], a                                    ; $4106: $02
    sbc l                                         ; $4107: $9d
    ld l, e                                       ; $4108: $6b
    ldh [rP1], a                                  ; $4109: $e0 $00
    sub e                                         ; $410b: $93
    ld b, d                                       ; $410c: $42
    adc d                                         ; $410d: $8a
    ld hl, $0200                                  ; $410e: $21 $00 $02
    add c                                         ; $4111: $81
    nop                                           ; $4112: $00
    ldh [rSB], a                                  ; $4113: $e0 $01
    sub l                                         ; $4115: $95
    inc bc                                        ; $4116: $03
    nop                                           ; $4117: $00
    inc bc                                        ; $4118: $03

Jump_0aa_4119:
    add b                                         ; $4119: $80
    nop                                           ; $411a: $00
    ld [hl], e                                    ; $411b: $73
    ld b, d                                       ; $411c: $42
    adc d                                         ; $411d: $8a
    ld hl, $0240                                  ; $411e: $21 $40 $02
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    cp b                                          ; $4123: $b8
    dec bc                                        ; $4124: $0b
    jr nz, jr_0aa_4129                            ; $4125: $20 $02

    rst $30                                       ; $4127: $f7
    ld d, d                                       ; $4128: $52

jr_0aa_4129:
    add b                                         ; $4129: $80
    ld bc, $3e72                                  ; $412a: $01 $72 $3e
    cp b                                          ; $412d: $b8
    dec bc                                        ; $412e: $0b
    ld l, e                                       ; $412f: $6b
    nop                                           ; $4130: $00
    ld h, e                                       ; $4131: $63
    nop                                           ; $4132: $00
    adc d                                         ; $4133: $8a
    ld hl, $01a0                                  ; $4134: $21 $a0 $01
    ld [hl], e                                    ; $4137: $73
    ld a, $80                                     ; $4138: $3e $80
    nop                                           ; $413a: $00
    db $10                                        ; $413b: $10
    ld a, [hl-]                                   ; $413c: $3a
    or l                                          ; $413d: $b5
    ld b, [hl]                                    ; $413e: $46
    ret nz                                        ; $413f: $c0

    ld bc, $0000                                  ; $4140: $01 $00 $00
    rst $30                                       ; $4143: $f7
    ld c, [hl]                                    ; $4144: $4e
    ld b, b                                       ; $4145: $40
    ld [bc], a                                    ; $4146: $02
    adc d                                         ; $4147: $8a
    ld hl, $00e0                                  ; $4148: $21 $e0 $00
    xor l                                         ; $414b: $ad
    nop                                           ; $414c: $00
    ld d, $16                                     ; $414d: $16 $16
    jr nz, jr_0aa_4153                            ; $414f: $20 $02

    add b                                         ; $4151: $80
    nop                                           ; $4152: $00

jr_0aa_4153:
    sub e                                         ; $4153: $93
    ld b, d                                       ; $4154: $42
    jr nz, @+$04                                  ; $4155: $20 $02

    adc d                                         ; $4157: $8a
    ld hl, $0080                                  ; $4158: $21 $80 $00
    rst $28                                       ; $415b: $ef
    add hl, sp                                    ; $415c: $39
    or l                                          ; $415d: $b5
    ld b, [hl]                                    ; $415e: $46
    ld b, b                                       ; $415f: $40
    ld bc, $0000                                  ; $4160: $01 $00 $00
    sub h                                         ; $4163: $94
    ld b, d                                       ; $4164: $42
    add e                                         ; $4165: $83
    add hl, bc                                    ; $4166: $09
    sbc l                                         ; $4167: $9d
    ld l, e                                       ; $4168: $6b
    ld b, e                                       ; $4169: $43
    nop                                           ; $416a: $00
    adc d                                         ; $416b: $8a
    ld hl, $01c0                                  ; $416c: $21 $c0 $01
    ld [hl], e                                    ; $416f: $73
    ld a, $e0                                     ; $4170: $3e $e0
    ld bc, $4294                                  ; $4172: $01 $94 $42
    sub l                                         ; $4175: $95
    inc bc                                        ; $4176: $03
    cp $23                                        ; $4177: $fe $23
    adc d                                         ; $4179: $8a
    ld hl, $46b5                                  ; $417a: $21 $b5 $46
    rst $08                                       ; $417d: $cf
    add hl, sp                                    ; $417e: $39
    cp $23                                        ; $417f: $fe $23
    nop                                           ; $4181: $00
    nop                                           ; $4182: $00
    or l                                          ; $4183: $b5
    ld b, [hl]                                    ; $4184: $46
    adc d                                         ; $4185: $8a
    ld hl, $6b9d                                  ; $4186: $21 $9d $6b
    ld h, d                                       ; $4189: $62
    nop                                           ; $418a: $00
    sub h                                         ; $418b: $94
    ld b, d                                       ; $418c: $42
    adc d                                         ; $418d: $8a
    ld hl, $01c0                                  ; $418e: $21 $c0 $01
    ld b, b                                       ; $4191: $40
    ld bc, $36d5                                  ; $4192: $01 $d5 $36
    nop                                           ; $4195: $00
    inc bc                                        ; $4196: $03
    adc d                                         ; $4197: $8a
    ld hl, $39cf                                  ; $4198: $21 $cf $39
    or l                                          ; $419b: $b5
    ld b, [hl]                                    ; $419c: $46
    nop                                           ; $419d: $00
    inc bc                                        ; $419e: $03
    adc d                                         ; $419f: $8a
    ld hl, $0000                                  ; $41a0: $21 $00 $00
    or l                                          ; $41a3: $b5
    ld b, [hl]                                    ; $41a4: $46
    sbc l                                         ; $41a5: $9d
    ld l, e                                       ; $41a6: $6b
    adc d                                         ; $41a7: $8a
    ld hl, $0044                                  ; $41a8: $21 $44 $00
    ld d, c                                       ; $41ab: $51
    ld a, [hl-]                                   ; $41ac: $3a
    ld c, d                                       ; $41ad: $4a
    nop                                           ; $41ae: $00
    or l                                          ; $41af: $b5
    ld b, [hl]                                    ; $41b0: $46
    ld h, d                                       ; $41b1: $62
    nop                                           ; $41b2: $00
    sub h                                         ; $41b3: $94
    ld b, d                                       ; $41b4: $42
    ret nz                                        ; $41b5: $c0

    ld bc, $218a                                  ; $41b6: $01 $8a $21
    rst $08                                       ; $41b9: $cf
    add hl, sp                                    ; $41ba: $39
    or l                                          ; $41bb: $b5
    ld b, [hl]                                    ; $41bc: $46
    ret nz                                        ; $41bd: $c0

    ld bc, $218a                                  ; $41be: $01 $8a $21
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    or l                                          ; $41c3: $b5
    ld b, [hl]                                    ; $41c4: $46
    sbc l                                         ; $41c5: $9d
    ld l, e                                       ; $41c6: $6b
    adc d                                         ; $41c7: $8a
    ld hl, $004a                                  ; $41c8: $21 $4a $00
    or l                                          ; $41cb: $b5
    ld b, [hl]                                    ; $41cc: $46
    add hl, de                                    ; $41cd: $19
    ld b, $ef                                     ; $41ce: $06 $ef
    inc b                                         ; $41d0: $04
    and b                                         ; $41d1: $a0
    nop                                           ; $41d2: $00
    sub h                                         ; $41d3: $94
    ld b, d                                       ; $41d4: $42
    ld c, e                                       ; $41d5: $4b
    add hl, de                                    ; $41d6: $19
    ld c, d                                       ; $41d7: $4a
    nop                                           ; $41d8: $00
    rst $08                                       ; $41d9: $cf
    add hl, sp                                    ; $41da: $39
    or l                                          ; $41db: $b5

Jump_0aa_41dc:
    ld b, [hl]                                    ; $41dc: $46
    ld c, e                                       ; $41dd: $4b
    add hl, de                                    ; $41de: $19
    ld c, d                                       ; $41df: $4a
    nop                                           ; $41e0: $00
    nop                                           ; $41e1: $00
    nop                                           ; $41e2: $00
    rst $08                                       ; $41e3: $cf
    add hl, sp                                    ; $41e4: $39
    or l                                          ; $41e5: $b5
    ld b, [hl]                                    ; $41e6: $46
    sbc l                                         ; $41e7: $9d
    ld l, e                                       ; $41e8: $6b
    ld l, e                                       ; $41e9: $6b
    nop                                           ; $41ea: $00
    rst $08                                       ; $41eb: $cf
    add hl, sp                                    ; $41ec: $39
    or l                                          ; $41ed: $b5
    ld b, [hl]                                    ; $41ee: $46
    add hl, de                                    ; $41ef: $19
    ld b, $8a                                     ; $41f0: $06 $8a
    ld hl, $39cf                                  ; $41f2: $21 $cf $39
    or l                                          ; $41f5: $b5
    ld b, [hl]                                    ; $41f6: $46
    rst $28                                       ; $41f7: $ef
    inc b                                         ; $41f8: $04
    rst $08                                       ; $41f9: $cf
    add hl, sp                                    ; $41fa: $39
    or l                                          ; $41fb: $b5
    ld b, [hl]                                    ; $41fc: $46
    or l                                          ; $41fd: $b5
    ld b, [hl]                                    ; $41fe: $46
    rst $28                                       ; $41ff: $ef
    inc b                                         ; $4200: $04
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    add [hl]                                      ; $4203: $86
    ld d, l                                       ; $4204: $55
    cpl                                           ; $4205: $2f
    ld [$6a6f], sp                                ; $4206: $08 $6f $6a
    cpl                                           ; $4209: $2f
    ld [$5586], sp                                ; $420a: $08 $86 $55
    ld l, a                                       ; $420d: $6f
    ld l, d                                       ; $420e: $6a
    ld l, a                                       ; $420f: $6f
    ld l, d                                       ; $4210: $6a
    cpl                                           ; $4211: $2f
    ld [$5586], sp                                ; $4212: $08 $86 $55
    rra                                           ; $4215: $1f
    ld [bc], a                                    ; $4216: $02
    ld l, a                                       ; $4217: $6f
    ld l, d                                       ; $4218: $6a
    add c                                         ; $4219: $81
    inc a                                         ; $421a: $3c
    rra                                           ; $421b: $1f
    ld [bc], a                                    ; $421c: $02
    dec bc                                        ; $421d: $0b
    ld h, d                                       ; $421e: $62
    cpl                                           ; $421f: $2f
    ld [$0000], sp                                ; $4220: $08 $00 $00
    add [hl]                                      ; $4223: $86
    ld d, l                                       ; $4224: $55
    ld l, a                                       ; $4225: $6f
    ld l, d                                       ; $4226: $6a
    sub b                                         ; $4227: $90
    add hl, de                                    ; $4228: $19
    cpl                                           ; $4229: $2f
    ld [$021f], sp                                ; $422a: $08 $1f $02
    adc e                                         ; $422d: $8b
    add hl, sp                                    ; $422e: $39
    rst $18                                       ; $422f: $df
    rra                                           ; $4230: $1f
    cpl                                           ; $4231: $2f
    ld [$021f], sp                                ; $4232: $08 $1f $02
    adc e                                         ; $4235: $8b
    add hl, sp                                    ; $4236: $39
    rst $18                                       ; $4237: $df
    dec de                                        ; $4238: $1b
    ld h, [hl]                                    ; $4239: $66
    inc h                                         ; $423a: $24
    rra                                           ; $423b: $1f
    ld [bc], a                                    ; $423c: $02
    add [hl]                                      ; $423d: $86
    ld d, l                                       ; $423e: $55
    rst $18                                       ; $423f: $df
    inc bc                                        ; $4240: $03
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    add [hl]                                      ; $4243: $86
    ld d, l                                       ; $4244: $55
    ld h, [hl]                                    ; $4245: $66
    ld [$6a6f], sp                                ; $4246: $08 $6f $6a
    ld c, h                                       ; $4249: $4c
    ld [$021f], sp                                ; $424a: $08 $1f $02
    sub b                                         ; $424d: $90
    add hl, de                                    ; $424e: $19
    rst $18                                       ; $424f: $df
    dec de                                        ; $4250: $1b
    cpl                                           ; $4251: $2f
    ld [$021f], sp                                ; $4252: $08 $1f $02
    rst $18                                       ; $4255: $df
    scf                                           ; $4256: $37
    sub b                                         ; $4257: $90
    add hl, de                                    ; $4258: $19
    add h                                         ; $4259: $84
    inc h                                         ; $425a: $24
    rra                                           ; $425b: $1f
    ld [bc], a                                    ; $425c: $02
    add [hl]                                      ; $425d: $86
    ld d, l                                       ; $425e: $55
    cpl                                           ; $425f: $2f
    ld [$0001], sp                                ; $4260: $08 $01 $00
    ld l, a                                       ; $4263: $6f
    ld l, d                                       ; $4264: $6a
    add [hl]                                      ; $4265: $86
    ld d, l                                       ; $4266: $55
    rst $18                                       ; $4267: $df
    inc bc                                        ; $4268: $03
    ld c, e                                       ; $4269: $4b
    ld [$021f], sp                                ; $426a: $08 $1f $02
    sub b                                         ; $426d: $90
    add hl, de                                    ; $426e: $19
    rst $18                                       ; $426f: $df
    ccf                                           ; $4270: $3f
    ld c, e                                       ; $4271: $4b
    ld [$021f], sp                                ; $4272: $08 $1f $02
    sub b                                         ; $4275: $90
    add hl, de                                    ; $4276: $19
    rst $18                                       ; $4277: $df
    dec hl                                        ; $4278: $2b
    ld c, d                                       ; $4279: $4a
    jr jr_0aa_429b                                ; $427a: $18 $1f

    ld [bc], a                                    ; $427c: $02
    add [hl]                                      ; $427d: $86
    ld d, l                                       ; $427e: $55
    rst $18                                       ; $427f: $df
    inc bc                                        ; $4280: $03
    nop                                           ; $4281: $00
    nop                                           ; $4282: $00
    ld a, [hl-]                                   ; $4283: $3a
    ld h, $8a                                     ; $4284: $26 $8a
    dec a                                         ; $4286: $3d
    rst $18                                       ; $4287: $df
    ccf                                           ; $4288: $3f
    cpl                                           ; $4289: $2f
    ld [$021f], sp                                ; $428a: $08 $1f $02
    rst $18                                       ; $428d: $df
    ld b, e                                       ; $428e: $43
    sub b                                         ; $428f: $90
    add hl, de                                    ; $4290: $19
    ld c, e                                       ; $4291: $4b
    ld [$021f], sp                                ; $4292: $08 $1f $02
    sub b                                         ; $4295: $90
    add hl, de                                    ; $4296: $19
    rst $18                                       ; $4297: $df
    rra                                           ; $4298: $1f
    dec b                                         ; $4299: $05
    add hl, sp                                    ; $429a: $39

jr_0aa_429b:
    rst $18                                       ; $429b: $df
    inc bc                                        ; $429c: $03
    rra                                           ; $429d: $1f
    ld [bc], a                                    ; $429e: $02
    sub b                                         ; $429f: $90
    add hl, de                                    ; $42a0: $19
    nop                                           ; $42a1: $00
    nop                                           ; $42a2: $00
    add [hl]                                      ; $42a3: $86
    ld d, l                                       ; $42a4: $55
    ld l, a                                       ; $42a5: $6f
    ld l, d                                       ; $42a6: $6a
    sub b                                         ; $42a7: $90
    add hl, de                                    ; $42a8: $19
    sub b                                         ; $42a9: $90
    add hl, de                                    ; $42aa: $19
    rst $18                                       ; $42ab: $df
    inc bc                                        ; $42ac: $03
    rra                                           ; $42ad: $1f
    ld [bc], a                                    ; $42ae: $02
    rst $18                                       ; $42af: $df
    ld [hl], a                                    ; $42b0: $77
    sub b                                         ; $42b1: $90
    add hl, de                                    ; $42b2: $19
    rst $18                                       ; $42b3: $df
    inc bc                                        ; $42b4: $03
    rra                                           ; $42b5: $1f
    ld [bc], a                                    ; $42b6: $02
    rst $18                                       ; $42b7: $df
    ld [hl], a                                    ; $42b8: $77
    ld h, [hl]                                    ; $42b9: $66
    ld [$1990], sp                                ; $42ba: $08 $90 $19
    add [hl]                                      ; $42bd: $86
    ld d, l                                       ; $42be: $55
    add c                                         ; $42bf: $81
    inc a                                         ; $42c0: $3c
    nop                                           ; $42c1: $00
    nop                                           ; $42c2: $00
    add [hl]                                      ; $42c3: $86
    ld d, l                                       ; $42c4: $55
    ld l, a                                       ; $42c5: $6f
    ld l, d                                       ; $42c6: $6a
    add c                                         ; $42c7: $81
    inc a                                         ; $42c8: $3c
    add a                                         ; $42c9: $87
    inc c                                         ; $42ca: $0c
    rst $18                                       ; $42cb: $df
    dec hl                                        ; $42cc: $2b
    rra                                           ; $42cd: $1f
    ld [bc], a                                    ; $42ce: $02
    sub b                                         ; $42cf: $90
    add hl, de                                    ; $42d0: $19
    ld h, [hl]                                    ; $42d1: $66
    ld [$37df], sp                                ; $42d2: $08 $df $37
    rra                                           ; $42d5: $1f
    ld [bc], a                                    ; $42d6: $02
    adc l                                         ; $42d7: $8d
    dec l                                         ; $42d8: $2d
    add c                                         ; $42d9: $81
    inc a                                         ; $42da: $3c
    add [hl]                                      ; $42db: $86
    ld d, l                                       ; $42dc: $55
    rra                                           ; $42dd: $1f
    ld [bc], a                                    ; $42de: $02
    adc l                                         ; $42df: $8d
    dec l                                         ; $42e0: $2d
    nop                                           ; $42e1: $00
    nop                                           ; $42e2: $00
    add [hl]                                      ; $42e3: $86
    ld d, l                                       ; $42e4: $55
    ld l, a                                       ; $42e5: $6f
    ld l, d                                       ; $42e6: $6a
    adc l                                         ; $42e7: $8d
    dec l                                         ; $42e8: $2d
    add a                                         ; $42e9: $87
    inc c                                         ; $42ea: $0c
    rst $18                                       ; $42eb: $df
    dec de                                        ; $42ec: $1b
    rra                                           ; $42ed: $1f
    ld [bc], a                                    ; $42ee: $02
    adc e                                         ; $42ef: $8b
    add hl, sp                                    ; $42f0: $39
    xor b                                         ; $42f1: $a8
    inc c                                         ; $42f2: $0c
    rst $18                                       ; $42f3: $df
    inc bc                                        ; $42f4: $03
    rra                                           ; $42f5: $1f
    ld [bc], a                                    ; $42f6: $02
    adc c                                         ; $42f7: $89
    ld b, c                                       ; $42f8: $41
    add c                                         ; $42f9: $81
    inc a                                         ; $42fa: $3c
    add [hl]                                      ; $42fb: $86
    ld d, l                                       ; $42fc: $55
    rra                                           ; $42fd: $1f
    ld [bc], a                                    ; $42fe: $02
    adc c                                         ; $42ff: $89
    ld b, c                                       ; $4300: $41
    nop                                           ; $4301: $00
    nop                                           ; $4302: $00
    add [hl]                                      ; $4303: $86
    ld d, l                                       ; $4304: $55
    ld l, a                                       ; $4305: $6f
    ld l, d                                       ; $4306: $6a
    di                                            ; $4307: $f3
    ld d, l                                       ; $4308: $55
    ld h, [hl]                                    ; $4309: $66
    ld [$03df], sp                                ; $430a: $08 $df $03
    rra                                           ; $430d: $1f
    ld [bc], a                                    ; $430e: $02
    adc d                                         ; $430f: $8a
    dec a                                         ; $4310: $3d
    ld h, [hl]                                    ; $4311: $66
    ld [$03df], sp                                ; $4312: $08 $df $03
    rra                                           ; $4315: $1f
    ld [bc], a                                    ; $4316: $02
    adc b                                         ; $4317: $88
    ld c, c                                       ; $4318: $49
    add c                                         ; $4319: $81
    inc a                                         ; $431a: $3c
    add [hl]                                      ; $431b: $86
    ld d, l                                       ; $431c: $55
    rra                                           ; $431d: $1f
    ld [bc], a                                    ; $431e: $02
    adc b                                         ; $431f: $88
    ld c, c                                       ; $4320: $49
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    add [hl]                                      ; $4323: $86
    ld d, l                                       ; $4324: $55
    ld l, a                                       ; $4325: $6f
    ld l, d                                       ; $4326: $6a
    adc b                                         ; $4327: $88
    ld c, c                                       ; $4328: $49
    add a                                         ; $4329: $87
    inc c                                         ; $432a: $0c
    rst $18                                       ; $432b: $df
    inc bc                                        ; $432c: $03
    rra                                           ; $432d: $1f
    ld [bc], a                                    ; $432e: $02
    adc e                                         ; $432f: $8b
    add hl, sp                                    ; $4330: $39
    add a                                         ; $4331: $87
    inc c                                         ; $4332: $0c
    rst $18                                       ; $4333: $df
    inc bc                                        ; $4334: $03
    rra                                           ; $4335: $1f
    ld [bc], a                                    ; $4336: $02
    ld l, b                                       ; $4337: $68
    ld c, c                                       ; $4338: $49
    add c                                         ; $4339: $81
    inc a                                         ; $433a: $3c
    add [hl]                                      ; $433b: $86
    ld d, l                                       ; $433c: $55
    rra                                           ; $433d: $1f
    ld [bc], a                                    ; $433e: $02
    ld l, b                                       ; $433f: $68
    ld c, c                                       ; $4340: $49
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    add [hl]                                      ; $4343: $86
    ld d, l                                       ; $4344: $55
    ld l, a                                       ; $4345: $6f
    ld l, d                                       ; $4346: $6a
    ld l, b                                       ; $4347: $68
    ld c, c                                       ; $4348: $49
    add a                                         ; $4349: $87
    inc c                                         ; $434a: $0c
    add [hl]                                      ; $434b: $86
    ld d, l                                       ; $434c: $55
    ld c, [hl]                                    ; $434d: $4e
    dec h                                         ; $434e: $25
    di                                            ; $434f: $f3
    ld d, l                                       ; $4350: $55
    add a                                         ; $4351: $87
    inc c                                         ; $4352: $0c
    di                                            ; $4353: $f3
    ld d, l                                       ; $4354: $55
    ld l, d                                       ; $4355: $6a
    ld b, c                                       ; $4356: $41
    rra                                           ; $4357: $1f
    ld [bc], a                                    ; $4358: $02
    add c                                         ; $4359: $81
    inc a                                         ; $435a: $3c
    add [hl]                                      ; $435b: $86
    ld d, l                                       ; $435c: $55
    ld l, d                                       ; $435d: $6a
    ld b, c                                       ; $435e: $41
    rra                                           ; $435f: $1f
    ld [bc], a                                    ; $4360: $02
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    add [hl]                                      ; $4363: $86
    ld d, l                                       ; $4364: $55
    ld l, a                                       ; $4365: $6f
    ld l, d                                       ; $4366: $6a
    rra                                           ; $4367: $1f
    ld [bc], a                                    ; $4368: $02
    xor c                                         ; $4369: $a9
    inc c                                         ; $436a: $0c
    add [hl]                                      ; $436b: $86
    ld d, l                                       ; $436c: $55
    ld c, [hl]                                    ; $436d: $4e
    dec h                                         ; $436e: $25
    di                                            ; $436f: $f3
    ld d, l                                       ; $4370: $55
    xor b                                         ; $4371: $a8
    inc c                                         ; $4372: $0c
    add [hl]                                      ; $4373: $86
    ld d, l                                       ; $4374: $55
    ld c, [hl]                                    ; $4375: $4e
    dec h                                         ; $4376: $25
    di                                            ; $4377: $f3
    ld d, l                                       ; $4378: $55
    add c                                         ; $4379: $81
    inc a                                         ; $437a: $3c
    add [hl]                                      ; $437b: $86
    ld d, l                                       ; $437c: $55
    ld c, [hl]                                    ; $437d: $4e
    dec h                                         ; $437e: $25
    di                                            ; $437f: $f3
    ld d, l                                       ; $4380: $55
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    add [hl]                                      ; $4383: $86
    ld d, l                                       ; $4384: $55
    ld l, a                                       ; $4385: $6f
    ld l, d                                       ; $4386: $6a
    jp z, $a810                                   ; $4387: $ca $10 $a8

    inc c                                         ; $438a: $0c
    add [hl]                                      ; $438b: $86
    ld d, l                                       ; $438c: $55
    ld c, [hl]                                    ; $438d: $4e
    dec h                                         ; $438e: $25
    di                                            ; $438f: $f3
    ld d, l                                       ; $4390: $55
    ld h, [hl]                                    ; $4391: $66
    ld [$5586], sp                                ; $4392: $08 $86 $55
    jp z, $4e10                                   ; $4395: $ca $10 $4e

    dec h                                         ; $4398: $25
    add c                                         ; $4399: $81
    inc a                                         ; $439a: $3c
    add [hl]                                      ; $439b: $86
    ld d, l                                       ; $439c: $55
    jp z, $4e10                                   ; $439d: $ca $10 $4e

    dec h                                         ; $43a0: $25
    nop                                           ; $43a1: $00
    nop                                           ; $43a2: $00
    add [hl]                                      ; $43a3: $86
    ld d, l                                       ; $43a4: $55
    ld l, a                                       ; $43a5: $6f
    ld l, d                                       ; $43a6: $6a
    ld c, [hl]                                    ; $43a7: $4e
    dec h                                         ; $43a8: $25
    xor c                                         ; $43a9: $a9
    inc c                                         ; $43aa: $0c
    add [hl]                                      ; $43ab: $86
    ld d, l                                       ; $43ac: $55
    ld c, [hl]                                    ; $43ad: $4e
    dec h                                         ; $43ae: $25
    di                                            ; $43af: $f3
    ld d, l                                       ; $43b0: $55
    ld h, [hl]                                    ; $43b1: $66
    ld [$5586], sp                                ; $43b2: $08 $86 $55
    jp z, $f310                                   ; $43b5: $ca $10 $f3

    ld d, l                                       ; $43b8: $55
    add c                                         ; $43b9: $81
    inc a                                         ; $43ba: $3c
    add [hl]                                      ; $43bb: $86
    ld d, l                                       ; $43bc: $55
    jp z, $f310                                   ; $43bd: $ca $10 $f3

    ld d, l                                       ; $43c0: $55
    nop                                           ; $43c1: $00
    nop                                           ; $43c2: $00
    add [hl]                                      ; $43c3: $86
    ld d, l                                       ; $43c4: $55
    ld l, a                                       ; $43c5: $6f
    ld l, d                                       ; $43c6: $6a
    di                                            ; $43c7: $f3
    ld d, l                                       ; $43c8: $55
    xor b                                         ; $43c9: $a8
    inc c                                         ; $43ca: $0c
    add [hl]                                      ; $43cb: $86
    ld d, l                                       ; $43cc: $55
    ld c, [hl]                                    ; $43cd: $4e
    dec h                                         ; $43ce: $25
    di                                            ; $43cf: $f3
    ld d, l                                       ; $43d0: $55
    ld h, [hl]                                    ; $43d1: $66
    ld [$5586], sp                                ; $43d2: $08 $86 $55
    ld c, [hl]                                    ; $43d5: $4e
    dec h                                         ; $43d6: $25
    di                                            ; $43d7: $f3
    ld d, l                                       ; $43d8: $55
    add c                                         ; $43d9: $81
    inc a                                         ; $43da: $3c
    add [hl]                                      ; $43db: $86
    ld d, l                                       ; $43dc: $55
    ld c, [hl]                                    ; $43dd: $4e
    dec h                                         ; $43de: $25
    di                                            ; $43df: $f3
    ld d, l                                       ; $43e0: $55
    nop                                           ; $43e1: $00
    nop                                           ; $43e2: $00
    add [hl]                                      ; $43e3: $86
    ld d, l                                       ; $43e4: $55
    add c                                         ; $43e5: $81
    inc a                                         ; $43e6: $3c
    ld l, a                                       ; $43e7: $6f
    ld l, d                                       ; $43e8: $6a
    add c                                         ; $43e9: $81
    inc a                                         ; $43ea: $3c
    add [hl]                                      ; $43eb: $86
    ld d, l                                       ; $43ec: $55
    ld h, [hl]                                    ; $43ed: $66
    ld [$10ca], sp                                ; $43ee: $08 $ca $10
    add c                                         ; $43f1: $81
    inc a                                         ; $43f2: $3c
    add [hl]                                      ; $43f3: $86
    ld d, l                                       ; $43f4: $55
    ld h, [hl]                                    ; $43f5: $66
    ld [$10ca], sp                                ; $43f6: $08 $ca $10
    add c                                         ; $43f9: $81
    inc a                                         ; $43fa: $3c
    add [hl]                                      ; $43fb: $86
    ld d, l                                       ; $43fc: $55
    ld h, [hl]                                    ; $43fd: $66
    ld [$10ca], sp                                ; $43fe: $08 $ca $10
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    call nz, $f601                                ; $4403: $c4 $01 $f6
    ld [hl], c                                    ; $4406: $71
    ld e, h                                       ; $4407: $5c
    ld a, a                                       ; $4408: $7f
    dec c                                         ; $4409: $0d
    inc c                                         ; $440a: $0c
    or $71                                        ; $440b: $f6 $71
    ld e, h                                       ; $440d: $5c
    ld a, a                                       ; $440e: $7f
    ld e, h                                       ; $440f: $5c
    ld a, a                                       ; $4410: $7f
    dec c                                         ; $4411: $0d
    inc c                                         ; $4412: $0c
    ei                                            ; $4413: $fb
    rla                                           ; $4414: $17
    or $71                                        ; $4415: $f6 $71
    ld e, h                                       ; $4417: $5c
    ld a, a                                       ; $4418: $7f

Jump_0aa_4419:
    and b                                         ; $4419: $a0
    nop                                           ; $441a: $00
    ld e, h                                       ; $441b: $5c
    ld a, a                                       ; $441c: $7f
    call nc, $c469                                ; $441d: $d4 $69 $c4
    ld bc, $0000                                  ; $4420: $01 $00 $00
    and l                                         ; $4423: $a5
    ld b, $f6                                     ; $4424: $06 $f6
    ld [hl], c                                    ; $4426: $71
    ld e, h                                       ; $4427: $5c
    ld a, a                                       ; $4428: $7f
    ld [$0605], sp                                ; $4429: $08 $05 $06
    rlca                                          ; $442c: $07
    rst $10                                       ; $442d: $d7
    ld h, l                                       ; $442e: $65
    ei                                            ; $442f: $fb
    rla                                           ; $4430: $17
    dec c                                         ; $4431: $0d
    inc c                                         ; $4432: $0c
    cp $00                                        ; $4433: $fe $00
    call nz, $f601                                ; $4435: $c4 $01 $f6
    ld [hl], c                                    ; $4438: $71
    ld h, e                                       ; $4439: $63
    ld bc, $0706                                  ; $443a: $01 $06 $07
    ld l, $51                                     ; $443d: $2e $51
    or $71                                        ; $443f: $f6 $71
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00
    dec h                                         ; $4443: $25
    ld [bc], a                                    ; $4444: $02
    or $71                                        ; $4445: $f6 $71
    ld e, h                                       ; $4447: $5c
    ld a, a                                       ; $4448: $7f
    dec c                                         ; $4449: $0d
    inc c                                         ; $444a: $0c
    ld b, $07                                     ; $444b: $06 $07
    ld a, [c]                                     ; $444d: $f2
    ld d, l                                       ; $444e: $55
    ei                                            ; $444f: $fb
    rla                                           ; $4450: $17
    ld [$0605], sp                                ; $4451: $08 $05 $06
    rlca                                          ; $4454: $07
    rst $10                                       ; $4455: $d7
    ld h, c                                       ; $4456: $61
    ei                                            ; $4457: $fb
    rla                                           ; $4458: $17
    ld b, d                                       ; $4459: $42
    ld bc, $0706                                  ; $445a: $01 $06 $07
    ld l, $51                                     ; $445d: $2e $51
    or $71                                        ; $445f: $f6 $71
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    or $71                                        ; $4463: $f6 $71
    and b                                         ; $4465: $a0
    nop                                           ; $4466: $00
    ld e, h                                       ; $4467: $5c
    ld a, a                                       ; $4468: $7f
    call nz, Call_000_0601                        ; $4469: $c4 $01 $06
    rlca                                          ; $446c: $07
    or $71                                        ; $446d: $f6 $71
    ei                                            ; $446f: $fb
    rla                                           ; $4470: $17
    dec c                                         ; $4471: $0d
    inc c                                         ; $4472: $0c
    ld b, $07                                     ; $4473: $06 $07
    db $ed                                        ; $4475: $ed
    add hl, sp                                    ; $4476: $39
    ei                                            ; $4477: $fb
    rla                                           ; $4478: $17
    ld c, b                                       ; $4479: $48
    ld [$17fb], sp                                ; $447a: $08 $fb $17
    call nz, $d401                                ; $447d: $c4 $01 $d4
    ld l, c                                       ; $4480: $69
    nop                                           ; $4481: $00
    nop                                           ; $4482: $00
    or $71                                        ; $4483: $f6 $71
    ld e, h                                       ; $4485: $5c
    ld a, a                                       ; $4486: $7f
    or $71                                        ; $4487: $f6 $71
    ld h, a                                       ; $4489: $67
    ld [$0706], sp                                ; $448a: $08 $06 $07
    call nz, $fb01                                ; $448d: $c4 $01 $fb
    rla                                           ; $4490: $17
    ld b, d                                       ; $4491: $42
    ld bc, $0706                                  ; $4492: $01 $06 $07
    or $71                                        ; $4495: $f6 $71
    ei                                            ; $4497: $fb
    rla                                           ; $4498: $17
    dec c                                         ; $4499: $0d
    inc c                                         ; $449a: $0c
    ei                                            ; $449b: $fb
    rla                                           ; $449c: $17
    or $71                                        ; $449d: $f6 $71
    cp $00                                        ; $449f: $fe $00
    nop                                           ; $44a1: $00
    nop                                           ; $44a2: $00
    or $71                                        ; $44a3: $f6 $71
    dec c                                         ; $44a5: $0d
    inc c                                         ; $44a6: $0c
    ld e, h                                       ; $44a7: $5c
    ld a, a                                       ; $44a8: $7f
    add e                                         ; $44a9: $83
    inc b                                         ; $44aa: $04
    ld b, $07                                     ; $44ab: $06 $07
    ldh a, [rKEY1]                                ; $44ad: $f0 $4d
    ei                                            ; $44af: $fb
    rla                                           ; $44b0: $17
    ld a, [hl+]                                   ; $44b1: $2a
    ld [$01c4], sp                                ; $44b2: $08 $c4 $01
    or $71                                        ; $44b5: $f6 $71
    ld b, $07                                     ; $44b7: $06 $07
    dec c                                         ; $44b9: $0d
    inc c                                         ; $44ba: $0c
    ld l, $51                                     ; $44bb: $2e $51
    cp $00                                        ; $44bd: $fe $00
    or $71                                        ; $44bf: $f6 $71
    ld bc, $bb00                                  ; $44c1: $01 $00 $bb
    dec sp                                        ; $44c4: $3b
    cp $00                                        ; $44c5: $fe $00
    or $71                                        ; $44c7: $f6 $71
    ld h, a                                       ; $44c9: $67
    ld [$0706], sp                                ; $44ca: $08 $06 $07
    jp z, $fb25                                   ; $44cd: $ca $25 $fb

    rla                                           ; $44d0: $17
    ld c, c                                       ; $44d1: $49
    ld [$0706], sp                                ; $44d2: $08 $06 $07
    jp z, $fb25                                   ; $44d5: $ca $25 $fb

    rla                                           ; $44d8: $17
    ld l, $51                                     ; $44d9: $2e $51
    or $71                                        ; $44db: $f6 $71
    jp z, $fb25                                   ; $44dd: $ca $25 $fb

    rla                                           ; $44e0: $17
    ld bc, $f600                                  ; $44e1: $01 $00 $f6
    ld [hl], c                                    ; $44e4: $71
    cp $00                                        ; $44e5: $fe $00
    ld e, h                                       ; $44e7: $5c
    ld a, a                                       ; $44e8: $7f
    ld h, a                                       ; $44e9: $67
    ld [$0706], sp                                ; $44ea: $08 $06 $07
    db $ed                                        ; $44ed: $ed
    add hl, sp                                    ; $44ee: $39
    ei                                            ; $44ef: $fb
    rla                                           ; $44f0: $17
    call nz, Call_000_0601                        ; $44f1: $c4 $01 $06
    rlca                                          ; $44f4: $07
    ei                                            ; $44f5: $fb
    rla                                           ; $44f6: $17
    ei                                            ; $44f7: $fb
    rla                                           ; $44f8: $17
    call nz, Call_000_0601                        ; $44f9: $c4 $01 $06
    rlca                                          ; $44fc: $07
    ld l, $51                                     ; $44fd: $2e $51
    or $71                                        ; $44ff: $f6 $71
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    call nz, $f601                                ; $4503: $c4 $01 $f6
    ld [hl], c                                    ; $4506: $71
    ld e, h                                       ; $4507: $5c
    ld a, a                                       ; $4508: $7f
    call nz, Call_000_0601                        ; $4509: $c4 $01 $06
    rlca                                          ; $450c: $07
    ei                                            ; $450d: $fb
    rla                                           ; $450e: $17
    ld e, h                                       ; $450f: $5c
    ld a, a                                       ; $4510: $7f
    and b                                         ; $4511: $a0
    nop                                           ; $4512: $00
    ld b, $07                                     ; $4513: $06 $07
    call nz, $5c01                                ; $4515: $c4 $01 $5c
    ld a, a                                       ; $4518: $7f
    call nz, Call_000_0601                        ; $4519: $c4 $01 $06
    rlca                                          ; $451c: $07
    or h                                          ; $451d: $b4
    ld l, c                                       ; $451e: $69
    ei                                            ; $451f: $fb
    rla                                           ; $4520: $17
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    dec h                                         ; $4523: $25
    ld [bc], a                                    ; $4524: $02
    or $71                                        ; $4525: $f6 $71
    ld e, h                                       ; $4527: $5c
    ld a, a                                       ; $4528: $7f
    add d                                         ; $4529: $82
    nop                                           ; $452a: $00
    ld b, $07                                     ; $452b: $06 $07
    call nz, $fb01                                ; $452d: $c4 $01 $fb
    rla                                           ; $4530: $17
    and b                                         ; $4531: $a0
    nop                                           ; $4532: $00
    or $71                                        ; $4533: $f6 $71
    call nz, Call_0aa_6501                        ; $4535: $c4 $01 $65
    nop                                           ; $4538: $00
    add e                                         ; $4539: $83
    ld bc, $0706                                  ; $453a: $01 $06 $07
    sub d                                         ; $453d: $92
    ld h, c                                       ; $453e: $61
    ei                                            ; $453f: $fb
    rla                                           ; $4540: $17
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    ld b, $07                                     ; $4543: $06 $07
    di                                            ; $4545: $f3
    ld e, l                                       ; $4546: $5d
    sbc h                                         ; $4547: $9c
    ld e, e                                       ; $4548: $5b
    add h                                         ; $4549: $84
    nop                                           ; $454a: $00
    add l                                         ; $454b: $85
    ld b, $ef                                     ; $454c: $06 $ef
    inc b                                         ; $454e: $04
    or $71                                        ; $454f: $f6 $71
    ld h, l                                       ; $4551: $65
    nop                                           ; $4552: $00
    or $71                                        ; $4553: $f6 $71
    rst $28                                       ; $4555: $ef
    inc b                                         ; $4556: $04
    or $71                                        ; $4557: $f6 $71
    ld b, d                                       ; $4559: $42
    ld bc, $0706                                  ; $455a: $01 $06 $07
    ld l, $51                                     ; $455d: $2e $51
    or $71                                        ; $455f: $f6 $71
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    ld b, $07                                     ; $4563: $06 $07
    ld a, [c]                                     ; $4565: $f2
    ld e, c                                       ; $4566: $59
    sbc h                                         ; $4567: $9c
    ld e, e                                       ; $4568: $5b
    add e                                         ; $4569: $83
    nop                                           ; $456a: $00
    rst $28                                       ; $456b: $ef
    inc b                                         ; $456c: $04
    call nz, $f601                                ; $456d: $c4 $01 $f6
    ld [hl], c                                    ; $4570: $71
    ld h, l                                       ; $4571: $65
    nop                                           ; $4572: $00
    db $f4                                        ; $4573: $f4
    dec e                                         ; $4574: $1d
    rst $28                                       ; $4575: $ef
    inc b                                         ; $4576: $04
    or $71                                        ; $4577: $f6 $71
    and b                                         ; $4579: $a0
    nop                                           ; $457a: $00
    ld l, $51                                     ; $457b: $2e $51
    call nz, $f601                                ; $457d: $c4 $01 $f6
    ld [hl], c                                    ; $4580: $71
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    ld b, l                                       ; $4583: $45
    ld [bc], a                                    ; $4584: $02
    or $71                                        ; $4585: $f6 $71
    ld e, h                                       ; $4587: $5c
    ld a, a                                       ; $4588: $7f
    and b                                         ; $4589: $a0
    nop                                           ; $458a: $00
    rst $28                                       ; $458b: $ef
    inc b                                         ; $458c: $04
    ld h, l                                       ; $458d: $65
    nop                                           ; $458e: $00
    or $71                                        ; $458f: $f6 $71
    ld h, l                                       ; $4591: $65
    nop                                           ; $4592: $00
    db $f4                                        ; $4593: $f4
    dec e                                         ; $4594: $1d
    rst $28                                       ; $4595: $ef
    inc b                                         ; $4596: $04
    or $71                                        ; $4597: $f6 $71
    and b                                         ; $4599: $a0
    nop                                           ; $459a: $00
    ld l, $51                                     ; $459b: $2e $51
    or $71                                        ; $459d: $f6 $71
    or $71                                        ; $459f: $f6 $71
    nop                                           ; $45a1: $00
    nop                                           ; $45a2: $00
    dec h                                         ; $45a3: $25
    ld [bc], a                                    ; $45a4: $02
    or $71                                        ; $45a5: $f6 $71
    ld e, h                                       ; $45a7: $5c
    ld a, a                                       ; $45a8: $7f
    ld h, l                                       ; $45a9: $65
    nop                                           ; $45aa: $00
    or $71                                        ; $45ab: $f6 $71
    rst $28                                       ; $45ad: $ef
    inc b                                         ; $45ae: $04
    ld e, h                                       ; $45af: $5c
    ld a, a                                       ; $45b0: $7f
    ld h, l                                       ; $45b1: $65
    nop                                           ; $45b2: $00
    db $f4                                        ; $45b3: $f4
    dec e                                         ; $45b4: $1d
    rst $28                                       ; $45b5: $ef
    inc b                                         ; $45b6: $04
    or $71                                        ; $45b7: $f6 $71
    ld l, $51                                     ; $45b9: $2e $51
    or $71                                        ; $45bb: $f6 $71
    rst $28                                       ; $45bd: $ef
    inc b                                         ; $45be: $04
    or $71                                        ; $45bf: $f6 $71
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    or $71                                        ; $45c3: $f6 $71
    and b                                         ; $45c5: $a0
    nop                                           ; $45c6: $00
    ld e, h                                       ; $45c7: $5c
    ld a, a                                       ; $45c8: $7f
    or $71                                        ; $45c9: $f6 $71
    or $71                                        ; $45cb: $f6 $71
    and b                                         ; $45cd: $a0
    nop                                           ; $45ce: $00
    ld e, h                                       ; $45cf: $5c
    ld a, a                                       ; $45d0: $7f
    ld h, l                                       ; $45d1: $65
    nop                                           ; $45d2: $00
    db $f4                                        ; $45d3: $f4
    dec e                                         ; $45d4: $1d
    rst $28                                       ; $45d5: $ef
    inc b                                         ; $45d6: $04
    or $71                                        ; $45d7: $f6 $71
    ld l, $51                                     ; $45d9: $2e $51
    or $71                                        ; $45db: $f6 $71
    rst $28                                       ; $45dd: $ef
    inc b                                         ; $45de: $04
    or $71                                        ; $45df: $f6 $71
    nop                                           ; $45e1: $00
    nop                                           ; $45e2: $00
    or $71                                        ; $45e3: $f6 $71
    ld l, $51                                     ; $45e5: $2e $51
    ld e, h                                       ; $45e7: $5c
    ld a, a                                       ; $45e8: $7f
    ld l, $51                                     ; $45e9: $2e $51
    or $71                                        ; $45eb: $f6 $71
    ld l, $51                                     ; $45ed: $2e $51
    ld e, h                                       ; $45ef: $5c
    ld a, a                                       ; $45f0: $7f
    ld h, l                                       ; $45f1: $65
    nop                                           ; $45f2: $00
    or $71                                        ; $45f3: $f6 $71
    rst $28                                       ; $45f5: $ef
    inc b                                         ; $45f6: $04
    ld l, $51                                     ; $45f7: $2e $51
    ld l, $51                                     ; $45f9: $2e $51
    or $71                                        ; $45fb: $f6 $71
    rst $28                                       ; $45fd: $ef
    inc b                                         ; $45fe: $04
    ld l, $51                                     ; $45ff: $2e $51
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    dec a                                         ; $4603: $3d
    ld c, a                                       ; $4604: $4f
    ldh [rNR32], a                                ; $4605: $e0 $1c
    or b                                          ; $4607: $b0
    dec e                                         ; $4608: $1d
    sbc c                                         ; $4609: $99
    ld l, $5e                                     ; $460a: $2e $5e
    ld d, a                                       ; $460c: $57
    ldh [rNR32], a                                ; $460d: $e0 $1c
    or b                                          ; $460f: $b0
    dec e                                         ; $4610: $1d
    sbc c                                         ; $4611: $99
    ld l, $5e                                     ; $4612: $2e $5e
    ld d, a                                       ; $4614: $57
    ldh [rNR32], a                                ; $4615: $e0 $1c
    or b                                          ; $4617: $b0
    dec e                                         ; $4618: $1d
    di                                            ; $4619: $f3
    add hl, de                                    ; $461a: $19
    ld e, [hl]                                    ; $461b: $5e
    ld d, a                                       ; $461c: $57
    sbc c                                         ; $461d: $99
    ld l, $b0                                     ; $461e: $2e $b0
    dec e                                         ; $4620: $1d
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    pop hl                                        ; $4623: $e1
    ld e, d                                       ; $4624: $5a
    ret                                           ; $4625: $c9


    dec h                                         ; $4626: $25
    inc e                                         ; $4627: $1c
    ld c, e                                       ; $4628: $4b
    ldh [rNR32], a                                ; $4629: $e0 $1c
    or b                                          ; $462b: $b0
    dec e                                         ; $462c: $1d
    add b                                         ; $462d: $80
    ld c, d                                       ; $462e: $4a
    sbc c                                         ; $462f: $99
    ld l, $b0                                     ; $4630: $2e $b0
    dec e                                         ; $4632: $1d
    sbc c                                         ; $4633: $99
    ld l, $80                                     ; $4634: $2e $80
    ld c, d                                       ; $4636: $4a
    sbc c                                         ; $4637: $99
    ld l, $f3                                     ; $4638: $2e $f3
    add hl, de                                    ; $463a: $19
    sbc c                                         ; $463b: $99
    ld l, $80                                     ; $463c: $2e $80
    ld c, d                                       ; $463e: $4a
    sbc c                                         ; $463f: $99
    ld l, $00                                     ; $4640: $2e $00
    nop                                           ; $4642: $00
    ld b, d                                       ; $4643: $42
    ld l, e                                       ; $4644: $6b
    inc a                                         ; $4645: $3c
    cpl                                           ; $4646: $2f
    pop bc                                        ; $4647: $c1
    dec l                                         ; $4648: $2d
    nop                                           ; $4649: $00
    inc c                                         ; $464a: $0c
    ld [hl+], a                                   ; $464b: $22
    ld h, a                                       ; $464c: $67
    push bc                                       ; $464d: $c5
    add hl, hl                                    ; $464e: $29
    sbc c                                         ; $464f: $99
    ld l, $e0                                     ; $4650: $2e $e0
    inc e                                         ; $4652: $1c
    or b                                          ; $4653: $b0
    dec e                                         ; $4654: $1d
    ld bc, $9936                                  ; $4655: $01 $36 $99
    ld l, $e0                                     ; $4658: $2e $e0
    inc e                                         ; $465a: $1c
    jp nc, $9919                                  ; $465b: $d2 $19 $99

    ld l, $c1                                     ; $465e: $2e $c1
    dec l                                         ; $4660: $2d
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    ld [hl+], a                                   ; $4663: $22
    ld h, e                                       ; $4664: $63
    ld c, b                                       ; $4665: $48
    dec e                                         ; $4666: $1d
    rst $18                                       ; $4667: $df
    ld b, $80                                     ; $4668: $06 $80
    inc d                                         ; $466a: $14
    ld bc, $b036                                  ; $466b: $01 $36 $b0
    dec e                                         ; $466e: $1d
    sbc c                                         ; $466f: $99
    ld l, $c1                                     ; $4670: $2e $c1
    dec l                                         ; $4672: $2d
    add e                                         ; $4673: $83
    ld [hl], e                                    ; $4674: $73
    add b                                         ; $4675: $80
    ld c, d                                       ; $4676: $4a
    sbc c                                         ; $4677: $99
    ld l, $20                                     ; $4678: $2e $20
    ld hl, $56e1                                  ; $467a: $21 $e1 $56
    jp nc, $991d                                  ; $467d: $d2 $1d $99

    ld l, $00                                     ; $4680: $2e $00
    nop                                           ; $4682: $00
    ld [hl+], a                                   ; $4683: $22
    ld h, e                                       ; $4684: $63
    pop bc                                        ; $4685: $c1
    dec l                                         ; $4686: $2d
    cp [hl]                                       ; $4687: $be
    dec bc                                        ; $4688: $0b
    jr nz, @+$12                                  ; $4689: $20 $10

    pop hl                                        ; $468b: $e1
    ld d, [hl]                                    ; $468c: $56
    ret                                           ; $468d: $c9


    dec h                                         ; $468e: $25
    sbc c                                         ; $468f: $99
    ld l, $80                                     ; $4690: $2e $80
    ld c, d                                       ; $4692: $4a
    cp [hl]                                       ; $4693: $be
    dec bc                                        ; $4694: $0b
    add e                                         ; $4695: $83
    ld [hl], e                                    ; $4696: $73
    sbc c                                         ; $4697: $99
    ld l, $20                                     ; $4698: $2e $20
    ld hl, $5ae1                                  ; $469a: $21 $e1 $5a
    push af                                       ; $469d: $f5
    dec d                                         ; $469e: $15
    cp [hl]                                       ; $469f: $be
    dec bc                                        ; $46a0: $0b
    nop                                           ; $46a1: $00
    nop                                           ; $46a2: $00
    ld [hl+], a                                   ; $46a3: $22
    ld h, e                                       ; $46a4: $63
    rst $18                                       ; $46a5: $df
    ld b, $c1                                     ; $46a6: $06 $c1
    dec l                                         ; $46a8: $2d
    jr nz, jr_0aa_46bb                            ; $46a9: $20 $10

    ld [bc], a                                    ; $46ab: $02
    ld e, a                                       ; $46ac: $5f
    pop bc                                        ; $46ad: $c1
    dec l                                         ; $46ae: $2d
    rst $38                                       ; $46af: $ff
    ld bc, $4a80                                  ; $46b0: $01 $80 $4a
    rst $38                                       ; $46b3: $ff
    ld bc, $7383                                  ; $46b4: $01 $83 $73
    cp [hl]                                       ; $46b7: $be
    dec bc                                        ; $46b8: $0b
    jr nz, jr_0aa_46dc                            ; $46b9: $20 $21

jr_0aa_46bb:
    ld h, e                                       ; $46bb: $63
    ld l, e                                       ; $46bc: $6b
    or b                                          ; $46bd: $b0
    dec e                                         ; $46be: $1d
    cp [hl]                                       ; $46bf: $be
    dec bc                                        ; $46c0: $0b
    nop                                           ; $46c1: $00
    nop                                           ; $46c2: $00
    ld [hl+], a                                   ; $46c3: $22
    ld h, e                                       ; $46c4: $63
    pop bc                                        ; $46c5: $c1
    dec l                                         ; $46c6: $2d
    rst $38                                       ; $46c7: $ff
    ld bc, $2561                                  ; $46c8: $01 $61 $25
    add b                                         ; $46cb: $80
    ld c, d                                       ; $46cc: $4a
    cp [hl]                                       ; $46cd: $be
    dec bc                                        ; $46ce: $0b
    add e                                         ; $46cf: $83
    ld [hl], e                                    ; $46d0: $73
    pop bc                                        ; $46d1: $c1
    dec l                                         ; $46d2: $2d
    add e                                         ; $46d3: $83
    ld [hl], e                                    ; $46d4: $73
    add b                                         ; $46d5: $80
    ld c, d                                       ; $46d6: $4a
    add e                                         ; $46d7: $83
    ld [hl], e                                    ; $46d8: $73
    add b                                         ; $46d9: $80
    inc d                                         ; $46da: $14
    add b                                         ; $46db: $80

jr_0aa_46dc:
    ld c, d                                       ; $46dc: $4a
    pop bc                                        ; $46dd: $c1
    dec l                                         ; $46de: $2d
    add e                                         ; $46df: $83
    ld [hl], e                                    ; $46e0: $73
    nop                                           ; $46e1: $00
    nop                                           ; $46e2: $00
    ld [hl+], a                                   ; $46e3: $22
    ld h, e                                       ; $46e4: $63
    pop bc                                        ; $46e5: $c1
    dec l                                         ; $46e6: $2d
    rst $18                                       ; $46e7: $df
    ld b, $80                                     ; $46e8: $06 $80
    ld c, d                                       ; $46ea: $4a
    rst $38                                       ; $46eb: $ff
    ld bc, $7383                                  ; $46ec: $01 $83 $73
    rst $18                                       ; $46ef: $df
    ld b, $e0                                     ; $46f0: $06 $e0
    inc e                                         ; $46f2: $1c
    add b                                         ; $46f3: $80
    ld c, d                                       ; $46f4: $4a
    pop bc                                        ; $46f5: $c1
    dec l                                         ; $46f6: $2d
    add e                                         ; $46f7: $83
    ld [hl], e                                    ; $46f8: $73
    add b                                         ; $46f9: $80
    inc d                                         ; $46fa: $14
    ld b, d                                       ; $46fb: $42
    ld l, e                                       ; $46fc: $6b
    rst $38                                       ; $46fd: $ff
    ld bc, $0bbe                                  ; $46fe: $01 $be $0b
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    ld [bc], a                                    ; $4703: $02
    ld e, a                                       ; $4704: $5f
    push bc                                       ; $4705: $c5
    add hl, hl                                    ; $4706: $29
    sbc c                                         ; $4707: $99
    ld l, $c1                                     ; $4708: $2e $c1
    dec l                                         ; $470a: $2d
    cp [hl]                                       ; $470b: $be
    dec bc                                        ; $470c: $0b
    add e                                         ; $470d: $83
    ld [hl], e                                    ; $470e: $73
    add b                                         ; $470f: $80
    ld c, d                                       ; $4710: $4a
    nop                                           ; $4711: $00
    inc c                                         ; $4712: $0c
    pop bc                                        ; $4713: $c1
    dec l                                         ; $4714: $2d
    ldh [rNR32], a                                ; $4715: $e0 $1c
    add b                                         ; $4717: $80
    ld c, d                                       ; $4718: $4a
    add b                                         ; $4719: $80
    inc d                                         ; $471a: $14
    ld [hl+], a                                   ; $471b: $22
    ld h, a                                       ; $471c: $67
    pop bc                                        ; $471d: $c1
    dec l                                         ; $471e: $2d
    rst $38                                       ; $471f: $ff
    ld bc, $0000                                  ; $4720: $01 $00 $00
    pop bc                                        ; $4723: $c1
    ld d, [hl]                                    ; $4724: $56
    call nz, Call_000_1c29                        ; $4725: $c4 $29 $1c
    ld c, e                                       ; $4728: $4b
    nop                                           ; $4729: $00
    inc c                                         ; $472a: $0c
    add b                                         ; $472b: $80
    ld c, d                                       ; $472c: $4a
    pop bc                                        ; $472d: $c1
    dec l                                         ; $472e: $2d
    add e                                         ; $472f: $83
    ld [hl], e                                    ; $4730: $73
    nop                                           ; $4731: $00
    inc c                                         ; $4732: $0c
    pop bc                                        ; $4733: $c1
    dec l                                         ; $4734: $2d
    or b                                          ; $4735: $b0
    dec e                                         ; $4736: $1d
    sbc c                                         ; $4737: $99
    ld l, $40                                     ; $4738: $2e $40
    db $10                                        ; $473a: $10
    ld [bc], a                                    ; $473b: $02
    ld e, a                                       ; $473c: $5f
    pop bc                                        ; $473d: $c1
    dec l                                         ; $473e: $2d
    cp [hl]                                       ; $473f: $be
    dec bc                                        ; $4740: $0b
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    pop bc                                        ; $4743: $c1
    dec l                                         ; $4744: $2d
    ld h, $1d                                     ; $4745: $26 $1d
    db $db                                        ; $4747: $db
    ld a, $40                                     ; $4748: $3e $40
    db $10                                        ; $474a: $10
    ld bc, $b03a                                  ; $474b: $01 $3a $b0
    dec e                                         ; $474e: $1d
    sbc c                                         ; $474f: $99
    ld l, $00                                     ; $4750: $2e $00
    inc c                                         ; $4752: $0c
    or b                                          ; $4753: $b0
    dec e                                         ; $4754: $1d
    ldh [rNR32], a                                ; $4755: $e0 $1c
    sbc c                                         ; $4757: $99
    ld l, $00                                     ; $4758: $2e $00
    inc c                                         ; $475a: $0c
    add b                                         ; $475b: $80
    ld c, d                                       ; $475c: $4a
    pop bc                                        ; $475d: $c1
    dec l                                         ; $475e: $2d
    add e                                         ; $475f: $83
    ld [hl], e                                    ; $4760: $73
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    sbc c                                         ; $4763: $99
    ld l, $b0                                     ; $4764: $2e $b0
    dec e                                         ; $4766: $1d
    ld e, [hl]                                    ; $4767: $5e
    ld d, a                                       ; $4768: $57
    nop                                           ; $4769: $00
    inc c                                         ; $476a: $0c
    or b                                          ; $476b: $b0
    dec e                                         ; $476c: $1d
    ldh [rNR32], a                                ; $476d: $e0 $1c
    sbc c                                         ; $476f: $99
    ld l, $40                                     ; $4770: $2e $40
    db $10                                        ; $4772: $10
    pop bc                                        ; $4773: $c1
    dec l                                         ; $4774: $2d
    or b                                          ; $4775: $b0
    dec e                                         ; $4776: $1d
    sbc c                                         ; $4777: $99
    ld l, $40                                     ; $4778: $2e $40
    db $10                                        ; $477a: $10
    ld bc, $c15f                                  ; $477b: $01 $5f $c1
    dec l                                         ; $477e: $2d
    cp [hl]                                       ; $477f: $be
    dec bc                                        ; $4780: $0b
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    sbc c                                         ; $4783: $99
    ld l, $5e                                     ; $4784: $2e $5e
    ld d, a                                       ; $4786: $57
    ldh [rNR32], a                                ; $4787: $e0 $1c
    sbc c                                         ; $4789: $99
    ld l, $99                                     ; $478a: $2e $99
    ld l, $5e                                     ; $478c: $2e $5e
    ld d, a                                       ; $478e: $57
    ldh [rNR32], a                                ; $478f: $e0 $1c
    nop                                           ; $4791: $00
    inc c                                         ; $4792: $0c
    ld bc, $b036                                  ; $4793: $01 $36 $b0
    dec e                                         ; $4796: $1d
    sbc c                                         ; $4797: $99
    ld l, $40                                     ; $4798: $2e $40
    db $10                                        ; $479a: $10
    ld b, d                                       ; $479b: $42
    ld l, e                                       ; $479c: $6b
    push bc                                       ; $479d: $c5
    add hl, hl                                    ; $479e: $29
    rst $38                                       ; $479f: $ff
    ld bc, $0000                                  ; $47a0: $01 $00 $00
    sbc c                                         ; $47a3: $99
    ld l, $5e                                     ; $47a4: $2e $5e
    ld d, a                                       ; $47a6: $57
    rst $38                                       ; $47a7: $ff
    ld bc, $2e99                                  ; $47a8: $01 $99 $2e
    sbc c                                         ; $47ab: $99
    ld l, $5e                                     ; $47ac: $2e $5e
    ld d, a                                       ; $47ae: $57
    rst $38                                       ; $47af: $ff
    ld bc, $1040                                  ; $47b0: $01 $40 $10
    ld [bc], a                                    ; $47b3: $02
    ld e, a                                       ; $47b4: $5f
    pop bc                                        ; $47b5: $c1
    dec l                                         ; $47b6: $2d
    sbc c                                         ; $47b7: $99
    ld l, $40                                     ; $47b8: $2e $40
    db $10                                        ; $47ba: $10
    ld b, d                                       ; $47bb: $42
    ld l, e                                       ; $47bc: $6b
    ret                                           ; $47bd: $c9


    dec h                                         ; $47be: $25
    ld sp, hl                                     ; $47bf: $f9
    dec c                                         ; $47c0: $0d
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    sbc c                                         ; $47c3: $99
    ld l, $5e                                     ; $47c4: $2e $5e
    ld d, a                                       ; $47c6: $57
    ld sp, hl                                     ; $47c7: $f9
    dec c                                         ; $47c8: $0d
    sbc c                                         ; $47c9: $99
    ld l, $99                                     ; $47ca: $2e $99
    ld l, $5e                                     ; $47cc: $2e $5e
    ld d, a                                       ; $47ce: $57
    ld sp, hl                                     ; $47cf: $f9
    dec c                                         ; $47d0: $0d
    ld h, b                                       ; $47d1: $60
    inc d                                         ; $47d2: $14
    ld hl, $b03e                                  ; $47d3: $21 $3e $b0
    dec e                                         ; $47d6: $1d
    sbc c                                         ; $47d7: $99
    ld l, $40                                     ; $47d8: $2e $40
    db $10                                        ; $47da: $10
    ld h, l                                       ; $47db: $65

Jump_0aa_47dc:
    ld a, $c5                                     ; $47dc: $3e $c5
    add hl, hl                                    ; $47de: $29
    add e                                         ; $47df: $83
    ld [hl], e                                    ; $47e0: $73
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    di                                            ; $47e3: $f3
    add hl, de                                    ; $47e4: $19
    ld e, [hl]                                    ; $47e5: $5e
    ld d, a                                       ; $47e6: $57
    sbc c                                         ; $47e7: $99
    ld l, $f3                                     ; $47e8: $2e $f3
    add hl, de                                    ; $47ea: $19
    sbc c                                         ; $47eb: $99
    ld l, $5e                                     ; $47ec: $2e $5e
    ld d, a                                       ; $47ee: $57
    sbc c                                         ; $47ef: $99
    ld l, $00                                     ; $47f0: $2e $00
    inc c                                         ; $47f2: $0c
    or b                                          ; $47f3: $b0
    dec e                                         ; $47f4: $1d
    sbc c                                         ; $47f5: $99
    ld l, $f3                                     ; $47f6: $2e $f3
    add hl, de                                    ; $47f8: $19
    nop                                           ; $47f9: $00
    inc c                                         ; $47fa: $0c
    pop bc                                        ; $47fb: $c1
    dec l                                         ; $47fc: $2d
    jp nc, $e019                                  ; $47fd: $d2 $19 $e0

    inc e                                         ; $4800: $1c
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    sbc a                                         ; $4803: $9f
    ld [bc], a                                    ; $4804: $02
    rst $18                                       ; $4805: $df
    daa                                           ; $4806: $27
    sbc a                                         ; $4807: $9f
    ld [bc], a                                    ; $4808: $02
    ld [c], a                                     ; $4809: $e2
    inc d                                         ; $480a: $14
    db $e3                                        ; $480b: $e3
    ld e, d                                       ; $480c: $5a
    ld e, a                                       ; $480d: $5f
    rla                                           ; $480e: $17
    or e                                          ; $480f: $b3
    ld bc, $029f                                  ; $4810: $01 $9f $02
    rst $18                                       ; $4813: $df
    daa                                           ; $4814: $27
    ld e, a                                       ; $4815: $5f
    rla                                           ; $4816: $17
    or e                                          ; $4817: $b3
    ld bc, $01b3                                  ; $4818: $01 $b3 $01
    rst $18                                       ; $481b: $df
    daa                                           ; $481c: $27
    sbc a                                         ; $481d: $9f
    ld [bc], a                                    ; $481e: $02
    or e                                          ; $481f: $b3
    ld bc, $0000                                  ; $4820: $01 $00 $00
    sbc a                                         ; $4823: $9f
    ld [bc], a                                    ; $4824: $02
    rst $18                                       ; $4825: $df
    daa                                           ; $4826: $27
    inc d                                         ; $4827: $14
    ld h, e                                       ; $4828: $63
    ld [hl+], a                                   ; $4829: $22
    dec e                                         ; $482a: $1d
    add e                                         ; $482b: $83
    ld [hl], e                                    ; $482c: $73
    or e                                          ; $482d: $b3
    ld bc, $029f                                  ; $482e: $01 $9f $02
    ld h, e                                       ; $4831: $63
    ld [$01b3], sp                                ; $4832: $08 $b3 $01
    ld [bc], a                                    ; $4835: $02
    ld a, [hl-]                                   ; $4836: $3a
    sbc a                                         ; $4837: $9f
    ld [bc], a                                    ; $4838: $02
    or e                                          ; $4839: $b3
    ld bc, $029f                                  ; $483a: $01 $9f $02
    ld [bc], a                                    ; $483d: $02
    ld a, [hl-]                                   ; $483e: $3a
    sbc a                                         ; $483f: $9f
    ld [bc], a                                    ; $4840: $02
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    add e                                         ; $4843: $83
    ld [hl], e                                    ; $4844: $73
    sbc [hl]                                      ; $4845: $9e
    ld a, [bc]                                    ; $4846: $0a
    rst $18                                       ; $4847: $df
    daa                                           ; $4848: $27
    ld h, e                                       ; $4849: $63
    ld [$01b3], sp                                ; $484a: $08 $b3 $01
    ld [$9f04], a                                 ; $484d: $ea $04 $9f
    ld [bc], a                                    ; $4850: $02
    jp nz, $e310                                  ; $4851: $c2 $10 $e3

    ld e, d                                       ; $4854: $5a
    ld [$9f04], a                                 ; $4855: $ea $04 $9f
    ld [bc], a                                    ; $4858: $02
    jp nz, $b314                                  ; $4859: $c2 $14 $b3

    ld bc, $4242                                  ; $485c: $01 $42 $42
    sbc a                                         ; $485f: $9f
    ld [bc], a                                    ; $4860: $02
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    add e                                         ; $4863: $83
    ld [hl], e                                    ; $4864: $73
    pop bc                                        ; $4865: $c1
    dec l                                         ; $4866: $2d
    rst $18                                       ; $4867: $df
    ld a, [bc]                                    ; $4868: $0a
    ld [$9f04], a                                 ; $4869: $ea $04 $9f
    ld [bc], a                                    ; $486c: $02
    or e                                          ; $486d: $b3
    ld bc, $0adf                                  ; $486e: $01 $df $0a
    jp nz, $8310                                  ; $4871: $c2 $10 $83

    ld [hl], e                                    ; $4874: $73
    or e                                          ; $4875: $b3
    ld bc, $0ebe                                  ; $4876: $01 $be $0e
    and e                                         ; $4879: $a3
    db $10                                        ; $487a: $10
    db $e3                                        ; $487b: $e3
    ld e, d                                       ; $487c: $5a
    or e                                          ; $487d: $b3
    ld bc, $029f                                  ; $487e: $01 $9f $02
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    add e                                         ; $4883: $83
    ld [hl], e                                    ; $4884: $73
    jp z, $ff19                                   ; $4885: $ca $19 $ff

    ld c, $01                                     ; $4888: $0e $01
    add hl, de                                    ; $488a: $19
    add e                                         ; $488b: $83
    ld [hl], e                                    ; $488c: $73
    sbc a                                         ; $488d: $9f
    ld [bc], a                                    ; $488e: $02
    inc d                                         ; $488f: $14
    ld h, e                                       ; $4890: $63
    and l                                         ; $4891: $a5
    ld [$7383], sp                                ; $4892: $08 $83 $73
    pop bc                                        ; $4895: $c1
    dec l                                         ; $4896: $2d
    cp l                                          ; $4897: $bd
    ld c, $63                                     ; $4898: $0e $63
    ld [$01b3], sp                                ; $489a: $08 $b3 $01
    sbc a                                         ; $489d: $9f
    ld [bc], a                                    ; $489e: $02
    cp l                                          ; $489f: $bd
    ld c, $00                                     ; $48a0: $0e $00
    nop                                           ; $48a2: $00
    add e                                         ; $48a3: $83
    ld [hl], e                                    ; $48a4: $73
    ld a, [hl+]                                   ; $48a5: $2a
    add hl, bc                                    ; $48a6: $09
    rst $38                                       ; $48a7: $ff
    ld c, $83                                     ; $48a8: $0e $83
    inc c                                         ; $48aa: $0c
    ld b, d                                       ; $48ab: $42
    ld b, d                                       ; $48ac: $42
    sbc a                                         ; $48ad: $9f
    ld [bc], a                                    ; $48ae: $02
    add e                                         ; $48af: $83
    ld [hl], e                                    ; $48b0: $73
    jp $8310                                      ; $48b1: $c3 $10 $83


    ld [hl], e                                    ; $48b4: $73
    or e                                          ; $48b5: $b3
    ld bc, $16bd                                  ; $48b6: $01 $bd $16
    or e                                          ; $48b9: $b3
    ld bc, $029f                                  ; $48ba: $01 $9f $02
    or e                                          ; $48bd: $b3
    ld bc, $16bd                                  ; $48be: $01 $bd $16
    nop                                           ; $48c1: $00
    nop                                           ; $48c2: $00
    db $e3                                        ; $48c3: $e3
    ld e, d                                       ; $48c4: $5a
    rst $38                                       ; $48c5: $ff
    ld c, $b3                                     ; $48c6: $0e $b3
    ld bc, $10c4                                  ; $48c8: $01 $c4 $10
    inc hl                                        ; $48cb: $23
    ld h, e                                       ; $48cc: $63
    or e                                          ; $48cd: $b3
    ld bc, $029f                                  ; $48ce: $01 $9f $02
    db $e3                                        ; $48d1: $e3
    inc d                                         ; $48d2: $14
    add e                                         ; $48d3: $83
    ld [hl], e                                    ; $48d4: $73
    or e                                          ; $48d5: $b3
    ld bc, $029f                                  ; $48d6: $01 $9f $02
    or e                                          ; $48d9: $b3
    ld bc, $029f                                  ; $48da: $01 $9f $02
    or e                                          ; $48dd: $b3
    ld bc, $029f                                  ; $48de: $01 $9f $02
    nop                                           ; $48e1: $00
    nop                                           ; $48e2: $00
    ld b, d                                       ; $48e3: $42
    ld b, d                                       ; $48e4: $42
    ld b, $11                                     ; $48e5: $06 $11
    rst $38                                       ; $48e7: $ff
    ld c, $c4                                     ; $48e8: $0e $c4
    db $10                                        ; $48ea: $10
    inc hl                                        ; $48eb: $23
    ld h, e                                       ; $48ec: $63
    or e                                          ; $48ed: $b3
    ld bc, $029f                                  ; $48ee: $01 $9f $02
    jp $8310                                      ; $48f1: $c3 $10 $83


    ld [hl], e                                    ; $48f4: $73
    or e                                          ; $48f5: $b3
    ld bc, $029f                                  ; $48f6: $01 $9f $02
    add l                                         ; $48f9: $85
    ld [$01b3], sp                                ; $48fa: $08 $b3 $01
    ld b, d                                       ; $48fd: $42
    ld b, d                                       ; $48fe: $42
    sbc a                                         ; $48ff: $9f
    ld [bc], a                                    ; $4900: $02
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    rst $18                                       ; $4903: $df
    ld a, [bc]                                    ; $4904: $0a
    ld b, c                                       ; $4905: $41
    dec e                                         ; $4906: $1d
    or e                                          ; $4907: $b3
    ld bc, $0c83                                  ; $4908: $01 $83 $0c
    inc hl                                        ; $490b: $23
    ld h, e                                       ; $490c: $63
    pop bc                                        ; $490d: $c1
    dec l                                         ; $490e: $2d
    sbc a                                         ; $490f: $9f
    ld [bc], a                                    ; $4910: $02
    and e                                         ; $4911: $a3
    inc c                                         ; $4912: $0c
    db $e3                                        ; $4913: $e3
    ld e, d                                       ; $4914: $5a
    or e                                          ; $4915: $b3
    ld bc, $029f                                  ; $4916: $01 $9f $02
    add l                                         ; $4919: $85
    ld [$7383], sp                                ; $491a: $08 $83 $73
    or e                                          ; $491d: $b3
    ld bc, $0ebe                                  ; $491e: $01 $be $0e
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    or e                                          ; $4923: $b3
    ld bc, $1104                                  ; $4924: $01 $04 $11
    sbc a                                         ; $4927: $9f
    ld [bc], a                                    ; $4928: $02
    jp $a210                                      ; $4929: $c3 $10 $a2


    ld d, d                                       ; $492c: $52
    or e                                          ; $492d: $b3
    ld bc, $029f                                  ; $492e: $01 $9f $02
    and d                                         ; $4931: $a2
    db $10                                        ; $4932: $10
    or e                                          ; $4933: $b3
    ld bc, $2dc1                                  ; $4934: $01 $c1 $2d
    sbc a                                         ; $4937: $9f
    ld [bc], a                                    ; $4938: $02
    push bc                                       ; $4939: $c5
    inc c                                         ; $493a: $0c
    add e                                         ; $493b: $83
    ld [hl], e                                    ; $493c: $73
    or e                                          ; $493d: $b3
    ld bc, $0ebd                                  ; $493e: $01 $bd $0e
    nop                                           ; $4941: $00
    nop                                           ; $4942: $00
    or e                                          ; $4943: $b3
    ld bc, $1106                                  ; $4944: $01 $06 $11
    sbc a                                         ; $4947: $9f
    ld [bc], a                                    ; $4948: $02
    and d                                         ; $4949: $a2
    db $10                                        ; $494a: $10
    sbc a                                         ; $494b: $9f
    ld [bc], a                                    ; $494c: $02
    pop hl                                        ; $494d: $e1
    ld sp, $04ea                                  ; $494e: $31 $ea $04
    and l                                         ; $4951: $a5
    ld [$7383], sp                                ; $4952: $08 $83 $73
    pop bc                                        ; $4955: $c1
    dec l                                         ; $4956: $2d
    sbc a                                         ; $4957: $9f
    ld [bc], a                                    ; $4958: $02
    add h                                         ; $4959: $84
    ld [$01b3], sp                                ; $495a: $08 $b3 $01
    pop bc                                        ; $495d: $c1
    dec l                                         ; $495e: $2d
    sbc a                                         ; $495f: $9f
    ld [bc], a                                    ; $4960: $02
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    cp a                                          ; $4963: $bf
    ld b, $c1                                     ; $4964: $06 $c1
    dec l                                         ; $4966: $2d
    or e                                          ; $4967: $b3
    ld bc, $0c83                                  ; $4968: $01 $83 $0c
    or e                                          ; $496b: $b3
    ld bc, $2dc1                                  ; $496c: $01 $c1 $2d
    sbc a                                         ; $496f: $9f
    ld [bc], a                                    ; $4970: $02
    ld h, e                                       ; $4971: $63
    ld [$52a2], sp                                ; $4972: $08 $a2 $52
    sbc a                                         ; $4975: $9f
    ld [bc], a                                    ; $4976: $02
    or e                                          ; $4977: $b3
    ld bc, $0863                                  ; $4978: $01 $63 $08
    or e                                          ; $497b: $b3
    ld bc, $029f                                  ; $497c: $01 $9f $02
    or e                                          ; $497f: $b3
    ld bc, $0000                                  ; $4980: $01 $00 $00
    sbc a                                         ; $4983: $9f
    ld [bc], a                                    ; $4984: $02
    pop bc                                        ; $4985: $c1
    dec l                                         ; $4986: $2d
    rst $18                                       ; $4987: $df
    daa                                           ; $4988: $27
    add e                                         ; $4989: $83
    inc c                                         ; $498a: $0c
    or e                                          ; $498b: $b3
    ld bc, $04ea                                  ; $498c: $01 $ea $04
    sbc a                                         ; $498f: $9f
    ld [bc], a                                    ; $4990: $02
    ld h, e                                       ; $4991: $63
    ld [$4242], sp                                ; $4992: $08 $42 $42
    sbc a                                         ; $4995: $9f
    ld [bc], a                                    ; $4996: $02
    add e                                         ; $4997: $83
    ld [hl], e                                    ; $4998: $73
    ld h, e                                       ; $4999: $63
    ld [$01b3], sp                                ; $499a: $08 $b3 $01
    ld [$9f04], a                                 ; $499d: $ea $04 $9f
    ld [bc], a                                    ; $49a0: $02
    nop                                           ; $49a1: $00
    nop                                           ; $49a2: $00
    sbc a                                         ; $49a3: $9f
    ld [bc], a                                    ; $49a4: $02
    rst $18                                       ; $49a5: $df
    daa                                           ; $49a6: $27
    sbc a                                         ; $49a7: $9f
    ld [bc], a                                    ; $49a8: $02
    or e                                          ; $49a9: $b3
    ld bc, $029f                                  ; $49aa: $01 $9f $02
    rst $18                                       ; $49ad: $df
    daa                                           ; $49ae: $27
    sbc a                                         ; $49af: $9f
    ld [bc], a                                    ; $49b0: $02
    and d                                         ; $49b1: $a2
    db $10                                        ; $49b2: $10
    add e                                         ; $49b3: $83
    ld [hl], e                                    ; $49b4: $73
    or e                                          ; $49b5: $b3
    ld bc, $029f                                  ; $49b6: $01 $9f $02
    ld h, e                                       ; $49b9: $63
    ld [$01b3], sp                                ; $49ba: $08 $b3 $01
    ld [$9f04], a                                 ; $49bd: $ea $04 $9f
    ld [bc], a                                    ; $49c0: $02
    nop                                           ; $49c1: $00
    nop                                           ; $49c2: $00
    sbc a                                         ; $49c3: $9f
    ld [bc], a                                    ; $49c4: $02
    rst $18                                       ; $49c5: $df
    daa                                           ; $49c6: $27
    sbc a                                         ; $49c7: $9f
    ld [bc], a                                    ; $49c8: $02
    sbc a                                         ; $49c9: $9f
    ld [bc], a                                    ; $49ca: $02
    sbc a                                         ; $49cb: $9f
    ld [bc], a                                    ; $49cc: $02
    rst $18                                       ; $49cd: $df
    daa                                           ; $49ce: $27
    sbc a                                         ; $49cf: $9f
    ld [bc], a                                    ; $49d0: $02
    ld h, e                                       ; $49d1: $63
    ld [$029f], sp                                ; $49d2: $08 $9f $02
    pop bc                                        ; $49d5: $c1
    dec l                                         ; $49d6: $2d
    ld bc, $b319                                  ; $49d7: $01 $19 $b3
    ld bc, $029f                                  ; $49da: $01 $9f $02
    pop bc                                        ; $49dd: $c1
    dec l                                         ; $49de: $2d
    ld bc, $0019                                  ; $49df: $01 $19 $00
    nop                                           ; $49e2: $00
    sbc a                                         ; $49e3: $9f
    ld [bc], a                                    ; $49e4: $02
    or e                                          ; $49e5: $b3
    ld bc, $27df                                  ; $49e6: $01 $df $27
    or e                                          ; $49e9: $b3
    ld bc, $029f                                  ; $49ea: $01 $9f $02
    or e                                          ; $49ed: $b3
    ld bc, $27df                                  ; $49ee: $01 $df $27
    add e                                         ; $49f1: $83
    inc c                                         ; $49f2: $0c
    or e                                          ; $49f3: $b3
    ld bc, $04ea                                  ; $49f4: $01 $ea $04
    sbc a                                         ; $49f7: $9f
    ld [bc], a                                    ; $49f8: $02
    or e                                          ; $49f9: $b3
    ld bc, $029f                                  ; $49fa: $01 $9f $02
    ld [$9f04], a                                 ; $49fd: $ea $04 $9f
    ld [bc], a                                    ; $4a00: $02
    nop                                           ; $4a01: $00
    nop                                           ; $4a02: $00
    ld a, [hl]                                    ; $4a03: $7e
    rra                                           ; $4a04: $1f
    rst $38                                       ; $4a05: $ff
    ld a, a                                       ; $4a06: $7f
    ld a, [hl]                                    ; $4a07: $7e
    rra                                           ; $4a08: $1f
    ld a, [hl+]                                   ; $4a09: $2a
    inc a                                         ; $4a0a: $3c
    ld a, [hl]                                    ; $4a0b: $7e
    rra                                           ; $4a0c: $1f
    xor [hl]                                      ; $4a0d: $ae
    dec d                                         ; $4a0e: $15
    rst $38                                       ; $4a0f: $ff
    ld a, a                                       ; $4a10: $7f
    jr z, jr_0aa_4a4f                             ; $4a11: $28 $3c

    ld a, [hl]                                    ; $4a13: $7e
    rra                                           ; $4a14: $1f
    xor [hl]                                      ; $4a15: $ae
    dec d                                         ; $4a16: $15
    rst $38                                       ; $4a17: $ff
    ld a, a                                       ; $4a18: $7f
    add hl, de                                    ; $4a19: $19
    add hl, bc                                    ; $4a1a: $09
    ld a, [hl]                                    ; $4a1b: $7e
    rra                                           ; $4a1c: $1f
    rst $38                                       ; $4a1d: $ff
    ld a, a                                       ; $4a1e: $7f
    rst $38                                       ; $4a1f: $ff
    ld a, a                                       ; $4a20: $7f
    nop                                           ; $4a21: $00
    nop                                           ; $4a22: $00
    ld a, [hl]                                    ; $4a23: $7e
    rra                                           ; $4a24: $1f
    rst $38                                       ; $4a25: $ff
    ld a, a                                       ; $4a26: $7f
    rst $38                                       ; $4a27: $ff
    ld a, a                                       ; $4a28: $7f
    jr z, jr_0aa_4a5f                             ; $4a29: $28 $34

    ld a, h                                       ; $4a2b: $7c
    ld a, [hl]                                    ; $4a2c: $7e
    ld d, d                                       ; $4a2d: $52
    ld b, c                                       ; $4a2e: $41
    ld a, [hl]                                    ; $4a2f: $7e
    rra                                           ; $4a30: $1f
    daa                                           ; $4a31: $27
    jr nc, jr_0aa_4ab2                            ; $4a32: $30 $7e

    rra                                           ; $4a34: $1f
    xor [hl]                                      ; $4a35: $ae
    dec d                                         ; $4a36: $15
    ld c, [hl]                                    ; $4a37: $4e
    ld c, b                                       ; $4a38: $48
    add hl, de                                    ; $4a39: $19
    add hl, bc                                    ; $4a3a: $09
    ld a, [hl]                                    ; $4a3b: $7e
    rra                                           ; $4a3c: $1f
    xor [hl]                                      ; $4a3d: $ae
    dec d                                         ; $4a3e: $15
    ld c, [hl]                                    ; $4a3f: $4e
    ld c, b                                       ; $4a40: $48
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00
    ld a, [hl]                                    ; $4a43: $7e
    rra                                           ; $4a44: $1f
    rst $38                                       ; $4a45: $ff
    ld a, a                                       ; $4a46: $7f
    ld c, [hl]                                    ; $4a47: $4e
    ld c, b                                       ; $4a48: $48
    inc b                                         ; $4a49: $04
    inc e                                         ; $4a4a: $1c
    ld a, h                                       ; $4a4b: $7c
    ld a, [hl]                                    ; $4a4c: $7e
    or c                                          ; $4a4d: $b1
    ld d, h                                       ; $4a4e: $54

jr_0aa_4a4f:
    ld a, [hl]                                    ; $4a4f: $7e
    rra                                           ; $4a50: $1f
    add hl, hl                                    ; $4a51: $29
    jr c, jr_0aa_4ad0                             ; $4a52: $38 $7c

    ld a, [hl]                                    ; $4a54: $7e
    xor [hl]                                      ; $4a55: $ae
    dec d                                         ; $4a56: $15
    ld a, [hl]                                    ; $4a57: $7e
    rra                                           ; $4a58: $1f
    add hl, de                                    ; $4a59: $19
    add hl, bc                                    ; $4a5a: $09
    ld a, [hl]                                    ; $4a5b: $7e
    rra                                           ; $4a5c: $1f
    xor [hl]                                      ; $4a5d: $ae
    dec d                                         ; $4a5e: $15

jr_0aa_4a5f:
    ld a, [hl]                                    ; $4a5f: $7e
    rra                                           ; $4a60: $1f
    nop                                           ; $4a61: $00
    nop                                           ; $4a62: $00
    ld a, [hl]                                    ; $4a63: $7e
    rra                                           ; $4a64: $1f
    rst $38                                       ; $4a65: $ff
    ld a, a                                       ; $4a66: $7f
    ld a, [hl]                                    ; $4a67: $7e
    rra                                           ; $4a68: $1f
    daa                                           ; $4a69: $27
    inc l                                         ; $4a6a: $2c
    ld a, h                                       ; $4a6b: $7c
    ld a, [hl]                                    ; $4a6c: $7e
    ld d, d                                       ; $4a6d: $52
    ld b, c                                       ; $4a6e: $41
    ld a, [hl]                                    ; $4a6f: $7e
    rra                                           ; $4a70: $1f
    ld a, [hl+]                                   ; $4a71: $2a
    ld b, b                                       ; $4a72: $40
    ld a, h                                       ; $4a73: $7c
    ld a, [hl]                                    ; $4a74: $7e
    ld d, d                                       ; $4a75: $52
    ld b, c                                       ; $4a76: $41
    ld a, [hl]                                    ; $4a77: $7e
    rra                                           ; $4a78: $1f
    add hl, de                                    ; $4a79: $19
    add hl, bc                                    ; $4a7a: $09
    ld a, [hl]                                    ; $4a7b: $7e
    rra                                           ; $4a7c: $1f
    ld d, d                                       ; $4a7d: $52
    ld b, c                                       ; $4a7e: $41
    ld a, [hl]                                    ; $4a7f: $7e
    rra                                           ; $4a80: $1f
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    ld a, [hl]                                    ; $4a83: $7e
    rra                                           ; $4a84: $1f
    rst $38                                       ; $4a85: $ff
    ld a, a                                       ; $4a86: $7f
    xor [hl]                                      ; $4a87: $ae
    dec d                                         ; $4a88: $15
    ld c, e                                       ; $4a89: $4b
    inc a                                         ; $4a8a: $3c
    ld a, h                                       ; $4a8b: $7c
    ld a, [hl]                                    ; $4a8c: $7e
    inc sp                                        ; $4a8d: $33
    ld d, l                                       ; $4a8e: $55
    ld a, [hl]                                    ; $4a8f: $7e
    rra                                           ; $4a90: $1f
    ld c, e                                       ; $4a91: $4b
    ld b, b                                       ; $4a92: $40
    ld a, h                                       ; $4a93: $7c
    ld a, [hl]                                    ; $4a94: $7e
    inc sp                                        ; $4a95: $33
    ld d, c                                       ; $4a96: $51
    ld a, [hl]                                    ; $4a97: $7e
    rra                                           ; $4a98: $1f
    add hl, de                                    ; $4a99: $19
    add hl, bc                                    ; $4a9a: $09
    ld a, [hl]                                    ; $4a9b: $7e
    rra                                           ; $4a9c: $1f
    inc sp                                        ; $4a9d: $33
    ld d, c                                       ; $4a9e: $51
    ld a, [hl]                                    ; $4a9f: $7e
    rra                                           ; $4aa0: $1f
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    ld a, [hl]                                    ; $4aa3: $7e
    rra                                           ; $4aa4: $1f
    xor [hl]                                      ; $4aa5: $ae
    dec d                                         ; $4aa6: $15
    rst $38                                       ; $4aa7: $ff
    ld a, a                                       ; $4aa8: $7f
    ld h, $2c                                     ; $4aa9: $26 $2c
    ld a, h                                       ; $4aab: $7c
    ld a, [hl]                                    ; $4aac: $7e
    ld c, [hl]                                    ; $4aad: $4e
    ld c, b                                       ; $4aae: $48
    inc d                                         ; $4aaf: $14
    ld h, c                                       ; $4ab0: $61
    daa                                           ; $4ab1: $27

jr_0aa_4ab2:
    inc [hl]                                      ; $4ab2: $34
    ld a, h                                       ; $4ab3: $7c
    ld a, [hl]                                    ; $4ab4: $7e
    ld c, [hl]                                    ; $4ab5: $4e
    ld c, b                                       ; $4ab6: $48
    inc d                                         ; $4ab7: $14
    ld h, c                                       ; $4ab8: $61
    add hl, de                                    ; $4ab9: $19
    add hl, bc                                    ; $4aba: $09
    ld a, [hl]                                    ; $4abb: $7e
    rra                                           ; $4abc: $1f
    ld c, [hl]                                    ; $4abd: $4e
    ld c, b                                       ; $4abe: $48
    inc d                                         ; $4abf: $14
    ld h, c                                       ; $4ac0: $61
    nop                                           ; $4ac1: $00
    nop                                           ; $4ac2: $00
    ld a, [hl]                                    ; $4ac3: $7e
    rra                                           ; $4ac4: $1f
    xor [hl]                                      ; $4ac5: $ae
    dec d                                         ; $4ac6: $15
    rst $38                                       ; $4ac7: $ff
    ld a, a                                       ; $4ac8: $7f
    daa                                           ; $4ac9: $27
    inc [hl]                                      ; $4aca: $34
    ld a, h                                       ; $4acb: $7c
    ld a, [hl]                                    ; $4acc: $7e
    ld c, [hl]                                    ; $4acd: $4e
    ld c, b                                       ; $4ace: $48
    inc d                                         ; $4acf: $14

jr_0aa_4ad0:
    ld h, c                                       ; $4ad0: $61
    dec h                                         ; $4ad1: $25
    inc h                                         ; $4ad2: $24
    ld a, h                                       ; $4ad3: $7c
    ld a, [hl]                                    ; $4ad4: $7e
    ld c, [hl]                                    ; $4ad5: $4e
    ld c, b                                       ; $4ad6: $48
    inc d                                         ; $4ad7: $14
    ld h, c                                       ; $4ad8: $61
    xor [hl]                                      ; $4ad9: $ae
    dec d                                         ; $4ada: $15
    ld a, [hl]                                    ; $4adb: $7e
    rra                                           ; $4adc: $1f
    add hl, de                                    ; $4add: $19
    add hl, bc                                    ; $4ade: $09
    inc d                                         ; $4adf: $14
    ld h, c                                       ; $4ae0: $61
    nop                                           ; $4ae1: $00
    inc b                                         ; $4ae2: $04
    ld a, [hl]                                    ; $4ae3: $7e
    rra                                           ; $4ae4: $1f
    xor [hl]                                      ; $4ae5: $ae
    dec d                                         ; $4ae6: $15
    rst $38                                       ; $4ae7: $ff
    ld a, a                                       ; $4ae8: $7f
    ld [bc], a                                    ; $4ae9: $02
    inc c                                         ; $4aea: $0c
    ld c, [hl]                                    ; $4aeb: $4e
    ld c, b                                       ; $4aec: $48
    jr z, jr_0aa_4b2b                             ; $4aed: $28 $3c

    inc d                                         ; $4aef: $14
    ld h, c                                       ; $4af0: $61
    jr z, jr_0aa_4b2f                             ; $4af1: $28 $3c

    ld a, h                                       ; $4af3: $7c
    ld a, [hl]                                    ; $4af4: $7e
    inc d                                         ; $4af5: $14
    ld h, c                                       ; $4af6: $61
    ld c, [hl]                                    ; $4af7: $4e
    ld c, b                                       ; $4af8: $48
    dec h                                         ; $4af9: $25
    inc h                                         ; $4afa: $24
    ld a, [hl]                                    ; $4afb: $7e
    rra                                           ; $4afc: $1f
    add hl, de                                    ; $4afd: $19
    add hl, bc                                    ; $4afe: $09
    xor [hl]                                      ; $4aff: $ae
    dec d                                         ; $4b00: $15
    nop                                           ; $4b01: $00
    inc b                                         ; $4b02: $04
    ld a, h                                       ; $4b03: $7c
    ld a, [hl]                                    ; $4b04: $7e
    ldh a, [rLY]                                  ; $4b05: $f0 $44
    rst $18                                       ; $4b07: $df
    ld e, a                                       ; $4b08: $5f
    ld c, [hl]                                    ; $4b09: $4e
    ld c, b                                       ; $4b0a: $48
    ld a, h                                       ; $4b0b: $7c
    ld a, [hl]                                    ; $4b0c: $7e
    inc d                                         ; $4b0d: $14
    ld h, c                                       ; $4b0e: $61
    rst $18                                       ; $4b0f: $df
    ld e, a                                       ; $4b10: $5f
    ld [bc], a                                    ; $4b11: $02
    inc c                                         ; $4b12: $0c
    ld c, [hl]                                    ; $4b13: $4e
    ld c, b                                       ; $4b14: $48
    jr z, jr_0aa_4b53                             ; $4b15: $28 $3c

    inc d                                         ; $4b17: $14
    ld h, c                                       ; $4b18: $61
    ld h, $2c                                     ; $4b19: $26 $2c
    ld a, [hl]                                    ; $4b1b: $7e
    rra                                           ; $4b1c: $1f
    ld c, [hl]                                    ; $4b1d: $4e
    ld c, b                                       ; $4b1e: $48
    ld [hl], h                                    ; $4b1f: $74
    ld de, $0000                                  ; $4b20: $11 $00 $00
    cp l                                          ; $4b23: $bd
    ld h, [hl]                                    ; $4b24: $66
    ld c, [hl]                                    ; $4b25: $4e
    ld c, b                                       ; $4b26: $48
    inc sp                                        ; $4b27: $33
    ld d, l                                       ; $4b28: $55
    ld c, [hl]                                    ; $4b29: $4e
    ld c, b                                       ; $4b2a: $48

jr_0aa_4b2b:
    ld a, h                                       ; $4b2b: $7c
    ld a, [hl]                                    ; $4b2c: $7e
    inc d                                         ; $4b2d: $14
    ld h, c                                       ; $4b2e: $61

jr_0aa_4b2f:
    inc sp                                        ; $4b2f: $33
    ld d, l                                       ; $4b30: $55
    inc d                                         ; $4b31: $14
    ld h, c                                       ; $4b32: $61
    ld a, h                                       ; $4b33: $7c
    ld a, [hl]                                    ; $4b34: $7e
    inc d                                         ; $4b35: $14
    ld h, c                                       ; $4b36: $61
    inc sp                                        ; $4b37: $33
    ld d, l                                       ; $4b38: $55
    ld c, e                                       ; $4b39: $4b
    ld b, b                                       ; $4b3a: $40
    db $fd                                        ; $4b3b: $fd
    ld c, [hl]                                    ; $4b3c: $4e
    ld d, $45                                     ; $4b3d: $16 $45
    xor [hl]                                      ; $4b3f: $ae
    dec d                                         ; $4b40: $15
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    ld c, [hl]                                    ; $4b43: $4e
    ld c, b                                       ; $4b44: $48
    jr z, jr_0aa_4b83                             ; $4b45: $28 $3c

    inc d                                         ; $4b47: $14
    ld h, c                                       ; $4b48: $61
    jr z, jr_0aa_4b87                             ; $4b49: $28 $3c

    ld a, h                                       ; $4b4b: $7c
    ld a, [hl]                                    ; $4b4c: $7e
    inc d                                         ; $4b4d: $14
    ld h, c                                       ; $4b4e: $61
    ld c, [hl]                                    ; $4b4f: $4e
    ld c, b                                       ; $4b50: $48
    inc d                                         ; $4b51: $14
    ld h, c                                       ; $4b52: $61

jr_0aa_4b53:
    ld a, h                                       ; $4b53: $7c
    ld a, [hl]                                    ; $4b54: $7e
    inc d                                         ; $4b55: $14
    ld h, c                                       ; $4b56: $61
    ld c, [hl]                                    ; $4b57: $4e
    ld c, b                                       ; $4b58: $48
    dec h                                         ; $4b59: $25
    inc h                                         ; $4b5a: $24
    xor [hl]                                      ; $4b5b: $ae
    dec d                                         ; $4b5c: $15
    di                                            ; $4b5d: $f3
    ld e, h                                       ; $4b5e: $5c
    ld a, h                                       ; $4b5f: $7c
    ld a, [hl]                                    ; $4b60: $7e
    nop                                           ; $4b61: $00
    nop                                           ; $4b62: $00
    ld c, [hl]                                    ; $4b63: $4e
    ld c, b                                       ; $4b64: $48
    daa                                           ; $4b65: $27
    inc [hl]                                      ; $4b66: $34
    inc d                                         ; $4b67: $14
    ld h, c                                       ; $4b68: $61
    jr z, jr_0aa_4ba7                             ; $4b69: $28 $3c

    ld a, h                                       ; $4b6b: $7c
    ld a, [hl]                                    ; $4b6c: $7e
    inc d                                         ; $4b6d: $14
    ld h, c                                       ; $4b6e: $61
    ld c, [hl]                                    ; $4b6f: $4e
    ld c, b                                       ; $4b70: $48
    ld c, [hl]                                    ; $4b71: $4e
    ld c, b                                       ; $4b72: $48
    ld a, h                                       ; $4b73: $7c
    ld a, [hl]                                    ; $4b74: $7e
    inc d                                         ; $4b75: $14
    ld h, c                                       ; $4b76: $61
    ld c, [hl]                                    ; $4b77: $4e
    ld c, b                                       ; $4b78: $48
    ld [bc], a                                    ; $4b79: $02
    inc c                                         ; $4b7a: $0c
    ld c, [hl]                                    ; $4b7b: $4e
    ld c, b                                       ; $4b7c: $48
    jr z, jr_0aa_4bbb                             ; $4b7d: $28 $3c

    inc d                                         ; $4b7f: $14
    ld h, c                                       ; $4b80: $61
    nop                                           ; $4b81: $00
    inc b                                         ; $4b82: $04

jr_0aa_4b83:
    ld a, [hl]                                    ; $4b83: $7e
    rra                                           ; $4b84: $1f
    xor [hl]                                      ; $4b85: $ae
    dec d                                         ; $4b86: $15

jr_0aa_4b87:
    add hl, hl                                    ; $4b87: $29
    ld b, b                                       ; $4b88: $40
    jr z, jr_0aa_4bc7                             ; $4b89: $28 $3c

    inc d                                         ; $4b8b: $14
    ld h, c                                       ; $4b8c: $61
    ld c, [hl]                                    ; $4b8d: $4e
    ld c, b                                       ; $4b8e: $48
    add hl, hl                                    ; $4b8f: $29
    ld b, b                                       ; $4b90: $40
    jr z, jr_0aa_4bcf                             ; $4b91: $28 $3c

    inc d                                         ; $4b93: $14
    ld h, c                                       ; $4b94: $61
    ld c, [hl]                                    ; $4b95: $4e
    ld c, b                                       ; $4b96: $48
    add hl, hl                                    ; $4b97: $29
    ld b, b                                       ; $4b98: $40
    ld h, $2c                                     ; $4b99: $26 $2c
    xor [hl]                                      ; $4b9b: $ae
    dec d                                         ; $4b9c: $15
    ld c, [hl]                                    ; $4b9d: $4e
    ld c, b                                       ; $4b9e: $48
    inc d                                         ; $4b9f: $14
    ld h, c                                       ; $4ba0: $61
    nop                                           ; $4ba1: $00
    nop                                           ; $4ba2: $00
    ld a, [hl]                                    ; $4ba3: $7e
    rra                                           ; $4ba4: $1f
    xor [hl]                                      ; $4ba5: $ae
    dec d                                         ; $4ba6: $15

jr_0aa_4ba7:
    rst $38                                       ; $4ba7: $ff
    ld a, a                                       ; $4ba8: $7f
    ld [bc], a                                    ; $4ba9: $02
    inc c                                         ; $4baa: $0c
    ld c, [hl]                                    ; $4bab: $4e
    ld c, b                                       ; $4bac: $48
    jr z, jr_0aa_4beb                             ; $4bad: $28 $3c

    dec h                                         ; $4baf: $25
    inc h                                         ; $4bb0: $24
    dec h                                         ; $4bb1: $25
    inc h                                         ; $4bb2: $24
    ld c, [hl]                                    ; $4bb3: $4e
    ld c, b                                       ; $4bb4: $48
    jr z, jr_0aa_4bf3                             ; $4bb5: $28 $3c

    dec h                                         ; $4bb7: $25
    inc h                                         ; $4bb8: $24
    inc bc                                        ; $4bb9: $03

jr_0aa_4bba:
    inc d                                         ; $4bba: $14

jr_0aa_4bbb:
    ld a, [hl]                                    ; $4bbb: $7e
    rra                                           ; $4bbc: $1f
    xor [hl]                                      ; $4bbd: $ae
    dec d                                         ; $4bbe: $15
    rla                                           ; $4bbf: $17
    dec h                                         ; $4bc0: $25
    nop                                           ; $4bc1: $00
    nop                                           ; $4bc2: $00
    ld a, [hl]                                    ; $4bc3: $7e
    daa                                           ; $4bc4: $27
    xor [hl]                                      ; $4bc5: $ae
    dec d                                         ; $4bc6: $15

jr_0aa_4bc7:
    inc d                                         ; $4bc7: $14
    ld h, c                                       ; $4bc8: $61
    ld [bc], a                                    ; $4bc9: $02
    inc c                                         ; $4bca: $0c
    ld a, [hl]                                    ; $4bcb: $7e
    rra                                           ; $4bcc: $1f
    xor [hl]                                      ; $4bcd: $ae
    dec d                                         ; $4bce: $15

jr_0aa_4bcf:
    inc d                                         ; $4bcf: $14
    ld h, c                                       ; $4bd0: $61
    ld [bc], a                                    ; $4bd1: $02
    inc c                                         ; $4bd2: $0c
    ld a, [hl]                                    ; $4bd3: $7e
    rra                                           ; $4bd4: $1f
    xor [hl]                                      ; $4bd5: $ae
    dec d                                         ; $4bd6: $15
    dec h                                         ; $4bd7: $25
    inc h                                         ; $4bd8: $24
    jr z, @+$3e                                   ; $4bd9: $28 $3c

    ld a, [hl]                                    ; $4bdb: $7e
    rra                                           ; $4bdc: $1f
    xor [hl]                                      ; $4bdd: $ae
    dec d                                         ; $4bde: $15
    ld d, $45                                     ; $4bdf: $16 $45
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    ld a, [hl]                                    ; $4be3: $7e
    rra                                           ; $4be4: $1f
    jr jr_0aa_4c08                                ; $4be5: $18 $21

    rst $38                                       ; $4be7: $ff
    ld a, a                                       ; $4be8: $7f
    jr z, jr_0aa_4c27                             ; $4be9: $28 $3c

jr_0aa_4beb:
    ld a, [hl]                                    ; $4beb: $7e
    rra                                           ; $4bec: $1f
    add hl, de                                    ; $4bed: $19
    add hl, bc                                    ; $4bee: $09
    inc d                                         ; $4bef: $14
    ld h, c                                       ; $4bf0: $61
    jr z, @+$3e                                   ; $4bf1: $28 $3c

jr_0aa_4bf3:
    ld a, [hl]                                    ; $4bf3: $7e
    rra                                           ; $4bf4: $1f
    add hl, de                                    ; $4bf5: $19
    add hl, bc                                    ; $4bf6: $09
    inc d                                         ; $4bf7: $14
    ld h, c                                       ; $4bf8: $61
    jr z, @+$3e                                   ; $4bf9: $28 $3c

    ld a, [hl]                                    ; $4bfb: $7e
    rra                                           ; $4bfc: $1f
    add hl, de                                    ; $4bfd: $19
    add hl, bc                                    ; $4bfe: $09
    inc d                                         ; $4bff: $14
    ld h, c                                       ; $4c00: $61
    nop                                           ; $4c01: $00
    nop                                           ; $4c02: $00
    sbc [hl]                                      ; $4c03: $9e
    ld h, [hl]                                    ; $4c04: $66
    ld e, [hl]                                    ; $4c05: $5e
    inc e                                         ; $4c06: $1c
    ld l, [hl]                                    ; $4c07: $6e

jr_0aa_4c08:
    jr nz, @+$23                                  ; $4c08: $20 $21

    jr jr_0aa_4c6a                                ; $4c0a: $18 $5e

    inc e                                         ; $4c0c: $1c
    ld l, [hl]                                    ; $4c0d: $6e
    jr nz, @-$60                                  ; $4c0e: $20 $9e

    ld h, [hl]                                    ; $4c10: $66
    ld e, [hl]                                    ; $4c11: $5e
    inc e                                         ; $4c12: $1c
    sbc [hl]                                      ; $4c13: $9e
    ld h, [hl]                                    ; $4c14: $66
    ld l, [hl]                                    ; $4c15: $6e
    jr nz, @-$60                                  ; $4c16: $20 $9e

    ld h, [hl]                                    ; $4c18: $66
    ld l, [hl]                                    ; $4c19: $6e
    jr nz, jr_0aa_4bba                            ; $4c1a: $20 $9e

    ld h, [hl]                                    ; $4c1c: $66
    ld e, [hl]                                    ; $4c1d: $5e
    inc e                                         ; $4c1e: $1c
    sbc [hl]                                      ; $4c1f: $9e
    ld h, [hl]                                    ; $4c20: $66
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    sbc [hl]                                      ; $4c23: $9e
    ld h, [hl]                                    ; $4c24: $66
    ldh a, [rDIV]                                 ; $4c25: $f0 $04

jr_0aa_4c27:
    ld e, [hl]                                    ; $4c27: $5e
    inc e                                         ; $4c28: $1c
    ld hl, $8618                                  ; $4c29: $21 $18 $86
    ld b, l                                       ; $4c2c: $45
    xor h                                         ; $4c2d: $ac
    ld [$7e00], sp                                ; $4c2e: $08 $00 $7e
    ld hl, $5e18                                  ; $4c31: $21 $18 $5e
    inc e                                         ; $4c34: $1c
    ld l, [hl]                                    ; $4c35: $6e
    jr nz, jr_0aa_4c38                            ; $4c36: $20 $00

jr_0aa_4c38:
    ld a, [hl]                                    ; $4c38: $7e
    ld l, [hl]                                    ; $4c39: $6e
    jr nz, jr_0aa_4c9a                            ; $4c3a: $20 $5e

    inc e                                         ; $4c3c: $1c
    ld l, [hl]                                    ; $4c3d: $6e
    jr nz, jr_0aa_4c40                            ; $4c3e: $20 $00

jr_0aa_4c40:
    ld a, [hl]                                    ; $4c40: $7e
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    ld h, $07                                     ; $4c43: $26 $07
    sbc b                                         ; $4c45: $98
    inc d                                         ; $4c46: $14
    ld e, l                                       ; $4c47: $5d
    ccf                                           ; $4c48: $3f
    ld [c], a                                     ; $4c49: $e2
    ld l, c                                       ; $4c4a: $69
    push hl                                       ; $4c4b: $e5
    ld a, [de]                                    ; $4c4c: $1a
    ldh a, [rDIV]                                 ; $4c4d: $f0 $04
    ei                                            ; $4c4f: $fb
    rla                                           ; $4c50: $17
    ld hl, $f018                                  ; $4c51: $21 $18 $f0
    inc b                                         ; $4c54: $04
    ld l, [hl]                                    ; $4c55: $6e
    jr nz, @+$60                                  ; $4c56: $20 $5e

    inc e                                         ; $4c58: $1c
    ld l, [hl]                                    ; $4c59: $6e
    jr nz, jr_0aa_4cba                            ; $4c5a: $20 $5e

    inc e                                         ; $4c5c: $1c
    ld l, [hl]                                    ; $4c5d: $6e
    jr nz, @+$60                                  ; $4c5e: $20 $5e

    inc e                                         ; $4c60: $1c
    nop                                           ; $4c61: $00
    nop                                           ; $4c62: $00
    ld h, $07                                     ; $4c63: $26 $07
    or a                                          ; $4c65: $b7
    db $10                                        ; $4c66: $10
    ld a, h                                       ; $4c67: $7c
    scf                                           ; $4c68: $37
    add e                                         ; $4c69: $83

jr_0aa_4c6a:
    ld a, $fb                                     ; $4c6a: $3e $fb
    rla                                           ; $4c6c: $17
    nop                                           ; $4c6d: $00
    ld a, [hl]                                    ; $4c6e: $7e
    ld h, $07                                     ; $4c6f: $26 $07
    ld b, [hl]                                    ; $4c71: $46
    jr @-$0e                                      ; $4c72: $18 $f0

    inc b                                         ; $4c74: $04
    add [hl]                                      ; $4c75: $86
    ld b, l                                       ; $4c76: $45
    ld e, [hl]                                    ; $4c77: $5e
    inc e                                         ; $4c78: $1c
    ld l, [hl]                                    ; $4c79: $6e
    jr nz, @+$60                                  ; $4c7a: $20 $5e

    inc e                                         ; $4c7c: $1c
    add [hl]                                      ; $4c7d: $86
    ld b, l                                       ; $4c7e: $45
    ld e, [hl]                                    ; $4c7f: $5e
    inc e                                         ; $4c80: $1c
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    dec b                                         ; $4c83: $05
    rla                                           ; $4c84: $17
    add [hl]                                      ; $4c85: $86
    ld b, l                                       ; $4c86: $45
    ld e, l                                       ; $4c87: $5d
    ccf                                           ; $4c88: $3f
    add e                                         ; $4c89: $83
    ld a, $00                                     ; $4c8a: $3e $00
    ld a, [hl]                                    ; $4c8c: $7e
    ld h, $07                                     ; $4c8d: $26 $07
    ld e, l                                       ; $4c8f: $5d
    ccf                                           ; $4c90: $3f
    ld h, l                                       ; $4c91: $65
    inc d                                         ; $4c92: $14
    ldh a, [rDIV]                                 ; $4c93: $f0 $04
    call nz, $5e5d                                ; $4c95: $c4 $5d $5e
    inc e                                         ; $4c98: $1c
    ld l, [hl]                                    ; $4c99: $6e

jr_0aa_4c9a:
    jr nz, jr_0aa_4cfa                            ; $4c9a: $20 $5e

    inc e                                         ; $4c9c: $1c
    call nz, $5e5d                                ; $4c9d: $c4 $5d $5e
    inc e                                         ; $4ca0: $1c
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    dec b                                         ; $4ca3: $05
    rla                                           ; $4ca4: $17
    dec e                                         ; $4ca5: $1d
    ld c, e                                       ; $4ca6: $4b
    nop                                           ; $4ca7: $00
    ld a, [hl]                                    ; $4ca8: $7e
    add e                                         ; $4ca9: $83
    ld a, $00                                     ; $4caa: $3e $00
    ld a, [hl]                                    ; $4cac: $7e
    ld h, $07                                     ; $4cad: $26 $07
    nop                                           ; $4caf: $00
    ld a, [hl]                                    ; $4cb0: $7e
    ld hl, $f018                                  ; $4cb1: $21 $18 $f0
    inc b                                         ; $4cb4: $04
    call nz, $5e5d                                ; $4cb5: $c4 $5d $5e
    inc e                                         ; $4cb8: $1c
    ld l, [hl]                                    ; $4cb9: $6e

jr_0aa_4cba:
    jr nz, jr_0aa_4d1a                            ; $4cba: $20 $5e

    inc e                                         ; $4cbc: $1c
    call nz, $5e5d                                ; $4cbd: $c4 $5d $5e
    inc e                                         ; $4cc0: $1c
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    ld h, d                                       ; $4cc3: $62
    ld c, [hl]                                    ; $4cc4: $4e
    ld c, e                                       ; $4cc5: $4b
    dec h                                         ; $4cc6: $25
    sbc [hl]                                      ; $4cc7: $9e
    ld h, [hl]                                    ; $4cc8: $66
    ld hl, $8318                                  ; $4cc9: $21 $18 $83
    ld a, $00                                     ; $4ccc: $3e $00
    ld a, [hl]                                    ; $4cce: $7e
    ld h, $07                                     ; $4ccf: $26 $07
    ld hl, $8618                                  ; $4cd1: $21 $18 $86
    ld b, l                                       ; $4cd4: $45
    xor h                                         ; $4cd5: $ac
    ld [$7e00], sp                                ; $4cd6: $08 $00 $7e
    ld hl, $f018                                  ; $4cd9: $21 $18 $f0
    inc b                                         ; $4cdc: $04
    ld l, l                                       ; $4cdd: $6d
    inc e                                         ; $4cde: $1c
    ld e, [hl]                                    ; $4cdf: $5e
    inc e                                         ; $4ce0: $1c
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    ld [c], a                                     ; $4ce3: $e2
    ld l, l                                       ; $4ce4: $6d
    or l                                          ; $4ce5: $b5
    inc c                                         ; $4ce6: $0c
    sbc [hl]                                      ; $4ce7: $9e
    ld h, [hl]                                    ; $4ce8: $66
    ld hl, $a418                                  ; $4ce9: $21 $18 $a4
    ld [hl-], a                                   ; $4cec: $32
    nop                                           ; $4ced: $00
    ld a, [hl]                                    ; $4cee: $7e
    ldh a, [rDIV]                                 ; $4cef: $f0 $04
    add e                                         ; $4cf1: $83
    ld a, $fb                                     ; $4cf2: $3e $fb
    rla                                           ; $4cf4: $17
    nop                                           ; $4cf5: $00
    ld a, [hl]                                    ; $4cf6: $7e
    ld h, $07                                     ; $4cf7: $26 $07
    ld c, d                                       ; $4cf9: $4a

jr_0aa_4cfa:
    inc e                                         ; $4cfa: $1c
    ldh a, [rDIV]                                 ; $4cfb: $f0 $04
    and h                                         ; $4cfd: $a4
    ld e, c                                       ; $4cfe: $59
    ld e, [hl]                                    ; $4cff: $5e
    inc e                                         ; $4d00: $1c
    nop                                           ; $4d01: $00
    nop                                           ; $4d02: $00
    and h                                         ; $4d03: $a4
    ld e, c                                       ; $4d04: $59
    or [hl]                                       ; $4d05: $b6
    db $10                                        ; $4d06: $10
    sbc [hl]                                      ; $4d07: $9e
    ld h, [hl]                                    ; $4d08: $66
    ld h, a                                       ; $4d09: $67
    db $10                                        ; $4d0a: $10
    ld h, $07                                     ; $4d0b: $26 $07
    call nz, $fb59                                ; $4d0d: $c4 $59 $fb
    rla                                           ; $4d10: $17
    add e                                         ; $4d11: $83
    ld a, $fb                                     ; $4d12: $3e $fb
    rla                                           ; $4d14: $17
    ld h, $07                                     ; $4d15: $26 $07
    ei                                            ; $4d17: $fb
    rla                                           ; $4d18: $17
    ld l, c                                       ; $4d19: $69

jr_0aa_4d1a:
    inc e                                         ; $4d1a: $1c
    ldh a, [rDIV]                                 ; $4d1b: $f0 $04
    jp Jump_0aa_5e65                              ; $4d1d: $c3 $65 $5e


    inc e                                         ; $4d20: $1c
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    sbc [hl]                                      ; $4d23: $9e
    ld h, [hl]                                    ; $4d24: $66
    ldh a, [rDIV]                                 ; $4d25: $f0 $04
    ld e, [hl]                                    ; $4d27: $5e
    inc e                                         ; $4d28: $1c
    adc c                                         ; $4d29: $89
    inc c                                         ; $4d2a: $0c
    ld h, $07                                     ; $4d2b: $26 $07
    and l                                         ; $4d2d: $a5
    ld d, l                                       ; $4d2e: $55
    ei                                            ; $4d2f: $fb
    rla                                           ; $4d30: $17

jr_0aa_4d31:
    add e                                         ; $4d31: $83
    ld a, $fb                                     ; $4d32: $3e $fb
    rla                                           ; $4d34: $17
    ld h, $07                                     ; $4d35: $26 $07
    ei                                            ; $4d37: $fb
    rla                                           ; $4d38: $17
    ld hl, $e218                                  ; $4d39: $21 $18 $e2
    ld l, c                                       ; $4d3c: $69
    adc h                                         ; $4d3d: $8c
    inc d                                         ; $4d3e: $14
    add e                                         ; $4d3f: $83
    ld a, $00                                     ; $4d40: $3e $00
    nop                                           ; $4d42: $00
    sbc [hl]                                      ; $4d43: $9e
    ld h, [hl]                                    ; $4d44: $66
    ld e, [hl]                                    ; $4d45: $5e
    inc e                                         ; $4d46: $1c
    ld l, [hl]                                    ; $4d47: $6e
    jr nz, jr_0aa_4d6b                            ; $4d48: $20 $21

    jr jr_0aa_4d31                                ; $4d4a: $18 $e5

    ld [hl+], a                                   ; $4d4c: $22
    sbc b                                         ; $4d4d: $98
    inc d                                         ; $4d4e: $14
    nop                                           ; $4d4f: $00
    ld a, [hl]                                    ; $4d50: $7e
    add e                                         ; $4d51: $83
    ld a, $fb                                     ; $4d52: $3e $fb
    rla                                           ; $4d54: $17
    ld h, $07                                     ; $4d55: $26 $07
    nop                                           ; $4d57: $00
    ld a, [hl]                                    ; $4d58: $7e
    ld hl, $c318                                  ; $4d59: $21 $18 $c3
    ld h, l                                       ; $4d5c: $65
    xor a                                         ; $4d5d: $af
    inc d                                         ; $4d5e: $14
    add e                                         ; $4d5f: $83
    ld a, $00                                     ; $4d60: $3e $00
    nop                                           ; $4d62: $00
    sbc [hl]                                      ; $4d63: $9e
    ld h, [hl]                                    ; $4d64: $66
    ld e, [hl]                                    ; $4d65: $5e
    inc e                                         ; $4d66: $1c
    add e                                         ; $4d67: $83
    ld a, $65                                     ; $4d68: $3e $65
    inc d                                         ; $4d6a: $14

jr_0aa_4d6b:
    ldh a, [rDIV]                                 ; $4d6b: $f0 $04
    ld [bc], a                                    ; $4d6d: $02
    ld h, [hl]                                    ; $4d6e: $66
    ld e, [hl]                                    ; $4d6f: $5e
    inc e                                         ; $4d70: $1c
    add e                                         ; $4d71: $83
    ld a, $00                                     ; $4d72: $3e $00
    ld a, [hl]                                    ; $4d74: $7e
    ld h, $07                                     ; $4d75: $26 $07
    ld e, [hl]                                    ; $4d77: $5e
    inc e                                         ; $4d78: $1c
    ld hl, $c318                                  ; $4d79: $21 $18 $c3

jr_0aa_4d7c:
    ld h, c                                       ; $4d7c: $61
    adc h                                         ; $4d7d: $8c
    inc d                                         ; $4d7e: $14
    add e                                         ; $4d7f: $83
    ld a, $00                                     ; $4d80: $3e $00
    nop                                           ; $4d82: $00
    sbc [hl]                                      ; $4d83: $9e
    ld h, [hl]                                    ; $4d84: $66
    ld e, [hl]                                    ; $4d85: $5e
    inc e                                         ; $4d86: $1c
    ld l, [hl]                                    ; $4d87: $6e
    jr nz, jr_0aa_4dd0                            ; $4d88: $20 $46

    jr jr_0aa_4d7c                                ; $4d8a: $18 $f0

    inc b                                         ; $4d8c: $04
    and h                                         ; $4d8d: $a4
    ld e, c                                       ; $4d8e: $59
    ld e, [hl]                                    ; $4d8f: $5e
    inc e                                         ; $4d90: $1c
    add [hl]                                      ; $4d91: $86
    ld b, l                                       ; $4d92: $45
    add e                                         ; $4d93: $83
    ld a, $00                                     ; $4d94: $3e $00
    ld a, [hl]                                    ; $4d96: $7e
    ld e, [hl]                                    ; $4d97: $5e
    inc e                                         ; $4d98: $1c
    ld l, c                                       ; $4d99: $69
    inc e                                         ; $4d9a: $1c
    ldh a, [rDIV]                                 ; $4d9b: $f0 $04
    and h                                         ; $4d9d: $a4
    ld d, l                                       ; $4d9e: $55
    ld e, [hl]                                    ; $4d9f: $5e
    inc e                                         ; $4da0: $1c
    nop                                           ; $4da1: $00
    nop                                           ; $4da2: $00
    sbc [hl]                                      ; $4da3: $9e
    ld h, [hl]                                    ; $4da4: $66
    ld e, [hl]                                    ; $4da5: $5e
    inc e                                         ; $4da6: $1c
    ld e, [hl]                                    ; $4da7: $5e
    inc e                                         ; $4da8: $1c
    ld hl, $f018                                  ; $4da9: $21 $18 $f0
    inc b                                         ; $4dac: $04
    ld l, [hl]                                    ; $4dad: $6e
    jr nz, jr_0aa_4e0e                            ; $4dae: $20 $5e

    inc e                                         ; $4db0: $1c
    add [hl]                                      ; $4db1: $86
    ld b, l                                       ; $4db2: $45
    ldh a, [rDIV]                                 ; $4db3: $f0 $04
    nop                                           ; $4db5: $00
    ld a, [hl]                                    ; $4db6: $7e
    ld e, [hl]                                    ; $4db7: $5e
    inc e                                         ; $4db8: $1c
    ld c, d                                       ; $4db9: $4a
    inc e                                         ; $4dba: $1c
    ldh a, [rDIV]                                 ; $4dbb: $f0 $04
    add [hl]                                      ; $4dbd: $86
    ld b, l                                       ; $4dbe: $45
    ld e, [hl]                                    ; $4dbf: $5e
    inc e                                         ; $4dc0: $1c
    nop                                           ; $4dc1: $00
    nop                                           ; $4dc2: $00
    sbc [hl]                                      ; $4dc3: $9e
    ld h, [hl]                                    ; $4dc4: $66
    ld e, [hl]                                    ; $4dc5: $5e
    inc e                                         ; $4dc6: $1c
    ld e, [hl]                                    ; $4dc7: $5e
    inc e                                         ; $4dc8: $1c
    ld hl, $5e18                                  ; $4dc9: $21 $18 $5e
    inc e                                         ; $4dcc: $1c
    ld l, [hl]                                    ; $4dcd: $6e
    jr nz, jr_0aa_4e2e                            ; $4dce: $20 $5e

jr_0aa_4dd0:
    inc e                                         ; $4dd0: $1c
    ld hl, $8618                                  ; $4dd1: $21 $18 $86
    ld b, l                                       ; $4dd4: $45
    adc c                                         ; $4dd5: $89
    inc c                                         ; $4dd6: $0c
    ldh a, [rDIV]                                 ; $4dd7: $f0 $04
    ld hl, $f018                                  ; $4dd9: $21 $18 $f0
    inc b                                         ; $4ddc: $04
    ld l, l                                       ; $4ddd: $6d
    inc e                                         ; $4dde: $1c
    ld e, [hl]                                    ; $4ddf: $5e
    inc e                                         ; $4de0: $1c
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    sbc [hl]                                      ; $4de3: $9e
    ld h, [hl]                                    ; $4de4: $66
    ld e, [hl]                                    ; $4de5: $5e
    inc e                                         ; $4de6: $1c
    ld l, [hl]                                    ; $4de7: $6e
    jr nz, jr_0aa_4e58                            ; $4de8: $20 $6e

    jr nz, jr_0aa_4e4a                            ; $4dea: $20 $5e

    inc e                                         ; $4dec: $1c
    ld e, [hl]                                    ; $4ded: $5e
    inc e                                         ; $4dee: $1c
    ld l, [hl]                                    ; $4def: $6e
    jr nz, jr_0aa_4e13                            ; $4df0: $20 $21

    jr jr_0aa_4e52                                ; $4df2: $18 $5e

    inc e                                         ; $4df4: $1c
    ld l, [hl]                                    ; $4df5: $6e
    jr nz, jr_0aa_4e66                            ; $4df6: $20 $6e

    jr nz, @+$70                                  ; $4df8: $20 $6e

    jr nz, @+$60                                  ; $4dfa: $20 $5e

    inc e                                         ; $4dfc: $1c
    ld l, [hl]                                    ; $4dfd: $6e
    jr nz, jr_0aa_4e6e                            ; $4dfe: $20 $6e

    jr nz, jr_0aa_4e02                            ; $4e00: $20 $00

jr_0aa_4e02:
    nop                                           ; $4e02: $00
    jp c, $1d19                                   ; $4e03: $da $19 $1d

    ld c, e                                       ; $4e06: $4b
    ldh [$7d], a                                  ; $4e07: $e0 $7d
    jp c, $1d19                                   ; $4e09: $da $19 $1d

    ld c, e                                       ; $4e0c: $4b
    dec e                                         ; $4e0d: $1d

jr_0aa_4e0e:
    ld c, e                                       ; $4e0e: $4b
    ldh [$7d], a                                  ; $4e0f: $e0 $7d
    ld h, [hl]                                    ; $4e11: $66
    ld b, b                                       ; $4e12: $40

jr_0aa_4e13:
    dec e                                         ; $4e13: $1d
    ld c, e                                       ; $4e14: $4b
    jp c, $e019                                   ; $4e15: $da $19 $e0

    ld a, l                                       ; $4e18: $7d
    and h                                         ; $4e19: $a4
    ld b, h                                       ; $4e1a: $44
    jp c, $1d19                                   ; $4e1b: $da $19 $1d

    ld c, e                                       ; $4e1e: $4b
    rst $28                                       ; $4e1f: $ef
    inc d                                         ; $4e20: $14
    nop                                           ; $4e21: $00
    nop                                           ; $4e22: $00
    jp c, $1d19                                   ; $4e23: $da $19 $1d

    ld c, e                                       ; $4e26: $4b
    rst $28                                       ; $4e27: $ef
    inc d                                         ; $4e28: $14
    jp c, $da19                                   ; $4e29: $da $19 $da

    add hl, de                                    ; $4e2c: $19
    dec e                                         ; $4e2d: $1d

jr_0aa_4e2e:
    ld c, e                                       ; $4e2e: $4b
    rst $28                                       ; $4e2f: $ef
    inc d                                         ; $4e30: $14
    jr nz, jr_0aa_4e80                            ; $4e31: $20 $4d

    xor $10                                       ; $4e33: $ee $10
    jp c, Jump_0aa_6619                           ; $4e35: $da $19 $66

    ld b, b                                       ; $4e38: $40
    add d                                         ; $4e39: $82
    ld l, d                                       ; $4e3a: $6a
    ldh a, [rNR14]                                ; $4e3b: $f0 $14
    ld h, [hl]                                    ; $4e3d: $66
    ld b, b                                       ; $4e3e: $40
    jp c, $0019                                   ; $4e3f: $da $19 $00

    nop                                           ; $4e42: $00
    jp c, $1d19                                   ; $4e43: $da $19 $1d

    ld c, e                                       ; $4e46: $4b
    jp c, $da19                                   ; $4e47: $da $19 $da

jr_0aa_4e4a:
    add hl, de                                    ; $4e4a: $19
    jp c, $1d19                                   ; $4e4b: $da $19 $1d

    ld c, e                                       ; $4e4e: $4b
    jp c, $2019                                   ; $4e4f: $da $19 $20

jr_0aa_4e52:
    ld c, l                                       ; $4e52: $4d
    jp c, $e019                                   ; $4e53: $da $19 $e0

    ld a, l                                       ; $4e56: $7d
    ld h, [hl]                                    ; $4e57: $66

jr_0aa_4e58:
    ld b, b                                       ; $4e58: $40
    jp Jump_000_1144                              ; $4e59: $c3 $44 $11


    add hl, de                                    ; $4e5c: $19
    ldh [$7d], a                                  ; $4e5d: $e0 $7d
    jp c, $0019                                   ; $4e5f: $da $19 $00

    nop                                           ; $4e62: $00
    jp c, $1d19                                   ; $4e63: $da $19 $1d

jr_0aa_4e66:
    ld c, e                                       ; $4e66: $4b
    jp c, $da19                                   ; $4e67: $da $19 $da

    add hl, de                                    ; $4e6a: $19
    jp c, $1d19                                   ; $4e6b: $da $19 $1d

jr_0aa_4e6e:
    ld c, e                                       ; $4e6e: $4b
    jp c, $a419                                   ; $4e6f: $da $19 $a4

    ld b, h                                       ; $4e72: $44
    xor $10                                       ; $4e73: $ee $10
    ld b, h                                       ; $4e75: $44
    ld d, a                                       ; $4e76: $57
    jp c, $c219                                   ; $4e77: $da $19 $c2

    ld b, h                                       ; $4e7a: $44
    ldh a, [rNR14]                                ; $4e7b: $f0 $14
    jp c, $e019                                   ; $4e7d: $da $19 $e0

jr_0aa_4e80:
    ld a, l                                       ; $4e80: $7d
    nop                                           ; $4e81: $00
    nop                                           ; $4e82: $00
    jp c, $1d19                                   ; $4e83: $da $19 $1d

    ld c, e                                       ; $4e86: $4b
    jp c, $da19                                   ; $4e87: $da $19 $da

    add hl, de                                    ; $4e8a: $19
    jp c, $1d19                                   ; $4e8b: $da $19 $1d

    ld c, e                                       ; $4e8e: $4b
    jp c, $c319                                   ; $4e8f: $da $19 $c3

    ld b, h                                       ; $4e92: $44
    jp c, $e019                                   ; $4e93: $da $19 $e0

    ld a, l                                       ; $4e96: $7d
    ld b, h                                       ; $4e97: $44
    ld d, a                                       ; $4e98: $57
    ld b, b                                       ; $4e99: $40
    ld e, c                                       ; $4e9a: $59
    rst $28                                       ; $4e9b: $ef
    inc d                                         ; $4e9c: $14
    inc hl                                        ; $4e9d: $23
    inc h                                         ; $4e9e: $24
    jp c, $0019                                   ; $4e9f: $da $19 $00

    nop                                           ; $4ea2: $00
    jp c, $1d19                                   ; $4ea3: $da $19 $1d

    ld c, e                                       ; $4ea6: $4b
    jp c, $da19                                   ; $4ea7: $da $19 $da

    add hl, de                                    ; $4eaa: $19
    jp c, $1d19                                   ; $4eab: $da $19 $1d

    ld c, e                                       ; $4eae: $4b
    jp c, $2019                                   ; $4eaf: $da $19 $20

    ld c, l                                       ; $4eb2: $4d
    jp c, Jump_0aa_4419                           ; $4eb3: $da $19 $44

    ld d, a                                       ; $4eb6: $57
    ldh [$7d], a                                  ; $4eb7: $e0 $7d
    ld b, b                                       ; $4eb9: $40
    ld e, c                                       ; $4eba: $59
    rst $28                                       ; $4ebb: $ef
    inc d                                         ; $4ebc: $14
    inc hl                                        ; $4ebd: $23
    inc h                                         ; $4ebe: $24
    jp c, $0019                                   ; $4ebf: $da $19 $00

    nop                                           ; $4ec2: $00
    jp c, $1d19                                   ; $4ec3: $da $19 $1d

    ld c, e                                       ; $4ec6: $4b
    jp c, $da19                                   ; $4ec7: $da $19 $da

    add hl, de                                    ; $4eca: $19
    jp c, $1d19                                   ; $4ecb: $da $19 $1d

    ld c, e                                       ; $4ece: $4b
    jp c, $2019                                   ; $4ecf: $da $19 $20

    ld c, l                                       ; $4ed2: $4d
    jp c, Jump_0aa_4419                           ; $4ed3: $da $19 $44

    ld d, a                                       ; $4ed6: $57
    ldh [$7d], a                                  ; $4ed7: $e0 $7d
    ld bc, $ef0c                                  ; $4ed9: $01 $0c $ef
    inc d                                         ; $4edc: $14
    ld hl, $da55                                  ; $4edd: $21 $55 $da
    add hl, de                                    ; $4ee0: $19
    nop                                           ; $4ee1: $00
    nop                                           ; $4ee2: $00
    jp c, $1d19                                   ; $4ee3: $da $19 $1d

    ld c, e                                       ; $4ee6: $4b
    jp c, $2019                                   ; $4ee7: $da $19 $20

    ld c, l                                       ; $4eea: $4d
    xor $10                                       ; $4eeb: $ee $10
    jp c, $e019                                   ; $4eed: $da $19 $e0

    ld a, l                                       ; $4ef0: $7d
    jr nz, @+$4f                                  ; $4ef1: $20 $4d

    ld b, h                                       ; $4ef3: $44
    ld d, a                                       ; $4ef4: $57
    ldh [$7d], a                                  ; $4ef5: $e0 $7d
    ld a, c                                       ; $4ef7: $79
    ld d, a                                       ; $4ef8: $57
    ld bc, $ef0c                                  ; $4ef9: $01 $0c $ef
    inc d                                         ; $4efc: $14
    jp $da44                                      ; $4efd: $c3 $44 $da


    add hl, de                                    ; $4f00: $19
    nop                                           ; $4f01: $00
    nop                                           ; $4f02: $00
    cp c                                          ; $4f03: $b9
    dec d                                         ; $4f04: $15
    dec e                                         ; $4f05: $1d
    ld c, e                                       ; $4f06: $4b
    ld h, [hl]                                    ; $4f07: $66
    ld b, b                                       ; $4f08: $40
    and e                                         ; $4f09: $a3

Call_0aa_4f0a:
    ld b, h                                       ; $4f0a: $44
    nop                                           ; $4f0b: $00
    halt                                          ; $4f0c: $76
    ld a, c                                       ; $4f0d: $79
    ld d, a                                       ; $4f0e: $57

Call_0aa_4f0f:
    xor $10                                       ; $4f0f: $ee $10
    jr nz, @+$4f                                  ; $4f11: $20 $4d

    ld a, c                                       ; $4f13: $79
    ld d, a                                       ; $4f14: $57
    ld b, h                                       ; $4f15: $44
    ld d, a                                       ; $4f16: $57
    ldh [$7d], a                                  ; $4f17: $e0 $7d
    ld bc, $f00c                                  ; $4f19: $01 $0c $f0
    inc d                                         ; $4f1c: $14
    add h                                         ; $4f1d: $84
    ld b, b                                       ; $4f1e: $40
    jp c, $0019                                   ; $4f1f: $da $19 $00

    nop                                           ; $4f22: $00
    ld b, h                                       ; $4f23: $44
    ld d, a                                       ; $4f24: $57
    ld a, [de]                                    ; $4f25: $1a
    ld [hl+], a                                   ; $4f26: $22
    xor b                                         ; $4f27: $a8
    inc l                                         ; $4f28: $2c
    ldh [$7d], a                                  ; $4f29: $e0 $7d
    ld a, c                                       ; $4f2b: $79
    ld d, a                                       ; $4f2c: $57
    ld b, h                                       ; $4f2d: $44
    ld d, a                                       ; $4f2e: $57
    xor b                                         ; $4f2f: $a8
    inc l                                         ; $4f30: $2c
    jr nz, jr_0aa_4f80                            ; $4f31: $20 $4d

    ldh [$7d], a                                  ; $4f33: $e0 $7d
    ld b, h                                       ; $4f35: $44
    ld d, a                                       ; $4f36: $57
    xor b                                         ; $4f37: $a8
    inc l                                         ; $4f38: $2c
    ld bc, $f00c                                  ; $4f39: $01 $0c $f0
    inc d                                         ; $4f3c: $14
    and h                                         ; $4f3d: $a4
    ld b, h                                       ; $4f3e: $44
    jp c, $0019                                   ; $4f3f: $da $19 $00

    nop                                           ; $4f42: $00
    jp c, Jump_0aa_4419                           ; $4f43: $da $19 $44

    ld d, a                                       ; $4f46: $57
    ld e, d                                       ; $4f47: $5a
    ld d, e                                       ; $4f48: $53
    ldh [$7d], a                                  ; $4f49: $e0 $7d
    ld b, h                                       ; $4f4b: $44
    ld d, a                                       ; $4f4c: $57
    ld a, c                                       ; $4f4d: $79
    ld d, a                                       ; $4f4e: $57
    ld e, d                                       ; $4f4f: $5a
    ld d, e                                       ; $4f50: $53
    jr nz, @+$4f                                  ; $4f51: $20 $4d

    ldh [$7d], a                                  ; $4f53: $e0 $7d
    ld h, [hl]                                    ; $4f55: $66
    ld b, b                                       ; $4f56: $40
    ld e, d                                       ; $4f57: $5a
    ld d, e                                       ; $4f58: $53
    ld bc, $110c                                  ; $4f59: $01 $0c $11
    add hl, de                                    ; $4f5c: $19
    ld h, [hl]                                    ; $4f5d: $66
    ld b, b                                       ; $4f5e: $40
    jp c, $0019                                   ; $4f5f: $da $19 $00

    nop                                           ; $4f62: $00
    jp nz, $da62                                  ; $4f63: $c2 $62 $da

    add hl, de                                    ; $4f66: $19
    ld e, d                                       ; $4f67: $5a
    ld c, a                                       ; $4f68: $4f
    ldh [$7d], a                                  ; $4f69: $e0 $7d
    ld a, c                                       ; $4f6b: $79
    ld d, a                                       ; $4f6c: $57
    ld b, h                                       ; $4f6d: $44
    ld d, a                                       ; $4f6e: $57
    ld e, d                                       ; $4f6f: $5a
    ld c, a                                       ; $4f70: $4f
    jr nz, @+$4f                                  ; $4f71: $20 $4d

    ldh [$7d], a                                  ; $4f73: $e0 $7d
    ld h, [hl]                                    ; $4f75: $66
    ld b, b                                       ; $4f76: $40
    ld e, d                                       ; $4f77: $5a
    ld c, a                                       ; $4f78: $4f
    ld bc, $ee0c                                  ; $4f79: $01 $0c $ee
    db $10                                        ; $4f7c: $10
    jp c, Jump_000_1119                           ; $4f7d: $da $19 $11

jr_0aa_4f80:
    add hl, de                                    ; $4f80: $19
    nop                                           ; $4f81: $00
    nop                                           ; $4f82: $00
    jp c, Jump_0aa_5719                           ; $4f83: $da $19 $57

    ld d, e                                       ; $4f86: $53
    rlca                                          ; $4f87: $07
    dec l                                         ; $4f88: $2d
    jr nz, jr_0aa_4fd8                            ; $4f89: $20 $4d

    ld a, c                                       ; $4f8b: $79
    ld d, a                                       ; $4f8c: $57
    ld b, h                                       ; $4f8d: $44
    ld d, a                                       ; $4f8e: $57
    ldh [$7d], a                                  ; $4f8f: $e0 $7d
    jr nz, jr_0aa_4fe0                            ; $4f91: $20 $4d

    ld b, l                                       ; $4f93: $45
    inc c                                         ; $4f94: $0c
    ld h, [hl]                                    ; $4f95: $66
    ld b, b                                       ; $4f96: $40
    ldh [$7d], a                                  ; $4f97: $e0 $7d
    xor $10                                       ; $4f99: $ee $10
    jp c, Jump_000_1119                           ; $4f9b: $da $19 $11

    add hl, de                                    ; $4f9e: $19
    ldh [$7d], a                                  ; $4f9f: $e0 $7d
    nop                                           ; $4fa1: $00
    nop                                           ; $4fa2: $00
    ldh [$7d], a                                  ; $4fa3: $e0 $7d
    ld a, [hl-]                                   ; $4fa5: $3a
    ld h, $07                                     ; $4fa6: $26 $07
    dec l                                         ; $4fa8: $2d
    jr nz, jr_0aa_4ff8                            ; $4fa9: $20 $4d

    ld a, c                                       ; $4fab: $79
    ld d, a                                       ; $4fac: $57
    ld b, h                                       ; $4fad: $44
    ld d, a                                       ; $4fae: $57
    ldh [$7d], a                                  ; $4faf: $e0 $7d
    ld bc, $ee0c                                  ; $4fb1: $01 $0c $ee
    db $10                                        ; $4fb4: $10
    and h                                         ; $4fb5: $a4
    ld b, h                                       ; $4fb6: $44
    jp c, Jump_000_1119                           ; $4fb7: $da $19 $11

    add hl, de                                    ; $4fba: $19
    jp c, $a419                                   ; $4fbb: $da $19 $a4

    ld b, h                                       ; $4fbe: $44
    jp c, $0019                                   ; $4fbf: $da $19 $00

    nop                                           ; $4fc2: $00
    xor $10                                       ; $4fc3: $ee $10
    dec e                                         ; $4fc5: $1d
    ld c, e                                       ; $4fc6: $4b
    jp c, $c019                                   ; $4fc7: $da $19 $c0

    inc [hl]                                      ; $4fca: $34
    ld b, h                                       ; $4fcb: $44
    ld d, a                                       ; $4fcc: $57
    ldh [$7d], a                                  ; $4fcd: $e0 $7d
    ld a, c                                       ; $4fcf: $79
    ld d, a                                       ; $4fd0: $57
    ld h, b                                       ; $4fd1: $60
    ld e, l                                       ; $4fd2: $5d
    xor $10                                       ; $4fd3: $ee $10
    ld bc, $da0c                                  ; $4fd5: $01 $0c $da

jr_0aa_4fd8:
    add hl, de                                    ; $4fd8: $19
    ld de, $da19                                  ; $4fd9: $11 $19 $da
    add hl, de                                    ; $4fdc: $19
    ld bc, $da0c                                  ; $4fdd: $01 $0c $da

jr_0aa_4fe0:
    add hl, de                                    ; $4fe0: $19
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    ld de, $da19                                  ; $4fe3: $11 $19 $da
    add hl, de                                    ; $4fe6: $19
    dec e                                         ; $4fe7: $1d
    ld c, e                                       ; $4fe8: $4b
    jr nz, jr_0aa_5038                            ; $4fe9: $20 $4d

    ld bc, $ef0c                                  ; $4feb: $01 $0c $ef
    inc d                                         ; $4fee: $14
    ldh [$7d], a                                  ; $4fef: $e0 $7d
    ld bc, $ee0c                                  ; $4ff1: $01 $0c $ee
    db $10                                        ; $4ff4: $10
    jp c, Jump_000_1119                           ; $4ff5: $da $19 $11

jr_0aa_4ff8:
    add hl, de                                    ; $4ff8: $19
    ld de, $da19                                  ; $4ff9: $11 $19 $da
    add hl, de                                    ; $4ffc: $19
    jp c, Jump_000_1119                           ; $4ffd: $da $19 $11

    add hl, de                                    ; $5000: $19
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    ld l, h                                       ; $5003: $6c
    add hl, hl                                    ; $5004: $29
    ld a, $6b                                     ; $5005: $3e $6b
    rst $30                                       ; $5007: $f7
    ld sp, $296c                                  ; $5008: $31 $6c $29
    ld a, $6b                                     ; $500b: $3e $6b
    ld e, e                                       ; $500d: $5b
    ld a, $d5                                     ; $500e: $3e $d5
    dec l                                         ; $5010: $2d
    ld e, e                                       ; $5011: $5b
    ld a, $3e                                     ; $5012: $3e $3e
    ld l, e                                       ; $5014: $6b
    ld e, e                                       ; $5015: $5b
    ld a, $d5                                     ; $5016: $3e $d5
    dec l                                         ; $5018: $2d
    inc [hl]                                      ; $5019: $34
    dec d                                         ; $501a: $15
    ld a, $6b                                     ; $501b: $3e $6b
    ld e, e                                       ; $501d: $5b
    ld a, $d5                                     ; $501e: $3e $d5
    dec l                                         ; $5020: $2d
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    ld [hl], a                                    ; $5023: $77
    ld b, [hl]                                    ; $5024: $46
    sbc [hl]                                      ; $5025: $9e
    ld [hl], a                                    ; $5026: $77
    add sp, $1c                                   ; $5027: $e8 $1c
    sub b                                         ; $5029: $90
    add hl, hl                                    ; $502a: $29
    rst $38                                       ; $502b: $ff
    ld a, a                                       ; $502c: $7f
    rst $10                                       ; $502d: $d7
    ld d, [hl]                                    ; $502e: $56
    ld e, e                                       ; $502f: $5b
    ld a, $6c                                     ; $5030: $3e $6c
    add hl, hl                                    ; $5032: $29
    ld a, d                                       ; $5033: $7a
    ld b, d                                       ; $5034: $42
    rst $38                                       ; $5035: $ff
    ld a, a                                       ; $5036: $7f
    push de                                       ; $5037: $d5

jr_0aa_5038:
    dec l                                         ; $5038: $2d
    inc [hl]                                      ; $5039: $34
    dec d                                         ; $503a: $15
    ld e, e                                       ; $503b: $5b
    ld a, $ff                                     ; $503c: $3e $ff
    ld a, a                                       ; $503e: $7f
    push de                                       ; $503f: $d5
    dec l                                         ; $5040: $2d
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    inc [hl]                                      ; $5043: $34
    ld b, d                                       ; $5044: $42
    sbc [hl]                                      ; $5045: $9e
    ld e, a                                       ; $5046: $5f
    rst $38                                       ; $5047: $ff
    ld a, a                                       ; $5048: $7f
    adc a                                         ; $5049: $8f
    add hl, hl                                    ; $504a: $29
    rst $38                                       ; $504b: $ff
    ld a, a                                       ; $504c: $7f
    rst $10                                       ; $504d: $d7
    ld d, [hl]                                    ; $504e: $56
    ld e, e                                       ; $504f: $5b
    ld a, $64                                     ; $5050: $3e $64
    inc c                                         ; $5052: $0c
    rst $10                                       ; $5053: $d7
    ld d, [hl]                                    ; $5054: $56
    rst $38                                       ; $5055: $ff
    ld [hl], a                                    ; $5056: $77
    or b                                          ; $5057: $b0
    dec l                                         ; $5058: $2d
    inc [hl]                                      ; $5059: $34
    dec d                                         ; $505a: $15
    ld e, e                                       ; $505b: $5b
    ld a, $6c                                     ; $505c: $3e $6c
    add hl, hl                                    ; $505e: $29
    push de                                       ; $505f: $d5
    dec l                                         ; $5060: $2d
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    ld [de], a                                    ; $5063: $12
    ld a, $be                                     ; $5064: $3e $be
    ld h, a                                       ; $5066: $67
    add sp, $1c                                   ; $5067: $e8 $1c
    ld l, h                                       ; $5069: $6c
    add hl, hl                                    ; $506a: $29
    rst $38                                       ; $506b: $ff
    ld a, e                                       ; $506c: $7b
    rst $10                                       ; $506d: $d7
    ld d, [hl]                                    ; $506e: $56
    push de                                       ; $506f: $d5
    dec l                                         ; $5070: $2d
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    rst $10                                       ; $5073: $d7
    ld d, [hl]                                    ; $5074: $56
    rst $38                                       ; $5075: $ff
    ld a, e                                       ; $5076: $7b
    pop af                                        ; $5077: $f1
    add hl, sp                                    ; $5078: $39
    ld d, b                                       ; $5079: $50
    dec e                                         ; $507a: $1d
    rst $10                                       ; $507b: $d7
    ld d, [hl]                                    ; $507c: $56
    rst $38                                       ; $507d: $ff
    ld a, a                                       ; $507e: $7f
    ld e, e                                       ; $507f: $5b
    ld a, $00                                     ; $5080: $3e $00
    nop                                           ; $5082: $00
    ld d, h                                       ; $5083: $54
    ld b, [hl]                                    ; $5084: $46
    jp hl                                         ; $5085: $e9


    inc e                                         ; $5086: $1c
    ld a, [hl]                                    ; $5087: $7e
    ld l, a                                       ; $5088: $6f
    adc a                                         ; $5089: $8f
    add hl, hl                                    ; $508a: $29
    rst $10                                       ; $508b: $d7
    ld d, [hl]                                    ; $508c: $56
    rst $38                                       ; $508d: $ff
    ld a, a                                       ; $508e: $7f
    rst $38                                       ; $508f: $ff
    ld d, e                                       ; $5090: $53
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    ld e, e                                       ; $5093: $5b
    ld d, e                                       ; $5094: $53
    ld c, l                                       ; $5095: $4d
    add hl, hl                                    ; $5096: $29
    rst $38                                       ; $5097: $ff
    ld a, a                                       ; $5098: $7f
    ld l, h                                       ; $5099: $6c
    add hl, hl                                    ; $509a: $29
    rst $38                                       ; $509b: $ff
    ld a, a                                       ; $509c: $7f
    ld e, d                                       ; $509d: $5a
    ld a, $54                                     ; $509e: $3e $54
    dec e                                         ; $50a0: $1d
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    ld [hl], c                                    ; $50a3: $71
    add hl, hl                                    ; $50a4: $29
    sbc h                                         ; $50a5: $9c
    ld c, [hl]                                    ; $50a6: $4e
    add sp, $1c                                   ; $50a7: $e8 $1c
    xor [hl]                                      ; $50a9: $ae
    ld sp, $53ff                                  ; $50aa: $31 $ff $53
    rst $10                                       ; $50ad: $d7
    ld d, [hl]                                    ; $50ae: $56
    rst $38                                       ; $50af: $ff
    ld a, a                                       ; $50b0: $7f
    ld h, h                                       ; $50b1: $64
    inc c                                         ; $50b2: $0c
    sbc b                                         ; $50b3: $98
    ld c, [hl]                                    ; $50b4: $4e
    or c                                          ; $50b5: $b1
    dec l                                         ; $50b6: $2d
    rst $38                                       ; $50b7: $ff
    ld l, a                                       ; $50b8: $6f
    ld l, h                                       ; $50b9: $6c
    add hl, hl                                    ; $50ba: $29
    rst $38                                       ; $50bb: $ff
    ld [hl], a                                    ; $50bc: $77
    ld e, d                                       ; $50bd: $5a
    ld b, d                                       ; $50be: $42
    ld [hl], h                                    ; $50bf: $74
    ld hl, $0000                                  ; $50c0: $21 $00 $00
    ld [hl], d                                    ; $50c3: $72
    dec h                                         ; $50c4: $25
    ld a, $6b                                     ; $50c5: $3e $6b
    ld e, e                                       ; $50c7: $5b
    ld a, $85                                     ; $50c8: $3e $85
    db $10                                        ; $50ca: $10
    sbc h                                         ; $50cb: $9c
    ld d, e                                       ; $50cc: $53
    rst $38                                       ; $50cd: $ff
    ld a, a                                       ; $50ce: $7f
    pop af                                        ; $50cf: $f1
    add hl, sp                                    ; $50d0: $39
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    db $d3                                        ; $50d3: $d3
    ld sp, $212a                                  ; $50d4: $31 $2a $21
    ld a, c                                       ; $50d7: $79
    ld b, [hl]                                    ; $50d8: $46
    ld d, c                                       ; $50d9: $51
    ld hl, $56d7                                  ; $50da: $21 $d7 $56
    ld e, e                                       ; $50dd: $5b
    ld a, $ff                                     ; $50de: $3e $ff
    ld [hl], a                                    ; $50e0: $77
    nop                                           ; $50e1: $00
    nop                                           ; $50e2: $00
    ld e, e                                       ; $50e3: $5b
    ld a, $3e                                     ; $50e4: $3e $3e
    ld l, e                                       ; $50e6: $6b
    rst $38                                       ; $50e7: $ff
    ld [hl], a                                    ; $50e8: $77
    ld h, h                                       ; $50e9: $64
    inc c                                         ; $50ea: $0c
    sbc b                                         ; $50eb: $98
    ld c, [hl]                                    ; $50ec: $4e
    db $d3                                        ; $50ed: $d3
    ld sp, $77ff                                  ; $50ee: $31 $ff $77
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    jr c, jr_0aa_512f                             ; $50f3: $38 $3a

    rst $38                                       ; $50f5: $ff
    ld a, a                                       ; $50f6: $7f
    ld a, [hl+]                                   ; $50f7: $2a
    dec h                                         ; $50f8: $25
    ld l, $1d                                     ; $50f9: $2e $1d
    rst $10                                       ; $50fb: $d7
    ld d, [hl]                                    ; $50fc: $56
    dec d                                         ; $50fd: $15
    ld [hl], $ff                                  ; $50fe: $36 $ff
    ld [hl], e                                    ; $5100: $73
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    ld e, e                                       ; $5103: $5b
    ld a, $3e                                     ; $5104: $3e $3e
    ld l, e                                       ; $5106: $6b
    ld a, c                                       ; $5107: $79
    ld b, [hl]                                    ; $5108: $46
    ld b, d                                       ; $5109: $42
    ld [$35d2], sp                                ; $510a: $08 $d2 $35
    rst $38                                       ; $510d: $ff
    ld h, a                                       ; $510e: $67
    ld a, d                                       ; $510f: $7a
    ld b, d                                       ; $5110: $42
    ld c, l                                       ; $5111: $4d
    dec h                                         ; $5112: $25
    rst $38                                       ; $5113: $ff
    ld a, a                                       ; $5114: $7f
    rst $10                                       ; $5115: $d7
    ld d, [hl]                                    ; $5116: $56
    ld e, e                                       ; $5117: $5b
    ld a, $00                                     ; $5118: $3e $00
    nop                                           ; $511a: $00
    sbc c                                         ; $511b: $99
    ld c, d                                       ; $511c: $4a
    ld l, a                                       ; $511d: $6f
    dec h                                         ; $511e: $25
    rst $38                                       ; $511f: $ff
    ld l, a                                       ; $5120: $6f
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    ld e, e                                       ; $5123: $5b
    ld a, $3e                                     ; $5124: $3e $3e
    ld l, e                                       ; $5126: $6b
    rst $38                                       ; $5127: $ff
    ld l, a                                       ; $5128: $6f
    nop                                           ; $5129: $00
    nop                                           ; $512a: $00
    jp nc, $7a35                                  ; $512b: $d2 $35 $7a

    ld b, d                                       ; $512e: $42

jr_0aa_512f:
    dec bc                                        ; $512f: $0b
    dec e                                         ; $5130: $1d
    adc a                                         ; $5131: $8f
    add hl, hl                                    ; $5132: $29
    rst $38                                       ; $5133: $ff
    ld d, e                                       ; $5134: $53
    ld e, e                                       ; $5135: $5b
    ld a, $ff                                     ; $5136: $3e $ff
    ld a, a                                       ; $5138: $7f
    nop                                           ; $5139: $00
    nop                                           ; $513a: $00
    sbc b                                         ; $513b: $98
    ld c, [hl]                                    ; $513c: $4e
    ld [hl], b                                    ; $513d: $70
    dec h                                         ; $513e: $25
    rst $38                                       ; $513f: $ff
    ld h, a                                       ; $5140: $67
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    ld e, e                                       ; $5143: $5b
    ld a, $3e                                     ; $5144: $3e $3e
    ld l, e                                       ; $5146: $6b
    rst $38                                       ; $5147: $ff
    ld h, a                                       ; $5148: $67
    nop                                           ; $5149: $00
    nop                                           ; $514a: $00
    pop af                                        ; $514b: $f1
    add hl, sp                                    ; $514c: $39
    ld [$5b1c], a                                 ; $514d: $ea $1c $5b
    ld a, $8f                                     ; $5150: $3e $8f
    add hl, hl                                    ; $5152: $29
    rst $38                                       ; $5153: $ff
    ld a, a                                       ; $5154: $7f
    rst $10                                       ; $5155: $d7
    ld d, [hl]                                    ; $5156: $56
    ld e, e                                       ; $5157: $5b
    ld a, $00                                     ; $5158: $3e $00
    nop                                           ; $515a: $00
    ld e, e                                       ; $515b: $5b
    ld a, $70                                     ; $515c: $3e $70
    dec h                                         ; $515e: $25
    rst $38                                       ; $515f: $ff
    ld a, a                                       ; $5160: $7f
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    ld e, e                                       ; $5163: $5b
    ld a, $3e                                     ; $5164: $3e $3e
    ld l, e                                       ; $5166: $6b
    rst $38                                       ; $5167: $ff
    ld a, a                                       ; $5168: $7f
    nop                                           ; $5169: $00
    nop                                           ; $516a: $00
    push de                                       ; $516b: $d5
    dec l                                         ; $516c: $2d
    add sp, $1c                                   ; $516d: $e8 $1c
    ld e, e                                       ; $516f: $5b
    ld a, $6c                                     ; $5170: $3e $6c
    add hl, hl                                    ; $5172: $29
    rst $10                                       ; $5173: $d7
    ld d, [hl]                                    ; $5174: $56
    rst $38                                       ; $5175: $ff
    ld a, a                                       ; $5176: $7f
    ld e, e                                       ; $5177: $5b
    ld a, $00                                     ; $5178: $3e $00
    nop                                           ; $517a: $00
    push de                                       ; $517b: $d5
    dec l                                         ; $517c: $2d
    dec l                                         ; $517d: $2d
    dec e                                         ; $517e: $1d
    ld a, c                                       ; $517f: $79
    ld b, [hl]                                    ; $5180: $46
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    ld e, e                                       ; $5183: $5b
    ld a, $3e                                     ; $5184: $3e $3e
    ld l, e                                       ; $5186: $6b
    inc [hl]                                      ; $5187: $34
    dec d                                         ; $5188: $15
    cpl                                           ; $5189: $2f
    ld hl, $3e5b                                  ; $518a: $21 $5b $3e
    push de                                       ; $518d: $d5
    dec l                                         ; $518e: $2d
    inc [hl]                                      ; $518f: $34
    dec d                                         ; $5190: $15
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    ld e, c                                       ; $5193: $59
    ld a, $ff                                     ; $5194: $3e $ff
    ld a, a                                       ; $5196: $7f
    ld a, [hl+]                                   ; $5197: $2a
    ld hl, $0000                                  ; $5198: $21 $00 $00
    jr nc, jr_0aa_51ba                            ; $519b: $30 $1d

    ld e, d                                       ; $519d: $5a
    ld b, d                                       ; $519e: $42
    call nc, $002d                                ; $519f: $d4 $2d $00
    nop                                           ; $51a2: $00
    ld e, e                                       ; $51a3: $5b
    ld a, $3e                                     ; $51a4: $3e $3e
    ld l, e                                       ; $51a6: $6b
    call nc, $5b2d                                ; $51a7: $d4 $2d $5b
    ld a, $5b                                     ; $51aa: $3e $5b
    ld a, $3e                                     ; $51ac: $3e $3e
    ld l, e                                       ; $51ae: $6b
    call nc, $002d                                ; $51af: $d4 $2d $00
    nop                                           ; $51b2: $00
    rst $10                                       ; $51b3: $d7
    ld d, [hl]                                    ; $51b4: $56
    jp hl                                         ; $51b5: $e9


    inc e                                         ; $51b6: $1c
    ld e, e                                       ; $51b7: $5b
    ld a, $00                                     ; $51b8: $3e $00

jr_0aa_51ba:
    nop                                           ; $51ba: $00
    ld d, h                                       ; $51bb: $54
    dec e                                         ; $51bc: $1d
    ld e, e                                       ; $51bd: $5b
    ld a, $e8                                     ; $51be: $3e $e8
    inc e                                         ; $51c0: $1c
    nop                                           ; $51c1: $00
    nop                                           ; $51c2: $00
    ld e, e                                       ; $51c3: $5b
    ld a, $3e                                     ; $51c4: $3e $3e
    ld l, e                                       ; $51c6: $6b
    add sp, $1c                                   ; $51c7: $e8 $1c
    ld e, e                                       ; $51c9: $5b
    ld a, $5b                                     ; $51ca: $3e $5b
    ld a, $3e                                     ; $51cc: $3e $3e
    ld l, e                                       ; $51ce: $6b
    add sp, $1c                                   ; $51cf: $e8 $1c
    nop                                           ; $51d1: $00
    nop                                           ; $51d2: $00
    db $d3                                        ; $51d3: $d3
    ld sp, $3e5b                                  ; $51d4: $31 $5b $3e
    add sp, $1c                                   ; $51d7: $e8 $1c
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    ld [hl-], a                                   ; $51db: $32
    add hl, de                                    ; $51dc: $19
    ld e, e                                       ; $51dd: $5b
    ld a, $d5                                     ; $51de: $3e $d5
    dec l                                         ; $51e0: $2d
    nop                                           ; $51e1: $00
    nop                                           ; $51e2: $00
    inc [hl]                                      ; $51e3: $34
    dec d                                         ; $51e4: $15
    ld e, e                                       ; $51e5: $5b
    ld a, $3e                                     ; $51e6: $3e $3e
    ld l, e                                       ; $51e8: $6b
    inc [hl]                                      ; $51e9: $34
    dec d                                         ; $51ea: $15
    ld e, e                                       ; $51eb: $5b
    ld a, $5b                                     ; $51ec: $3e $5b
    ld a, $3e                                     ; $51ee: $3e $3e
    ld l, e                                       ; $51f0: $6b
    nop                                           ; $51f1: $00
    nop                                           ; $51f2: $00
    cpl                                           ; $51f3: $2f
    ld hl, $3e5b                                  ; $51f4: $21 $5b $3e
    inc [hl]                                      ; $51f7: $34
    dec d                                         ; $51f8: $15
    nop                                           ; $51f9: $00
    nop                                           ; $51fa: $00
    ld e, e                                       ; $51fb: $5b
    ld a, $2f                                     ; $51fc: $3e $2f
    ld hl, $1534                                  ; $51fe: $21 $34 $15
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    rra                                           ; $5203: $1f
    ld l, $7f                                     ; $5204: $2e $7f
    ld l, e                                       ; $5206: $6b
    sub a                                         ; $5207: $97
    ld hl, $1d2a                                  ; $5208: $21 $2a $1d
    ld a, a                                       ; $520b: $7f
    ld l, e                                       ; $520c: $6b
    rra                                           ; $520d: $1f
    ld l, $97                                     ; $520e: $2e $97
    ld hl, $1d2a                                  ; $5210: $21 $2a $1d
    rra                                           ; $5213: $1f
    ld l, $7f                                     ; $5214: $2e $7f
    ld l, e                                       ; $5216: $6b
    sub a                                         ; $5217: $97
    ld hl, $08f7                                  ; $5218: $21 $f7 $08
    ld a, a                                       ; $521b: $7f
    ld l, e                                       ; $521c: $6b
    rra                                           ; $521d: $1f
    ld l, $97                                     ; $521e: $2e $97
    ld hl, $0000                                  ; $5220: $21 $00 $00
    rra                                           ; $5223: $1f
    ld l, $7f                                     ; $5224: $2e $7f
    ld l, e                                       ; $5226: $6b
    sub a                                         ; $5227: $97
    ld hl, $1d2a                                  ; $5228: $21 $2a $1d
    ld e, e                                       ; $522b: $5b
    ld h, a                                       ; $522c: $67
    rra                                           ; $522d: $1f
    ld l, $f1                                     ; $522e: $2e $f1
    add hl, sp                                    ; $5230: $39
    ld a, [hl+]                                   ; $5231: $2a
    dec e                                         ; $5232: $1d
    rra                                           ; $5233: $1f
    ld l, $f1                                     ; $5234: $2e $f1
    add hl, sp                                    ; $5236: $39
    adc [hl]                                      ; $5237: $8e
    dec l                                         ; $5238: $2d
    rst $30                                       ; $5239: $f7
    ld [$2e1f], sp                                ; $523a: $08 $1f $2e
    pop af                                        ; $523d: $f1
    add hl, sp                                    ; $523e: $39
    adc [hl]                                      ; $523f: $8e
    dec l                                         ; $5240: $2d
    nop                                           ; $5241: $00
    nop                                           ; $5242: $00
    rra                                           ; $5243: $1f
    ld l, $7f                                     ; $5244: $2e $7f
    ld l, e                                       ; $5246: $6b
    adc [hl]                                      ; $5247: $8e
    dec l                                         ; $5248: $2d
    adc l                                         ; $5249: $8d
    add hl, hl                                    ; $524a: $29
    ld a, [de]                                    ; $524b: $1a
    ld e, a                                       ; $524c: $5f
    call c, $de29                                 ; $524d: $dc $29 $de
    ld [hl], a                                    ; $5250: $77
    add hl, bc                                    ; $5251: $09
    add hl, de                                    ; $5252: $19
    dec sp                                        ; $5253: $3b
    ld h, e                                       ; $5254: $63
    or b                                          ; $5255: $b0
    ld sp, $2e1f                                  ; $5256: $31 $1f $2e
    rst $30                                       ; $5259: $f7
    ld [$2e1f], sp                                ; $525a: $08 $1f $2e
    or b                                          ; $525d: $b0
    ld sp, $2e1f                                  ; $525e: $31 $1f $2e
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    rra                                           ; $5263: $1f
    ld l, $7f                                     ; $5264: $2e $7f
    ld l, e                                       ; $5266: $6b
    rra                                           ; $5267: $1f
    ld l, $2a                                     ; $5268: $2e $2a
    dec e                                         ; $526a: $1d
    ld e, h                                       ; $526b: $5c
    ld h, a                                       ; $526c: $67
    pop af                                        ; $526d: $f1
    add hl, sp                                    ; $526e: $39
    db $db                                        ; $526f: $db
    dec h                                         ; $5270: $25
    rst $00                                       ; $5271: $c7
    db $10                                        ; $5272: $10
    ld a, [de]                                    ; $5273: $1a
    ld e, a                                       ; $5274: $5f
    adc [hl]                                      ; $5275: $8e
    dec l                                         ; $5276: $2d
    pop af                                        ; $5277: $f1
    add hl, sp                                    ; $5278: $39
    and [hl]                                      ; $5279: $a6
    inc c                                         ; $527a: $0c
    rra                                           ; $527b: $1f
    ld l, $f7                                     ; $527c: $2e $f7
    ld [$2197], sp                                ; $527e: $08 $97 $21
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    rra                                           ; $5283: $1f
    ld l, $7f                                     ; $5284: $2e $7f
    ld l, e                                       ; $5286: $6b
    pop af                                        ; $5287: $f1
    add hl, sp                                    ; $5288: $39
    ld b, h                                       ; $5289: $44
    ld [$5f1a], sp                                ; $528a: $08 $1a $5f
    ret nc                                        ; $528d: $d0

    dec [hl]                                      ; $528e: $35
    rrca                                          ; $528f: $0f
    dec d                                         ; $5290: $15
    add l                                         ; $5291: $85
    ld [$2d8e], sp                                ; $5292: $08 $8e $2d
    pop af                                        ; $5295: $f1
    add hl, sp                                    ; $5296: $39
    ld a, [hl+]                                   ; $5297: $2a
    dec e                                         ; $5298: $1d
    nop                                           ; $5299: $00
    nop                                           ; $529a: $00
    rst $30                                       ; $529b: $f7
    ld [$2e1f], sp                                ; $529c: $08 $1f $2e
    sub a                                         ; $529f: $97
    ld hl, $0000                                  ; $52a0: $21 $00 $00
    sub a                                         ; $52a3: $97
    ld hl, $6b7f                                  ; $52a4: $21 $7f $6b
    rra                                           ; $52a7: $1f
    ld l, $44                                     ; $52a8: $2e $44
    ld [$2d8e], sp                                ; $52aa: $08 $8e $2d
    pop af                                        ; $52ad: $f1
    add hl, sp                                    ; $52ae: $39
    ld a, [hl+]                                   ; $52af: $2a
    dec e                                         ; $52b0: $1d
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    ld a, [hl+]                                   ; $52b3: $2a
    dec e                                         ; $52b4: $1d
    xor a                                         ; $52b5: $af
    ld sp, $0885                                  ; $52b6: $31 $85 $08
    nop                                           ; $52b9: $00
    nop                                           ; $52ba: $00
    rst $30                                       ; $52bb: $f7
    ld [$2e1f], sp                                ; $52bc: $08 $1f $2e
    rrca                                          ; $52bf: $0f
    dec d                                         ; $52c0: $15
    nop                                           ; $52c1: $00
    nop                                           ; $52c2: $00
    cp $29                                        ; $52c3: $fe $29
    ld a, [hl+]                                   ; $52c5: $2a
    dec e                                         ; $52c6: $1d
    ld a, a                                       ; $52c7: $7f
    ld l, e                                       ; $52c8: $6b
    add l                                         ; $52c9: $85
    ld [$296d], sp                                ; $52ca: $08 $6d $29
    ld a, [hl+]                                   ; $52cd: $2a
    dec e                                         ; $52ce: $1d
    xor a                                         ; $52cf: $af
    ld sp, $0464                                  ; $52d0: $31 $64 $04
    ld a, [hl+]                                   ; $52d3: $2a
    dec e                                         ; $52d4: $1d
    and [hl]                                      ; $52d5: $a6
    inc c                                         ; $52d6: $0c
    add l                                         ; $52d7: $85
    ld [$0021], sp                                ; $52d8: $08 $21 $00
    rla                                           ; $52db: $17
    ld de, $2e1f                                  ; $52dc: $11 $1f $2e
    ld a, [hl+]                                   ; $52df: $2a
    dec e                                         ; $52e0: $1d
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    ld l, a                                       ; $52e3: $6f
    add hl, hl                                    ; $52e4: $29
    rra                                           ; $52e5: $1f
    ld l, $3c                                     ; $52e6: $2e $3c
    ld h, e                                       ; $52e8: $63
    adc [hl]                                      ; $52e9: $8e
    dec l                                         ; $52ea: $2d
    ld a, [hl-]                                   ; $52eb: $3a
    ld h, e                                       ; $52ec: $63
    pop af                                        ; $52ed: $f1
    add hl, sp                                    ; $52ee: $39
    ld [hl-], a                                   ; $52ef: $32
    ld b, d                                       ; $52f0: $42
    ld a, [hl+]                                   ; $52f1: $2a
    dec e                                         ; $52f2: $1d
    ld a, [de]                                    ; $52f3: $1a
    ld e, a                                       ; $52f4: $5f
    pop af                                        ; $52f5: $f1
    add hl, sp                                    ; $52f6: $39
    ld c, e                                       ; $52f7: $4b
    ld hl, $1d0a                                  ; $52f8: $21 $0a $1d
    scf                                           ; $52fb: $37
    dec d                                         ; $52fc: $15
    rra                                           ; $52fd: $1f
    ld l, $f1                                     ; $52fe: $2e $f1
    add hl, sp                                    ; $5300: $39
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    pop af                                        ; $5303: $f1
    add hl, sp                                    ; $5304: $39
    ld e, h                                       ; $5305: $5c
    ld h, a                                       ; $5306: $67
    ld a, [hl+]                                   ; $5307: $2a
    dec e                                         ; $5308: $1d
    pop af                                        ; $5309: $f1
    add hl, sp                                    ; $530a: $39
    ld a, [de]                                    ; $530b: $1a
    ld e, a                                       ; $530c: $5f
    sbc $77                                       ; $530d: $de $77
    ld [hl-], a                                   ; $530f: $32
    ld b, d                                       ; $5310: $42
    pop af                                        ; $5311: $f1
    add hl, sp                                    ; $5312: $39
    ld a, [de]                                    ; $5313: $1a
    ld e, a                                       ; $5314: $5f
    ld a, l                                       ; $5315: $7d
    ld l, e                                       ; $5316: $6b
    sbc $77                                       ; $5317: $de $77
    add sp, $14                                   ; $5319: $e8 $14
    cp c                                          ; $531b: $b9
    dec h                                         ; $531c: $25
    ld [de], a                                    ; $531d: $12
    ld a, $f7                                     ; $531e: $3e $f7
    ld [$0000], sp                                ; $5320: $08 $00 $00
    pop af                                        ; $5323: $f1
    add hl, sp                                    ; $5324: $39
    ld e, l                                       ; $5325: $5d
    ld h, a                                       ; $5326: $67
    ld a, [hl+]                                   ; $5327: $2a
    dec e                                         ; $5328: $1d
    ld de, $1a3e                                  ; $5329: $11 $3e $1a
    ld e, a                                       ; $532c: $5f
    cp [hl]                                       ; $532d: $be
    ld [hl], e                                    ; $532e: $73
    ld e, e                                       ; $532f: $5b
    ld h, a                                       ; $5330: $67
    ld l, l                                       ; $5331: $6d
    add hl, hl                                    ; $5332: $29
    ld a, [de]                                    ; $5333: $1a
    ld e, a                                       ; $5334: $5f
    sbc $77                                       ; $5335: $de $77
    pop af                                        ; $5337: $f1
    add hl, sp                                    ; $5338: $39
    ld b, d                                       ; $5339: $42
    inc b                                         ; $533a: $04
    ld a, [hl+]                                   ; $533b: $2a
    dec e                                         ; $533c: $1d
    rst $30                                       ; $533d: $f7
    ld [$39f1], sp                                ; $533e: $08 $f1 $39
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    ld a, [hl+]                                   ; $5343: $2a
    dec e                                         ; $5344: $1d
    ld a, a                                       ; $5345: $7f
    ld l, e                                       ; $5346: $6b
    xor a                                         ; $5347: $af
    ld sp, $39f1                                  ; $5348: $31 $f1 $39
    ld a, [de]                                    ; $534b: $1a
    ld e, a                                       ; $534c: $5f
    ld e, h                                       ; $534d: $5c
    ld h, a                                       ; $534e: $67
    xor a                                         ; $534f: $af
    ld sp, $14c7                                  ; $5350: $31 $c7 $14
    ld a, [de]                                    ; $5353: $1a
    ld e, a                                       ; $5354: $5f
    ret nc                                        ; $5355: $d0

    dec [hl]                                      ; $5356: $35
    ld a, [hl+]                                   ; $5357: $2a
    dec e                                         ; $5358: $1d
    nop                                           ; $5359: $00
    nop                                           ; $535a: $00
    rst $30                                       ; $535b: $f7
    ld [$0864], sp                                ; $535c: $08 $64 $08
    rst $00                                       ; $535f: $c7
    inc d                                         ; $5360: $14
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    ld a, a                                       ; $5363: $7f
    ld l, e                                       ; $5364: $6b
    add l                                         ; $5365: $85
    ld [$14c7], sp                                ; $5366: $08 $c7 $14
    add l                                         ; $5369: $85
    ld [$31af], sp                                ; $536a: $08 $af $31
    dec hl                                        ; $536d: $2b
    ld hl, $39f1                                  ; $536e: $21 $f1 $39
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    pop af                                        ; $5373: $f1
    add hl, sp                                    ; $5374: $39
    add hl, bc                                    ; $5375: $09
    add hl, de                                    ; $5376: $19
    ld h, e                                       ; $5377: $63
    inc b                                         ; $5378: $04
    nop                                           ; $5379: $00
    nop                                           ; $537a: $00
    ld a, [hl+]                                   ; $537b: $2a
    dec e                                         ; $537c: $1d
    rst $30                                       ; $537d: $f7
    ld [$0863], sp                                ; $537e: $08 $63 $08
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    sub a                                         ; $5383: $97
    ld hl, $150f                                  ; $5384: $21 $0f $15
    ld a, a                                       ; $5387: $7f
    ld l, e                                       ; $5388: $6b
    nop                                           ; $5389: $00
    nop                                           ; $538a: $00
    ld a, [hl+]                                   ; $538b: $2a
    dec e                                         ; $538c: $1d
    xor a                                         ; $538d: $af
    ld sp, $0885                                  ; $538e: $31 $85 $08
    ld a, [hl+]                                   ; $5391: $2a
    dec e                                         ; $5392: $1d
    adc [hl]                                      ; $5393: $8e
    dec l                                         ; $5394: $2d
    pop af                                        ; $5395: $f1
    add hl, sp                                    ; $5396: $39
    add l                                         ; $5397: $85
    ld [$0000], sp                                ; $5398: $08 $00 $00
    ld a, [bc]                                    ; $539b: $0a
    add hl, de                                    ; $539c: $19
    rla                                           ; $539d: $17
    ld de, $10a6                                  ; $539e: $11 $a6 $10
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    call c, Call_0aa_7f29                         ; $53a3: $dc $29 $7f
    ld l, e                                       ; $53a6: $6b
    rrca                                          ; $53a7: $0f
    dec d                                         ; $53a8: $15
    ld b, e                                       ; $53a9: $43
    nop                                           ; $53aa: $00
    rst $00                                       ; $53ab: $c7
    inc d                                         ; $53ac: $14
    ld a, [hl+]                                   ; $53ad: $2a
    dec e                                         ; $53ae: $1d
    ld h, h                                       ; $53af: $64
    ld [$14c7], sp                                ; $53b0: $08 $c7 $14
    adc [hl]                                      ; $53b3: $8e
    dec l                                         ; $53b4: $2d
    pop af                                        ; $53b5: $f1
    add hl, sp                                    ; $53b6: $39
    ld a, [hl+]                                   ; $53b7: $2a
    dec e                                         ; $53b8: $1d
    nop                                           ; $53b9: $00
    nop                                           ; $53ba: $00
    scf                                           ; $53bb: $37
    dec d                                         ; $53bc: $15
    rra                                           ; $53bd: $1f
    ld l, $a6                                     ; $53be: $2e $a6
    stop                                          ; $53c0: $10 $00
    nop                                           ; $53c2: $00
    sub a                                         ; $53c3: $97
    ld hl, $6b7f                                  ; $53c4: $21 $7f $6b
    rra                                           ; $53c7: $1f
    ld l, $42                                     ; $53c8: $2e $42
    inc b                                         ; $53ca: $04
    rst $00                                       ; $53cb: $c7
    inc d                                         ; $53cc: $14
    sub a                                         ; $53cd: $97
    ld hl, $1d2a                                  ; $53ce: $21 $2a $1d
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    rst $00                                       ; $53d3: $c7
    inc d                                         ; $53d4: $14
    ld a, [hl+]                                   ; $53d5: $2a
    dec e                                         ; $53d6: $1d
    ld h, h                                       ; $53d7: $64
    ld [$0021], sp                                ; $53d8: $08 $21 $00
    rst $30                                       ; $53db: $f7
    ld [$2e1f], sp                                ; $53dc: $08 $1f $2e
    sub a                                         ; $53df: $97
    ld hl, $0000                                  ; $53e0: $21 $00 $00
    rst $30                                       ; $53e3: $f7
    ld [$2e1f], sp                                ; $53e4: $08 $1f $2e
    ld a, a                                       ; $53e7: $7f
    ld l, e                                       ; $53e8: $6b
    nop                                           ; $53e9: $00
    nop                                           ; $53ea: $00
    rrca                                          ; $53eb: $0f
    dec d                                         ; $53ec: $15
    db $db                                        ; $53ed: $db
    dec h                                         ; $53ee: $25
    rst $30                                       ; $53ef: $f7
    ld [$0000], sp                                ; $53f0: $08 $00 $00
    rst $30                                       ; $53f3: $f7
    ld [$150f], sp                                ; $53f4: $08 $0f $15
    sub a                                         ; $53f7: $97
    ld hl, $08f7                                  ; $53f8: $21 $f7 $08
    rra                                           ; $53fb: $1f
    ld l, $0f                                     ; $53fc: $2e $0f
    dec d                                         ; $53fe: $15
    sub a                                         ; $53ff: $97
    ld hl, $0000                                  ; $5400: $21 $00 $00
    ld [hl+], a                                   ; $5403: $22
    ld e, $b2                                     ; $5404: $1e $b2
    rra                                           ; $5406: $1f
    add h                                         ; $5407: $84
    ld hl, $1e22                                  ; $5408: $21 $22 $1e
    or d                                          ; $540b: $b2
    rra                                           ; $540c: $1f
    or d                                          ; $540d: $b2
    rra                                           ; $540e: $1f
    add h                                         ; $540f: $84
    ld hl, $2184                                  ; $5410: $21 $84 $21
    or d                                          ; $5413: $b2
    rra                                           ; $5414: $1f
    ld [hl+], a                                   ; $5415: $22
    ld e, $84                                     ; $5416: $1e $84
    ld hl, $0800                                  ; $5418: $21 $00 $08
    inc h                                         ; $541b: $24
    ld h, $23                                     ; $541c: $26 $23
    dec e                                         ; $541e: $1d
    or d                                          ; $541f: $b2
    rra                                           ; $5420: $1f
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    ld [hl+], a                                   ; $5423: $22
    ld e, $b2                                     ; $5424: $1e $b2
    rra                                           ; $5426: $1f
    or d                                          ; $5427: $b2
    rra                                           ; $5428: $1f
    ld [hl+], a                                   ; $5429: $22
    ld e, $22                                     ; $542a: $1e $22
    ld e, $b2                                     ; $542c: $1e $b2
    rra                                           ; $542e: $1f
    or d                                          ; $542f: $b2
    rra                                           ; $5430: $1f
    and $24                                       ; $5431: $e6 $24
    ld [hl+], a                                   ; $5433: $22
    ld e, $84                                     ; $5434: $1e $84
    ld hl, $45ee                                  ; $5436: $21 $ee $45
    nop                                           ; $5439: $00
    ld [$1e02], sp                                ; $543a: $08 $02 $1e
    ld [hl], d                                    ; $543d: $72
    ld d, [hl]                                    ; $543e: $56
    ld [bc], a                                    ; $543f: $02
    add hl, de                                    ; $5440: $19
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    ld [hl+], a                                   ; $5443: $22
    ld e, $b2                                     ; $5444: $1e $b2
    rra                                           ; $5446: $1f
    ld [bc], a                                    ; $5447: $02
    add hl, de                                    ; $5448: $19
    ld [hl+], a                                   ; $5449: $22
    ld e, $22                                     ; $544a: $1e $22
    ld e, $b2                                     ; $544c: $1e $b2
    rra                                           ; $544e: $1f
    ld [bc], a                                    ; $544f: $02
    add hl, de                                    ; $5450: $19
    ld b, l                                       ; $5451: $45
    dec h                                         ; $5452: $25
    ld e, c                                       ; $5453: $59
    ld [hl], e                                    ; $5454: $73
    ld [hl+], a                                   ; $5455: $22
    ld e, $ee                                     ; $5456: $1e $ee
    ld b, l                                       ; $5458: $45
    nop                                           ; $5459: $00
    ld [$1941], sp                                ; $545a: $08 $41 $19
    ld [hl+], a                                   ; $545d: $22
    ld e, $e6                                     ; $545e: $1e $e6
    inc h                                         ; $5460: $24
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    ld [hl+], a                                   ; $5463: $22
    ld e, $b2                                     ; $5464: $1e $b2
    rra                                           ; $5466: $1f
    and $24                                       ; $5467: $e6 $24
    ld [hl+], a                                   ; $5469: $22
    ld e, $22                                     ; $546a: $1e $22
    ld e, $b2                                     ; $546c: $1e $b2
    rra                                           ; $546e: $1f
    and $24                                       ; $546f: $e6 $24
    nop                                           ; $5471: $00
    ld [$2e07], sp                                ; $5472: $08 $07 $2e
    ld e, c                                       ; $5475: $59
    ld [hl], e                                    ; $5476: $73
    ld b, $25                                     ; $5477: $06 $25
    nop                                           ; $5479: $00
    ld [$1520], sp                                ; $547a: $08 $20 $15
    ld [hl+], a                                   ; $547d: $22
    ld e, $84                                     ; $547e: $1e $84
    ld hl, $0000                                  ; $5480: $21 $00 $00
    ld [hl+], a                                   ; $5483: $22
    ld e, $b2                                     ; $5484: $1e $b2
    rra                                           ; $5486: $1f
    push hl                                       ; $5487: $e5
    jr nz, jr_0aa_54ac                            ; $5488: $20 $22

    ld e, $22                                     ; $548a: $1e $22
    ld e, $b2                                     ; $548c: $1e $b2
    rra                                           ; $548e: $1f
    push hl                                       ; $548f: $e5
    jr nz, jr_0aa_5492                            ; $5490: $20 $00

jr_0aa_5492:
    ld [$3e0b], sp                                ; $5492: $08 $0b $3e
    ld e, c                                       ; $5495: $59
    ld [hl], e                                    ; $5496: $73
    dec b                                         ; $5497: $05
    dec h                                         ; $5498: $25
    jr nz, @+$17                                  ; $5499: $20 $15

    ld [hl+], a                                   ; $549b: $22
    ld e, $84                                     ; $549c: $1e $84
    ld hl, $2505                                  ; $549e: $21 $05 $25
    nop                                           ; $54a1: $00
    nop                                           ; $54a2: $00
    ld [hl+], a                                   ; $54a3: $22
    ld e, $b2                                     ; $54a4: $1e $b2
    rra                                           ; $54a6: $1f
    dec b                                         ; $54a7: $05
    dec h                                         ; $54a8: $25
    and $24                                       ; $54a9: $e6 $24
    ld [hl+], a                                   ; $54ab: $22

jr_0aa_54ac:
    ld e, $84                                     ; $54ac: $1e $84
    ld hl, $2505                                  ; $54ae: $21 $05 $25
    nop                                           ; $54b1: $00
    ld [$45ee], sp                                ; $54b2: $08 $ee $45
    inc h                                         ; $54b5: $24
    ld hl, $6f38                                  ; $54b6: $21 $38 $6f
    jr nz, jr_0aa_54d0                            ; $54b9: $20 $15

    ld [hl+], a                                   ; $54bb: $22
    ld e, $24                                     ; $54bc: $1e $24
    ld hl, $6f38                                  ; $54be: $21 $38 $6f
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    ld [hl+], a                                   ; $54c3: $22
    ld e, $b2                                     ; $54c4: $1e $b2
    rra                                           ; $54c6: $1f
    jr c, jr_0aa_5538                             ; $54c7: $38 $6f

    and $24                                       ; $54c9: $e6 $24
    ld [hl+], a                                   ; $54cb: $22
    ld e, $c9                                     ; $54cc: $1e $c9
    dec [hl]                                      ; $54ce: $35
    push af                                       ; $54cf: $f5

jr_0aa_54d0:
    ld h, d                                       ; $54d0: $62
    nop                                           ; $54d1: $00
    ld [$3609], sp                                ; $54d2: $08 $09 $36
    inc b                                         ; $54d5: $04
    ld hl, $777a                                  ; $54d6: $21 $7a $77
    jr nz, jr_0aa_54f0                            ; $54d9: $20 $15

    ld [hl+], a                                   ; $54db: $22
    ld e, $04                                     ; $54dc: $1e $04
    ld hl, $777a                                  ; $54de: $21 $7a $77
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    ld [hl+], a                                   ; $54e3: $22
    ld e, $b2                                     ; $54e4: $1e $b2
    rra                                           ; $54e6: $1f
    ld a, d                                       ; $54e7: $7a
    ld [hl], a                                    ; $54e8: $77
    and $24                                       ; $54e9: $e6 $24
    ld [hl+], a                                   ; $54eb: $22
    ld e, $cc                                     ; $54ec: $1e $cc
    dec a                                         ; $54ee: $3d
    push af                                       ; $54ef: $f5

jr_0aa_54f0:
    ld h, d                                       ; $54f0: $62
    nop                                           ; $54f1: $00
    ld [$1e02], sp                                ; $54f2: $08 $02 $1e
    ld [hl], d                                    ; $54f5: $72
    ld d, [hl]                                    ; $54f6: $56
    push hl                                       ; $54f7: $e5
    jr nz, @+$22                                  ; $54f8: $20 $20

    dec d                                         ; $54fa: $15
    ld [hl+], a                                   ; $54fb: $22
    ld e, $72                                     ; $54fc: $1e $72
    ld d, [hl]                                    ; $54fe: $56
    push hl                                       ; $54ff: $e5
    jr nz, jr_0aa_5502                            ; $5500: $20 $00

jr_0aa_5502:
    nop                                           ; $5502: $00
    ld [hl+], a                                   ; $5503: $22
    ld e, $b2                                     ; $5504: $1e $b2
    rra                                           ; $5506: $1f
    add h                                         ; $5507: $84
    ld hl, $2545                                  ; $5508: $21 $45 $25
    ld a, d                                       ; $550b: $7a
    ld [hl], e                                    ; $550c: $73
    ld [hl+], a                                   ; $550d: $22
    ld e, $ee                                     ; $550e: $1e $ee
    ld b, l                                       ; $5510: $45
    nop                                           ; $5511: $00
    ld [$2a25], sp                                ; $5512: $08 $25 $2a
    ld e, c                                       ; $5515: $59
    ld [hl], e                                    ; $5516: $73
    inc bc                                        ; $5517: $03
    dec e                                         ; $5518: $1d
    jr nz, jr_0aa_5530                            ; $5519: $20 $15

    ld [hl+], a                                   ; $551b: $22
    ld e, $59                                     ; $551c: $1e $59
    ld [hl], e                                    ; $551e: $73
    inc bc                                        ; $551f: $03
    dec e                                         ; $5520: $1d
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    ld [hl+], a                                   ; $5523: $22
    ld e, $84                                     ; $5524: $1e $84
    ld hl, $1fb2                                  ; $5526: $21 $b2 $1f
    nop                                           ; $5529: $00
    ld [$45ee], sp                                ; $552a: $08 $ee $45
    dec h                                         ; $552d: $25
    dec h                                         ; $552e: $25
    ld e, b                                       ; $552f: $58

jr_0aa_5530:
    ld l, a                                       ; $5530: $6f
    ld b, d                                       ; $5531: $42
    db $10                                        ; $5532: $10
    ld h, d                                       ; $5533: $62
    dec e                                         ; $5534: $1d
    xor $45                                       ; $5535: $ee $45
    ld [hl+], a                                   ; $5537: $22

jr_0aa_5538:
    ld e, $20                                     ; $5538: $1e $20
    dec d                                         ; $553a: $15
    ld [hl+], a                                   ; $553b: $22
    ld e, $ee                                     ; $553c: $1e $ee
    ld b, l                                       ; $553e: $45
    ld [hl+], a                                   ; $553f: $22
    ld e, $00                                     ; $5540: $1e $00
    nop                                           ; $5542: $00
    inc hl                                        ; $5543: $23
    ld [hl+], a                                   ; $5544: $22
    ld b, l                                       ; $5545: $45
    dec h                                         ; $5546: $25
    or d                                          ; $5547: $b2
    rra                                           ; $5548: $1f
    and $24                                       ; $5549: $e6 $24
    push af                                       ; $554b: $f5
    ld h, d                                       ; $554c: $62
    xor $45                                       ; $554d: $ee $45
    cp l                                          ; $554f: $bd
    ld a, a                                       ; $5550: $7f
    ld b, d                                       ; $5551: $42
    db $10                                        ; $5552: $10
    ld h, d                                       ; $5553: $62
    dec e                                         ; $5554: $1d
    xor $45                                       ; $5555: $ee $45
    ld [hl+], a                                   ; $5557: $22
    ld e, $20                                     ; $5558: $1e $20
    dec d                                         ; $555a: $15
    ld [hl+], a                                   ; $555b: $22
    ld e, $ee                                     ; $555c: $1e $ee
    ld b, l                                       ; $555e: $45
    ld [hl+], a                                   ; $555f: $22
    ld e, $00                                     ; $5560: $1e $00
    nop                                           ; $5562: $00
    inc h                                         ; $5563: $24
    ld [hl+], a                                   ; $5564: $22
    dec h                                         ; $5565: $25
    dec h                                         ; $5566: $25
    ld [hl], e                                    ; $5567: $73
    scf                                           ; $5568: $37
    and $24                                       ; $5569: $e6 $24
    push af                                       ; $556b: $f5
    ld h, d                                       ; $556c: $62
    xor $45                                       ; $556d: $ee $45
    cp l                                          ; $556f: $bd
    ld a, a                                       ; $5570: $7f
    nop                                           ; $5571: $00
    ld [$1520], sp                                ; $5572: $08 $20 $15
    ld [hl+], a                                   ; $5575: $22
    ld e, $84                                     ; $5576: $1e $84
    ld hl, $1520                                  ; $5578: $21 $20 $15
    ld [hl+], a                                   ; $557b: $22
    ld e, $22                                     ; $557c: $1e $22
    ld e, $84                                     ; $557e: $1e $84
    ld hl, $0000                                  ; $5580: $21 $00 $00
    rlca                                          ; $5583: $07
    ld l, $24                                     ; $5584: $2e $24
    ld hl, $3773                                  ; $5586: $21 $73 $37
    nop                                           ; $5589: $00
    ld [$45ee], sp                                ; $558a: $08 $ee $45
    jr c, @+$6d                                   ; $558d: $38 $6b

    and $24                                       ; $558f: $e6 $24
    nop                                           ; $5591: $00
    ld [$1520], sp                                ; $5592: $08 $20 $15
    ld [hl+], a                                   ; $5595: $22
    ld e, $84                                     ; $5596: $1e $84
    ld hl, $1520                                  ; $5598: $21 $20 $15
    ld [hl+], a                                   ; $559b: $22
    ld e, $22                                     ; $559c: $1e $22
    ld e, $84                                     ; $559e: $1e $84
    ld hl, $0000                                  ; $55a0: $21 $00 $00
    ld [$0232], sp                                ; $55a3: $08 $32 $02
    add hl, de                                    ; $55a6: $19
    ld d, h                                       ; $55a7: $54
    ld b, e                                       ; $55a8: $43
    nop                                           ; $55a9: $00
    ld [$45ee], sp                                ; $55aa: $08 $ee $45
    inc bc                                        ; $55ad: $03
    dec e                                         ; $55ae: $1d
    ld e, b                                       ; $55af: $58
    ld l, a                                       ; $55b0: $6f
    add h                                         ; $55b1: $84
    ld hl, $1e22                                  ; $55b2: $21 $22 $1e
    inc bc                                        ; $55b5: $03
    dec e                                         ; $55b6: $1d
    ld e, b                                       ; $55b7: $58
    ld l, a                                       ; $55b8: $6f
    jr nz, jr_0aa_55d0                            ; $55b9: $20 $15

    ld [hl+], a                                   ; $55bb: $22
    ld e, $03                                     ; $55bc: $1e $03
    dec e                                         ; $55be: $1d
    ld e, b                                       ; $55bf: $58
    ld l, a                                       ; $55c0: $6f
    nop                                           ; $55c1: $00
    nop                                           ; $55c2: $00
    dec b                                         ; $55c3: $05
    ld a, [hl+]                                   ; $55c4: $2a
    inc h                                         ; $55c5: $24
    ld hl, $3773                                  ; $55c6: $21 $73 $37
    nop                                           ; $55c9: $00
    ld [$21e3], sp                                ; $55ca: $08 $e3 $21
    ld d, c                                       ; $55cd: $51
    ld d, d                                       ; $55ce: $52
    dec b                                         ; $55cf: $05

jr_0aa_55d0:
    ld hl, $1e22                                  ; $55d0: $21 $22 $1e
    db $e3                                        ; $55d3: $e3
    ld hl, $5251                                  ; $55d4: $21 $51 $52
    dec b                                         ; $55d7: $05
    ld hl, $1520                                  ; $55d8: $21 $20 $15
    ld [hl+], a                                   ; $55db: $22
    ld e, $51                                     ; $55dc: $1e $51
    ld d, d                                       ; $55de: $52
    dec b                                         ; $55df: $05
    ld hl, $0000                                  ; $55e0: $21 $00 $00
    ld [hl+], a                                   ; $55e3: $22
    ld e, $20                                     ; $55e4: $1e $20
    dec d                                         ; $55e6: $15
    or d                                          ; $55e7: $b2
    rra                                           ; $55e8: $1f
    nop                                           ; $55e9: $00
    ld [$1961], sp                                ; $55ea: $08 $61 $19
    xor $45                                       ; $55ed: $ee $45
    and $24                                       ; $55ef: $e6 $24
    jr nz, jr_0aa_5608                            ; $55f1: $20 $15

    ld [hl+], a                                   ; $55f3: $22
    ld e, $ee                                     ; $55f4: $1e $ee
    ld b, l                                       ; $55f6: $45
    and $24                                       ; $55f7: $e6 $24
    jr nz, @+$17                                  ; $55f9: $20 $15

    ld [hl+], a                                   ; $55fb: $22
    ld e, $ee                                     ; $55fc: $1e $ee
    ld b, l                                       ; $55fe: $45
    and $24                                       ; $55ff: $e6 $24
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    ld c, d                                       ; $5603: $4a
    ld a, [bc]                                    ; $5604: $0a
    or l                                          ; $5605: $b5
    dec bc                                        ; $5606: $0b
    reti                                          ; $5607: $d9


jr_0aa_5608:
    dec c                                         ; $5608: $0d
    ld c, d                                       ; $5609: $4a
    ld a, [bc]                                    ; $560a: $0a
    or l                                          ; $560b: $b5
    dec bc                                        ; $560c: $0b
    ld e, d                                       ; $560d: $5a
    ld bc, $0df9                                  ; $560e: $01 $f9 $0d
    ld c, d                                       ; $5611: $4a
    ld a, [bc]                                    ; $5612: $0a
    or l                                          ; $5613: $b5
    dec bc                                        ; $5614: $0b
    ld e, d                                       ; $5615: $5a
    ld bc, $0df9                                  ; $5616: $01 $f9 $0d
    ld h, l                                       ; $5619: $65
    add hl, bc                                    ; $561a: $09
    or l                                          ; $561b: $b5
    dec bc                                        ; $561c: $0b
    ld c, d                                       ; $561d: $4a
    ld a, [bc]                                    ; $561e: $0a
    ld sp, hl                                     ; $561f: $f9
    dec c                                         ; $5620: $0d
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    ld c, d                                       ; $5623: $4a
    ld a, [bc]                                    ; $5624: $0a
    or l                                          ; $5625: $b5
    dec bc                                        ; $5626: $0b
    ld sp, hl                                     ; $5627: $f9
    dec c                                         ; $5628: $0d
    rrca                                          ; $5629: $0f
    ld de, $33be                                  ; $562a: $11 $be $33
    cp d                                          ; $562d: $ba
    add hl, bc                                    ; $562e: $09
    ld c, d                                       ; $562f: $4a
    ld a, [bc]                                    ; $5630: $0a
    rrca                                          ; $5631: $0f
    ld de, $0f9e                                  ; $5632: $11 $9e $0f
    cp d                                          ; $5635: $ba
    add hl, bc                                    ; $5636: $09
    ld c, d                                       ; $5637: $4a
    ld a, [bc]                                    ; $5638: $0a
    ld h, l                                       ; $5639: $65
    add hl, bc                                    ; $563a: $09
    ld c, d                                       ; $563b: $4a
    ld a, [bc]                                    ; $563c: $0a
    cp d                                          ; $563d: $ba
    add hl, bc                                    ; $563e: $09
    ld c, d                                       ; $563f: $4a
    ld a, [bc]                                    ; $5640: $0a
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    ld c, d                                       ; $5643: $4a
    ld a, [bc]                                    ; $5644: $0a
    rrca                                          ; $5645: $0f
    ld de, $0bb5                                  ; $5646: $11 $b5 $0b
    inc hl                                        ; $5649: $23
    inc b                                         ; $564a: $04
    cp [hl]                                       ; $564b: $be
    inc sp                                        ; $564c: $33
    rrca                                          ; $564d: $0f
    ld de, $09d9                                  ; $564e: $11 $d9 $09
    rrca                                          ; $5651: $0f
    ld de, $33be                                  ; $5652: $11 $be $33
    reti                                          ; $5655: $d9


    add hl, bc                                    ; $5656: $09
    ld c, d                                       ; $5657: $4a
    ld a, [bc]                                    ; $5658: $0a
    ld h, l                                       ; $5659: $65
    add hl, bc                                    ; $565a: $09
    ld c, d                                       ; $565b: $4a
    ld a, [bc]                                    ; $565c: $0a
    reti                                          ; $565d: $d9


    add hl, bc                                    ; $565e: $09
    ld c, d                                       ; $565f: $4a
    ld a, [bc]                                    ; $5660: $0a
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    ld c, d                                       ; $5663: $4a
    ld a, [bc]                                    ; $5664: $0a
    ld d, d                                       ; $5665: $52
    ld de, $2fb8                                  ; $5666: $11 $b8 $2f
    inc hl                                        ; $5669: $23
    inc b                                         ; $566a: $04
    ld sp, hl                                     ; $566b: $f9
    dec c                                         ; $566c: $0d
    dec [hl]                                      ; $566d: $35
    add hl, bc                                    ; $566e: $09
    sbc [hl]                                      ; $566f: $9e
    rrca                                          ; $5670: $0f
    inc hl                                        ; $5671: $23
    inc b                                         ; $5672: $04
    cp a                                          ; $5673: $bf
    ld b, e                                       ; $5674: $43
    rrca                                          ; $5675: $0f
    ld de, $0dd9                                  ; $5676: $11 $d9 $0d
    ld h, l                                       ; $5679: $65
    add hl, bc                                    ; $567a: $09
    ld c, d                                       ; $567b: $4a
    ld a, [bc]                                    ; $567c: $0a
    rrca                                          ; $567d: $0f
    ld de, $0dd9                                  ; $567e: $11 $d9 $0d
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    ld c, e                                       ; $5683: $4b
    ld a, [bc]                                    ; $5684: $0a
    or l                                          ; $5685: $b5
    dec bc                                        ; $5686: $0b
    rrca                                          ; $5687: $0f
    ld de, $0423                                  ; $5688: $11 $23 $04
    ld sp, hl                                     ; $568b: $f9
    dec c                                         ; $568c: $0d
    db $10                                        ; $568d: $10
    ld de, $0f9e                                  ; $568e: $11 $9e $0f
    inc hl                                        ; $5691: $23
    inc b                                         ; $5692: $04
    cp a                                          ; $5693: $bf
    ld b, e                                       ; $5694: $43
    rrca                                          ; $5695: $0f
    ld de, $059a                                  ; $5696: $11 $9a $05
    ld h, l                                       ; $5699: $65
    add hl, bc                                    ; $569a: $09
    ld c, d                                       ; $569b: $4a
    ld a, [bc]                                    ; $569c: $0a
    rrca                                          ; $569d: $0f
    ld de, $059a                                  ; $569e: $11 $9a $05
    nop                                           ; $56a1: $00
    nop                                           ; $56a2: $00
    ld c, d                                       ; $56a3: $4a
    ld a, [bc]                                    ; $56a4: $0a
    ld b, [hl]                                    ; $56a5: $46
    dec b                                         ; $56a6: $05
    or l                                          ; $56a7: $b5
    dec bc                                        ; $56a8: $0b
    inc hl                                        ; $56a9: $23
    inc b                                         ; $56aa: $04
    ld sp, hl                                     ; $56ab: $f9
    dec c                                         ; $56ac: $0d
    inc sp                                        ; $56ad: $33
    dec c                                         ; $56ae: $0d
    sbc [hl]                                      ; $56af: $9e
    rrca                                          ; $56b0: $0f
    add h                                         ; $56b1: $84
    inc b                                         ; $56b2: $04
    ld c, d                                       ; $56b3: $4a
    ld a, [bc]                                    ; $56b4: $0a
    ld a, b                                       ; $56b5: $78
    add hl, bc                                    ; $56b6: $09
    cp [hl]                                       ; $56b7: $be
    inc sp                                        ; $56b8: $33
    ld h, l                                       ; $56b9: $65
    add hl, bc                                    ; $56ba: $09
    ld c, d                                       ; $56bb: $4a
    ld a, [bc]                                    ; $56bc: $0a
    ld a, b                                       ; $56bd: $78
    add hl, bc                                    ; $56be: $09
    cp [hl]                                       ; $56bf: $be
    inc sp                                        ; $56c0: $33
    nop                                           ; $56c1: $00
    nop                                           ; $56c2: $00
    ld c, d                                       ; $56c3: $4a
    ld a, [bc]                                    ; $56c4: $0a
    or l                                          ; $56c5: $b5
    dec bc                                        ; $56c6: $0b
    cp [hl]                                       ; $56c7: $be
    inc sp                                        ; $56c8: $33
    add h                                         ; $56c9: $84
    inc b                                         ; $56ca: $04
    ld c, d                                       ; $56cb: $4a
    ld a, [bc]                                    ; $56cc: $0a
    ld a, b                                       ; $56cd: $78
    dec b                                         ; $56ce: $05
    cp [hl]                                       ; $56cf: $be
    inc sp                                        ; $56d0: $33
    inc hl                                        ; $56d1: $23
    inc b                                         ; $56d2: $04
    ld c, d                                       ; $56d3: $4a
    ld a, [bc]                                    ; $56d4: $0a
    ld d, e                                       ; $56d5: $53
    dec c                                         ; $56d6: $0d
    cp [hl]                                       ; $56d7: $be
    dec hl                                        ; $56d8: $2b
    ld h, l                                       ; $56d9: $65
    add hl, bc                                    ; $56da: $09
    ld c, d                                       ; $56db: $4a
    ld a, [bc]                                    ; $56dc: $0a
    ld d, e                                       ; $56dd: $53
    dec c                                         ; $56de: $0d
    cp [hl]                                       ; $56df: $be
    dec hl                                        ; $56e0: $2b
    nop                                           ; $56e1: $00
    nop                                           ; $56e2: $00
    ld c, d                                       ; $56e3: $4a
    ld a, [bc]                                    ; $56e4: $0a
    or l                                          ; $56e5: $b5
    dec bc                                        ; $56e6: $0b
    cp [hl]                                       ; $56e7: $be
    dec hl                                        ; $56e8: $2b
    inc hl                                        ; $56e9: $23
    inc b                                         ; $56ea: $04
    ld c, d                                       ; $56eb: $4a
    ld a, [bc]                                    ; $56ec: $0a
    ld de, $1c0d                                  ; $56ed: $11 $0d $1c
    rrca                                          ; $56f0: $0f
    inc hl                                        ; $56f1: $23
    inc b                                         ; $56f2: $04
    ld sp, hl                                     ; $56f3: $f9
    dec c                                         ; $56f4: $0d
    inc sp                                        ; $56f5: $33
    dec c                                         ; $56f6: $0d
    sbc [hl]                                      ; $56f7: $9e
    rrca                                          ; $56f8: $0f
    ld h, l                                       ; $56f9: $65
    add hl, bc                                    ; $56fa: $09
    ld c, d                                       ; $56fb: $4a
    ld a, [bc]                                    ; $56fc: $0a
    rrca                                          ; $56fd: $0f
    ld de, $0f9e                                  ; $56fe: $11 $9e $0f
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    ld c, d                                       ; $5703: $4a
    ld a, [bc]                                    ; $5704: $0a
    or l                                          ; $5705: $b5
    dec bc                                        ; $5706: $0b
    rrca                                          ; $5707: $0f
    ld de, $0423                                  ; $5708: $11 $23 $04
    cp [hl]                                       ; $570b: $be
    inc sp                                        ; $570c: $33
    rrca                                          ; $570d: $0f
    ld de, $0df9                                  ; $570e: $11 $f9 $0d
    rrca                                          ; $5711: $0f
    ld de, $0f9e                                  ; $5712: $11 $9e $0f
    reti                                          ; $5715: $d9


    add hl, bc                                    ; $5716: $09
    rst $18                                       ; $5717: $df
    ld [hl], a                                    ; $5718: $77

Jump_0aa_5719:
    inc hl                                        ; $5719: $23
    inc b                                         ; $571a: $04
    ld h, l                                       ; $571b: $65
    add hl, bc                                    ; $571c: $09
    rrca                                          ; $571d: $0f
    ld de, $0a4a                                  ; $571e: $11 $4a $0a
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    ld c, d                                       ; $5723: $4a
    ld a, [bc]                                    ; $5724: $0a
    or l                                          ; $5725: $b5
    dec bc                                        ; $5726: $0b
    ld c, d                                       ; $5727: $4a
    ld a, [bc]                                    ; $5728: $0a
    inc hl                                        ; $5729: $23
    inc b                                         ; $572a: $04
    ld sp, hl                                     ; $572b: $f9
    dec c                                         ; $572c: $0d
    inc sp                                        ; $572d: $33
    dec c                                         ; $572e: $0d
    sbc [hl]                                      ; $572f: $9e
    rrca                                          ; $5730: $0f
    rrca                                          ; $5731: $0f
    ld de, $0f9e                                  ; $5732: $11 $9e $0f
    reti                                          ; $5735: $d9


    dec c                                         ; $5736: $0d
    rst $18                                       ; $5737: $df
    ld [hl], a                                    ; $5738: $77
    inc hl                                        ; $5739: $23
    inc b                                         ; $573a: $04
    ld h, l                                       ; $573b: $65
    add hl, bc                                    ; $573c: $09
    ld c, d                                       ; $573d: $4a
    ld a, [bc]                                    ; $573e: $0a
    rst $18                                       ; $573f: $df
    ld [hl], a                                    ; $5740: $77
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    ld c, d                                       ; $5743: $4a
    ld a, [bc]                                    ; $5744: $0a
    or l                                          ; $5745: $b5
    dec bc                                        ; $5746: $0b
    rst $18                                       ; $5747: $df
    ld [hl], a                                    ; $5748: $77
    inc hl                                        ; $5749: $23
    inc b                                         ; $574a: $04
    and a                                         ; $574b: $a7
    dec b                                         ; $574c: $05
    cp d                                          ; $574d: $ba
    add hl, bc                                    ; $574e: $09
    rrca                                          ; $574f: $0f
    ld de, $0464                                  ; $5750: $11 $64 $04
    ld sp, hl                                     ; $5753: $f9
    dec c                                         ; $5754: $0d
    dec [hl]                                      ; $5755: $35
    add hl, bc                                    ; $5756: $09
    sbc [hl]                                      ; $5757: $9e
    rrca                                          ; $5758: $0f
    ld b, [hl]                                    ; $5759: $46
    dec b                                         ; $575a: $05
    ld c, d                                       ; $575b: $4a
    ld a, [bc]                                    ; $575c: $0a
    ld h, l                                       ; $575d: $65
    add hl, bc                                    ; $575e: $09
    sbc [hl]                                      ; $575f: $9e
    rrca                                          ; $5760: $0f
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    ld c, d                                       ; $5763: $4a
    ld a, [bc]                                    ; $5764: $0a
    or l                                          ; $5765: $b5
    dec bc                                        ; $5766: $0b
    sbc [hl]                                      ; $5767: $9e
    rrca                                          ; $5768: $0f
    inc hl                                        ; $5769: $23
    inc b                                         ; $576a: $04
    ld b, [hl]                                    ; $576b: $46
    dec b                                         ; $576c: $05
    rrca                                          ; $576d: $0f
    ld de, $0a4a                                  ; $576e: $11 $4a $0a
    inc hl                                        ; $5771: $23
    inc b                                         ; $5772: $04
    add hl, bc                                    ; $5773: $09
    ld a, [bc]                                    ; $5774: $0a
    ld e, d                                       ; $5775: $5a
    ld bc, $110f                                  ; $5776: $01 $0f $11
    ld h, l                                       ; $5779: $65
    add hl, bc                                    ; $577a: $09
    ld c, d                                       ; $577b: $4a
    ld a, [bc]                                    ; $577c: $0a
    ld e, d                                       ; $577d: $5a
    ld bc, $110f                                  ; $577e: $01 $0f $11
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    ld c, d                                       ; $5783: $4a
    ld a, [bc]                                    ; $5784: $0a
    or l                                          ; $5785: $b5
    dec bc                                        ; $5786: $0b
    ld c, d                                       ; $5787: $4a
    ld a, [bc]                                    ; $5788: $0a
    inc hl                                        ; $5789: $23
    inc b                                         ; $578a: $04
    ld c, d                                       ; $578b: $4a
    ld a, [bc]                                    ; $578c: $0a
    adc b                                         ; $578d: $88
    ld [$0a4a], sp                                ; $578e: $08 $4a $0a
    ld b, l                                       ; $5791: $45
    inc b                                         ; $5792: $04
    rst $08                                       ; $5793: $cf
    add hl, hl                                    ; $5794: $29
    rrca                                          ; $5795: $0f
    ld de, $0a4a                                  ; $5796: $11 $4a $0a
    ld h, l                                       ; $5799: $65
    add hl, bc                                    ; $579a: $09
    ld c, d                                       ; $579b: $4a
    ld a, [bc]                                    ; $579c: $0a
    rrca                                          ; $579d: $0f
    ld de, $0a4a                                  ; $579e: $11 $4a $0a
    nop                                           ; $57a1: $00
    nop                                           ; $57a2: $00
    ld c, d                                       ; $57a3: $4a
    ld a, [bc]                                    ; $57a4: $0a
    or l                                          ; $57a5: $b5
    dec bc                                        ; $57a6: $0b
    ld c, d                                       ; $57a7: $4a
    ld a, [bc]                                    ; $57a8: $0a
    inc hl                                        ; $57a9: $23
    inc b                                         ; $57aa: $04
    ld b, [hl]                                    ; $57ab: $46
    dec b                                         ; $57ac: $05
    adc b                                         ; $57ad: $88
    ld [$0a4a], sp                                ; $57ae: $08 $4a $0a
    inc hl                                        ; $57b1: $23
    inc b                                         ; $57b2: $04
    rst $08                                       ; $57b3: $cf
    add hl, hl                                    ; $57b4: $29
    rrca                                          ; $57b5: $0f
    ld de, $0a4a                                  ; $57b6: $11 $4a $0a
    ld h, l                                       ; $57b9: $65
    add hl, bc                                    ; $57ba: $09
    ld c, d                                       ; $57bb: $4a
    ld a, [bc]                                    ; $57bc: $0a
    rrca                                          ; $57bd: $0f
    ld de, $0a4a                                  ; $57be: $11 $4a $0a
    nop                                           ; $57c1: $00
    nop                                           ; $57c2: $00
    ld c, d                                       ; $57c3: $4a
    ld a, [bc]                                    ; $57c4: $0a
    or l                                          ; $57c5: $b5
    dec bc                                        ; $57c6: $0b
    ld c, d                                       ; $57c7: $4a
    ld a, [bc]                                    ; $57c8: $0a
    inc hl                                        ; $57c9: $23
    inc b                                         ; $57ca: $04
    ld c, d                                       ; $57cb: $4a
    ld a, [bc]                                    ; $57cc: $0a
    or l                                          ; $57cd: $b5
    dec bc                                        ; $57ce: $0b
    ld c, d                                       ; $57cf: $4a
    ld a, [bc]                                    ; $57d0: $0a
    ld b, l                                       ; $57d1: $45
    inc b                                         ; $57d2: $04
    xor h                                         ; $57d3: $ac
    dec e                                         ; $57d4: $1d
    rrca                                          ; $57d5: $0f
    ld de, $0a4a                                  ; $57d6: $11 $4a $0a
    ld h, l                                       ; $57d9: $65
    add hl, bc                                    ; $57da: $09
    ld c, d                                       ; $57db: $4a
    ld a, [bc]                                    ; $57dc: $0a
    rrca                                          ; $57dd: $0f
    ld de, $0a4a                                  ; $57de: $11 $4a $0a
    nop                                           ; $57e1: $00
    nop                                           ; $57e2: $00
    ld c, d                                       ; $57e3: $4a
    ld a, [bc]                                    ; $57e4: $0a
    ld h, l                                       ; $57e5: $65
    add hl, bc                                    ; $57e6: $09
    or l                                          ; $57e7: $b5
    dec bc                                        ; $57e8: $0b
    ld b, [hl]                                    ; $57e9: $46
    dec b                                         ; $57ea: $05
    ld c, d                                       ; $57eb: $4a
    ld a, [bc]                                    ; $57ec: $0a
    ld h, l                                       ; $57ed: $65
    add hl, bc                                    ; $57ee: $09
    or l                                          ; $57ef: $b5
    dec bc                                        ; $57f0: $0b
    ld b, h                                       ; $57f1: $44
    inc b                                         ; $57f2: $04
    ld h, l                                       ; $57f3: $65
    add hl, bc                                    ; $57f4: $09
    rrca                                          ; $57f5: $0f
    ld de, $0a4a                                  ; $57f6: $11 $4a $0a
    ld h, l                                       ; $57f9: $65
    add hl, bc                                    ; $57fa: $09
    ld c, d                                       ; $57fb: $4a
    ld a, [bc]                                    ; $57fc: $0a
    rrca                                          ; $57fd: $0f
    ld de, $0a4a                                  ; $57fe: $11 $4a $0a
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    ld hl, $202e                                  ; $5803: $21 $2e $20
    ld b, e                                       ; $5806: $43
    jp nc, Jump_000_2167                          ; $5807: $d2 $67 $21

    ld l, $20                                     ; $580a: $2e $20
    ld b, e                                       ; $580c: $43
    sbc c                                         ; $580d: $99
    ld bc, $67d2                                  ; $580e: $01 $d2 $67
    sub l                                         ; $5811: $95
    ld bc, $4320                                  ; $5812: $01 $20 $43
    jp nc, $d267                                  ; $5815: $d2 $67 $d2

    ld h, a                                       ; $5818: $67
    ld b, c                                       ; $5819: $41
    dec d                                         ; $581a: $15
    jr nz, jr_0aa_5860                            ; $581b: $20 $43

    jp nc, $d267                                  ; $581d: $d2 $67 $d2

    ld h, a                                       ; $5820: $67
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    ld b, e                                       ; $5824: $43
    ld a, a                                       ; $5825: $7f
    ld [bc], a                                    ; $5826: $02
    jp nc, $a467                                  ; $5827: $d2 $67 $a4

    dec e                                         ; $582a: $1d
    jr nz, @+$45                                  ; $582b: $20 $43

    ld a, a                                       ; $582d: $7f
    rra                                           ; $582e: $1f
    sbc c                                         ; $582f: $99
    ld bc, $4320                                  ; $5830: $01 $20 $43
    sub l                                         ; $5833: $95
    ld bc, $227f                                  ; $5834: $01 $7f $22
    sbc c                                         ; $5837: $99
    ld bc, $1541                                  ; $5838: $01 $41 $15
    jr nz, @+$45                                  ; $583b: $20 $43

    ld a, a                                       ; $583d: $7f
    ld [hl+], a                                   ; $583e: $22
    sbc c                                         ; $583f: $99
    ld bc, $0000                                  ; $5840: $01 $00 $00
    ldh [$3e], a                                  ; $5843: $e0 $3e
    dec [hl]                                      ; $5845: $35
    ld bc, $4756                                  ; $5846: $01 $56 $47
    rst $08                                       ; $5849: $cf
    nop                                           ; $584a: $00
    jr nz, @+$45                                  ; $584b: $20 $43

    sbc c                                         ; $584d: $99
    ld bc, $031f                                  ; $584e: $01 $1f $03
    ld hl, $992e                                  ; $5851: $21 $2e $99
    ld bc, $4320                                  ; $5854: $01 $20 $43
    ld a, a                                       ; $5857: $7f
    ld [hl+], a                                   ; $5858: $22
    ld b, c                                       ; $5859: $41
    dec d                                         ; $585a: $15
    jr nz, @+$45                                  ; $585b: $20 $43

    jr nz, jr_0aa_58a2                            ; $585d: $20 $43

    ld a, a                                       ; $585f: $7f

jr_0aa_5860:
    ld [hl+], a                                   ; $5860: $22
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    ld hl, $b02e                                  ; $5863: $21 $2e $b0
    nop                                           ; $5866: $00
    ld b, e                                       ; $5867: $43
    ld c, e                                       ; $5868: $4b
    add a                                         ; $5869: $87
    ld [$3aa1], sp                                ; $586a: $08 $a1 $3a
    inc [hl]                                      ; $586d: $34
    ld bc, $027f                                  ; $586e: $01 $7f $02
    ld hl, $7f2e                                  ; $5871: $21 $2e $7f
    ld c, $fe                                     ; $5874: $0e $fe
    dec hl                                        ; $5876: $2b
    ld d, [hl]                                    ; $5877: $56
    ld bc, $1541                                  ; $5878: $01 $41 $15
    ld hl, $b02e                                  ; $587b: $21 $2e $b0
    nop                                           ; $587e: $00
    jr nz, @+$45                                  ; $587f: $20 $43

    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    ld hl, $202e                                  ; $5883: $21 $2e $20
    ld b, e                                       ; $5886: $43
    jp nc, $e467                                  ; $5887: $d2 $67 $e4

    inc d                                         ; $588a: $14
    jr nz, jr_0aa_58d0                            ; $588b: $20 $43

    ld [de], a                                    ; $588d: $12
    ld bc, $03ff                                  ; $588e: $01 $ff $03
    or b                                          ; $5891: $b0
    nop                                           ; $5892: $00
    ld a, a                                       ; $5893: $7f
    ld b, $98                                     ; $5894: $06 $98
    ld bc, $03ff                                  ; $5896: $01 $ff $03
    ld [bc], a                                    ; $5899: $02
    ld de, $2e21                                  ; $589a: $11 $21 $2e
    or b                                          ; $589d: $b0
    nop                                           ; $589e: $00
    jr nz, @+$45                                  ; $589f: $20 $43

    nop                                           ; $58a1: $00

jr_0aa_58a2:
    nop                                           ; $58a2: $00
    jr nz, @+$45                                  ; $58a3: $20 $43

    jp nc, $2067                                  ; $58a5: $d2 $67 $20

    ld b, e                                       ; $58a8: $43
    adc c                                         ; $58a9: $89
    nop                                           ; $58aa: $00
    add c                                         ; $58ab: $81
    ld [hl], $56                                  ; $58ac: $36 $56
    ld bc, $033f                                  ; $58ae: $01 $3f $03
    ld h, e                                       ; $58b1: $63
    inc c                                         ; $58b2: $0c
    sbc b                                         ; $58b3: $98
    ld bc, $0a7f                                  ; $58b4: $01 $7f $0a
    or b                                          ; $58b7: $b0
    nop                                           ; $58b8: $00
    ld h, e                                       ; $58b9: $63
    inc c                                         ; $58ba: $0c
    ld hl, $412e                                  ; $58bb: $21 $2e $41
    dec d                                         ; $58be: $15
    jr nz, @+$45                                  ; $58bf: $20 $43

    nop                                           ; $58c1: $00
    nop                                           ; $58c2: $00
    ld hl, $202e                                  ; $58c3: $21 $2e $20
    ld b, e                                       ; $58c6: $43
    jp nc, $f267                                  ; $58c7: $d2 $67 $f2

    nop                                           ; $58ca: $00
    ld a, a                                       ; $58cb: $7f
    ld [bc], a                                    ; $58cc: $02
    rst $38                                       ; $58cd: $ff
    inc bc                                        ; $58ce: $03
    db $fd                                        ; $58cf: $fd

jr_0aa_58d0:
    ld a, a                                       ; $58d0: $7f
    ld [c], a                                     ; $58d1: $e2
    inc d                                         ; $58d2: $14
    jr nz, @+$45                                  ; $58d3: $20 $43

    inc de                                        ; $58d5: $13
    ld bc, $133f                                  ; $58d6: $01 $3f $13
    ld b, c                                       ; $58d9: $41
    dec d                                         ; $58da: $15
    jr nz, @+$45                                  ; $58db: $20 $43

    inc de                                        ; $58dd: $13
    ld bc, $133f                                  ; $58de: $01 $3f $13
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00
    ld hl, $202e                                  ; $58e3: $21 $2e $20
    ld b, e                                       ; $58e6: $43
    jp nc, $6367                                  ; $58e7: $d2 $67 $63

    inc c                                         ; $58ea: $0c
    ld a, a                                       ; $58eb: $7f
    ld [bc], a                                    ; $58ec: $02
    dec [hl]                                      ; $58ed: $35
    ld bc, $03ff                                  ; $58ee: $01 $ff $03
    ld b, l                                       ; $58f1: $45
    inc b                                         ; $58f2: $04
    ld hl, $982e                                  ; $58f3: $21 $2e $98
    ld bc, $4320                                  ; $58f6: $01 $20 $43
    ld b, c                                       ; $58f9: $41
    dec d                                         ; $58fa: $15
    jr nz, @+$45                                  ; $58fb: $20 $43

    sbc b                                         ; $58fd: $98
    ld bc, $4320                                  ; $58fe: $01 $20 $43
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    jr nz, jr_0aa_5948                            ; $5903: $20 $43

    jp nc, $ff67                                  ; $5905: $d2 $67 $ff

    inc bc                                        ; $5908: $03
    ld [hl+], a                                   ; $5909: $22
    add hl, de                                    ; $590a: $19
    jr nz, @+$45                                  ; $590b: $20 $43

    inc de                                        ; $590d: $13
    ld bc, $033f                                  ; $590e: $01 $3f $03
    xor [hl]                                      ; $5911: $ae
    nop                                           ; $5912: $00
    ld a, a                                       ; $5913: $7f
    ld [bc], a                                    ; $5914: $02
    sub a                                         ; $5915: $97
    ld bc, $2bfe                                  ; $5916: $01 $fe $2b
    ld b, c                                       ; $5919: $41
    dec d                                         ; $591a: $15
    ld hl, $b02e                                  ; $591b: $21 $2e $b0
    nop                                           ; $591e: $00
    jr nz, @+$45                                  ; $591f: $20 $43

    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    jr nz, jr_0aa_5968                            ; $5923: $20 $43

    jp nc, $2067                                  ; $5925: $d2 $67 $20

    ld b, e                                       ; $5928: $43
    ld h, h                                       ; $5929: $64
    ld [$2e21], sp                                ; $592a: $08 $21 $2e
    or b                                          ; $592d: $b0
    nop                                           ; $592e: $00
    jr nz, @+$45                                  ; $592f: $20 $43

    or b                                          ; $5931: $b0
    nop                                           ; $5932: $00
    ld a, a                                       ; $5933: $7f
    ld [bc], a                                    ; $5934: $02
    sub a                                         ; $5935: $97
    ld bc, $03ff                                  ; $5936: $01 $ff $03
    ld [bc], a                                    ; $5939: $02
    ld de, $2e21                                  ; $593a: $11 $21 $2e
    or b                                          ; $593d: $b0
    nop                                           ; $593e: $00
    jr nz, @+$45                                  ; $593f: $20 $43

    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    jr nz, @+$45                                  ; $5943: $20 $43

    jp nc, $2067                                  ; $5945: $d2 $67 $20

jr_0aa_5948:
    ld b, e                                       ; $5948: $43
    adc c                                         ; $5949: $89
    nop                                           ; $594a: $00
    ld hl, $992e                                  ; $594b: $21 $2e $99
    ld bc, $4320                                  ; $594e: $01 $20 $43
    ld h, e                                       ; $5951: $63
    inc c                                         ; $5952: $0c
    sbc b                                         ; $5953: $98
    ld bc, $00d0                                  ; $5954: $01 $d0 $00
    ld a, a                                       ; $5957: $7f
    ld [bc], a                                    ; $5958: $02
    ld h, e                                       ; $5959: $63
    inc c                                         ; $595a: $0c
    ld hl, $412e                                  ; $595b: $21 $2e $41
    dec d                                         ; $595e: $15
    jr nz, @+$45                                  ; $595f: $20 $43

    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    jr nz, jr_0aa_59a8                            ; $5963: $20 $43

    jp nc, $2067                                  ; $5965: $d2 $67 $20

jr_0aa_5968:
    ld b, e                                       ; $5968: $43
    ld h, [hl]                                    ; $5969: $66
    add hl, de                                    ; $596a: $19
    ld a, a                                       ; $596b: $7f
    ld [bc], a                                    ; $596c: $02
    dec [hl]                                      ; $596d: $35
    ld bc, $2bfe                                  ; $596e: $01 $fe $2b
    ld [c], a                                     ; $5971: $e2
    inc d                                         ; $5972: $14
    jr nz, @+$45                                  ; $5973: $20 $43

    ld [de], a                                    ; $5975: $12
    ld bc, $03ff                                  ; $5976: $01 $ff $03
    ld b, c                                       ; $5979: $41
    dec d                                         ; $597a: $15
    jr nz, @+$45                                  ; $597b: $20 $43

    ld [de], a                                    ; $597d: $12
    ld bc, $03ff                                  ; $597e: $01 $ff $03
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    ld hl, $202e                                  ; $5983: $21 $2e $20
    ld b, e                                       ; $5986: $43
    jp nc, $6367                                  ; $5987: $d2 $67 $63

    inc c                                         ; $598a: $0c
    ld a, a                                       ; $598b: $7f
    ld [bc], a                                    ; $598c: $02
    inc d                                         ; $598d: $14
    ld bc, $03ff                                  ; $598e: $01 $ff $03
    ld b, l                                       ; $5991: $45
    inc b                                         ; $5992: $04
    ld hl, $522e                                  ; $5993: $21 $2e $52
    ld bc, $4320                                  ; $5996: $01 $20 $43
    ld b, c                                       ; $5999: $41
    dec d                                         ; $599a: $15
    jr nz, @+$45                                  ; $599b: $20 $43

    ld d, d                                       ; $599d: $52
    ld bc, $4320                                  ; $599e: $01 $20 $43
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    jr nz, @+$45                                  ; $59a3: $20 $43

    jp nc, $2067                                  ; $59a5: $d2 $67 $20

jr_0aa_59a8:
    ld b, e                                       ; $59a8: $43
    ld h, e                                       ; $59a9: $63
    inc c                                         ; $59aa: $0c
    db $fc                                        ; $59ab: $fc
    ld bc, $2e21                                  ; $59ac: $01 $21 $2e
    or b                                          ; $59af: $b0
    nop                                           ; $59b0: $00
    adc c                                         ; $59b1: $89
    nop                                           ; $59b2: $00
    jr nz, @+$45                                  ; $59b3: $20 $43

    rrca                                          ; $59b5: $0f
    ld bc, $0195                                  ; $59b6: $01 $95 $01
    ld b, c                                       ; $59b9: $41
    dec d                                         ; $59ba: $15
    jr nz, @+$45                                  ; $59bb: $20 $43

    rrca                                          ; $59bd: $0f
    ld bc, $0195                                  ; $59be: $01 $95 $01
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00
    jr nz, @+$45                                  ; $59c3: $20 $43

    jp nc, $9567                                  ; $59c5: $d2 $67 $95

    ld bc, $14e2                                  ; $59c8: $01 $e2 $14
    jr nz, @+$45                                  ; $59cb: $20 $43

    ld a, [c]                                     ; $59cd: $f2
    nop                                           ; $59ce: $00
    rst $38                                       ; $59cf: $ff
    inc bc                                        ; $59d0: $03
    xor e                                         ; $59d1: $ab
    nop                                           ; $59d2: $00
    jr nz, @+$45                                  ; $59d3: $20 $43

    rrca                                          ; $59d5: $0f
    ld bc, $03ff                                  ; $59d6: $01 $ff $03
    ld b, c                                       ; $59d9: $41
    dec d                                         ; $59da: $15
    jr nz, jr_0aa_5a20                            ; $59db: $20 $43

    rrca                                          ; $59dd: $0f
    ld bc, $03ff                                  ; $59de: $01 $ff $03
    nop                                           ; $59e1: $00
    nop                                           ; $59e2: $00
    jr nz, @+$45                                  ; $59e3: $20 $43

    ld b, c                                       ; $59e5: $41
    dec d                                         ; $59e6: $15
    jp nc, Jump_0aa_6767                          ; $59e7: $d2 $67 $67

    inc b                                         ; $59ea: $04
    ld hl, $412e                                  ; $59eb: $21 $2e $41
    dec d                                         ; $59ee: $15
    jr nz, jr_0aa_5a34                            ; $59ef: $20 $43

    ld b, c                                       ; $59f1: $41
    dec d                                         ; $59f2: $15
    jr nz, jr_0aa_5a38                            ; $59f3: $20 $43

    xor e                                         ; $59f5: $ab
    nop                                           ; $59f6: $00
    jr nz, jr_0aa_5a3c                            ; $59f7: $20 $43

    ld b, c                                       ; $59f9: $41
    dec d                                         ; $59fa: $15
    jr nz, @+$45                                  ; $59fb: $20 $43

    xor e                                         ; $59fd: $ab
    nop                                           ; $59fe: $00
    jr nz, jr_0aa_5a44                            ; $59ff: $20 $43

    db $10                                        ; $5a01: $10
    inc bc                                        ; $5a02: $03
    ld h, a                                       ; $5a03: $67
    ld [bc], a                                    ; $5a04: $02
    ld h, b                                       ; $5a05: $60
    nop                                           ; $5a06: $00
    ld bc, $23f8                                  ; $5a07: $01 $f8 $23
    ld [$01fe], sp                                ; $5a0a: $08 $fe $01
    db $fc                                        ; $5a0d: $fc
    inc bc                                        ; $5a0e: $03
    ld hl, sp+$00                                 ; $5a0f: $f8 $00
    ld b, $e0                                     ; $5a11: $06 $e0
    ld bc, $001c                                  ; $5a13: $01 $1c $00
    rst $20                                       ; $5a16: $e7
    jr @-$3b                                      ; $5a17: $18 $c3

    ld [$813c], sp                                ; $5a19: $08 $3c $81
    ld h, [hl]                                    ; $5a1c: $66
    nop                                           ; $5a1d: $00
    ld b, $00                                     ; $5a1e: $06 $00

jr_0aa_5a20:
    inc c                                         ; $5a20: $0c
    inc d                                         ; $5a21: $14
    inc c                                         ; $5a22: $0c
    jr nz, @+$14                                  ; $5a23: $20 $12

    inc c                                         ; $5a25: $0c
    ld b, b                                       ; $5a26: $40
    ld [$00ff], sp                                ; $5a27: $08 $ff $00
    ld a, a                                       ; $5a2a: $7f
    nop                                           ; $5a2b: $00
    add b                                         ; $5a2c: $80
    ld bc, $c03f                                  ; $5a2d: $01 $3f $c0
    rra                                           ; $5a30: $1f
    ld h, a                                       ; $5a31: $67
    rlca                                          ; $5a32: $07
    dec sp                                        ; $5a33: $3b

jr_0aa_5a34:
    add e                                         ; $5a34: $83
    ld d, b                                       ; $5a35: $50
    add sp, $00                                   ; $5a36: $e8 $00

jr_0aa_5a38:
    ld bc, $0100                                  ; $5a38: $01 $00 $01
    ld [bc], a                                    ; $5a3b: $02

jr_0aa_5a3c:
    inc bc                                        ; $5a3c: $03
    inc bc                                        ; $5a3d: $03
    inc bc                                        ; $5a3e: $03
    ld b, $00                                     ; $5a3f: $06 $00
    rlca                                          ; $5a41: $07
    inc b                                         ; $5a42: $04
    rlca                                          ; $5a43: $07

jr_0aa_5a44:
    ld c, $06                                     ; $5a44: $0e $06
    dec c                                         ; $5a46: $0d
    rrca                                          ; $5a47: $0f
    dec bc                                        ; $5a48: $0b
    nop                                           ; $5a49: $00
    add b                                         ; $5a4a: $80
    nop                                           ; $5a4b: $00
    add b                                         ; $5a4c: $80
    ld b, b                                       ; $5a4d: $40
    pop bc                                        ; $5a4e: $c1
    ld hl, $23e0                                  ; $5a4f: $21 $e0 $23
    nop                                           ; $5a52: $00
    ldh a, [rNR34]                                ; $5a53: $f0 $1e
    add hl, bc                                    ; $5a55: $09
    ld l, b                                       ; $5a56: $68
    rlca                                          ; $5a57: $07
    jr nc, jr_0aa_5ac9                            ; $5a58: $30 $6f

    ld a, b                                       ; $5a5a: $78
    nop                                           ; $5a5b: $00
    inc hl                                        ; $5a5c: $23
    jr nz, jr_0aa_5a7c                            ; $5a5d: $20 $1d

    ld e, h                                       ; $5a5f: $5c
    ld e, $9e                                     ; $5a60: $1e $9e
    rlca                                          ; $5a62: $07
    rra                                           ; $5a63: $1f
    nop                                           ; $5a64: $00
    jp $c113                                      ; $5a65: $c3 $13 $c1


    ld de, $1cc0                                  ; $5a68: $11 $c0 $1c
    ld [$000e], a                                 ; $5a6b: $ea $0e $00
    inc c                                         ; $5a6e: $0c
    jp hl                                         ; $5a6f: $e9


    ld e, $d8                                     ; $5a70: $1e $d8
    ld e, $d2                                     ; $5a72: $1e $d2
    rra                                           ; $5a74: $1f
    ld b, d                                       ; $5a75: $42
    nop                                           ; $5a76: $00
    ccf                                           ; $5a77: $3f
    and c                                         ; $5a78: $a1
    ld e, $92                                     ; $5a79: $1e $92
    db $e3                                        ; $5a7b: $e3

jr_0aa_5a7c:
    ld l, $e7                                     ; $5a7c: $2e $e7
    and h                                         ; $5a7e: $a4
    nop                                           ; $5a7f: $00
    rst $00                                       ; $5a80: $c7
    rrca                                          ; $5a81: $0f
    ld sp, hl                                     ; $5a82: $f9
    rrca                                          ; $5a83: $0f
    jp nz, Jump_000_070f                          ; $5a84: $c2 $0f $07

    ccf                                           ; $5a87: $3f
    nop                                           ; $5a88: $00
    ld h, c                                       ; $5a89: $61
    ld [hl], d                                    ; $5a8a: $72
    pop bc                                        ; $5a8b: $c1
    and $5e                                       ; $5a8c: $e6 $5e
    pop de                                        ; $5a8e: $d1
    cp h                                          ; $5a8f: $bc
    and d                                         ; $5a90: $a2
    add b                                         ; $5a91: $80
    ld a, h                                       ; $5a92: $7c
    db $10                                        ; $5a93: $10
    cp a                                          ; $5a94: $bf
    ret nz                                        ; $5a95: $c0

    adc a                                         ; $5a96: $8f
    ldh a, [$87]                                  ; $5a97: $f0 $87
    sbc b                                         ; $5a99: $98
    add e                                         ; $5a9a: $83
    inc c                                         ; $5a9b: $0c
    adc h                                         ; $5a9c: $8c
    ldh [rTAC], a                                 ; $5a9d: $e0 $07
    ldh a, [$d0]                                  ; $5a9f: $f0 $d0
    ld c, b                                       ; $5aa1: $48
    sbc b                                         ; $5aa2: $98

jr_0aa_5aa3:
    ld [$0b0e], sp                                ; $5aa3: $08 $0e $0b
    nop                                           ; $5aa6: $00
    rrca                                          ; $5aa7: $0f
    inc b                                         ; $5aa8: $04
    dec c                                         ; $5aa9: $0d
    ld b, $0f                                     ; $5aaa: $06 $0f
    add hl, de                                    ; $5aac: $19
    rrca                                          ; $5aad: $0f
    add hl, sp                                    ; $5aae: $39
    nop                                           ; $5aaf: $00
    ld h, e                                       ; $5ab0: $63
    ld l, b                                       ; $5ab1: $68
    ld h, c                                       ; $5ab2: $61
    ld l, b                                       ; $5ab3: $68
    rrca                                          ; $5ab4: $0f

jr_0aa_5ab5:
    inc hl                                        ; $5ab5: $23
    ld l, a                                       ; $5ab6: $6f
    ld a, b                                       ; $5ab7: $78
    inc b                                         ; $5ab8: $04
    ld d, a                                       ; $5ab9: $57
    jr c, jr_0aa_5aa3                             ; $5aba: $38 $e7

    jr jr_0aa_5ab5                                ; $5abc: $18 $f7

    or h                                          ; $5abe: $b4
    nop                                           ; $5abf: $00
    rst $38                                       ; $5ac0: $ff
    adc b                                         ; $5ac1: $88
    nop                                           ; $5ac2: $00
    ld d, a                                       ; $5ac3: $57
    ret c                                         ; $5ac4: $d8

    cpl                                           ; $5ac5: $2f
    ld hl, sp-$1f                                 ; $5ac6: $f8 $e1
    rlca                                          ; $5ac8: $07

jr_0aa_5ac9:
    ldh a, [rTAC]                                 ; $5ac9: $f0 $07
    nop                                           ; $5acb: $00
    push hl                                       ; $5acc: $e5
    rlca                                          ; $5acd: $07
    ldh [$38], a                                  ; $5ace: $e0 $38
    call nc, Call_0aa_607c                        ; $5ad0: $d4 $7c $60
    ld a, [hl-]                                   ; $5ad3: $3a
    nop                                           ; $5ad4: $00
    ld b, e                                       ; $5ad5: $43
    ld [hl], a                                    ; $5ad6: $77
    ld b, e                                       ; $5ad7: $43
    ld d, l                                       ; $5ad8: $55
    halt                                          ; $5ad9: $76
    push de                                       ; $5ada: $d5
    ccf                                           ; $5adb: $3f
    sbc c                                         ; $5adc: $99
    nop                                           ; $5add: $00
    inc b                                         ; $5ade: $04
    adc b                                         ; $5adf: $88
    dec sp                                        ; $5ae0: $3b
    scf                                           ; $5ae1: $37
    ld b, b                                       ; $5ae2: $40
    inc c                                         ; $5ae3: $0c
    cp [hl]                                       ; $5ae4: $be
    ld a, $00                                     ; $5ae5: $3e $00
    ld [$2d14], sp                                ; $5ae7: $08 $14 $2d
    dec [hl]                                      ; $5aea: $35
    inc a                                         ; $5aeb: $3c
    ld b, d                                       ; $5aec: $42
    add hl, sp                                    ; $5aed: $39
    ld b, l                                       ; $5aee: $45
    nop                                           ; $5aef: $00
    ld a, c                                       ; $5af0: $79
    ld l, d                                       ; $5af1: $6a
    inc [hl]                                      ; $5af2: $34
    ld [hl-], a                                   ; $5af3: $32
    add [hl]                                      ; $5af4: $86
    dec b                                         ; $5af5: $05
    adc b                                         ; $5af6: $88
    inc de                                        ; $5af7: $13
    nop                                           ; $5af8: $00
    ld c, e                                       ; $5af9: $4b
    ld l, b                                       ; $5afa: $68
    ld l, d                                       ; $5afb: $6a
    ld c, d                                       ; $5afc: $4a
    ld hl, sp+$01                                 ; $5afd: $f8 $01
    cp $80                                        ; $5aff: $fe $80
    nop                                           ; $5b01: $00
    ccf                                           ; $5b02: $3f
    add b                                         ; $5b03: $80
    sbc a                                         ; $5b04: $9f
    ret nz                                        ; $5b05: $c0

    xor a                                         ; $5b06: $af
    ldh [$2f], a                                  ; $5b07: $e0 $2f
    ld h, b                                       ; $5b09: $60
    ld [$600f], sp                                ; $5b0a: $08 $0f $60
    xor a                                         ; $5b0d: $af
    ldh [$f8], a                                  ; $5b0e: $e0 $f8
    nop                                           ; $5b10: $00
    rrca                                          ; $5b11: $0f
    ld [hl], a                                    ; $5b12: $77
    rlca                                          ; $5b13: $07
    nop                                           ; $5b14: $00
    dec de                                        ; $5b15: $1b
    add e                                         ; $5b16: $83
    ldh [$0c], a                                  ; $5b17: $e0 $0c
    ldh a, [rTMA]                                 ; $5b19: $f0 $06
    ldh a, [rTMA]                                 ; $5b1b: $f0 $06
    nop                                           ; $5b1d: $00
    pop af                                        ; $5b1e: $f1
    dec b                                         ; $5b1f: $05
    rrca                                          ; $5b20: $0f
    ld hl, $b087                                  ; $5b21: $21 $87 $b0
    rst $00                                       ; $5b24: $c7
    ret nc                                        ; $5b25: $d0

    nop                                           ; $5b26: $00
    rst $00                                       ; $5b27: $c7
    ret nc                                        ; $5b28: $d0

    jp $e3d8                                      ; $5b29: $c3 $d8 $e3


    add sp, -$1d                                  ; $5b2c: $e8 $e3
    add sp, $00                                   ; $5b2e: $e8 $00
    add sp, -$1e                                  ; $5b30: $e8 $e2
    sbc [hl]                                      ; $5b32: $9e
    cp b                                          ; $5b33: $b8
    adc $60                                       ; $5b34: $ce $60
    call c, $0071                                 ; $5b36: $dc $71 $00
    call z, $e870                                 ; $5b39: $cc $70 $e8
    ld [hl], b                                    ; $5b3c: $70
    pop bc                                        ; $5b3d: $c1
    inc de                                        ; $5b3e: $13
    rlca                                          ; $5b3f: $07
    rla                                           ; $5b40: $17
    nop                                           ; $5b41: $00
    add $d8                                       ; $5b42: $c6 $d8
    add d                                         ; $5b44: $82
    sub $03                                       ; $5b45: $d6 $03
    db $fc                                        ; $5b47: $fc
    inc bc                                        ; $5b48: $03
    add e                                         ; $5b49: $83
    nop                                           ; $5b4a: $00
    ld [bc], a                                    ; $5b4b: $02
    inc bc                                        ; $5b4c: $03
    ld a, [$f803]                                 ; $5b4d: $fa $03 $f8
    ld a, d                                       ; $5b50: $7a
    ld hl, sp+$1c                                 ; $5b51: $f8 $1c
    nop                                           ; $5b53: $00
    ld a, [de]                                    ; $5b54: $1a
    ld [c], a                                     ; $5b55: $e2
    ret                                           ; $5b56: $c9


    ld d, e                                       ; $5b57: $53
    pop bc                                        ; $5b58: $c1
    ld e, d                                       ; $5b59: $5a
    adc b                                         ; $5b5a: $88
    ld [hl], a                                    ; $5b5b: $77
    nop                                           ; $5b5c: $00
    inc hl                                        ; $5b5d: $23
    ld a, [hl]                                    ; $5b5e: $7e
    ld e, l                                       ; $5b5f: $5d
    ld [hl], $3e                                  ; $5b60: $36 $3e
    inc e                                         ; $5b62: $1c
    db $e3                                        ; $5b63: $e3
    ccf                                           ; $5b64: $3f
    nop                                           ; $5b65: $00
    sbc [hl]                                      ; $5b66: $9e
    ld a, $ae                                     ; $5b67: $3e $ae
    ld b, $8d                                     ; $5b69: $06 $8d
    ld h, l                                       ; $5b6b: $65
    sbc b                                         ; $5b6c: $98
    ldh [rP1], a                                  ; $5b6d: $e0 $00
    jr nc, jr_0aa_5b91                            ; $5b6f: $30 $20

jr_0aa_5b71:
    jr nz, jr_0aa_5ba2                            ; $5b71: $20 $2f

    inc de                                        ; $5b73: $13
    sbc h                                         ; $5b74: $9c
    rlca                                          ; $5b75: $07
    sub e                                         ; $5b76: $93
    nop                                           ; $5b77: $00
    rrca                                          ; $5b78: $0f
    add [hl]                                      ; $5b79: $86
    ld e, a                                       ; $5b7a: $5f
    ret nz                                        ; $5b7b: $c0

    ld c, a                                       ; $5b7c: $4f
    ld b, b                                       ; $5b7d: $40
    rrca                                          ; $5b7e: $0f
    ld b, b                                       ; $5b7f: $40
    nop                                           ; $5b80: $00
    ld e, a                                       ; $5b81: $5f
    ld b, b                                       ; $5b82: $40
    ccf                                           ; $5b83: $3f
    jr nz, jr_0aa_5ba5                            ; $5b84: $20 $1f

    add b                                         ; $5b86: $80
    ld c, a                                       ; $5b87: $4f
    ret nz                                        ; $5b88: $c0

    nop                                           ; $5b89: $00
    daa                                           ; $5b8a: $27
    ldh [$f1], a                                  ; $5b8b: $e0 $f1
    dec b                                         ; $5b8d: $05
    pop hl                                        ; $5b8e: $e1
    dec c                                         ; $5b8f: $0d
    db $e3                                        ; $5b90: $e3

jr_0aa_5b91:
    dec bc                                        ; $5b91: $0b
    ld [bc], a                                    ; $5b92: $02
    db $e3                                        ; $5b93: $e3
    dec bc                                        ; $5b94: $0b
    jp $c71b                                      ; $5b95: $c3 $1b $c7


    rla                                           ; $5b98: $17
    ld [bc], a                                    ; $5b99: $02
    ld [$00ec], sp                                ; $5b9a: $08 $ec $00
    pop hl                                        ; $5b9d: $e1
    db $f4                                        ; $5b9e: $f4
    pop af                                        ; $5b9f: $f1
    db $f4                                        ; $5ba0: $f4
    pop af                                        ; $5ba1: $f1

jr_0aa_5ba2:
    ld b, $f0                                     ; $5ba2: $06 $f0
    inc bc                                        ; $5ba4: $03

jr_0aa_5ba5:
    nop                                           ; $5ba5: $00
    ld sp, hl                                     ; $5ba6: $f9
    ld a, [$faf9]                                 ; $5ba7: $fa $f9 $fa
    ld hl, sp-$04                                 ; $5baa: $f8 $fc
    ld bc, $00e0                                  ; $5bac: $01 $e0 $00
    jr z, jr_0aa_5b71                             ; $5baf: $28 $c0

    inc c                                         ; $5bb1: $0c
    inc hl                                        ; $5bb2: $23
    ld c, $33                                     ; $5bb3: $0e $33
    rla                                           ; $5bb5: $17
    or b                                          ; $5bb6: $b0
    nop                                           ; $5bb7: $00
    ld [hl], $52                                  ; $5bb8: $36 $52
    ld h, c                                       ; $5bba: $61
    ld d, b                                       ; $5bbb: $50
    ld l, c                                       ; $5bbc: $69
    ldh [$af], a                                  ; $5bbd: $e0 $af
    ld c, $00                                     ; $5bbf: $0e $00
    or $0f                                        ; $5bc1: $f6 $0f
    inc sp                                        ; $5bc3: $33
    rlca                                          ; $5bc4: $07
    dec de                                        ; $5bc5: $1b
    ld c, h                                       ; $5bc6: $4c
    add e                                         ; $5bc7: $83
    and [hl]                                      ; $5bc8: $a6
    nop                                           ; $5bc9: $00
    pop bc                                        ; $5bca: $c1
    and e                                         ; $5bcb: $a3
    ld [bc], a                                    ; $5bcc: $02
    ld d, b                                       ; $5bcd: $50
    ld d, $92                                     ; $5bce: $16 $92
    sub c                                         ; $5bd0: $91
    inc a                                         ; $5bd1: $3c
    nop                                           ; $5bd2: $00
    ld e, b                                       ; $5bd3: $58
    inc e                                         ; $5bd4: $1c
    ld e, c                                       ; $5bd5: $59
    sbc b                                         ; $5bd6: $98
    ld l, $80                                     ; $5bd7: $2e $80
    cp h                                          ; $5bd9: $bc
    ret z                                         ; $5bda: $c8

    nop                                           ; $5bdb: $00
    nop                                           ; $5bdc: $00
    xor d                                         ; $5bdd: $aa
    ld [hl], $1c                                  ; $5bde: $36 $1c
    ld [hl], $aa                                  ; $5be0: $36 $aa
    and d                                         ; $5be2: $a2
    sub c                                         ; $5be3: $91
    nop                                           ; $5be4: $00
    adc [hl]                                      ; $5be5: $8e
    inc bc                                        ; $5be6: $03
    dec a                                         ; $5be7: $3d
    rlca                                          ; $5be8: $07
    ld a, e                                       ; $5be9: $7b
    sbc h                                         ; $5bea: $9c
    ld h, h                                       ; $5beb: $64
    db $e3                                        ; $5bec: $e3
    nop                                           ; $5bed: $00
    inc bc                                        ; $5bee: $03
    call z, Call_0aa_4f0f                         ; $5bef: $cc $0f $4f
    ld [hl], c                                    ; $5bf2: $71
    inc a                                         ; $5bf3: $3c
    call nz, RST_30                               ; $5bf4: $c4 $30 $00
    ldh a, [$1f]                                  ; $5bf7: $f0 $1f
    inc a                                         ; $5bf9: $3c
    dec de                                        ; $5bfa: $1b
    inc e                                         ; $5bfb: $1c
    rst $18                                       ; $5bfc: $df
    ldh [rIE], a                                  ; $5bfd: $e0 $ff

jr_0aa_5bff:
    nop                                           ; $5bff: $00
    ldh a, [$b0]                                  ; $5c00: $f0 $b0
    ret nz                                        ; $5c02: $c0

    add b                                         ; $5c03: $80
    ld e, $42                                     ; $5c04: $1e $42
    cp $30                                        ; $5c06: $fe $30
    nop                                           ; $5c08: $00
    scf                                           ; $5c09: $37
    and b                                         ; $5c0a: $a0
    ld l, a                                       ; $5c0b: $6f
    cpl                                           ; $5c0c: $2f
    rst $08                                       ; $5c0d: $cf
    cpl                                           ; $5c0e: $2f
    rst $08                                       ; $5c0f: $cf
    ld b, b                                       ; $5c10: $40
    nop                                           ; $5c11: $00
    rra                                           ; $5c12: $1f
    ld b, b                                       ; $5c13: $40
    rra                                           ; $5c14: $1f
    ret nz                                        ; $5c15: $c0

    rra                                           ; $5c16: $1f
    add b                                         ; $5c17: $80
    ccf                                           ; $5c18: $3f
    db $fc                                        ; $5c19: $fc
    ld b, $01                                     ; $5c1a: $06 $01
    db $fc                                        ; $5c1c: $fc
    ld bc, $01fe                                  ; $5c1d: $01 $fe $01
    add $01                                       ; $5c20: $c6 $01
    ld [bc], a                                    ; $5c22: $02
    stop                                          ; $5c23: $10 $00
    nop                                           ; $5c25: $00
    nop                                           ; $5c26: $00
    xor b                                         ; $5c27: $a8
    and $46                                       ; $5c28: $e6 $46
    ld [c], a                                     ; $5c2a: $e2
    ld b, e                                       ; $5c2b: $43
    pop hl                                        ; $5c2c: $e1
    and a                                         ; $5c2d: $a7
    nop                                           ; $5c2e: $00
    ld b, a                                       ; $5c2f: $47
    and b                                         ; $5c30: $a0

jr_0aa_5c31:
    ld b, b                                       ; $5c31: $40
    ld b, c                                       ; $5c32: $41
    and c                                         ; $5c33: $a1
    ld b, b                                       ; $5c34: $40
    and b                                         ; $5c35: $a0
    cp a                                          ; $5c36: $bf
    nop                                           ; $5c37: $00

jr_0aa_5c38:
    ld e, a                                       ; $5c38: $5f
    add hl, sp                                    ; $5c39: $39
    cp b                                          ; $5c3a: $b8
    cp b                                          ; $5c3b: $b8
    pop bc                                        ; $5c3c: $c1
    jr c, jr_0aa_5bff                             ; $5c3d: $38 $c0

    jr c, jr_0aa_5c45                             ; $5c3f: $38 $04

    ld a, [de]                                    ; $5c41: $1a
    jr c, jr_0aa_5c5e                             ; $5c42: $38 $1a

    ld a, [hl+]                                   ; $5c44: $2a

jr_0aa_5c45:
    sub d                                         ; $5c45: $92
    ld [bc], a                                    ; $5c46: $02
    nop                                           ; $5c47: $00
    jr jr_0aa_5c38                                ; $5c48: $18 $ee

    nop                                           ; $5c4a: $00
    inc bc                                        ; $5c4b: $03
    ld [hl+], a                                   ; $5c4c: $22
    pop bc                                        ; $5c4d: $c1
    ld bc, $f723                                  ; $5c4e: $01 $23 $f7
    pop bc                                        ; $5c51: $c1
    sbc h                                         ; $5c52: $9c
    nop                                           ; $5c53: $00
    and b                                         ; $5c54: $a0
    ld bc, $e381                                  ; $5c55: $01 $81 $e3
    ret nz                                        ; $5c58: $c0

    and d                                         ; $5c59: $a2
    jp $00fa                                      ; $5c5a: $c3 $fa $00


    inc bc                                        ; $5c5d: $03

jr_0aa_5c5e:
    inc c                                         ; $5c5e: $0c
    rrca                                          ; $5c5f: $0f
    ld b, d                                       ; $5c60: $42
    ld bc, $2566                                  ; $5c61: $01 $66 $25
    inc bc                                        ; $5c64: $03
    nop                                           ; $5c65: $00
    push hl                                       ; $5c66: $e5
    ld b, e                                       ; $5c67: $43
    and l                                         ; $5c68: $a5
    and $21                                       ; $5c69: $e6 $21
    xor $29                                       ; $5c6b: $ee $29
    and $04                                       ; $5c6d: $e6 $04
    ld h, h                                       ; $5c6f: $64
    db $e4                                        ; $5c70: $e4
    dec h                                         ; $5c71: $25
    pop bc                                        ; $5c72: $c1
    db $e4                                        ; $5c73: $e4
    ld [bc], a                                    ; $5c74: $02
    ld [$e0c3], sp                                ; $5c75: $08 $c3 $e0
    add hl, bc                                    ; $5c78: $09
    ldh [$62], a                                  ; $5c79: $e0 $62
    ldh [$62], a                                  ; $5c7b: $e0 $62
    ld e, l                                       ; $5c7d: $5d
    ld bc, $7f3f                                  ; $5c7e: $01 $3f $7f
    ld d, b                                       ; $5c81: $50
    ld [bc], a                                    ; $5c82: $02
    ret nz                                        ; $5c83: $c0

    inc b                                         ; $5c84: $04
    ld [$8a9c], sp                                ; $5c85: $08 $9c $8a
    ld e, a                                       ; $5c88: $5f
    cpl                                           ; $5c89: $2f
    sub b                                         ; $5c8a: $90
    and b                                         ; $5c8b: $a0
    adc b                                         ; $5c8c: $88
    sub b                                         ; $5c8d: $90
    nop                                           ; $5c8e: $00
    sub b                                         ; $5c8f: $90
    adc b                                         ; $5c90: $88
    ret nc                                        ; $5c91: $d0

    ret nz                                        ; $5c92: $c0

    rra                                           ; $5c93: $1f
    ret nz                                        ; $5c94: $c0

    nop                                           ; $5c95: $00
    ret nz                                        ; $5c96: $c0

    nop                                           ; $5c97: $00
    nop                                           ; $5c98: $00
    nop                                           ; $5c99: $00
    ld h, $14                                     ; $5c9a: $26 $14
    ld [hl], b                                    ; $5c9c: $70
    ld [hl-], a                                   ; $5c9d: $32
    ldh a, [$32]                                  ; $5c9e: $f0 $32
    jr nc, jr_0aa_5c31                            ; $5ca0: $30 $8f

    ld a, l                                       ; $5ca2: $7d
    add [hl]                                      ; $5ca3: $86
    ld a, [bc]                                    ; $5ca4: $0a
    call z, $610a                                 ; $5ca5: $cc $0a $61
    sub d                                         ; $5ca8: $92
    ld [hl], c                                    ; $5ca9: $71
    and d                                         ; $5caa: $a2
    ld [$a2d3], sp                                ; $5cab: $08 $d3 $a2
    res 7, d                                      ; $5cae: $cb $ba
    db $10                                        ; $5cb0: $10
    jr @+$01                                      ; $5cb1: $18 $ff

    nop                                           ; $5cb3: $00
    xor $01                                       ; $5cb4: $ee $01
    add hl, hl                                    ; $5cb6: $29
    ld l, [hl]                                    ; $5cb7: $6e
    xor c                                         ; $5cb8: $a9
    ld h, [hl]                                    ; $5cb9: $66
    and c                                         ; $5cba: $a1
    ld h, [hl]                                    ; $5cbb: $66
    and l                                         ; $5cbc: $a5
    db $10                                        ; $5cbd: $10
    jr z, jr_0aa_5cc0                             ; $5cbe: $28 $00

jr_0aa_5cc0:
    ret nz                                        ; $5cc0: $c0

    ld b, [hl]                                    ; $5cc1: $46
    ret nz                                        ; $5cc2: $c0

    ld b, h                                       ; $5cc3: $44
    dec b                                         ; $5cc4: $05
    pop bc                                        ; $5cc5: $c1
    dec c                                         ; $5cc6: $0d
    pop bc                                        ; $5cc7: $c1
    ld b, $08                                     ; $5cc8: $06 $08
    inc bc                                        ; $5cca: $03
    ld hl, sp+$03                                 ; $5ccb: $f8 $03
    inc bc                                        ; $5ccd: $03
    inc [hl]                                      ; $5cce: $34
    jr nz, jr_0aa_5cd5                            ; $5ccf: $20 $04

    ld c, e                                       ; $5cd1: $4b
    db $10                                        ; $5cd2: $10
    inc bc                                        ; $5cd3: $03
    add e                                         ; $5cd4: $83

jr_0aa_5cd5:
    ld [bc], a                                    ; $5cd5: $02
    ld d, b                                       ; $5cd6: $50
    nop                                           ; $5cd7: $00
    ld bc, $ffd0                                  ; $5cd8: $01 $d0 $ff
    rra                                           ; $5cdb: $1f
    db $10                                        ; $5cdc: $10
    ld bc, $0100                                  ; $5cdd: $01 $00 $01
    inc bc                                        ; $5ce0: $03
    nop                                           ; $5ce1: $00
    inc b                                         ; $5ce2: $04
    inc bc                                        ; $5ce3: $03
    ld e, $08                                     ; $5ce4: $1e $08
    inc a                                         ; $5ce6: $3c
    dec h                                         ; $5ce7: $25
    ld a, b                                       ; $5ce8: $78
    ld c, e                                       ; $5ce9: $4b
    nop                                           ; $5cea: $00
    jr jr_0aa_5d11                                ; $5ceb: $18 $24

    ld [bc], a                                    ; $5ced: $02
    ld a, [hl]                                    ; $5cee: $7e
    db $db                                        ; $5cef: $db
    ld a, h                                       ; $5cf0: $7c
    add a                                         ; $5cf1: $87
    nop                                           ; $5cf2: $00
    nop                                           ; $5cf3: $00
    ld hl, sp-$75                                 ; $5cf4: $f8 $8b
    db $fc                                        ; $5cf6: $fc
    inc b                                         ; $5cf7: $04
    xor h                                         ; $5cf8: $ac
    call c, $8e76                                 ; $5cf9: $dc $76 $8e
    add b                                         ; $5cfc: $80
    ld b, b                                       ; $5cfd: $40
    jr jr_0aa_5d40                                ; $5cfe: $18 $40

    add b                                         ; $5d00: $80
    ld h, b                                       ; $5d01: $60
    ret nz                                        ; $5d02: $c0

    ldh [rNR10], a                                ; $5d03: $e0 $10
    ld b, h                                       ; $5d05: $44
    jr @+$7e                                      ; $5d06: $18 $7c

    cp d                                          ; $5d08: $ba
    ld a, $50                                     ; $5d09: $3e $50
    ret c                                         ; $5d0b: $d8

    ld l, [hl]                                    ; $5d0c: $6e
    ld e, b                                       ; $5d0d: $58
    ld bc, $0300                                  ; $5d0e: $01 $00 $03

jr_0aa_5d11:
    jr nz, jr_0aa_5d13                            ; $5d11: $20 $00

jr_0aa_5d13:
    db $fd                                        ; $5d13: $fd
    ld e, h                                       ; $5d14: $5c
    nop                                           ; $5d15: $00
    ld c, $03                                     ; $5d16: $0e $03
    inc e                                         ; $5d18: $1c
    ld bc, $003e                                  ; $5d19: $01 $3e $00
    ld [bc], a                                    ; $5d1c: $02
    ld e, c                                       ; $5d1d: $59
    ld a, b                                       ; $5d1e: $78
    scf                                           ; $5d1f: $37
    or b                                          ; $5d20: $b0
    rst $08                                       ; $5d21: $cf
    ret nz                                        ; $5d22: $c0

    ldh a, [rP1]                                  ; $5d23: $f0 $00
    or e                                          ; $5d25: $b3
    dec bc                                        ; $5d26: $0b
    ld h, b                                       ; $5d27: $60
    ld a, e                                       ; $5d28: $7b
    ld a, b                                       ; $5d29: $78
    ld [hl-], a                                   ; $5d2a: $32
    add h                                         ; $5d2b: $84
    adc c                                         ; $5d2c: $89
    nop                                           ; $5d2d: $00
    ld c, l                                       ; $5d2e: $4d
    add hl, hl                                    ; $5d2f: $29
    ld h, c                                       ; $5d30: $61
    dec e                                         ; $5d31: $1d
    adc b                                         ; $5d32: $88
    add b                                         ; $5d33: $80
    dec e                                         ; $5d34: $1d
    cp $00                                        ; $5d35: $fe $00
    ld hl, sp-$75                                 ; $5d37: $f8 $8b
    ld hl, sp+$1f                                 ; $5d39: $f8 $1f
    cp $3d                                        ; $5d3b: $fe $3d
    inc a                                         ; $5d3d: $3c
    nop                                           ; $5d3e: $00
    nop                                           ; $5d3f: $00

jr_0aa_5d40:
    ret nz                                        ; $5d40: $c0

    ret nz                                        ; $5d41: $c0

    cp b                                          ; $5d42: $b8
    ld a, c                                       ; $5d43: $79
    ret nz                                        ; $5d44: $c0

    ld c, $fe                                     ; $5d45: $0e $fe
    ld b, c                                       ; $5d47: $41
    nop                                           ; $5d48: $00
    dec c                                         ; $5d49: $0d
    ld [hl], c                                    ; $5d4a: $71
    dec b                                         ; $5d4b: $05
    ld h, b                                       ; $5d4c: $60
    inc bc                                        ; $5d4d: $03
    ld hl, $d307                                  ; $5d4e: $21 $07 $d3
    nop                                           ; $5d51: $00
    call c, $7967                                 ; $5d52: $dc $67 $79
    adc h                                         ; $5d55: $8c
    ldh a, [$f8]                                  ; $5d56: $f0 $f8
    add b                                         ; $5d58: $80
    ccf                                           ; $5d59: $3f
    nop                                           ; $5d5a: $00
    cp a                                          ; $5d5b: $bf
    cp a                                          ; $5d5c: $bf
    ld a, a                                       ; $5d5d: $7f
    ld h, b                                       ; $5d5e: $60
    ret nz                                        ; $5d5f: $c0

    ld e, b                                       ; $5d60: $58
    ret nz                                        ; $5d61: $c0

    rst $18                                       ; $5d62: $df
    ld bc, $8fc3                                  ; $5d63: $01 $c3 $8f
    sub c                                         ; $5d66: $91
    jr z, jr_0aa_5d78                             ; $5d67: $28 $0f

    ld [hl], h                                    ; $5d69: $74
    rlca                                          ; $5d6a: $07
    ret nc                                        ; $5d6b: $d0

    ld c, b                                       ; $5d6c: $48
    nop                                           ; $5d6d: $00
    add b                                         ; $5d6e: $80
    add b                                         ; $5d6f: $80
    add b                                         ; $5d70: $80
    ld b, b                                       ; $5d71: $40
    ld b, $03                                     ; $5d72: $06 $03
    rla                                           ; $5d74: $17
    rrca                                          ; $5d75: $0f
    nop                                           ; $5d76: $00
    inc l                                         ; $5d77: $2c

jr_0aa_5d78:
    rla                                           ; $5d78: $17
    ld h, b                                       ; $5d79: $60
    inc hl                                        ; $5d7a: $23
    ret nz                                        ; $5d7b: $c0

    ld e, $c0                                     ; $5d7c: $1e $c0
    ld d, e                                       ; $5d7e: $53
    nop                                           ; $5d7f: $00
    ret nz                                        ; $5d80: $c0

    ld d, b                                       ; $5d81: $50
    inc l                                         ; $5d82: $2c
    call nz, $c001                                ; $5d83: $c4 $01 $c0
    call $008c                                    ; $5d86: $cd $8c $00
    add h                                         ; $5d89: $84
    cp h                                          ; $5d8a: $bc
    db $10                                        ; $5d8b: $10
    ld l, h                                       ; $5d8c: $6c
    pop de                                        ; $5d8d: $d1
    ld h, b                                       ; $5d8e: $60
    rrca                                          ; $5d8f: $0f
    add b                                         ; $5d90: $80
    nop                                           ; $5d91: $00
    dec a                                         ; $5d92: $3d
    add hl, sp                                    ; $5d93: $39
    or b                                          ; $5d94: $b0
    ld b, $c8                                     ; $5d95: $06 $c8
    ld [$16d4], sp                                ; $5d97: $08 $d4 $16
    nop                                           ; $5d9a: $00
    ld de, $7b15                                  ; $5d9b: $11 $15 $7b
    xor h                                         ; $5d9e: $ac
    rra                                           ; $5d9f: $1f
    add hl, de                                    ; $5da0: $19
    inc l                                         ; $5da1: $2c
    rra                                           ; $5da2: $1f
    nop                                           ; $5da3: $00
    ld e, e                                       ; $5da4: $5b
    cp a                                          ; $5da5: $bf
    ld sp, hl                                     ; $5da6: $f9
    dec hl                                        ; $5da7: $2b
    db $fc                                        ; $5da8: $fc
    rst $38                                       ; $5da9: $ff
    rst $28                                       ; $5daa: $ef
    db $e3                                        ; $5dab: $e3
    nop                                           ; $5dac: $00
    pop hl                                        ; $5dad: $e1
    dec de                                        ; $5dae: $1b
    sub e                                         ; $5daf: $93
    db $ed                                        ; $5db0: $ed
    ld a, $3d                                     ; $5db1: $3e $3d
    db $fc                                        ; $5db3: $fc
    ld a, [$b900]                                 ; $5db4: $fa $00 $b9
    dec b                                         ; $5db7: $05
    ld l, a                                       ; $5db8: $6f
    rra                                           ; $5db9: $1f
    nop                                           ; $5dba: $00
    ret nz                                        ; $5dbb: $c0

    ret c                                         ; $5dbc: $d8

    inc a                                         ; $5dbd: $3c
    nop                                           ; $5dbe: $00
    ret c                                         ; $5dbf: $d8

    cp h                                          ; $5dc0: $bc
    db $e3                                        ; $5dc1: $e3
    xor [hl]                                      ; $5dc2: $ae
    xor h                                         ; $5dc3: $ac
    rst $20                                       ; $5dc4: $e7
    or a                                          ; $5dc5: $b7
    rst $28                                       ; $5dc6: $ef
    nop                                           ; $5dc7: $00
    push de                                       ; $5dc8: $d5
    rlca                                          ; $5dc9: $07
    add b                                         ; $5dca: $80
    nop                                           ; $5dcb: $00
    pop hl                                        ; $5dcc: $e1
    ld bc, $1082                                  ; $5dcd: $01 $82 $10
    nop                                           ; $5dd0: $00
    ld b, e                                       ; $5dd1: $43
    ld h, b                                       ; $5dd2: $60
    rlca                                          ; $5dd3: $07
    ret nz                                        ; $5dd4: $c0

    rra                                           ; $5dd5: $1f
    ret nz                                        ; $5dd6: $c0

    ccf                                           ; $5dd7: $3f
    nop                                           ; $5dd8: $00
    nop                                           ; $5dd9: $00
    db $e3                                        ; $5dda: $e3
    ld hl, sp+$07                                 ; $5ddb: $f8 $07
    ldh [$e0], a                                  ; $5ddd: $e0 $e0
    add b                                         ; $5ddf: $80
    ld h, b                                       ; $5de0: $60
    sbc b                                         ; $5de1: $98
    nop                                           ; $5de2: $00
    jr nz, jr_0aa_5e41                            ; $5de3: $20 $5c

    sub h                                         ; $5de5: $94
    ld c, $e2                                     ; $5de6: $0e $e2
    rrca                                          ; $5de8: $0f
    ld a, [c]                                     ; $5de9: $f2
    rlca                                          ; $5dea: $07
    ld b, b                                       ; $5deb: $40
    di                                            ; $5dec: $f3
    ld [bc], a                                    ; $5ded: $02
    nop                                           ; $5dee: $00
    jr nz, jr_0aa_5e31                            ; $5def: $20 $40

    dec l                                         ; $5df1: $2d
    ld c, a                                       ; $5df2: $4f
    ld l, h                                       ; $5df3: $6c
    rrca                                          ; $5df4: $0f
    nop                                           ; $5df5: $00
    ld d, $27                                     ; $5df6: $16 $27
    ld e, $25                                     ; $5df8: $1e $25
    ld a, [$f9c1]                                 ; $5dfa: $fa $c1 $f9
    ldh [rP1], a                                  ; $5dfd: $e0 $00
    ld hl, sp-$1f                                 ; $5dff: $f8 $e1
    or b                                          ; $5e01: $b0
    add a                                         ; $5e02: $87
    rla                                           ; $5e03: $17
    jr nc, @-$4f                                  ; $5e04: $30 $af

    and b                                         ; $5e06: $a0
    nop                                           ; $5e07: $00
    rra                                           ; $5e08: $1f
    add b                                         ; $5e09: $80
    ccf                                           ; $5e0a: $3f
    cp [hl]                                       ; $5e0b: $be
    and b                                         ; $5e0c: $a0
    sub [hl]                                      ; $5e0d: $96
    ld [hl], c                                    ; $5e0e: $71
    ld a, [bc]                                    ; $5e0f: $0a
    nop                                           ; $5e10: $00
    ld a, [c]                                     ; $5e11: $f2
    dec bc                                        ; $5e12: $0b
    ld [hl], $36                                  ; $5e13: $36 $36
    db $fc                                        ; $5e15: $fc
    ld b, $f0                                     ; $5e16: $06 $f0
    inc b                                         ; $5e18: $04
    nop                                           ; $5e19: $00
    inc de                                        ; $5e1a: $13
    dec c                                         ; $5e1b: $0d
    inc bc                                        ; $5e1c: $03
    ld bc, $0103                                  ; $5e1d: $01 $03 $01
    add [hl]                                      ; $5e20: $86
    inc bc                                        ; $5e21: $03
    nop                                           ; $5e22: $00
    ld a, d                                       ; $5e23: $7a
    add a                                         ; $5e24: $87
    ld l, l                                       ; $5e25: $6d
    adc l                                         ; $5e26: $8d
    dec de                                        ; $5e27: $1b
    dec de                                        ; $5e28: $1b
    ld c, h                                       ; $5e29: $4c
    cp c                                          ; $5e2a: $b9
    nop                                           ; $5e2b: $00
    sub h                                         ; $5e2c: $94
    ld [hl], b                                    ; $5e2d: $70
    xor l                                         ; $5e2e: $ad
    ld l, e                                       ; $5e2f: $6b
    ld c, l                                       ; $5e30: $4d

jr_0aa_5e31:
    res 1, l                                      ; $5e31: $cb $8d
    xor e                                         ; $5e33: $ab
    nop                                           ; $5e34: $00
    dec c                                         ; $5e35: $0d
    ld c, e                                       ; $5e36: $4b
    db $f4                                        ; $5e37: $f4
    ld c, b                                       ; $5e38: $48
    rst $38                                       ; $5e39: $ff
    ldh a, [rIF]                                  ; $5e3a: $f0 $0f
    adc a                                         ; $5e3c: $8f
    nop                                           ; $5e3d: $00
    ld [hl], b                                    ; $5e3e: $70
    nop                                           ; $5e3f: $00
    nop                                           ; $5e40: $00

jr_0aa_5e41:
    ld a, a                                       ; $5e41: $7f
    ld a, e                                       ; $5e42: $7b
    inc b                                         ; $5e43: $04
    cp a                                          ; $5e44: $bf
    add b                                         ; $5e45: $80
    nop                                           ; $5e46: $00
    ld e, a                                       ; $5e47: $5f
    ret nz                                        ; $5e48: $c0

    rra                                           ; $5e49: $1f
    rra                                           ; $5e4a: $1f
    ld a, a                                       ; $5e4b: $7f
    add b                                         ; $5e4c: $80
    rra                                           ; $5e4d: $1f
    sbc a                                         ; $5e4e: $9f
    nop                                           ; $5e4f: $00
    ld a, a                                       ; $5e50: $7f
    nop                                           ; $5e51: $00
    adc $31                                       ; $5e52: $ce $31
    nop                                           ; $5e54: $00
    nop                                           ; $5e55: $00
    ei                                            ; $5e56: $fb
    ei                                            ; $5e57: $fb
    nop                                           ; $5e58: $00
    pop af                                        ; $5e59: $f1
    inc b                                         ; $5e5a: $04
    ld a, [c]                                     ; $5e5b: $f2
    ld b, $e2                                     ; $5e5c: $06 $e2
    ld c, $e1                                     ; $5e5e: $0e $e1
    rrca                                          ; $5e60: $0f
    ld bc, $0fe3                                  ; $5e61: $01 $e3 $0f
    inc e                                         ; $5e64: $1c

Jump_0aa_5e65:
    ret nc                                        ; $5e65: $d0

    inc e                                         ; $5e66: $1c
    ret nc                                        ; $5e67: $d0

    jr jr_0aa_5e6c                                ; $5e68: $18 $02

    nop                                           ; $5e6a: $00
    nop                                           ; $5e6b: $00

jr_0aa_5e6c:
    db $fc                                        ; $5e6c: $fc
    pop hl                                        ; $5e6d: $e1
    inc e                                         ; $5e6e: $1c
    dec b                                         ; $5e6f: $05
    inc c                                         ; $5e70: $0c
    dec b                                         ; $5e71: $05
    db $fc                                        ; $5e72: $fc
    ld a, [c]                                     ; $5e73: $f2
    add b                                         ; $5e74: $80

jr_0aa_5e75:
    ld [bc], a                                    ; $5e75: $02
    nop                                           ; $5e76: $00
    ld a, [$fbfc]                                 ; $5e77: $fa $fc $fb
    ld b, $03                                     ; $5e7a: $06 $03
    db $fd                                        ; $5e7c: $fd
    ld b, b                                       ; $5e7d: $40
    nop                                           ; $5e7e: $00
    cp [hl]                                       ; $5e7f: $be
    db $fd                                        ; $5e80: $fd
    sbc h                                         ; $5e81: $9c
    jp c, $d927                                   ; $5e82: $da $27 $d9

    sbc [hl]                                      ; $5e85: $9e
    ld [c], a                                     ; $5e86: $e2
    nop                                           ; $5e87: $00
    ld bc, $0738                                  ; $5e88: $01 $38 $07
    inc bc                                        ; $5e8b: $03
    rrca                                          ; $5e8c: $0f
    ld c, b                                       ; $5e8d: $48
    ld [hl], b                                    ; $5e8e: $70
    ld b, $00                                     ; $5e8f: $06 $00
    ld a, c                                       ; $5e91: $79
    ld b, b                                       ; $5e92: $40
    ld a, $70                                     ; $5e93: $3e $70
    ld l, l                                       ; $5e95: $6d
    ld e, l                                       ; $5e96: $5d
    or d                                          ; $5e97: $b2
    db $eb                                        ; $5e98: $eb
    nop                                           ; $5e99: $00
    adc e                                         ; $5e9a: $8b
    ldh [$cd], a                                  ; $5e9b: $e0 $cd
    ldh [$95], a                                  ; $5e9d: $e0 $95
    or b                                          ; $5e9f: $b0
    inc e                                         ; $5ea0: $1c
    adc d                                         ; $5ea1: $8a
    nop                                           ; $5ea2: $00
    inc l                                         ; $5ea3: $2c
    ld a, [bc]                                    ; $5ea4: $0a
    ld b, h                                       ; $5ea5: $44
    ld h, $94                                     ; $5ea6: $26 $94
    ld h, h                                       ; $5ea8: $64
    inc h                                         ; $5ea9: $24
    sub l                                         ; $5eaa: $95
    nop                                           ; $5eab: $00
    inc h                                         ; $5eac: $24
    dec d                                         ; $5ead: $15
    inc h                                         ; $5eae: $24
    dec d                                         ; $5eaf: $15
    ld h, b                                       ; $5eb0: $60
    ld bc, $afe0                                  ; $5eb1: $01 $e0 $af
    nop                                           ; $5eb4: $00
    ldh a, [$97]                                  ; $5eb5: $f0 $97
    ldh a, [$b3]                                  ; $5eb7: $f0 $b3
    or b                                          ; $5eb9: $b0
    jp nc, $dc6c                                  ; $5eba: $d2 $6c $dc

    nop                                           ; $5ebd: $00
    add sp, $58                                   ; $5ebe: $e8 $58
    and h                                         ; $5ec0: $a4
    ld e, l                                       ; $5ec1: $5d
    ret c                                         ; $5ec2: $d8

    add hl, sp                                    ; $5ec3: $39
    sub l                                         ; $5ec4: $95
    inc c                                         ; $5ec5: $0c
    nop                                           ; $5ec6: $00
    dec b                                         ; $5ec7: $05
    ld l, h                                       ; $5ec8: $6c
    dec h                                         ; $5ec9: $25
    ld l, h                                       ; $5eca: $6c
    jr nz, jr_0aa_5e75                            ; $5ecb: $20 $a8

    ld h, b                                       ; $5ecd: $60
    pop bc                                        ; $5ece: $c1
    nop                                           ; $5ecf: $00
    ld a, h                                       ; $5ed0: $7c
    pop bc                                        ; $5ed1: $c1
    sbc $32                                       ; $5ed2: $de $32
    ld hl, sp-$3a                                 ; $5ed4: $f8 $c6
    jr c, @-$5e                                   ; $5ed6: $38 $a0

    nop                                           ; $5ed8: $00
    jr c, @-$5e                                   ; $5ed9: $38 $a0

    or b                                          ; $5edb: $b0
    add b                                         ; $5edc: $80
    jr nc, jr_0aa_5f1f                            ; $5edd: $30 $40

    ccf                                           ; $5edf: $3f
    ld c, a                                       ; $5ee0: $4f
    nop                                           ; $5ee1: $00
    ccf                                           ; $5ee2: $3f
    ld e, a                                       ; $5ee3: $5f

jr_0aa_5ee4:
    ld h, b                                       ; $5ee4: $60
    ret nz                                        ; $5ee5: $c0

    ld h, b                                       ; $5ee6: $60
    ret nz                                        ; $5ee7: $c0

    ld [bc], a                                    ; $5ee8: $02
    ld bc, $0306                                  ; $5ee9: $01 $06 $03
    inc bc                                        ; $5eec: $03
    ld bc, $0102                                  ; $5eed: $01 $02 $01
    dec d                                         ; $5ef0: $15
    ld [bc], a                                    ; $5ef1: $02
    inc b                                         ; $5ef2: $04
    ld [$0000], sp                                ; $5ef3: $08 $00 $00
    nop                                           ; $5ef6: $00
    rlca                                          ; $5ef7: $07
    ld [hl], h                                    ; $5ef8: $74
    or c                                          ; $5ef9: $b1
    dec [hl]                                      ; $5efa: $35
    or b                                          ; $5efb: $b0
    dec [hl]                                      ; $5efc: $35
    add l                                         ; $5efd: $85
    nop                                           ; $5efe: $00
    or b                                          ; $5eff: $b0
    add l                                         ; $5f00: $85
    or b                                          ; $5f01: $b0
    dec d                                         ; $5f02: $15
    pop de                                        ; $5f03: $d1
    dec d                                         ; $5f04: $15
    pop de                                        ; $5f05: $d1
    ret nz                                        ; $5f06: $c0

    nop                                           ; $5f07: $00
    add h                                         ; $5f08: $84
    add l                                         ; $5f09: $85
    sub b                                         ; $5f0a: $90
    dec d                                         ; $5f0b: $15
    sub b                                         ; $5f0c: $90
    add l                                         ; $5f0d: $85
    add b                                         ; $5f0e: $80
    dec b                                         ; $5f0f: $05
    nop                                           ; $5f10: $00
    ld [bc], a                                    ; $5f11: $02
    add l                                         ; $5f12: $85
    adc d                                         ; $5f13: $8a
    ld [c], a                                     ; $5f14: $e2
    cpl                                           ; $5f15: $2f
    ld h, d                                       ; $5f16: $62
    cpl                                           ; $5f17: $2f
    ld l, l                                       ; $5f18: $6d
    nop                                           ; $5f19: $00
    db $e4                                        ; $5f1a: $e4
    ld [hl], b                                    ; $5f1b: $70
    inc de                                        ; $5f1c: $13
    ld [hl], b                                    ; $5f1d: $70
    dec de                                        ; $5f1e: $1b

jr_0aa_5f1f:
    ld [hl], c                                    ; $5f1f: $71
    ld e, d                                       ; $5f20: $5a
    ld sp, $0a00                                  ; $5f21: $31 $00 $0a
    ld [hl], c                                    ; $5f24: $71
    ld c, d                                       ; $5f25: $4a
    or c                                          ; $5f26: $b1
    adc d                                         ; $5f27: $8a
    inc sp                                        ; $5f28: $33
    adc $32                                       ; $5f29: $ce $32
    nop                                           ; $5f2b: $00
    adc $7c                                       ; $5f2c: $ce $7c
    call nz, $c47f                                ; $5f2e: $c4 $7f $c4
    adc b                                         ; $5f31: $88
    jr c, jr_0aa_5ee4                             ; $5f32: $38 $b0

    nop                                           ; $5f34: $00
    ld [hl-], a                                   ; $5f35: $32
    inc bc                                        ; $5f36: $03
    add b                                         ; $5f37: $80
    add hl, bc                                    ; $5f38: $09
    adc b                                         ; $5f39: $88
    ld d, [hl]                                    ; $5f3a: $56
    ld a, b                                       ; $5f3b: $78
    rst $30                                       ; $5f3c: $f7
    nop                                           ; $5f3d: $00
    ret z                                         ; $5f3e: $c8

    ld [de], a                                    ; $5f3f: $12
    adc h                                         ; $5f40: $8c
    ld bc, $81c5                                  ; $5f41: $01 $c5 $81
    ld h, l                                       ; $5f44: $65
    ld h, b                                       ; $5f45: $60
    nop                                           ; $5f46: $00
    nop                                           ; $5f47: $00
    dec a                                         ; $5f48: $3d
    inc sp                                        ; $5f49: $33
    cp $7f                                        ; $5f4a: $fe $7f
    ld bc, $257c                                  ; $5f4c: $01 $7c $25
    nop                                           ; $5f4f: $00
    inc a                                         ; $5f50: $3c
    ld b, b                                       ; $5f51: $40
    ret nz                                        ; $5f52: $c0

    ld b, b                                       ; $5f53: $40
    add b                                         ; $5f54: $80
    ld b, b                                       ; $5f55: $40
    add b                                         ; $5f56: $80
    add b                                         ; $5f57: $80
    jr nc, jr_0aa_5f5a                            ; $5f58: $30 $00

jr_0aa_5f5a:
    add b                                         ; $5f5a: $80
    cp a                                          ; $5f5b: $bf
    add hl, bc                                    ; $5f5c: $09
    sbc l                                         ; $5f5d: $9d
    add d                                         ; $5f5e: $82
    ldh [$c4], a                                  ; $5f5f: $e0 $c4
    ldh [$64], a                                  ; $5f61: $e0 $64
    nop                                           ; $5f63: $00
    ld h, b                                       ; $5f64: $60
    inc h                                         ; $5f65: $24
    ld h, [hl]                                    ; $5f66: $66

Jump_0aa_5f67:
    ld d, $70                                     ; $5f67: $16 $70
    nop                                           ; $5f69: $00
    jr c, jr_0aa_5f8b                             ; $5f6a: $38 $1f

    nop                                           ; $5f6c: $00
    ld a, $07                                     ; $5f6d: $3e $07
    add hl, sp                                    ; $5f6f: $39
    rlca                                          ; $5f70: $07
    ld l, l                                       ; $5f71: $6d
    ld h, h                                       ; $5f72: $64
    jp hl                                         ; $5f73: $e9


jr_0aa_5f74:
    db $e4                                        ; $5f74: $e4
    ld [$e4c9], sp                                ; $5f75: $08 $c9 $e4
    pop de                                        ; $5f78: $d1
    ccf                                           ; $5f79: $3f
    xor $01                                       ; $5f7a: $ee $01
    ld [hl], b                                    ; $5f7c: $70
    ldh a, [$ef]                                  ; $5f7d: $f0 $ef
    nop                                           ; $5f7f: $00
    rra                                           ; $5f80: $1f
    ld hl, sp-$46                                 ; $5f81: $f8 $ba
    call z, $ccba                                 ; $5f83: $cc $ba $cc
    or d                                          ; $5f86: $b2
    call c, Call_0aa_7300                         ; $5f87: $dc $00 $73
    sbc h                                         ; $5f8a: $9c

jr_0aa_5f8b:
    nop                                           ; $5f8b: $00
    nop                                           ; $5f8c: $00
    db $dd                                        ; $5f8d: $dd
    ld a, $63                                     ; $5f8e: $3e $63
    and d                                         ; $5f90: $a2
    nop                                           ; $5f91: $00
    ld h, e                                       ; $5f92: $63
    and d                                         ; $5f93: $a2
    ld b, c                                       ; $5f94: $41
    ld b, $13                                     ; $5f95: $06 $13
    ld b, c                                       ; $5f97: $41
    dec c                                         ; $5f98: $0d
    ld [hl], e                                    ; $5f99: $73
    nop                                           ; $5f9a: $00
    add hl, bc                                    ; $5f9b: $09
    dec [hl]                                      ; $5f9c: $35
    nop                                           ; $5f9d: $00
    nop                                           ; $5f9e: $00
    ld sp, hl                                     ; $5f9f: $f9
    rlca                                          ; $5fa0: $07
    inc a                                         ; $5fa1: $3c
    dec sp                                        ; $5fa2: $3b
    nop                                           ; $5fa3: $00
    inc a                                         ; $5fa4: $3c
    dec sp                                        ; $5fa5: $3b
    ld [bc], a                                    ; $5fa6: $02
    ld bc, $f215                                  ; $5fa7: $01 $15 $f2
    ld b, $fe                                     ; $5faa: $06 $fe
    nop                                           ; $5fac: $00
    ld l, $dc                                     ; $5fad: $2e $dc
    ld b, $0c                                     ; $5faf: $06 $0c
    inc c                                         ; $5fb1: $0c
    db $fc                                        ; $5fb2: $fc
    inc a                                         ; $5fb3: $3c
    ldh a, [rNR41]                                ; $5fb4: $f0 $20
    inc a                                         ; $5fb6: $3c
    ldh a, [rP1]                                  ; $5fb7: $f0 $00
    ld l, e                                       ; $5fb9: $6b
    db $10                                        ; $5fba: $10
    inc bc                                        ; $5fbb: $03
    ld c, [hl]                                    ; $5fbc: $4e
    ld [bc], a                                    ; $5fbd: $02
    ld b, b                                       ; $5fbe: $40
    nop                                           ; $5fbf: $00
    ld bc, $e0b0                                  ; $5fc0: $01 $b0 $e0
    nop                                           ; $5fc3: $00
    add sp, $09                                   ; $5fc4: $e8 $09
    ld c, $01                                     ; $5fc6: $0e $01
    nop                                           ; $5fc8: $00
    ld bc, $01f8                                  ; $5fc9: $01 $f8 $01
    db $fc                                        ; $5fcc: $fc
    nop                                           ; $5fcd: $00
    cp $fe                                        ; $5fce: $fe $fe
    ld bc, $fc00                                  ; $5fd0: $01 $00 $fc
    ld bc, $7a79                                  ; $5fd3: $01 $79 $7a
    ld b, l                                       ; $5fd6: $45
    ld b, d                                       ; $5fd7: $42
    rlca                                          ; $5fd8: $07
    inc d                                         ; $5fd9: $14
    nop                                           ; $5fda: $00
    or e                                          ; $5fdb: $b3
    ld b, e                                       ; $5fdc: $43
    inc de                                        ; $5fdd: $13
    db $e3                                        ; $5fde: $e3
    ldh [$64], a                                  ; $5fdf: $e0 $64
    ldh [$a6], a                                  ; $5fe1: $e0 $a6
    nop                                           ; $5fe3: $00
    inc bc                                        ; $5fe4: $03
    sub e                                         ; $5fe5: $93
    ld b, b                                       ; $5fe6: $40
    jr c, jr_0aa_5f74                             ; $5fe7: $38 $8b

    ld hl, sp-$17                                 ; $5fe9: $f8 $e9
    db $fc                                        ; $5feb: $fc
    add b                                         ; $5fec: $80
    ld b, b                                       ; $5fed: $40
    ld [$00ff], sp                                ; $5fee: $08 $ff $00
    ld a, a                                       ; $5ff1: $7f
    nop                                           ; $5ff2: $00
    add b                                         ; $5ff3: $80
    ccf                                           ; $5ff4: $3f

jr_0aa_5ff5:
    ret nz                                        ; $5ff5: $c0

    ld b, $1f                                     ; $5ff6: $06 $1f
    nop                                           ; $5ff8: $00
    nop                                           ; $5ff9: $00
    jr c, @-$76                                   ; $5ffa: $38 $88

    ld d, b                                       ; $5ffc: $50
    cp b                                          ; $5ffd: $b8
    ld l, d                                       ; $5ffe: $6a
    sub b                                         ; $5fff: $90
    cp $00                                        ; $6000: $fe $00
    ld b, $06                                     ; $6002: $06 $06
    rlca                                          ; $6004: $07
    rst $20                                       ; $6005: $e7
    ld c, $cc                                     ; $6006: $0e $cc
    jp nz, Jump_000_00d0                          ; $6008: $c2 $d0 $00

    ret nz                                        ; $600b: $c0

    jp nz, $d8c1                                  ; $600c: $c2 $c1 $d8

    ld b, $30                                     ; $600f: $06 $30
    ld c, $ee                                     ; $6011: $0e $ee
    nop                                           ; $6013: $00
    rlca                                          ; $6014: $07
    ld sp, $6768                                  ; $6015: $31 $68 $67
    ld d, b                                       ; $6018: $50
    ld c, a                                       ; $6019: $4f
    ld a, [hl-]                                   ; $601a: $3a
    ccf                                           ; $601b: $3f

jr_0aa_601c:
    nop                                           ; $601c: $00
    cp b                                          ; $601d: $b8
    ccf                                           ; $601e: $3f
    ld b, b                                       ; $601f: $40
    ld b, b                                       ; $6020: $40
    db $10                                        ; $6021: $10
    rrca                                          ; $6022: $0f
    nop                                           ; $6023: $00
    ldh [rP1], a                                  ; $6024: $e0 $00
    ld b, b                                       ; $6026: $40
    db $fc                                        ; $6027: $fc
    ld h, h                                       ; $6028: $64
    sbc h                                         ; $6029: $9c
    cp h                                          ; $602a: $bc
    ld b, h                                       ; $602b: $44
    xor h                                         ; $602c: $ac
    ld d, [hl]                                    ; $602d: $56
    nop                                           ; $602e: $00
    ld a, [hl]                                    ; $602f: $7e
    cp d                                          ; $6030: $ba
    dec bc                                        ; $6031: $0b
    inc b                                         ; $6032: $04
    jr nz, jr_0aa_5ff5                            ; $6033: $20 $c0

    ld a, $22                                     ; $6035: $3e $22
    nop                                           ; $6037: $00
    inc e                                         ; $6038: $1c
    inc e                                         ; $6039: $1c
    sbc h                                         ; $603a: $9c
    inc a                                         ; $603b: $3c
    add c                                         ; $603c: $81
    rra                                           ; $603d: $1f
    ret z                                         ; $603e: $c8

    rrca                                          ; $603f: $0f
    ld bc, $0770                                  ; $6040: $01 $70 $07
    ld a, b                                       ; $6043: $78
    inc c                                         ; $6044: $0c
    nop                                           ; $6045: $00
    ld a, e                                       ; $6046: $7b
    ccf                                           ; $6047: $3f
    ld a, h                                       ; $6048: $7c
    jr jr_0aa_604b                                ; $6049: $18 $00

jr_0aa_604b:
    cp a                                          ; $604b: $bf
    ret nz                                        ; $604c: $c0

    adc a                                         ; $604d: $8f
    rlca                                          ; $604e: $07
    ld [hl], a                                    ; $604f: $77
    add e                                         ; $6050: $83
    dec de                                        ; $6051: $1b
    ldh [rNR23], a                                ; $6052: $e0 $18
    db $ec                                        ; $6054: $ec
    ldh a, [rTAC]                                 ; $6055: $f0 $07
    ret nc                                        ; $6057: $d0

    ld c, b                                       ; $6058: $48
    sbc b                                         ; $6059: $98
    ld [$fc01], sp                                ; $605a: $08 $01 $fc
    inc bc                                        ; $605d: $03
    nop                                           ; $605e: $00
    ldh a, [$0e]                                  ; $605f: $f0 $0e
    ldh [$c1], a                                  ; $6061: $e0 $c1
    ret c                                         ; $6063: $d8

    rlca                                          ; $6064: $07
    jr nc, jr_0aa_6076                            ; $6065: $30 $0f

    nop                                           ; $6067: $00
    ld h, b                                       ; $6068: $60
    rrca                                          ; $6069: $0f
    ld h, b                                       ; $606a: $60
    adc a                                         ; $606b: $8f
    and b                                         ; $606c: $a0
    inc e                                         ; $606d: $1c
    adc b                                         ; $606e: $88
    ld [hl], c                                    ; $606f: $71
    nop                                           ; $6070: $00
    ld bc, $07e3                                  ; $6071: $01 $e3 $07
    adc $1f                                       ; $6074: $ce $1f

jr_0aa_6076:
    sub b                                         ; $6076: $90
    jr c, jr_0aa_601c                             ; $6077: $38 $a3

    nop                                           ; $6079: $00
    inc sp                                        ; $607a: $33
    add b                                         ; $607b: $80

Call_0aa_607c:
    ld [$1fc1], sp                                ; $607c: $08 $c1 $1f
    rra                                           ; $607f: $1f
    ld [de], a                                    ; $6080: $12
    ld a, [hl-]                                   ; $6081: $3a
    nop                                           ; $6082: $00
    and h                                         ; $6083: $a4
    db $ed                                        ; $6084: $ed
    add hl, hl                                    ; $6085: $29
    halt                                          ; $6086: $76
    cp e                                          ; $6087: $bb
    nop                                           ; $6088: $00
    ld bc, $006c                                  ; $6089: $01 $6c $00
    adc b                                         ; $608c: $88
    ld [$340b], sp                                ; $608d: $08 $0b $34
    ld d, b                                       ; $6090: $50
    ret nz                                        ; $6091: $c0

    add b                                         ; $6092: $80
    db $fc                                        ; $6093: $fc
    nop                                           ; $6094: $00
    cp [hl]                                       ; $6095: $be
    and a                                         ; $6096: $a7
    ret                                           ; $6097: $c9


    inc b                                         ; $6098: $04
    ld e, c                                       ; $6099: $59
    ei                                            ; $609a: $fb
    dec h                                         ; $609b: $25
    ld [bc], a                                    ; $609c: $02
    nop                                           ; $609d: $00
    ld bc, $fc00                                  ; $609e: $01 $00 $fc
    ld c, $00                                     ; $60a1: $0e $00
    ld e, a                                       ; $60a3: $5f
    ret nz                                        ; $60a4: $c0

    rra                                           ; $60a5: $1f
    nop                                           ; $60a6: $00
    ld b, b                                       ; $60a7: $40
    rrca                                          ; $60a8: $0f
    add b                                         ; $60a9: $80
    cpl                                           ; $60aa: $2f
    ldh [rBGP], a                                 ; $60ab: $e0 $47
    ldh [$63], a                                  ; $60ad: $e0 $63
    nop                                           ; $60af: $00
    ldh a, [$f8]                                  ; $60b0: $f0 $f8
    ld de, $043c                                  ; $60b2: $11 $3c $04
    ld hl, sp-$07                                 ; $60b5: $f8 $f9
    cp $e5                                        ; $60b7: $fe $e5
    ldh a, [rP1]                                  ; $60b9: $f0 $00
    db $f4                                        ; $60bb: $f4
    ld [$08f8], sp                                ; $60bc: $08 $f8 $08
    or b                                          ; $60bf: $b0

jr_0aa_60c0:
    db $fd                                        ; $60c0: $fd
    ld hl, sp+$00                                 ; $60c1: $f8 $00
    rrca                                          ; $60c3: $0f
    ld a, h                                       ; $60c4: $7c
    stop                                          ; $60c5: $10 $00
    inc c                                         ; $60c7: $0c
    ldh a, [rTMA]                                 ; $60c8: $f0 $06
    ldh a, [rTMA]                                 ; $60ca: $f0 $06

jr_0aa_60cc:
    pop af                                        ; $60cc: $f1
    dec b                                         ; $60cd: $05
    adc a                                         ; $60ce: $8f
    nop                                           ; $60cf: $00
    and b                                         ; $60d0: $a0
    add a                                         ; $60d1: $87

jr_0aa_60d2:
    or b                                          ; $60d2: $b0
    rst $00                                       ; $60d3: $c7
    ret nc                                        ; $60d4: $d0

    rst $00                                       ; $60d5: $c7
    ret nc                                        ; $60d6: $d0

    jp $d800                                      ; $60d7: $c3 $00 $d8


    db $e3                                        ; $60da: $e3
    add sp, -$1d                                  ; $60db: $e8 $e3
    add sp, -$18                                  ; $60dd: $e8 $e8
    db $e3                                        ; $60df: $e3
    and $40                                       ; $60e0: $e6 $40
    rlca                                          ; $60e2: $07
    ld [hl-], a                                   ; $60e3: $32
    nop                                           ; $60e4: $00
    ld bc, $fe00                                  ; $60e5: $01 $00 $fe
    jr z, jr_0aa_60c0                             ; $60e8: $28 $d6

    ccf                                           ; $60ea: $3f
    nop                                           ; $60eb: $00
    ld b, c                                       ; $60ec: $41
    add b                                         ; $60ed: $80
    jr nz, jr_0aa_60cc                            ; $60ee: $20 $dc

    rra                                           ; $60f0: $1f
    jr nc, jr_0aa_6148                            ; $60f1: $30 $55

    jr nz, jr_0aa_60f5                            ; $60f3: $20 $00

jr_0aa_60f5:
    ld h, l                                       ; $60f5: $65
    ld sp, hl                                     ; $60f6: $f9
    ld b, $cf                                     ; $60f7: $06 $cf
    ld [hl], b                                    ; $60f9: $70
    cp a                                          ; $60fa: $bf
    ld b, $30                                     ; $60fb: $06 $30
    nop                                           ; $60fd: $00
    jr nc, jr_0aa_60cc                            ; $60fe: $30 $cc

    inc bc                                        ; $6100: $03
    jr nc, jr_0aa_60d2                            ; $6101: $30 $cf

    ldh [$96], a                                  ; $6103: $e0 $96
    ret nz                                        ; $6105: $c0

    nop                                           ; $6106: $00
    and b                                         ; $6107: $a0
    ld bc, $8003                                  ; $6108: $01 $03 $80
    ld a, a                                       ; $610b: $7f
    cp $00                                        ; $610c: $fe $00
    ld a, b                                       ; $610e: $78
    nop                                           ; $610f: $00
    add b                                         ; $6110: $80
    rrca                                          ; $6111: $0f
    ccf                                           ; $6112: $3f
    add b                                         ; $6113: $80
    ld b, b                                       ; $6114: $40
    call z, $c286                                 ; $6115: $cc $86 $c2
    nop                                           ; $6118: $00
    sub e                                         ; $6119: $93
    sbc b                                         ; $611a: $98
    ld d, c                                       ; $611b: $51
    or b                                          ; $611c: $b0
    ld d, $b0                                     ; $611d: $16 $b0
    rla                                           ; $611f: $17
    ldh [rP1], a                                  ; $6120: $e0 $00
    ld c, a                                       ; $6122: $4f
    add b                                         ; $6123: $80
    add b                                         ; $6124: $80
    rrca                                          ; $6125: $0f
    ret nz                                        ; $6126: $c0

    nop                                           ; $6127: $00
    rst $38                                       ; $6128: $ff
    ld a, a                                       ; $6129: $7f
    nop                                           ; $612a: $00

jr_0aa_612b:
    nop                                           ; $612b: $00
    cp a                                          ; $612c: $bf
    add b                                         ; $612d: $80
    ld a, $81                                     ; $612e: $3e $81
    ld a, $03                                     ; $6130: $3e $03
    cp h                                          ; $6132: $bc
    nop                                           ; $6133: $00
    add [hl]                                      ; $6134: $86
    ld a, c                                       ; $6135: $79
    inc c                                         ; $6136: $0c
    di                                            ; $6137: $f3
    jr jr_0aa_612b                                ; $6138: $18 $f1

    dec b                                         ; $613a: $05
    pop hl                                        ; $613b: $e1
    nop                                           ; $613c: $00
    dec c                                         ; $613d: $0d
    db $e3                                        ; $613e: $e3
    dec bc                                        ; $613f: $0b
    ld h, e                                       ; $6140: $63
    dec bc                                        ; $6141: $0b
    ld b, e                                       ; $6142: $43
    dec de                                        ; $6143: $1b
    rst $00                                       ; $6144: $c7
    ld b, b                                       ; $6145: $40
    rla                                           ; $6146: $17
    ld [bc], a                                    ; $6147: $02

jr_0aa_6148:
    ld [$e1ec], sp                                ; $6148: $08 $ec $e1
    db $f4                                        ; $614b: $f4
    pop af                                        ; $614c: $f1
    db $f4                                        ; $614d: $f4
    pop af                                        ; $614e: $f1
    ld bc, $f006                                  ; $614f: $01 $06 $f0
    ld [bc], a                                    ; $6152: $02
    ld hl, sp+$02                                 ; $6153: $f8 $02
    ld hl, sp+$03                                 ; $6155: $f8 $03
    xor h                                         ; $6157: $ac
    ld bc, $e000                                  ; $6158: $01 $00 $e0
    nop                                           ; $615b: $00
    db $fc                                        ; $615c: $fc
    db $fc                                        ; $615d: $fc
    ld hl, sp+$01                                 ; $615e: $f8 $01
    or $f1                                        ; $6160: $f6 $f1
    nop                                           ; $6162: $00
    xor $e1                                       ; $6163: $ee $e1
    jp nz, Jump_000_02cc                          ; $6165: $c2 $cc $02

    inc l                                         ; $6168: $2c
    ld [bc], a                                    ; $6169: $02
    ld h, h                                       ; $616a: $64
    nop                                           ; $616b: $00

jr_0aa_616c:
    nop                                           ; $616c: $00
    nop                                           ; $616d: $00
    ld c, a                                       ; $616e: $4f
    inc c                                         ; $616f: $0c
    inc de                                        ; $6170: $13
    add e                                         ; $6171: $83
    dec l                                         ; $6172: $2d
    add c                                         ; $6173: $81

jr_0aa_6174:
    nop                                           ; $6174: $00
    ld c, [hl]                                    ; $6175: $4e
    ld b, b                                       ; $6176: $40
    adc $91                                       ; $6177: $ce $91
    ld a, [c]                                     ; $6179: $f2
    ld b, c                                       ; $617a: $41
    ld h, c                                       ; $617b: $61
    add hl, de                                    ; $617c: $19
    nop                                           ; $617d: $00
    nop                                           ; $617e: $00
    ld a, a                                       ; $617f: $7f
    add b                                         ; $6180: $80
    nop                                           ; $6181: $00
    ldh a, [$83]                                  ; $6182: $f0 $83
    ldh a, [$c3]                                  ; $6184: $f0 $c3
    nop                                           ; $6186: $00
    inc bc                                        ; $6187: $03
    ldh [$03], a                                  ; $6188: $e0 $03
    ld b, d                                       ; $618a: $42
    rlca                                          ; $618b: $07
    ld h, $0f                                     ; $618c: $26 $0f
    ld c, h                                       ; $618e: $4c
    nop                                           ; $618f: $00
    jr nc, @+$11                                  ; $6190: $30 $0f

    ld a, a                                       ; $6192: $7f
    nop                                           ; $6193: $00
    ccf                                           ; $6194: $3f
    add b                                         ; $6195: $80
    rra                                           ; $6196: $1f
    pop bc                                        ; $6197: $c1
    nop                                           ; $6198: $00
    call c, $e8c1                                 ; $6199: $dc $c1 $e8
    ld [c], a                                     ; $619c: $e2
    pop hl                                        ; $619d: $e1
    db $e4                                        ; $619e: $e4
    db $e3                                        ; $619f: $e3
    add sp, $00                                   ; $61a0: $e8 $00

Jump_0aa_61a2:
    rst $20                                       ; $61a2: $e7
    jr nc, jr_0aa_6174                            ; $61a3: $30 $cf

    ld h, b                                       ; $61a5: $60
    sbc a                                         ; $61a6: $9f
    ret nz                                        ; $61a7: $c0

    ccf                                           ; $61a8: $3f
    add b                                         ; $61a9: $80
    ld d, b                                       ; $61aa: $50
    ld a, a                                       ; $61ab: $7f
    sub $01                                       ; $61ac: $d6 $01
    cp $02                                        ; $61ae: $fe $02
    nop                                           ; $61b0: $00
    scf                                           ; $61b1: $37
    add a                                         ; $61b2: $87
    cpl                                           ; $61b3: $2f
    adc a                                         ; $61b4: $8f
    nop                                           ; $61b5: $00
    cpl                                           ; $61b6: $2f
    adc a                                         ; $61b7: $8f
    ld l, a                                       ; $61b8: $6f
    rrca                                          ; $61b9: $0f
    ld b, b                                       ; $61ba: $40
    rra                                           ; $61bb: $1f
    ld b, b                                       ; $61bc: $40
    rra                                           ; $61bd: $1f
    rrca                                          ; $61be: $0f
    ret nz                                        ; $61bf: $c0

    rra                                           ; $61c0: $1f
    add b                                         ; $61c1: $80
    ccf                                           ; $61c2: $3f
    add hl, bc                                    ; $61c3: $09
    ld [bc], a                                    ; $61c4: $02
    db $10                                        ; $61c5: $10
    ld a, [bc]                                    ; $61c6: $0a
    inc e                                         ; $61c7: $1c
    db $10                                        ; $61c8: $10
    ld [$0009], sp                                ; $61c9: $08 $09 $00
    ld b, $64                                     ; $61cc: $06 $64
    inc hl                                        ; $61ce: $23
    or b                                          ; $61cf: $b0
    ld sp, $8c98                                  ; $61d0: $31 $98 $8c
    or b                                          ; $61d3: $b0
    nop                                           ; $61d4: $00
    add [hl]                                      ; $61d5: $86
    cp b                                          ; $61d6: $b8
    jp Jump_0aa_41dc                              ; $61d7: $c3 $dc $41


    ld c, [hl]                                    ; $61da: $4e
    ld c, a                                       ; $61db: $4f
    rra                                           ; $61dc: $1f
    nop                                           ; $61dd: $00
    ld h, l                                       ; $61de: $65
    ld a, c                                       ; $61df: $79
    ld l, h                                       ; $61e0: $6c
    inc [hl]                                      ; $61e1: $34
    inc a                                         ; $61e2: $3c
    and b                                         ; $61e3: $a0
    dec a                                         ; $61e4: $3d
    add l                                         ; $61e5: $85
    nop                                           ; $61e6: $00
    dec de                                        ; $61e7: $1b
    ld b, e                                       ; $61e8: $43
    dec bc                                        ; $61e9: $0b
    jr jr_0aa_616c                                ; $61ea: $18 $80

    nop                                           ; $61ec: $00
    jp $008c                                      ; $61ed: $c3 $8c $00


    rlca                                          ; $61f0: $07
    jr @+$51                                      ; $61f1: $18 $4f

    ld [hl], c                                    ; $61f3: $71
    ld a, h                                       ; $61f4: $7c
    ld h, e                                       ; $61f5: $63
    ld hl, sp-$7a                                 ; $61f6: $f8 $86
    nop                                           ; $61f8: $00
    dec c                                         ; $61f9: $0d
    pop af                                        ; $61fa: $f1
    ld [bc], a                                    ; $61fb: $02
    ld [c], a                                     ; $61fc: $e2
    ld b, c                                       ; $61fd: $41
    ld b, h                                       ; $61fe: $44
    inc bc                                        ; $61ff: $03
    ld bc, $c700                                  ; $6200: $01 $00 $c7
    ret nc                                        ; $6203: $d0

    add a                                         ; $6204: $87
    and b                                         ; $6205: $a0
    ld e, b                                       ; $6206: $58
    ld b, e                                       ; $6207: $43
    cp b                                          ; $6208: $b8
    add e                                         ; $6209: $83
    nop                                           ; $620a: $00
    ld [hl], b                                    ; $620b: $70
    ld c, c                                       ; $620c: $49
    jp nz, Jump_000_07b2                          ; $620d: $c2 $b2 $07

    di                                            ; $6210: $f3
    rlca                                          ; $6211: $07
    ldh [$50], a                                  ; $6212: $e0 $50
    ld a, [hl-]                                   ; $6214: $3a
    ld e, e                                       ; $6215: $5b
    ld [bc], a                                    ; $6216: $02
    db $fd                                        ; $6217: $fd
    ld d, h                                       ; $6218: $54
    nop                                           ; $6219: $00
    db $fd                                        ; $621a: $fd
    db $fc                                        ; $621b: $fc
    inc bc                                        ; $621c: $03

jr_0aa_621d:
    jr c, jr_0aa_621f                             ; $621d: $38 $00

jr_0aa_621f:
    add b                                         ; $621f: $80
    ld [bc], a                                    ; $6220: $02
    ldh [rSC], a                                  ; $6221: $e0 $02
    add b                                         ; $6223: $80
    ccf                                           ; $6224: $3f
    add b                                         ; $6225: $80
    ccf                                           ; $6226: $3f
    ld [hl], b                                    ; $6227: $70
    ld a, a                                       ; $6228: $7f
    ld d, b                                       ; $6229: $50
    ld [bc], a                                    ; $622a: $02
    inc b                                         ; $622b: $04
    ld [$8a9c], sp                                ; $622c: $08 $9c $8a
    ld h, [hl]                                    ; $622f: $66
    rrca                                          ; $6230: $0f
    daa                                           ; $6231: $27
    adc a                                         ; $6232: $8f
    nop                                           ; $6233: $00
    ld hl, $3483                                  ; $6234: $21 $83 $34
    add h                                         ; $6237: $84
    db $10                                        ; $6238: $10
    ret nz                                        ; $6239: $c0

    rra                                           ; $623a: $1f
    ret nz                                        ; $623b: $c0

    nop                                           ; $623c: $00
    nop                                           ; $623d: $00
    ret nz                                        ; $623e: $c0

    nop                                           ; $623f: $00
    nop                                           ; $6240: $00
    ldh a, [rP1]                                  ; $6241: $f0 $00
    add b                                         ; $6243: $80
    adc a                                         ; $6244: $8f
    ld [$908f], sp                                ; $6245: $08 $8f $90
    ld c, a                                       ; $6248: $4f
    ld [hl], b                                    ; $6249: $70
    sub d                                         ; $624a: $92
    add hl, de                                    ; $624b: $19
    nop                                           ; $624c: $00
    nop                                           ; $624d: $00
    ld [hl], b                                    ; $624e: $70
    ld bc, $f067                                  ; $624f: $01 $67 $f0
    add e                                         ; $6252: $83
    jr nc, jr_0aa_621d                            ; $6253: $30 $c8

    ld [hl], e                                    ; $6255: $73
    adc e                                         ; $6256: $8b
    and d                                         ; $6257: $a2
    add hl, hl                                    ; $6258: $29
    nop                                           ; $6259: $00
    adc $07                                       ; $625a: $ce $07
    rra                                           ; $625c: $1f
    inc bc                                        ; $625d: $03
    ccf                                           ; $625e: $3f
    ld a, b                                       ; $625f: $78
    rlca                                          ; $6260: $07
    ld hl, sp-$40                                 ; $6261: $f8 $c0
    or d                                          ; $6263: $b2
    add hl, hl                                    ; $6264: $29
    and [hl]                                      ; $6265: $a6
    ld bc, $05c4                                  ; $6266: $01 $c4 $05
    pop af                                        ; $6269: $f1
    dec c                                         ; $626a: $0d
    pop hl                                        ; $626b: $e1
    ld [$030c], sp                                ; $626c: $08 $0c $03
    ld hl, sp+$03                                 ; $626f: $f8 $03

jr_0aa_6271:
    inc bc                                        ; $6271: $03
    inc [hl]                                      ; $6272: $34
    jr nz, jr_0aa_6279                            ; $6273: $20 $04

    ld c, e                                       ; $6275: $4b
    db $10                                        ; $6276: $10
    inc bc                                        ; $6277: $03
    ld c, d                                       ; $6278: $4a

jr_0aa_6279:
    ld [bc], a                                    ; $6279: $02
    ld b, b                                       ; $627a: $40
    nop                                           ; $627b: $00
    ld bc, $f8f8                                  ; $627c: $01 $f8 $f8
    inc c                                         ; $627f: $0c
    db $f4                                        ; $6280: $f4
    ld de, $1f16                                  ; $6281: $11 $16 $1f
    nop                                           ; $6284: $00
    jr jr_0aa_62c0                                ; $6285: $18 $39

    ld [hl], $7d                                  ; $6287: $36 $7d
    ld e, d                                       ; $6289: $5a
    ld a, [bc]                                    ; $628a: $0a
    add hl, sp                                    ; $628b: $39
    nop                                           ; $628c: $00
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    db $f4                                        ; $628f: $f4
    rra                                           ; $6290: $1f
    ldh [$9f], a                                  ; $6291: $e0 $9f
    add b                                         ; $6293: $80
    nop                                           ; $6294: $00
    ldh [rP1], a                                  ; $6295: $e0 $00
    nop                                           ; $6297: $00
    add b                                         ; $6298: $80
    rst $38                                       ; $6299: $ff
    sbc e                                         ; $629a: $9b
    ld a, e                                       ; $629b: $7b
    sub e                                         ; $629c: $93
    ld a, e                                       ; $629d: $7b
    rst $38                                       ; $629e: $ff
    nop                                           ; $629f: $00
    rst $38                                       ; $62a0: $ff
    sbc a                                         ; $62a1: $9f
    ld e, a                                       ; $62a2: $5f
    ldh [$30], a                                  ; $62a3: $e0 $30
    nop                                           ; $62a5: $00
    ldh a, [$27]                                  ; $62a6: $f0 $27
    ld bc, $e7c7                                  ; $62a8: $01 $c7 $e7
    rlca                                          ; $62ab: $07
    ldh [$a7], a                                  ; $62ac: $e0 $a7
    ldh [$a3], a                                  ; $62ae: $e0 $a3
    ld d, b                                       ; $62b0: $50
    ld hl, sp-$60                                 ; $62b1: $f8 $a0
    ld [hl], d                                    ; $62b3: $72
    ld d, b                                       ; $62b4: $50
    cp $04                                        ; $62b5: $fe $04
    ld [$fc01], sp                                ; $62b7: $08 $01 $fc
    inc bc                                        ; $62ba: $03
    ldh a, [$0e]                                  ; $62bb: $f0 $0e
    nop                                           ; $62bd: $00
    ldh [$c1], a                                  ; $62be: $e0 $c1

jr_0aa_62c0:
    ret c                                         ; $62c0: $d8

    rlca                                          ; $62c1: $07
    jr nc, jr_0aa_62d3                            ; $62c2: $30 $0f

    rst $28                                       ; $62c4: $ef
    ld a, [de]                                    ; $62c5: $1a
    nop                                           ; $62c6: $00
    add hl, sp                                    ; $62c7: $39
    ld bc, $cd22                                  ; $62c8: $01 $22 $cd
    jp nz, $351e                                  ; $62cb: $c2 $1e $35

    dec de                                        ; $62ce: $1b
    nop                                           ; $62cf: $00
    db $f4                                        ; $62d0: $f4
    ld a, [bc]                                    ; $62d1: $0a
    db $e3                                        ; $62d2: $e3

jr_0aa_62d3:
    rrca                                          ; $62d3: $0f
    add sp, -$1c                                  ; $62d4: $e8 $e4
    rrca                                          ; $62d6: $0f
    or h                                          ; $62d7: $b4
    nop                                           ; $62d8: $00
    halt                                          ; $62d9: $76
    sbc l                                         ; $62da: $9d
    ld c, a                                       ; $62db: $4f
    ld c, a                                       ; $62dc: $4f
    adc l                                         ; $62dd: $8d
    ld a, a                                       ; $62de: $7f
    add h                                         ; $62df: $84
    ld a, [$7a00]                                 ; $62e0: $fa $00 $7a
    rrca                                          ; $62e3: $0f
    ldh a, [rP1]                                  ; $62e4: $f0 $00
    rst $38                                       ; $62e6: $ff
    cp c                                          ; $62e7: $b9
    add b                                         ; $62e8: $80
    dec b                                         ; $62e9: $05
    nop                                           ; $62ea: $00
    pop hl                                        ; $62eb: $e1
    add d                                         ; $62ec: $82
    jr nc, jr_0aa_62f2                            ; $62ed: $30 $03

    jr nc, jr_0aa_6271                            ; $62ef: $30 $80

    xor h                                         ; $62f1: $ac

jr_0aa_62f2:
    inc de                                        ; $62f2: $13
    nop                                           ; $62f3: $00
    ld hl, sp-$3d                                 ; $62f4: $f8 $c3
    ldh [$81], a                                  ; $62f6: $e0 $81
    ld hl, sp-$3f                                 ; $62f8: $f8 $c1
    ld hl, sp-$01                                 ; $62fa: $f8 $ff
    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    ld a, a                                       ; $62fe: $7f
    nop                                           ; $62ff: $00
    add b                                         ; $6300: $80
    ccf                                           ; $6301: $3f
    ret nz                                        ; $6302: $c0

    rrca                                          ; $6303: $0f
    rlca                                          ; $6304: $07
    ld bc, $8377                                  ; $6305: $01 $77 $83
    dec de                                        ; $6308: $1b
    ldh [$ec], a                                  ; $6309: $e0 $ec
    ldh a, [rTAC]                                 ; $630b: $f0 $07
    ret nc                                        ; $630d: $d0

    ld c, b                                       ; $630e: $48
    ret nz                                        ; $630f: $c0

    inc e                                         ; $6310: $1c
    ld [$405c], sp                                ; $6311: $08 $5c $40
    ld l, a                                       ; $6314: $6f
    rrca                                          ; $6315: $0f
    ld h, b                                       ; $6316: $60
    adc a                                         ; $6317: $8f
    and b                                         ; $6318: $a0
    rra                                           ; $6319: $1f
    inc c                                         ; $631a: $0c
    add b                                         ; $631b: $80
    inc h                                         ; $631c: $24
    ld a, a                                       ; $631d: $7f
    rst $38                                       ; $631e: $ff
    ld a, [de]                                    ; $631f: $1a
    nop                                           ; $6320: $00
    ld a, e                                       ; $6321: $7b
    nop                                           ; $6322: $00
    cp $fc                                        ; $6323: $fe $fc
    nop                                           ; $6325: $00
    ld bc, $fffc                                  ; $6326: $01 $fc $ff
    db $e4                                        ; $6329: $e4
    rrca                                          ; $632a: $0f
    db $db                                        ; $632b: $db
    call nz, Call_000_0087                        ; $632c: $c4 $87 $00
    ld hl, sp-$72                                 ; $632f: $f8 $8e
    dec a                                         ; $6331: $3d
    sub c                                         ; $6332: $91
    adc a                                         ; $6333: $8f
    ld d, b                                       ; $6334: $50
    rra                                           ; $6335: $1f
    ld d, b                                       ; $6336: $50
    nop                                           ; $6337: $00
    cp b                                          ; $6338: $b8
    inc b                                         ; $6339: $04
    jr nz, jr_0aa_6377                            ; $633a: $20 $3b

    add d                                         ; $633c: $82
    dec sp                                        ; $633d: $3b
    add d                                         ; $633e: $82
    or b                                          ; $633f: $b0
    nop                                           ; $6340: $00
    adc e                                         ; $6341: $8b
    or c                                          ; $6342: $b1
    sbc e                                         ; $6343: $9b
    ccf                                           ; $6344: $3f
    ccf                                           ; $6345: $3f
    ld b, a                                       ; $6346: $47
    ld a, b                                       ; $6347: $78
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
    ld h, b                                       ; $634a: $60
    adc a                                         ; $634b: $8f
    ret nc                                        ; $634c: $d0

    pop bc                                        ; $634d: $c1
    dec a                                         ; $634e: $3d
    ret nz                                        ; $634f: $c0

    inc a                                         ; $6350: $3c
    ret c                                         ; $6351: $d8

    nop                                           ; $6352: $00
    dec de                                        ; $6353: $1b
    ret nz                                        ; $6354: $c0

    rrca                                          ; $6355: $0f
    nop                                           ; $6356: $00
    adc a                                         ; $6357: $8f
    daa                                           ; $6358: $27
    adc d                                         ; $6359: $8a
    di                                            ; $635a: $f3
    ld [bc], a                                    ; $635b: $02
    jp nc, $d04c                                  ; $635c: $d2 $4c $d0

    ld hl, sp-$07                                 ; $635f: $f8 $f9
    cp $3e                                        ; $6361: $fe $3e
    db $10                                        ; $6363: $10
    ld a, a                                       ; $6364: $7f
    ld bc, $1f7f                                  ; $6365: $01 $7f $1f
    add b                                         ; $6368: $80
    rst $18                                       ; $6369: $df
    ldh a, [$2f]                                  ; $636a: $f0 $2f
    jr c, jr_0aa_63ea                             ; $636c: $38 $7c

    jr nc, jr_0aa_6370                            ; $636e: $30 $00

jr_0aa_6370:
    inc c                                         ; $6370: $0c
    ldh a, [rTMA]                                 ; $6371: $f0 $06
    ldh a, [rTMA]                                 ; $6373: $f0 $06
    pop af                                        ; $6375: $f1
    dec b                                         ; $6376: $05

jr_0aa_6377:
    adc a                                         ; $6377: $8f
    nop                                           ; $6378: $00
    and b                                         ; $6379: $a0
    or b                                          ; $637a: $b0
    add a                                         ; $637b: $87
    ret nc                                        ; $637c: $d0

    rst $00                                       ; $637d: $c7
    ret nc                                        ; $637e: $d0

    rst $00                                       ; $637f: $c7
    ret c                                         ; $6380: $d8

    db $10                                        ; $6381: $10
    jp $e3e8                                      ; $6382: $c3 $e8 $e3


    ld [bc], a                                    ; $6385: $02
    ld [$00fc], sp                                ; $6386: $08 $fc $00
    ei                                            ; $6389: $fb
    ld hl, sp+$00                                 ; $638a: $f8 $00
    rlca                                          ; $638c: $07
    ldh a, [rTAC]                                 ; $638d: $f0 $07
    or $07                                        ; $638f: $f6 $07

jr_0aa_6391:
    db $f4                                        ; $6391: $f4
    rlca                                          ; $6392: $07
    ldh a, [rP1]                                  ; $6393: $f0 $00
    rrca                                          ; $6395: $0f
    add sp, $0f                                   ; $6396: $e8 $0f
    jr @+$1f                                      ; $6398: $18 $1d

    call nz, $88ad                                ; $639a: $c4 $ad $88
    nop                                           ; $639d: $00
    ret                                           ; $639e: $c9


    ret c                                         ; $639f: $d8

    ret                                           ; $63a0: $c9


    add hl, bc                                    ; $63a1: $09
    push hl                                       ; $63a2: $e5
    add hl, bc                                    ; $63a3: $09
    ld h, h                                       ; $63a4: $64
    add c                                         ; $63a5: $81
    nop                                           ; $63a6: $00
    dec hl                                        ; $63a7: $2b
    jp $e0d0                                      ; $63a8: $c3 $d0 $e0


    ld c, b                                       ; $63ab: $48
    ret nz                                        ; $63ac: $c0

    ld b, d                                       ; $63ad: $42
    pop bc                                        ; $63ae: $c1
    nop                                           ; $63af: $00
    ld d, [hl]                                    ; $63b0: $56
    sub a                                         ; $63b1: $97
    pop bc                                        ; $63b2: $c1
    add hl, de                                    ; $63b3: $19
    cpl                                           ; $63b4: $2f
    adc a                                         ; $63b5: $8f
    jr nz, jr_0aa_63c5                            ; $63b6: $20 $0d

    nop                                           ; $63b8: $00
    or b                                          ; $63b9: $b0
    ret nc                                        ; $63ba: $d0

    adc a                                         ; $63bb: $8f
    ld b, b                                       ; $63bc: $40
    ld de, $1196                                  ; $63bd: $11 $96 $11
    rla                                           ; $63c0: $17
    nop                                           ; $63c1: $00
    dec b                                         ; $63c2: $05
    ld e, h                                       ; $63c3: $5c
    push bc                                       ; $63c4: $c5

jr_0aa_63c5:
    ld [$85c4], sp                                ; $63c5: $08 $c4 $85
    add b                                         ; $63c8: $80
    dec b                                         ; $63c9: $05
    nop                                           ; $63ca: $00
    dec c                                         ; $63cb: $0d
    ld [$d9d0], sp                                ; $63cc: $08 $d0 $d9
    rrca                                          ; $63cf: $0f
    jr nc, jr_0aa_6391                            ; $63d0: $30 $bf

    add b                                         ; $63d2: $80
    nop                                           ; $63d3: $00
    adc a                                         ; $63d4: $8f
    add b                                         ; $63d5: $80
    add a                                         ; $63d6: $87
    and b                                         ; $63d7: $a0
    rst $00                                       ; $63d8: $c7
    ldh a, [rSCX]                                 ; $63d9: $f0 $43
    ld d, b                                       ; $63db: $50
    nop                                           ; $63dc: $00
    ld b, e                                       ; $63dd: $43
    ld e, b                                       ; $63de: $58
    inc hl                                        ; $63df: $23
    xor b                                         ; $63e0: $a8
    pop af                                        ; $63e1: $f1
    dec b                                         ; $63e2: $05
    pop hl                                        ; $63e3: $e1
    dec c                                         ; $63e4: $0d
    nop                                           ; $63e5: $00
    db $e3                                        ; $63e6: $e3
    dec bc                                        ; $63e7: $0b
    db $e3                                        ; $63e8: $e3
    dec bc                                        ; $63e9: $0b

jr_0aa_63ea:
    dec de                                        ; $63ea: $1b
    jp $c717                                      ; $63eb: $c3 $17 $c7


    add b                                         ; $63ee: $80
    ld [bc], a                                    ; $63ef: $02
    ld [$e1ec], sp                                ; $63f0: $08 $ec $e1
    db $f4                                        ; $63f3: $f4
    pop af                                        ; $63f4: $f1
    db $f4                                        ; $63f5: $f4
    pop af                                        ; $63f6: $f1
    ld b, $00                                     ; $63f7: $06 $00
    ldh a, [rSC]                                  ; $63f9: $f0 $02
    ld hl, sp+$02                                 ; $63fb: $f8 $02
    ld hl, sp+$03                                 ; $63fd: $f8 $03
    ld hl, sp+$01                                 ; $63ff: $f8 $01
    db $10                                        ; $6401: $10
    db $fc                                        ; $6402: $fc
    rrca                                          ; $6403: $0f
    add hl, de                                    ; $6404: $19
    ld [bc], a                                    ; $6405: $02
    db $10                                        ; $6406: $10
    jr @+$11                                      ; $6407: $18 $0f

    jr @-$17                                      ; $6409: $18 $e7

    nop                                           ; $640b: $00
    add sp, $47                                   ; $640c: $e8 $47
    ld c, b                                       ; $640e: $48
    ld [hl], a                                    ; $640f: $77
    ld a, b                                       ; $6410: $78
    pop af                                        ; $6411: $f1
    ret                                           ; $6412: $c9


    or c                                          ; $6413: $b1
    nop                                           ; $6414: $00
    ld d, h                                       ; $6415: $54
    xor d                                         ; $6416: $aa
    call $e647                                    ; $6417: $cd $47 $e6
    ld b, a                                       ; $641a: $47
    ld h, b                                       ; $641b: $60
    ld h, a                                       ; $641c: $67
    nop                                           ; $641d: $00
    ret nz                                        ; $641e: $c0

    ld b, b                                       ; $641f: $40
    rst $20                                       ; $6420: $e7
    ldh [rHDMA3], a                               ; $6421: $e0 $53
    ret nz                                        ; $6423: $c0

    xor a                                         ; $6424: $af
    ret nz                                        ; $6425: $c0

    nop                                           ; $6426: $00
    xor l                                         ; $6427: $ad
    ret nz                                        ; $6428: $c0

    or a                                          ; $6429: $b7
    ldh [rNR21], a                                ; $642a: $e0 $16
    ld [de], a                                    ; $642c: $12
    ld [c], a                                     ; $642d: $e2
    ld a, [de]                                    ; $642e: $1a
    nop                                           ; $642f: $00
    ld [$a0f8], a                                 ; $6430: $ea $f8 $a0
    add b                                         ; $6433: $80
    ld a, a                                       ; $6434: $7f
    call c, $ded1                                 ; $6435: $dc $d1 $de
    nop                                           ; $6438: $00
    ret nc                                        ; $6439: $d0

    sub [hl]                                      ; $643a: $96
    sbc b                                         ; $643b: $98
    sub a                                         ; $643c: $97
    sbc b                                         ; $643d: $98
    rra                                           ; $643e: $1f
    rra                                           ; $643f: $1f
    rrca                                          ; $6440: $0f
    nop                                           ; $6441: $00
    rla                                           ; $6442: $17
    scf                                           ; $6443: $37
    rra                                           ; $6444: $1f
    nop                                           ; $6445: $00
    call $a3b8                                    ; $6446: $cd $b8 $a3
    cp b                                          ; $6449: $b8
    nop                                           ; $644a: $00
    inc bc                                        ; $644b: $03
    cp b                                          ; $644c: $b8
    add e                                         ; $644d: $83
    sbc b                                         ; $644e: $98
    add e                                         ; $644f: $83
    cp b                                          ; $6450: $b8
    sub e                                         ; $6451: $93
    or b                                          ; $6452: $b0
    nop                                           ; $6453: $00
    add e                                         ; $6454: $83
    ld [bc], a                                    ; $6455: $02
    or d                                          ; $6456: $b2
    cp $40                                        ; $6457: $fe $40
    scf                                           ; $6459: $37
    add a                                         ; $645a: $87

jr_0aa_645b:
    cpl                                           ; $645b: $2f
    nop                                           ; $645c: $00
    adc a                                         ; $645d: $8f
    and b                                         ; $645e: $a0
    adc a                                         ; $645f: $8f
    ld h, b                                       ; $6460: $60
    rrca                                          ; $6461: $0f
    ld b, b                                       ; $6462: $40
    rra                                           ; $6463: $1f
    ld b, b                                       ; $6464: $40
    inc bc                                        ; $6465: $03
    rra                                           ; $6466: $1f
    ret nz                                        ; $6467: $c0

    rra                                           ; $6468: $1f
    add b                                         ; $6469: $80
    ccf                                           ; $646a: $3f
    ld bc, $0135                                  ; $646b: $01 $35 $01
    dec sp                                        ; $646e: $3b
    ld bc, $b9c0                                  ; $646f: $01 $c0 $b9
    ld bc, $1908                                  ; $6472: $01 $08 $19
    ld [hl], a                                    ; $6475: $77
    ld a, b                                       ; $6476: $78
    adc a                                         ; $6477: $8f
    sub b                                         ; $6478: $90
    adc a                                         ; $6479: $8f
    sub b                                         ; $647a: $90
    nop                                           ; $647b: $00
    adc e                                         ; $647c: $8b
    sub h                                         ; $647d: $94
    add e                                         ; $647e: $83
    sbc h                                         ; $647f: $9c
    jp Jump_0aa_47dc                              ; $6480: $c3 $dc $47


    ld d, b                                       ; $6483: $50
    nop                                           ; $6484: $00
    ld b, a                                       ; $6485: $47
    ld d, b                                       ; $6486: $50
    ldh [$d1], a                                  ; $6487: $e0 $d1
    jr nc, jr_0aa_645b                            ; $6489: $30 $d0

    inc [hl]                                      ; $648b: $34
    call nz, $c700                                ; $648c: $c4 $00 $c7
    scf                                           ; $648f: $37
    rst $00                                       ; $6490: $c7
    scf                                           ; $6491: $37
    inc sp                                        ; $6492: $33
    pop bc                                        ; $6493: $c1
    inc sp                                        ; $6494: $33
    pop de                                        ; $6495: $d1
    nop                                           ; $6496: $00
    ld h, $c4                                     ; $6497: $26 $c4
    nop                                           ; $6499: $00
    rrca                                          ; $649a: $0f
    ld h, b                                       ; $649b: $60
    ld b, b                                       ; $649c: $40
    ld a, a                                       ; $649d: $7f
    inc bc                                        ; $649e: $03
    nop                                           ; $649f: $00
    inc bc                                        ; $64a0: $03
    ld a, a                                       ; $64a1: $7f
    ld a, h                                       ; $64a2: $7c
    rra                                           ; $64a3: $1f
    inc l                                         ; $64a4: $2c
    ld a, a                                       ; $64a5: $7f
    inc a                                         ; $64a6: $3c
    ld d, e                                       ; $64a7: $53
    db $10                                        ; $64a8: $10
    inc a                                         ; $64a9: $3c
    inc sp                                        ; $64aa: $33
    ld a, l                                       ; $64ab: $7d
    ld a, [c]                                     ; $64ac: $f2
    ld bc, $b736                                  ; $64ad: $01 $36 $b7
    jp SerialTransferCompleteInterrupt            ; $64b0: $c3 $58 $00


    inc c                                         ; $64b3: $0c
    push hl                                       ; $64b4: $e5
    inc bc                                        ; $64b5: $03
    jp hl                                         ; $64b6: $e9


    and $cc                                       ; $64b7: $e6 $cc
    inc h                                         ; $64b9: $24
    rst $28                                       ; $64ba: $ef
    nop                                           ; $64bb: $00
    ldh [$e0], a                                  ; $64bc: $e0 $e0
    ld bc, $6602                                  ; $64be: $01 $02 $66
    cp d                                          ; $64c1: $ba
    nop                                           ; $64c2: $00
    nop                                           ; $64c3: $00
    nop                                           ; $64c4: $00
    ld a, b                                       ; $64c5: $78
    add e                                         ; $64c6: $83
    ret c                                         ; $64c7: $d8

    ld [c], a                                     ; $64c8: $e2
    ld a, a                                       ; $64c9: $7f
    ld c, l                                       ; $64ca: $4d
    inc bc                                        ; $64cb: $03
    di                                            ; $64cc: $f3
    nop                                           ; $64cd: $00
    add b                                         ; $64ce: $80
    ccf                                           ; $64cf: $3f
    add b                                         ; $64d0: $80
    cp a                                          ; $64d1: $bf
    ld a, a                                       ; $64d2: $7f
    nop                                           ; $64d3: $00
    ld a, a                                       ; $64d4: $7f
    ret nz                                        ; $64d5: $c0

    nop                                           ; $64d6: $00
    nop                                           ; $64d7: $00
    rra                                           ; $64d8: $1f
    jr nc, @+$61                                  ; $64d9: $30 $5f

    ld l, a                                       ; $64db: $6f
    rra                                           ; $64dc: $1f
    rra                                           ; $64dd: $1f
    rra                                           ; $64de: $1f
    sub b                                         ; $64df: $90
    and b                                         ; $64e0: $a0
    ld l, d                                       ; $64e1: $6a
    ld h, a                                       ; $64e2: $67
    ld l, b                                       ; $64e3: $68
    adc a                                         ; $64e4: $8f
    nop                                           ; $64e5: $00
    and b                                         ; $64e6: $a0
    add a                                         ; $64e7: $87
    or b                                          ; $64e8: $b0
    ret nz                                        ; $64e9: $c0

    nop                                           ; $64ea: $00
    ret nc                                        ; $64eb: $d0

    rra                                           ; $64ec: $1f
    ret nz                                        ; $64ed: $c0

    nop                                           ; $64ee: $00
    ret nz                                        ; $64ef: $c0

    nop                                           ; $64f0: $00

jr_0aa_64f1:
    nop                                           ; $64f1: $00
    ld h, [hl]                                    ; $64f2: $66
    ld bc, $66a4                                  ; $64f3: $01 $a4 $66

jr_0aa_64f6:
    and b                                         ; $64f6: $a0
    ld [hl], $f0                                  ; $64f7: $36 $f0
    ld a, a                                       ; $64f9: $7f
    adc c                                         ; $64fa: $89
    xor $09                                       ; $64fb: $ee $09
    add b                                         ; $64fd: $80
    call z, Call_0aa_4f0a                         ; $64fe: $cc $0a $4f

Call_0aa_6501:
    jr nc, jr_0aa_6542                            ; $6501: $30 $3f

jr_0aa_6503:
    dec a                                         ; $6503: $3d
    ld e, [hl]                                    ; $6504: $5e
    ld h, b                                       ; $6505: $60
    ld l, c                                       ; $6506: $69
    ld h, b                                       ; $6507: $60
    ld d, a                                       ; $6508: $57
    db $10                                        ; $6509: $10
    jr jr_0aa_64f6                                ; $650a: $18 $ea

    ld bc, $0008                                  ; $650c: $01 $08 $00
    ldh a, [$6e]                                  ; $650f: $f0 $6e
    ld l, a                                       ; $6511: $6f
    jr nz, jr_0aa_6503                            ; $6512: $20 $ef

    db $10                                        ; $6514: $10
    db $10                                        ; $6515: $10
    jr z, jr_0aa_6526                             ; $6516: $28 $0e

    ld a, [hl]                                    ; $6518: $7e
    ld hl, sp+$00                                 ; $6519: $f8 $00
    xor $00                                       ; $651b: $ee $00
    ld [hl], d                                    ; $651d: $72
    adc [hl]                                      ; $651e: $8e
    db $fc                                        ; $651f: $fc
    nop                                           ; $6520: $00
    inc bc                                        ; $6521: $03
    ld hl, sp+$03                                 ; $6522: $f8 $03
    inc bc                                        ; $6524: $03
    ret nz                                        ; $6525: $c0

jr_0aa_6526:
    inc [hl]                                      ; $6526: $34
    jr nz, jr_0aa_652d                            ; $6527: $20 $04

    ld c, e                                       ; $6529: $4b
    db $10                                        ; $652a: $10
    inc bc                                        ; $652b: $03
    ret nc                                        ; $652c: $d0

jr_0aa_652d:
    ld [bc], a                                    ; $652d: $02
    ld b, b                                       ; $652e: $40
    nop                                           ; $652f: $00
    ld bc, $0210                                  ; $6530: $01 $10 $02
    nop                                           ; $6533: $00
    inc c                                         ; $6534: $0c
    ld [bc], a                                    ; $6535: $02
    ld c, $14                                     ; $6536: $0e $14
    ld [$1c04], sp                                ; $6538: $08 $04 $1c
    ld [$1016], sp                                ; $653b: $08 $16 $10
    nop                                           ; $653e: $00
    inc b                                         ; $653f: $04
    ld c, $0c                                     ; $6540: $0e $0c

jr_0aa_6542:
    nop                                           ; $6542: $00
    inc b                                         ; $6543: $04
    dec de                                        ; $6544: $1b
    ld c, $32                                     ; $6545: $0e $32
    jr c, @+$26                                   ; $6547: $38 $24

    ld h, $1a                                     ; $6549: $26 $1a
    nop                                           ; $654b: $00
    ld [hl+], a                                   ; $654c: $22
    ld h, $07                                     ; $654d: $26 $07
    ldh a, [$0c]                                  ; $654f: $f0 $0c
    dec bc                                        ; $6551: $0b
    ccf                                           ; $6552: $3f
    nop                                           ; $6553: $00

jr_0aa_6554:
    nop                                           ; $6554: $00
    cpl                                           ; $6555: $2f
    inc a                                         ; $6556: $3c
    jr nz, jr_0aa_6588                            ; $6557: $20 $2f

    db $d3                                        ; $6559: $d3
    ldh [$db], a                                  ; $655a: $e0 $db
    ldh [rP1], a                                  ; $655c: $e0 $00
    ld d, d                                       ; $655e: $52
    inc sp                                        ; $655f: $33
    ldh [$80], a                                  ; $6560: $e0 $80
    jr jr_0aa_6554                                ; $6562: $18 $f0

    inc a                                         ; $6564: $3c
    ld a, [$0000]                                 ; $6565: $fa $00 $00
    ld a, a                                       ; $6568: $7f
    inc e                                         ; $6569: $1c
    db $e3                                        ; $656a: $e3
    and h                                         ; $656b: $a4
    call c, Call_000_13e3                         ; $656c: $dc $e3 $13
    jr nz, jr_0aa_64f1                            ; $656f: $20 $80

    ld b, e                                       ; $6571: $43
    ld b, b                                       ; $6572: $40
    ld [$38b8], sp                                ; $6573: $08 $b8 $38
    ld b, h                                       ; $6576: $44
    add e                                         ; $6577: $83
    ld b, c                                       ; $6578: $41
    ld bc, $007e                                  ; $6579: $01 $7e $00
    nop                                           ; $657c: $00
    adc b                                         ; $657d: $88
    or b                                          ; $657e: $b0
    ld c, $14                                     ; $657f: $0e $14
    ld d, b                                       ; $6581: $50
    jr jr_0aa_6584                                ; $6582: $18 $00

jr_0aa_6584:
    srl h                                         ; $6584: $cb $3c
    ld hl, sp+$37                                 ; $6586: $f8 $37

jr_0aa_6588:
    ld bc, $0e07                                  ; $6588: $01 $07 $0e
    ld [de], a                                    ; $658b: $12
    jr nz, jr_0aa_65c6                            ; $658c: $20 $38

    dec hl                                        ; $658e: $2b
    ld h, b                                       ; $658f: $60
    db $10                                        ; $6590: $10
    ld a, a                                       ; $6591: $7f
    add b                                         ; $6592: $80
    ccf                                           ; $6593: $3f
    ld a, a                                       ; $6594: $7f
    add b                                         ; $6595: $80
    nop                                           ; $6596: $00
    ld e, a                                       ; $6597: $5f
    db $10                                        ; $6598: $10
    jr jr_0aa_65d3                                ; $6599: $18 $38

    ld l, h                                       ; $659b: $6c
    inc d                                         ; $659c: $14
    ld a, [de]                                    ; $659d: $1a
    ld [bc], a                                    ; $659e: $02
    nop                                           ; $659f: $00
    db $10                                        ; $65a0: $10
    ld [$0111], sp                                ; $65a1: $08 $11 $01
    ld [de], a                                    ; $65a4: $12
    jr jr_0aa_65af                                ; $65a5: $18 $08

    add hl, bc                                    ; $65a7: $09
    nop                                           ; $65a8: $00
    nop                                           ; $65a9: $00
    add hl, bc                                    ; $65aa: $09
    ld de, $0303                                  ; $65ab: $11 $03 $03
    rla                                           ; $65ae: $17

jr_0aa_65af:
    inc d                                         ; $65af: $14
    inc h                                         ; $65b0: $24
    nop                                           ; $65b1: $00
    ld [de], a                                    ; $65b2: $12
    jr nc, jr_0aa_65d9                            ; $65b3: $30 $24

    jr nz, jr_0aa_65c9                            ; $65b5: $20 $12

    ld bc, $8aa4                                  ; $65b7: $01 $a4 $8a
    nop                                           ; $65ba: $00
    ldh [$6c], a                                  ; $65bb: $e0 $6c
    pop hl                                        ; $65bd: $e1
    ld bc, $43cd                                  ; $65be: $01 $cd $43
    inc b                                         ; $65c1: $04
    ld b, a                                       ; $65c2: $47
    nop                                           ; $65c3: $00
    jr jr_0aa_65c6                                ; $65c4: $18 $00

jr_0aa_65c6:
    ld bc, $86c3                                  ; $65c6: $01 $c3 $86

jr_0aa_65c9:
    rlca                                          ; $65c9: $07
    inc b                                         ; $65ca: $04
    rlca                                          ; $65cb: $07
    nop                                           ; $65cc: $00
    rst $38                                       ; $65cd: $ff
    ld a, [c]                                     ; $65ce: $f2
    sub d                                         ; $65cf: $92
    ld [hl], l                                    ; $65d0: $75
    and $70                                       ; $65d1: $e6 $70

jr_0aa_65d3:
    ld c, $0c                                     ; $65d3: $0e $0c
    nop                                           ; $65d5: $00
    ld [de], a                                    ; $65d6: $12
    inc d                                         ; $65d7: $14
    and d                                         ; $65d8: $a2

jr_0aa_65d9:
    ld b, a                                       ; $65d9: $47
    cp a                                          ; $65da: $bf
    ld e, h                                       ; $65db: $5c
    db $fc                                        ; $65dc: $fc
    ld c, a                                       ; $65dd: $4f
    nop                                           ; $65de: $00
    ld [hl], e                                    ; $65df: $73
    ld c, h                                       ; $65e0: $4c
    ld a, a                                       ; $65e1: $7f
    ld h, h                                       ; $65e2: $64
    ld l, b                                       ; $65e3: $68
    ld h, a                                       ; $65e4: $67
    ld e, h                                       ; $65e5: $5c
    sub h                                         ; $65e6: $94
    nop                                           ; $65e7: $00
    ccf                                           ; $65e8: $3f
    ld d, e                                       ; $65e9: $53
    dec de                                        ; $65ea: $1b
    rlca                                          ; $65eb: $07
    sbc c                                         ; $65ec: $99
    db $e3                                        ; $65ed: $e3
    inc de                                        ; $65ee: $13
    dec hl                                        ; $65ef: $2b
    nop                                           ; $65f0: $00
    jp nc, Jump_0aa_61a2                          ; $65f1: $d2 $a2 $61

    sub $c1                                       ; $65f4: $d6 $c1
    sub [hl]                                      ; $65f6: $96
    rst $28                                       ; $65f7: $ef
    adc a                                         ; $65f8: $8f
    nop                                           ; $65f9: $00
    ccf                                           ; $65fa: $3f
    cp a                                          ; $65fb: $bf
    ei                                            ; $65fc: $fb
    ld a, e                                       ; $65fd: $7b
    ld a, h                                       ; $65fe: $7c
    add a                                         ; $65ff: $87
    ld bc, $0035                                  ; $6600: $01 $35 $00
    add d                                         ; $6603: $82
    ld h, [hl]                                    ; $6604: $66
    nop                                           ; $6605: $00
    jp c, $8141                                   ; $6606: $da $41 $81

    ld a, b                                       ; $6609: $78
    ld a, [de]                                    ; $660a: $1a
    nop                                           ; $660b: $00
    ld hl, sp+$08                                 ; $660c: $f8 $08
    ld hl, sp-$78                                 ; $660e: $f8 $88
    ld [hl], b                                    ; $6610: $70
    ret nc                                        ; $6611: $d0

    add b                                         ; $6612: $80
    sbc a                                         ; $6613: $9f
    nop                                           ; $6614: $00
    ld hl, $702e                                  ; $6615: $21 $2e $70
    ld sp, hl                                     ; $6618: $f9

Jump_0aa_6619:
    ret nz                                        ; $6619: $c0

    xor h                                         ; $661a: $ac
    inc bc                                        ; $661b: $03
    ld b, $00                                     ; $661c: $06 $00
    rst $38                                       ; $661e: $ff
    rst $20                                       ; $661f: $e7
    ldh a, [$ce]                                  ; $6620: $f0 $ce
    ld [de], a                                    ; $6622: $12
    ld l, a                                       ; $6623: $6f
    ld d, e                                       ; $6624: $53
    db $ec                                        ; $6625: $ec
    nop                                           ; $6626: $00
    dec h                                         ; $6627: $25
    sla h                                         ; $6628: $cb $24
    ret z                                         ; $662a: $c8

    cpl                                           ; $662b: $2f
    add $c1                                       ; $662c: $c6 $c1
    inc bc                                        ; $662e: $03
    nop                                           ; $662f: $00
    ld [hl], a                                    ; $6630: $77
    add hl, bc                                    ; $6631: $09
    dec de                                        ; $6632: $1b
    inc b                                         ; $6633: $04
    sub b                                         ; $6634: $90
    di                                            ; $6635: $f3
    adc $bf                                       ; $6636: $ce $bf
    nop                                           ; $6638: $00
    ret c                                         ; $6639: $d8

    ld [hl], $f8                                  ; $663a: $36 $f8
    nop                                           ; $663c: $00
    add e                                         ; $663d: $83
    ld sp, hl                                     ; $663e: $f9
    di                                            ; $663f: $f3
    db $f4                                        ; $6640: $f4
    nop                                           ; $6641: $00
    ret nc                                        ; $6642: $d0

    and b                                         ; $6643: $a0
    ld h, b                                       ; $6644: $60
    ld c, a                                       ; $6645: $4f
    adc l                                         ; $6646: $8d
    cpl                                           ; $6647: $2f

jr_0aa_6648:
    ret nc                                        ; $6648: $d0

    ld [de], a                                    ; $6649: $12
    nop                                           ; $664a: $00
    ld l, $80                                     ; $664b: $2e $80
    ld h, [hl]                                    ; $664d: $66
    ld b, $20                                     ; $664e: $06 $20
    ld b, b                                       ; $6650: $40
    add a                                         ; $6651: $87
    dec hl                                        ; $6652: $2b
    nop                                           ; $6653: $00
    ret nz                                        ; $6654: $c0

    db $e3                                        ; $6655: $e3
    sbc b                                         ; $6656: $98
    add sp, -$34                                  ; $6657: $e8 $cc
    ld [hl], h                                    ; $6659: $74
    ld h, h                                       ; $665a: $64
    ld a, b                                       ; $665b: $78
    nop                                           ; $665c: $00
    or d                                          ; $665d: $b2
    ld a, h                                       ; $665e: $7c
    jp nz, $d2ac                                  ; $665f: $c2 $ac $d2

    ld e, h                                       ; $6662: $5c

jr_0aa_6663:
    call c, $0047                                 ; $6663: $dc $47 $00
    sbc l                                         ; $6666: $9d
    add a                                         ; $6667: $87
    inc a                                         ; $6668: $3c
    daa                                           ; $6669: $27
    db $ec                                        ; $666a: $ec
    db $db                                        ; $666b: $db
    ld h, $77                                     ; $666c: $26 $77
    nop                                           ; $666e: $00
    ld h, [hl]                                    ; $666f: $66
    db $ec                                        ; $6670: $ec
    sbc d                                         ; $6671: $9a
    halt                                          ; $6672: $76
    cp d                                          ; $6673: $ba
    ld d, [hl]                                    ; $6674: $56

jr_0aa_6675:
    jr nz, jr_0aa_6648                            ; $6675: $20 $d1

    nop                                           ; $6677: $00
    ret z                                         ; $6678: $c8

    dec hl                                        ; $6679: $2b
    ld de, $2107                                  ; $667a: $11 $07 $21
    add a                                         ; $667d: $87
    dec c                                         ; $667e: $0d
    jr c, jr_0aa_6681                             ; $667f: $38 $00

jr_0aa_6681:
    dec l                                         ; $6681: $2d
    ld b, b                                       ; $6682: $40
    dec a                                         ; $6683: $3d
    xor b                                         ; $6684: $a8
    ld a, [de]                                    ; $6685: $1a
    or b                                          ; $6686: $b0
    jr z, jr_0aa_6663                             ; $6687: $28 $da

    nop                                           ; $6689: $00
    ld c, h                                       ; $668a: $4c
    cp [hl]                                       ; $668b: $be
    ld sp, hl                                     ; $668c: $f9
    add a                                         ; $668d: $87
    call $36f3                                    ; $668e: $cd $f3 $36
    rst $10                                       ; $6691: $d7
    nop                                           ; $6692: $00
    ld a, [hl-]                                   ; $6693: $3a
    ei                                            ; $6694: $fb
    ld e, h                                       ; $6695: $5c
    rst $28                                       ; $6696: $ef
    call nz, $af82                                ; $6697: $c4 $82 $af
    call z, Call_000_3300                         ; $669a: $cc $00 $33
    ld d, h                                       ; $669d: $54
    ld [hl], $51                                  ; $669e: $36 $51
    dec [hl]                                      ; $66a0: $35
    ld b, $31                                     ; $66a1: $06 $31
    ld a, [bc]                                    ; $66a3: $0a
    nop                                           ; $66a4: $00
    ld [hl-], a                                   ; $66a5: $32
    ld [$0b12], sp                                ; $66a6: $08 $12 $0b
    dec bc                                        ; $66a9: $0b
    db $10                                        ; $66aa: $10
    ld bc, $00c8                                  ; $66ab: $01 $c8 $00
    ldh a, [$c1]                                  ; $66ae: $f0 $c1
    ld hl, sp-$6d                                 ; $66b0: $f8 $93
    db $fc                                        ; $66b2: $fc
    ret nz                                        ; $66b3: $c0

    inc d                                         ; $66b4: $14
    add sp, $00                                   ; $66b5: $e8 $00
    ld a, [$9cf2]                                 ; $66b7: $fa $f2 $9c
    cp $33                                        ; $66ba: $fe $33
    add sp, $29                                   ; $66bc: $e8 $29
    adc a                                         ; $66be: $8f
    nop                                           ; $66bf: $00
    ret z                                         ; $66c0: $c8

    ld b, a                                       ; $66c1: $47
    call z, $6743                                 ; $66c2: $cc $43 $67
    and e                                         ; $66c5: $a3
    ld [hl+], a                                   ; $66c6: $22
    pop bc                                        ; $66c7: $c1
    nop                                           ; $66c8: $00
    jr nc, @+$52                                  ; $66c9: $30 $50

    jr jr_0aa_6675                                ; $66cb: $18 $a8

    inc b                                         ; $66cd: $04
    ld a, h                                       ; $66ce: $7c
    ld b, $1a                                     ; $66cf: $06 $1a
    nop                                           ; $66d1: $00
    ld l, d                                       ; $66d2: $6a
    inc d                                         ; $66d3: $14
    or b                                          ; $66d4: $b0
    ld [hl], $b2                                  ; $66d5: $36 $b2
    ld [hl], $79                                  ; $66d7: $36 $79
    inc bc                                        ; $66d9: $03
    nop                                           ; $66da: $00
    ld a, b                                       ; $66db: $78
    inc bc                                        ; $66dc: $03

jr_0aa_66dd:
    ld [hl], d                                    ; $66dd: $72
    inc bc                                        ; $66de: $03
    ld [c], a                                     ; $66df: $e2
    inc bc                                        ; $66e0: $03
    ld a, $d2                                     ; $66e1: $3e $d2
    nop                                           ; $66e3: $00
    ld a, $d2                                     ; $66e4: $3e $d2
    ld [hl], $d8                                  ; $66e6: $36 $d8
    ld [hl], $d8                                  ; $66e8: $36 $d8
    ld l, h                                       ; $66ea: $6c
    ret c                                         ; $66eb: $d8

    nop                                           ; $66ec: $00
    ld l, h                                       ; $66ed: $6c
    call c, $a883                                 ; $66ee: $dc $83 $a8
    add d                                         ; $66f1: $82
    adc b                                         ; $66f2: $88
    ld d, [hl]                                    ; $66f3: $56
    or b                                          ; $66f4: $b0
    nop                                           ; $66f5: $00
    add [hl]                                      ; $66f6: $86
    ld b, d                                       ; $66f7: $42
    ret nz                                        ; $66f8: $c0

    adc h                                         ; $66f9: $8c
    ret nz                                        ; $66fa: $c0

    jr c, jr_0aa_66dd                             ; $66fb: $38 $e0

    jr nz, jr_0aa_66ff                            ; $66fd: $20 $00

jr_0aa_66ff:
    ret nz                                        ; $66ff: $c0

    rlca                                          ; $6700: $07
    rra                                           ; $6701: $1f
    ld e, c                                       ; $6702: $59
    jr nc, @-$1e                                  ; $6703: $30 $e0

    ld a, [hl]                                    ; $6705: $7e

jr_0aa_6706:
    sbc e                                         ; $6706: $9b
    nop                                           ; $6707: $00
    ld c, h                                       ; $6708: $4c
    adc e                                         ; $6709: $8b
    sub $0a                                       ; $670a: $d6 $0a
    call z, Call_000_1014                         ; $670c: $cc $14 $10
    db $ec                                        ; $670f: $ec
    nop                                           ; $6710: $00
    ldh a, [$78]                                  ; $6711: $f0 $78
    ret nz                                        ; $6713: $c0

    cp b                                          ; $6714: $b8
    ldh a, [$7c]                                  ; $6715: $f0 $7c
    dec c                                         ; $6717: $0d
    dec d                                         ; $6718: $15
    nop                                           ; $6719: $00
    ld hl, sp-$1b                                 ; $671a: $f8 $e5
    ld hl, sp-$0b                                 ; $671c: $f8 $f5
    inc c                                         ; $671e: $0c
    ld b, $0c                                     ; $671f: $06 $0c
    inc b                                         ; $6721: $04
    nop                                           ; $6722: $00
    di                                            ; $6723: $f3
    ldh a, [$f4]                                  ; $6724: $f0 $f4
    di                                            ; $6726: $f3
    di                                            ; $6727: $f3
    db $f4                                        ; $6728: $f4
    ld e, a                                       ; $6729: $5f
    sbc b                                         ; $672a: $98
    nop                                           ; $672b: $00
    db $f4                                        ; $672c: $f4
    jr @-$3e                                      ; $672d: $18 $c0

    inc bc                                        ; $672f: $03
    inc bc                                        ; $6730: $03
    inc a                                         ; $6731: $3c
    ld e, $e6                                     ; $6732: $1e $e6
    nop                                           ; $6734: $00
    add sp, -$58                                  ; $6735: $e8 $a8
    cp c                                          ; $6737: $b9
    ld a, $a0                                     ; $6738: $3e $a0
    ret nz                                        ; $673a: $c0

    add h                                         ; $673b: $84
    inc a                                         ; $673c: $3c
    nop                                           ; $673d: $00
    ld b, $1a                                     ; $673e: $06 $1a
    ld b, $ca                                     ; $6740: $06 $ca
    ld c, $ed                                     ; $6742: $0e $ed
    rlca                                          ; $6744: $07
    ld b, $00                                     ; $6745: $06 $00
    ldh a, [$f5]                                  ; $6747: $f0 $f5
    ld hl, sp+$01                                 ; $6749: $f8 $01
    ret c                                         ; $674b: $d8

    jr nz, jr_0aa_6750                            ; $674c: $20 $02

    inc bc                                        ; $674e: $03
    nop                                           ; $674f: $00

jr_0aa_6750:
    rst $38                                       ; $6750: $ff
    inc bc                                        ; $6751: $03
    db $fc                                        ; $6752: $fc
    nop                                           ; $6753: $00
    ld bc, $807d                                  ; $6754: $01 $7d $80
    add e                                         ; $6757: $83
    nop                                           ; $6758: $00
    ret nz                                        ; $6759: $c0

    ld b, e                                       ; $675a: $43
    sub h                                         ; $675b: $94
    ret z                                         ; $675c: $c8

    adc c                                         ; $675d: $89
    push hl                                       ; $675e: $e5
    ret nz                                        ; $675f: $c0

    ld b, d                                       ; $6760: $42
    nop                                           ; $6761: $00
    ldh a, [rPCM34]                               ; $6762: $f0 $77
    scf                                           ; $6764: $37
    add $07                                       ; $6765: $c6 $07

Jump_0aa_6767:
    add $85                                       ; $6767: $c6 $85
    ld c, $00                                     ; $6769: $0e $00
    add l                                         ; $676b: $85
    rrca                                          ; $676c: $0f
    and b                                         ; $676d: $a0
    adc l                                         ; $676e: $8d
    and h                                         ; $676f: $a4
    xor l                                         ; $6770: $ad
    sbc b                                         ; $6771: $98
    ld c, b                                       ; $6772: $48
    nop                                           ; $6773: $00
    scf                                           ; $6774: $37
    or h                                          ; $6775: $b4
    daa                                           ; $6776: $27
    and b                                         ; $6777: $a0
    rlca                                          ; $6778: $07
    add c                                         ; $6779: $81
    rra                                           ; $677a: $1f
    sub b                                         ; $677b: $90
    nop                                           ; $677c: $00
    rra                                           ; $677d: $1f
    sbc e                                         ; $677e: $9b
    and b                                         ; $677f: $a0
    add b                                         ; $6780: $80
    jr nc, jr_0aa_6706                            ; $6781: $30 $83

    ld [hl], d                                    ; $6783: $72
    ld l, [hl]                                    ; $6784: $6e
    nop                                           ; $6785: $00
    ld e, $f6                                     ; $6786: $1e $f6
    adc b                                         ; $6788: $88
    ld [hl], b                                    ; $6789: $70
    ret z                                         ; $678a: $c8

    jr c, @+$1a                                   ; $678b: $38 $18

    add sp, $00                                   ; $678d: $e8 $00
    cp b                                          ; $678f: $b8
    ld c, b                                       ; $6790: $48
    ldh [rNR10], a                                ; $6791: $e0 $10
    ldh a, [$f0]                                  ; $6793: $f0 $f0
    ld sp, hl                                     ; $6795: $f9
    ld a, [$0112]                                 ; $6796: $fa $12 $01
    db $fd                                        ; $6799: $fd
    ld [bc], a                                    ; $679a: $02
    ld b, c                                       ; $679b: $41
    nop                                           ; $679c: $00
    ld bc, $0200                                  ; $679d: $01 $00 $02
    ld [$0000], sp                                ; $67a0: $08 $00 $00
    nop                                           ; $67a3: $00
    ldh [$f8], a                                  ; $67a4: $e0 $f8
    db $fc                                        ; $67a6: $fc
    jp Jump_000_383f                              ; $67a7: $c3 $3f $38


    sbc a                                         ; $67aa: $9f
    nop                                           ; $67ab: $00
    rra                                           ; $67ac: $1f
    add b                                         ; $67ad: $80
    jr nz, jr_0aa_67c8                            ; $67ae: $20 $18

    db $d3                                        ; $67b0: $d3
    adc b                                         ; $67b1: $88
    ld d, e                                       ; $67b2: $53
    ret z                                         ; $67b3: $c8

    ld [$bc9b], sp                                ; $67b4: $08 $9b $bc
    db $fc                                        ; $67b7: $fc
    rst $38                                       ; $67b8: $ff
    ld d, e                                       ; $67b9: $53
    ld a, [bc]                                    ; $67ba: $0a
    rra                                           ; $67bb: $1f
    jr nc, jr_0aa_67de                            ; $67bc: $30 $20

    nop                                           ; $67be: $00
    ret nz                                        ; $67bf: $c0

    ld [hl], b                                    ; $67c0: $70
    rst $38                                       ; $67c1: $ff
    ld [hl], b                                    ; $67c2: $70
    nop                                           ; $67c3: $00
    pop de                                        ; $67c4: $d1
    ld h, h                                       ; $67c5: $64
    ld [hl], b                                    ; $67c6: $70
    nop                                           ; $67c7: $00

jr_0aa_67c8:
    nop                                           ; $67c8: $00
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    nop                                           ; $67cb: $00
    ld bc, $bf1d                                  ; $67cc: $01 $1d $bf
    ld d, b                                       ; $67cf: $50
    nop                                           ; $67d0: $00
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    and b                                         ; $67d3: $a0
    add b                                         ; $67d4: $80
    ret nc                                        ; $67d5: $d0

    rst $00                                       ; $67d6: $c7
    xor c                                         ; $67d7: $a9
    dec c                                         ; $67d8: $0d
    add b                                         ; $67d9: $80
    db $10                                        ; $67da: $10
    ld [$0000], sp                                ; $67db: $08 $00 $00

jr_0aa_67de:
    rst $28                                       ; $67de: $ef
    stop                                          ; $67df: $10 $00
    nop                                           ; $67e1: $00
    dec bc                                        ; $67e2: $0b
    nop                                           ; $67e3: $00
    inc bc                                        ; $67e4: $03
    sub $07                                       ; $67e5: $d6 $07
    sbc b                                         ; $67e7: $98
    daa                                           ; $67e8: $27
    db $e3                                        ; $67e9: $e3
    rra                                           ; $67ea: $1f
    db $eb                                        ; $67eb: $eb
    nop                                           ; $67ec: $00
    rrca                                          ; $67ed: $0f
    inc b                                         ; $67ee: $04
    inc c                                         ; $67ef: $0c
    pop af                                        ; $67f0: $f1
    db $fc                                        ; $67f1: $fc
    ld [hl], e                                    ; $67f2: $73
    ld a, b                                       ; $67f3: $78
    jr z, jr_0aa_67f6                             ; $67f4: $28 $00

jr_0aa_67f6:
    inc de                                        ; $67f6: $13
    ld [hl], c                                    ; $67f7: $71
    ld [$0fef], a                                 ; $67f8: $ea $ef $0f
    ld c, a                                       ; $67fb: $4f
    adc a                                         ; $67fc: $8f
    ret nz                                        ; $67fd: $c0

    nop                                           ; $67fe: $00
    ld e, a                                       ; $67ff: $5f
    add b                                         ; $6800: $80
    cp a                                          ; $6801: $bf
    nop                                           ; $6802: $00
    add b                                         ; $6803: $80
    add b                                         ; $6804: $80
    nop                                           ; $6805: $00
    add b                                         ; $6806: $80
    ret nz                                        ; $6807: $c0

    sbc l                                         ; $6808: $9d
    ld a, [de]                                    ; $6809: $1a
    ld b, $50                                     ; $680a: $06 $50
    ldh [$c3], a                                  ; $680c: $e0 $c3
    ldh [rTAC], a                                 ; $680e: $e0 $07
    ld h, b                                       ; $6810: $60
    ld b, [hl]                                    ; $6811: $46
    nop                                           ; $6812: $00
    ld [hl], a                                    ; $6813: $77
    add a                                         ; $6814: $87
    ld [hl], b                                    ; $6815: $70
    add b                                         ; $6816: $80
    ld hl, $381e                                  ; $6817: $21 $1e $38
    daa                                           ; $681a: $27
    nop                                           ; $681b: $00
    rrca                                          ; $681c: $0f
    inc sp                                        ; $681d: $33
    ld e, $a2                                     ; $681e: $1e $a2
    or d                                          ; $6820: $b2
    xor [hl]                                      ; $6821: $ae
    ld c, h                                       ; $6822: $4c
    ld [de], a                                    ; $6823: $12
    nop                                           ; $6824: $00
    rst $28                                       ; $6825: $ef
    ld a, l                                       ; $6826: $7d
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    db $e3                                        ; $6829: $e3
    inc hl                                        ; $682a: $23
    ld sp, $02c1                                  ; $682b: $31 $c1 $02
    rrca                                          ; $682e: $0f
    pop af                                        ; $682f: $f1
    rrca                                          ; $6830: $0f
    db $e4                                        ; $6831: $e4
    nop                                           ; $6832: $00
    ldh a, [rSVBK]                                ; $6833: $f0 $70
    ld a, [bc]                                    ; $6835: $0a
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    pop hl                                        ; $6839: $e1
    ld a, a                                       ; $683a: $7f
    ldh a, [$cf]                                  ; $683b: $f0 $cf
    inc e                                         ; $683d: $1c
    inc de                                        ; $683e: $13
    ldh [rP1], a                                  ; $683f: $e0 $00
    inc c                                         ; $6841: $0c
    ld bc, $c819                                  ; $6842: $01 $19 $c8
    jp z, $8eb1                                   ; $6845: $ca $b1 $8e

    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684a: $00
    ld a, [hl]                                    ; $684b: $7e
    db $d3                                        ; $684c: $d3
    add e                                         ; $684d: $83
    ld b, h                                       ; $684e: $44
    rst $00                                       ; $684f: $c7
    jp hl                                         ; $6850: $e9


    scf                                           ; $6851: $37
    nop                                           ; $6852: $00
    call nc, $9077                                ; $6853: $d4 $77 $90
    db $e4                                        ; $6856: $e4
    ld [hl+], a                                   ; $6857: $22
    ret z                                         ; $6858: $c8

    ld b, [hl]                                    ; $6859: $46
    inc bc                                        ; $685a: $03
    ld bc, $e70d                                  ; $685b: $01 $0d $e7

jr_0aa_685e:
    dec de                                        ; $685e: $1b
    inc c                                         ; $685f: $0c
    ldh a, [rNR32]                                ; $6860: $f0 $1c
    db $e4                                        ; $6862: $e4
    ld h, e                                       ; $6863: $63
    ld l, b                                       ; $6864: $68
    db $10                                        ; $6865: $10
    inc bc                                        ; $6866: $03
    add l                                         ; $6867: $85
    ld [bc], a                                    ; $6868: $02
    ld b, h                                       ; $6869: $44
    nop                                           ; $686a: $00
    ld bc, $ff30                                  ; $686b: $01 $30 $ff
    nop                                           ; $686e: $00
    cp $0d                                        ; $686f: $fe $0d
    nop                                           ; $6871: $00
    sbc a                                         ; $6872: $9f
    ld b, b                                       ; $6873: $40
    nop                                           ; $6874: $00
    rst $18                                       ; $6875: $df
    rst $08                                       ; $6876: $cf
    or $ee                                        ; $6877: $f6 $ee
    inc d                                         ; $6879: $14
    dec e                                         ; $687a: $1d
    ld a, [de]                                    ; $687b: $1a
    rla                                           ; $687c: $17
    nop                                           ; $687d: $00
    dec b                                         ; $687e: $05
    rrca                                          ; $687f: $0f
    dec h                                         ; $6880: $25
    ld c, [hl]                                    ; $6881: $4e
    ld b, $33                                     ; $6882: $06 $33
    rst $28                                       ; $6884: $ef
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    ld [$ccc8], sp                                ; $6887: $08 $c8 $cc
    ldh [$b6], a                                  ; $688a: $e0 $b6
    ld [hl-], a                                   ; $688c: $32
    ld [hl], h                                    ; $688d: $74
    ld [hl], c                                    ; $688e: $71
    nop                                           ; $688f: $00
    inc bc                                        ; $6890: $03
    rlca                                          ; $6891: $07
    ld b, $84                                     ; $6892: $06 $84
    add h                                         ; $6894: $84
    ld e, $00                                     ; $6895: $1e $00
    rst $20                                       ; $6897: $e7
    nop                                           ; $6898: $00
    jr jr_0aa_685e                                ; $6899: $18 $c3

    inc a                                         ; $689b: $3c
    add c                                         ; $689c: $81
    ld h, [hl]                                    ; $689d: $66
    ld b, b                                       ; $689e: $40
    ld e, b                                       ; $689f: $58
    jp $9c02                                      ; $68a0: $c3 $02 $9c


    nop                                           ; $68a3: $00
    ld e, a                                       ; $68a4: $5f
    nop                                           ; $68a5: $00
    ldh a, [rIF]                                  ; $68a6: $f0 $0f
    ld b, b                                       ; $68a8: $40
    ld [$00e7], sp                                ; $68a9: $08 $e7 $00
    rst $30                                       ; $68ac: $f7
    ld [hl], l                                    ; $68ad: $75
    ld [hl], e                                    ; $68ae: $73
    add d                                         ; $68af: $82
    add h                                         ; $68b0: $84
    jp $22c0                                      ; $68b1: $c3 $c0 $22


    nop                                           ; $68b4: $00
    ld h, c                                       ; $68b5: $61
    adc d                                         ; $68b6: $8a
    add hl, sp                                    ; $68b7: $39
    rst $38                                       ; $68b8: $ff
    nop                                           ; $68b9: $00
    cp a                                          ; $68ba: $bf
    nop                                           ; $68bb: $00
    nop                                           ; $68bc: $00
    nop                                           ; $68bd: $00
    ld b, b                                       ; $68be: $40
    ld h, b                                       ; $68bf: $60
    ld b, b                                       ; $68c0: $40
    jr nz, jr_0aa_6903                            ; $68c1: $20 $40

    jr nc, jr_0aa_6915                            ; $68c3: $30 $50

    sub b                                         ; $68c5: $90
    jr jr_0aa_68f8                                ; $68c6: $18 $30

    sub b                                         ; $68c8: $90
    jr nz, jr_0aa_692b                            ; $68c9: $20 $60

    jr c, @+$0c                                   ; $68cb: $38 $0a

    ld c, b                                       ; $68cd: $48
    ld bc, $00fe                                  ; $68ce: $01 $fe $00

jr_0aa_68d1:
    jr nz, jr_0aa_68d1                            ; $68d1: $20 $fe

    ld bc, $0807                                  ; $68d3: $01 $07 $08
    ld bc, $110a                                  ; $68d6: $01 $0a $11
    add hl, de                                    ; $68d9: $19
    ld a, [de]                                    ; $68da: $1a
    nop                                           ; $68db: $00
    add hl, sp                                    ; $68dc: $39
    ld a, [hl-]                                   ; $68dd: $3a
    dec bc                                        ; $68de: $0b
    jr c, jr_0aa_68f0                             ; $68df: $38 $0f

    ld sp, $320e                                  ; $68e1: $31 $0e $32
    nop                                           ; $68e4: $00
    cpl                                           ; $68e5: $2f
    sub c                                         ; $68e6: $91
    rlca                                          ; $68e7: $07
    reti                                          ; $68e8: $d9


    sub h                                         ; $68e9: $94
    add $2c                                       ; $68ea: $c6 $2c
    jp c, $fc00                                   ; $68ec: $da $00 $fc

    ld [bc], a                                    ; $68ef: $02

jr_0aa_68f0:
    inc bc                                        ; $68f0: $03
    nop                                           ; $68f1: $00
    sbc b                                         ; $68f2: $98
    adc c                                         ; $68f3: $89
    ret z                                         ; $68f4: $c8

    ccf                                           ; $68f5: $3f
    nop                                           ; $68f6: $00
    ld c, e                                       ; $68f7: $4b

jr_0aa_68f8:
    sbc $c9                                       ; $68f8: $de $c9
    cp a                                          ; $68fa: $bf
    rrca                                          ; $68fb: $0f
    ld [hl], $3f                                  ; $68fc: $36 $3f
    ld e, a                                       ; $68fe: $5f
    nop                                           ; $68ff: $00
    ldh [$9f], a                                  ; $6900: $e0 $9f
    ld h, b                                       ; $6902: $60

jr_0aa_6903:
    rra                                           ; $6903: $1f
    or b                                          ; $6904: $b0
    ccf                                           ; $6905: $3f
    ld e, b                                       ; $6906: $58
    sbc l                                         ; $6907: $9d
    nop                                           ; $6908: $00
    ret nz                                        ; $6909: $c0

    ld e, [hl]                                    ; $690a: $5e
    pop hl                                        ; $690b: $e1
    xor l                                         ; $690c: $ad
    db $d3                                        ; $690d: $d3
    adc b                                         ; $690e: $88
    ei                                            ; $690f: $fb
    ld a, b                                       ; $6910: $78
    nop                                           ; $6911: $00
    ldh [$f8], a                                  ; $6912: $e0 $f8
    rst $38                                       ; $6914: $ff

jr_0aa_6915:
    cp $ff                                        ; $6915: $fe $ff
    nop                                           ; $6917: $00
    xor a                                         ; $6918: $af
    nop                                           ; $6919: $00
    nop                                           ; $691a: $00
    inc d                                         ; $691b: $14
    nop                                           ; $691c: $00
    dec bc                                        ; $691d: $0b
    di                                            ; $691e: $f3
    or h                                          ; $691f: $b4
    nop                                           ; $6920: $00
    inc d                                         ; $6921: $14
    inc h                                         ; $6922: $24
    nop                                           ; $6923: $00
    db $f4                                        ; $6924: $f4
    ret z                                         ; $6925: $c8

    ld a, [hl+]                                   ; $6926: $2a
    ldh [$e6], a                                  ; $6927: $e0 $e6
    sbc $f4                                       ; $6929: $de $f4

jr_0aa_692b:
    ld [$2008], a                                 ; $692b: $ea $08 $20
    ld [$15c1], sp                                ; $692e: $08 $c1 $15
    ret nc                                        ; $6931: $d0

    ld [$407f], sp                                ; $6932: $08 $7f $40
    ld a, a                                       ; $6935: $7f
    ld b, b                                       ; $6936: $40
    add b                                         ; $6937: $80
    adc b                                         ; $6938: $88
    ld [$c080], sp                                ; $6939: $08 $80 $c0
    add b                                         ; $693c: $80
    ld b, b                                       ; $693d: $40
    db $fc                                        ; $693e: $fc
    ld bc, $0300                                  ; $693f: $01 $00 $03
    ldh a, [$0e]                                  ; $6942: $f0 $0e
    ldh [$c1], a                                  ; $6944: $e0 $c1
    ret c                                         ; $6946: $d8

    ld b, $30                                     ; $6947: $06 $30
    nop                                           ; $6949: $00
    ld h, b                                       ; $694a: $60
    rrca                                          ; $694b: $0f
    ld h, b                                       ; $694c: $60
    rrca                                          ; $694d: $0f
    adc a                                         ; $694e: $8f
    and b                                         ; $694f: $a0
    ld [de], a                                    ; $6950: $12
    ld l, h                                       ; $6951: $6c
    nop                                           ; $6952: $00
    dec c                                         ; $6953: $0d
    inc sp                                        ; $6954: $33
    sub l                                         ; $6955: $95
    ld a, [bc]                                    ; $6956: $0a
    adc e                                         ; $6957: $8b
    dec c                                         ; $6958: $0d
    di                                            ; $6959: $f3
    ld h, [hl]                                    ; $695a: $66
    nop                                           ; $695b: $00
    dec c                                         ; $695c: $0d
    rra                                           ; $695d: $1f
    add l                                         ; $695e: $85
    rrca                                          ; $695f: $0f
    pop bc                                        ; $6960: $c1
    rlca                                          ; $6961: $07
    call z, $002c                                 ; $6962: $cc $2c $00
    or h                                          ; $6965: $b4
    call nc, $c3b0                                ; $6966: $d4 $b0 $c3
    add d                                         ; $6969: $82
    or h                                          ; $696a: $b4
    pop de                                        ; $696b: $d1
    ld b, h                                       ; $696c: $44
    nop                                           ; $696d: $00
    db $e3                                        ; $696e: $e3
    rlca                                          ; $696f: $07
    pop af                                        ; $6970: $f1
    inc bc                                        ; $6971: $03
    ld hl, sp-$67                                 ; $6972: $f8 $99
    ld h, [hl]                                    ; $6974: $66
    sub [hl]                                      ; $6975: $96
    nop                                           ; $6976: $00
    dec d                                         ; $6977: $15
    inc h                                         ; $6978: $24
    ld [hl], $82                                  ; $6979: $36 $82
    ld d, $42                                     ; $697b: $16 $42
    adc d                                         ; $697d: $8a
    ld [hl+], a                                   ; $697e: $22
    nop                                           ; $697f: $00
    adc e                                         ; $6980: $8b
    inc hl                                        ; $6981: $23
    ld d, c                                       ; $6982: $51
    inc d                                         ; $6983: $14
    pop de                                        ; $6984: $d1
    inc d                                         ; $6985: $14
    adc h                                         ; $6986: $8c
    db $fc                                        ; $6987: $fc
    nop                                           ; $6988: $00
    add hl, sp                                    ; $6989: $39
    call nz, $0180                                ; $698a: $c4 $80 $01
    ld [bc], a                                    ; $698d: $02
    ccf                                           ; $698e: $3f
    ld bc, $0000                                  ; $698f: $01 $00 $00
    push bc                                       ; $6992: $c5
    db $fc                                        ; $6993: $fc
    rst $00                                       ; $6994: $c7
    and d                                         ; $6995: $a2
    rst $38                                       ; $6996: $ff
    ld a, h                                       ; $6997: $7c
    add hl, de                                    ; $6998: $19
    dec a                                         ; $6999: $3d
    nop                                           ; $699a: $00
    cp b                                          ; $699b: $b8
    jr z, jr_0aa_69a1                             ; $699c: $28 $03

    adc b                                         ; $699e: $88
    inc sp                                        ; $699f: $33
    or b                                          ; $69a0: $b0

jr_0aa_69a1:
    rst $30                                       ; $69a1: $f7
    ldh a, [rP1]                                  ; $69a2: $f0 $00
    cp e                                          ; $69a4: $bb
    ret z                                         ; $69a5: $c8

    xor e                                         ; $69a6: $ab
    ret z                                         ; $69a7: $c8

    ld a, e                                       ; $69a8: $7b
    ld hl, sp-$80                                 ; $69a9: $f8 $80
    cp a                                          ; $69ab: $bf
    nop                                           ; $69ac: $00
    ret nz                                        ; $69ad: $c0

    rrca                                          ; $69ae: $0f
    ld [hl], a                                    ; $69af: $77
    rlca                                          ; $69b0: $07
    dec de                                        ; $69b1: $1b
    add e                                         ; $69b2: $83
    ldh [$0c], a                                  ; $69b3: $e0 $0c
    nop                                           ; $69b5: $00
    ldh a, [rTMA]                                 ; $69b6: $f0 $06
    ldh a, [rTMA]                                 ; $69b8: $f0 $06
    pop af                                        ; $69ba: $f1
    dec b                                         ; $69bb: $05
    adc [hl]                                      ; $69bc: $8e
    and b                                         ; $69bd: $a0
    nop                                           ; $69be: $00
    add [hl]                                      ; $69bf: $86
    or b                                          ; $69c0: $b0
    add $d0                                       ; $69c1: $c6 $d0
    rst $00                                       ; $69c3: $c7
    ret nc                                        ; $69c4: $d0

    jp $20d8                                      ; $69c5: $c3 $d8 $20


    db $e3                                        ; $69c8: $e3
    add sp, $02                                   ; $69c9: $e8 $02
    ld [$07e1], sp                                ; $69cb: $08 $e1 $07
    ld h, e                                       ; $69ce: $63
    rlca                                          ; $69cf: $07
    dec bc                                        ; $69d0: $0b
    nop                                           ; $69d1: $00
    adc a                                         ; $69d2: $8f
    ld a, h                                       ; $69d3: $7c
    ld a, d                                       ; $69d4: $7a
    inc e                                         ; $69d5: $1c
    and d                                         ; $69d6: $a2
    ld e, $d0                                     ; $69d7: $1e $d0
    nop                                           ; $69d9: $00
    nop                                           ; $69da: $00
    ldh [rIE], a                                  ; $69db: $e0 $ff
    rst $38                                       ; $69dd: $ff
    ld [hl], h                                    ; $69de: $74
    pop de                                        ; $69df: $d1
    db $e4                                        ; $69e0: $e4
    ld e, [hl]                                    ; $69e1: $5e
    ld h, [hl]                                    ; $69e2: $66
    nop                                           ; $69e3: $00
    ret c                                         ; $69e4: $d8

    ld e, b                                       ; $69e5: $58
    ld h, d                                       ; $69e6: $62
    jr jr_0aa_6a4b                                ; $69e7: $18 $62

    ld d, e                                       ; $69e9: $53
    ld h, c                                       ; $69ea: $61
    ld [hl+], a                                   ; $69eb: $22
    nop                                           ; $69ec: $00
    ld h, c                                       ; $69ed: $61
    ld [hl], d                                    ; $69ee: $72
    cp c                                          ; $69ef: $b9
    ld sp, hl                                     ; $69f0: $f9
    inc l                                         ; $69f1: $2c
    ld sp, hl                                     ; $69f2: $f9
    inc a                                         ; $69f3: $3c
    inc c                                         ; $69f4: $0c
    nop                                           ; $69f5: $00
    xor c                                         ; $69f6: $a9
    inc e                                         ; $69f7: $1c
    db $dd                                        ; $69f8: $dd
    pop af                                        ; $69f9: $f1
    sub e                                         ; $69fa: $93
    ld [hl], e                                    ; $69fb: $73
    ld h, l                                       ; $69fc: $65
    inc bc                                        ; $69fd: $03
    nop                                           ; $69fe: $00
    rrca                                          ; $69ff: $0f
    and e                                         ; $6a00: $a3
    ld b, a                                       ; $6a01: $47
    cp $01                                        ; $6a02: $fe $01
    dec c                                         ; $6a04: $0d
    db $f4                                        ; $6a05: $f4
    rrca                                          ; $6a06: $0f
    nop                                           ; $6a07: $00
    or $1a                                        ; $6a08: $f6 $1a
    xor $cf                                       ; $6a0a: $ee $cf
    xor a                                         ; $6a0c: $af
    sbc a                                         ; $6a0d: $9f
    ret nz                                        ; $6a0e: $c0

    rst $38                                       ; $6a0f: $ff
    nop                                           ; $6a10: $00
    rrca                                          ; $6a11: $0f
    ld hl, sp+$0b                                 ; $6a12: $f8 $0b
    ld hl, sp+$4b                                 ; $6a14: $f8 $4b
    add sp, $3b                                   ; $6a16: $e8 $3b
    db $e3                                        ; $6a18: $e3
    nop                                           ; $6a19: $00
    db $e4                                        ; $6a1a: $e4
    inc bc                                        ; $6a1b: $03
    ld d, b                                       ; $6a1c: $50
    or b                                          ; $6a1d: $b0
    ret z                                         ; $6a1e: $c8

    ldh a, [rNR23]                                ; $6a1f: $f0 $18
    ld hl, sp+$00                                 ; $6a21: $f8 $00
    rst $28                                       ; $6a23: $ef
    sbc b                                         ; $6a24: $98
    ld c, a                                       ; $6a25: $4f
    pop af                                        ; $6a26: $f1
    dec b                                         ; $6a27: $05
    pop hl                                        ; $6a28: $e1
    dec c                                         ; $6a29: $0d
    db $e3                                        ; $6a2a: $e3
    ld bc, $e30b                                  ; $6a2b: $01 $0b $e3
    dec bc                                        ; $6a2e: $0b
    jp $c71b                                      ; $6a2f: $c3 $1b $c7


    rla                                           ; $6a32: $17
    ld [bc], a                                    ; $6a33: $02
    ld [$e100], sp                                ; $6a34: $08 $00 $e1
    db $ec                                        ; $6a37: $ec
    pop af                                        ; $6a38: $f1
    db $f4                                        ; $6a39: $f4
    pop af                                        ; $6a3a: $f1
    db $f4                                        ; $6a3b: $f4
    ld b, $f0                                     ; $6a3c: $06 $f0
    nop                                           ; $6a3e: $00
    ld [bc], a                                    ; $6a3f: $02
    ld hl, sp+$02                                 ; $6a40: $f8 $02
    ld hl, sp+$03                                 ; $6a42: $f8 $03
    ld hl, sp+$01                                 ; $6a44: $f8 $01
    db $fc                                        ; $6a46: $fc
    inc b                                         ; $6a47: $04

jr_0aa_6a48:
    xor $25                                       ; $6a48: $ee $25
    db $e4                                        ; $6a4a: $e4

jr_0aa_6a4b:
    rlca                                          ; $6a4b: $07
    ld hl, sp-$30                                 ; $6a4c: $f8 $d0
    ld hl, $007f                                  ; $6a4e: $21 $7f $00
    nop                                           ; $6a51: $00
    ld a, e                                       ; $6a52: $7b

jr_0aa_6a53:
    inc b                                         ; $6a53: $04
    ld [c], a                                     ; $6a54: $e2
    ld [hl], c                                    ; $6a55: $71
    xor e                                         ; $6a56: $ab
    and e                                         ; $6a57: $a3
    ld [de], a                                    ; $6a58: $12
    ld b, $01                                     ; $6a59: $06 $01
    push af                                       ; $6a5b: $f5
    inc b                                         ; $6a5c: $04
    pop af                                        ; $6a5d: $f1
    inc b                                         ; $6a5e: $04
    ld sp, hl                                     ; $6a5f: $f9
    nop                                           ; $6a60: $00
    db $fd                                        ; $6a61: $fd
    db $ed                                        ; $6a62: $ed
    ld bc, $8300                                  ; $6a63: $01 $00 $83
    add a                                         ; $6a66: $87
    ld h, c                                       ; $6a67: $61
    inc bc                                        ; $6a68: $03
    ldh [$09], a                                  ; $6a69: $e0 $09
    call nz, Call_000_000e                        ; $6a6b: $c4 $0e $00
    adc c                                         ; $6a6e: $89
    rrca                                          ; $6a6f: $0f
    ld b, b                                       ; $6a70: $40
    ld b, e                                       ; $6a71: $43
    ld a, l                                       ; $6a72: $7d
    ld c, h                                       ; $6a73: $4c
    ld [hl], b                                    ; $6a74: $70
    ld c, [hl]                                    ; $6a75: $4e
    nop                                           ; $6a76: $00
    ldh a, [$78]                                  ; $6a77: $f0 $78
    ld hl, sp+$3f                                 ; $6a79: $f8 $3f
    ccf                                           ; $6a7b: $3f
    rst $18                                       ; $6a7c: $df
    rra                                           ; $6a7d: $1f
    ld l, a                                       ; $6a7e: $6f
    nop                                           ; $6a7f: $00
    ld [hl], b                                    ; $6a80: $70
    ld c, a                                       ; $6a81: $4f
    cp b                                          ; $6a82: $b8
    and a                                         ; $6a83: $a7
    add a                                         ; $6a84: $87
    ld e, b                                       ; $6a85: $58
    ret nz                                        ; $6a86: $c0

    daa                                           ; $6a87: $27
    nop                                           ; $6a88: $00
    jr jr_0aa_6a9a                                ; $6a89: $18 $0f

    db $fc                                        ; $6a8b: $fc
    rst $30                                       ; $6a8c: $f7
    ld hl, sp-$04                                 ; $6a8d: $f8 $fc
    ld hl, sp-$24                                 ; $6a8f: $f8 $dc
    nop                                           ; $6a91: $00
    db $fc                                        ; $6a92: $fc
    rlca                                          ; $6a93: $07
    ld hl, sp+$23                                 ; $6a94: $f8 $23
    jp nc, $06f8                                  ; $6a96: $d2 $f8 $06

    ret nc                                        ; $6a99: $d0

jr_0aa_6a9a:
    nop                                           ; $6a9a: $00
    add a                                         ; $6a9b: $87
    scf                                           ; $6a9c: $37
    adc a                                         ; $6a9d: $8f
    cpl                                           ; $6a9e: $2f
    cpl                                           ; $6a9f: $2f
    adc a                                         ; $6aa0: $8f
    ld l, a                                       ; $6aa1: $6f
    rrca                                          ; $6aa2: $0f
    nop                                           ; $6aa3: $00
    ld b, b                                       ; $6aa4: $40
    rra                                           ; $6aa5: $1f
    ld b, b                                       ; $6aa6: $40
    rra                                           ; $6aa7: $1f
    ret nz                                        ; $6aa8: $c0

    rra                                           ; $6aa9: $1f
    add b                                         ; $6aaa: $80
    ccf                                           ; $6aab: $3f
    inc bc                                        ; $6aac: $03
    ld bc, $01fc                                  ; $6aad: $01 $fc $01
    db $fc                                        ; $6ab0: $fc
    nop                                           ; $6ab1: $00
    cp $bf                                        ; $6ab2: $fe $bf
    ld bc, $022e                                  ; $6ab4: $01 $2e $02
    ld b, b                                       ; $6ab7: $40
    rst $38                                       ; $6ab8: $ff
    ld l, h                                       ; $6ab9: $6c
    add hl, bc                                    ; $6aba: $09
    nop                                           ; $6abb: $00
    add b                                         ; $6abc: $80
    ld a, $81                                     ; $6abd: $3e $81
    jr c, jr_0aa_6a48                             ; $6abf: $38 $87

    nop                                           ; $6ac1: $00
    jr nc, jr_0aa_6a53                            ; $6ac2: $30 $8f

    jr nz, jr_0aa_6ace                            ; $6ac4: $20 $08

    rst $18                                       ; $6ac6: $df
    inc c                                         ; $6ac7: $0c
    ld d, a                                       ; $6ac8: $57
    ld c, h                                       ; $6ac9: $4c
    ld b, b                                       ; $6aca: $40
    ld d, e                                       ; $6acb: $53
    ld d, b                                       ; $6acc: $50

jr_0aa_6acd:
    ld a, [bc]                                    ; $6acd: $0a

jr_0aa_6ace:
    db $fd                                        ; $6ace: $fd
    cp $ff                                        ; $6acf: $fe $ff
    rst $20                                       ; $6ad1: $e7
    ldh [$f3], a                                  ; $6ad2: $e0 $f3
    nop                                           ; $6ad4: $00
    rst $28                                       ; $6ad5: $ef
    rrca                                          ; $6ad6: $0f
    rst $18                                       ; $6ad7: $df
    ccf                                           ; $6ad8: $3f
    ld b, b                                       ; $6ad9: $40
    add b                                         ; $6ada: $80
    cp h                                          ; $6adb: $bc
    inc sp                                        ; $6adc: $33
    nop                                           ; $6add: $00
    ld [de], a                                    ; $6ade: $12
    inc de                                        ; $6adf: $13
    rst $00                                       ; $6ae0: $c7
    ld b, h                                       ; $6ae1: $44
    add hl, de                                    ; $6ae2: $19
    add sp, -$04                                  ; $6ae3: $e8 $fc
    ld a, d                                       ; $6ae5: $7a
    nop                                           ; $6ae6: $00
    ccf                                           ; $6ae7: $3f
    sbc $0f                                       ; $6ae8: $de $0f
    ret z                                         ; $6aea: $c8

    ld bc, $48e6                                  ; $6aeb: $01 $e6 $48
    ld h, b                                       ; $6aee: $60
    nop                                           ; $6aef: $00
    rrca                                          ; $6af0: $0f
    jr nz, @-$3e                                  ; $6af1: $20 $c0

    ld c, a                                       ; $6af3: $4f
    ldh [rBGP], a                                 ; $6af4: $e0 $47
    ld b, e                                       ; $6af6: $43
    jr nc, jr_0aa_6af9                            ; $6af7: $30 $00

jr_0aa_6af9:
    or c                                          ; $6af9: $b1
    xor b                                         ; $6afa: $a8
    ret c                                         ; $6afb: $d8

jr_0aa_6afc:
    adc h                                         ; $6afc: $8c
    ld c, h                                       ; $6afd: $4c
    and $fe                                       ; $6afe: $e6 $fe
    ldh a, [rNR41]                                ; $6b00: $f0 $20
    db $fc                                        ; $6b02: $fc
    ld bc, $0854                                  ; $6b03: $01 $54 $08
    ld bc, $03fc                                  ; $6b06: $01 $fc $03
    ld hl, sp-$08                                 ; $6b09: $f8 $f8
    nop                                           ; $6b0b: $00
    ld [bc], a                                    ; $6b0c: $02
    ld a, b                                       ; $6b0d: $78
    ld [bc], a                                    ; $6b0e: $02
    add b                                         ; $6b0f: $80
    ccf                                           ; $6b10: $3f
    add b                                         ; $6b11: $80
    ccf                                           ; $6b12: $3f
    ld a, a                                       ; $6b13: $7f
    ldh [$ba], a                                  ; $6b14: $e0 $ba
    nop                                           ; $6b16: $00
    inc b                                         ; $6b17: $04
    ld [$8a3c], sp                                ; $6b18: $08 $3c $8a
    ld l, a                                       ; $6b1b: $6f
    ld h, b                                       ; $6b1c: $60
    adc a                                         ; $6b1d: $8f
    and b                                         ; $6b1e: $a0
    adc a                                         ; $6b1f: $8f
    nop                                           ; $6b20: $00
    and b                                         ; $6b21: $a0
    add a                                         ; $6b22: $87

jr_0aa_6b23:
    or b                                          ; $6b23: $b0
    ret nz                                        ; $6b24: $c0

    ret nc                                        ; $6b25: $d0

    rra                                           ; $6b26: $1f
    ret nz                                        ; $6b27: $c0

    nop                                           ; $6b28: $00
    ld h, b                                       ; $6b29: $60
    ret nz                                        ; $6b2a: $c0

    cp h                                          ; $6b2b: $bc
    ld a, [hl-]                                   ; $6b2c: $3a
    inc b                                         ; $6b2d: $04
    jr jr_0aa_6b30                                ; $6b2e: $18 $00

jr_0aa_6b30:
    nop                                           ; $6b30: $00
    ld a, [de]                                    ; $6b31: $1a
    db $fc                                        ; $6b32: $fc
    dec bc                                        ; $6b33: $0b

jr_0aa_6b34:
    inc b                                         ; $6b34: $04
    add $83                                       ; $6b35: $c6 $83
    rst $28                                       ; $6b37: $ef
    add c                                         ; $6b38: $81
    and $14                                       ; $6b39: $e6 $14
    jr nc, jr_0aa_6b34                            ; $6b3b: $30 $f7

    cp b                                          ; $6b3d: $b8
    inc b                                         ; $6b3e: $04
    db $d3                                        ; $6b3f: $d3
    ld h, l                                       ; $6b40: $65
    dec d                                         ; $6b41: $15
    and [hl]                                      ; $6b42: $a6
    ld a, [bc]                                    ; $6b43: $0a
    inc h                                         ; $6b44: $24
    jr z, jr_0aa_6acd                             ; $6b45: $28 $86

    or b                                          ; $6b47: $b0
    nop                                           ; $6b48: $00
    add h                                         ; $6b49: $84
    ret nc                                        ; $6b4a: $d0

    ld b, c                                       ; $6b4b: $41
    dec h                                         ; $6b4c: $25
    pop bc                                        ; $6b4d: $c1
    dec l                                         ; $6b4e: $2d
    ld [$1803], sp                                ; $6b4f: $08 $03 $18
    ld hl, sp+$03                                 ; $6b52: $f8 $03
    inc bc                                        ; $6b54: $03
    inc [hl]                                      ; $6b55: $34
    jr nz, jr_0aa_6afc                            ; $6b56: $20 $a4

    ld c, d                                       ; $6b58: $4a
    db $10                                        ; $6b59: $10
    inc bc                                        ; $6b5a: $03
    ld [hl], h                                    ; $6b5b: $74
    ld [bc], a                                    ; $6b5c: $02
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    ld hl, $1200                                  ; $6b60: $21 $00 $12
    nop                                           ; $6b63: $00
    inc c                                         ; $6b64: $0c
    ld [$0800], sp                                ; $6b65: $08 $00 $08
    ld [hl], b                                    ; $6b68: $70
    jr nz, @+$0a                                  ; $6b69: $20 $08

    adc b                                         ; $6b6b: $88
    ld l, h                                       ; $6b6c: $6c
    ld c, d                                       ; $6b6d: $4a
    adc h                                         ; $6b6e: $8c
    ld d, h                                       ; $6b6f: $54
    nop                                           ; $6b70: $00
    ld bc, $8050                                  ; $6b71: $01 $50 $80
    rrca                                          ; $6b74: $0f
    db $10                                        ; $6b75: $10
    ld bc, $0802                                  ; $6b76: $01 $02 $08
    ld [bc], a                                    ; $6b79: $02
    ei                                            ; $6b7a: $fb
    nop                                           ; $6b7b: $00
    ld hl, sp-$1f                                 ; $6b7c: $f8 $e1
    db $e4                                        ; $6b7e: $e4
    ret c                                         ; $6b7f: $d8

    jp nz, $e700                                  ; $6b80: $c2 $00 $e7

    jr jr_0aa_6b85                                ; $6b83: $18 $00

jr_0aa_6b85:
    jp $3901                                      ; $6b85: $c3 $01 $39


    inc b                                         ; $6b88: $04
    ld h, b                                       ; $6b89: $60
    ld c, c                                       ; $6b8a: $49
    ld b, l                                       ; $6b8b: $45
    ld [$3404], sp                                ; $6b8c: $08 $04 $34
    add hl, bc                                    ; $6b8f: $09
    db $fc                                        ; $6b90: $fc
    ld de, $303c                                  ; $6b91: $11 $3c $30
    ld [$00ff], sp                                ; $6b94: $08 $ff $00
    nop                                           ; $6b97: $00
    ld a, [hl]                                    ; $6b98: $7e
    ld bc, $3f80                                  ; $6b99: $01 $80 $3f
    ret nz                                        ; $6b9c: $c0

    rra                                           ; $6b9d: $1f
    nop                                           ; $6b9e: $00
    ld h, b                                       ; $6b9f: $60
    jr nz, jr_0aa_6b23                            ; $6ba0: $20 $81

    add hl, sp                                    ; $6ba2: $39
    jr c, jr_0aa_6bcd                             ; $6ba3: $38 $28

    jr nz, @-$1e                                  ; $6ba5: $20 $e0

    sbc d                                         ; $6ba7: $9a
    or $c4                                        ; $6ba8: $f6 $c4
    db $10                                        ; $6baa: $10
    ret                                           ; $6bab: $c9


    ld [c], a                                     ; $6bac: $e2
    db $e4                                        ; $6bad: $e4
    ld c, [hl]                                    ; $6bae: $4e
    ld e, b                                       ; $6baf: $58
    ld b, b                                       ; $6bb0: $40
    add b                                         ; $6bb1: $80
    add hl, bc                                    ; $6bb2: $09
    ld a, [bc]                                    ; $6bb3: $0a
    nop                                           ; $6bb4: $00
    rlca                                          ; $6bb5: $07
    dec bc                                        ; $6bb6: $0b
    ld b, a                                       ; $6bb7: $47
    ld c, l                                       ; $6bb8: $4d
    ld [$050d], sp                                ; $6bb9: $08 $0d $05
    ld b, $00                                     ; $6bbc: $06 $00
    inc sp                                        ; $6bbe: $33
    dec b                                         ; $6bbf: $05
    inc de                                        ; $6bc0: $13
    rla                                           ; $6bc1: $17
    dec b                                         ; $6bc2: $05
    ld b, $40                                     ; $6bc3: $06 $40
    add b                                         ; $6bc5: $80
    nop                                           ; $6bc6: $00
    ld c, [hl]                                    ; $6bc7: $4e
    adc [hl]                                      ; $6bc8: $8e
    ret nc                                        ; $6bc9: $d0

    jr nz, jr_0aa_6bf4                            ; $6bca: $20 $28

    sbc h                                         ; $6bcc: $9c

jr_0aa_6bcd:
    ld e, h                                       ; $6bcd: $5c
    ld c, a                                       ; $6bce: $4f
    nop                                           ; $6bcf: $00
    sub a                                         ; $6bd0: $97
    ld b, b                                       ; $6bd1: $40
    ld [hl+], a                                   ; $6bd2: $22
    adc d                                         ; $6bd3: $8a
    ld b, d                                       ; $6bd4: $42
    inc d                                         ; $6bd5: $14
    or e                                          ; $6bd6: $b3
    adc b                                         ; $6bd7: $88
    nop                                           ; $6bd8: $00
    dec c                                         ; $6bd9: $0d
    ld l, d                                       ; $6bda: $6a
    ld a, [$17f8]                                 ; $6bdb: $fa $f8 $17
    rlca                                          ; $6bde: $07
    ldh [$03], a                                  ; $6bdf: $e0 $03
    nop                                           ; $6be1: $00
    db $ed                                        ; $6be2: $ed
    daa                                           ; $6be3: $27
    rst $28                                       ; $6be4: $ef
    db $e3                                        ; $6be5: $e3
    dec c                                         ; $6be6: $0d
    adc d                                         ; $6be7: $8a
    ldh [$ec], a                                  ; $6be8: $e0 $ec
    nop                                           ; $6bea: $00
    ldh [$7c], a                                  ; $6beb: $e0 $7c
    inc c                                         ; $6bed: $0c
    ld h, b                                       ; $6bee: $60
    adc d                                         ; $6bef: $8a
    ldh [rTAC], a                                 ; $6bf0: $e0 $07
    or a                                          ; $6bf2: $b7
    nop                                           ; $6bf3: $00

jr_0aa_6bf4:
    ld l, [hl]                                    ; $6bf4: $6e
    ld l, l                                       ; $6bf5: $6d
    add a                                         ; $6bf6: $87
    ld l, c                                       ; $6bf7: $69
    rst $10                                       ; $6bf8: $d7
    ld a, [hl-]                                   ; $6bf9: $3a
    call z, Call_000_000d                         ; $6bfa: $cc $0d $00
    or $07                                        ; $6bfd: $f6 $07
    ld hl, sp+$03                                 ; $6bff: $f8 $03
    db $fc                                        ; $6c01: $fc
    nop                                           ; $6c02: $00
    ld a, a                                       ; $6c03: $7f
    nop                                           ; $6c04: $00
    jr nz, jr_0aa_6c46                            ; $6c05: $20 $3f

    add b                                         ; $6c07: $80
    ld [bc], a                                    ; $6c08: $02
    ld [$0391], sp                                ; $6c09: $08 $91 $03
    inc c                                         ; $6c0c: $0c
    add hl, bc                                    ; $6c0d: $09
    jr jr_0aa_6c10                                ; $6c0e: $18 $00

jr_0aa_6c10:
    sbc [hl]                                      ; $6c10: $9e
    cp h                                          ; $6c11: $bc
    adc h                                         ; $6c12: $8c
    ld a, [bc]                                    ; $6c13: $0a
    ld b, [hl]                                    ; $6c14: $46
    ld b, b                                       ; $6c15: $40
    ld a, [hl]                                    ; $6c16: $7e
    add b                                         ; $6c17: $80
    nop                                           ; $6c18: $00
    ld a, $81                                     ; $6c19: $3e $81
    scf                                           ; $6c1b: $37
    ld h, b                                       ; $6c1c: $60
    ldh [$b0], a                                  ; $6c1d: $e0 $b0
    ld [hl], b                                    ; $6c1f: $70
    ret nc                                        ; $6c20: $d0

    nop                                           ; $6c21: $00
    or b                                          ; $6c22: $b0
    ld h, b                                       ; $6c23: $60
    ret nc                                        ; $6c24: $d0

    ld [hl], b                                    ; $6c25: $70
    ret nz                                        ; $6c26: $c0

    ld [hl], b                                    ; $6c27: $70
    ret nz                                        ; $6c28: $c0

    sub b                                         ; $6c29: $90
    nop                                           ; $6c2a: $00
    ld [hl], b                                    ; $6c2b: $70
    ret nc                                        ; $6c2c: $d0

    jr nc, jr_0aa_6c33                            ; $6c2d: $30 $04

    inc d                                         ; $6c2f: $14
    db $f4                                        ; $6c30: $f4
    di                                            ; $6c31: $f3
    push hl                                       ; $6c32: $e5

jr_0aa_6c33:
    nop                                           ; $6c33: $00
    db $e3                                        ; $6c34: $e3
    pop bc                                        ; $6c35: $c1
    call nc, Call_000_3501                        ; $6c36: $d4 $01 $35
    inc bc                                        ; $6c39: $03
    ld h, l                                       ; $6c3a: $65
    inc bc                                        ; $6c3b: $03
    nop                                           ; $6c3c: $00
    ld h, h                                       ; $6c3d: $64
    add hl, bc                                    ; $6c3e: $09
    ld [hl+], a                                   ; $6c3f: $22
    add h                                         ; $6c40: $84
    dec l                                         ; $6c41: $2d
    ld e, d                                       ; $6c42: $5a
    ld d, e                                       ; $6c43: $53
    and [hl]                                      ; $6c44: $a6
    nop                                           ; $6c45: $00

jr_0aa_6c46:
    or h                                          ; $6c46: $b4
    ld c, c                                       ; $6c47: $49
    ld l, l                                       ; $6c48: $6d
    sbc d                                         ; $6c49: $9a
    jp nc, Jump_0aa_5f67                          ; $6c4a: $d2 $67 $5f

    rst $38                                       ; $6c4d: $ff
    nop                                           ; $6c4e: $00
    jr jr_0aa_6c51                                ; $6c4f: $18 $00

jr_0aa_6c51:
    nop                                           ; $6c51: $00
    ld c, a                                       ; $6c52: $4f
    bit 1, h                                      ; $6c53: $cb $4c
    db $e3                                        ; $6c55: $e3
    add [hl]                                      ; $6c56: $86
    nop                                           ; $6c57: $00
    ret z                                         ; $6c58: $c8

    adc a                                         ; $6c59: $8f
    ld h, $07                                     ; $6c5a: $26 $07
    ld [hl], e                                    ; $6c5c: $73
    ldh a, [$03]                                  ; $6c5d: $f0 $03
    ei                                            ; $6c5f: $fb
    nop                                           ; $6c60: $00
    inc bc                                        ; $6c61: $03
    ld hl, sp+$01                                 ; $6c62: $f8 $01
    rst $20                                       ; $6c64: $e7
    ld a, [bc]                                    ; $6c65: $0a
    ld h, a                                       ; $6c66: $67
    adc d                                         ; $6c67: $8a
    and a                                         ; $6c68: $a7
    nop                                           ; $6c69: $00
    jp z, $8ae7                                   ; $6c6a: $ca $e7 $8a

    rst $00                                       ; $6c6d: $c7
    ld a, [hl+]                                   ; $6c6e: $2a
    rst $08                                       ; $6c6f: $cf
    ld hl, $1ab6                                  ; $6c70: $21 $b6 $1a
    ld [c], a                                     ; $6c73: $e2
    ld [hl-], a                                   ; $6c74: $32
    cp [hl]                                       ; $6c75: $be
    ld h, [hl]                                    ; $6c76: $66
    jr jr_0aa_6ce5                                ; $6c77: $18 $6c

    ld [$747f], sp                                ; $6c79: $08 $7f $74
    db $10                                        ; $6c7c: $10
    add c                                         ; $6c7d: $81
    nop                                           ; $6c7e: $00
    rrca                                          ; $6c7f: $0f
    add d                                         ; $6c80: $82
    ld a, $d8                                     ; $6c81: $3e $d8
    add hl, de                                    ; $6c83: $19
    ldh [$03], a                                  ; $6c84: $e0 $03
    ld a, [$0200]                                 ; $6c86: $fa $00 $02
    ldh a, [$03]                                  ; $6c89: $f0 $03
    call c, $801c                                 ; $6c8b: $dc $1c $80
    ld bc, $00e0                                  ; $6c8e: $01 $e0 $00
    jr nc, jr_0aa_6d03                            ; $6c91: $30 $70

    cp b                                          ; $6c93: $b8
    add sp, -$78                                  ; $6c94: $e8 $88
    ret z                                         ; $6c96: $c8

    xor b                                         ; $6c97: $a8
    ld b, h                                       ; $6c98: $44
    nop                                           ; $6c99: $00
    xor h                                         ; $6c9a: $ac
    sub $36                                       ; $6c9b: $d6 $36
    ld d, $e6                                     ; $6c9d: $16 $e6
    sub h                                         ; $6c9f: $94
    ld h, h                                       ; $6ca0: $64
    dec bc                                        ; $6ca1: $0b
    nop                                           ; $6ca2: $00
    inc hl                                        ; $6ca3: $23
    scf                                           ; $6ca4: $37
    rlca                                          ; $6ca5: $07
    inc de                                        ; $6ca6: $13
    rlca                                          ; $6ca7: $07
    ret nc                                        ; $6ca8: $d0

    jp Jump_000_18d8                              ; $6ca9: $c3 $d8 $18


    ret nz                                        ; $6cac: $c0

    db $e3                                        ; $6cad: $e3
    add sp, $02                                   ; $6cae: $e8 $02
    ld [$1144], sp                                ; $6cb0: $08 $44 $11
    add b                                         ; $6cb3: $80
    ld a, a                                       ; $6cb4: $7f
    dec b                                         ; $6cb5: $05
    nop                                           ; $6cb6: $00
    ld a, [$f80f]                                 ; $6cb7: $fa $0f $f8
    inc bc                                        ; $6cba: $03
    pop af                                        ; $6cbb: $f1
    rlca                                          ; $6cbc: $07
    ld [c], a                                     ; $6cbd: $e2
    ld a, [bc]                                    ; $6cbe: $0a
    nop                                           ; $6cbf: $00
    ld sp, hl                                     ; $6cc0: $f9
    ld bc, $07f2                                  ; $6cc1: $01 $f2 $07
    push af                                       ; $6cc4: $f5
    scf                                           ; $6cc5: $37
    dec b                                         ; $6cc6: $05
    dec h                                         ; $6cc7: $25
    nop                                           ; $6cc8: $00
    adc c                                         ; $6cc9: $89
    and b                                         ; $6cca: $a0
    ret nc                                        ; $6ccb: $d0

    ld [hl], b                                    ; $6ccc: $70
    rst $30                                       ; $6ccd: $f7
    ldh a, [$c0]                                  ; $6cce: $f0 $c0
    dec b                                         ; $6cd0: $05
    nop                                           ; $6cd1: $00
    rrca                                          ; $6cd2: $0f
    rlca                                          ; $6cd3: $07
    nop                                           ; $6cd4: $00
    ld hl, sp-$59                                 ; $6cd5: $f8 $a7
    ret nc                                        ; $6cd7: $d0

    ld d, b                                       ; $6cd8: $50
    ld d, c                                       ; $6cd9: $51
    nop                                           ; $6cda: $00
    ld d, [hl]                                    ; $6cdb: $56
    inc d                                         ; $6cdc: $14
    nop                                           ; $6cdd: $00
    ld bc, $e3e0                                  ; $6cde: $01 $e0 $e3
    ldh a, [$03]                                  ; $6ce1: $f0 $03
    inc b                                         ; $6ce3: $04
    ccf                                           ; $6ce4: $3f

jr_0aa_6ce5:
    rrca                                          ; $6ce5: $0f
    ldh a, [rIE]                                  ; $6ce6: $f0 $ff
    ld hl, sp+$14                                 ; $6ce8: $f8 $14
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    nop                                           ; $6ced: $00
    ldh [$2e], a                                  ; $6cee: $e0 $2e
    ld h, c                                       ; $6cf0: $61
    rrca                                          ; $6cf1: $0f
    ld h, c                                       ; $6cf2: $61
    rrca                                          ; $6cf3: $0f
    ld a, [hl]                                    ; $6cf4: $7e
    ld bc, $c001                                  ; $6cf5: $01 $01 $c0
    ccf                                           ; $6cf8: $3f
    rst $38                                       ; $6cf9: $ff
    nop                                           ; $6cfa: $00
    cp $00                                        ; $6cfb: $fe $00
    db $fc                                        ; $6cfd: $fc
    sbc c                                         ; $6cfe: $99
    ld bc, $fd00                                  ; $6cff: $01 $00 $fd
    nop                                           ; $6d02: $00

jr_0aa_6d03:
    ret nz                                        ; $6d03: $c0

    ccf                                           ; $6d04: $3f
    pop hl                                        ; $6d05: $e1
    dec b                                         ; $6d06: $05
    pop hl                                        ; $6d07: $e1
    dec c                                         ; $6d08: $0d
    nop                                           ; $6d09: $00
    ldh a, [rNR23]                                ; $6d0a: $f0 $18
    ldh a, [rNR23]                                ; $6d0c: $f0 $18
    ldh [$28], a                                  ; $6d0e: $e0 $28
    ldh [rNR41], a                                ; $6d10: $e0 $20
    nop                                           ; $6d12: $00
    rst $20                                       ; $6d13: $e7
    rlca                                          ; $6d14: $07
    rst $00                                       ; $6d15: $c7
    rla                                           ; $6d16: $17
    pop hl                                        ; $6d17: $e1
    db $ec                                        ; $6d18: $ec
    pop af                                        ; $6d19: $f1
    db $f4                                        ; $6d1a: $f4
    nop                                           ; $6d1b: $00
    pop af                                        ; $6d1c: $f1
    db $f4                                        ; $6d1d: $f4
    ld b, $f0                                     ; $6d1e: $06 $f0
    ld [bc], a                                    ; $6d20: $02
    ld hl, sp+$02                                 ; $6d21: $f8 $02
    ld hl, sp-$80                                 ; $6d23: $f8 $80
    cp a                                          ; $6d25: $bf
    nop                                           ; $6d26: $00

jr_0aa_6d27:
    db $fc                                        ; $6d27: $fc
    jp hl                                         ; $6d28: $e9


    inc c                                         ; $6d29: $0c
    pop af                                        ; $6d2a: $f1
    push af                                       ; $6d2b: $f5
    ld sp, hl                                     ; $6d2c: $f9
    nop                                           ; $6d2d: $00

jr_0aa_6d2e:
    jr jr_0aa_6d2e                                ; $6d2e: $18 $fe

    ld bc, $9709                                  ; $6d30: $01 $09 $97
    ld bc, $00b2                                  ; $6d33: $01 $b2 $00
    ld a, a                                       ; $6d36: $7f
    ret nc                                        ; $6d37: $d0

    dec de                                        ; $6d38: $1b
    nop                                           ; $6d39: $00
    ret nc                                        ; $6d3a: $d0

    add hl, de                                    ; $6d3b: $19
    and b                                         ; $6d3c: $a0
    add hl, sp                                    ; $6d3d: $39
    and b                                         ; $6d3e: $a0
    ld a, [hl-]                                   ; $6d3f: $3a
    and b                                         ; $6d40: $a0
    jr c, jr_0aa_6d43                             ; $6d41: $38 $00

jr_0aa_6d43:
    dec a                                         ; $6d43: $3d
    ld c, l                                       ; $6d44: $4d
    inc a                                         ; $6d45: $3c
    ld c, h                                       ; $6d46: $4c
    ld bc, $f870                                  ; $6d47: $01 $70 $f8
    add hl, bc                                    ; $6d4a: $09
    nop                                           ; $6d4b: $00
    db $fc                                        ; $6d4c: $fc
    dec c                                         ; $6d4d: $0d
    db $fc                                        ; $6d4e: $fc
    dec b                                         ; $6d4f: $05
    db $fc                                        ; $6d50: $fc
    inc b                                         ; $6d51: $04
    db $fc                                        ; $6d52: $fc
    ld a, [hl]                                    ; $6d53: $7e
    add b                                         ; $6d54: $80
    ld [bc], a                                    ; $6d55: $02
    nop                                           ; $6d56: $00
    add d                                         ; $6d57: $82
    ld a, [hl]                                    ; $6d58: $7e
    ld b, c                                       ; $6d59: $41
    ldh a, [$86]                                  ; $6d5a: $f0 $86
    ldh a, [$c6]                                  ; $6d5c: $f0 $c6
    nop                                           ; $6d5e: $00
    or h                                          ; $6d5f: $b4
    or e                                          ; $6d60: $b3
    or h                                          ; $6d61: $b4
    or e                                          ; $6d62: $b3
    ld c, $03                                     ; $6d63: $0e $03
    sbc h                                         ; $6d65: $9c
    rlca                                          ; $6d66: $07
    nop                                           ; $6d67: $00
    ldh a, [rTAC]                                 ; $6d68: $f0 $07
    ld h, c                                       ; $6d6a: $61
    rrca                                          ; $6d6b: $0f
    cp a                                          ; $6d6c: $bf
    ld a, a                                       ; $6d6d: $7f
    rst $18                                       ; $6d6e: $df
    sbc a                                         ; $6d6f: $9f
    ld b, b                                       ; $6d70: $40
    ld e, a                                       ; $6d71: $5f
    ld [bc], a                                    ; $6d72: $02
    nop                                           ; $6d73: $00
    ld a, a                                       ; $6d74: $7f
    cp a                                          ; $6d75: $bf
    cp $be                                        ; $6d76: $fe $be
    ld b, c                                       ; $6d78: $41
    cp a                                          ; $6d79: $bf
    nop                                           ; $6d7a: $00
    ld [bc], a                                    ; $6d7b: $02
    cp $17                                        ; $6d7c: $fe $17
    rst $00                                       ; $6d7e: $c7
    cpl                                           ; $6d7f: $2f
    adc a                                         ; $6d80: $8f
    and b                                         ; $6d81: $a0
    adc a                                         ; $6d82: $8f
    ld [$0f20], sp                                ; $6d83: $08 $20 $0f
    ret nz                                        ; $6d86: $c0

    sbc a                                         ; $6d87: $9f
    ld [bc], a                                    ; $6d88: $02
    nop                                           ; $6d89: $00
    rra                                           ; $6d8a: $1f
    add b                                         ; $6d8b: $80
    ccf                                           ; $6d8c: $3f
    ld bc, $fc01                                  ; $6d8d: $01 $01 $fc
    ld bc, $00fc                                  ; $6d90: $01 $fc $00
    cp $fe                                        ; $6d93: $fe $fe
    sub d                                         ; $6d95: $92
    nop                                           ; $6d96: $00
    ld d, b                                       ; $6d97: $50
    cp $f8                                        ; $6d98: $fe $f8
    ld bc, $fa00                                  ; $6d9a: $01 $00 $fa
    ld bc, $803e                                  ; $6d9d: $01 $3e $80
    dec a                                         ; $6da0: $3d
    add c                                         ; $6da1: $81
    nop                                           ; $6da2: $00
    dec a                                         ; $6da3: $3d
    add c                                         ; $6da4: $81
    jr c, jr_0aa_6d27                             ; $6da5: $38 $80

    dec de                                        ; $6da7: $1b
    jp Jump_0aa_4119                              ; $6da8: $c3 $19 $41


    nop                                           ; $6dab: $00
    ld b, h                                       ; $6dac: $44
    ld b, c                                       ; $6dad: $41
    add e                                         ; $6dae: $83
    ldh a, [$73]                                  ; $6daf: $f0 $73
    ldh a, [rNR44]                                ; $6db1: $f0 $23
    ld h, b                                       ; $6db3: $60
    nop                                           ; $6db4: $00
    sbc e                                         ; $6db5: $9b
    ld hl, sp+$17                                 ; $6db6: $f8 $17
    ldh a, [$3b]                                  ; $6db8: $f0 $3b
    ld a, b                                       ; $6dba: $78
    sub a                                         ; $6dbb: $97
    or b                                          ; $6dbc: $b0
    nop                                           ; $6dbd: $00
    rla                                           ; $6dbe: $17
    ret nc                                        ; $6dbf: $d0

    ld a, [hl]                                    ; $6dc0: $7e
    ld b, c                                       ; $6dc1: $41
    ld a, [hl]                                    ; $6dc2: $7e
    ld h, c                                       ; $6dc3: $61
    and b                                         ; $6dc4: $a0
    ccf                                           ; $6dc5: $3f
    nop                                           ; $6dc6: $00
    or b                                          ; $6dc7: $b0
    ccf                                           ; $6dc8: $3f
    ret nc                                        ; $6dc9: $d0

    rra                                           ; $6dca: $1f
    ret c                                         ; $6dcb: $d8

    rra                                           ; $6dcc: $1f
    db $ec                                        ; $6dcd: $ec
    rrca                                          ; $6dce: $0f
    nop                                           ; $6dcf: $00
    db $f4                                        ; $6dd0: $f4
    rlca                                          ; $6dd1: $07
    daa                                           ; $6dd2: $27
    inc a                                         ; $6dd3: $3c

jr_0aa_6dd4:
    ld e, a                                       ; $6dd4: $5f
    ld [hl], h                                    ; $6dd5: $74
    rst $18                                       ; $6dd6: $df
    call nc, $5700                                ; $6dd7: $d4 $00 $57
    ret nc                                        ; $6dda: $d0

    add a                                         ; $6ddb: $87
    ld d, a                                       ; $6ddc: $57
    sra a                                         ; $6ddd: $cb $2f
    ldh [$2f], a                                  ; $6ddf: $e0 $2f
    dec b                                         ; $6de1: $05
    ld a, [c]                                     ; $6de2: $f2
    scf                                           ; $6de3: $37
    ld [bc], a                                    ; $6de4: $02
    cp $05                                        ; $6de5: $fe $05
    adc a                                         ; $6de7: $8f
    nop                                           ; $6de8: $00
    dec c                                         ; $6de9: $0d
    sub l                                         ; $6dea: $95
    nop                                           ; $6deb: $00
    rra                                           ; $6dec: $1f
    dec bc                                        ; $6ded: $0b
    ld hl, sp+$1a                                 ; $6dee: $f8 $1a
    ld [bc], a                                    ; $6df0: $02
    nop                                           ; $6df1: $00
    push de                                       ; $6df2: $d5
    add hl, bc                                    ; $6df3: $09
    ld l, d                                       ; $6df4: $6a
    add hl, bc                                    ; $6df5: $09
    ld l, [hl]                                    ; $6df6: $6e
    add hl, bc                                    ; $6df7: $09
    adc h                                         ; $6df8: $8c
    ld a, [de]                                    ; $6df9: $1a
    add c                                         ; $6dfa: $81
    db $fc                                        ; $6dfb: $fc
    nop                                           ; $6dfc: $00
    ld bc, $0201                                  ; $6dfd: $01 $01 $02
    ld bc, $0103                                  ; $6e00: $01 $03 $01
    sbc e                                         ; $6e03: $9b
    ld [de], a                                    ; $6e04: $12
    nop                                           ; $6e05: $00
    inc d                                         ; $6e06: $14
    dec hl                                        ; $6e07: $2b
    jr nz, jr_0aa_6e26                            ; $6e08: $20 $1c

    daa                                           ; $6e0a: $27
    rst $10                                       ; $6e0b: $d7
    sbc a                                         ; $6e0c: $9f
    ld e, h                                       ; $6e0d: $5c
    nop                                           ; $6e0e: $00
    db $fc                                        ; $6e0f: $fc
    ld hl, sp+$03                                 ; $6e10: $f8 $03
    jr c, jr_0aa_6dd4                             ; $6e12: $38 $c0

    ret nz                                        ; $6e14: $c0

    nop                                           ; $6e15: $00
    nop                                           ; $6e16: $00
    nop                                           ; $6e17: $00
    rlca                                          ; $6e18: $07
    ldh a, [$c7]                                  ; $6e19: $f0 $c7
    ret c                                         ; $6e1b: $d8

    daa                                           ; $6e1c: $27
    ld [hl], b                                    ; $6e1d: $70
    ld a, a                                       ; $6e1e: $7f
    ldh a, [$de]                                  ; $6e1f: $f0 $de
    add [hl]                                      ; $6e21: $86
    ld a, [bc]                                    ; $6e22: $0a
    cp h                                          ; $6e23: $bc
    ld a, [bc]                                    ; $6e24: $0a
    pop af                                        ; $6e25: $f1

jr_0aa_6e26:
    ld e, $02                                     ; $6e26: $1e $02
    jr nz, jr_0aa_6e2c                            ; $6e28: $20 $02

    dec l                                         ; $6e2a: $2d
    nop                                           ; $6e2b: $00

jr_0aa_6e2c:
    sbc [hl]                                      ; $6e2c: $9e
    ld [$06ff], sp                                ; $6e2d: $08 $ff $06
    nop                                           ; $6e30: $00
    ld [c], a                                     ; $6e31: $e2
    dec de                                        ; $6e32: $1b
    ld h, c                                       ; $6e33: $61
    sbc l                                         ; $6e34: $9d
    xor d                                         ; $6e35: $aa
    jr jr_0aa_6e48                                ; $6e36: $18 $10

    jr jr_0aa_6e70                                ; $6e38: $18 $36

    nop                                           ; $6e3a: $00
    ldh a, [$74]                                  ; $6e3b: $f0 $74
    ldh a, [rTIMA]                                ; $6e3d: $f0 $05
    add c                                         ; $6e3f: $81
    dec c                                         ; $6e40: $0d
    ld bc, $b008                                  ; $6e41: $01 $08 $b0
    ld h, $00                                     ; $6e44: $26 $00
    inc bc                                        ; $6e46: $03
    inc [hl]                                      ; $6e47: $34

jr_0aa_6e48:
    jr nz, @-$0a                                  ; $6e48: $20 $f4

    ld c, d                                       ; $6e4a: $4a
    db $10                                        ; $6e4b: $10
    inc bc                                        ; $6e4c: $03
    or c                                          ; $6e4d: $b1
    ld [bc], a                                    ; $6e4e: $02
    ld b, b                                       ; $6e4f: $40
    nop                                           ; $6e50: $00
    ld bc, $0178                                  ; $6e51: $01 $78 $01
    ld bc, $0302                                  ; $6e54: $01 $02 $03
    ld b, $00                                     ; $6e57: $06 $00
    nop                                           ; $6e59: $00
    inc bc                                        ; $6e5a: $03
    inc b                                         ; $6e5b: $04
    rlca                                          ; $6e5c: $07
    add hl, bc                                    ; $6e5d: $09
    ld c, $06                                     ; $6e5e: $0e $06
    rrca                                          ; $6e60: $0f
    ldh a, [rP1]                                  ; $6e61: $f0 $00

jr_0aa_6e63:
    nop                                           ; $6e63: $00
    ldh a, [$08]                                  ; $6e64: $f0 $08
    cp b                                          ; $6e66: $b8
    db $e4                                        ; $6e67: $e4
    inc b                                         ; $6e68: $04
    call nz, Call_000_007a                        ; $6e69: $c4 $7a $00
    add [hl]                                      ; $6e6c: $86
    inc c                                         ; $6e6d: $0c
    ret nz                                        ; $6e6e: $c0

    inc a                                         ; $6e6f: $3c

jr_0aa_6e70:
    jr c, jr_0aa_6e63                             ; $6e70: $38 $f1

    db $fc                                        ; $6e72: $fc
    jr nz, jr_0aa_6e75                            ; $6e73: $20 $00

jr_0aa_6e75:
    cpl                                           ; $6e75: $2f
    ld b, a                                       ; $6e76: $47
    ld e, b                                       ; $6e77: $58
    or b                                          ; $6e78: $b0
    jr nc, jr_0aa_6e7b                            ; $6e79: $30 $00

jr_0aa_6e7b:
    rrca                                          ; $6e7b: $0f
    ld a, [hl]                                    ; $6e7c: $7e
    nop                                           ; $6e7d: $00
    ld e, [hl]                                    ; $6e7e: $5e
    ld a, d                                       ; $6e7f: $7a
    dec de                                        ; $6e80: $1b
    ld a, $3e                                     ; $6e81: $3e $3e
    pop bc                                        ; $6e83: $c1
    add sp, -$10                                  ; $6e84: $e8 $f0
    nop                                           ; $6e86: $00
    ld [hl], b                                    ; $6e87: $70
    ld a, c                                       ; $6e88: $79
    sbc c                                         ; $6e89: $99
    db $10                                        ; $6e8a: $10
    db $10                                        ; $6e8b: $10
    rlca                                          ; $6e8c: $07
    ldh [$3c], a                                  ; $6e8d: $e0 $3c
    nop                                           ; $6e8f: $00
    ld a, b                                       ; $6e90: $78
    ldh [$e0], a                                  ; $6e91: $e0 $e0
    sbc b                                         ; $6e93: $98
    ret nz                                        ; $6e94: $c0

    sub e                                         ; $6e95: $93
    rlc b                                         ; $6e96: $cb $00
    nop                                           ; $6e98: $00
    nop                                           ; $6e99: $00
    cp $00                                        ; $6e9a: $fe $00
    cp $02                                        ; $6e9c: $fe $02
    inc b                                         ; $6e9e: $04
    ld b, $fe                                     ; $6e9f: $06 $fe
    ld bc, $78f6                                  ; $6ea1: $01 $f6 $78
    ret z                                         ; $6ea4: $c8

    ret nz                                        ; $6ea5: $c0

    jr nc, jr_0aa_6ea8                            ; $6ea6: $30 $00

jr_0aa_6ea8:
    ret nz                                        ; $6ea8: $c0

    ld h, b                                       ; $6ea9: $60
    add b                                         ; $6eaa: $80
    add b                                         ; $6eab: $80
    ld l, c                                       ; $6eac: $69
    jr c, jr_0aa_6eaf                             ; $6ead: $38 $00

jr_0aa_6eaf:
    inc bc                                        ; $6eaf: $03
    inc bc                                        ; $6eb0: $03
    inc bc                                        ; $6eb1: $03
    dec b                                         ; $6eb2: $05
    rlca                                          ; $6eb3: $07
    rrca                                          ; $6eb4: $0f
    nop                                           ; $6eb5: $00
    rrca                                          ; $6eb6: $0f
    jr nc, @+$51                                  ; $6eb7: $30 $4f

    ld [hl], a                                    ; $6eb9: $77
    ld a, a                                       ; $6eba: $7f
    ld b, b                                       ; $6ebb: $40
    ld b, b                                       ; $6ebc: $40
    ld b, b                                       ; $6ebd: $40
    nop                                           ; $6ebe: $00
    ldh [$6e], a                                  ; $6ebf: $e0 $6e
    pop de                                        ; $6ec1: $d1
    rra                                           ; $6ec2: $1f
    rrca                                          ; $6ec3: $0f
    add b                                         ; $6ec4: $80
    ld bc, $00f8                                  ; $6ec5: $01 $f8 $00
    dec bc                                        ; $6ec8: $0b
    ld b, $04                                     ; $6ec9: $06 $04
    rlca                                          ; $6ecb: $07
    dec c                                         ; $6ecc: $0d
    db $e4                                        ; $6ecd: $e4
    ld [bc], a                                    ; $6ece: $02
    inc bc                                        ; $6ecf: $03
    nop                                           ; $6ed0: $00
    db $fc                                        ; $6ed1: $fc
    ld b, $00                                     ; $6ed2: $06 $00
    ld h, [hl]                                    ; $6ed4: $66
    rrca                                          ; $6ed5: $0f
    ldh a, [rNR22]                                ; $6ed6: $f0 $17
    rst $30                                       ; $6ed8: $f7
    nop                                           ; $6ed9: $00
    inc h                                         ; $6eda: $24
    inc de                                        ; $6edb: $13
    pop hl                                        ; $6edc: $e1
    cp a                                          ; $6edd: $bf
    ld e, $a1                                     ; $6ede: $1e $a1
    rra                                           ; $6ee0: $1f
    ld [c], a                                     ; $6ee1: $e2
    nop                                           ; $6ee2: $00
    ld c, $df                                     ; $6ee3: $0e $df
    add [hl]                                      ; $6ee5: $86
    ld c, $d8                                     ; $6ee6: $0e $d8
    nop                                           ; $6ee8: $00
    adc b                                         ; $6ee9: $88
    push bc                                       ; $6eea: $c5
    nop                                           ; $6eeb: $00
    jr nc, jr_0aa_6f63                            ; $6eec: $30 $75

    jr c, @-$0a                                   ; $6eee: $38 $f4

    call nz, $808d                                ; $6ef0: $c4 $8d $80
    ld a, [bc]                                    ; $6ef3: $0a
    ld bc, $cf0a                                  ; $6ef4: $01 $0a $cf
    ld c, [hl]                                    ; $6ef7: $4e
    or a                                          ; $6ef8: $b7
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    add b                                         ; $6efb: $80
    add hl, sp                                    ; $6efc: $39
    nop                                           ; $6efd: $00
    nop                                           ; $6efe: $00
    sub b                                         ; $6eff: $90
    add sp, $48                                   ; $6f00: $e8 $48
    ld a, h                                       ; $6f02: $7c
    add h                                         ; $6f03: $84
    ld e, $63                                     ; $6f04: $1e $63
    ld l, h                                       ; $6f06: $6c
    jr nz, jr_0aa_6f7a                            ; $6f07: $20 $71

    halt                                          ; $6f09: $76
    ret nc                                        ; $6f0a: $d0

    ld d, b                                       ; $6f0b: $50
    add b                                         ; $6f0c: $80
    ret nz                                        ; $6f0d: $c0

    ld b, b                                       ; $6f0e: $40
    ld b, $01                                     ; $6f0f: $06 $01
    nop                                           ; $6f11: $00
    add hl, de                                    ; $6f12: $19
    ld e, $38                                     ; $6f13: $1e $38
    inc [hl]                                      ; $6f15: $34
    ld a, b                                       ; $6f16: $78
    dec bc                                        ; $6f17: $0b
    ldh a, [rTAC]                                 ; $6f18: $f0 $07
    nop                                           ; $6f1a: $00
    ldh [$ce], a                                  ; $6f1b: $e0 $ce
    ldh [$cc], a                                  ; $6f1d: $e0 $cc
    ldh [$cd], a                                  ; $6f1f: $e0 $cd
    and b                                         ; $6f21: $a0
    ld sp, $1300                                  ; $6f22: $31 $00 $13
    ld [hl-], a                                   ; $6f25: $32
    ld bc, $0821                                  ; $6f26: $01 $21 $08
    call nz, $2cce                                ; $6f29: $c4 $ce $2c
    nop                                           ; $6f2c: $00
    ld e, $26                                     ; $6f2d: $1e $26
    inc b                                         ; $6f2f: $04
    ld e, d                                       ; $6f30: $5a
    ret nz                                        ; $6f31: $c0

    add sp, -$68                                  ; $6f32: $e8 $98
    ld [$cc00], sp                                ; $6f34: $08 $00 $cc
    jp nc, $d2cc                                  ; $6f37: $d2 $cc $d2

    ld d, d                                       ; $6f3a: $52
    ld c, h                                       ; $6f3b: $4c
    ld d, [hl]                                    ; $6f3c: $56
    ld c, b                                       ; $6f3d: $48
    nop                                           ; $6f3e: $00
    adc $82                                       ; $6f3f: $ce $82
    jp nz, $0383                                  ; $6f41: $c2 $83 $03

    sub l                                         ; $6f44: $95
    add [hl]                                      ; $6f45: $86
    ld [hl], $00                                  ; $6f46: $36 $00

jr_0aa_6f48:
    nop                                           ; $6f48: $00
    ld a, $be                                     ; $6f49: $3e $be
    add b                                         ; $6f4b: $80
    cp b                                          ; $6f4c: $b8
    add e                                         ; $6f4d: $83
    ld [hl], $86                                  ; $6f4e: $36 $86
    nop                                           ; $6f50: $00
    dec c                                         ; $6f51: $0d
    ret                                           ; $6f52: $c9


    ldh [$2c], a                                  ; $6f53: $e0 $2c
    ld hl, sp+$1f                                 ; $6f55: $f8 $1f
    jr nz, jr_0aa_6fd8                            ; $6f57: $20 $7f

    nop                                           ; $6f59: $00
    ld c, $22                                     ; $6f5a: $0e $22
    ld hl, $a08f                                  ; $6f5c: $21 $8f $a0
    adc a                                         ; $6f5f: $8f

jr_0aa_6f60:
    adc h                                         ; $6f60: $8c
    inc hl                                        ; $6f61: $23
    nop                                           ; $6f62: $00

jr_0aa_6f63:
    add l                                         ; $6f63: $85
    and l                                         ; $6f64: $a5
    ld b, e                                       ; $6f65: $43
    jr nc, jr_0aa_6f6b                            ; $6f66: $30 $03

    ld a, c                                       ; $6f68: $79
    ld hl, sp+$41                                 ; $6f69: $f8 $41

jr_0aa_6f6b:
    nop                                           ; $6f6b: $00
    cp $00                                        ; $6f6c: $fe $00
    ld a, a                                       ; $6f6e: $7f
    ld a, a                                       ; $6f6f: $7f
    ld a, $80                                     ; $6f70: $3e $80
    dec a                                         ; $6f72: $3d
    add c                                         ; $6f73: $81
    nop                                           ; $6f74: $00
    dec bc                                        ; $6f75: $0b
    add e                                         ; $6f76: $83
    add hl, bc                                    ; $6f77: $09
    and e                                         ; $6f78: $a3
    inc bc                                        ; $6f79: $03

jr_0aa_6f7a:
    rst $20                                       ; $6f7a: $e7
    ld b, b                                       ; $6f7b: $40
    and b                                         ; $6f7c: $a0
    nop                                           ; $6f7d: $00
    jr c, jr_0aa_6f48                             ; $6f7e: $38 $c8

    scf                                           ; $6f80: $37
    ld c, e                                       ; $6f81: $4b
    add hl, de                                    ; $6f82: $19
    rlca                                          ; $6f83: $07
    daa                                           ; $6f84: $27
    add e                                         ; $6f85: $83
    nop                                           ; $6f86: $00
    inc de                                        ; $6f87: $13
    jp $8013                                      ; $6f88: $c3 $13 $80


    ld bc, $61c0                                  ; $6f8b: $01 $c0 $61
    ld c, l                                       ; $6f8e: $4d
    nop                                           ; $6f8f: $00
    ld h, b                                       ; $6f90: $60
    ld c, l                                       ; $6f91: $4d
    ld [hl], b                                    ; $6f92: $70
    ld b, h                                       ; $6f93: $44
    jr nc, @-$3e                                  ; $6f94: $30 $c0

    jr c, jr_0aa_6f60                             ; $6f96: $38 $c8

    nop                                           ; $6f98: $00
    add hl, bc                                    ; $6f99: $09
    ld sp, $1202                                  ; $6f9a: $31 $02 $12
    rlca                                          ; $6f9d: $07
    dec d                                         ; $6f9e: $15
    ldh [$c8], a                                  ; $6f9f: $e0 $c8
    nop                                           ; $6fa1: $00
    inc a                                         ; $6fa2: $3c
    db $fc                                        ; $6fa3: $fc
    ld a, [hl]                                    ; $6fa4: $7e
    jp nz, $83f1                                  ; $6fa5: $c2 $f1 $83

    db $e3                                        ; $6fa8: $e3
    dec c                                         ; $6fa9: $0d
    nop                                           ; $6faa: $00
    ld b, [hl]                                    ; $6fab: $46
    ld a, [de]                                    ; $6fac: $1a
    call nz, $9658                                ; $6fad: $c4 $58 $96
    adc b                                         ; $6fb0: $88
    inc bc                                        ; $6fb1: $03
    ld de, $8100                                  ; $6fb2: $11 $00 $81
    add hl, bc                                    ; $6fb5: $09
    ret nz                                        ; $6fb6: $c0

    inc c                                         ; $6fb7: $0c
    ldh [$ae], a                                  ; $6fb8: $e0 $ae
    ld [hl], b                                    ; $6fba: $70
    ld b, a                                       ; $6fbb: $47
    nop                                           ; $6fbc: $00
    sub b                                         ; $6fbd: $90
    dec de                                        ; $6fbe: $1b
    ret nz                                        ; $6fbf: $c0

    ld bc, $03e1                                  ; $6fc0: $01 $e1 $03
    cp $02                                        ; $6fc3: $fe $02
    inc b                                         ; $6fc5: $04
    db $fc                                        ; $6fc6: $fc
    ld b, $8f                                     ; $6fc7: $06 $8f
    ld [hl], a                                    ; $6fc9: $77
    ld [hl], b                                    ; $6fca: $70
    halt                                          ; $6fcb: $76
    ld bc, $51de                                  ; $6fcc: $01 $de $51
    nop                                           ; $6fcf: $00
    cp $3e                                        ; $6fd0: $fe $3e
    ret nz                                        ; $6fd2: $c0

    ld a, h                                       ; $6fd3: $7c
    ld a, e                                       ; $6fd4: $7b
    inc bc                                        ; $6fd5: $03
    jr jr_0aa_6fdb                                ; $6fd6: $18 $03

jr_0aa_6fd8:
    nop                                           ; $6fd8: $00
    jr nc, @+$0a                                  ; $6fd9: $30 $08

jr_0aa_6fdb:
    ld bc, $0973                                  ; $6fdb: $01 $73 $09
    add a                                         ; $6fde: $87
    add hl, de                                    ; $6fdf: $19
    add e                                         ; $6fe0: $83
    nop                                           ; $6fe1: $00
    ld hl, $e0aa                                  ; $6fe2: $21 $aa $e0
    ld hl, sp-$7d                                 ; $6fe5: $f8 $83
    ld h, a                                       ; $6fe7: $67
    rlca                                          ; $6fe8: $07
    ld c, c                                       ; $6fe9: $49
    nop                                           ; $6fea: $00
    cp h                                          ; $6feb: $bc
    or e                                          ; $6fec: $b3
    cp l                                          ; $6fed: $bd
    dec de                                        ; $6fee: $1b
    sub d                                         ; $6fef: $92
    ld e, $8f                                     ; $6ff0: $1e $8f
    ccf                                           ; $6ff2: $3f
    nop                                           ; $6ff3: $00
    db $10                                        ; $6ff4: $10
    adc a                                         ; $6ff5: $8f
    rra                                           ; $6ff6: $1f
    sub b                                         ; $6ff7: $90
    ret z                                         ; $6ff8: $c8

    pop bc                                        ; $6ff9: $c1
    sbc b                                         ; $6ffa: $98
    ld bc, $9500                                  ; $6ffb: $01 $00 $95
    add hl, bc                                    ; $6ffe: $09
    add hl, de                                    ; $6fff: $19

jr_0aa_7000:
    ld b, c                                       ; $7000: $41
    ld c, l                                       ; $7001: $4d
    ld de, $0307                                  ; $7002: $11 $07 $03
    nop                                           ; $7005: $00
    add b                                         ; $7006: $80
    ld a, [hl]                                    ; $7007: $7e
    jr c, jr_0aa_7000                             ; $7008: $38 $f6

    rlca                                          ; $700a: $07
    dec d                                         ; $700b: $15
    ld [de], a                                    ; $700c: $12
    dec d                                         ; $700d: $15
    nop                                           ; $700e: $00
    inc bc                                        ; $700f: $03
    inc b                                         ; $7010: $04
    di                                            ; $7011: $f3
    db $f4                                        ; $7012: $f4
    ld sp, hl                                     ; $7013: $f9
    ld a, [$fa03]                                 ; $7014: $fa $03 $fa
    nop                                           ; $7017: $00
    ld [bc], a                                    ; $7018: $02
    ld a, [$f905]                                 ; $7019: $fa $05 $f9
    adc h                                         ; $701c: $8c
    add b                                         ; $701d: $80
    add b                                         ; $701e: $80
    sbc a                                         ; $701f: $9f
    nop                                           ; $7020: $00
    inc bc                                        ; $7021: $03
    inc c                                         ; $7022: $0c
    jr nz, jr_0aa_704c                            ; $7023: $20 $27

    add e                                         ; $7025: $83
    add h                                         ; $7026: $84
    ld [hl], e                                    ; $7027: $73
    ldh [rP1], a                                  ; $7028: $e0 $00
    ld [hl], a                                    ; $702a: $77
    ret nz                                        ; $702b: $c0

    ld l, [hl]                                    ; $702c: $6e
    ld c, a                                       ; $702d: $4f
    pop af                                        ; $702e: $f1
    inc bc                                        ; $702f: $03
    db $f4                                        ; $7030: $f4
    rlca                                          ; $7031: $07
    nop                                           ; $7032: $00
    ldh a, [$87]                                  ; $7033: $f0 $87
    inc bc                                        ; $7035: $03
    ld h, b                                       ; $7036: $60
    rrca                                          ; $7037: $0f
    ld b, a                                       ; $7038: $47
    or [hl]                                       ; $7039: $b6
    xor [hl]                                      ; $703a: $ae
    nop                                           ; $703b: $00
    inc e                                         ; $703c: $1c
    inc bc                                        ; $703d: $03
    ld h, b                                       ; $703e: $60
    ld e, a                                       ; $703f: $5f
    db $fc                                        ; $7040: $fc
    add c                                         ; $7041: $81
    db $fc                                        ; $7042: $fc
    add l                                         ; $7043: $85

jr_0aa_7044:
    nop                                           ; $7044: $00
    db $fc                                        ; $7045: $fc
    dec b                                         ; $7046: $05
    db $fc                                        ; $7047: $fc
    adc l                                         ; $7048: $8d
    ldh [$9c], a                                  ; $7049: $e0 $9c
    nop                                           ; $704b: $00

jr_0aa_704c:
    inc b                                         ; $704c: $04
    nop                                           ; $704d: $00
    ldh [$d8], a                                  ; $704e: $e0 $d8
    db $fc                                        ; $7050: $fc
    ld a, [$e407]                                 ; $7051: $fa $07 $e4
    inc bc                                        ; $7054: $03
    ldh a, [rP1]                                  ; $7055: $f0 $00
    ld hl, sp-$35                                 ; $7057: $f8 $cb
    add sp, $00                                   ; $7059: $e8 $00
    inc d                                         ; $705b: $14
    add b                                         ; $705c: $80
    ccf                                           ; $705d: $3f
    ld a, $00                                     ; $705e: $3e $00
    and c                                         ; $7060: $a1
    sbc a                                         ; $7061: $9f
    sbc [hl]                                      ; $7062: $9e
    sub b                                         ; $7063: $90
    inc h                                         ; $7064: $24
    and b                                         ; $7065: $a0
    add c                                         ; $7066: $81
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    ld a, $18                                     ; $7069: $3e $18
    ld b, b                                       ; $706b: $40
    ld a, a                                       ; $706c: $7f
    rst $38                                       ; $706d: $ff
    ret nz                                        ; $706e: $c0

    ld b, b                                       ; $706f: $40
    adc $00                                       ; $7070: $ce $00
    add c                                         ; $7072: $81
    ldh [$e0], a                                  ; $7073: $e0 $e0
    sbc a                                         ; $7075: $9f
    rst $00                                       ; $7076: $c7
    dec sp                                        ; $7077: $3b
    jp Jump_000_003f                              ; $7078: $c3 $3f $00


    ld a, h                                       ; $707b: $7c
    cp l                                          ; $707c: $bd
    jr c, jr_0aa_7044                             ; $707d: $38 $c5

    ld a, a                                       ; $707f: $7f
    cp c                                          ; $7080: $b9
    db $e3                                        ; $7081: $e3
    sbc a                                         ; $7082: $9f
    nop                                           ; $7083: $00
    ret c                                         ; $7084: $d8

    and a                                         ; $7085: $a7
    sub b                                         ; $7086: $90
    ld l, [hl]                                    ; $7087: $6e
    ld bc, $03f9                                  ; $7088: $01 $f9 $03
    ld bc, $0200                                  ; $708b: $01 $00 $02
    inc b                                         ; $708e: $04
    ld [c], a                                     ; $708f: $e2
    db $e4                                        ; $7090: $e4
    db $ed                                        ; $7091: $ed
    add sp, -$17                                  ; $7092: $e8 $e9
    db $e4                                        ; $7094: $e4
    nop                                           ; $7095: $00
    pop hl                                        ; $7096: $e1
    ld [$e303], a                                 ; $7097: $ea $03 $e3
    jr jr_0aa_70d2                                ; $709a: $18 $36

    add $26                                       ; $709c: $c6 $26
    nop                                           ; $709e: $00
    xor [hl]                                      ; $709f: $ae
    ld l, [hl]                                    ; $70a0: $6e
    add b                                         ; $70a1: $80
    adc [hl]                                      ; $70a2: $8e
    ret nz                                        ; $70a3: $c0

    adc [hl]                                      ; $70a4: $8e
    adc [hl]                                      ; $70a5: $8e
    ret nz                                        ; $70a6: $c0

    nop                                           ; $70a7: $00
    ld e, $80                                     ; $70a8: $1e $80
    ld b, b                                       ; $70aa: $40
    rra                                           ; $70ab: $1f
    ld b, b                                       ; $70ac: $40
    ld a, a                                       ; $70ad: $7f
    jr nz, jr_0aa_70cf                            ; $70ae: $20 $1f

    nop                                           ; $70b0: $00
    rra                                           ; $70b1: $1f
    rrca                                          ; $70b2: $0f
    jr jr_0aa_70cc                                ; $70b3: $18 $17

    rrca                                          ; $70b5: $0f
    ld [$87f8], sp                                ; $70b6: $08 $f8 $87
    nop                                           ; $70b9: $00
    ld a, a                                       ; $70ba: $7f
    nop                                           ; $70bb: $00
    ccf                                           ; $70bc: $3f
    rrca                                          ; $70bd: $0f
    ld hl, sp-$39                                 ; $70be: $f8 $c7
    rra                                           ; $70c0: $1f
    jr jr_0aa_70c3                                ; $70c1: $18 $00

jr_0aa_70c3:
    db $fc                                        ; $70c3: $fc
    di                                            ; $70c4: $f3
    ld [bc], a                                    ; $70c5: $02
    ld bc, $01fe                                  ; $70c6: $01 $fe $01
    db $fc                                        ; $70c9: $fc
    pop af                                        ; $70ca: $f1
    nop                                           ; $70cb: $00

jr_0aa_70cc:
    ld sp, hl                                     ; $70cc: $f9
    ei                                            ; $70cd: $fb
    inc de                                        ; $70ce: $13

jr_0aa_70cf:
    ld a, [$1f00]                                 ; $70cf: $fa $00 $1f

jr_0aa_70d2:
    rst $20                                       ; $70d2: $e7
    rlca                                          ; $70d3: $07
    nop                                           ; $70d4: $00
    ld bc, $02f9                                  ; $70d5: $01 $f9 $02
    db $fc                                        ; $70d8: $fc
    ld a, l                                       ; $70d9: $7d
    add d                                         ; $70da: $82
    dec a                                         ; $70db: $3d
    ld a, [hl-]                                   ; $70dc: $3a
    nop                                           ; $70dd: $00
    ld a, c                                       ; $70de: $79
    ld b, [hl]                                    ; $70df: $46
    dec e                                         ; $70e0: $1d
    db $e3                                        ; $70e1: $e3
    ld a, $5d                                     ; $70e2: $3e $5d
    nop                                           ; $70e4: $00
    ccf                                           ; $70e5: $3f
    nop                                           ; $70e6: $00
    rst $38                                       ; $70e7: $ff
    ccf                                           ; $70e8: $3f
    db $fc                                        ; $70e9: $fc
    ld bc, $017d                                  ; $70ea: $01 $7d $01
    ld a, d                                       ; $70ed: $7a
    inc bc                                        ; $70ee: $03
    nop                                           ; $70ef: $00
    inc bc                                        ; $70f0: $03
    ld a, d                                       ; $70f1: $7a
    inc bc                                        ; $70f2: $03
    add hl, sp                                    ; $70f3: $39
    ld b, a                                       ; $70f4: $47
    call c, $f87f                                 ; $70f5: $dc $7f $f8
    ld [de], a                                    ; $70f8: $12
    nop                                           ; $70f9: $00
    ret nz                                        ; $70fa: $c0

    add b                                         ; $70fb: $80
    rst $10                                       ; $70fc: $d7
    ld bc, $0080                                  ; $70fd: $01 $80 $00
    ld b, $00                                     ; $7100: $06 $00
    nop                                           ; $7102: $00
    inc b                                         ; $7103: $04
    ld [bc], a                                    ; $7104: $02
    ld hl, sp-$10                                 ; $7105: $f8 $f0
    nop                                           ; $7107: $00
    rst $38                                       ; $7108: $ff
    and l                                         ; $7109: $a5
    ld b, d                                       ; $710a: $42
    ldh [$cf], a                                  ; $710b: $e0 $cf
    nop                                           ; $710d: $00
    ldh [rIF], a                                  ; $710e: $e0 $0f
    ld h, b                                       ; $7110: $60
    ld c, a                                       ; $7111: $4f
    ldh a, [$87]                                  ; $7112: $f0 $87
    ldh a, [$80]                                  ; $7114: $f0 $80
    nop                                           ; $7116: $00
    ld hl, $381e                                  ; $7117: $21 $1e $38
    daa                                           ; $711a: $27
    rrca                                          ; $711b: $0f
    inc sp                                        ; $711c: $33
    rra                                           ; $711d: $1f
    add a                                         ; $711e: $87
    db $10                                        ; $711f: $10
    db $e3                                        ; $7120: $e3
    rlca                                          ; $7121: $07
    ld hl, sp+$22                                 ; $7122: $f8 $22
    db $10                                        ; $7124: $10
    db $e3                                        ; $7125: $e3
    inc hl                                        ; $7126: $23
    ld sp, $00c1                                  ; $7127: $31 $c1 $00
    rrca                                          ; $712a: $0f
    pop af                                        ; $712b: $f1
    rlca                                          ; $712c: $07
    ldh a, [rTAC]                                 ; $712d: $f0 $07
    rst $28                                       ; $712f: $ef
    nop                                           ; $7130: $00
    inc c                                         ; $7131: $0c
    ld b, b                                       ; $7132: $40
    add e                                         ; $7133: $83
    ld b, c                                       ; $7134: $41
    nop                                           ; $7135: $00
    pop hl                                        ; $7136: $e1
    ld a, a                                       ; $7137: $7f
    ldh a, [$cf]                                  ; $7138: $f0 $cf
    inc e                                         ; $713a: $1c
    inc de                                        ; $713b: $13
    nop                                           ; $713c: $00
    ld a, [c]                                     ; $713d: $f2

jr_0aa_713e:
    ld a, a                                       ; $713e: $7f
    add hl, sp                                    ; $713f: $39
    ld c, d                                       ; $7140: $4a
    inc c                                         ; $7141: $0c
    dec e                                         ; $7142: $1d
    add $84                                       ; $7143: $c6 $84
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    ld a, [hl]                                    ; $7148: $7e
    db $d3                                        ; $7149: $d3
    add e                                         ; $714a: $83
    ld b, h                                       ; $714b: $44
    rst $00                                       ; $714c: $c7
    jp hl                                         ; $714d: $e9


    nop                                           ; $714e: $00
    ld b, $05                                     ; $714f: $06 $05
    ld b, h                                       ; $7151: $44
    inc sp                                        ; $7152: $33
    ret nz                                        ; $7153: $c0

    ld [hl], $e0                                  ; $7154: $36 $e0
    adc $00                                       ; $7156: $ce $00
    inc bc                                        ; $7158: $03
    dec c                                         ; $7159: $0d
    rst $20                                       ; $715a: $e7
    dec de                                        ; $715b: $1b
    inc c                                         ; $715c: $0c
    ldh a, [rNR32]                                ; $715d: $f0 $1c
    db $e4                                        ; $715f: $e4
    add b                                         ; $7160: $80
    nop                                           ; $7161: $00
    ld l, e                                       ; $7162: $6b
    db $10                                        ; $7163: $10
    inc bc                                        ; $7164: $03
    ld c, h                                       ; $7165: $4c
    ld [bc], a                                    ; $7166: $02
    ld h, b                                       ; $7167: $60
    nop                                           ; $7168: $00
    ld bc, $23f8                                  ; $7169: $01 $f8 $23
    ld [$01fe], sp                                ; $716c: $08 $fe $01
    db $fc                                        ; $716f: $fc
    inc bc                                        ; $7170: $03
    ld hl, sp+$00                                 ; $7171: $f8 $00
    ld b, $e0                                     ; $7173: $06 $e0
    call c, Call_000_00c1                         ; $7175: $dc $c1 $00
    rst $20                                       ; $7178: $e7
    jr jr_0aa_713e                                ; $7179: $18 $c3

    nop                                           ; $717b: $00
    inc a                                         ; $717c: $3c
    add c                                         ; $717d: $81
    ld h, [hl]                                    ; $717e: $66
    nop                                           ; $717f: $00
    jp RST_18                                     ; $7180: $c3 $18 $00


    inc a                                         ; $7183: $3c
    ld b, b                                       ; $7184: $40
    xor a                                         ; $7185: $af
    dec a                                         ; $7186: $3d
    jr nz, @+$01                                  ; $7187: $20 $ff

    nop                                           ; $7189: $00
    ld a, a                                       ; $718a: $7f
    nop                                           ; $718b: $00
    add b                                         ; $718c: $80

jr_0aa_718d:
    ccf                                           ; $718d: $3f
    inc bc                                        ; $718e: $03
    ret nz                                        ; $718f: $c0

    rra                                           ; $7190: $1f
    ld h, a                                       ; $7191: $67
    rlca                                          ; $7192: $07
    dec sp                                        ; $7193: $3b
    add e                                         ; $7194: $83
    ld d, b                                       ; $7195: $50
    ld hl, sp+$58                                 ; $7196: $f8 $58
    ld e, b                                       ; $7198: $58
    add b                                         ; $7199: $80
    ld e, h                                       ; $719a: $5c
    jr nz, jr_0aa_718d                            ; $719b: $20 $f0

    ld c, $e0                                     ; $719d: $0e $e0
    reti                                          ; $719f: $d9


    pop bc                                        ; $71a0: $c1
    ld sp, $0007                                  ; $71a1: $31 $07 $00
    db $e3                                        ; $71a4: $e3
    rrca                                          ; $71a5: $0f
    or b                                          ; $71a6: $b0
    add e                                         ; $71a7: $83
    ld h, b                                       ; $71a8: $60
    ld l, h                                       ; $71a9: $6c
    pop bc                                        ; $71aa: $c1
    ret nz                                        ; $71ab: $c0

    nop                                           ; $71ac: $00
    inc e                                         ; $71ad: $1c
    inc e                                         ; $71ae: $1c
    ld a, h                                       ; $71af: $7c
    ld b, e                                       ; $71b0: $43
    ld [hl], e                                    ; $71b1: $73
    ld a, [hl]                                    ; $71b2: $7e
    adc a                                         ; $71b3: $8f
    cp [hl]                                       ; $71b4: $be
    nop                                           ; $71b5: $00
    add hl, sp                                    ; $71b6: $39
    ld b, [hl]                                    ; $71b7: $46
    rst $38                                       ; $71b8: $ff
    nop                                           ; $71b9: $00
    rra                                           ; $71ba: $1f
    nop                                           ; $71bb: $00
    ret nz                                        ; $71bc: $c0

    rst $08                                       ; $71bd: $cf
    nop                                           ; $71be: $00
    ldh [rTAC], a                                 ; $71bf: $e0 $07
    db $db                                        ; $71c1: $db
    inc hl                                        ; $71c2: $23
    add l                                         ; $71c3: $85
    ld a, c                                       ; $71c4: $79
    xor $04                                       ; $71c5: $ee $04
    nop                                           ; $71c7: $00
    ld [bc], a                                    ; $71c8: $02
    ldh a, [$0d]                                  ; $71c9: $f0 $0d
    pop bc                                        ; $71cb: $c1
    ld b, $f0                                     ; $71cc: $06 $f0
    ld a, e                                       ; $71ce: $7b
    ld hl, sp+$06                                 ; $71cf: $f8 $06
    nop                                           ; $71d1: $00
    db $fc                                        ; $71d2: $fc
    cp [hl]                                       ; $71d3: $be
    ld b, c                                       ; $71d4: $41
    sub c                                         ; $71d5: $91
    ld a, b                                       ; $71d6: $78
    nop                                           ; $71d7: $00
    ld a, h                                       ; $71d8: $7c
    jr nc, @+$11                                  ; $71d9: $30 $0f

    nop                                           ; $71db: $00
    ld [hl], a                                    ; $71dc: $77
    rlca                                          ; $71dd: $07
    dec de                                        ; $71de: $1b
    add e                                         ; $71df: $83
    db $ec                                        ; $71e0: $ec
    ldh [rTAC], a                                 ; $71e1: $e0 $07
    ldh a, [$e0]                                  ; $71e3: $f0 $e0
    ret nc                                        ; $71e5: $d0

    ld c, b                                       ; $71e6: $48
    sbc b                                         ; $71e7: $98
    ld [$185c], sp                                ; $71e8: $08 $5c $18
    ret c                                         ; $71eb: $d8

    pop bc                                        ; $71ec: $c1
    jr nc, jr_0aa_71f6                            ; $71ed: $30 $07

    ld l, a                                       ; $71ef: $6f
    nop                                           ; $71f0: $00
    rrca                                          ; $71f1: $0f
    ld h, b                                       ; $71f2: $60
    rrca                                          ; $71f3: $0f
    and b                                         ; $71f4: $a0
    adc a                                         ; $71f5: $8f

jr_0aa_71f6:
    add a                                         ; $71f6: $87
    rra                                           ; $71f7: $1f
    ld a, a                                       ; $71f8: $7f
    nop                                           ; $71f9: $00
    rlca                                          ; $71fa: $07
    ei                                            ; $71fb: $fb
    rra                                           ; $71fc: $1f
    ld b, $e2                                     ; $71fd: $06 $e2
    rra                                           ; $71ff: $1f
    jp nz, $001f                                  ; $7200: $c2 $1f $00

    jp nc, $c103                                  ; $7203: $d2 $03 $c1

    rrca                                          ; $7206: $0f
    pop af                                        ; $7207: $f1
    inc bc                                        ; $7208: $03
    ld a, a                                       ; $7209: $7f

jr_0aa_720a:
    ld b, $00                                     ; $720a: $06 $00
    rrca                                          ; $720c: $0f
    dec c                                         ; $720d: $0d
    ld e, $f1                                     ; $720e: $1e $f1
    db $ec                                        ; $7210: $ec
    ret nc                                        ; $7211: $d0

    swap h                                        ; $7212: $cb $34
    nop                                           ; $7214: $00
    xor $71                                       ; $7215: $ee $71
    xor [hl]                                      ; $7217: $ae
    adc a                                         ; $7218: $8f
    sbc a                                         ; $7219: $9f
    ld hl, sp-$0e                                 ; $721a: $f8 $f2
    ld a, d                                       ; $721c: $7a
    nop                                           ; $721d: $00
    cp $39                                        ; $721e: $fe $39
    push bc                                       ; $7220: $c5
    jr jr_0aa_720a                                ; $7221: $18 $e7

    ld sp, $3338                                  ; $7223: $31 $38 $33
    nop                                           ; $7226: $00
    dec sp                                        ; $7227: $3b
    add hl, sp                                    ; $7228: $39
    jp Jump_000_01fb                              ; $7229: $c3 $fb $01


    nop                                           ; $722c: $00
    rst $38                                       ; $722d: $ff
    ret nz                                        ; $722e: $c0

    nop                                           ; $722f: $00
    nop                                           ; $7230: $00
    ret nz                                        ; $7231: $c0

    ld a, b                                       ; $7232: $78
    ldh [$50], a                                  ; $7233: $e0 $50
    ldh [$d0], a                                  ; $7235: $e0 $d0
    add b                                         ; $7237: $80
    nop                                           ; $7238: $00
    ld h, b                                       ; $7239: $60
    ld b, b                                       ; $723a: $40
    ret nz                                        ; $723b: $c0

    ret z                                         ; $723c: $c8

    ld c, b                                       ; $723d: $48
    ld bc, $18fd                                  ; $723e: $01 $fd $18
    nop                                           ; $7241: $00
    and $18                                       ; $7242: $e6 $18
    nop                                           ; $7244: $00
    jr jr_0aa_7283                                ; $7245: $18 $3c

    db $e3                                        ; $7247: $e3
    push de                                       ; $7248: $d5
    rst $20                                       ; $7249: $e7
    inc b                                         ; $724a: $04
    ret nc                                        ; $724b: $d0

    scf                                           ; $724c: $37
    ld a, d                                       ; $724d: $7a
    db $e4                                        ; $724e: $e4
    ld h, a                                       ; $724f: $67
    ld a, h                                       ; $7250: $7c
    ld [$0770], sp                                ; $7251: $08 $70 $07
    nop                                           ; $7254: $00
    sbc b                                         ; $7255: $98
    add e                                         ; $7256: $83
    inc c                                         ; $7257: $0c
    ldh [rTMA], a                                 ; $7258: $e0 $06
    ldh a, [rTMA]                                 ; $725a: $f0 $06
    ldh a, [rP1]                                  ; $725c: $f0 $00
    dec b                                         ; $725e: $05
    pop af                                        ; $725f: $f1
    and b                                         ; $7260: $a0
    adc a                                         ; $7261: $8f
    or b                                          ; $7262: $b0
    add a                                         ; $7263: $87
    ret nc                                        ; $7264: $d0

    rst $00                                       ; $7265: $c7
    ld [bc], a                                    ; $7266: $02
    ret nc                                        ; $7267: $d0

    rst $00                                       ; $7268: $c7
    ret c                                         ; $7269: $d8

    jp $e3e8                                      ; $726a: $c3 $e8 $e3


    ld [bc], a                                    ; $726d: $02
    ld [$001f], sp                                ; $726e: $08 $1f $00
    ld l, [hl]                                    ; $7271: $6e
    inc de                                        ; $7272: $13
    ld l, $07                                     ; $7273: $2e $07
    jr c, jr_0aa_727a                             ; $7275: $38 $03

    inc e                                         ; $7277: $1c
    ld [bc], a                                    ; $7278: $02
    nop                                           ; $7279: $00

jr_0aa_727a:
    rrca                                          ; $727a: $0f
    rst $38                                       ; $727b: $ff
    db $fc                                        ; $727c: $fc
    nop                                           ; $727d: $00
    inc bc                                        ; $727e: $03
    rlca                                          ; $727f: $07
    dec b                                         ; $7280: $05
    rst $08                                       ; $7281: $cf
    nop                                           ; $7282: $00

jr_0aa_7283:
    rra                                           ; $7283: $1f
    rra                                           ; $7284: $1f
    ldh [$57], a                                  ; $7285: $e0 $57
    ret nz                                        ; $7287: $c0

    dec de                                        ; $7288: $1b
    rst $30                                       ; $7289: $f7
    dec e                                         ; $728a: $1d
    nop                                           ; $728b: $00
    dec sp                                        ; $728c: $3b
    ld e, $3d                                     ; $728d: $1e $3d
    rrca                                          ; $728f: $0f
    ld a, [hl]                                    ; $7290: $7e
    ret c                                         ; $7291: $d8

    ccf                                           ; $7292: $3f
    cp $00                                        ; $7293: $fe $00
    ld bc, $01e6                                  ; $7295: $01 $e6 $01
    add $e4                                       ; $7298: $c6 $e4
    db $e4                                        ; $729a: $e4
    cp $f8                                        ; $729b: $fe $f8
    nop                                           ; $729d: $00
    inc b                                         ; $729e: $04
    ld b, $fa                                     ; $729f: $06 $fa
    db $eb                                        ; $72a1: $eb
    rlca                                          ; $72a2: $07
    add h                                         ; $72a3: $84
    ld h, b                                       ; $72a4: $60
    add b                                         ; $72a5: $80
    nop                                           ; $72a6: $00
    ld a, b                                       ; $72a7: $78
    ld bc, $01f1                                  ; $72a8: $01 $f1 $01
    rra                                           ; $72ab: $1f
    ld bc, $ff7e                                  ; $72ac: $01 $7e $ff
    nop                                           ; $72af: $00
    ld a, a                                       ; $72b0: $7f
    nop                                           ; $72b1: $00
    ldh [rNR23], a                                ; $72b2: $e0 $18
    ldh [$3c], a                                  ; $72b4: $e0 $3c
    ldh a, [$8d]                                  ; $72b6: $f0 $8d
    nop                                           ; $72b8: $00
    ld h, [hl]                                    ; $72b9: $66
    xor e                                         ; $72ba: $ab
    ld a, b                                       ; $72bb: $78
    push hl                                       ; $72bc: $e5
    ld h, $fa                                     ; $72bd: $26 $fa
    dec e                                         ; $72bf: $1d
    ld [hl], a                                    ; $72c0: $77
    nop                                           ; $72c1: $00
    db $fd                                        ; $72c2: $fd
    scf                                           ; $72c3: $37
    ld [hl], d                                    ; $72c4: $72
    ld c, [hl]                                    ; $72c5: $4e
    ld [hl], b                                    ; $72c6: $70
    ld l, $32                                     ; $72c7: $2e $32
    dec b                                         ; $72c9: $05
    nop                                           ; $72ca: $00
    pop af                                        ; $72cb: $f1
    dec c                                         ; $72cc: $0d
    pop hl                                        ; $72cd: $e1
    dec bc                                        ; $72ce: $0b
    db $e3                                        ; $72cf: $e3
    dec bc                                        ; $72d0: $0b
    db $e3                                        ; $72d1: $e3
    ld e, b                                       ; $72d2: $58
    nop                                           ; $72d3: $00
    sbc b                                         ; $72d4: $98
    sub b                                         ; $72d5: $90
    ret nc                                        ; $72d6: $d0

    ret nc                                        ; $72d7: $d0

jr_0aa_72d8:
    ld d, a                                       ; $72d8: $57
    db $10                                        ; $72d9: $10
    rla                                           ; $72da: $17
    db $ec                                        ; $72db: $ec
    nop                                           ; $72dc: $00
    pop hl                                        ; $72dd: $e1
    db $f4                                        ; $72de: $f4
    pop af                                        ; $72df: $f1
    db $f4                                        ; $72e0: $f4
    pop af                                        ; $72e1: $f1
    or $f1                                        ; $72e2: $f6 $f1
    ld a, [$f900]                                 ; $72e4: $fa $00 $f9
    ei                                            ; $72e7: $fb
    ld hl, sp-$06                                 ; $72e8: $f8 $fa
    ld sp, hl                                     ; $72ea: $f9
    db $fc                                        ; $72eb: $fc
    db $fd                                        ; $72ec: $fd
    nop                                           ; $72ed: $00
    nop                                           ; $72ee: $00
    ccf                                           ; $72ef: $3f
    ccf                                           ; $72f0: $3f
    ld c, a                                       ; $72f1: $4f
    ld a, a                                       ; $72f2: $7f
    cp l                                          ; $72f3: $bd
    add hl, de                                    ; $72f4: $19
    ld sp, hl                                     ; $72f5: $f9
    dec sp                                        ; $72f6: $3b
    nop                                           ; $72f7: $00
    inc sp                                        ; $72f8: $33
    nop                                           ; $72f9: $00
    rst $30                                       ; $72fa: $f7
    rlca                                          ; $72fb: $07
    pop hl                                        ; $72fc: $e1
    add hl, de                                    ; $72fd: $19
    adc [hl]                                      ; $72fe: $8e
    dec a                                         ; $72ff: $3d

Call_0aa_7300:
    nop                                           ; $7300: $00
    ld c, l                                       ; $7301: $4d
    rra                                           ; $7302: $1f
    adc [hl]                                      ; $7303: $8e
    ld [$fdef], sp                                ; $7304: $08 $ef $fd
    cp $cc                                        ; $7307: $fe $cc
    nop                                           ; $7309: $00
    call c, $9fce                                 ; $730a: $dc $ce $9f
    add a                                         ; $730d: $87
    adc $19                                       ; $730e: $ce $19
    add a                                         ; $7310: $87
    db $e4                                        ; $7311: $e4
    nop                                           ; $7312: $00
    rst $28                                       ; $7313: $ef
    ld a, [c]                                     ; $7314: $f2
    add hl, bc                                    ; $7315: $09
    ld a, a                                       ; $7316: $7f
    add [hl]                                      ; $7317: $86
    rlca                                          ; $7318: $07
    ld b, b                                       ; $7319: $40
    sub e                                         ; $731a: $93
    nop                                           ; $731b: $00
    inc a                                         ; $731c: $3c
    jr c, jr_0aa_72d8                             ; $731d: $38 $b9

    inc a                                         ; $731f: $3c
    ld e, b                                       ; $7320: $58
    ld e, h                                       ; $7321: $5c
    cp [hl]                                       ; $7322: $be
    db $fc                                        ; $7323: $fc
    nop                                           ; $7324: $00
    ld a, [hl]                                    ; $7325: $7e
    db $fc                                        ; $7326: $fc
    ld a, $f8                                     ; $7327: $3e $f8
    ld b, $fc                                     ; $7329: $06 $fc
    add $c6                                       ; $732b: $c6 $c6
    nop                                           ; $732d: $00
    cp b                                          ; $732e: $b8
    di                                            ; $732f: $f3
    inc l                                         ; $7330: $2c
    add hl, bc                                    ; $7331: $09
    pop af                                        ; $7332: $f1
    or e                                          ; $7333: $b3
    ld c, h                                       ; $7334: $4c
    ld h, $00                                     ; $7335: $26 $00
    inc e                                         ; $7337: $1c
    ld [de], a                                    ; $7338: $12
    inc c                                         ; $7339: $0c
    ld a, [de]                                    ; $733a: $1a
    inc c                                         ; $733b: $0c
    ld a, $0c                                     ; $733c: $3e $0c
    inc e                                         ; $733e: $1c

jr_0aa_733f:
    nop                                           ; $733f: $00
    ld l, $dc                                     ; $7340: $2e $dc
    ld a, $a2                                     ; $7342: $3e $a2
    ld e, [hl]                                    ; $7344: $5e
    ldh [$3e], a                                  ; $7345: $e0 $3e
    or b                                          ; $7347: $b0
    nop                                           ; $7348: $00
    add a                                         ; $7349: $87
    and b                                         ; $734a: $a0
    adc a                                         ; $734b: $8f
    and b                                         ; $734c: $a0
    adc a                                         ; $734d: $8f
    ld h, b                                       ; $734e: $60
    rrca                                          ; $734f: $0f
    ld b, b                                       ; $7350: $40
    nop                                           ; $7351: $00
    rra                                           ; $7352: $1f
    ld b, b                                       ; $7353: $40
    rra                                           ; $7354: $1f

jr_0aa_7355:
    ret nz                                        ; $7355: $c0

    rra                                           ; $7356: $1f
    add b                                         ; $7357: $80
    ccf                                           ; $7358: $3f

jr_0aa_7359:
    db $fd                                        ; $7359: $fd
    nop                                           ; $735a: $00
    db $fc                                        ; $735b: $fc
    db $fc                                        ; $735c: $fc
    db $fd                                        ; $735d: $fd
    rst $38                                       ; $735e: $ff
    cp $03                                        ; $735f: $fe $03
    ld bc, $2002                                  ; $7361: $01 $02 $20
    ld bc, $3b01                                  ; $7364: $01 $01 $3b
    ld [de], a                                    ; $7367: $12
    ld b, c                                       ; $7368: $41
    ld a, $a6                                     ; $7369: $3e $a6
    inc h                                         ; $736b: $24
    push de                                       ; $736c: $d5
    nop                                           ; $736d: $00
    inc sp                                        ; $736e: $33
    rst $20                                       ; $736f: $e7
    ld [hl], c                                    ; $7370: $71
    rst $00                                       ; $7371: $c7
    xor h                                         ; $7372: $ac
    ldh a, [rIF]                                  ; $7373: $f0 $0f
    ld e, [hl]                                    ; $7375: $5e
    nop                                           ; $7376: $00
    ld b, c                                       ; $7377: $41
    ld b, b                                       ; $7378: $40
    ld e, a                                       ; $7379: $5f
    or b                                          ; $737a: $b0
    ld c, a                                       ; $737b: $4f
    ld h, b                                       ; $737c: $60
    add c                                         ; $737d: $81
    rla                                           ; $737e: $17
    nop                                           ; $737f: $00
    inc d                                         ; $7380: $14
    and c                                         ; $7381: $a1
    ld d, a                                       ; $7382: $57
    ldh [rNR22], a                                ; $7383: $e0 $17
    ld [c], a                                     ; $7385: $e2
    scf                                           ; $7386: $37
    ld hl, sp+$00                                 ; $7387: $f8 $00
    cpl                                           ; $7389: $2f
    ldh a, [$0c]                                  ; $738a: $f0 $0c
    call nz, Call_000_223e                        ; $738c: $c4 $3e $22
    ccf                                           ; $738f: $3f
    sbc a                                         ; $7390: $9f
    nop                                           ; $7391: $00

jr_0aa_7392:
    sbc a                                         ; $7392: $9f
    ret c                                         ; $7393: $d8

    jr z, jr_0aa_7355                             ; $7394: $28 $bf

    and b                                         ; $7396: $a0
    ld h, $a6                                     ; $7397: $26 $a6
    add b                                         ; $7399: $80
    nop                                           ; $739a: $00
    add c                                         ; $739b: $81
    ret nz                                        ; $739c: $c0

    add c                                         ; $739d: $81
    ccf                                           ; $739e: $3f
    rst $18                                       ; $739f: $df
    jr nc, jr_0aa_7392                            ; $73a0: $30 $f0

    ld h, b                                       ; $73a2: $60
    nop                                           ; $73a3: $00

jr_0aa_73a4:
    pop hl                                        ; $73a4: $e1
    ret nz                                        ; $73a5: $c0

    add c                                         ; $73a6: $81
    jr c, jr_0aa_7359                             ; $73a7: $38 $b0

    db $fc                                        ; $73a9: $fc
    ld a, h                                       ; $73aa: $7c
    cp $00                                        ; $73ab: $fe $00
    add d                                         ; $73ad: $82
    rst $00                                       ; $73ae: $c7
    jr c, jr_0aa_733f                             ; $73af: $38 $8e

    ld h, b                                       ; $73b1: $60
    dec b                                         ; $73b2: $05

jr_0aa_73b3:
    push af                                       ; $73b3: $f5
    push af                                       ; $73b4: $f5
    nop                                           ; $73b5: $00
    ld hl, sp-$13                                 ; $73b6: $f8 $ed
    ldh a, [rNR33]                                ; $73b8: $f0 $1d
    pop af                                        ; $73ba: $f1
    dec sp                                        ; $73bb: $3b
    inc hl                                        ; $73bc: $23
    ret nc                                        ; $73bd: $d0

    nop                                           ; $73be: $00
    ld [$aad0], a                                 ; $73bf: $ea $d0 $aa
    add b                                         ; $73c2: $80
    ccf                                           ; $73c3: $3f
    add b                                         ; $73c4: $80
    ccf                                           ; $73c5: $3f
    ld a, a                                       ; $73c6: $7f
    ldh [$50], a                                  ; $73c7: $e0 $50
    ld [bc], a                                    ; $73c9: $02
    inc b                                         ; $73ca: $04
    ld [$8a9c], sp                                ; $73cb: $08 $9c $8a
    ld l, h                                       ; $73ce: $6c
    ld h, e                                       ; $73cf: $63
    ld l, $2d                                     ; $73d0: $2e $2d
    cpl                                           ; $73d2: $2f
    ld [bc], a                                    ; $73d3: $02
    ld l, $87                                     ; $73d4: $2e $87
    or b                                          ; $73d6: $b0
    ret nz                                        ; $73d7: $c0

    ret nc                                        ; $73d8: $d0

    rra                                           ; $73d9: $1f
    sbc c                                         ; $73da: $99
    ld bc, $0000                                  ; $73db: $01 $00 $00
    nop                                           ; $73de: $00
    inc bc                                        ; $73df: $03
    ei                                            ; $73e0: $fb
    nop                                           ; $73e1: $00
    ld bc, $39f8                                  ; $73e2: $01 $f8 $39
    ei                                            ; $73e5: $fb
    ld h, b                                       ; $73e6: $60
    rlca                                          ; $73e7: $07
    add [hl]                                      ; $73e8: $86
    ld a, [bc]                                    ; $73e9: $0a
    call z, $200a                                 ; $73ea: $cc $0a $20
    pop hl                                        ; $73ed: $e1
    and c                                         ; $73ee: $a1
    ld hl, sp+$3f                                 ; $73ef: $f8 $3f
    jr nc, jr_0aa_73b3                            ; $73f1: $30 $c0

    jp nz, $0258                                  ; $73f3: $c2 $58 $02

    ld e, $1a                                     ; $73f6: $1e $1a
    ld a, l                                       ; $73f8: $7d
    sbc a                                         ; $73f9: $9f
    pop bc                                        ; $73fa: $c1
    rst $00                                       ; $73fb: $c7
    ld [$8c00], sp                                ; $73fc: $08 $00 $8c
    inc a                                         ; $73ff: $3c
    ld e, $10                                     ; $7400: $1e $10
    jr z, jr_0aa_73a4                             ; $7402: $28 $a0

    ld d, [hl]                                    ; $7404: $56
    add b                                         ; $7405: $80
    nop                                           ; $7406: $00
    db $f4                                        ; $7407: $f4
    inc [hl]                                      ; $7408: $34
    call nz, $ec0c                                ; $7409: $c4 $0c $ec
    ld [$f803], sp                                ; $740c: $08 $03 $f8
    jr nc, @+$05                                  ; $740f: $30 $03

    inc bc                                        ; $7411: $03
    inc [hl]                                      ; $7412: $34
    jr nz, jr_0aa_7419                            ; $7413: $20 $04

    ld c, e                                       ; $7415: $4b
    db $10                                        ; $7416: $10
    inc bc                                        ; $7417: $03
    adc a                                         ; $7418: $8f

jr_0aa_7419:
    ld [bc], a                                    ; $7419: $02
    ld b, b                                       ; $741a: $40
    nop                                           ; $741b: $00
    ld bc, $0250                                  ; $741c: $01 $50 $02
    ld [bc], a                                    ; $741f: $02
    rlca                                          ; $7420: $07
    nop                                           ; $7421: $00
    ld [$000f], sp                                ; $7422: $08 $0f $00
    rrca                                          ; $7425: $0f
    inc c                                         ; $7426: $0c
    inc c                                         ; $7427: $0c
    dec bc                                        ; $7428: $0b
    rlca                                          ; $7429: $07

jr_0aa_742a:
    inc b                                         ; $742a: $04
    inc bc                                        ; $742b: $03
    nop                                           ; $742c: $00
    nop                                           ; $742d: $00
    ld bc, $ff00                                  ; $742e: $01 $00 $ff
    nop                                           ; $7431: $00
    ld hl, sp+$00                                 ; $7432: $f8 $00
    nop                                           ; $7434: $00
    ld hl, sp+$00                                 ; $7435: $f8 $00
    ldh [$9f], a                                  ; $7437: $e0 $9f
    rra                                           ; $7439: $1f
    ld h, a                                       ; $743a: $67
    inc bc                                        ; $743b: $03
    inc a                                         ; $743c: $3c

jr_0aa_743d:
    ccf                                           ; $743d: $3f
    ld c, a                                       ; $743e: $4f
    nop                                           ; $743f: $00
    rrca                                          ; $7440: $0f
    inc sp                                        ; $7441: $33
    db $fc                                        ; $7442: $fc
    db $e3                                        ; $7443: $e3
    nop                                           ; $7444: $00
    rst $20                                       ; $7445: $e7
    jr @-$3b                                      ; $7446: $18 $c3

    nop                                           ; $7448: $00
    ret nz                                        ; $7449: $c0

    db $fc                                        ; $744a: $fc
    ldh [rNR52], a                                ; $744b: $e0 $26
    jr c, jr_0aa_742a                             ; $744d: $38 $db

    call c, $082c                                 ; $744f: $dc $2c $08
    ret nc                                        ; $7452: $d0

    jr c, jr_0aa_743d                             ; $7453: $38 $e8

    inc e                                         ; $7455: $1c
    ld b, b                                       ; $7456: $40
    db $10                                        ; $7457: $10
    rst $38                                       ; $7458: $ff
    inc bc                                        ; $7459: $03
    ld a, h                                       ; $745a: $7c
    nop                                           ; $745b: $00
    rra                                           ; $745c: $1f
    sbc h                                         ; $745d: $9c
    ld a, a                                       ; $745e: $7f
    ldh [rTAC], a                                 ; $745f: $e0 $07
    ld a, b                                       ; $7461: $78
    inc de                                        ; $7462: $13
    ret c                                         ; $7463: $d8

jr_0aa_7464:
    add b                                         ; $7464: $80
    ld d, b                                       ; $7465: $50
    jr jr_0aa_7464                                ; $7466: $18 $fc

    nop                                           ; $7468: $00
    ldh a, [$fc]                                  ; $7469: $f0 $fc
    ld a, a                                       ; $746b: $7f
    add b                                         ; $746c: $80
    ld c, $10                                     ; $746d: $0e $10
    rst $38                                       ; $746f: $ff
    ld hl, sp-$20                                 ; $7470: $f8 $e0
    ld h, b                                       ; $7472: $60
    jr z, @-$7e                                   ; $7473: $28 $80

    add b                                         ; $7475: $80
    add b                                         ; $7476: $80
    ld h, b                                       ; $7477: $60

Call_0aa_7478:
    nop                                           ; $7478: $00
    db $10                                        ; $7479: $10
    ldh a, [$f0]                                  ; $747a: $f0 $f0
    db $10                                        ; $747c: $10
    dec b                                         ; $747d: $05
    ld b, $03                                     ; $747e: $06 $03
    ld b, $00                                     ; $7480: $06 $00

jr_0aa_7482:
    ld [bc], a                                    ; $7482: $02
    rlca                                          ; $7483: $07
    dec b                                         ; $7484: $05
    ld b, $05                                     ; $7485: $06 $05
    rlca                                          ; $7487: $07
    ld [de], a                                    ; $7488: $12
    ld a, [bc]                                    ; $7489: $0a
    inc b                                         ; $748a: $04
    ld e, $06                                     ; $748b: $1e $06
    ccf                                           ; $748d: $3f
    jr c, jr_0aa_750f                             ; $748e: $38 $7f

    ld a, [de]                                    ; $7490: $1a
    nop                                           ; $7491: $00
    ret nz                                        ; $7492: $c0

    ld b, c                                       ; $7493: $41
    nop                                           ; $7494: $00
    ret nz                                        ; $7495: $c0

    inc bc                                        ; $7496: $03
    ldh [$ce], a                                  ; $7497: $e0 $ce
    ld a, b                                       ; $7499: $78
    add hl, de                                    ; $749a: $19
    jr nz, jr_0aa_74a4                            ; $749b: $20 $07

    nop                                           ; $749d: $00
    adc a                                         ; $749e: $8f
    sub b                                         ; $749f: $90
    ld a, a                                       ; $74a0: $7f
    ld [hl], b                                    ; $74a1: $70
    ld a, b                                       ; $74a2: $78
    ccf                                           ; $74a3: $3f

jr_0aa_74a4:
    ret c                                         ; $74a4: $d8

    rra                                           ; $74a5: $1f
    nop                                           ; $74a6: $00
    inc a                                         ; $74a7: $3c
    rrca                                          ; $74a8: $0f
    db $fc                                        ; $74a9: $fc
    rlca                                          ; $74aa: $07
    rlca                                          ; $74ab: $07
    nop                                           ; $74ac: $00
    dec bc                                        ; $74ad: $0b
    ld b, $00                                     ; $74ae: $06 $00
    rla                                           ; $74b0: $17
    add hl, bc                                    ; $74b1: $09
    ld hl, sp+$04                                 ; $74b2: $f8 $04
    db $fc                                        ; $74b4: $fc
    add l                                         ; $74b5: $85
    ld a, [$00f9]                                 ; $74b6: $fa $f9 $00
    ld [hl], h                                    ; $74b9: $74
    ld [hl], e                                    ; $74ba: $73
    inc c                                         ; $74bb: $0c
    rst $30                                       ; $74bc: $f7
    db $10                                        ; $74bd: $10
    ldh [$03], a                                  ; $74be: $e0 $03
    ld c, $00                                     ; $74c0: $0e $00
    adc e                                         ; $74c2: $8b
    adc d                                         ; $74c3: $8a
    ld [hl], b                                    ; $74c4: $70
    ld b, a                                       ; $74c5: $47
    ret c                                         ; $74c6: $d8

    ld d, a                                       ; $74c7: $57
    dec bc                                        ; $74c8: $0b
    inc sp                                        ; $74c9: $33
    nop                                           ; $74ca: $00
    ld a, [bc]                                    ; $74cb: $0a
    ld [de], a                                    ; $74cc: $12
    rst $38                                       ; $74cd: $ff
    ld c, a                                       ; $74ce: $4f
    rra                                           ; $74cf: $1f
    sbc a                                         ; $74d0: $9f
    pop bc                                        ; $74d1: $c1
    ld b, b                                       ; $74d2: $40
    nop                                           ; $74d3: $00
    inc bc                                        ; $74d4: $03
    ld b, b                                       ; $74d5: $40
    ldh a, [$ec]                                  ; $74d6: $f0 $ec
    ret nz                                        ; $74d8: $c0

    and b                                         ; $74d9: $a0
    ccf                                           ; $74da: $3f
    rst $00                                       ; $74db: $c7
    nop                                           ; $74dc: $00
    rst $28                                       ; $74dd: $ef
    rrca                                          ; $74de: $0f
    ld [hl], a                                    ; $74df: $77
    rlca                                          ; $74e0: $07
    dec de                                        ; $74e1: $1b
    add e                                         ; $74e2: $83
    inc c                                         ; $74e3: $0c
    ldh [$30], a                                  ; $74e4: $e0 $30
    rlca                                          ; $74e6: $07
    ldh a, [$71]                                  ; $74e7: $f0 $71
    jr nc, jr_0aa_7482                            ; $74e9: $30 $97

    ld [$7f00], sp                                ; $74eb: $08 $00 $7f
    nop                                           ; $74ee: $00
    ld a, $00                                     ; $74ef: $3e $00
    dec h                                         ; $74f1: $25
    inc sp                                        ; $74f2: $33
    ld b, $66                                     ; $74f3: $06 $66
    ld a, [bc]                                    ; $74f5: $0a
    ld e, e                                       ; $74f6: $5b
    ld a, [hl+]                                   ; $74f7: $2a
    ld c, a                                       ; $74f8: $4f
    nop                                           ; $74f9: $00
    ld [$957a], sp                                ; $74fa: $08 $7a $95
    inc h                                         ; $74fd: $24
    jp c, $011c                                   ; $74fe: $da $1c $01

    adc a                                         ; $7501: $8f
    nop                                           ; $7502: $00
    sub b                                         ; $7503: $90
    add a                                         ; $7504: $87
    sub b                                         ; $7505: $90
    rst $00                                       ; $7506: $c7
    sub b                                         ; $7507: $90
    rst $00                                       ; $7508: $c7
    adc b                                         ; $7509: $88
    db $e3                                        ; $750a: $e3
    nop                                           ; $750b: $00
    adc l                                         ; $750c: $8d
    ld [c], a                                     ; $750d: $e2
    inc b                                         ; $750e: $04

jr_0aa_750f:
    db $f4                                        ; $750f: $f4
    ld b, $f2                                     ; $7510: $06 $f2
    rlca                                          ; $7512: $07
    cpl                                           ; $7513: $2f
    nop                                           ; $7514: $00
    inc de                                        ; $7515: $13
    and b                                         ; $7516: $a0
    daa                                           ; $7517: $27
    ld b, b                                       ; $7518: $40

jr_0aa_7519:
    ld b, e                                       ; $7519: $43
    cp $9e                                        ; $751a: $fe $9e
    ld b, a                                       ; $751c: $47
    nop                                           ; $751d: $00
    add a                                         ; $751e: $87
    cp b                                          ; $751f: $b8
    add b                                         ; $7520: $80
    ldh [$84], a                                  ; $7521: $e0 $84
    call nz, $c81c                                ; $7523: $c4 $1c $c8
    nop                                           ; $7526: $00
    ld e, [hl]                                    ; $7527: $5e
    ret nz                                        ; $7528: $c0

    rra                                           ; $7529: $1f
    db $db                                        ; $752a: $db
    ld c, $0c                                     ; $752b: $0e $0c
    rlca                                          ; $752d: $07
    dec sp                                        ; $752e: $3b
    nop                                           ; $752f: $00
    inc a                                         ; $7530: $3c
    scf                                           ; $7531: $37
    cp a                                          ; $7532: $bf
    rrca                                          ; $7533: $0f
    ld c, c                                       ; $7534: $49
    rrca                                          ; $7535: $0f
    ld bc, $00cc                                  ; $7536: $01 $cc $00
    ld a, d                                       ; $7539: $7a
    xor $9d                                       ; $753a: $ee $9d
    and [hl]                                      ; $753c: $a6
    rst $10                                       ; $753d: $d7
    scf                                           ; $753e: $37
    add a                                         ; $753f: $87
    ld [hl], b                                    ; $7540: $70
    nop                                           ; $7541: $00
    inc hl                                        ; $7542: $23
    jr nz, jr_0aa_7546                            ; $7543: $20 $01

    ld a, [hl-]                                   ; $7545: $3a

jr_0aa_7546:
    ld a, [hl-]                                   ; $7546: $3a
    rla                                           ; $7547: $17
    sub h                                         ; $7548: $94
    ld hl, sp+$00                                 ; $7549: $f8 $00
    ld bc, $00fe                                  ; $754b: $01 $fe $00
    add b                                         ; $754e: $80
    nop                                           ; $754f: $00
    ld a, a                                       ; $7550: $7f
    cp a                                          ; $7551: $bf
    ld b, b                                       ; $7552: $40
    nop                                           ; $7553: $00
    add b                                         ; $7554: $80
    and b                                         ; $7555: $a0

jr_0aa_7556:
    ret nz                                        ; $7556: $c0

    jr nz, jr_0aa_7519                            ; $7557: $20 $c0

    or b                                          ; $7559: $b0
    ld h, b                                       ; $755a: $60
    add b                                         ; $755b: $80
    jr nz, jr_0aa_759d                            ; $755c: $20 $3f

    ret nz                                        ; $755e: $c0

    ld a, h                                       ; $755f: $7c
    db $10                                        ; $7560: $10
    ldh [$0c], a                                  ; $7561: $e0 $0c
    ldh a, [rTMA]                                 ; $7563: $f0 $06
    ldh a, [rP1]                                  ; $7565: $f0 $00
    ld b, $f1                                     ; $7567: $06 $f1
    dec b                                         ; $7569: $05
    inc l                                         ; $756a: $2c
    ld hl, $311f                                  ; $756b: $21 $1f $31
    rra                                           ; $756e: $1f
    nop                                           ; $756f: $00
    db $10                                        ; $7570: $10
    rrca                                          ; $7571: $0f
    jr jr_0aa_7583                                ; $7572: $18 $0f

    jr jr_0aa_757d                                ; $7574: $18 $07

    inc c                                         ; $7576: $0c
    rlca                                          ; $7577: $07
    nop                                           ; $7578: $00
    ld c, $e8                                     ; $7579: $0e $e8
    db $e3                                        ; $757b: $e3
    di                                            ; $757c: $f3

jr_0aa_757d:
    inc bc                                        ; $757d: $03
    ld hl, sp+$03                                 ; $757e: $f8 $03
    ld a, d                                       ; $7580: $7a
    nop                                           ; $7581: $00
    inc bc                                        ; $7582: $03

jr_0aa_7583:
    ld a, b                                       ; $7583: $78
    pop de                                        ; $7584: $d1
    inc a                                         ; $7585: $3c
    ld hl, sp-$1e                                 ; $7586: $f8 $e2
    ld c, $e0                                     ; $7588: $0e $e0
    nop                                           ; $758a: $00
    ld b, $f0                                     ; $758b: $06 $f0
    ret nz                                        ; $758d: $c0

    ld c, $3e                                     ; $758e: $0e $3e
    sbc h                                         ; $7590: $9c
    ld a, h                                       ; $7591: $7c
    cp b                                          ; $7592: $b8
    nop                                           ; $7593: $00
    jr c, jr_0aa_7556                             ; $7594: $38 $c0

    dec a                                         ; $7596: $3d
    pop hl                                        ; $7597: $e1
    dec de                                        ; $7598: $1b
    or e                                          ; $7599: $b3
    ld b, e                                       ; $759a: $43
    ld a, a                                       ; $759b: $7f
    nop                                           ; $759c: $00

jr_0aa_759d:
    rlca                                          ; $759d: $07
    ld e, b                                       ; $759e: $58
    inc de                                        ; $759f: $13
    ld d, $30                                     ; $75a0: $16 $30
    ld c, $3c                                     ; $75a2: $0e $3c
    ccf                                           ; $75a4: $3f
    nop                                           ; $75a5: $00

jr_0aa_75a6:
    rrca                                          ; $75a6: $0f
    ld e, $26                                     ; $75a7: $1e $26
    dec e                                         ; $75a9: $1d
    inc bc                                        ; $75aa: $03
    inc c                                         ; $75ab: $0c
    inc hl                                        ; $75ac: $23
    add h                                         ; $75ad: $84
    nop                                           ; $75ae: $00
    adc e                                         ; $75af: $8b
    add a                                         ; $75b0: $87
    sub b                                         ; $75b1: $90
    ld b, c                                       ; $75b2: $41
    ld b, b                                       ; $75b3: $40
    ret nz                                        ; $75b4: $c0

    and $e1                                       ; $75b5: $e6 $e1
    nop                                           ; $75b7: $00
    add $e0                                       ; $75b8: $c6 $e0
    adc e                                         ; $75ba: $8b
    ld h, b                                       ; $75bb: $60
    ld b, l                                       ; $75bc: $45
    ret nz                                        ; $75bd: $c0

    push bc                                       ; $75be: $c5
    ret nz                                        ; $75bf: $c0

    nop                                           ; $75c0: $00
    add [hl]                                      ; $75c1: $86
    add b                                         ; $75c2: $80
    ld b, $9f                                     ; $75c3: $06 $9f
    jr nc, jr_0aa_75a6                            ; $75c5: $30 $df

    db $10                                        ; $75c7: $10
    ld l, a                                       ; $75c8: $6f
    ld [$2f00], sp                                ; $75c9: $08 $00 $2f
    add b                                         ; $75cc: $80
    ret nz                                        ; $75cd: $c0

    ld [hl], b                                    ; $75ce: $70
    db $10                                        ; $75cf: $10
    sub b                                         ; $75d0: $90
    ldh [$f1], a                                  ; $75d1: $e0 $f1
    nop                                           ; $75d3: $00
    dec b                                         ; $75d4: $05
    pop hl                                        ; $75d5: $e1
    dec c                                         ; $75d6: $0d
    db $e3                                        ; $75d7: $e3
    dec bc                                        ; $75d8: $0b
    db $e3                                        ; $75d9: $e3
    dec bc                                        ; $75da: $0b
    jp Jump_000_1b10                              ; $75db: $c3 $10 $1b


    rst $00                                       ; $75de: $c7
    rla                                           ; $75df: $17
    ld [bc], a                                    ; $75e0: $02
    ld [$e1ec], sp                                ; $75e1: $08 $ec $e1
    pop af                                        ; $75e4: $f1
    db $f4                                        ; $75e5: $f4
    nop                                           ; $75e6: $00
    pop af                                        ; $75e7: $f1
    db $f4                                        ; $75e8: $f4
    ld b, $f0                                     ; $75e9: $06 $f0
    ld [bc], a                                    ; $75eb: $02
    ld hl, sp+$02                                 ; $75ec: $f8 $02
    ld hl, sp+$00                                 ; $75ee: $f8 $00
    inc bc                                        ; $75f0: $03
    ld hl, sp+$01                                 ; $75f1: $f8 $01
    db $fc                                        ; $75f3: $fc
    ld [hl], b                                    ; $75f4: $70
    add c                                         ; $75f5: $81
    sub l                                         ; $75f6: $95
    push af                                       ; $75f7: $f5
    nop                                           ; $75f8: $00
    push af                                       ; $75f9: $f5
    ld [hl], l                                    ; $75fa: $75
    call nz, $c534                                ; $75fb: $c4 $34 $c5
    dec d                                         ; $75fe: $15
    ldh [$27], a                                  ; $75ff: $e0 $27
    nop                                           ; $7601: $00
    ld h, b                                       ; $7602: $60
    daa                                           ; $7603: $27
    ld l, d                                       ; $7604: $6a
    cpl                                           ; $7605: $2f
    inc l                                         ; $7606: $2c
    dec bc                                        ; $7607: $0b
    ld a, $a1                                     ; $7608: $3e $a1
    nop                                           ; $760a: $00
    rra                                           ; $760b: $1f
    sbc d                                         ; $760c: $9a
    rrca                                          ; $760d: $0f
    ret nz                                        ; $760e: $c0

    rrca                                          ; $760f: $0f
    and $05                                       ; $7610: $e6 $05
    pop hl                                        ; $7612: $e1
    nop                                           ; $7613: $00
    ld [bc], a                                    ; $7614: $02
    ldh a, [$ec]                                  ; $7615: $f0 $ec
    db $e3                                        ; $7617: $e3
    jp $c0c8                                      ; $7618: $c3 $c8 $c0


    call z, $1f00                                 ; $761b: $cc $00 $1f
    ld [$8f1f], sp                                ; $761e: $08 $1f $8f
    rra                                           ; $7621: $1f
    rst $00                                       ; $7622: $c7
    rra                                           ; $7623: $1f
    rst $20                                       ; $7624: $e7
    nop                                           ; $7625: $00
    ldh a, [$e3]                                  ; $7626: $f0 $e3
    ld hl, sp+$33                                 ; $7628: $f8 $33
    ldh [$ad], a                                  ; $762a: $e0 $ad
    ldh [$0d], a                                  ; $762c: $e0 $0d
    nop                                           ; $762e: $00
    ldh [rKEY1], a                                ; $762f: $e0 $4d

jr_0aa_7631:
    ldh [$cc], a                                  ; $7631: $e0 $cc
    inc e                                         ; $7633: $1c

jr_0aa_7634:
    ret nc                                        ; $7634: $d0

    inc e                                         ; $7635: $1c
    ret nc                                        ; $7636: $d0

    nop                                           ; $7637: $00
    ret nz                                        ; $7638: $c0

    adc h                                         ; $7639: $8c
    ret nz                                        ; $763a: $c0

    adc l                                         ; $763b: $8d
    rst $00                                       ; $763c: $c7
    ldh a, [$b3]                                  ; $763d: $f0 $b3
    cp b                                          ; $763f: $b8
    nop                                           ; $7640: $00
    dec c                                         ; $7641: $0d
    cp h                                          ; $7642: $bc
    ld [bc], a                                    ; $7643: $02
    ld a, [hl]                                    ; $7644: $7e
    dec e                                         ; $7645: $1d
    ld [hl], h                                    ; $7646: $74
    jr c, jr_0aa_7631                             ; $7647: $38 $e8

jr_0aa_7649:
    nop                                           ; $7649: $00
    inc [hl]                                      ; $764a: $34
    ld a, [c]                                     ; $764b: $f2
    jr z, jr_0aa_7634                             ; $764c: $28 $e6

    add a                                         ; $764e: $87
    scf                                           ; $764f: $37
    adc a                                         ; $7650: $8f
    cpl                                           ; $7651: $2f
    nop                                           ; $7652: $00
    and b                                         ; $7653: $a0
    adc a                                         ; $7654: $8f
    ld h, b                                       ; $7655: $60
    rrca                                          ; $7656: $0f
    ld b, b                                       ; $7657: $40
    rra                                           ; $7658: $1f
    ld b, b                                       ; $7659: $40
    rra                                           ; $765a: $1f
    nop                                           ; $765b: $00
    ret nz                                        ; $765c: $c0

    rra                                           ; $765d: $1f
    add b                                         ; $765e: $80
    ccf                                           ; $765f: $3f
    ld bc, $01fc                                  ; $7660: $01 $fc $01
    db $fc                                        ; $7663: $fc
    ld a, [bc]                                    ; $7664: $0a
    nop                                           ; $7665: $00
    cp $fe                                        ; $7666: $fe $fe
    nop                                           ; $7668: $00
    ld [bc], a                                    ; $7669: $02
    ld [$3dff], sp                                ; $766a: $08 $ff $3d
    ld [bc], a                                    ; $766d: $02
    ld l, d                                       ; $766e: $6a
    jr nz, jr_0aa_76a0                            ; $766f: $20 $2f

    xor d                                         ; $7671: $aa
    ld [bc], a                                    ; $7672: $02
    jr nz, jr_0aa_7649                            ; $7673: $20 $d4

    rra                                           ; $7675: $1f
    ld b, h                                       ; $7676: $44
    rra                                           ; $7677: $1f
    rra                                           ; $7678: $1f
    nop                                           ; $7679: $00
    ld b, a                                       ; $767a: $47
    rst $20                                       ; $767b: $e7
    ldh [rNR13], a                                ; $767c: $e0 $13
    rst $20                                       ; $767e: $e7
    ld de, $e7e7                                  ; $767f: $11 $e7 $e7
    nop                                           ; $7682: $00
    rst $10                                       ; $7683: $d7
    rst $20                                       ; $7684: $e7
    ld d, a                                       ; $7685: $57
    rst $00                                       ; $7686: $c7
    ldh a, [rTAC]                                 ; $7687: $f0 $07
    add sp, -$08                                  ; $7689: $e8 $f8
    nop                                           ; $768b: $00
    scf                                           ; $768c: $37
    inc hl                                        ; $768d: $23
    cp h                                          ; $768e: $bc
    ld [$354e], sp                                ; $768f: $08 $4e $35
    ld hl, $0019                                  ; $7692: $21 $19 $00
    ld a, [de]                                    ; $7695: $1a
    add hl, bc                                    ; $7696: $09
    pop bc                                        ; $7697: $c1
    ccf                                           ; $7698: $3f
    cp a                                          ; $7699: $bf
    ret nz                                        ; $769a: $c0

    or b                                          ; $769b: $b0
    ldh [rP1], a                                  ; $769c: $e0 $00
    sbc a                                         ; $769e: $9f
    dec c                                         ; $769f: $0d

jr_0aa_76a0:
    call $9a1b                                    ; $76a0: $cd $1b $9a
    add c                                         ; $76a3: $81
    add hl, de                                    ; $76a4: $19
    pop bc                                        ; $76a5: $c1
    db $10                                        ; $76a6: $10
    add hl, de                                    ; $76a7: $19
    ld b, e                                       ; $76a8: $43
    or e                                          ; $76a9: $b3
    ld a, $08                                     ; $76aa: $3e $08
    rra                                           ; $76ac: $1f
    rst $20                                       ; $76ad: $e7
    ld b, b                                       ; $76ae: $40
    xor [hl]                                      ; $76af: $ae
    nop                                           ; $76b0: $00
    pop bc                                        ; $76b1: $c1
    dec e                                         ; $76b2: $1d
    add c                                         ; $76b3: $81
    dec a                                         ; $76b4: $3d
    ld bc, $0179                                  ; $76b5: $01 $79 $01
    ld a, c                                       ; $76b8: $79
    nop                                           ; $76b9: $00
    ei                                            ; $76ba: $fb
    inc bc                                        ; $76bb: $03
    ld [bc], a                                    ; $76bc: $02
    ldh a, [$c2]                                  ; $76bd: $f0 $c2
    ldh [$80], a                                  ; $76bf: $e0 $80
    ccf                                           ; $76c1: $3f
    inc e                                         ; $76c2: $1c
    add b                                         ; $76c3: $80
    ccf                                           ; $76c4: $3f
    ld a, a                                       ; $76c5: $7f
    cp b                                          ; $76c6: $b8
    ld bc, $0804                                  ; $76c7: $01 $04 $08
    ld bc, $0f88                                  ; $76ca: $01 $88 $0f
    ld h, e                                       ; $76cd: $63
    nop                                           ; $76ce: $00
    adc [hl]                                      ; $76cf: $8e
    and b                                         ; $76d0: $a0
    adc a                                         ; $76d1: $8f
    and b                                         ; $76d2: $a0
    add a                                         ; $76d3: $87
    or b                                          ; $76d4: $b0
    ret nz                                        ; $76d5: $c0

    ret nc                                        ; $76d6: $d0

    nop                                           ; $76d7: $00
    rra                                           ; $76d8: $1f
    ret nz                                        ; $76d9: $c0

    nop                                           ; $76da: $00
    ret nz                                        ; $76db: $c0

    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    add sp, -$19                                  ; $76de: $e8 $e7
    inc bc                                        ; $76e0: $03
    ld h, b                                       ; $76e1: $60
    ld c, a                                       ; $76e2: $4f
    ldh [$2f], a                                  ; $76e3: $e0 $2f
    ldh [$3f], a                                  ; $76e5: $e0 $3f
    xor $09                                       ; $76e7: $ee $09
    call z, Call_000_000a                         ; $76e9: $cc $0a $00
    rlca                                          ; $76ec: $07
    ldh [rIF], a                                  ; $76ed: $e0 $0f
    pop bc                                        ; $76ef: $c1
    call c, $9fc3                                 ; $76f0: $dc $c3 $9f
    add b                                         ; $76f3: $80
    ret nz                                        ; $76f4: $c0

    db $10                                        ; $76f5: $10
    jr @+$04                                      ; $76f6: $18 $02

    ld [bc], a                                    ; $76f8: $02
    cp $00                                        ; $76f9: $fe $00
    nop                                           ; $76fb: $00
    ccf                                           ; $76fc: $3f
    ret nz                                        ; $76fd: $c0

    db $fc                                        ; $76fe: $fc
    ld b, b                                       ; $76ff: $40
    inc c                                         ; $7700: $0c
    db $10                                        ; $7701: $10
    jr z, @-$08                                   ; $7702: $28 $f6

    ldh a, [$84]                                  ; $7704: $f0 $84
    ldh a, [rTIMA]                                ; $7706: $f0 $05
    pop hl                                        ; $7708: $e1
    ld d, $ed                                     ; $7709: $16 $ed
    pop hl                                        ; $770b: $e1
    ld [$0198], sp                                ; $770c: $08 $98 $01
    inc bc                                        ; $770f: $03
    inc [hl]                                      ; $7710: $34
    jr nz, jr_0aa_7717                            ; $7711: $20 $04

    ld c, e                                       ; $7713: $4b
    db $10                                        ; $7714: $10
    inc bc                                        ; $7715: $03
    sbc [hl]                                      ; $7716: $9e

jr_0aa_7717:
    ld [bc], a                                    ; $7717: $02
    ld b, c                                       ; $7718: $41
    nop                                           ; $7719: $00
    ld bc, $1e38                                  ; $771a: $01 $38 $1e
    ld e, $21                                     ; $771d: $1e $21
    ld sp, $102e                                  ; $771f: $31 $2e $10
    ld b, b                                       ; $7722: $40
    inc b                                         ; $7723: $04
    nop                                           ; $7724: $00
    add b                                         ; $7725: $80
    nop                                           ; $7726: $00
    add b                                         ; $7727: $80
    ld b, b                                       ; $7728: $40
    jr nz, jr_0aa_7733                            ; $7729: $20 $08

    ld bc, $0000                                  ; $772b: $01 $00 $00
    ld bc, $0303                                  ; $772e: $01 $03 $03
    ld b, $04                                     ; $7731: $06 $04

jr_0aa_7733:
    rlca                                          ; $7733: $07
    jr nc, jr_0aa_773d                            ; $7734: $30 $07

    nop                                           ; $7736: $00
    rra                                           ; $7737: $1f
    ld a, b                                       ; $7738: $78
    inc a                                         ; $7739: $3c
    nop                                           ; $773a: $00
    nop                                           ; $773b: $00
    ld a, h                                       ; $773c: $7c

jr_0aa_773d:
    ld [hl], b                                    ; $773d: $70
    call z, $f800                                 ; $773e: $cc $00 $f8
    and $f8                                       ; $7741: $e6 $f8
    add [hl]                                      ; $7743: $86
    add b                                         ; $7744: $80
    ld a, a                                       ; $7745: $7f
    rst $38                                       ; $7746: $ff
    nop                                           ; $7747: $00
    ld b, b                                       ; $7748: $40
    inc bc                                        ; $7749: $03
    ccf                                           ; $774a: $3f
    jr nz, jr_0aa_778d                            ; $774b: $20 $40

    add b                                         ; $774d: $80
    ret nz                                        ; $774e: $c0

    ld h, b                                       ; $774f: $60
    ldh [rSVBK], a                                ; $7750: $e0 $70
    inc c                                         ; $7752: $0c
    ldh a, [$7c]                                  ; $7753: $f0 $7c
    ldh a, [$3e]                                  ; $7755: $f0 $3e
    ld b, b                                       ; $7757: $40
    ld c, b                                       ; $7758: $48
    inc c                                         ; $7759: $0c
    adc b                                         ; $775a: $88
    ld a, h                                       ; $775b: $7c
    ld b, e                                       ; $775c: $43
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    ccf                                           ; $775f: $3f
    rlca                                          ; $7760: $07
    add hl, sp                                    ; $7761: $39
    daa                                           ; $7762: $27
    jr c, jr_0aa_778c                             ; $7763: $38 $27

    inc a                                         ; $7765: $3c
    nop                                           ; $7766: $00
    inc c                                         ; $7767: $0c
    dec bc                                        ; $7768: $0b
    ld c, $0d                                     ; $7769: $0e $0d
    and $e9                                       ; $776b: $e6 $e9
    ret nz                                        ; $776d: $c0

    or b                                          ; $776e: $b0
    nop                                           ; $776f: $00
    inc sp                                        ; $7770: $33
    ret nz                                        ; $7771: $c0

    adc d                                         ; $7772: $8a
    pop af                                        ; $7773: $f1
    ld h, h                                       ; $7774: $64
    db $fd                                        ; $7775: $fd
    ld a, [c]                                     ; $7776: $f2
    ld a, $00                                     ; $7777: $3e $00
    ld hl, sp+$1e                                 ; $7779: $f8 $1e
    db $fc                                        ; $777b: $fc
    rrca                                          ; $777c: $0f
    ld sp, hl                                     ; $777d: $f9
    rlca                                          ; $777e: $07
    add hl, de                                    ; $777f: $19
    ldh a, [rP1]                                  ; $7780: $f0 $00
    rst $20                                       ; $7782: $e7
    inc bc                                        ; $7783: $03
    call Call_000_2903                            ; $7784: $cd $03 $29
    ld h, $e1                                     ; $7787: $26 $e1
    pop hl                                        ; $7789: $e1
    nop                                           ; $778a: $00
    adc a                                         ; $778b: $8f

jr_0aa_778c:
    adc b                                         ; $778c: $88

jr_0aa_778d:
    ld c, a                                       ; $778d: $4f
    add sp, $77                                   ; $778e: $e8 $77
    call nz, $0703                                ; $7790: $c4 $03 $07
    nop                                           ; $7793: $00
    cp c                                          ; $7794: $b9
    add c                                         ; $7795: $81
    rst $18                                       ; $7796: $df
    add e                                         ; $7797: $83
    add a                                         ; $7798: $87
    rst $08                                       ; $7799: $cf
    ret nz                                        ; $779a: $c0

    ld a, a                                       ; $779b: $7f
    nop                                           ; $779c: $00
    nop                                           ; $779d: $00
    ld a, a                                       ; $779e: $7f
    inc b                                         ; $779f: $04
    rst $28                                       ; $77a0: $ef
    add hl, bc                                    ; $77a1: $09
    sbc [hl]                                      ; $77a2: $9e
    rla                                           ; $77a3: $17
    pop bc                                        ; $77a4: $c1
    nop                                           ; $77a5: $00
    rlca                                          ; $77a6: $07
    sub [hl]                                      ; $77a7: $96
    ld hl, sp+$0b                                 ; $77a8: $f8 $0b
    ld hl, sp+$28                                 ; $77aa: $f8 $28
    ldh a, [rNR30]                                ; $77ac: $f0 $1a
    ld [bc], a                                    ; $77ae: $02
    db $f4                                        ; $77af: $f4
    add hl, sp                                    ; $77b0: $39
    dec hl                                        ; $77b1: $2b
    add sp, $73                                   ; $77b2: $e8 $73
    db $f4                                        ; $77b4: $f4
    and [hl]                                      ; $77b5: $a6
    nop                                           ; $77b6: $00
    ld b, b                                       ; $77b7: $40
    nop                                           ; $77b8: $00
    cpl                                           ; $77b9: $2f
    rst $28                                       ; $77ba: $ef
    inc de                                        ; $77bb: $13
    jp Jump_000_0511                              ; $77bc: $c3 $11 $05


    ld bc, $0845                                  ; $77bf: $01 $45 $08
    call z, Call_000_0430                         ; $77c2: $cc $30 $04
    ld a, [$28d0]                                 ; $77c5: $fa $d0 $28
    rst $38                                       ; $77c8: $ff
    nop                                           ; $77c9: $00
    ld a, a                                       ; $77ca: $7f
    nop                                           ; $77cb: $00
    nop                                           ; $77cc: $00
    nop                                           ; $77cd: $00
    rst $20                                       ; $77ce: $e7
    ld d, b                                       ; $77cf: $50
    rlca                                          ; $77d0: $07
    db $e3                                        ; $77d1: $e3
    db $e4                                        ; $77d2: $e4
    inc e                                         ; $77d3: $1c
    nop                                           ; $77d4: $00
    rlca                                          ; $77d5: $07
    ld a, $05                                     ; $77d6: $3e $05
    ld [hl], b                                    ; $77d8: $70
    ld l, b                                       ; $77d9: $68
    or $e6                                        ; $77da: $f6 $e6
    ld hl, $ec00                                  ; $77dc: $21 $00 $ec
    inc hl                                        ; $77df: $23
    jp hl                                         ; $77e0: $e9


    rst $00                                       ; $77e1: $c7
    db $e3                                        ; $77e2: $e3
    ld a, h                                       ; $77e3: $7c
    inc bc                                        ; $77e4: $03
    ld a, $00                                     ; $77e5: $3e $00
    add c                                         ; $77e7: $81
    ld e, $c1                                     ; $77e8: $1e $c1
    rra                                           ; $77ea: $1f
    ld [hl], b                                    ; $77eb: $70
    rrca                                          ; $77ec: $0f
    jr c, jr_0aa_77f2                             ; $77ed: $38 $03

    nop                                           ; $77ef: $00
    sbc b                                         ; $77f0: $98
    pop bc                                        ; $77f1: $c1

jr_0aa_77f2:
    call nz, $f63c                                ; $77f2: $c4 $3c $f6
    daa                                           ; $77f5: $27
    db $fd                                        ; $77f6: $fd
    daa                                           ; $77f7: $27
    nop                                           ; $77f8: $00
    db $ec                                        ; $77f9: $ec
    xor e                                         ; $77fa: $ab
    ld l, [hl]                                    ; $77fb: $6e
    cp l                                          ; $77fc: $bd
    ld d, c                                       ; $77fd: $51
    or l                                          ; $77fe: $b5
    pop de                                        ; $77ff: $d1

Jump_0aa_7800:
    ld a, c                                       ; $7800: $79
    nop                                           ; $7801: $00
    sub c                                         ; $7802: $91
    ld a, e                                       ; $7803: $7b
    jp c, $9233                                   ; $7804: $da $33 $92

    rst $00                                       ; $7807: $c7
    ld hl, sp+$1d                                 ; $7808: $f8 $1d
    nop                                           ; $780a: $00
    pop hl                                        ; $780b: $e1
    ld [hl], $c5                                  ; $780c: $36 $c5
    inc c                                         ; $780e: $0c
    dec bc                                        ; $780f: $0b
    ld a, b                                       ; $7810: $78
    ld b, a                                       ; $7811: $47
    jr nz, jr_0aa_7814                            ; $7812: $20 $00

jr_0aa_7814:
    ld e, a                                       ; $7814: $5f
    ld b, b                                       ; $7815: $40
    ccf                                           ; $7816: $3f
    inc b                                         ; $7817: $04
    ld a, a                                       ; $7818: $7f
    inc bc                                        ; $7819: $03
    ldh [rDIV], a                                 ; $781a: $e0 $04
    nop                                           ; $781c: $00
    db $e4                                        ; $781d: $e4
    call nz, $81f1                                ; $781e: $c4 $f1 $81
    xor b                                         ; $7821: $a8
    adc d                                         ; $7822: $8a
    add c                                         ; $7823: $81
    adc h                                         ; $7824: $8c
    nop                                           ; $7825: $00
    add b                                         ; $7826: $80
    ret nz                                        ; $7827: $c0

    adc l                                         ; $7828: $8d
    ldh [$e3], a                                  ; $7829: $e0 $e3
    ret nc                                        ; $782b: $d0

    ld l, a                                       ; $782c: $6f
    ldh a, [rP1]                                  ; $782d: $f0 $00
    dec a                                         ; $782f: $3d
    db $ec                                        ; $7830: $ec
    ld e, $24                                     ; $7831: $1e $24
    sbc h                                         ; $7833: $9c
    ld e, b                                       ; $7834: $58
    add [hl]                                      ; $7835: $86
    and $00                                       ; $7836: $e6 $00
    add hl, bc                                    ; $7838: $09
    rst $08                                       ; $7839: $cf
    add b                                         ; $783a: $80
    call nc, $8fce                                ; $783b: $d4 $ce $8f
    ccf                                           ; $783e: $3f
    ld h, l                                       ; $783f: $65
    nop                                           ; $7840: $00
    dec b                                         ; $7841: $05
    call $8201                                    ; $7842: $cd $01 $82
    ld a, b                                       ; $7845: $78
    ld d, d                                       ; $7846: $52
    and b                                         ; $7847: $a0
    ld h, h                                       ; $7848: $64
    nop                                           ; $7849: $00
    ld a, [bc]                                    ; $784a: $0a
    ld b, b                                       ; $784b: $40
    jr c, @-$2d                                   ; $784c: $38 $d1

    dec c                                         ; $784e: $0d
    ld b, a                                       ; $784f: $47
    ld h, d                                       ; $7850: $62
    add hl, hl                                    ; $7851: $29
    nop                                           ; $7852: $00
    ld c, a                                       ; $7853: $4f
    dec bc                                        ; $7854: $0b
    ld c, a                                       ; $7855: $4f
    inc sp                                        ; $7856: $33
    inc l                                         ; $7857: $2c
    ld h, a                                       ; $7858: $67
    ld e, b                                       ; $7859: $58
    ld h, a                                       ; $785a: $67
    nop                                           ; $785b: $00
    ld e, b                                       ; $785c: $58
    ld l, a                                       ; $785d: $6f
    ld d, b                                       ; $785e: $50
    ld [hl], b                                    ; $785f: $70
    ccf                                           ; $7860: $3f
    ld e, $f3                                     ; $7861: $1e $f3
    rla                                           ; $7863: $17
    nop                                           ; $7864: $00
    pop af                                        ; $7865: $f1
    ld sp, $eff9                                  ; $7866: $31 $f9 $ef
    dec hl                                        ; $7869: $2b
    xor $2f                                       ; $786a: $ee $2f
    sbc d                                         ; $786c: $9a
    nop                                           ; $786d: $00
    add e                                         ; $786e: $83
    rlca                                          ; $786f: $07
    rlca                                          ; $7870: $07
    cp b                                          ; $7871: $b8
    adc a                                         ; $7872: $8f
    scf                                           ; $7873: $37
    db $10                                        ; $7874: $10
    add b                                         ; $7875: $80
    nop                                           ; $7876: $00
    inc bc                                        ; $7877: $03
    ld e, $1f                                     ; $7878: $1e $1f
    ld l, h                                       ; $787a: $6c
    cp [hl]                                       ; $787b: $be
    nop                                           ; $787c: $00
    sbc $76                                       ; $787d: $de $76
    nop                                           ; $787f: $00
    ld a, l                                       ; $7880: $7d
    call z, $9dff                                 ; $7881: $cc $ff $9d
    ld a, [$fc0c]                                 ; $7884: $fa $0c $fc
    dec de                                        ; $7887: $1b
    nop                                           ; $7888: $00
    cp b                                          ; $7889: $b8
    or [hl]                                       ; $788a: $b6
    or c                                          ; $788b: $b1
    and a                                         ; $788c: $a7
    or b                                          ; $788d: $b0
    scf                                           ; $788e: $37
    ld [hl], b                                    ; $788f: $70
    daa                                           ; $7890: $27
    nop                                           ; $7891: $00
    ld [hl], b                                    ; $7892: $70
    sub e                                         ; $7893: $93
    ldh a, [$32]                                  ; $7894: $f0 $32
    ldh a, [$f2]                                  ; $7896: $f0 $f2
    inc bc                                        ; $7898: $03
    ldh a, [rP1]                                  ; $7899: $f0 $00
    ld bc, $f480                                  ; $789b: $01 $80 $f4
    add e                                         ; $789e: $83
    push hl                                       ; $789f: $e5
    ld l, b                                       ; $78a0: $68
    adc b                                         ; $78a1: $88
    dec hl                                        ; $78a2: $2b
    nop                                           ; $78a3: $00
    adc e                                         ; $78a4: $8b
    ld [hl+], a                                   ; $78a5: $22
    and b                                         ; $78a6: $a0
    dec [hl]                                      ; $78a7: $35
    jr nc, jr_0aa_7914                            ; $78a8: $30 $6a

    add a                                         ; $78aa: $87
    sub a                                         ; $78ab: $97
    nop                                           ; $78ac: $00
    ld h, b                                       ; $78ad: $60
    xor d                                         ; $78ae: $aa
    dec b                                         ; $78af: $05
    rst $18                                       ; $78b0: $df
    inc c                                         ; $78b1: $0c
    ld l, e                                       ; $78b2: $6b
    jr nc, jr_0aa_7920                            ; $78b3: $30 $6b

    nop                                           ; $78b5: $00
    rlca                                          ; $78b6: $07
    or [hl]                                       ; $78b7: $b6
    ld h, b                                       ; $78b8: $60
    adc $87                                       ; $78b9: $ce $87
    ld d, $00                                     ; $78bb: $16 $00
    cp b                                          ; $78bd: $b8
    nop                                           ; $78be: $00
    sub c                                         ; $78bf: $91
    ld [hl], h                                    ; $78c0: $74
    inc sp                                        ; $78c1: $33
    jr z, jr_0aa_78c7                             ; $78c2: $28 $03

jr_0aa_78c4:
    sub b                                         ; $78c4: $90
    inc bc                                        ; $78c5: $03
    inc c                                         ; $78c6: $0c

jr_0aa_78c7:
    nop                                           ; $78c7: $00
    dec b                                         ; $78c8: $05
    add sp, $41                                   ; $78c9: $e8 $41
    ld b, b                                       ; $78cb: $40
    inc bc                                        ; $78cc: $03
    ld [hl], b                                    ; $78cd: $70
    ld a, $de                                     ; $78ce: $3e $de
    nop                                           ; $78d0: $00
    and d                                         ; $78d1: $a2
    call c, $f9a4                                 ; $78d2: $dc $a4 $f9
    adc c                                         ; $78d5: $89
    ld a, [c]                                     ; $78d6: $f2
    sub e                                         ; $78d7: $93
    ld h, c                                       ; $78d8: $61
    nop                                           ; $78d9: $00
    ld h, d                                       ; $78da: $62
    ld bc, $0502                                  ; $78db: $01 $02 $05
    ld sp, hl                                     ; $78de: $f9
    ld c, h                                       ; $78df: $4c

jr_0aa_78e0:
    rrca                                          ; $78e0: $0f
    cp b                                          ; $78e1: $b8
    nop                                           ; $78e2: $00
    ld bc, $ff07                                  ; $78e3: $01 $07 $ff
    ccf                                           ; $78e6: $3f
    ret nz                                        ; $78e7: $c0

    call z, $c6b0                                 ; $78e8: $cc $b0 $c6
    nop                                           ; $78eb: $00
    ld [hl], $f0                                  ; $78ec: $36 $f0
    ld [$05fd], sp                                ; $78ee: $08 $fd $05
    pop hl                                        ; $78f1: $e1
    db $fd                                        ; $78f2: $fd
    ret nz                                        ; $78f3: $c0

    nop                                           ; $78f4: $00
    adc $1e                                       ; $78f5: $ce $1e
    ld bc, $a03f                                  ; $78f7: $01 $3f $a0
    ccf                                           ; $78fa: $3f
    and c                                         ; $78fb: $a1
    ld a, a                                       ; $78fc: $7f
    nop                                           ; $78fd: $00
    ld [hl], e                                    ; $78fe: $73
    ld c, a                                       ; $78ff: $4f
    ld a, a                                       ; $7900: $7f
    inc bc                                        ; $7901: $03
    jr c, @-$0c                                   ; $7902: $38 $f2

    ld c, $e0                                     ; $7904: $0e $e0
    nop                                           ; $7906: $00
    inc e                                         ; $7907: $1c
    cp e                                          ; $7908: $bb

jr_0aa_7909:
    ld a, b                                       ; $7909: $78
    or a                                          ; $790a: $b7
    ld [hl], b                                    ; $790b: $70
    adc a                                         ; $790c: $8f
    cpl                                           ; $790d: $2f
    ld e, $00                                     ; $790e: $1e $00
    sbc $e0                                       ; $7910: $de $e0
    ret nz                                        ; $7912: $c0

    ld [hl], b                                    ; $7913: $70

jr_0aa_7914:
    ld h, e                                       ; $7914: $63
    ld [hl], d                                    ; $7915: $72
    ld a, b                                       ; $7916: $78
    ldh a, [rP1]                                  ; $7917: $f0 $00
    db $f4                                        ; $7919: $f4
    and b                                         ; $791a: $a0
    rst $28                                       ; $791b: $ef
    ld [hl-], a                                   ; $791c: $32
    add b                                         ; $791d: $80
    ld h, h                                       ; $791e: $64
    ld e, d                                       ; $791f: $5a

jr_0aa_7920:
    ld c, c                                       ; $7920: $49
    nop                                           ; $7921: $00
    ccf                                           ; $7922: $3f
    ld [$16f3], sp                                ; $7923: $08 $f3 $16
    rst $20                                       ; $7926: $e7
    jr nz, jr_0aa_78c4                            ; $7927: $20 $9b

    ret c                                         ; $7929: $d8

    nop                                           ; $792a: $00
    ld de, $2405                                  ; $792b: $11 $05 $24
    and $70                                       ; $792e: $e6 $70
    ld c, e                                       ; $7930: $4b
    ret nc                                        ; $7931: $d0

    pop af                                        ; $7932: $f1
    nop                                           ; $7933: $00
    inc c                                         ; $7934: $0c
    sbc b                                         ; $7935: $98
    ldh [rDMA], a                                 ; $7936: $e0 $46
    ld hl, sp-$68                                 ; $7938: $f8 $98
    jr nz, @-$66                                  ; $793a: $20 $98

    nop                                           ; $793c: $00
    and b                                         ; $793d: $a0
    jr nc, jr_0aa_78e0                            ; $793e: $30 $a0

    ld [hl], b                                    ; $7940: $70

Call_0aa_7941:
    ld h, b                                       ; $7941: $60
    ld h, b                                       ; $7942: $60
    ld e, a                                       ; $7943: $5f
    ld h, b                                       ; $7944: $60
    nop                                           ; $7945: $00
    ld e, a                                       ; $7946: $5f
    jr nz, jr_0aa_7909                            ; $7947: $20 $c0

    ld h, b                                       ; $7949: $60
    ret nz                                        ; $794a: $c0

    nop                                           ; $794b: $00
    db $fc                                        ; $794c: $fc
    ld [bc], a                                    ; $794d: $02
    ld b, $fc                                     ; $794e: $06 $fc
    inc bc                                        ; $7950: $03
    db $fd                                        ; $7951: $fd
    nop                                           ; $7952: $00
    ld bc, $0214                                  ; $7953: $01 $14 $02
    jr jr_0aa_795a                                ; $7956: $18 $02

    nop                                           ; $7958: $00
    nop                                           ; $7959: $00

jr_0aa_795a:
    nop                                           ; $795a: $00
    ld hl, sp-$77                                 ; $795b: $f8 $89
    jr nc, jr_0aa_7960                            ; $795d: $30 $01

    add h                                         ; $795f: $84

jr_0aa_7960:
    add b                                         ; $7960: $80
    adc e                                         ; $7961: $8b
    nop                                           ; $7962: $00
    inc hl                                        ; $7963: $23
    add l                                         ; $7964: $85
    add hl, sp                                    ; $7965: $39
    add $d1                                       ; $7966: $c6 $d1
    call $4fc0                                    ; $7968: $cd $c0 $4f
    nop                                           ; $796b: $00
    ret nz                                        ; $796c: $c0

    add b                                         ; $796d: $80
    dec sp                                        ; $796e: $3b
    db $db                                        ; $796f: $db
    inc h                                         ; $7970: $24
    and $10                                       ; $7971: $e6 $10
    jp c, Jump_000_3600                           ; $7973: $da $00 $36

    ld l, h                                       ; $7976: $6c
    ld [hl], $7e                                  ; $7977: $36 $7e
    nop                                           ; $7979: $00
    halt                                          ; $797a: $76
    ld [$002a], sp                                ; $797b: $08 $2a $00
    inc e                                         ; $797e: $1c
    ld b, c                                       ; $797f: $41
    ld l, h                                       ; $7980: $6c
    ld e, l                                       ; $7981: $5d
    ld b, b                                       ; $7982: $40
    dec e                                         ; $7983: $1d
    add $9b                                       ; $7984: $c6 $9b
    nop                                           ; $7986: $00
    push bc                                       ; $7987: $c5
    ld a, $09                                     ; $7988: $3e $09
    inc a                                         ; $798a: $3c
    db $10                                        ; $798b: $10
    xor [hl]                                      ; $798c: $ae
    ld [hl], $fd                                  ; $798d: $36 $fd
    nop                                           ; $798f: $00
    dec l                                         ; $7990: $2d
    and b                                         ; $7991: $a0
    inc hl                                        ; $7992: $23
    ld b, d                                       ; $7993: $42
    inc de                                        ; $7994: $13
    ld b, b                                       ; $7995: $40
    ld e, $80                                     ; $7996: $1e $80
    nop                                           ; $7998: $00
    add h                                         ; $7999: $84
    ld [bc], a                                    ; $799a: $02
    sbc [hl]                                      ; $799b: $9e
    add c                                         ; $799c: $81
    ld e, a                                       ; $799d: $5f
    adc h                                         ; $799e: $8c
    dec [hl]                                      ; $799f: $35
    ld [$f300], sp                                ; $79a0: $08 $00 $f3
    cp [hl]                                       ; $79a3: $be
    inc l                                         ; $79a4: $2c
    ld l, b                                       ; $79a5: $68
    ld b, c                                       ; $79a6: $41
    ld [hl], b                                    ; $79a7: $70
    ld [hl], c                                    ; $79a8: $71
    ld l, h                                       ; $79a9: $6c
    nop                                           ; $79aa: $00
    ld hl, $8985                                  ; $79ab: $21 $85 $89
    add e                                         ; $79ae: $83
    cp d                                          ; $79af: $ba
    jp z, $1939                                   ; $79b0: $ca $39 $19

    nop                                           ; $79b3: $00
    ld a, [$80c0]                                 ; $79b4: $fa $c0 $80
    ld b, b                                       ; $79b7: $40
    add b                                         ; $79b8: $80
    ld b, b                                       ; $79b9: $40
    ret nz                                        ; $79ba: $c0

    add b                                         ; $79bb: $80
    ldh [$7d], a                                  ; $79bc: $e0 $7d
    ld [bc], a                                    ; $79be: $02
    ld a, [hl]                                    ; $79bf: $7e
    ld [bc], a                                    ; $79c0: $02
    ld c, l                                       ; $79c1: $4d
    add d                                         ; $79c2: $82
    ld a, [hl+]                                   ; $79c3: $2a
    ld [c], a                                     ; $79c4: $e2
    db $e4                                        ; $79c5: $e4
    add hl, bc                                    ; $79c6: $09
    ld h, b                                       ; $79c7: $60
    nop                                           ; $79c8: $00
    ld c, d                                       ; $79c9: $4a
    ldh a, [$84]                                  ; $79ca: $f0 $84
    ldh a, [$80]                                  ; $79cc: $f0 $80
    ld hl, $381e                                  ; $79ce: $21 $1e $38
    nop                                           ; $79d1: $00
    daa                                           ; $79d2: $27
    rrca                                          ; $79d3: $0f
    inc sp                                        ; $79d4: $33
    inc [hl]                                      ; $79d5: $34
    ld [$8119], sp                                ; $79d6: $08 $19 $81
    ld bc, $c120                                  ; $79d9: $01 $20 $c1
    rlca                                          ; $79dc: $07
    rst $00                                       ; $79dd: $c7
    ld [bc], a                                    ; $79de: $02
    db $e3                                        ; $79df: $e3
    inc hl                                        ; $79e0: $23
    ld sp, $0fc1                                  ; $79e1: $31 $c1 $0f
    nop                                           ; $79e4: $00
    pop af                                        ; $79e5: $f1
    ldh [$f8], a                                  ; $79e6: $e0 $f8
    ld sp, hl                                     ; $79e8: $f9
    ld hl, sp+$00                                 ; $79e9: $f8 $00
    ldh a, [$8c]                                  ; $79eb: $f0 $8c
    nop                                           ; $79ed: $00
    ldh [rP1], a                                  ; $79ee: $e0 $00
    nop                                           ; $79f0: $00
    pop hl                                        ; $79f1: $e1
    ld a, a                                       ; $79f2: $7f
    ldh a, [$cf]                                  ; $79f3: $f0 $cf
    inc e                                         ; $79f5: $1c
    ld [bc], a                                    ; $79f6: $02
    inc de                                        ; $79f7: $13
    ld h, c                                       ; $79f8: $61
    db $10                                        ; $79f9: $10
    and l                                         ; $79fa: $a5
    inc b                                         ; $79fb: $04
    ld c, b                                       ; $79fc: $48
    push hl                                       ; $79fd: $e5
    ld [de], a                                    ; $79fe: $12
    ld a, [hl]                                    ; $79ff: $7e
    nop                                           ; $7a00: $00
    db $d3                                        ; $7a01: $d3
    add e                                         ; $7a02: $83
    ld b, h                                       ; $7a03: $44
    rst $00                                       ; $7a04: $c7
    jp hl                                         ; $7a05: $e9


    inc bc                                        ; $7a06: $03
    push af                                       ; $7a07: $f5
    rlca                                          ; $7a08: $07
    nop                                           ; $7a09: $00
    jp $8306                                      ; $7a0a: $c3 $06 $83


    ld c, $47                                     ; $7a0d: $0e $47
    inc bc                                        ; $7a0f: $03
    dec c                                         ; $7a10: $0d
    rst $20                                       ; $7a11: $e7
    inc b                                         ; $7a12: $04
    dec de                                        ; $7a13: $1b
    inc c                                         ; $7a14: $0c
    ldh a, [rNR32]                                ; $7a15: $f0 $1c
    db $e4                                        ; $7a17: $e4
    or b                                          ; $7a18: $b0
    ld l, d                                       ; $7a19: $6a
    db $10                                        ; $7a1a: $10
    inc bc                                        ; $7a1b: $03
    ld h, b                                       ; $7a1c: $60
    ld [bc], a                                    ; $7a1d: $02
    ld h, b                                       ; $7a1e: $60
    nop                                           ; $7a1f: $00
    ld bc, $23f8                                  ; $7a20: $01 $f8 $23
    nop                                           ; $7a23: $00
    ld bc, $0103                                  ; $7a24: $01 $03 $01
    ld [bc], a                                    ; $7a27: $02
    ld bc, $f800                                  ; $7a28: $01 $00 $f8
    dec b                                         ; $7a2b: $05
    db $e4                                        ; $7a2c: $e4
    inc e                                         ; $7a2d: $1c
    dec e                                         ; $7a2e: $1d
    nop                                           ; $7a2f: $00
    rst $20                                       ; $7a30: $e7
    jr jr_0aa_7a33                                ; $7a31: $18 $00

jr_0aa_7a33:
    jp $813c                                      ; $7a33: $c3 $3c $81


    and $80                                       ; $7a36: $e6 $80
    ld e, b                                       ; $7a38: $58
    jp Jump_000_043f                              ; $7a39: $c3 $3f $04


    pop hl                                        ; $7a3c: $e1
    db $dd                                        ; $7a3d: $dd
    pop bc                                        ; $7a3e: $c1
    sbc d                                         ; $7a3f: $9a
    add e                                         ; $7a40: $83
    ld b, b                                       ; $7a41: $40
    ld [$00ff], sp                                ; $7a42: $08 $ff $00
    nop                                           ; $7a45: $00
    ld b, b                                       ; $7a46: $40
    ccf                                           ; $7a47: $3f
    inc a                                         ; $7a48: $3c
    rra                                           ; $7a49: $1f
    adc [hl]                                      ; $7a4a: $8e
    add e                                         ; $7a4b: $83
    nop                                           ; $7a4c: $00
    add c                                         ; $7a4d: $81
    jr nz, jr_0aa_7acc                            ; $7a4e: $20 $7c

    ld b, b                                       ; $7a50: $40
    ld d, b                                       ; $7a51: $50
    jr @-$0e                                      ; $7a52: $18 $f0

    nop                                           ; $7a54: $00
    db $10                                        ; $7a55: $10
    ldh [$c8], a                                  ; $7a56: $e0 $c8
    dec b                                         ; $7a58: $05
    or b                                          ; $7a59: $b0
    ld h, $da                                     ; $7a5a: $26 $da
    db $d3                                        ; $7a5c: $d3
    ld l, l                                       ; $7a5d: $6d
    ld h, b                                       ; $7a5e: $60
    ldh [$fe], a                                  ; $7a5f: $e0 $fe
    inc b                                         ; $7a61: $04
    ld [$0100], sp                                ; $7a62: $08 $00 $01
    db $fc                                        ; $7a65: $fc
    inc bc                                        ; $7a66: $03
    ldh a, [$0e]                                  ; $7a67: $f0 $0e
    ldh [$c1], a                                  ; $7a69: $e0 $c1
    ret c                                         ; $7a6b: $d8

    nop                                           ; $7a6c: $00
    rlca                                          ; $7a6d: $07
    jr nc, jr_0aa_7a7f                            ; $7a6e: $30 $0f

    ldh [$32], a                                  ; $7a70: $e0 $32
    jr nc, jr_0aa_7a83                            ; $7a72: $30 $0f

    ld h, c                                       ; $7a74: $61
    nop                                           ; $7a75: $00
    rra                                           ; $7a76: $1f
    pop bc                                        ; $7a77: $c1
    ld a, $01                                     ; $7a78: $3e $01
    cp $01                                        ; $7a7a: $fe $01
    ld bc, $8000                                  ; $7a7c: $01 $00 $80

jr_0aa_7a7f:
    ld [bc], a                                    ; $7a7f: $02
    ld [$c358], sp                                ; $7a80: $08 $58 $c3

jr_0aa_7a83:
    ld e, b                                       ; $7a83: $58
    jp $c3a4                                      ; $7a84: $c3 $a4 $c3


    and l                                         ; $7a87: $a5
    nop                                           ; $7a88: $00
    jp $c212                                      ; $7a89: $c3 $12 $c2


    ld [hl-], a                                   ; $7a8c: $32
    add d                                         ; $7a8d: $82
    adc $83                                       ; $7a8e: $ce $83
    call $8300                                    ; $7a90: $cd $00 $83
    nop                                           ; $7a93: $00
    rlca                                          ; $7a94: $07
    or b                                          ; $7a95: $b0
    ld a, c                                       ; $7a96: $79
    add b                                         ; $7a97: $80
    cp d                                          ; $7a98: $ba
    sbc $00                                       ; $7a99: $de $00
    add b                                         ; $7a9b: $80
    ld d, c                                       ; $7a9c: $51
    rst $08                                       ; $7a9d: $cf
    ld e, b                                       ; $7a9e: $58
    pop bc                                        ; $7a9f: $c1
    cp b                                          ; $7aa0: $b8
    add [hl]                                      ; $7aa1: $86
    and [hl]                                      ; $7aa2: $a6
    nop                                           ; $7aa3: $00

jr_0aa_7aa4:
    adc b                                         ; $7aa4: $88
    ld bc, $d01e                                  ; $7aa5: $01 $1e $d0
    rst $08                                       ; $7aa8: $cf
    add sp, -$19                                  ; $7aa9: $e8 $e7
    ld sp, $3600                                  ; $7aab: $31 $00 $36
    inc bc                                        ; $7aae: $03
    inc [hl]                                      ; $7aaf: $34
    add c                                         ; $7ab0: $81
    sbc d                                         ; $7ab1: $9a
    and b                                         ; $7ab2: $a0
    adc e                                         ; $7ab3: $8b
    and b                                         ; $7ab4: $a0
    nop                                           ; $7ab5: $00
    sub b                                         ; $7ab6: $90
    nop                                           ; $7ab7: $00
    add b                                         ; $7ab8: $80
    add b                                         ; $7ab9: $80
    ld b, b                                       ; $7aba: $40
    ld h, b                                       ; $7abb: $60
    and b                                         ; $7abc: $a0
    ld h, b                                       ; $7abd: $60
    nop                                           ; $7abe: $00
    and b                                         ; $7abf: $a0
    ldh [rNR41], a                                ; $7ac0: $e0 $20
    jr nz, jr_0aa_7aa4                            ; $7ac2: $20 $e0

    ret nz                                        ; $7ac4: $c0

    ld h, b                                       ; $7ac5: $60
    ret nz                                        ; $7ac6: $c0

    ld b, b                                       ; $7ac7: $40
    ld h, b                                       ; $7ac8: $60
    ld e, h                                       ; $7ac9: $5c
    ld b, b                                       ; $7aca: $40
    ld l, [hl]                                    ; $7acb: $6e

jr_0aa_7acc:
    rrca                                          ; $7acc: $0f
    ld l, a                                       ; $7acd: $6f
    rrca                                          ; $7ace: $0f
    ld hl, $201f                                  ; $7acf: $21 $1f $20
    add b                                         ; $7ad2: $80
    ld a, a                                       ; $7ad3: $7f
    or b                                          ; $7ad4: $b0
    nop                                           ; $7ad5: $00
    db $fc                                        ; $7ad6: $fc
    nop                                           ; $7ad7: $00
    ld hl, sp+$03                                 ; $7ad8: $f8 $03
    ld hl, sp+$02                                 ; $7ada: $f8 $02
    inc bc                                        ; $7adc: $03
    inc b                                         ; $7add: $04
    rrca                                          ; $7ade: $0f
    ldh [$c2], a                                  ; $7adf: $e0 $c2
    ld [bc], a                                    ; $7ae1: $02
    reti                                          ; $7ae2: $d9


    nop                                           ; $7ae3: $00
    ld b, $80                                     ; $7ae4: $06 $80
    inc c                                         ; $7ae6: $0c
    nop                                           ; $7ae7: $00
    ld a, [de]                                    ; $7ae8: $1a
    inc bc                                        ; $7ae9: $03
    sbc h                                         ; $7aea: $9c
    pop bc                                        ; $7aeb: $c1
    inc c                                         ; $7aec: $0c
    pop bc                                        ; $7aed: $c1
    add hl, hl                                    ; $7aee: $29
    nop                                           ; $7aef: $00
    and c                                         ; $7af0: $a1
    adc a                                         ; $7af1: $8f
    ld b, e                                       ; $7af2: $43
    sbc [hl]                                      ; $7af3: $9e
    ld e, a                                       ; $7af4: $5f
    ld c, a                                       ; $7af5: $4f
    adc [hl]                                      ; $7af6: $8e
    ld b, a                                       ; $7af7: $47
    nop                                           ; $7af8: $00
    add d                                         ; $7af9: $82
    rst $00                                       ; $7afa: $c7
    add b                                         ; $7afb: $80
    ld b, e                                       ; $7afc: $43
    add b                                         ; $7afd: $80
    ld a, a                                       ; $7afe: $7f
    pop bc                                        ; $7aff: $c1
    ld [hl], c                                    ; $7b00: $71
    nop                                           ; $7b01: $00
    pop bc                                        ; $7b02: $c1
    ld l, h                                       ; $7b03: $6c
    ld a, [c]                                     ; $7b04: $f2
    ld [hl], b                                    ; $7b05: $70
    ld hl, sp+$18                                 ; $7b06: $f8 $18
    db $e4                                        ; $7b08: $e4
    ld l, h                                       ; $7b09: $6c
    nop                                           ; $7b0a: $00
    di                                            ; $7b0b: $f3
    adc a                                         ; $7b0c: $8f

jr_0aa_7b0d:
    sbc b                                         ; $7b0d: $98
    add [hl]                                      ; $7b0e: $86
    db $fc                                        ; $7b0f: $fc
    di                                            ; $7b10: $f3
    rst $38                                       ; $7b11: $ff
    jp hl                                         ; $7b12: $e9


    nop                                           ; $7b13: $00
    adc a                                         ; $7b14: $8f
    jr nc, jr_0aa_7b5d                            ; $7b15: $30 $46

    jr nc, jr_0aa_7b77                            ; $7b17: $30 $5e

    jr jr_0aa_7b63                                ; $7b19: $18 $48

    ld c, $00                                     ; $7b1b: $0e $00
    and b                                         ; $7b1d: $a0
    xor a                                         ; $7b1e: $af
    ld a, l                                       ; $7b1f: $7d
    rst $28                                       ; $7b20: $ef
    add hl, hl                                    ; $7b21: $29
    ld [hl-], a                                   ; $7b22: $32
    ret nz                                        ; $7b23: $c0

    ld [hl-], a                                   ; $7b24: $32
    nop                                           ; $7b25: $00
    sub b                                         ; $7b26: $90
    ret nz                                        ; $7b27: $c0

    ld e, a                                       ; $7b28: $5f
    ret nz                                        ; $7b29: $c0

    ld c, a                                       ; $7b2a: $4f
    rst $00                                       ; $7b2b: $c7
    rla                                           ; $7b2c: $17
    jp Jump_000_1b00                              ; $7b2d: $c3 $00 $1b


    add b                                         ; $7b30: $80
    ld c, h                                       ; $7b31: $4c
    sub b                                         ; $7b32: $90
    ld b, [hl]                                    ; $7b33: $46
    sub b                                         ; $7b34: $90
    ld b, [hl]                                    ; $7b35: $46
    sub c                                         ; $7b36: $91
    nop                                           ; $7b37: $00
    ld b, l                                       ; $7b38: $45
    ld b, $23                                     ; $7b39: $06 $23
    add h                                         ; $7b3b: $84
    or c                                          ; $7b3c: $b1
    add $d0                                       ; $7b3d: $c6 $d0
    add $04                                       ; $7b3f: $c6 $04
    ret nc                                        ; $7b41: $d0

    jp nz, $e2d8                                  ; $7b42: $c2 $d8 $e2

    add sp, $02                                   ; $7b45: $e8 $02
    ld [$20c9], sp                                ; $7b47: $08 $c9 $20
    nop                                           ; $7b4a: $00
    db $ec                                        ; $7b4b: $ec
    call $95d8                                    ; $7b4c: $cd $d8 $95
    call nc, $d891                                ; $7b4f: $d4 $91 $d8
    sbc c                                         ; $7b52: $99
    nop                                           ; $7b53: $00
    ld e, l                                       ; $7b54: $5d
    adc l                                         ; $7b55: $8d
    ld e, l                                       ; $7b56: $5d
    add h                                         ; $7b57: $84
    ld e, h                                       ; $7b58: $5c
    push bc                                       ; $7b59: $c5
    or e                                          ; $7b5a: $b3
    or e                                          ; $7b5b: $b3
    nop                                           ; $7b5c: $00

jr_0aa_7b5d:
    sbc e                                         ; $7b5d: $9b
    or e                                          ; $7b5e: $b3
    ld b, a                                       ; $7b5f: $47
    ld d, $55                                     ; $7b60: $16 $55
    ld a, [de]                                    ; $7b62: $1a

jr_0aa_7b63:
    or d                                          ; $7b63: $b2
    sbc h                                         ; $7b64: $9c
    nop                                           ; $7b65: $00
    or b                                          ; $7b66: $b0
    cpl                                           ; $7b67: $2f
    inc sp                                        ; $7b68: $33
    xor h                                         ; $7b69: $ac
    adc a                                         ; $7b6a: $8f
    jr nc, jr_0aa_7b0d                            ; $7b6b: $30 $a0

    adc h                                         ; $7b6d: $8c
    nop                                           ; $7b6e: $00
    jr nz, @+$0a                                  ; $7b6f: $20 $08

    add hl, bc                                    ; $7b71: $09
    nop                                           ; $7b72: $00
    dec b                                         ; $7b73: $05
    ld h, h                                       ; $7b74: $64
    ldh a, [$03]                                  ; $7b75: $f0 $03

jr_0aa_7b77:
    nop                                           ; $7b77: $00
    ld hl, sp-$07                                 ; $7b78: $f8 $f9
    ld a, $c6                                     ; $7b7a: $3e $c6
    ld c, $62                                     ; $7b7c: $0e $62
    rst $08                                       ; $7b7e: $cf
    jr c, jr_0aa_7b81                             ; $7b7f: $38 $00

jr_0aa_7b81:
    ld a, [hl]                                    ; $7b81: $7e
    nop                                           ; $7b82: $00
    ld bc, $2480                                  ; $7b83: $01 $80 $24
    call z, $e22c                                 ; $7b86: $cc $2c $e2
    nop                                           ; $7b89: $00
    ld h, $e1                                     ; $7b8a: $26 $e1
    and d                                         ; $7b8c: $a2
    pop hl                                        ; $7b8d: $e1
    inc hl                                        ; $7b8e: $23
    ld h, b                                       ; $7b8f: $60
    ld h, d                                       ; $7b90: $62
    jr nz, jr_0aa_7b93                            ; $7b91: $20 $00

jr_0aa_7b93:
    call nz, Call_0aa_7941                        ; $7b93: $c4 $41 $79
    db $fc                                        ; $7b96: $fc
    di                                            ; $7b97: $f3
    ld hl, sp+$0b                                 ; $7b98: $f8 $0b
    ld hl, sp+$00                                 ; $7b9a: $f8 $00
    rla                                           ; $7b9c: $17
    ld [hl], b                                    ; $7b9d: $70
    ld c, a                                       ; $7b9e: $4f
    ld a, b                                       ; $7b9f: $78
    ld e, a                                       ; $7ba0: $5f
    ld [hl], b                                    ; $7ba1: $70
    ld de, $0045                                  ; $7ba2: $11 $45 $00
    ld bc, $484d                                  ; $7ba5: $01 $4d $48
    dec bc                                        ; $7ba8: $0b
    ld c, b                                       ; $7ba9: $48
    dec bc                                        ; $7baa: $0b
    ld b, e                                       ; $7bab: $43
    dec de                                        ; $7bac: $1b
    jr nz, jr_0aa_7bf6                            ; $7bad: $20 $47

    rla                                           ; $7baf: $17
    ld [bc], a                                    ; $7bb0: $02
    ld [$ece1], sp                                ; $7bb1: $08 $e1 $ec
    pop af                                        ; $7bb4: $f1
    db $f4                                        ; $7bb5: $f4
    pop af                                        ; $7bb6: $f1
    ld [bc], a                                    ; $7bb7: $02
    db $f4                                        ; $7bb8: $f4
    ld b, $f0                                     ; $7bb9: $06 $f0
    ld [bc], a                                    ; $7bbb: $02
    ld hl, sp+$02                                 ; $7bbc: $f8 $02
    db $d3                                        ; $7bbe: $d3
    nop                                           ; $7bbf: $00
    ld bc, $fc00                                  ; $7bc0: $01 $00 $fc
    ld l, b                                       ; $7bc3: $68
    ld b, b                                       ; $7bc4: $40
    ld h, b                                       ; $7bc5: $60
    nop                                           ; $7bc6: $00
    inc h                                         ; $7bc7: $24
    add h                                         ; $7bc8: $84
    ldh a, [rNR41]                                ; $7bc9: $f0 $20
    inc a                                         ; $7bcb: $3c
    ldh [rSC], a                                  ; $7bcc: $e0 $02
    nop                                           ; $7bce: $00

jr_0aa_7bcf:
    ld b, b                                       ; $7bcf: $40
    ld a, h                                       ; $7bd0: $7c
    jr c, @+$5e                                   ; $7bd1: $38 $5c

    rst $00                                       ; $7bd3: $c7
    nop                                           ; $7bd4: $00
    ld e, b                                       ; $7bd5: $58
    ld h, e                                       ; $7bd6: $63
    xor h                                         ; $7bd7: $ac
    ld [hl], b                                    ; $7bd8: $70
    sub a                                         ; $7bd9: $97
    ld l, e                                       ; $7bda: $6b
    jr jr_0aa_7bff                                ; $7bdb: $18 $22

    nop                                           ; $7bdd: $00
    jr jr_0aa_7c47                                ; $7bde: $18 $67

    ld e, l                                       ; $7be0: $5d
    scf                                           ; $7be1: $37
    dec l                                         ; $7be2: $2d
    ld a, [bc]                                    ; $7be3: $0a
    rla                                           ; $7be4: $17
    sub b                                         ; $7be5: $90
    nop                                           ; $7be6: $00
    adc [hl]                                      ; $7be7: $8e
    jp nc, $a50c                                  ; $7be8: $d2 $0c $a5

    add hl, de                                    ; $7beb: $19
    ld c, c                                       ; $7bec: $49
    ld sp, $0098                                  ; $7bed: $31 $98 $00
    ld h, b                                       ; $7bf0: $60
    ld [hl-], a                                   ; $7bf1: $32
    ret nc                                        ; $7bf2: $d0

    ld [hl], d                                    ; $7bf3: $72
    sub h                                         ; $7bf4: $94
    ld [c], a                                     ; $7bf5: $e2

jr_0aa_7bf6:
    inc l                                         ; $7bf6: $2c
    inc bc                                        ; $7bf7: $03
    nop                                           ; $7bf8: $00

jr_0aa_7bf9:
    ld [hl], b                                    ; $7bf9: $70
    add c                                         ; $7bfa: $81
    cp h                                          ; $7bfb: $bc
    and l                                         ; $7bfc: $a5
    sbc b                                         ; $7bfd: $98
    and h                                         ; $7bfe: $a4

jr_0aa_7bff:
    sbc b                                         ; $7bff: $98
    ret z                                         ; $7c00: $c8

    nop                                           ; $7c01: $00
    inc c                                         ; $7c02: $0c
    ret nz                                        ; $7c03: $c0

    inc c                                         ; $7c04: $0c
    inc c                                         ; $7c05: $0c
    call z, $c414                                 ; $7c06: $cc $14 $c4
    rrca                                          ; $7c09: $0f
    nop                                           ; $7c0a: $00
    ld h, b                                       ; $7c0b: $60
    sbc a                                         ; $7c0c: $9f
    add b                                         ; $7c0d: $80
    jr nz, jr_0aa_7bcf                            ; $7c0e: $20 $bf

    and b                                         ; $7c10: $a0
    cpl                                           ; $7c11: $2f
    add b                                         ; $7c12: $80
    nop                                           ; $7c13: $00
    ld b, a                                       ; $7c14: $47
    sub b                                         ; $7c15: $90
    ld d, e                                       ; $7c16: $53
    ldh [$38], a                                  ; $7c17: $e0 $38
    ldh [$3c], a                                  ; $7c19: $e0 $3c
    add a                                         ; $7c1b: $87
    nop                                           ; $7c1c: $00
    scf                                           ; $7c1d: $37
    adc a                                         ; $7c1e: $8f
    cpl                                           ; $7c1f: $2f
    and b                                         ; $7c20: $a0
    cpl                                           ; $7c21: $2f
    ld h, b                                       ; $7c22: $60
    ld l, a                                       ; $7c23: $6f
    ld b, b                                       ; $7c24: $40
    nop                                           ; $7c25: $00
    rra                                           ; $7c26: $1f
    ld b, b                                       ; $7c27: $40
    rra                                           ; $7c28: $1f
    ret nz                                        ; $7c29: $c0

    rra                                           ; $7c2a: $1f
    add b                                         ; $7c2b: $80
    ccf                                           ; $7c2c: $3f
    ld bc, $fc02                                  ; $7c2d: $01 $02 $fc
    ld bc, $00fc                                  ; $7c30: $01 $fc $00
    cp $fe                                        ; $7c33: $fe $fe
    cp c                                          ; $7c35: $b9
    ld bc, $80fe                                  ; $7c36: $01 $fe $80

jr_0aa_7c39:
    ld hl, sp+$01                                 ; $7c39: $f8 $01
    nop                                           ; $7c3b: $00
    nop                                           ; $7c3c: $00
    jr c, jr_0aa_7c9b                             ; $7c3d: $38 $5c

    jr c, jr_0aa_7bf9                             ; $7c3f: $38 $b8

    inc a                                         ; $7c41: $3c
    nop                                           ; $7c42: $00
    cp b                                          ; $7c43: $b8
    cp b                                          ; $7c44: $b8
    inc a                                         ; $7c45: $3c
    sbc b                                         ; $7c46: $98

jr_0aa_7c47:
    inc a                                         ; $7c47: $3c
    pop bc                                        ; $7c48: $c1
    sbc $40                                       ; $7c49: $de $40
    nop                                           ; $7c4b: $00
    ld e, [hl]                                    ; $7c4c: $5e
    ld e, h                                       ; $7c4d: $5c
    ld e, $02                                     ; $7c4e: $1e $02
    rra                                           ; $7c50: $1f
    ld b, $84                                     ; $7c51: $06 $84
    nop                                           ; $7c53: $00
    nop                                           ; $7c54: $00
    ld b, d                                       ; $7c55: $42
    ld [hl-], a                                   ; $7c56: $32
    nop                                           ; $7c57: $00
    rlca                                          ; $7c58: $07
    rra                                           ; $7c59: $1f
    jp z, Jump_0aa_7800                           ; $7c5a: $ca $00 $78

    nop                                           ; $7c5d: $00
    ld a, a                                       ; $7c5e: $7f
    ld [bc], a                                    ; $7c5f: $02
    ld [$d6d8], sp                                ; $7c60: $08 $d8 $d6
    ld a, b                                       ; $7c63: $78
    ld [hl], d                                    ; $7c64: $72
    ld [hl], b                                    ; $7c65: $70
    nop                                           ; $7c66: $00
    ld h, h                                       ; $7c67: $64
    ld h, b                                       ; $7c68: $60
    dec c                                         ; $7c69: $0d
    pop bc                                        ; $7c6a: $c1
    dec e                                         ; $7c6b: $1d
    add c                                         ; $7c6c: $81
    ld bc, $00f0                                  ; $7c6d: $01 $f0 $00
    inc bc                                        ; $7c70: $03
    sbc h                                         ; $7c71: $9c
    sbc a                                         ; $7c72: $9f
    ret nc                                        ; $7c73: $d0

    call nz, $c4d0                                ; $7c74: $c4 $d0 $c4
    inc d                                         ; $7c77: $14
    nop                                           ; $7c78: $00
    call nz, $c018                                ; $7c79: $c4 $18 $c0
    dec e                                         ; $7c7c: $1d
    call nz, $c059                                ; $7c7d: $c4 $59 $c0
    or c                                          ; $7c80: $b1
    nop                                           ; $7c81: $00
    adc d                                         ; $7c82: $8a
    and e                                         ; $7c83: $a3
    sbc b                                         ; $7c84: $98
    ret nz                                        ; $7c85: $c0

    ld c, $e1                                     ; $7c86: $0e $e1
    dec c                                         ; $7c88: $0d
    dec c                                         ; $7c89: $0d
    ld b, h                                       ; $7c8a: $44
    db $ec                                        ; $7c8b: $ec
    ld [bc], a                                    ; $7c8c: $02
    ld [$e80b], sp                                ; $7c8d: $08 $0b $e8
    ld a, [bc]                                    ; $7c90: $0a
    ld [bc], a                                    ; $7c91: $02
    nop                                           ; $7c92: $00
    add b                                         ; $7c93: $80
    ccf                                           ; $7c94: $3f
    inc c                                         ; $7c95: $0c
    add b                                         ; $7c96: $80
    ccf                                           ; $7c97: $3f
    ld a, a                                       ; $7c98: $7f
    nop                                           ; $7c99: $00
    ld [bc], a                                    ; $7c9a: $02

jr_0aa_7c9b:
    jr jr_0aa_7c39                                ; $7c9b: $18 $9c

    adc d                                         ; $7c9d: $8a
    ld l, h                                       ; $7c9e: $6c
    rrca                                          ; $7c9f: $0f
    nop                                           ; $7ca0: $00
    and b                                         ; $7ca1: $a0
    adc a                                         ; $7ca2: $8f
    and b                                         ; $7ca3: $a0
    adc a                                         ; $7ca4: $8f
    ld sp, $1036                                  ; $7ca5: $31 $36 $10
    stop                                          ; $7ca8: $10 $00
    rra                                           ; $7caa: $1f
    ret nz                                        ; $7cab: $c0

    nop                                           ; $7cac: $00
    ret nz                                        ; $7cad: $c0

    nop                                           ; $7cae: $00
    nop                                           ; $7caf: $00
    dec e                                         ; $7cb0: $1d
    dec e                                         ; $7cb1: $1d
    ld b, $37                                     ; $7cb2: $06 $37
    nop                                           ; $7cb4: $00
    ld h, l                                       ; $7cb5: $65
    add b                                         ; $7cb6: $80
    adc b                                         ; $7cb7: $88
    add [hl]                                      ; $7cb8: $86
    ld [de], a                                    ; $7cb9: $12
    call z, $c20a                                 ; $7cba: $cc $0a $c2
    ld bc, $6e03                                  ; $7cbd: $01 $03 $6e
    rrca                                          ; $7cc0: $0f
    inc a                                         ; $7cc1: $3c
    rrca                                          ; $7cc2: $0f
    cp [hl]                                       ; $7cc3: $be
    ld [hl-], a                                   ; $7cc4: $32
    db $10                                        ; $7cc5: $10
    jr jr_0aa_7cc8                                ; $7cc6: $18 $00

jr_0aa_7cc8:
    rst $38                                       ; $7cc8: $ff
    nop                                           ; $7cc9: $00

jr_0aa_7cca:
    add c                                         ; $7cca: $81
    cp d                                          ; $7ccb: $ba
    inc bc                                        ; $7ccc: $03
    ld a, b                                       ; $7ccd: $78
    ld a, d                                       ; $7cce: $7a
    ld a, c                                       ; $7ccf: $79
    jr nz, jr_0aa_7cca                            ; $7cd0: $20 $f8

    ei                                            ; $7cd2: $fb
    db $10                                        ; $7cd3: $10
    jr z, jr_0aa_7cec                             ; $7cd4: $28 $16

    ldh a, [rNR14]                                ; $7cd6: $f0 $14
    ldh a, [rTIMA]                                ; $7cd8: $f0 $05
    dec bc                                        ; $7cda: $0b
    pop af                                        ; $7cdb: $f1
    dec c                                         ; $7cdc: $0d
    pop hl                                        ; $7cdd: $e1
    ld [$0200], sp                                ; $7cde: $08 $00 $02
    inc bc                                        ; $7ce1: $03
    inc [hl]                                      ; $7ce2: $34
    jr nz, jr_0aa_7ce9                            ; $7ce3: $20 $04

    ld c, e                                       ; $7ce5: $4b
    db $10                                        ; $7ce6: $10
    inc bc                                        ; $7ce7: $03
    sbc a                                         ; $7ce8: $9f

jr_0aa_7ce9:
    ld [bc], a                                    ; $7ce9: $02
    ld b, b                                       ; $7cea: $40
    nop                                           ; $7ceb: $00

jr_0aa_7cec:
    ld bc, $0198                                  ; $7cec: $01 $98 $01
    ld bc, $0502                                  ; $7cef: $01 $02 $05
    ld b, $0b                                     ; $7cf2: $06 $0b
    nop                                           ; $7cf4: $00
    inc c                                         ; $7cf5: $0c
    inc bc                                        ; $7cf6: $03
    rlca                                          ; $7cf7: $07
    rlca                                          ; $7cf8: $07
    ldh a, [$0c]                                  ; $7cf9: $f0 $0c
    dec bc                                        ; $7cfb: $0b
    ld a, [hl]                                    ; $7cfc: $7e
    nop                                           ; $7cfd: $00
    ld a, c                                       ; $7cfe: $79
    inc bc                                        ; $7cff: $03
    ld [hl], b                                    ; $7d00: $70
    ld [hl], c                                    ; $7d01: $71
    ld a, [c]                                     ; $7d02: $f2
    add sp, -$40                                  ; $7d03: $e8 $c0
    ret nc                                        ; $7d05: $d0

    nop                                           ; $7d06: $00
    adc h                                         ; $7d07: $8c
    inc e                                         ; $7d08: $1c
    cp b                                          ; $7d09: $b8
    nop                                           ; $7d0a: $00
    db $e4                                        ; $7d0b: $e4
    dec de                                        ; $7d0c: $1b
    ld e, b                                       ; $7d0d: $58
    add e                                         ; $7d0e: $83
    nop                                           ; $7d0f: $00
    cp b                                          ; $7d10: $b8
    rst $00                                       ; $7d11: $c7
    ld b, h                                       ; $7d12: $44
    sub e                                         ; $7d13: $93
    ld a, b                                       ; $7d14: $78
    sla c                                         ; $7d15: $cb $21
    add a                                         ; $7d17: $87
    ld [bc], a                                    ; $7d18: $02
    ld l, c                                       ; $7d19: $69
    ld l, e                                       ; $7d1a: $6b
    ld b, e                                       ; $7d1b: $43
    nop                                           ; $7d1c: $00
    nop                                           ; $7d1d: $00
    add b                                         ; $7d1e: $80
    inc bc                                        ; $7d1f: $03
    nop                                           ; $7d20: $00
    add c                                         ; $7d21: $81
    nop                                           ; $7d22: $00
    add b                                         ; $7d23: $80
    ccf                                           ; $7d24: $3f
    rst $38                                       ; $7d25: $ff
    rra                                           ; $7d26: $1f
    sbc $67                                       ; $7d27: $de $67
    add [hl]                                      ; $7d29: $86
    dec sp                                        ; $7d2a: $3b
    nop                                           ; $7d2b: $00
    add b                                         ; $7d2c: $80
    ld [$08f7], sp                                ; $7d2d: $08 $f7 $08
    di                                            ; $7d30: $f3
    jr jr_0aa_7d47                                ; $7d31: $18 $14

    add hl, sp                                    ; $7d33: $39
    nop                                           ; $7d34: $00
    dec h                                         ; $7d35: $25
    inc d                                         ; $7d36: $14
    inc l                                         ; $7d37: $2c
    ld [$1119], sp                                ; $7d38: $08 $19 $11
    add hl, de                                    ; $7d3b: $19
    inc sp                                        ; $7d3c: $33
    ld d, b                                       ; $7d3d: $50
    xor d                                         ; $7d3e: $aa
    ld h, b                                       ; $7d3f: $60
    jr jr_0aa_7d46                                ; $7d40: $18 $04

    ld [bc], a                                    ; $7d42: $02
    nop                                           ; $7d43: $00
    nop                                           ; $7d44: $00
    nop                                           ; $7d45: $00

jr_0aa_7d46:
    ld [bc], a                                    ; $7d46: $02

jr_0aa_7d47:
    nop                                           ; $7d47: $00
    ld h, b                                       ; $7d48: $60
    ld [bc], a                                    ; $7d49: $02
    dec l                                         ; $7d4a: $2d
    nop                                           ; $7d4b: $00
    ld [hl], d                                    ; $7d4c: $72
    ld d, b                                       ; $7d4d: $50
    cp $07                                        ; $7d4e: $fe $07
    ld b, $1b                                     ; $7d50: $06 $1b
    dec d                                         ; $7d52: $15
    nop                                           ; $7d53: $00
    dec de                                        ; $7d54: $1b
    ld d, $0e                                     ; $7d55: $16 $0e
    add hl, bc                                    ; $7d57: $09
    ld a, [bc]                                    ; $7d58: $0a
    add hl, bc                                    ; $7d59: $09
    rlca                                          ; $7d5a: $07
    ld c, $00                                     ; $7d5b: $0e $00
    ld [hl-], a                                   ; $7d5d: $32
    dec d                                         ; $7d5e: $15
    rst $20                                       ; $7d5f: $e7
    db $ec                                        ; $7d60: $ec
    ld e, $30                                     ; $7d61: $1e $30
    ld e, $cf                                     ; $7d63: $1e $cf
    nop                                           ; $7d65: $00
    ret nz                                        ; $7d66: $c0

    ld a, $01                                     ; $7d67: $3e $01
    ldh [rNR11], a                                ; $7d69: $e0 $11
    db $e3                                        ; $7d6b: $e3
    db $f4                                        ; $7d6c: $f4
    inc bc                                        ; $7d6d: $03
    nop                                           ; $7d6e: $00
    db $ec                                        ; $7d6f: $ec
    ld a, [bc]                                    ; $7d70: $0a
    jr jr_0aa_7d8c                                ; $7d71: $18 $19

    nop                                           ; $7d73: $00
    cp $1d                                        ; $7d74: $fe $1d
    db $e3                                        ; $7d76: $e3
    nop                                           ; $7d77: $00
    adc h                                         ; $7d78: $8c
    add b                                         ; $7d79: $80
    ld e, $73                                     ; $7d7a: $1e $73
    sbc h                                         ; $7d7c: $9c
    add b                                         ; $7d7d: $80
    ld [$0063], sp                                ; $7d7e: $08 $63 $00
    ld h, d                                       ; $7d81: $62
    rst $18                                       ; $7d82: $df
    ld b, c                                       ; $7d83: $41
    call c, $cd40                                 ; $7d84: $dc $40 $cd
    ldh a, [rBGP]                                 ; $7d87: $f0 $47
    nop                                           ; $7d89: $00
    jr jr_0aa_7d8f                                ; $7d8a: $18 $03

jr_0aa_7d8c:
    adc h                                         ; $7d8c: $8c
    db $e3                                        ; $7d8d: $e3
    ld l, [hl]                                    ; $7d8e: $6e

jr_0aa_7d8f:
    add e                                         ; $7d8f: $83
    ld c, l                                       ; $7d90: $4d
    rlca                                          ; $7d91: $07
    nop                                           ; $7d92: $00
    dec e                                         ; $7d93: $1d
    rlca                                          ; $7d94: $07
    cpl                                           ; $7d95: $2f
    inc bc                                        ; $7d96: $03
    or c                                          ; $7d97: $b1
    jp hl                                         ; $7d98: $e9


    add c                                         ; $7d99: $81
    pop de                                        ; $7d9a: $d1
    nop                                           ; $7d9b: $00
    add c                                         ; $7d9c: $81
    pop bc                                        ; $7d9d: $c1
    add c                                         ; $7d9e: $81
    ld b, c                                       ; $7d9f: $41
    ld [hl], a                                    ; $7da0: $77
    add [hl]                                      ; $7da1: $86
    dec de                                        ; $7da2: $1b
    add d                                         ; $7da3: $82
    nop                                           ; $7da4: $00
    ld l, a                                       ; $7da5: $6f
    rrca                                          ; $7da6: $0f
    halt                                          ; $7da7: $76
    rlca                                          ; $7da8: $07
    add [hl]                                      ; $7da9: $86
    ld b, l                                       ; $7daa: $45
    add d                                         ; $7dab: $82
    ld b, e                                       ; $7dac: $43
    add b                                         ; $7dad: $80
    ld [bc], a                                    ; $7dae: $02
    ld [$c786], sp                                ; $7daf: $08 $86 $c7
    add [hl]                                      ; $7db2: $86
    push bc                                       ; $7db3: $c5
    adc h                                         ; $7db4: $8c
    ld c, [hl]                                    ; $7db5: $4e
    inc e                                         ; $7db6: $1c
    nop                                           ; $7db7: $00
    sbc d                                         ; $7db8: $9a
    ld bc, $03fc                                  ; $7db9: $01 $fc $03
    ldh a, [$0e]                                  ; $7dbc: $f0 $0e
    ldh [$c1], a                                  ; $7dbe: $e0 $c1
    nop                                           ; $7dc0: $00
    ret c                                         ; $7dc1: $d8

    rlca                                          ; $7dc2: $07
    jr nc, jr_0aa_7e34                            ; $7dc3: $30 $6f

    rrca                                          ; $7dc5: $0f
    ld h, b                                       ; $7dc6: $60
    rrca                                          ; $7dc7: $0f
    and b                                         ; $7dc8: $a0
    nop                                           ; $7dc9: $00
    adc a                                         ; $7dca: $8f
    add a                                         ; $7dcb: $87
    adc h                                         ; $7dcc: $8c
    ld h, e                                       ; $7dcd: $63
    rrca                                          ; $7dce: $0f
    ldh a, [rTAC]                                 ; $7dcf: $f0 $07
    ld hl, sp+$00                                 ; $7dd1: $f8 $00
    ld hl, sp-$11                                 ; $7dd3: $f8 $ef
    db $10                                        ; $7dd5: $10
    inc c                                         ; $7dd6: $0c
    db $e4                                        ; $7dd7: $e4
    rlca                                          ; $7dd8: $07
    db $e3                                        ; $7dd9: $e3
    rlca                                          ; $7dda: $07
    nop                                           ; $7ddb: $00
    di                                            ; $7ddc: $f3
    call c, $af19                                 ; $7ddd: $dc $19 $af
    cp b                                          ; $7de0: $b8
    inc c                                         ; $7de1: $0c
    dec sp                                        ; $7de2: $3b
    daa                                           ; $7de3: $27
    nop                                           ; $7de4: $00
    ld [hl], a                                    ; $7de5: $77
    ld h, a                                       ; $7de6: $67
    bit 4, h                                      ; $7de7: $cb $64
    jp $83c4                                      ; $7de9: $c3 $c4 $83


    ldh [rP1], a                                  ; $7dec: $e0 $00
    daa                                           ; $7dee: $27
    adc b                                         ; $7def: $88
    sbc h                                         ; $7df0: $9c
    dec sp                                        ; $7df1: $3b
    call c, $18ed                                 ; $7df2: $dc $ed $18
    pop af                                        ; $7df5: $f1
    nop                                           ; $7df6: $00
    call z, $bf41                                 ; $7df7: $cc $41 $bf
    ld e, $d2                                     ; $7dfa: $1e $d2
    pop hl                                        ; $7dfc: $e1
    add b                                         ; $7dfd: $80
    ld a, [c]                                     ; $7dfe: $f2
    nop                                           ; $7dff: $00
    rst $28                                       ; $7e00: $ef
    inc de                                        ; $7e01: $13
    ld h, [hl]                                    ; $7e02: $66
    ld [hl], c                                    ; $7e03: $71
    ld b, a                                       ; $7e04: $47
    ld b, c                                       ; $7e05: $41
    ld c, a                                       ; $7e06: $4f
    ld h, b                                       ; $7e07: $60
    nop                                           ; $7e08: $00
    cpl                                           ; $7e09: $2f
    ld h, b                                       ; $7e0a: $60
    ld c, a                                       ; $7e0b: $4f
    ld b, b                                       ; $7e0c: $40
    rra                                           ; $7e0d: $1f
    jr nz, jr_0aa_7e3f                            ; $7e0e: $20 $2f

    jr nc, jr_0aa_7e12                            ; $7e10: $30 $00

jr_0aa_7e12:
    rla                                           ; $7e12: $17
    ld b, $7e                                     ; $7e13: $06 $7e
    adc [hl]                                      ; $7e15: $8e
    cp h                                          ; $7e16: $bc
    adc [hl]                                      ; $7e17: $8e
    inc a                                         ; $7e18: $3c
    ld c, $00                                     ; $7e19: $0e $00
    ld a, h                                       ; $7e1b: $7c
    ld [hl], d                                    ; $7e1c: $72
    db $fc                                        ; $7e1d: $fc
    and $f8                                       ; $7e1e: $e6 $f8
    sbc h                                         ; $7e20: $9c
    ld sp, hl                                     ; $7e21: $f9
    add b                                         ; $7e22: $80
    nop                                           ; $7e23: $00
    di                                            ; $7e24: $f3
    sbc b                                         ; $7e25: $98
    sbc h                                         ; $7e26: $9c
    ret c                                         ; $7e27: $d8

    call nc, Call_0aa_7478                        ; $7e28: $d4 $78 $74
    jr jr_0aa_7e2f                                ; $7e2b: $18 $02

    sbc h                                         ; $7e2d: $9c
    db $e4                                        ; $7e2e: $e4

jr_0aa_7e2f:
    inc e                                         ; $7e2f: $1c
    db $e4                                        ; $7e30: $e4
    ld e, $1e                                     ; $7e31: $1e $1e
    dec b                                         ; $7e33: $05

jr_0aa_7e34:
    nop                                           ; $7e34: $00
    and b                                         ; $7e35: $a0
    nop                                           ; $7e36: $00
    adc a                                         ; $7e37: $8f
    or b                                          ; $7e38: $b0
    add a                                         ; $7e39: $87
    ret nc                                        ; $7e3a: $d0

    rst $00                                       ; $7e3b: $c7
    ret nc                                        ; $7e3c: $d0

    rst $00                                       ; $7e3d: $c7
    ret c                                         ; $7e3e: $d8

jr_0aa_7e3f:
    nop                                           ; $7e3f: $00
    jp $e3e9                                      ; $7e40: $c3 $e9 $e3


    ld [$09e3], a                                 ; $7e43: $ea $e3 $09
    ld a, [bc]                                    ; $7e46: $0a
    inc bc                                        ; $7e47: $03
    nop                                           ; $7e48: $00
    ld hl, sp-$04                                 ; $7e49: $f8 $fc
    rst $38                                       ; $7e4b: $ff
    inc bc                                        ; $7e4c: $03
    inc b                                         ; $7e4d: $04
    inc bc                                        ; $7e4e: $03
    or e                                          ; $7e4f: $b3
    add hl, bc                                    ; $7e50: $09
    nop                                           ; $7e51: $00
    ld b, l                                       ; $7e52: $45
    ld e, h                                       ; $7e53: $5c
    call c, Call_000_3ac4                         ; $7e54: $dc $c4 $3a
    add c                                         ; $7e57: $81
    push bc                                       ; $7e58: $c5
    db $ec                                        ; $7e59: $ec
    nop                                           ; $7e5a: $00
    db $eb                                        ; $7e5b: $eb
    ld [$efa7], a                                 ; $7e5c: $ea $a7 $ef
    and c                                         ; $7e5f: $a1
    adc a                                         ; $7e60: $8f
    ld b, $21                                     ; $7e61: $06 $21
    nop                                           ; $7e63: $00
    and e                                         ; $7e64: $a3
    inc sp                                        ; $7e65: $33
    ld a, $5b                                     ; $7e66: $3e $5b
    sub $c5                                       ; $7e68: $d6 $c5
    ret z                                         ; $7e6a: $c8

    db $fc                                        ; $7e6b: $fc
    nop                                           ; $7e6c: $00
    ld a, [hl]                                    ; $7e6d: $7e
    ld hl, sp+$24                                 ; $7e6e: $f8 $24
    ld sp, hl                                     ; $7e70: $f9
    dec b                                         ; $7e71: $05
    nop                                           ; $7e72: $00
    add e                                         ; $7e73: $83
    ldh [rP1], a                                  ; $7e74: $e0 $00
    add [hl]                                      ; $7e76: $86
    ldh a, [$e2]                                  ; $7e77: $f0 $e2
    add e                                         ; $7e79: $83
    ld [hl], e                                    ; $7e7a: $73
    di                                            ; $7e7b: $f3
    ld [bc], a                                    ; $7e7c: $02
    ldh [rP1], a                                  ; $7e7d: $e0 $00
    rlca                                          ; $7e7f: $07
    jr c, @+$2d                                   ; $7e80: $38 $2b

    add l                                         ; $7e82: $85
    dec e                                         ; $7e83: $1d
    add d                                         ; $7e84: $82
    ld a, [hl-]                                   ; $7e85: $3a
    ld b, h                                       ; $7e86: $44
    nop                                           ; $7e87: $00
    ld c, d                                       ; $7e88: $4a
    ld c, h                                       ; $7e89: $4c
    ld b, b                                       ; $7e8a: $40
    ld [bc], a                                    ; $7e8b: $02
    ld h, b                                       ; $7e8c: $60
    rst $08                                       ; $7e8d: $cf
    ldh [$08], a                                  ; $7e8e: $e0 $08

jr_0aa_7e90:
    nop                                           ; $7e90: $00
    rst $30                                       ; $7e91: $f7
    rst $30                                       ; $7e92: $f7
    push af                                       ; $7e93: $f5
    ld b, $17                                     ; $7e94: $06 $17
    ld sp, $305b                                  ; $7e96: $31 $5b $30
    nop                                           ; $7e99: $00
    ld l, l                                       ; $7e9a: $6d
    ld l, b                                       ; $7e9b: $68
    call c, $34dc                                 ; $7e9c: $dc $dc $34
    db $f4                                        ; $7e9f: $f4
    inc e                                         ; $7ea0: $1c
    inc a                                         ; $7ea1: $3c
    nop                                           ; $7ea2: $00
    call nz, $c43c                                ; $7ea3: $c4 $3c $c4
    jr nc, jr_0aa_7e90                            ; $7ea6: $30 $e8

    add sp, -$28                                  ; $7ea8: $e8 $d8
    ld hl, sp+$00                                 ; $7eaa: $f8 $00
    ldh [rNR10], a                                ; $7eac: $e0 $10
    ret nz                                        ; $7eae: $c0

    rla                                           ; $7eaf: $17
    rst $00                                       ; $7eb0: $c7
    rla                                           ; $7eb1: $17
    rst $00                                       ; $7eb2: $c7
    dec c                                         ; $7eb3: $0d
    nop                                           ; $7eb4: $00
    inc c                                         ; $7eb5: $0c
    dec b                                         ; $7eb6: $05
    pop af                                        ; $7eb7: $f1
    dec b                                         ; $7eb8: $05
    pop af                                        ; $7eb9: $f1
    ld b, $f0                                     ; $7eba: $06 $f0
    ld [bc], a                                    ; $7ebc: $02
    nop                                           ; $7ebd: $00
    ld hl, sp+$02                                 ; $7ebe: $f8 $02
    ld hl, sp+$03                                 ; $7ec0: $f8 $03
    ld hl, sp+$01                                 ; $7ec2: $f8 $01
    db $fc                                        ; $7ec4: $fc
    jr c, jr_0aa_7ec7                             ; $7ec5: $38 $00

jr_0aa_7ec7:
    nop                                           ; $7ec7: $00
    ld [hl], b                                    ; $7ec8: $70
    ccf                                           ; $7ec9: $3f
    ld a, b                                       ; $7eca: $78
    rra                                           ; $7ecb: $1f
    rrca                                          ; $7ecc: $0f
    inc sp                                        ; $7ecd: $33
    rlca                                          ; $7ece: $07
    nop                                           ; $7ecf: $00
    add hl, de                                    ; $7ed0: $19
    rra                                           ; $7ed1: $1f
    db $e3                                        ; $7ed2: $e3
    rrca                                          ; $7ed3: $0f
    ld [hl], c                                    ; $7ed4: $71
    ld a, b                                       ; $7ed5: $78
    rra                                           ; $7ed6: $1f
    ld b, b                                       ; $7ed7: $40
    nop                                           ; $7ed8: $00
    ldh [$09], a                                  ; $7ed9: $e0 $09
    ld d, l                                       ; $7edb: $55
    sbc l                                         ; $7edc: $9d
    ld hl, $d0cc                                  ; $7edd: $21 $cc $d0
    pop hl                                        ; $7ee0: $e1
    nop                                           ; $7ee1: $00
    ld [$33c0], a                                 ; $7ee2: $ea $c0 $33
    ld [c], a                                     ; $7ee5: $e2
    dec de                                        ; $7ee6: $1b
    pop bc                                        ; $7ee7: $c1
    dec a                                         ; $7ee8: $3d
    ld hl, $0100                                  ; $7ee9: $21 $00 $01
    add e                                         ; $7eec: $83
    jp $20e4                                      ; $7eed: $c3 $e4 $20


    jr nz, jr_0aa_7ef5                            ; $7ef0: $20 $03

    rra                                           ; $7ef2: $1f
    nop                                           ; $7ef3: $00
    or a                                          ; $7ef4: $b7

jr_0aa_7ef5:
    adc a                                         ; $7ef5: $8f
    ld d, e                                       ; $7ef6: $53
    add [hl]                                      ; $7ef7: $86
    ld e, e                                       ; $7ef8: $5b
    add b                                         ; $7ef9: $80
    ld [bc], a                                    ; $7efa: $02
    dec de                                        ; $7efb: $1b
    nop                                           ; $7efc: $00
    adc b                                         ; $7efd: $88
    ld e, c                                       ; $7efe: $59
    ld c, b                                       ; $7eff: $48
    ldh a, [$8b]                                  ; $7f00: $f0 $8b
    cp b                                          ; $7f02: $b8
    rst $00                                       ; $7f03: $c7
    sbc a                                         ; $7f04: $9f
    nop                                           ; $7f05: $00
    ld h, b                                       ; $7f06: $60
    rla                                           ; $7f07: $17
    ldh a, [$e7]                                  ; $7f08: $f0 $e7
    add b                                         ; $7f0a: $80
    cp $81                                        ; $7f0b: $fe $81
    call z, $c900                                 ; $7f0d: $cc $00 $c9
    call c, Call_000_0ecc                         ; $7f10: $dc $cc $0e
    call nz, $ea0e                                ; $7f13: $c4 $0e $ea
    adc d                                         ; $7f16: $8a
    nop                                           ; $7f17: $00
    rst $18                                       ; $7f18: $df
    jp z, $f81b                                   ; $7f19: $ca $1b $f8

    inc d                                         ; $7f1c: $14
    pop af                                        ; $7f1d: $f1
    sbc c                                         ; $7f1e: $99
    scf                                           ; $7f1f: $37
    nop                                           ; $7f20: $00
    add a                                         ; $7f21: $87
    cpl                                           ; $7f22: $2f
    adc a                                         ; $7f23: $8f
    and b                                         ; $7f24: $a0
    adc a                                         ; $7f25: $8f
    ld h, b                                       ; $7f26: $60
    rrca                                          ; $7f27: $0f
    ld b, b                                       ; $7f28: $40

Call_0aa_7f29:
    nop                                           ; $7f29: $00
    rra                                           ; $7f2a: $1f
    ld hl, sp-$01                                 ; $7f2b: $f8 $ff
    sbc h                                         ; $7f2d: $9c
    ld l, h                                       ; $7f2e: $6c
    add $3a                                       ; $7f2f: $c6 $3a
    ld bc, $fc01                                  ; $7f31: $01 $01 $fc
    ld bc, $00fc                                  ; $7f34: $01 $fc $00
    cp $fe                                        ; $7f37: $fe $fe
    nop                                           ; $7f39: $00
    ld [bc], a                                    ; $7f3a: $02
    ld [$ff40], sp                                ; $7f3b: $08 $40 $ff
    dec a                                         ; $7f3e: $3d
    ld [bc], a                                    ; $7f3f: $02
    ld a, h                                       ; $7f40: $7c
    rrca                                          ; $7f41: $0f
    add a                                         ; $7f42: $87
    ccf                                           ; $7f43: $3f
    add c                                         ; $7f44: $81
    ccf                                           ; $7f45: $3f
    ld bc, $3f8f                                  ; $7f46: $01 $8f $3f
    add a                                         ; $7f49: $87
    ccf                                           ; $7f4a: $3f
    rst $00                                       ; $7f4b: $c7
    rra                                           ; $7f4c: $1f
    ld b, e                                       ; $7f4d: $43
    ld [bc], a                                    ; $7f4e: $02
    nop                                           ; $7f4f: $00
    nop                                           ; $7f50: $00
    ldh [rNR32], a                                ; $7f51: $e0 $1c
    ldh [$7c], a                                  ; $7f53: $e0 $7c
    ldh a, [$3e]                                  ; $7f55: $f0 $3e
    dec a                                         ; $7f57: $3d
    ld hl, sp+$00                                 ; $7f58: $f8 $00
    dec de                                        ; $7f5a: $1b
    ld hl, sp+$03                                 ; $7f5b: $f8 $03
    ei                                            ; $7f5d: $fb
    inc bc                                        ; $7f5e: $03

jr_0aa_7f5f:
    ld a, [$3cf0]                                 ; $7f5f: $fa $f0 $3c
    nop                                           ; $7f62: $00
    jr nz, jr_0aa_7fbd                            ; $7f63: $20 $58

    db $fc                                        ; $7f65: $fc
    ld h, e                                       ; $7f66: $63
    rra                                           ; $7f67: $1f
    ld h, b                                       ; $7f68: $60
    add b                                         ; $7f69: $80
    add c                                         ; $7f6a: $81
    nop                                           ; $7f6b: $00
    ld hl, sp-$7c                                 ; $7f6c: $f8 $84
    pop hl                                        ; $7f6e: $e1
    rra                                           ; $7f6f: $1f
    nop                                           ; $7f70: $00
    ld b, $63                                     ; $7f71: $06 $63
    ld [hl], b                                    ; $7f73: $70
    nop                                           ; $7f74: $00
    ld a, a                                       ; $7f75: $7f
    ld a, h                                       ; $7f76: $7c
    nop                                           ; $7f77: $00
    ldh [$f0], a                                  ; $7f78: $e0 $f0
    add hl, de                                    ; $7f7a: $19
    ld a, a                                       ; $7f7b: $7f
    ld b, b                                       ; $7f7c: $40
    nop                                           ; $7f7d: $00
    nop                                           ; $7f7e: $00
    nop                                           ; $7f7f: $00
    cp d                                          ; $7f80: $ba
    ld a, l                                       ; $7f81: $7d
    call nz, Call_000_3884                        ; $7f82: $c4 $84 $38
    pop bc                                        ; $7f85: $c1
    nop                                           ; $7f86: $00
    db $e3                                        ; $7f87: $e3
    ldh [$08], a                                  ; $7f88: $e0 $08
    rlca                                          ; $7f8a: $07
    add e                                         ; $7f8b: $83
    ld a, l                                       ; $7f8c: $7d
    jr nc, jr_0aa_7f5f                            ; $7f8d: $30 $d0

    nop                                           ; $7f8f: $00
    ld bc, $7002                                  ; $7f90: $01 $02 $70
    cp a                                          ; $7f93: $bf
    add d                                         ; $7f94: $82
    adc d                                         ; $7f95: $8a
    jp nz, Jump_000_00ba                          ; $7f96: $c2 $ba $00

    ld hl, sp+$0c                                 ; $7f99: $f8 $0c
    db $e4                                        ; $7f9b: $e4
    inc a                                         ; $7f9c: $3c
    inc e                                         ; $7f9d: $1c
    and $fc                                       ; $7f9e: $e6 $fc
    ld b, [hl]                                    ; $7fa0: $46
    ld sp, $7ca0                                  ; $7fa1: $31 $a0 $7c
    ld e, c                                       ; $7fa4: $59
    ld a, [bc]                                    ; $7fa5: $0a
    sbc [hl]                                      ; $7fa6: $9e
    ld a, d                                       ; $7fa7: $7a
    ld h, c                                       ; $7fa8: $61
    rra                                           ; $7fa9: $1f
    and b                                         ; $7faa: $a0
    sub b                                         ; $7fab: $90
    nop                                           ; $7fac: $00
    add b                                         ; $7fad: $80
    ld h, h                                       ; $7fae: $64
    ld bc, $1fc0                                  ; $7faf: $01 $c0 $1f
    ret nz                                        ; $7fb2: $c0

    nop                                           ; $7fb3: $00
    ret nz                                        ; $7fb4: $c0

    nop                                           ; $7fb5: $00
    nop                                           ; $7fb6: $00
    nop                                           ; $7fb7: $00
    ld hl, sp+$0f                                 ; $7fb8: $f8 $0f
    rrca                                          ; $7fba: $0f
    ld [hl], a                                    ; $7fbb: $77
    rlca                                          ; $7fbc: $07

jr_0aa_7fbd:
    dec bc                                        ; $7fbd: $0b
    rst $20                                       ; $7fbe: $e7
    rra                                           ; $7fbf: $1f
    ld b, b                                       ; $7fc0: $40
    nop                                           ; $7fc1: $00
    adc [hl]                                      ; $7fc2: $8e
    stop                                          ; $7fc3: $10 $00
    nop                                           ; $7fc5: $00
    ld sp, $0574                                  ; $7fc6: $31 $74 $05
    ld [$4508], sp                                ; $7fc9: $08 $08 $45
    ld [hl], b                                    ; $7fcc: $70
    dec b                                         ; $7fcd: $05
    ld [hl], l                                    ; $7fce: $75
    db $10                                        ; $7fcf: $10
    jr @+$01                                      ; $7fd0: $18 $ff

    nop                                           ; $7fd2: $00
    ld a, [bc]                                    ; $7fd3: $0a
    ld bc, $96f3                                  ; $7fd4: $01 $f3 $96
    ld h, a                                       ; $7fd7: $67
    or l                                          ; $7fd8: $b5
    ld b, [hl]                                    ; $7fd9: $46
    push af                                       ; $7fda: $f5
    rlca                                          ; $7fdb: $07
    db $10                                        ; $7fdc: $10
    jr z, jr_0aa_7fdf                             ; $7fdd: $28 $00

jr_0aa_7fdf:
    add $26                                       ; $7fdf: $c6 $26
    call nz, $f0a4                                ; $7fe1: $c4 $a4 $f0
    inc d                                         ; $7fe4: $14
    ldh [$ac], a                                  ; $7fe5: $e0 $ac
    ld b, $08                                     ; $7fe7: $06 $08
    inc bc                                        ; $7fe9: $03
    ld hl, sp+$03                                 ; $7fea: $f8 $03
    inc bc                                        ; $7fec: $03
    inc [hl]                                      ; $7fed: $34
    jr nz, @+$06                                  ; $7fee: $20 $04

    ld c, e                                       ; $7ff0: $4b
    rra                                           ; $7ff1: $1f
    ld a, l                                       ; $7ff2: $7d
    ld [hl], $03                                  ; $7ff3: $36 $03
    xor h                                         ; $7ff5: $ac
    ld bc, $0000                                  ; $7ff6: $01 $00 $00
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
