; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $08e", ROMX[$4000], BANK[$8e]

    db $8e

    ld [$1800], sp                                ; $4001: $08 $00 $18
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    db $18, $d1                                   ; $4006: $18 $d1
    jp nc, $d1d1                                  ; $4008: $d2 $d1 $d1

    db $d3                                        ; $400b: $d3
    pop de                                        ; $400c: $d1
    call nc, $d3d5                                ; $400d: $d4 $d5 $d3
    sub $d7                                       ; $4010: $d6 $d7
    ret c                                         ; $4012: $d8

    db $d3                                        ; $4013: $d3
    reti                                          ; $4014: $d9


    jp c, $83db                                   ; $4015: $da $db $83

    inc bc                                        ; $4018: $03
    inc bc                                        ; $4019: $03
    inc bc                                        ; $401a: $03
    inc bc                                        ; $401b: $03
    inc bc                                        ; $401c: $03
    inc bc                                        ; $401d: $03
    inc bc                                        ; $401e: $03
    inc bc                                        ; $401f: $03
    inc bc                                        ; $4020: $03
    inc bc                                        ; $4021: $03
    inc bc                                        ; $4022: $03
    inc bc                                        ; $4023: $03
    inc bc                                        ; $4024: $03
    inc bc                                        ; $4025: $03
    inc bc                                        ; $4026: $03
    jp nc, $d1dc                                  ; $4027: $d2 $dc $d1

    jp nc, $dedd                                  ; $402a: $d2 $dd $de

    rst $18                                       ; $402d: $df
    ldh [$e1], a                                  ; $402e: $e0 $e1
    ld [c], a                                     ; $4030: $e2
    db $e3                                        ; $4031: $e3
    db $e4                                        ; $4032: $e4
    push hl                                       ; $4033: $e5
    call c, $e7e6                                 ; $4034: $dc $e6 $e7
    inc bc                                        ; $4037: $03
    inc bc                                        ; $4038: $03
    inc bc                                        ; $4039: $03
    inc bc                                        ; $403a: $03
    inc bc                                        ; $403b: $03
    inc bc                                        ; $403c: $03
    inc bc                                        ; $403d: $03
    inc bc                                        ; $403e: $03
    inc bc                                        ; $403f: $03
    inc bc                                        ; $4040: $03
    inc bc                                        ; $4041: $03
    inc bc                                        ; $4042: $03
    ld [bc], a                                    ; $4043: $02
    inc hl                                        ; $4044: $23
    inc hl                                        ; $4045: $23
    inc hl                                        ; $4046: $23
    call c, $d2d1                                 ; $4047: $dc $d1 $d2
    pop de                                        ; $404a: $d1
    add sp, -$17                                  ; $404b: $e8 $e9
    ld [$eceb], a                                 ; $404d: $ea $eb $ec
    db $ed                                        ; $4050: $ed
    xor $ef                                       ; $4051: $ee $ef
    ldh a, [$f1]                                  ; $4053: $f0 $f1
    ld a, [c]                                     ; $4055: $f2
    di                                            ; $4056: $f3
    inc bc                                        ; $4057: $03
    inc bc                                        ; $4058: $03
    inc bc                                        ; $4059: $03
    inc bc                                        ; $405a: $03
    inc bc                                        ; $405b: $03
    inc bc                                        ; $405c: $03
    inc bc                                        ; $405d: $03
    inc bc                                        ; $405e: $03
    inc bc                                        ; $405f: $03
    inc bc                                        ; $4060: $03
    inc bc                                        ; $4061: $03
    inc bc                                        ; $4062: $03
    ld [bc], a                                    ; $4063: $02
    inc bc                                        ; $4064: $03
    inc bc                                        ; $4065: $03
    inc bc                                        ; $4066: $03
    jp nc, $d1dc                                  ; $4067: $d2 $dc $d1

    jp nc, $f5f4                                  ; $406a: $d2 $f4 $f5

    or $f7                                        ; $406d: $f6 $f7
    ld hl, sp-$07                                 ; $406f: $f8 $f9
    rst $20                                       ; $4071: $e7
    and $fa                                       ; $4072: $e6 $fa
    ei                                            ; $4074: $fb
    db $fc                                        ; $4075: $fc
    db $fd                                        ; $4076: $fd
    inc bc                                        ; $4077: $03
    inc bc                                        ; $4078: $03
    inc bc                                        ; $4079: $03
    inc bc                                        ; $407a: $03
    inc bc                                        ; $407b: $03
    inc bc                                        ; $407c: $03
    inc bc                                        ; $407d: $03
    inc bc                                        ; $407e: $03
    inc bc                                        ; $407f: $03
    inc bc                                        ; $4080: $03
    inc bc                                        ; $4081: $03
    inc bc                                        ; $4082: $03
    ld [bc], a                                    ; $4083: $02
    rlca                                          ; $4084: $07
    inc bc                                        ; $4085: $03
    inc bc                                        ; $4086: $03
    db $d3                                        ; $4087: $d3
    cp $ff                                        ; $4088: $fe $ff
    nop                                           ; $408a: $00
    ei                                            ; $408b: $fb
    ld bc, $0302                                  ; $408c: $01 $02 $03
    inc b                                         ; $408f: $04
    inc b                                         ; $4090: $04
    dec b                                         ; $4091: $05
    ld b, $d3                                     ; $4092: $06 $d3
    rlca                                          ; $4094: $07
    db $d3                                        ; $4095: $d3
    ld [$0303], sp                                ; $4096: $08 $03 $03
    inc bc                                        ; $4099: $03
    inc bc                                        ; $409a: $03
    ld b, $03                                     ; $409b: $06 $03
    inc bc                                        ; $409d: $03
    ld [bc], a                                    ; $409e: $02
    nop                                           ; $409f: $00
    nop                                           ; $40a0: $00
    inc bc                                        ; $40a1: $03
    ld h, e                                       ; $40a2: $63
    nop                                           ; $40a3: $00
    inc bc                                        ; $40a4: $03
    nop                                           ; $40a5: $00
    inc bc                                        ; $40a6: $03
    add hl, bc                                    ; $40a7: $09
    ld a, [bc]                                    ; $40a8: $0a
    dec bc                                        ; $40a9: $0b
    inc c                                         ; $40aa: $0c
    dec c                                         ; $40ab: $0d
    ld c, $fd                                     ; $40ac: $0e $fd
    db $fc                                        ; $40ae: $fc
    rrca                                          ; $40af: $0f
    ei                                            ; $40b0: $fb
    db $10                                        ; $40b1: $10
    ld de, $1312                                  ; $40b2: $11 $12 $13
    inc d                                         ; $40b5: $14
    dec b                                         ; $40b6: $05
    ld [bc], a                                    ; $40b7: $02
    inc bc                                        ; $40b8: $03
    inc bc                                        ; $40b9: $03
    inc bc                                        ; $40ba: $03
    inc bc                                        ; $40bb: $03
    inc b                                         ; $40bc: $04
    inc hl                                        ; $40bd: $23
    inc hl                                        ; $40be: $23
    ld [bc], a                                    ; $40bf: $02
    ld b, $03                                     ; $40c0: $06 $03
    inc bc                                        ; $40c2: $03
    inc bc                                        ; $40c3: $03
    ld b, $03                                     ; $40c4: $06 $03
    ld h, e                                       ; $40c6: $63
    dec d                                         ; $40c7: $15
    ld d, $17                                     ; $40c8: $16 $17
    jr jr_08e_40e5                                ; $40ca: $18 $19

    inc b                                         ; $40cc: $04
    ld a, [de]                                    ; $40cd: $1a
    dec de                                        ; $40ce: $1b
    ld b, $1c                                     ; $40cf: $06 $1c
    ei                                            ; $40d1: $fb
    dec e                                         ; $40d2: $1d
    ld e, $1f                                     ; $40d3: $1e $1f
    jr nz, jr_08e_40f8                            ; $40d5: $20 $21

    inc hl                                        ; $40d7: $23
    inc hl                                        ; $40d8: $23
    inc bc                                        ; $40d9: $03
    ld [bc], a                                    ; $40da: $02
    ld [bc], a                                    ; $40db: $02
    nop                                           ; $40dc: $00
    inc bc                                        ; $40dd: $03
    ld [bc], a                                    ; $40de: $02
    inc hl                                        ; $40df: $23
    inc hl                                        ; $40e0: $23
    rlca                                          ; $40e1: $07
    inc bc                                        ; $40e2: $03
    inc hl                                        ; $40e3: $23
    inc bc                                        ; $40e4: $03

jr_08e_40e5:
    inc bc                                        ; $40e5: $03
    inc bc                                        ; $40e6: $03
    ld [hl+], a                                   ; $40e7: $22
    inc de                                        ; $40e8: $13
    ld de, $2310                                  ; $40e9: $11 $10 $23
    inc de                                        ; $40ec: $13
    inc h                                         ; $40ed: $24
    dec h                                         ; $40ee: $25
    ld h, $fb                                     ; $40ef: $26 $fb
    daa                                           ; $40f1: $27
    jr z, jr_08e_411d                             ; $40f2: $28 $29

    ld a, [hl+]                                   ; $40f4: $2a
    dec hl                                        ; $40f5: $2b
    inc l                                         ; $40f6: $2c
    inc bc                                        ; $40f7: $03

jr_08e_40f8:
    ld b, $23                                     ; $40f8: $06 $23
    inc hl                                        ; $40fa: $23
    inc bc                                        ; $40fb: $03
    rlca                                          ; $40fc: $07
    inc bc                                        ; $40fd: $03
    inc bc                                        ; $40fe: $03
    inc bc                                        ; $40ff: $03

Jump_08e_4100:
    ld b, $03                                     ; $4100: $06 $03
    inc hl                                        ; $4102: $23
    inc bc                                        ; $4103: $03
    inc bc                                        ; $4104: $03
    ld [hl+], a                                   ; $4105: $22
    inc hl                                        ; $4106: $23
    db $d3                                        ; $4107: $d3
    inc c                                         ; $4108: $0c
    dec l                                         ; $4109: $2d
    ld l, $04                                     ; $410a: $2e $04
    db $fc                                        ; $410c: $fc
    db $fd                                        ; $410d: $fd
    cpl                                           ; $410e: $2f
    ei                                            ; $410f: $fb
    ld de, $3010                                  ; $4110: $11 $10 $30
    db $d3                                        ; $4113: $d3
    inc h                                         ; $4114: $24
    dec h                                         ; $4115: $25
    ld sp, $2300                                  ; $4116: $31 $00 $23
    inc bc                                        ; $4119: $03
    inc bc                                        ; $411a: $03
    nop                                           ; $411b: $00
    inc bc                                        ; $411c: $03

jr_08e_411d:
    inc bc                                        ; $411d: $03
    inc bc                                        ; $411e: $03
    ld b, $23                                     ; $411f: $06 $23
    inc hl                                        ; $4121: $23
    inc bc                                        ; $4122: $03
    inc bc                                        ; $4123: $03
    inc bc                                        ; $4124: $03
    inc bc                                        ; $4125: $03
    inc bc                                        ; $4126: $03
    dec b                                         ; $4127: $05
    inc de                                        ; $4128: $13
    ld [hl-], a                                   ; $4129: $32
    ei                                            ; $412a: $fb
    inc sp                                        ; $412b: $33
    inc [hl]                                      ; $412c: $34
    dec [hl]                                      ; $412d: $35
    ld [hl], $37                                  ; $412e: $36 $37
    jr c, jr_08e_416b                             ; $4130: $38 $39

    ld a, [hl-]                                   ; $4132: $3a
    dec sp                                        ; $4133: $3b
    inc b                                         ; $4134: $04
    inc a                                         ; $4135: $3c
    dec a                                         ; $4136: $3d
    ld h, e                                       ; $4137: $63
    rlca                                          ; $4138: $07
    inc bc                                        ; $4139: $03
    rlca                                          ; $413a: $07
    inc bc                                        ; $413b: $03
    ld b, $03                                     ; $413c: $06 $03
    inc bc                                        ; $413e: $03
    inc bc                                        ; $413f: $03
    inc bc                                        ; $4140: $03
    inc hl                                        ; $4141: $23
    inc hl                                        ; $4142: $23
    inc bc                                        ; $4143: $03
    nop                                           ; $4144: $00
    inc bc                                        ; $4145: $03
    inc bc                                        ; $4146: $03
    add hl, hl                                    ; $4147: $29
    ld a, $3f                                     ; $4148: $3e $3f
    ld b, b                                       ; $414a: $40
    ld e, $41                                     ; $414b: $1e $41
    ld b, d                                       ; $414d: $42
    ld b, e                                       ; $414e: $43
    add hl, hl                                    ; $414f: $29
    dec d                                         ; $4150: $15
    ld b, h                                       ; $4151: $44
    ld b, l                                       ; $4152: $45
    ei                                            ; $4153: $fb
    add hl, de                                    ; $4154: $19
    ld b, [hl]                                    ; $4155: $46
    ld b, a                                       ; $4156: $47
    inc bc                                        ; $4157: $03
    ld [bc], a                                    ; $4158: $02
    inc bc                                        ; $4159: $03
    inc bc                                        ; $415a: $03
    inc bc                                        ; $415b: $03
    inc bc                                        ; $415c: $03
    inc bc                                        ; $415d: $03
    inc bc                                        ; $415e: $03
    inc hl                                        ; $415f: $23
    inc hl                                        ; $4160: $23
    inc bc                                        ; $4161: $03
    inc bc                                        ; $4162: $03
    rlca                                          ; $4163: $07
    inc bc                                        ; $4164: $03
    inc bc                                        ; $4165: $03
    inc hl                                        ; $4166: $23
    ld c, b                                       ; $4167: $48
    ld c, c                                       ; $4168: $49
    ld c, d                                       ; $4169: $4a
    add hl, sp                                    ; $416a: $39

jr_08e_416b:
    ld c, e                                       ; $416b: $4b
    ld c, h                                       ; $416c: $4c
    db $e4                                        ; $416d: $e4
    ld c, l                                       ; $416e: $4d
    ld c, [hl]                                    ; $416f: $4e
    ld c, a                                       ; $4170: $4f
    pop de                                        ; $4171: $d1
    call c, $5150                                 ; $4172: $dc $50 $51
    ld d, d                                       ; $4175: $52
    ld a, [bc]                                    ; $4176: $0a
    inc hl                                        ; $4177: $23
    inc bc                                        ; $4178: $03
    inc bc                                        ; $4179: $03
    inc bc                                        ; $417a: $03
    ld [bc], a                                    ; $417b: $02
    ld [bc], a                                    ; $417c: $02
    inc bc                                        ; $417d: $03
    inc bc                                        ; $417e: $03
    ld [bc], a                                    ; $417f: $02
    ld [bc], a                                    ; $4180: $02
    inc hl                                        ; $4181: $23
    inc hl                                        ; $4182: $23
    ld [bc], a                                    ; $4183: $02
    ld [bc], a                                    ; $4184: $02
    inc bc                                        ; $4185: $03

jr_08e_4186:
    inc bc                                        ; $4186: $03
    ei                                            ; $4187: $fb
    db $d3                                        ; $4188: $d3
    jr z, jr_08e_4186                             ; $4189: $28 $fb

    db $d3                                        ; $418b: $d3
    ei                                            ; $418c: $fb
    inc l                                         ; $418d: $2c
    ld d, e                                       ; $418e: $53
    db $d3                                        ; $418f: $d3
    ld d, h                                       ; $4190: $54
    ld d, l                                       ; $4191: $55
    ld d, [hl]                                    ; $4192: $56
    db $d3                                        ; $4193: $d3
    ld d, a                                       ; $4194: $57
    ld e, b                                       ; $4195: $58
    ld e, c                                       ; $4196: $59
    ld b, $03                                     ; $4197: $06 $03
    inc hl                                        ; $4199: $23
    ld b, $00                                     ; $419a: $06 $00
    ld b, $23                                     ; $419c: $06 $23
    inc bc                                        ; $419e: $03
    nop                                           ; $419f: $00
    inc bc                                        ; $41a0: $03
    inc bc                                        ; $41a1: $03
    inc bc                                        ; $41a2: $03
    nop                                           ; $41a3: $00
    inc bc                                        ; $41a4: $03
    inc bc                                        ; $41a5: $03
    inc hl                                        ; $41a6: $23
    add hl, sp                                    ; $41a7: $39
    ld e, d                                       ; $41a8: $5a
    ld e, e                                       ; $41a9: $5b
    inc [hl]                                      ; $41aa: $34
    inc de                                        ; $41ab: $13
    ld h, $5c                                     ; $41ac: $26 $5c
    ld e, l                                       ; $41ae: $5d
    ei                                            ; $41af: $fb
    ld e, [hl]                                    ; $41b0: $5e
    ld e, a                                       ; $41b1: $5f
    ld h, b                                       ; $41b2: $60
    ld h, c                                       ; $41b3: $61
    ld h, d                                       ; $41b4: $62
    ld h, e                                       ; $41b5: $63
    ld h, h                                       ; $41b6: $64
    inc hl                                        ; $41b7: $23
    inc bc                                        ; $41b8: $03
    inc bc                                        ; $41b9: $03
    ld b, $06                                     ; $41ba: $06 $06
    inc hl                                        ; $41bc: $23
    inc bc                                        ; $41bd: $03
    inc bc                                        ; $41be: $03
    ld b, $03                                     ; $41bf: $06 $03
    inc bc                                        ; $41c1: $03
    inc hl                                        ; $41c2: $23
    inc bc                                        ; $41c3: $03
    inc bc                                        ; $41c4: $03
    inc bc                                        ; $41c5: $03
    inc hl                                        ; $41c6: $23
    jr nz, jr_08e_41cf                            ; $41c7: $20 $06

    inc e                                         ; $41c9: $1c
    ld h, l                                       ; $41ca: $65
    ld h, [hl]                                    ; $41cb: $66
    ld e, $36                                     ; $41cc: $1e $36
    db $db                                        ; $41ce: $db

jr_08e_41cf:
    ld h, a                                       ; $41cf: $67
    inc de                                        ; $41d0: $13
    ld a, [hl-]                                   ; $41d1: $3a
    nop                                           ; $41d2: $00
    ld l, b                                       ; $41d3: $68
    inc de                                        ; $41d4: $13
    dec a                                         ; $41d5: $3d
    inc bc                                        ; $41d6: $03
    inc hl                                        ; $41d7: $23
    inc hl                                        ; $41d8: $23
    inc hl                                        ; $41d9: $23
    inc hl                                        ; $41da: $23
    inc bc                                        ; $41db: $03
    inc hl                                        ; $41dc: $23
    inc hl                                        ; $41dd: $23
    inc bc                                        ; $41de: $03
    inc hl                                        ; $41df: $23
    rlca                                          ; $41e0: $07
    inc bc                                        ; $41e1: $03
    inc bc                                        ; $41e2: $03
    inc hl                                        ; $41e3: $23
    ld b, $23                                     ; $41e4: $06 $23
    inc bc                                        ; $41e6: $03
    ld l, c                                       ; $41e7: $69
    ld l, d                                       ; $41e8: $6a
    ld l, e                                       ; $41e9: $6b
    ld c, $6c                                     ; $41ea: $0e $6c
    jp c, Jump_08e_6dd9                           ; $41ec: $da $d9 $6d

    add hl, bc                                    ; $41ef: $09
    rst $38                                       ; $41f0: $ff
    cp $6d                                        ; $41f1: $fe $6d
    dec c                                         ; $41f3: $0d
    ld [bc], a                                    ; $41f4: $02
    ld bc, $0239                                  ; $41f5: $01 $39 $02
    inc hl                                        ; $41f8: $23
    ld [hl+], a                                   ; $41f9: $22
    inc bc                                        ; $41fa: $03
    ld [bc], a                                    ; $41fb: $02
    inc hl                                        ; $41fc: $23
    ld [hl+], a                                   ; $41fd: $22
    ld b, $03                                     ; $41fe: $06 $03
    inc hl                                        ; $4200: $23
    inc hl                                        ; $4201: $23
    ld b, $03                                     ; $4202: $06 $03
    inc hl                                        ; $4204: $23
    inc hl                                        ; $4205: $23
    inc bc                                        ; $4206: $03
    call c, $d2d1                                 ; $4207: $dc $d1 $d2
    call c, Call_08e_6ed2                         ; $420a: $dc $d2 $6e
    ld l, a                                       ; $420d: $6f
    db $ed                                        ; $420e: $ed
    call c, Call_08e_70d1                         ; $420f: $dc $d1 $70
    ld [hl], c                                    ; $4212: $71
    ld c, $6b                                     ; $4213: $0e $6b
    ld [hl], d                                    ; $4215: $72
    ld [hl], e                                    ; $4216: $73
    inc bc                                        ; $4217: $03
    inc bc                                        ; $4218: $03
    inc bc                                        ; $4219: $03
    inc bc                                        ; $421a: $03
    inc bc                                        ; $421b: $03
    inc bc                                        ; $421c: $03
    inc bc                                        ; $421d: $03
    inc bc                                        ; $421e: $03
    inc bc                                        ; $421f: $03
    inc bc                                        ; $4220: $03
    inc bc                                        ; $4221: $03
    inc bc                                        ; $4222: $03
    inc hl                                        ; $4223: $23
    ld [bc], a                                    ; $4224: $02
    inc bc                                        ; $4225: $03
    ld [bc], a                                    ; $4226: $02
    db $d3                                        ; $4227: $d3
    pop de                                        ; $4228: $d1
    jp nc, Jump_000_20dc                          ; $4229: $d2 $dc $20

    db $eb                                        ; $422c: $eb
    db $f4                                        ; $422d: $f4
    ld [hl], h                                    ; $422e: $74
    sbc $16                                       ; $422f: $de $16
    dec d                                         ; $4231: $15
    add hl, hl                                    ; $4232: $29
    ld h, l                                       ; $4233: $65
    inc e                                         ; $4234: $1c
    ld b, $20                                     ; $4235: $06 $20
    inc bc                                        ; $4237: $03
    inc bc                                        ; $4238: $03
    inc bc                                        ; $4239: $03
    inc bc                                        ; $423a: $03
    inc bc                                        ; $423b: $03
    inc bc                                        ; $423c: $03
    inc bc                                        ; $423d: $03
    inc bc                                        ; $423e: $03
    inc hl                                        ; $423f: $23
    inc bc                                        ; $4240: $03
    inc bc                                        ; $4241: $03

Call_08e_4242:
    inc bc                                        ; $4242: $03
    inc bc                                        ; $4243: $03
    inc bc                                        ; $4244: $03
    inc bc                                        ; $4245: $03
    inc hl                                        ; $4246: $23
    call c, $dcd1                                 ; $4247: $dc $d1 $dc
    call c, $7675                                 ; $424a: $dc $75 $76
    ld [hl], a                                    ; $424d: $77
    ld a, b                                       ; $424e: $78
    ld a, [hl-]                                   ; $424f: $3a
    di                                            ; $4250: $f3
    ld a, [$7923]                                 ; $4251: $fa $23 $79
    dec de                                        ; $4254: $1b
    inc hl                                        ; $4255: $23
    ei                                            ; $4256: $fb
    inc bc                                        ; $4257: $03
    inc bc                                        ; $4258: $03
    inc bc                                        ; $4259: $03
    inc bc                                        ; $425a: $03
    inc bc                                        ; $425b: $03
    inc bc                                        ; $425c: $03
    inc bc                                        ; $425d: $03
    inc bc                                        ; $425e: $03
    inc bc                                        ; $425f: $03
    ld [bc], a                                    ; $4260: $02
    ld [bc], a                                    ; $4261: $02
    inc bc                                        ; $4262: $03
    inc bc                                        ; $4263: $03
    inc bc                                        ; $4264: $03
    inc bc                                        ; $4265: $03
    rlca                                          ; $4266: $07
    pop de                                        ; $4267: $d1
    call c, Call_08e_7adc                         ; $4268: $dc $dc $7a
    ld c, $7b                                     ; $426b: $0e $7b
    ld a, h                                       ; $426d: $7c
    ld a, d                                       ; $426e: $7a
    db $d3                                        ; $426f: $d3
    db $10                                        ; $4270: $10
    ld de, $13d3                                  ; $4271: $11 $d3 $13
    jr z, jr_08e_427b                             ; $4274: $28 $05

    ld a, d                                       ; $4276: $7a
    inc bc                                        ; $4277: $03
    inc bc                                        ; $4278: $03
    inc bc                                        ; $4279: $03
    nop                                           ; $427a: $00

jr_08e_427b:
    inc bc                                        ; $427b: $03
    inc bc                                        ; $427c: $03
    inc bc                                        ; $427d: $03
    nop                                           ; $427e: $00
    inc bc                                        ; $427f: $03
    inc bc                                        ; $4280: $03
    inc bc                                        ; $4281: $03
    inc bc                                        ; $4282: $03
    ld b, $03                                     ; $4283: $06 $03
    inc bc                                        ; $4285: $03
    nop                                           ; $4286: $00
    ei                                            ; $4287: $fb
    reti                                          ; $4288: $d9


    jp c, $39e5                                   ; $4289: $da $e5 $39

    cp $ff                                        ; $428c: $fe $ff
    add hl, bc                                    ; $428e: $09
    add hl, sp                                    ; $428f: $39
    ld bc, $0d02                                  ; $4290: $01 $02 $0d
    ld h, c                                       ; $4293: $61
    ld a, l                                       ; $4294: $7d
    dec b                                         ; $4295: $05
    rrca                                          ; $4296: $0f
    ld b, $03                                     ; $4297: $06 $03
    inc bc                                        ; $4299: $03
    ld [hl+], a                                   ; $429a: $22
    inc bc                                        ; $429b: $03
    inc bc                                        ; $429c: $03
    inc bc                                        ; $429d: $03
    inc hl                                        ; $429e: $23
    inc bc                                        ; $429f: $03
    inc bc                                        ; $42a0: $03
    inc bc                                        ; $42a1: $03
    inc hl                                        ; $42a2: $23
    inc bc                                        ; $42a3: $03
    inc bc                                        ; $42a4: $03
    inc bc                                        ; $42a5: $03
    inc hl                                        ; $42a6: $23
    db $db                                        ; $42a7: $db
    ld [hl], $1e                                  ; $42a8: $36 $1e
    ld h, a                                       ; $42aa: $67
    nop                                           ; $42ab: $00
    ld a, [hl-]                                   ; $42ac: $3a
    ld a, [hl]                                    ; $42ad: $7e
    ld l, b                                       ; $42ae: $68
    inc bc                                        ; $42af: $03
    ld a, a                                       ; $42b0: $7f
    dec hl                                        ; $42b1: $2b
    add b                                         ; $42b2: $80
    ld b, $13                                     ; $42b3: $06 $13
    add c                                         ; $42b5: $81
    add d                                         ; $42b6: $82
    inc hl                                        ; $42b7: $23
    inc bc                                        ; $42b8: $03
    inc bc                                        ; $42b9: $03
    inc bc                                        ; $42ba: $03
    inc hl                                        ; $42bb: $23
    inc hl                                        ; $42bc: $23
    inc bc                                        ; $42bd: $03
    inc bc                                        ; $42be: $03
    inc hl                                        ; $42bf: $23
    inc bc                                        ; $42c0: $03
    inc bc                                        ; $42c1: $03
    dec bc                                        ; $42c2: $0b
    ld b, e                                       ; $42c3: $43
    ld b, $0b                                     ; $42c4: $06 $0b
    dec bc                                        ; $42c6: $0b
    ld h, b                                       ; $42c7: $60
    dec e                                         ; $42c8: $1d
    ld h, $fb                                     ; $42c9: $26 $fb

jr_08e_42cb:
    ld h, h                                       ; $42cb: $64
    add e                                         ; $42cc: $83
    add h                                         ; $42cd: $84
    add l                                         ; $42ce: $85
    add [hl]                                      ; $42cf: $86
    add a                                         ; $42d0: $87
    ld a, c                                       ; $42d1: $79
    adc b                                         ; $42d2: $88
    adc c                                         ; $42d3: $89
    adc d                                         ; $42d4: $8a
    adc e                                         ; $42d5: $8b
    ld c, b                                       ; $42d6: $48
    ld [bc], a                                    ; $42d7: $02
    inc bc                                        ; $42d8: $03
    inc bc                                        ; $42d9: $03
    rlca                                          ; $42da: $07
    inc bc                                        ; $42db: $03
    dec bc                                        ; $42dc: $0b
    dec bc                                        ; $42dd: $0b
    dec bc                                        ; $42de: $0b
    dec bc                                        ; $42df: $0b
    ld a, [bc]                                    ; $42e0: $0a
    inc bc                                        ; $42e1: $03
    dec bc                                        ; $42e2: $0b
    dec bc                                        ; $42e3: $0b
    dec bc                                        ; $42e4: $0b
    ld a, [bc]                                    ; $42e5: $0a
    inc bc                                        ; $42e6: $03
    adc h                                         ; $42e7: $8c
    inc l                                         ; $42e8: $2c
    ei                                            ; $42e9: $fb
    db $d3                                        ; $42ea: $d3
    ld e, c                                       ; $42eb: $59
    adc l                                         ; $42ec: $8d
    db $d3                                        ; $42ed: $d3
    ld a, d                                       ; $42ee: $7a
    adc [hl]                                      ; $42ef: $8e
    ld a, [hl+]                                   ; $42f0: $2a
    adc a                                         ; $42f1: $8f
    ei                                            ; $42f2: $fb
    sub b                                         ; $42f3: $90
    ld c, c                                       ; $42f4: $49
    ld c, d                                       ; $42f5: $4a
    ld a, d                                       ; $42f6: $7a
    dec bc                                        ; $42f7: $0b
    inc bc                                        ; $42f8: $03
    ld b, $00                                     ; $42f9: $06 $00
    inc bc                                        ; $42fb: $03
    dec bc                                        ; $42fc: $0b
    inc bc                                        ; $42fd: $03
    nop                                           ; $42fe: $00
    dec bc                                        ; $42ff: $0b
    inc bc                                        ; $4300: $03
    dec bc                                        ; $4301: $0b
    ld b, $0a                                     ; $4302: $06 $0a
    inc bc                                        ; $4304: $03
    inc bc                                        ; $4305: $03
    nop                                           ; $4306: $00
    db $e3                                        ; $4307: $e3
    db $e4                                        ; $4308: $e4
    inc [hl]                                      ; $4309: $34
    ld [de], a                                    ; $430a: $12
    ld c, l                                       ; $430b: $4d
    sub c                                         ; $430c: $91
    sub d                                         ; $430d: $92
    dec b                                         ; $430e: $05
    and $e7                                       ; $430f: $e6 $e7
    inc b                                         ; $4311: $04
    inc sp                                        ; $4312: $33
    dec bc                                        ; $4313: $0b
    inc c                                         ; $4314: $0c
    inc de                                        ; $4315: $13
    scf                                           ; $4316: $37
    inc bc                                        ; $4317: $03
    ld [bc], a                                    ; $4318: $02
    rlca                                          ; $4319: $07
    inc hl                                        ; $431a: $23
    inc bc                                        ; $431b: $03
    ld a, [bc]                                    ; $431c: $0a
    dec bc                                        ; $431d: $0b
    ld b, e                                       ; $431e: $43

jr_08e_431f:
    ld [hl+], a                                   ; $431f: $22
    inc hl                                        ; $4320: $23
    nop                                           ; $4321: $00
    inc hl                                        ; $4322: $23
    inc bc                                        ; $4323: $03
    inc bc                                        ; $4324: $03
    ld b, $23                                     ; $4325: $06 $23
    ld [$9313], sp                                ; $4327: $08 $13 $93
    sub h                                         ; $432a: $94
    ld l, $2d                                     ; $432b: $2e $2d
    jp hl                                         ; $432d: $e9


    sub l                                         ; $432e: $95
    cpl                                           ; $432f: $2f
    jr nz, jr_08e_431f                            ; $4330: $20 $ed

    db $ec                                        ; $4332: $ec
    jr nc, jr_08e_42cb                            ; $4333: $30 $96

    ccf                                           ; $4335: $3f
    sub a                                         ; $4336: $97
    inc hl                                        ; $4337: $23
    ld b, $0b                                     ; $4338: $06 $0b
    dec bc                                        ; $433a: $0b
    inc hl                                        ; $433b: $23
    inc hl                                        ; $433c: $23
    inc hl                                        ; $433d: $23
    dec bc                                        ; $433e: $0b
    inc hl                                        ; $433f: $23
    inc hl                                        ; $4340: $23
    inc hl                                        ; $4341: $23
    inc hl                                        ; $4342: $23
    inc hl                                        ; $4343: $23
    dec bc                                        ; $4344: $0b
    inc hl                                        ; $4345: $23
    dec bc                                        ; $4346: $0b
    sbc b                                         ; $4347: $98
    dec hl                                        ; $4348: $2b
    sbc c                                         ; $4349: $99
    sbc d                                         ; $434a: $9a
    sbc e                                         ; $434b: $9b
    rst $18                                       ; $434c: $df
    sbc h                                         ; $434d: $9c
    sbc l                                         ; $434e: $9d
    db $e4                                        ; $434f: $e4
    db $e3                                        ; $4350: $e3
    ld [c], a                                     ; $4351: $e2
    pop hl                                        ; $4352: $e1
    sub c                                         ; $4353: $91
    ld c, l                                       ; $4354: $4d
    sbc [hl]                                      ; $4355: $9e
    sbc a                                         ; $4356: $9f
    ld a, [bc]                                    ; $4357: $0a
    inc bc                                        ; $4358: $03
    dec bc                                        ; $4359: $0b
    ld a, [bc]                                    ; $435a: $0a
    ld a, [bc]                                    ; $435b: $0a
    inc hl                                        ; $435c: $23
    dec bc                                        ; $435d: $0b
    ld a, [bc]                                    ; $435e: $0a
    ld [hl+], a                                   ; $435f: $22
    inc hl                                        ; $4360: $23
    inc hl                                        ; $4361: $23
    ld [hl+], a                                   ; $4362: $22
    ld a, [hl+]                                   ; $4363: $2a
    inc hl                                        ; $4364: $23
    dec bc                                        ; $4365: $0b
    ld a, [bc]                                    ; $4366: $0a
    and b                                         ; $4367: $a0
    and c                                         ; $4368: $a1
    and d                                         ; $4369: $a2
    db $d3                                        ; $436a: $d3
    sbc $92                                       ; $436b: $de $92
    ld [hl], b                                    ; $436d: $70
    ld a, d                                       ; $436e: $7a
    ld b, a                                       ; $436f: $47
    sub d                                         ; $4370: $92
    rst $10                                       ; $4371: $d7
    ei                                            ; $4372: $fb
    ld h, l                                       ; $4373: $65
    and e                                         ; $4374: $a3
    ld l, d                                       ; $4375: $6a
    db $d3                                        ; $4376: $d3
    dec bc                                        ; $4377: $0b
    dec bc                                        ; $4378: $0b
    dec bc                                        ; $4379: $0b
    nop                                           ; $437a: $00
    inc hl                                        ; $437b: $23
    dec hl                                        ; $437c: $2b
    inc bc                                        ; $437d: $03
    nop                                           ; $437e: $00
    inc bc                                        ; $437f: $03
    dec hl                                        ; $4380: $2b
    inc bc                                        ; $4381: $03
    ld b, $03                                     ; $4382: $06 $03
    dec bc                                        ; $4384: $0b
    inc bc                                        ; $4385: $03
    nop                                           ; $4386: $00
    db $fd                                        ; $4387: $fd
    db $fc                                        ; $4388: $fc
    inc b                                         ; $4389: $04
    jr c, jr_08e_439c                             ; $438a: $38 $10

    ld de, $a407                                  ; $438c: $11 $07 $a4
    dec h                                         ; $438f: $25
    inc h                                         ; $4390: $24
    adc c                                         ; $4391: $89
    ld e, d                                       ; $4392: $5a
    jr z, jr_08e_4399                             ; $4393: $28 $04

    ei                                            ; $4395: $fb
    ld h, $22                                     ; $4396: $26 $22
    inc hl                                        ; $4398: $23

jr_08e_4399:
    ld b, b                                       ; $4399: $40
    inc bc                                        ; $439a: $03
    ld [bc], a                                    ; $439b: $02

jr_08e_439c:
    inc bc                                        ; $439c: $03
    ld b, e                                       ; $439d: $43
    dec bc                                        ; $439e: $0b
    ld [hl+], a                                   ; $439f: $22
    inc hl                                        ; $43a0: $23
    ld c, e                                       ; $43a1: $4b
    inc bc                                        ; $43a2: $03
    ld [bc], a                                    ; $43a3: $02
    ld b, b                                       ; $43a4: $40
    rlca                                          ; $43a5: $07
    inc hl                                        ; $43a6: $23
    add hl, sp                                    ; $43a7: $39
    ld a, [c]                                     ; $43a8: $f2
    pop af                                        ; $43a9: $f1
    ldh a, [$3c]                                  ; $43aa: $f0 $3c
    rla                                           ; $43ac: $17
    ld d, $15                                     ; $43ad: $16 $15
    ld e, e                                       ; $43af: $5b
    inc b                                         ; $43b0: $04
    ld b, [hl]                                    ; $43b1: $46
    add hl, de                                    ; $43b2: $19
    ld e, h                                       ; $43b3: $5c
    inc [hl]                                      ; $43b4: $34
    inc e                                         ; $43b5: $1c
    ld b, $23                                     ; $43b6: $06 $23
    inc hl                                        ; $43b8: $23
    inc hl                                        ; $43b9: $23
    inc hl                                        ; $43ba: $23
    inc bc                                        ; $43bb: $03
    inc hl                                        ; $43bc: $23
    inc bc                                        ; $43bd: $03
    inc bc                                        ; $43be: $03
    inc bc                                        ; $43bf: $03
    ld b, b                                       ; $43c0: $40
    inc hl                                        ; $43c1: $23
    inc hl                                        ; $43c2: $23
    inc bc                                        ; $43c3: $03
    ld b, $03                                     ; $43c4: $06 $03
    inc bc                                        ; $43c6: $03
    rst $20                                       ; $43c7: $e7
    and $dc                                       ; $43c8: $e6 $dc
    push hl                                       ; $43ca: $e5
    inc c                                         ; $43cb: $0c
    dec bc                                        ; $43cc: $0b
    ld a, [bc]                                    ; $43cd: $0a
    add hl, bc                                    ; $43ce: $09
    db $fc                                        ; $43cf: $fc
    db $fd                                        ; $43d0: $fd
    ld c, $0d                                     ; $43d1: $0e $0d
    ld de, $1310                                  ; $43d3: $11 $10 $13
    rrca                                          ; $43d6: $0f
    inc bc                                        ; $43d7: $03
    ld [bc], a                                    ; $43d8: $02
    inc bc                                        ; $43d9: $03
    ld [hl+], a                                   ; $43da: $22
    inc hl                                        ; $43db: $23
    ld [hl+], a                                   ; $43dc: $22
    inc hl                                        ; $43dd: $23
    inc hl                                        ; $43de: $23
    inc bc                                        ; $43df: $03
    ld [bc], a                                    ; $43e0: $02
    inc h                                         ; $43e1: $24
    ld [hl+], a                                   ; $43e2: $22
    inc hl                                        ; $43e3: $23
    ld [hl+], a                                   ; $43e4: $22
    ld b, $22                                     ; $43e5: $06 $22
    db $db                                        ; $43e7: $db
    dec b                                         ; $43e8: $05
    jp c, Jump_000_007a                           ; $43e9: $da $7a $00

    ei                                            ; $43ec: $fb
    rst $38                                       ; $43ed: $ff
    ld a, d                                       ; $43ee: $7a
    inc bc                                        ; $43ef: $03
    ld [bc], a                                    ; $43f0: $02
    ld bc, $06d3                                  ; $43f1: $01 $d3 $06
    dec b                                         ; $43f4: $05
    db $d3                                        ; $43f5: $d3
    db $d3                                        ; $43f6: $d3
    inc hl                                        ; $43f7: $23
    inc bc                                        ; $43f8: $03
    inc bc                                        ; $43f9: $03
    nop                                           ; $43fa: $00
    inc hl                                        ; $43fb: $23
    rlca                                          ; $43fc: $07
    inc bc                                        ; $43fd: $03
    nop                                           ; $43fe: $00
    inc hl                                        ; $43ff: $23
    inc hl                                        ; $4400: $23
    ld h, e                                       ; $4401: $63
    nop                                           ; $4402: $00
    ld b, d                                       ; $4403: $42
    inc hl                                        ; $4404: $23
    nop                                           ; $4405: $00
    nop                                           ; $4406: $00
    db $d3                                        ; $4407: $d3
    adc a                                         ; $4408: $8f
    ld a, [hl+]                                   ; $4409: $2a
    adc [hl]                                      ; $440a: $8e
    and l                                         ; $440b: $a5
    and [hl]                                      ; $440c: $a6
    and a                                         ; $440d: $a7
    xor b                                         ; $440e: $a8
    xor c                                         ; $440f: $a9
    xor d                                         ; $4410: $aa
    and c                                         ; $4411: $a1
    xor e                                         ; $4412: $ab
    xor h                                         ; $4413: $ac
    pop de                                        ; $4414: $d1
    ld [hl], b                                    ; $4415: $70
    xor l                                         ; $4416: $ad
    nop                                           ; $4417: $00
    dec hl                                        ; $4418: $2b
    inc hl                                        ; $4419: $23
    dec hl                                        ; $441a: $2b
    dec bc                                        ; $441b: $0b
    dec bc                                        ; $441c: $0b
    dec bc                                        ; $441d: $0b
    dec bc                                        ; $441e: $0b
    dec bc                                        ; $441f: $0b
    ld a, [bc]                                    ; $4420: $0a
    ld a, [hl+]                                   ; $4421: $2a
    dec bc                                        ; $4422: $0b
    dec bc                                        ; $4423: $0b
    inc bc                                        ; $4424: $03

jr_08e_4425:
    ld [bc], a                                    ; $4425: $02
    dec bc                                        ; $4426: $0b
    daa                                           ; $4427: $27
    xor [hl]                                      ; $4428: $ae
    xor a                                         ; $4429: $af
    add [hl]                                      ; $442a: $86
    ld c, b                                       ; $442b: $48
    adc e                                         ; $442c: $8b
    adc d                                         ; $442d: $8a
    adc c                                         ; $442e: $89
    or b                                          ; $442f: $b0
    sbc c                                         ; $4430: $99
    or c                                          ; $4431: $b1
    sbc b                                         ; $4432: $98
    sbc l                                         ; $4433: $9d
    or d                                          ; $4434: $b2
    or e                                          ; $4435: $b3
    sbc e                                         ; $4436: $9b
    inc hl                                        ; $4437: $23
    ld a, [bc]                                    ; $4438: $0a
    dec bc                                        ; $4439: $0b
    dec hl                                        ; $443a: $2b
    ld [hl+], a                                   ; $443b: $22
    dec hl                                        ; $443c: $2b
    dec hl                                        ; $443d: $2b
    dec hl                                        ; $443e: $2b
    ld a, [bc]                                    ; $443f: $0a
    dec hl                                        ; $4440: $2b
    dec bc                                        ; $4441: $0b
    dec hl                                        ; $4442: $2b
    ld a, [hl+]                                   ; $4443: $2a
    dec bc                                        ; $4444: $0b
    dec bc                                        ; $4445: $0b
    ld a, [hl+]                                   ; $4446: $2a
    add b                                         ; $4447: $80
    add hl, sp                                    ; $4448: $39
    inc b                                         ; $4449: $04
    ld b, $82                                     ; $444a: $06 $82
    or h                                          ; $444c: $b4
    ei                                            ; $444d: $fb
    ld [$b594], sp                                ; $444e: $08 $94 $b5
    dec l                                         ; $4451: $2d
    ld l, $95                                     ; $4452: $2e $95
    jp hl                                         ; $4454: $e9


    inc [hl]                                      ; $4455: $34
    cpl                                           ; $4456: $2f
    dec hl                                        ; $4457: $2b
    inc hl                                        ; $4458: $23
    ld b, b                                       ; $4459: $40
    ld h, e                                       ; $445a: $63
    dec hl                                        ; $445b: $2b
    dec bc                                        ; $445c: $0b
    rlca                                          ; $445d: $07
    inc bc                                        ; $445e: $03
    dec hl                                        ; $445f: $2b
    dec bc                                        ; $4460: $0b
    inc bc                                        ; $4461: $03
    inc bc                                        ; $4462: $03
    dec hl                                        ; $4463: $2b
    inc bc                                        ; $4464: $03
    ld b, $03                                     ; $4465: $06 $03
    rrca                                          ; $4467: $0f
    dec b                                         ; $4468: $05
    db $d3                                        ; $4469: $d3
    add hl, sp                                    ; $446a: $39
    ld [de], a                                    ; $446b: $12
    inc de                                        ; $446c: $13
    jr nz, jr_08e_4425                            ; $446d: $20 $b6

    dec b                                         ; $446f: $05
    or a                                          ; $4470: $b7
    db $e4                                        ; $4471: $e4
    db $e3                                        ; $4472: $e3
    inc sp                                        ; $4473: $33
    add hl, sp                                    ; $4474: $39
    cp b                                          ; $4475: $b8
    ld c, l                                       ; $4476: $4d
    inc bc                                        ; $4477: $03
    inc hl                                        ; $4478: $23
    nop                                           ; $4479: $00
    inc bc                                        ; $447a: $03
    inc bc                                        ; $447b: $03
    ld b, $23                                     ; $447c: $06 $23
    dec bc                                        ; $447e: $0b
    ld h, e                                       ; $447f: $63
    dec bc                                        ; $4480: $0b
    ld [hl+], a                                   ; $4481: $22
    inc hl                                        ; $4482: $23
    inc bc                                        ; $4483: $03
    inc bc                                        ; $4484: $03
    ld a, [bc]                                    ; $4485: $0a
    inc hl                                        ; $4486: $23
    db $d3                                        ; $4487: $d3
    ld d, d                                       ; $4488: $52
    rst $10                                       ; $4489: $d7
    cp c                                          ; $448a: $b9
    ei                                            ; $448b: $fb
    ld l, e                                       ; $448c: $6b
    ld l, d                                       ; $448d: $6a
    cp d                                          ; $448e: $ba
    db $d3                                        ; $448f: $d3
    cp e                                          ; $4490: $bb
    cp h                                          ; $4491: $bc
    db $db                                        ; $4492: $db
    db $d3                                        ; $4493: $d3
    cp $bd                                        ; $4494: $fe $bd
    nop                                           ; $4496: $00
    inc bc                                        ; $4497: $03
    inc hl                                        ; $4498: $23
    ld [bc], a                                    ; $4499: $02
    dec bc                                        ; $449a: $0b
    ld b, $03                                     ; $449b: $06 $03
    ld [bc], a                                    ; $449d: $02
    dec bc                                        ; $449e: $0b
    inc bc                                        ; $449f: $03
    dec bc                                        ; $44a0: $0b
    dec bc                                        ; $44a1: $0b
    inc bc                                        ; $44a2: $03
    inc bc                                        ; $44a3: $03
    inc bc                                        ; $44a4: $03
    dec bc                                        ; $44a5: $0b
    inc bc                                        ; $44a6: $03
    cp [hl]                                       ; $44a7: $be
    cp a                                          ; $44a8: $bf
    db $e3                                        ; $44a9: $e3
    db $e4                                        ; $44aa: $e4
    sbc a                                         ; $44ab: $9f
    sbc [hl]                                      ; $44ac: $9e
    ld c, l                                       ; $44ad: $4d
    sub c                                         ; $44ae: $91
    push hl                                       ; $44af: $e5
    call c, $e7e6                                 ; $44b0: $dc $e6 $e7
    add hl, bc                                    ; $44b3: $09
    ld a, [bc]                                    ; $44b4: $0a
    dec bc                                        ; $44b5: $0b
    inc c                                         ; $44b6: $0c
    ld a, [bc]                                    ; $44b7: $0a
    dec bc                                        ; $44b8: $0b
    ld [bc], a                                    ; $44b9: $02
    inc bc                                        ; $44ba: $03
    dec hl                                        ; $44bb: $2b
    dec hl                                        ; $44bc: $2b
    inc bc                                        ; $44bd: $03
    dec bc                                        ; $44be: $0b
    ld [bc], a                                    ; $44bf: $02
    inc hl                                        ; $44c0: $23
    ld [hl+], a                                   ; $44c1: $22
    inc hl                                        ; $44c2: $23
    inc bc                                        ; $44c3: $03
    inc bc                                        ; $44c4: $03
    ld [bc], a                                    ; $44c5: $02
    inc bc                                        ; $44c6: $03
    db $ec                                        ; $44c7: $ec
    db $ed                                        ; $44c8: $ed
    xor $30                                       ; $44c9: $ee $30
    sub a                                         ; $44cb: $97
    ccf                                           ; $44cc: $3f
    sub [hl]                                      ; $44cd: $96
    ld sp, $f1f0                                  ; $44ce: $31 $f0 $f1
    ld a, [c]                                     ; $44d1: $f2
    push de                                       ; $44d2: $d5
    dec d                                         ; $44d3: $15
    ld d, $17                                     ; $44d4: $16 $17
    ret nz                                        ; $44d6: $c0

    inc bc                                        ; $44d7: $03
    ld [bc], a                                    ; $44d8: $02
    inc bc                                        ; $44d9: $03
    inc bc                                        ; $44da: $03
    ld a, [hl+]                                   ; $44db: $2a
    ld [bc], a                                    ; $44dc: $02
    dec hl                                        ; $44dd: $2b
    inc bc                                        ; $44de: $03
    ld [bc], a                                    ; $44df: $02
    inc bc                                        ; $44e0: $03
    inc bc                                        ; $44e1: $03
    inc bc                                        ; $44e2: $03
    ld [hl+], a                                   ; $44e3: $22
    inc hl                                        ; $44e4: $23
    inc bc                                        ; $44e5: $03
    dec bc                                        ; $44e6: $0b
    scf                                           ; $44e7: $37
    pop bc                                        ; $44e8: $c1
    jp nz, $c3e6                                  ; $44e9: $c2 $e6 $c3

    call nz, $0b0c                                ; $44ec: $c4 $0c $0b
    push bc                                       ; $44ef: $c5
    inc [hl]                                      ; $44f0: $34
    db $fc                                        ; $44f1: $fc
    db $fd                                        ; $44f2: $fd
    ld [hl+], a                                   ; $44f3: $22
    ei                                            ; $44f4: $fb
    ld de, $0310                                  ; $44f5: $11 $10 $03
    dec bc                                        ; $44f8: $0b
    dec bc                                        ; $44f9: $0b
    inc bc                                        ; $44fa: $03
    dec bc                                        ; $44fb: $0b
    dec bc                                        ; $44fc: $0b
    inc hl                                        ; $44fd: $23
    inc hl                                        ; $44fe: $23
    dec bc                                        ; $44ff: $0b
    ld b, $03                                     ; $4500: $06 $03
    inc bc                                        ; $4502: $03
    ld [bc], a                                    ; $4503: $02
    ld b, $23                                     ; $4504: $06 $23
    inc hl                                        ; $4506: $23
    db $d3                                        ; $4507: $d3
    ld bc, $c602                                  ; $4508: $01 $02 $c6
    ei                                            ; $450b: $fb
    db $d3                                        ; $450c: $d3
    dec b                                         ; $450d: $05
    ld b, $d3                                     ; $450e: $06 $d3
    ei                                            ; $4510: $fb
    ld l, l                                       ; $4511: $6d
    rst $00                                       ; $4512: $c7
    ei                                            ; $4513: $fb
    inc [hl]                                      ; $4514: $34
    ret z                                         ; $4515: $c8

    ld l, $00                                     ; $4516: $2e $00
    inc bc                                        ; $4518: $03
    inc bc                                        ; $4519: $03
    ld a, [bc]                                    ; $451a: $0a
    ld b, $00                                     ; $451b: $06 $00
    inc bc                                        ; $451d: $03
    ld h, e                                       ; $451e: $63
    nop                                           ; $451f: $00
    ld b, [hl]                                    ; $4520: $46
    ld b, $0a                                     ; $4521: $06 $0a
    ld b, $07                                     ; $4523: $06 $07
    dec bc                                        ; $4525: $0b
    ld [bc], a                                    ; $4526: $02
    dec c                                         ; $4527: $0d
    ld c, $fd                                     ; $4528: $0e $fd
    db $fc                                        ; $452a: $fc
    rrca                                          ; $452b: $0f
    inc b                                         ; $452c: $04
    ret                                           ; $452d: $c9


    jp z, Jump_000_34cb                           ; $452e: $ca $cb $34

    call z, $0524                                 ; $4531: $cc $24 $05
    db $d3                                        ; $4534: $d3
    ld [hl-], a                                   ; $4535: $32
    inc [hl]                                      ; $4536: $34
    inc bc                                        ; $4537: $03
    inc b                                         ; $4538: $04
    ld [hl+], a                                   ; $4539: $22
    inc hl                                        ; $453a: $23
    ld [bc], a                                    ; $453b: $02
    jr nz, jr_08e_4549                            ; $453c: $20 $0b

    dec bc                                        ; $453e: $0b
    dec bc                                        ; $453f: $0b
    ld b, $0a                                     ; $4540: $06 $0a
    inc hl                                        ; $4542: $23
    ld h, e                                       ; $4543: $63
    nop                                           ; $4544: $00
    ld [bc], a                                    ; $4545: $02
    ld b, $19                                     ; $4546: $06 $19
    ld b, [hl]                                    ; $4548: $46

jr_08e_4549:
    call $061b                                    ; $4549: $cd $1b $06
    inc e                                         ; $454c: $1c
    inc b                                         ; $454d: $04
    dec e                                         ; $454e: $1d
    ld e, $36                                     ; $454f: $1e $36
    inc [hl]                                      ; $4551: $34
    ld hl, $3a29                                  ; $4552: $21 $29 $3a
    db $d3                                        ; $4555: $d3
    inc h                                         ; $4556: $24
    ld [bc], a                                    ; $4557: $02
    inc bc                                        ; $4558: $03
    dec bc                                        ; $4559: $0b
    ld [bc], a                                    ; $455a: $02
    ld [hl+], a                                   ; $455b: $22
    ld [hl+], a                                   ; $455c: $22
    jr nz, @+$05                                  ; $455d: $20 $03

    ld [hl+], a                                   ; $455f: $22
    inc hl                                        ; $4560: $23
    ld b, $03                                     ; $4561: $06 $03
    inc bc                                        ; $4563: $03
    ld [bc], a                                    ; $4564: $02
    nop                                           ; $4565: $00
    inc hl                                        ; $4566: $23
    inc hl                                        ; $4567: $23
    adc $cf                                       ; $4568: $ce $cf
    dec h                                         ; $456a: $25
    ld h, $d0                                     ; $456b: $26 $d0
    pop de                                        ; $456d: $d1
    jr z, jr_08e_4575                             ; $456e: $28 $05

    db $d3                                        ; $4570: $d3
    ei                                            ; $4571: $fb
    inc l                                         ; $4572: $2c
    inc [hl]                                      ; $4573: $34
    inc b                                         ; $4574: $04

jr_08e_4575:
    db $d3                                        ; $4575: $d3
    add hl, sp                                    ; $4576: $39
    inc bc                                        ; $4577: $03
    ld c, b                                       ; $4578: $48
    ld c, b                                       ; $4579: $48
    inc bc                                        ; $457a: $03
    inc bc                                        ; $457b: $03
    ld c, b                                       ; $457c: $48
    ld c, c                                       ; $457d: $49
    inc hl                                        ; $457e: $23
    ld h, e                                       ; $457f: $63
    nop                                           ; $4580: $00
    ld b, a                                       ; $4581: $47
    inc hl                                        ; $4582: $23
    ld b, $20                                     ; $4583: $06 $20
    nop                                           ; $4585: $00
    inc bc                                        ; $4586: $03
    db $d3                                        ; $4587: $d3
    jp nc, Jump_000_2fd3                          ; $4588: $d2 $d3 $2f

    db $d3                                        ; $458b: $d3
    call nc, Call_000_30d5                        ; $458c: $d4 $d5 $30
    ld a, d                                       ; $458f: $7a
    db $d3                                        ; $4590: $d3
    ld a, d                                       ; $4591: $7a
    ld sp, $d6d3                                  ; $4592: $31 $d3 $d6
    rst $10                                       ; $4595: $d7
    ei                                            ; $4596: $fb
    nop                                           ; $4597: $00
    ld c, b                                       ; $4598: $48
    ld [$0002], sp                                ; $4599: $08 $02 $00
    ld c, b                                       ; $459c: $48
    add hl, bc                                    ; $459d: $09
    ld [bc], a                                    ; $459e: $02
    nop                                           ; $459f: $00
    nop                                           ; $45a0: $00
    ld b, [hl]                                    ; $45a1: $46
    ld [bc], a                                    ; $45a2: $02
    nop                                           ; $45a3: $00
    inc c                                         ; $45a4: $0c
    inc c                                         ; $45a5: $0c
    ld b, a                                       ; $45a6: $47
    inc sp                                        ; $45a7: $33
    ld a, d                                       ; $45a8: $7a
    ret c                                         ; $45a9: $d8

    call nc, $3837                                ; $45aa: $d4 $37 $38
    add hl, sp                                    ; $45ad: $39
    jp nc, Jump_08e_7ac3                          ; $45ae: $d2 $c3 $7a

    ei                                            ; $45b1: $fb
    ei                                            ; $45b2: $fb
    inc h                                         ; $45b3: $24
    ei                                            ; $45b4: $fb
    reti                                          ; $45b5: $d9


    jp c, $4602                                   ; $45b6: $da $02 $46

    ld a, [bc]                                    ; $45b9: $0a
    ld [$0302], sp                                ; $45ba: $08 $02 $03
    inc hl                                        ; $45bd: $23
    add hl, bc                                    ; $45be: $09
    ld a, [bc]                                    ; $45bf: $0a
    ld b, b                                       ; $45c0: $40
    ld b, a                                       ; $45c1: $47
    ld b, a                                       ; $45c2: $47
    ld [hl+], a                                   ; $45c3: $22
    ld b, [hl]                                    ; $45c4: $46
    ld [$db09], sp                                ; $45c5: $08 $09 $db
    dec a                                         ; $45c8: $3d
    jp nc, $dcd3                                  ; $45c9: $d2 $d3 $dc

    ei                                            ; $45cc: $fb
    call nc, $d3d5                                ; $45cd: $d4 $d5 $d3
    inc [hl]                                      ; $45d0: $34
    ei                                            ; $45d1: $fb
    ld a, d                                       ; $45d2: $7a
    db $dd                                        ; $45d3: $dd
    sbc $34                                       ; $45d4: $de $34
    ei                                            ; $45d6: $fb
    ld [$4822], sp                                ; $45d7: $08 $22 $48
    ld [$4608], sp                                ; $45da: $08 $08 $46
    ld c, c                                       ; $45dd: $49
    ld [$0600], sp                                ; $45de: $08 $00 $06
    ld b, a                                       ; $45e1: $47
    ld b, [hl]                                    ; $45e2: $46

jr_08e_45e3:
    ld [$0608], sp                                ; $45e3: $08 $08 $06
    ld b, a                                       ; $45e6: $47
    ei                                            ; $45e7: $fb
    inc [hl]                                      ; $45e8: $34
    rst $18                                       ; $45e9: $df
    db $d3                                        ; $45ea: $d3
    db $d3                                        ; $45eb: $d3
    ldh [$d6], a                                  ; $45ec: $e0 $d6
    pop hl                                        ; $45ee: $e1
    pop hl                                        ; $45ef: $e1
    ld [c], a                                     ; $45f0: $e2
    inc [hl]                                      ; $45f1: $34
    db $e3                                        ; $45f2: $e3
    ei                                            ; $45f3: $fb
    db $e4                                        ; $45f4: $e4
    rst $10                                       ; $45f5: $d7
    push hl                                       ; $45f6: $e5
    ld b, a                                       ; $45f7: $47
    rlca                                          ; $45f8: $07
    ld c, $00                                     ; $45f9: $0e $00
    nop                                           ; $45fb: $00
    inc c                                         ; $45fc: $0c
    ld c, h                                       ; $45fd: $4c
    inc c                                         ; $45fe: $0c
    inc c                                         ; $45ff: $0c
    inc c                                         ; $4600: $0c
    ld b, $0c                                     ; $4601: $06 $0c
    ld b, [hl]                                    ; $4603: $46
    ld c, h                                       ; $4604: $4c
    ld c, h                                       ; $4605: $4c
    inc l                                         ; $4606: $2c
    inc l                                         ; $4607: $2c
    push de                                       ; $4608: $d5
    jr nz, jr_08e_460f                            ; $4609: $20 $04

    add hl, sp                                    ; $460b: $39
    dec hl                                        ; $460c: $2b
    xor [hl]                                      ; $460d: $ae
    ld h, e                                       ; $460e: $63

jr_08e_460f:
    db $d3                                        ; $460f: $d3
    ld c, d                                       ; $4610: $4a
    xor [hl]                                      ; $4611: $ae
    xor a                                         ; $4612: $af
    and $a2                                       ; $4613: $e6 $a2
    sbc l                                         ; $4615: $9d
    ld c, h                                       ; $4616: $4c
    ld [bc], a                                    ; $4617: $02
    inc bc                                        ; $4618: $03
    inc hl                                        ; $4619: $23
    ld b, b                                       ; $461a: $40
    inc hl                                        ; $461b: $23
    inc bc                                        ; $461c: $03
    dec bc                                        ; $461d: $0b
    inc bc                                        ; $461e: $03
    nop                                           ; $461f: $00
    inc hl                                        ; $4620: $23
    ld a, [bc]                                    ; $4621: $0a
    ld a, [bc]                                    ; $4622: $0a
    dec bc                                        ; $4623: $0b
    dec hl                                        ; $4624: $2b
    dec hl                                        ; $4625: $2b
    ld [bc], a                                    ; $4626: $02
    ld e, a                                       ; $4627: $5f
    ld h, c                                       ; $4628: $61
    ld [hl], $1e                                  ; $4629: $36 $1e
    ld h, c                                       ; $462b: $61
    jr nz, jr_08e_45e3                            ; $462c: $20 $b5

    add hl, hl                                    ; $462e: $29
    sub b                                         ; $462f: $90
    ccf                                           ; $4630: $3f
    or l                                          ; $4631: $b5
    ld b, $a0                                     ; $4632: $06 $a0
    pop af                                        ; $4634: $f1
    jp hl                                         ; $4635: $e9


    ld e, $03                                     ; $4636: $1e $03
    inc bc                                        ; $4638: $03
    inc bc                                        ; $4639: $03
    inc bc                                        ; $463a: $03
    inc bc                                        ; $463b: $03
    inc hl                                        ; $463c: $23
    dec bc                                        ; $463d: $0b
    inc hl                                        ; $463e: $23
    ld a, [bc]                                    ; $463f: $0a
    ld [hl+], a                                   ; $4640: $22
    dec bc                                        ; $4641: $0b
    inc hl                                        ; $4642: $23
    dec bc                                        ; $4643: $0b
    inc hl                                        ; $4644: $23
    inc bc                                        ; $4645: $03
    inc hl                                        ; $4646: $23
    inc h                                         ; $4647: $24
    dec h                                         ; $4648: $25

jr_08e_4649:
    inc de                                        ; $4649: $13
    ld [de], a                                    ; $464a: $12
    db $fd                                        ; $464b: $fd
    jr z, jr_08e_4649                             ; $464c: $28 $fb

    dec b                                         ; $464e: $05
    inc e                                         ; $464f: $1c
    inc l                                         ; $4650: $2c
    inc [hl]                                      ; $4651: $34
    inc sp                                        ; $4652: $33
    ld [hl], $39                                  ; $4653: $36 $39
    jr c, jr_08e_468e                             ; $4655: $38 $37

    inc bc                                        ; $4657: $03
    ld [bc], a                                    ; $4658: $02
    rlca                                          ; $4659: $07
    inc hl                                        ; $465a: $23
    ld h, e                                       ; $465b: $63
    ld [hl+], a                                   ; $465c: $22
    ld b, $43                                     ; $465d: $06 $43
    inc hl                                        ; $465f: $23
    ld [hl+], a                                   ; $4660: $22
    ld b, $22                                     ; $4661: $06 $22
    inc hl                                        ; $4663: $23
    inc bc                                        ; $4664: $03
    inc hl                                        ; $4665: $23
    ld [hl+], a                                   ; $4666: $22
    ld [$7afb], sp                                ; $4667: $08 $fb $7a
    ld a, d                                       ; $466a: $7a
    ld l, $2d                                     ; $466b: $2e $2d
    db $d3                                        ; $466d: $d3
    ld a, d                                       ; $466e: $7a
    cpl                                           ; $466f: $2f
    ei                                            ; $4670: $fb
    db $d3                                        ; $4671: $d3

jr_08e_4672:
    ei                                            ; $4672: $fb
    jr nc, jr_08e_4672                            ; $4673: $30 $fd

    db $fc                                        ; $4675: $fc
    db $d3                                        ; $4676: $d3
    ld [hl+], a                                   ; $4677: $22
    ld b, $00                                     ; $4678: $06 $00
    nop                                           ; $467a: $00
    ld [hl+], a                                   ; $467b: $22
    inc hl                                        ; $467c: $23
    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    ld [hl+], a                                   ; $467f: $22
    ld b, $00                                     ; $4680: $06 $00
    ld b, $22                                     ; $4682: $06 $22
    inc hl                                        ; $4684: $23
    inc hl                                        ; $4685: $23
    nop                                           ; $4686: $00
    call c, Call_08e_70d1                         ; $4687: $dc $d1 $70
    xor e                                         ; $468a: $ab
    ld a, [bc]                                    ; $468b: $0a
    ld d, d                                       ; $468c: $52
    rst $10                                       ; $468d: $d7

jr_08e_468e:
    cp c                                          ; $468e: $b9
    ld c, $6b                                     ; $468f: $0e $6b
    ld l, d                                       ; $4691: $6a
    sbc a                                         ; $4692: $9f
    inc b                                         ; $4693: $04
    reti                                          ; $4694: $d9


    jp c, $03e5                                   ; $4695: $da $e5 $03

    inc bc                                        ; $4698: $03
    inc bc                                        ; $4699: $03
    ld a, [bc]                                    ; $469a: $0a
    inc hl                                        ; $469b: $23
    inc hl                                        ; $469c: $23
    inc bc                                        ; $469d: $03
    ld a, [bc]                                    ; $469e: $0a
    inc hl                                        ; $469f: $23
    inc bc                                        ; $46a0: $03
    inc bc                                        ; $46a1: $03
    ld a, [bc]                                    ; $46a2: $0a
    jr nz, @+$05                                  ; $46a3: $20 $03

    inc bc                                        ; $46a5: $03
    ld [hl+], a                                   ; $46a6: $22
    sbc $16                                       ; $46a7: $de $16
    dec d                                         ; $46a9: $15
    add hl, hl                                    ; $46aa: $29
    ld b, a                                       ; $46ab: $47
    ld b, [hl]                                    ; $46ac: $46
    add hl, de                                    ; $46ad: $19
    or l                                          ; $46ae: $b5
    ld h, l                                       ; $46af: $65
    inc e                                         ; $46b0: $1c
    ld b, $24                                     ; $46b1: $06 $24
    db $db                                        ; $46b3: $db
    ld [hl], $1e                                  ; $46b4: $36 $1e
    call nc, $0322                                ; $46b6: $d4 $22 $03
    inc bc                                        ; $46b9: $03
    inc bc                                        ; $46ba: $03
    inc bc                                        ; $46bb: $03
    inc hl                                        ; $46bc: $23
    inc hl                                        ; $46bd: $23
    dec bc                                        ; $46be: $0b
    inc bc                                        ; $46bf: $03
    inc bc                                        ; $46c0: $03
    inc bc                                        ; $46c1: $03
    inc hl                                        ; $46c2: $23
    inc hl                                        ; $46c3: $23
    inc bc                                        ; $46c4: $03

jr_08e_46c5:
    inc bc                                        ; $46c5: $03
    ld [$f33a], sp                                ; $46c6: $08 $3a $f3
    push de                                       ; $46c9: $d5
    inc [hl]                                      ; $46ca: $34
    dec a                                         ; $46cb: $3d
    jr jr_08e_46ee                                ; $46cc: $18 $20

    db $d3                                        ; $46ce: $d3
    inc [hl]                                      ; $46cf: $34
    dec de                                        ; $46d0: $1b
    inc hl                                        ; $46d1: $23
    ret nc                                        ; $46d2: $d0

    db $db                                        ; $46d3: $db
    dec e                                         ; $46d4: $1d
    ld h, $ce                                     ; $46d5: $26 $ce
    inc bc                                        ; $46d7: $03
    inc bc                                        ; $46d8: $03
    inc hl                                        ; $46d9: $23
    ld b, $23                                     ; $46da: $06 $23
    inc bc                                        ; $46dc: $03
    inc hl                                        ; $46dd: $23
    inc bc                                        ; $46de: $03
    ld b, $02                                     ; $46df: $06 $02
    inc bc                                        ; $46e1: $03
    ld [$0208], sp                                ; $46e2: $08 $08 $02
    ld [bc], a                                    ; $46e5: $02
    ld [$1031], sp                                ; $46e6: $08 $31 $10
    ld de, $fbd3                                  ; $46e9: $11 $d3 $fb
    dec h                                         ; $46ec: $25
    inc h                                         ; $46ed: $24

jr_08e_46ee:
    ld a, d                                       ; $46ee: $7a
    pop de                                        ; $46ef: $d1
    jr z, jr_08e_46c5                             ; $46f0: $28 $d3

    db $d3                                        ; $46f2: $d3
    rst $08                                       ; $46f3: $cf
    inc l                                         ; $46f4: $2c
    ld a, d                                       ; $46f5: $7a
    ld a, d                                       ; $46f6: $7a
    inc hl                                        ; $46f7: $23
    inc bc                                        ; $46f8: $03
    inc bc                                        ; $46f9: $03
    inc bc                                        ; $46fa: $03
    ld b, $22                                     ; $46fb: $06 $22
    inc hl                                        ; $46fd: $23
    nop                                           ; $46fe: $00
    add hl, bc                                    ; $46ff: $09
    ld [bc], a                                    ; $4700: $02
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    ld [$0002], sp                                ; $4703: $08 $02 $00
    nop                                           ; $4706: $00
    inc [hl]                                      ; $4707: $34
    cp $ff                                        ; $4708: $fe $ff
    add hl, bc                                    ; $470a: $09
    ei                                            ; $470b: $fb
    ld bc, $0d02                                  ; $470c: $01 $02 $0d
    inc [hl]                                      ; $470f: $34
    db $d3                                        ; $4710: $d3
    dec b                                         ; $4711: $05
    rrca                                          ; $4712: $0f
    inc b                                         ; $4713: $04
    ei                                            ; $4714: $fb
    push hl                                       ; $4715: $e5
    ld [de], a                                    ; $4716: $12
    rlca                                          ; $4717: $07
    inc bc                                        ; $4718: $03
    inc bc                                        ; $4719: $03
    inc hl                                        ; $471a: $23
    ld b, [hl]                                    ; $471b: $46
    inc bc                                        ; $471c: $03
    inc bc                                        ; $471d: $03
    inc hl                                        ; $471e: $23
    ld b, $00                                     ; $471f: $06 $00
    inc bc                                        ; $4721: $03
    ld [hl+], a                                   ; $4722: $22
    ld b, b                                       ; $4723: $40
    ld b, a                                       ; $4724: $47
    inc c                                         ; $4725: $0c
    inc hl                                        ; $4726: $23
    nop                                           ; $4727: $00
    ld a, [hl-]                                   ; $4728: $3a
    add hl, hl                                    ; $4729: $29
    jp nc, Jump_000_3d03                          ; $472a: $d2 $03 $3d

    ld a, d                                       ; $472d: $7a
    inc [hl]                                      ; $472e: $34
    ld b, $d4                                     ; $472f: $06 $d4
    db $db                                        ; $4731: $db
    inc b                                         ; $4732: $04
    ld [$dcd2], sp                                ; $4733: $08 $d2 $dc
    ei                                            ; $4736: $fb
    inc hl                                        ; $4737: $23
    inc hl                                        ; $4738: $23
    inc hl                                        ; $4739: $23
    add hl, bc                                    ; $473a: $09
    inc hl                                        ; $473b: $23
    inc bc                                        ; $473c: $03
    ld b, $07                                     ; $473d: $06 $07
    ld b, e                                       ; $473f: $43
    ld [$0008], sp                                ; $4740: $08 $08 $00
    ld [hl+], a                                   ; $4743: $22
    add hl, bc                                    ; $4744: $09
    ld [$dc46], sp                                ; $4745: $08 $46 $dc
    ld hl, $0437                                  ; $4748: $21 $37 $04
    db $d3                                        ; $474b: $d3
    ld a, d                                       ; $474c: $7a
    rst $20                                       ; $474d: $e7
    inc [hl]                                      ; $474e: $34
    add sp, -$17                                  ; $474f: $e8 $e9
    ei                                            ; $4751: $fb
    inc b                                         ; $4752: $04
    ld [$d6eb], a                                 ; $4753: $ea $eb $d6
    rst $10                                       ; $4756: $d7
    ld [$0202], sp                                ; $4757: $08 $02 $02
    jr nz, jr_08e_475c                            ; $475a: $20 $00

jr_08e_475c:
    ld b, $0e                                     ; $475c: $06 $0e
    ld b, $08                                     ; $475e: $06 $08
    ld [$4046], sp                                ; $4760: $08 $46 $40
    ld [$0c09], sp                                ; $4763: $08 $09 $0c
    inc c                                         ; $4766: $0c
    db $d3                                        ; $4767: $d3
    dec b                                         ; $4768: $05
    db $d3                                        ; $4769: $d3
    ei                                            ; $476a: $fb
    db $ec                                        ; $476b: $ec
    db $ed                                        ; $476c: $ed
    ld a, d                                       ; $476d: $7a
    ei                                            ; $476e: $fb
    xor $ef                                       ; $476f: $ee $ef
    inc b                                         ; $4771: $04
    db $d3                                        ; $4772: $d3
    ldh a, [$f1]                                  ; $4773: $f0 $f1
    ld l, l                                       ; $4775: $6d
    db $d3                                        ; $4776: $d3
    nop                                           ; $4777: $00
    ld b, d                                       ; $4778: $42
    nop                                           ; $4779: $00
    ld b, $08                                     ; $477a: $06 $08
    ld [$0606], sp                                ; $477c: $08 $06 $06
    ld [$0009], sp                                ; $477f: $08 $09 $00
    nop                                           ; $4782: $00
    add hl, bc                                    ; $4783: $09
    ld [$0006], sp                                ; $4784: $08 $06 $00
    ei                                            ; $4787: $fb
    inc de                                        ; $4788: $13
    ei                                            ; $4789: $fb
    dec b                                         ; $478a: $05
    push hl                                       ; $478b: $e5
    rst $10                                       ; $478c: $d7
    inc [hl]                                      ; $478d: $34
    inc sp                                        ; $478e: $33
    db $e4                                        ; $478f: $e4
    ld a, [c]                                     ; $4790: $f2
    inc [hl]                                      ; $4791: $34
    scf                                           ; $4792: $37
    sub $d7                                       ; $4793: $d6 $d7
    ei                                            ; $4795: $fb
    jp $6647                                      ; $4796: $c3 $47 $66


    ld b, a                                       ; $4799: $47
    ld b, e                                       ; $479a: $43
    inc l                                         ; $479b: $2c
    ld c, h                                       ; $479c: $4c
    rlca                                          ; $479d: $07
    ld [hl+], a                                   ; $479e: $22
    inc c                                         ; $479f: $0c
    inc c                                         ; $47a0: $0c
    ld b, $22                                     ; $47a1: $06 $22
    ld c, h                                       ; $47a3: $4c
    inc c                                         ; $47a4: $0c
    ld b, a                                       ; $47a5: $47
    dec hl                                        ; $47a6: $2b
    ld l, $2d                                     ; $47a7: $2e $2d
    db $d3                                        ; $47a9: $d3
    inc [hl]                                      ; $47aa: $34
    cpl                                           ; $47ab: $2f
    rst $20                                       ; $47ac: $e7
    inc [hl]                                      ; $47ad: $34
    di                                            ; $47ae: $f3
    jr nc, @+$06                                  ; $47af: $30 $04

    db $f4                                        ; $47b1: $f4
    push af                                       ; $47b2: $f5
    ld sp, $f67a                                  ; $47b3: $31 $7a $f6
    rst $30                                       ; $47b6: $f7
    ld [hl+], a                                   ; $47b7: $22
    inc hl                                        ; $47b8: $23
    nop                                           ; $47b9: $00
    ld b, $23                                     ; $47ba: $06 $23
    rrca                                          ; $47bc: $0f
    ld b, $08                                     ; $47bd: $06 $08
    ld [hl+], a                                   ; $47bf: $22
    nop                                           ; $47c0: $00
    ld [$2209], sp                                ; $47c1: $08 $09 $22
    ld b, b                                       ; $47c4: $40
    ld [$0408], sp                                ; $47c5: $08 $08 $04
    ld a, d                                       ; $47c8: $7a
    inc b                                         ; $47c9: $04
    call nc, $f9f8                                ; $47ca: $d4 $f8 $f9
    ld a, d                                       ; $47cd: $7a
    jp nc, $fbfa                                  ; $47ce: $d2 $fa $fb

    inc b                                         ; $47d1: $04
    ld l, l                                       ; $47d2: $6d
    ei                                            ; $47d3: $fb
    ei                                            ; $47d4: $fb
    rst $20                                       ; $47d5: $e7
    ldh [rP1], a                                  ; $47d6: $e0 $00
    ld b, b                                       ; $47d8: $40
    nop                                           ; $47d9: $00
    ld [$0808], sp                                ; $47da: $08 $08 $08
    ld b, $09                                     ; $47dd: $06 $09
    ld [$2047], sp                                ; $47df: $08 $47 $20
    ld b, $08                                     ; $47e2: $06 $08
    ld h, [hl]                                    ; $47e4: $66
    rrca                                          ; $47e5: $0f
    inc c                                         ; $47e6: $0c
    db $db                                        ; $47e7: $db
    db $fc                                        ; $47e8: $fc
    db $fd                                        ; $47e9: $fd
    ld a, d                                       ; $47ea: $7a
    call c, $fffe                                 ; $47eb: $dc $fe $ff
    db $d3                                        ; $47ee: $d3
    rst $10                                       ; $47ef: $d7
    inc de                                        ; $47f0: $13
    ei                                            ; $47f1: $fb
    ei                                            ; $47f2: $fb
    nop                                           ; $47f3: $00
    rst $10                                       ; $47f4: $d7
    inc [hl]                                      ; $47f5: $34
    ld a, d                                       ; $47f6: $7a
    ld [$0808], sp                                ; $47f7: $08 $08 $08
    nop                                           ; $47fa: $00
    ld [$0808], sp                                ; $47fb: $08 $08 $08
    nop                                           ; $47fe: $00
    inc c                                         ; $47ff: $0c
    ld b, $46                                     ; $4800: $06 $46
    ld b, $0c                                     ; $4802: $06 $0c
    inc c                                         ; $4804: $0c
    ld b, $00                                     ; $4805: $06 $00
    ld a, d                                       ; $4807: $7a
    ld a, d                                       ; $4808: $7a
    db $d3                                        ; $4809: $d3
    inc [hl]                                      ; $480a: $34
    db $d3                                        ; $480b: $d3
    inc b                                         ; $480c: $04
    push hl                                       ; $480d: $e5
    or $01                                        ; $480e: $f6 $01
    db $eb                                        ; $4810: $eb
    ei                                            ; $4811: $fb
    db $f4                                        ; $4812: $f4
    ld [bc], a                                    ; $4813: $02
    jp hl                                         ; $4814: $e9


    db $d3                                        ; $4815: $d3
    inc bc                                        ; $4816: $03
    nop                                           ; $4817: $00
    ld b, b                                       ; $4818: $40
    nop                                           ; $4819: $00
    ld b, $00                                     ; $481a: $06 $00
    nop                                           ; $481c: $00
    inc l                                         ; $481d: $2c
    ld c, b                                       ; $481e: $48
    ld [$6748], sp                                ; $481f: $08 $48 $67
    ld c, b                                       ; $4822: $48
    ld [$0049], sp                                ; $4823: $08 $49 $00
    ld [$3404], sp                                ; $4826: $08 $04 $34
    inc b                                         ; $4829: $04
    dec b                                         ; $482a: $05
    rst $30                                       ; $482b: $f7
    ei                                            ; $482c: $fb
    ei                                            ; $482d: $fb
    db $d3                                        ; $482e: $d3
    push af                                       ; $482f: $f5
    ld a, [$04fb]                                 ; $4830: $fa $fb $04
    di                                            ; $4833: $f3
    ld hl, sp-$07                                 ; $4834: $f8 $f9
    inc b                                         ; $4836: $04
    ld h, b                                       ; $4837: $60
    rlca                                          ; $4838: $07
    ld [$4808], sp                                ; $4839: $08 $08 $48
    ld c, b                                       ; $483c: $48
    ld h, $00                                     ; $483d: $26 $00
    ld c, c                                       ; $483f: $49
    ld c, b                                       ; $4840: $48
    ld b, a                                       ; $4841: $47
    ld h, b                                       ; $4842: $60
    ld c, c                                       ; $4843: $49
    ld c, b                                       ; $4844: $48
    ld c, b                                       ; $4845: $48
    nop                                           ; $4846: $00
    ld b, $07                                     ; $4847: $06 $07
    ld [$0a09], sp                                ; $4849: $08 $09 $0a
    dec bc                                        ; $484c: $0b
    inc c                                         ; $484d: $0c
    dec c                                         ; $484e: $0d
    ld a, d                                       ; $484f: $7a
    ei                                            ; $4850: $fb
    ld c, $0f                                     ; $4851: $0e $0f
    jp nc, $34d3                                  ; $4853: $d2 $d3 $34

    inc b                                         ; $4856: $04
    ld [$0809], sp                                ; $4857: $08 $09 $08
    ld [$0908], sp                                ; $485a: $08 $08 $09
    ld [$4009], sp                                ; $485d: $08 $09 $40
    ld b, a                                       ; $4860: $47
    ld [$4808], sp                                ; $4861: $08 $08 $48
    ld [$0007], sp                                ; $4864: $08 $07 $00
    db $10                                        ; $4867: $10
    inc de                                        ; $4868: $13
    ld a, d                                       ; $4869: $7a
    ei                                            ; $486a: $fb
    ld de, $d6fb                                  ; $486b: $11 $fb $d6
    inc [hl]                                      ; $486e: $34
    inc b                                         ; $486f: $04
    ldh [$e2], a                                  ; $4870: $e0 $e2
    sub $e1                                       ; $4872: $d6 $e1
    ld [c], a                                     ; $4874: $e2
    db $e4                                        ; $4875: $e4
    rst $10                                       ; $4876: $d7
    ld [$4006], sp                                ; $4877: $08 $06 $40
    ld b, a                                       ; $487a: $47
    ld [$4c47], sp                                ; $487b: $08 $47 $4c
    ld b, $00                                     ; $487e: $06 $00
    inc c                                         ; $4880: $0c
    inc c                                         ; $4881: $0c
    ld c, h                                       ; $4882: $4c
    inc c                                         ; $4883: $0c
    inc c                                         ; $4884: $0c
    inc c                                         ; $4885: $0c
    ld c, h                                       ; $4886: $4c
    db $d3                                        ; $4887: $d3
    push hl                                       ; $4888: $e5
    sub $13                                       ; $4889: $d6 $13
    ld a, d                                       ; $488b: $7a
    pop hl                                        ; $488c: $e1
    db $e4                                        ; $488d: $e4
    rst $10                                       ; $488e: $d7
    db $d3                                        ; $488f: $d3
    db $e3                                        ; $4890: $e3
    nop                                           ; $4891: $00
    ld a, [c]                                     ; $4892: $f2
    db $d3                                        ; $4893: $d3
    push hl                                       ; $4894: $e5
    ld a, d                                       ; $4895: $7a
    push hl                                       ; $4896: $e5
    nop                                           ; $4897: $00
    inc l                                         ; $4898: $2c
    ld c, h                                       ; $4899: $4c
    ld h, [hl]                                    ; $489a: $66
    nop                                           ; $489b: $00
    inc c                                         ; $489c: $0c
    inc c                                         ; $489d: $0c
    ld c, h                                       ; $489e: $4c
    nop                                           ; $489f: $00
    inc c                                         ; $48a0: $0c
    ld c, h                                       ; $48a1: $4c
    inc c                                         ; $48a2: $0c
    nop                                           ; $48a3: $00
    inc l                                         ; $48a4: $2c
    rlca                                          ; $48a5: $07
    inc l                                         ; $48a6: $2c
    db $d3                                        ; $48a7: $d3
    push hl                                       ; $48a8: $e5
    sub $d7                                       ; $48a9: $d6 $d7
    inc b                                         ; $48ab: $04
    ld [$e5eb], a                                 ; $48ac: $ea $eb $e5
    ei                                            ; $48af: $fb
    add sp, -$17                                  ; $48b0: $e8 $e9
    ei                                            ; $48b2: $fb
    inc de                                        ; $48b3: $13
    db $d3                                        ; $48b4: $d3
    ld a, d                                       ; $48b5: $7a
    sub $00                                       ; $48b6: $d6 $00
    inc l                                         ; $48b8: $2c
    inc c                                         ; $48b9: $0c
    inc c                                         ; $48ba: $0c
    nop                                           ; $48bb: $00
    ld c, b                                       ; $48bc: $48
    ld c, b                                       ; $48bd: $48
    inc l                                         ; $48be: $2c
    daa                                           ; $48bf: $27
    ld c, b                                       ; $48c0: $48
    ld c, c                                       ; $48c1: $49
    ld b, $66                                     ; $48c2: $06 $66
    nop                                           ; $48c4: $00
    ld b, a                                       ; $48c5: $47
    ld c, h                                       ; $48c6: $4c
    call nc, $fbd5                                ; $48c7: $d4 $d5 $fb
    push hl                                       ; $48ca: $e5
    db $d3                                        ; $48cb: $d3
    ld a, d                                       ; $48cc: $7a
    inc b                                         ; $48cd: $04
    ld [de], a                                    ; $48ce: $12
    inc b                                         ; $48cf: $04
    push hl                                       ; $48d0: $e5
    adc $cf                                       ; $48d1: $ce $cf
    nop                                           ; $48d3: $00
    sub $d0                                       ; $48d4: $d6 $d0
    pop de                                        ; $48d6: $d1
    ld c, b                                       ; $48d7: $48
    ld [$2c47], sp                                ; $48d8: $08 $47 $2c
    nop                                           ; $48db: $00
    ld b, [hl]                                    ; $48dc: $46
    nop                                           ; $48dd: $00
    ld c, $00                                     ; $48de: $0e $00
    inc l                                         ; $48e0: $2c
    ld c, b                                       ; $48e1: $48
    ld c, b                                       ; $48e2: $48
    inc l                                         ; $48e3: $2c
    ld c, h                                       ; $48e4: $4c
    ld c, b                                       ; $48e5: $48
    ld c, c                                       ; $48e6: $49
    db $e3                                        ; $48e7: $e3
    sub $e2                                       ; $48e8: $d6 $e2
    nop                                           ; $48ea: $00
    rst $10                                       ; $48eb: $d7
    sub $e1                                       ; $48ec: $d6 $e1
    sub $e5                                       ; $48ee: $d6 $e5
    rst $10                                       ; $48f0: $d7
    inc b                                         ; $48f1: $04
    ei                                            ; $48f2: $fb
    ld l, l                                       ; $48f3: $6d
    ld a, d                                       ; $48f4: $7a
    ei                                            ; $48f5: $fb
    inc [hl]                                      ; $48f6: $34
    inc c                                         ; $48f7: $0c
    inc c                                         ; $48f8: $0c
    ld c, h                                       ; $48f9: $4c
    inc c                                         ; $48fa: $0c
    inc c                                         ; $48fb: $0c
    ld l, h                                       ; $48fc: $6c
    ld c, h                                       ; $48fd: $4c
    inc c                                         ; $48fe: $0c
    inc l                                         ; $48ff: $2c
    inc c                                         ; $4900: $0c
    nop                                           ; $4901: $00
    ld b, [hl]                                    ; $4902: $46
    ld b, $40                                     ; $4903: $06 $40
    ld b, [hl]                                    ; $4905: $46
    ld b, $7a                                     ; $4906: $06 $7a
    push hl                                       ; $4908: $e5
    inc b                                         ; $4909: $04
    ld a, d                                       ; $490a: $7a
    db $d3                                        ; $490b: $d3
    ld a, d                                       ; $490c: $7a
    ei                                            ; $490d: $fb
    inc b                                         ; $490e: $04
    db $d3                                        ; $490f: $d3
    inc de                                        ; $4910: $13
    inc de                                        ; $4911: $13
    inc de                                        ; $4912: $13
    ei                                            ; $4913: $fb
    inc d                                         ; $4914: $14
    ei                                            ; $4915: $fb
    dec d                                         ; $4916: $15
    nop                                           ; $4917: $00
    ld c, h                                       ; $4918: $4c
    nop                                           ; $4919: $00
    ld b, b                                       ; $491a: $40
    nop                                           ; $491b: $00
    ld b, b                                       ; $491c: $40
    ld b, [hl]                                    ; $491d: $46
    nop                                           ; $491e: $00
    nop                                           ; $491f: $00
    ld h, $06                                     ; $4920: $26 $06
    ld [$0806], sp                                ; $4922: $08 $06 $08
    daa                                           ; $4925: $27
    ld [$7ad3], sp                                ; $4926: $08 $d3 $7a
    ei                                            ; $4929: $fb
    ld [c], a                                     ; $492a: $e2
    pop hl                                        ; $492b: $e1
    sub $d6                                       ; $492c: $d6 $d6
    db $e4                                        ; $492e: $e4
    ld d, $d6                                     ; $492f: $16 $d6
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    rla                                           ; $4933: $17
    db $d3                                        ; $4934: $d3
    ei                                            ; $4935: $fb
    jr jr_08e_4938                                ; $4936: $18 $00

jr_08e_4938:
    ld b, b                                       ; $4938: $40
    ld b, [hl]                                    ; $4939: $46
    inc c                                         ; $493a: $0c
    inc c                                         ; $493b: $0c
    ld c, h                                       ; $493c: $4c
    ld c, h                                       ; $493d: $4c
    inc c                                         ; $493e: $0c
    ld [$0c0c], sp                                ; $493f: $08 $0c $0c
    ld c, h                                       ; $4942: $4c
    ld [$2600], sp                                ; $4943: $08 $00 $26
    ld c, $d6                                     ; $4946: $0e $d6
    ldh [$e5], a                                  ; $4948: $e0 $e5
    db $d3                                        ; $494a: $d3
    rst $10                                       ; $494b: $d7
    db $d3                                        ; $494c: $d3
    add hl, de                                    ; $494d: $19
    ld a, [de]                                    ; $494e: $1a
    ei                                            ; $494f: $fb
    inc de                                        ; $4950: $13
    dec de                                        ; $4951: $1b
    inc e                                         ; $4952: $1c
    dec e                                         ; $4953: $1d
    ld e, $d3                                     ; $4954: $1e $d3
    rra                                           ; $4956: $1f
    ld c, h                                       ; $4957: $4c
    ld l, h                                       ; $4958: $6c
    inc l                                         ; $4959: $2c
    nop                                           ; $495a: $00
    ld c, h                                       ; $495b: $4c
    nop                                           ; $495c: $00
    ld [$4608], sp                                ; $495d: $08 $08 $46
    ld h, $08                                     ; $4960: $26 $08
    add hl, bc                                    ; $4962: $09
    ld [$0008], sp                                ; $4963: $08 $08 $00
    rrca                                          ; $4966: $0f
    ei                                            ; $4967: $fb
    db $d3                                        ; $4968: $d3
    jr nz, jr_08e_498c                            ; $4969: $20 $21

    ld l, l                                       ; $496b: $6d
    push hl                                       ; $496c: $e5
    rst $28                                       ; $496d: $ef
    ld [hl+], a                                   ; $496e: $22
    db $d3                                        ; $496f: $d3
    ei                                            ; $4970: $fb
    inc hl                                        ; $4971: $23
    db $d3                                        ; $4972: $d3
    inc de                                        ; $4973: $13
    db $d3                                        ; $4974: $d3
    inc b                                         ; $4975: $04
    ei                                            ; $4976: $fb
    ld h, $00                                     ; $4977: $26 $00
    ld [$0608], sp                                ; $4979: $08 $08 $06
    inc l                                         ; $497c: $2c
    jr z, jr_08e_4987                             ; $497d: $28 $08

    nop                                           ; $497f: $00
    rlca                                          ; $4980: $07
    ld l, [hl]                                    ; $4981: $6e
    nop                                           ; $4982: $00
    ld b, $00                                     ; $4983: $06 $00
    nop                                           ; $4985: $00
    ld b, b                                       ; $4986: $40

jr_08e_4987:
    db $d3                                        ; $4987: $d3
    inc h                                         ; $4988: $24
    rst $20                                       ; $4989: $e7
    inc [hl]                                      ; $498a: $34
    db $d3                                        ; $498b: $d3

jr_08e_498c:
    push hl                                       ; $498c: $e5
    inc b                                         ; $498d: $04
    db $d3                                        ; $498e: $d3
    ei                                            ; $498f: $fb
    dec h                                         ; $4990: $25
    nop                                           ; $4991: $00
    inc b                                         ; $4992: $04
    db $d3                                        ; $4993: $d3
    push hl                                       ; $4994: $e5
    db $d3                                        ; $4995: $d3
    ld h, $00                                     ; $4996: $26 $00
    ld [$070f], sp                                ; $4998: $08 $0f $07
    nop                                           ; $499b: $00
    ld c, h                                       ; $499c: $4c
    nop                                           ; $499d: $00
    nop                                           ; $499e: $00
    ld b, $4c                                     ; $499f: $06 $4c
    inc c                                         ; $49a1: $0c
    nop                                           ; $49a2: $00
    nop                                           ; $49a3: $00
    ld c, h                                       ; $49a4: $4c
    inc b                                         ; $49a5: $04
    ld [$d604], sp                                ; $49a6: $08 $04 $d6
    ld a, d                                       ; $49a9: $7a
    daa                                           ; $49aa: $27
    inc hl                                        ; $49ab: $23
    ei                                            ; $49ac: $fb
    inc b                                         ; $49ad: $04
    jr z, jr_08e_49d9                             ; $49ae: $28 $29

    ld a, [hl+]                                   ; $49b0: $2a
    ld sp, hl                                     ; $49b1: $f9
    inc de                                        ; $49b2: $13
    dec hl                                        ; $49b3: $2b
    inc l                                         ; $49b4: $2c
    ei                                            ; $49b5: $fb
    db $e3                                        ; $49b6: $e3
    nop                                           ; $49b7: $00
    inc l                                         ; $49b8: $2c
    ld b, b                                       ; $49b9: $40
    ld [$264e], sp                                ; $49ba: $08 $4e $26
    nop                                           ; $49bd: $00
    ld l, b                                       ; $49be: $68
    ld [$0808], sp                                ; $49bf: $08 $08 $08
    rlca                                          ; $49c2: $07
    ld [$4609], sp                                ; $49c3: $08 $09 $46
    ld c, h                                       ; $49c6: $4c
    dec l                                         ; $49c7: $2d
    ld l, $fb                                     ; $49c8: $2e $fb
    sub $2f                                       ; $49ca: $d6 $2f
    jr nc, @-$03                                  ; $49cc: $30 $fb

    inc b                                         ; $49ce: $04
    add hl, hl                                    ; $49cf: $29
    push hl                                       ; $49d0: $e5
    rst $20                                       ; $49d1: $e7
    inc de                                        ; $49d2: $13
    dec h                                         ; $49d3: $25
    nop                                           ; $49d4: $00
    ld a, [c]                                     ; $49d5: $f2
    rra                                           ; $49d6: $1f
    add hl, bc                                    ; $49d7: $09
    add hl, bc                                    ; $49d8: $09

jr_08e_49d9:
    ld b, $0c                                     ; $49d9: $06 $0c
    ld [$4008], sp                                ; $49db: $08 $08 $40
    nop                                           ; $49de: $00
    ld b, h                                       ; $49df: $44
    ld l, h                                       ; $49e0: $6c
    ld c, $07                                     ; $49e1: $0e $07
    ld c, h                                       ; $49e3: $4c
    inc c                                         ; $49e4: $0c
    ld c, h                                       ; $49e5: $4c
    rrca                                          ; $49e6: $0f
    sub $7a                                       ; $49e7: $d6 $7a
    db $d3                                        ; $49e9: $d3
    ld l, l                                       ; $49ea: $6d
    ld [$6deb], a                                 ; $49eb: $ea $eb $6d
    rst $10                                       ; $49ee: $d7
    add sp, -$17                                  ; $49ef: $e8 $e9
    ldh [rP1], a                                  ; $49f1: $e0 $00
    db $d3                                        ; $49f3: $d3
    ld a, d                                       ; $49f4: $7a
    push hl                                       ; $49f5: $e5
    dec h                                         ; $49f6: $25
    inc c                                         ; $49f7: $0c
    rlca                                          ; $49f8: $07
    nop                                           ; $49f9: $00
    ld h, a                                       ; $49fa: $67
    ld c, b                                       ; $49fb: $48
    ld c, c                                       ; $49fc: $49
    ld b, $0c                                     ; $49fd: $06 $0c
    ld c, b                                       ; $49ff: $48
    ld c, b                                       ; $4a00: $48
    inc c                                         ; $4a01: $0c
    inc c                                         ; $4a02: $0c
    nop                                           ; $4a03: $00
    ld b, [hl]                                    ; $4a04: $46
    inc l                                         ; $4a05: $2c
    inc c                                         ; $4a06: $0c
    add hl, hl                                    ; $4a07: $29
    ld a, [hl+]                                   ; $4a08: $2a
    ld sp, hl                                     ; $4a09: $f9
    inc h                                         ; $4a0a: $24
    dec hl                                        ; $4a0b: $2b
    inc l                                         ; $4a0c: $2c
    ei                                            ; $4a0d: $fb
    inc [hl]                                      ; $4a0e: $34
    ld sp, $d732                                  ; $4a0f: $31 $32 $d7
    inc [hl]                                      ; $4a12: $34
    inc de                                        ; $4a13: $13
    jr jr_08e_4a33                                ; $4a14: $18 $1d

    ld e, $08                                     ; $4a16: $1e $08
    ld [$2208], sp                                ; $4a18: $08 $08 $22
    ld [$4709], sp                                ; $4a1b: $08 $09 $47
    rlca                                          ; $4a1e: $07
    ld [$6c08], sp                                ; $4a1f: $08 $08 $6c
    ld b, $06                                     ; $4a22: $06 $06
    ld [$0808], sp                                ; $4a24: $08 $08 $08
    ei                                            ; $4a27: $fb
    inc [hl]                                      ; $4a28: $34
    inc b                                         ; $4a29: $04
    inc b                                         ; $4a2a: $04
    add hl, de                                    ; $4a2b: $19
    ld a, [de]                                    ; $4a2c: $1a
    inc [hl]                                      ; $4a2d: $34
    ld a, d                                       ; $4a2e: $7a
    dec de                                        ; $4a2f: $1b
    inc e                                         ; $4a30: $1c
    rst $20                                       ; $4a31: $e7
    inc [hl]                                      ; $4a32: $34

jr_08e_4a33:
    ei                                            ; $4a33: $fb
    inc hl                                        ; $4a34: $23
    inc b                                         ; $4a35: $04
    inc b                                         ; $4a36: $04
    ld b, a                                       ; $4a37: $47
    ld b, [hl]                                    ; $4a38: $46
    nop                                           ; $4a39: $00
    jr nz, jr_08e_4a44                            ; $4a3a: $20 $08

    ld [$4007], sp                                ; $4a3c: $08 $07 $40
    ld [$0e08], sp                                ; $4a3f: $08 $08 $0e
    ld b, $47                                     ; $4a42: $06 $47

jr_08e_4a44:
    ld [$0000], sp                                ; $4a44: $08 $00 $00
    inc b                                         ; $4a47: $04
    inc b                                         ; $4a48: $04
    dec b                                         ; $4a49: $05
    db $d3                                        ; $4a4a: $d3
    ld a, d                                       ; $4a4b: $7a
    reti                                          ; $4a4c: $d9


    jp c, Jump_000_197a                           ; $4a4d: $da $7a $19

    ld a, [de]                                    ; $4a50: $1a
    inc b                                         ; $4a51: $04
    push hl                                       ; $4a52: $e5
    ld [$28eb], a                                 ; $4a53: $ea $eb $28
    inc [hl]                                      ; $4a56: $34
    nop                                           ; $4a57: $00
    ld c, b                                       ; $4a58: $48
    ld c, b                                       ; $4a59: $48
    nop                                           ; $4a5a: $00
    ld b, [hl]                                    ; $4a5b: $46
    ld c, b                                       ; $4a5c: $48
    ld c, b                                       ; $4a5d: $48
    ld b, b                                       ; $4a5e: $40
    ld [$0008], sp                                ; $4a5f: $08 $08 $00
    inc l                                         ; $4a62: $2c
    ld c, b                                       ; $4a63: $48
    ld c, c                                       ; $4a64: $49
    ld [$2506], sp                                ; $4a65: $08 $06 $25
    rst $18                                       ; $4a68: $df
    ld a, d                                       ; $4a69: $7a
    db $d3                                        ; $4a6a: $d3
    rst $20                                       ; $4a6b: $e7
    inc [hl]                                      ; $4a6c: $34
    rst $10                                       ; $4a6d: $d7
    ei                                            ; $4a6e: $fb
    sub $d7                                       ; $4a6f: $d6 $d7
    rst $18                                       ; $4a71: $df
    db $d3                                        ; $4a72: $d3
    ld a, d                                       ; $4a73: $7a
    inc b                                         ; $4a74: $04
    ld [de], a                                    ; $4a75: $12
    ei                                            ; $4a76: $fb
    inc c                                         ; $4a77: $0c
    ld c, $40                                     ; $4a78: $0e $40
    nop                                           ; $4a7a: $00
    ld c, $06                                     ; $4a7b: $0e $06
    inc c                                         ; $4a7d: $0c
    ld b, $0c                                     ; $4a7e: $06 $0c
    inc c                                         ; $4a80: $0c
    ld c, $00                                     ; $4a81: $0e $00
    ld b, b                                       ; $4a83: $40
    nop                                           ; $4a84: $00
    ld c, $06                                     ; $4a85: $0e $06
    rst $10                                       ; $4a87: $d7
    daa                                           ; $4a88: $27
    dec l                                         ; $4a89: $2d
    ld l, $00                                     ; $4a8a: $2e $00
    jr z, jr_08e_4abd                             ; $4a8c: $28 $2f

    jr nc, jr_08e_4aa3                            ; $4a8e: $30 $13

    inc b                                         ; $4a90: $04
    ei                                            ; $4a91: $fb
    inc b                                         ; $4a92: $04
    rst $18                                       ; $4a93: $df
    ldh [$d6], a                                  ; $4a94: $e0 $d6
    ei                                            ; $4a96: $fb
    ld c, h                                       ; $4a97: $4c
    ld [$0909], sp                                ; $4a98: $08 $09 $09
    inc c                                         ; $4a9b: $0c
    ld l, b                                       ; $4a9c: $68
    ld [$0608], sp                                ; $4a9d: $08 $08 $06
    nop                                           ; $4aa0: $00
    ld b, $40                                     ; $4aa1: $06 $40

jr_08e_4aa3:
    ld c, $0c                                     ; $4aa3: $0e $0c
    ld c, h                                       ; $4aa5: $4c
    ld b, [hl]                                    ; $4aa6: $46
    inc [hl]                                      ; $4aa7: $34
    inc b                                         ; $4aa8: $04
    push hl                                       ; $4aa9: $e5
    ei                                            ; $4aaa: $fb
    ei                                            ; $4aab: $fb
    rst $10                                       ; $4aac: $d7
    ldh [$d6], a                                  ; $4aad: $e0 $d6
    rst $10                                       ; $4aaf: $d7
    nop                                           ; $4ab0: $00
    ld [c], a                                     ; $4ab1: $e2
    db $e4                                        ; $4ab2: $e4
    push hl                                       ; $4ab3: $e5
    db $e3                                        ; $4ab4: $e3
    ld [c], a                                     ; $4ab5: $e2
    nop                                           ; $4ab6: $00
    ld b, $00                                     ; $4ab7: $06 $00
    inc l                                         ; $4ab9: $2c
    ld h, $47                                     ; $4aba: $26 $47
    ld l, h                                       ; $4abc: $6c

jr_08e_4abd:
    inc c                                         ; $4abd: $0c
    ld c, h                                       ; $4abe: $4c
    ld l, h                                       ; $4abf: $6c
    ld l, h                                       ; $4ac0: $6c
    inc c                                         ; $4ac1: $0c
    inc c                                         ; $4ac2: $0c
    inc l                                         ; $4ac3: $2c
    inc c                                         ; $4ac4: $0c
    inc c                                         ; $4ac5: $0c

jr_08e_4ac6:
    ld c, h                                       ; $4ac6: $4c
    add sp, -$17                                  ; $4ac7: $e8 $e9
    inc c                                         ; $4ac9: $0c
    inc b                                         ; $4aca: $04
    db $d3                                        ; $4acb: $d3
    ld a, d                                       ; $4acc: $7a
    db $d3                                        ; $4acd: $d3
    inc c                                         ; $4ace: $0c
    rst $10                                       ; $4acf: $d7
    ei                                            ; $4ad0: $fb
    inc b                                         ; $4ad1: $04
    jr z, jr_08e_4ac6                             ; $4ad2: $28 $f2

    inc sp                                        ; $4ad4: $33
    inc [hl]                                      ; $4ad5: $34
    ldh [rOBP0], a                                ; $4ad6: $e0 $48
    ld c, b                                       ; $4ad8: $48
    ld l, b                                       ; $4ad9: $68
    nop                                           ; $4ada: $00
    nop                                           ; $4adb: $00
    ld b, [hl]                                    ; $4adc: $46
    nop                                           ; $4add: $00
    ld [$474c], sp                                ; $4ade: $08 $4c $47
    nop                                           ; $4ae1: $00
    ld l, b                                       ; $4ae2: $68
    inc c                                         ; $4ae3: $0c
    ld [$0c08], sp                                ; $4ae4: $08 $08 $0c
    dec e                                         ; $4ae7: $1d
    ld e, $d3                                     ; $4ae8: $1e $d3
    db $d3                                        ; $4aea: $d3
    dec l                                         ; $4aeb: $2d
    ld l, $fb                                     ; $4aec: $2e $fb
    ld a, d                                       ; $4aee: $7a
    cpl                                           ; $4aef: $2f
    jr nc, @-$03                                  ; $4af0: $30 $fb

    db $d3                                        ; $4af2: $d3
    sub $d7                                       ; $4af3: $d6 $d7
    db $d3                                        ; $4af5: $d3
    ld a, d                                       ; $4af6: $7a
    ld [$0008], sp                                ; $4af7: $08 $08 $00
    nop                                           ; $4afa: $00
    add hl, bc                                    ; $4afb: $09
    ld [$0006], sp                                ; $4afc: $08 $06 $00
    ld [$4708], sp                                ; $4aff: $08 $08 $47
    nop                                           ; $4b02: $00
    inc c                                         ; $4b03: $0c
    inc c                                         ; $4b04: $0c
    nop                                           ; $4b05: $00
    nop                                           ; $4b06: $00
    ei                                            ; $4b07: $fb
    pop hl                                        ; $4b08: $e1
    sub $04                                       ; $4b09: $d6 $04
    dec [hl]                                      ; $4b0b: $35
    ld [hl], $6d                                  ; $4b0c: $36 $6d
    pop hl                                        ; $4b0e: $e1
    scf                                           ; $4b0f: $37
    jr c, @-$03                                   ; $4b10: $38 $fb

    db $e3                                        ; $4b12: $e3
    rst $20                                       ; $4b13: $e7
    inc [hl]                                      ; $4b14: $34
    inc [hl]                                      ; $4b15: $34
    inc de                                        ; $4b16: $13
    ld b, [hl]                                    ; $4b17: $46
    ld c, h                                       ; $4b18: $4c
    inc c                                         ; $4b19: $0c
    nop                                           ; $4b1a: $00
    ld [$2009], sp                                ; $4b1b: $08 $09 $20
    inc c                                         ; $4b1e: $0c
    ld [$4708], sp                                ; $4b1f: $08 $08 $47
    inc c                                         ; $4b22: $0c
    rrca                                          ; $4b23: $0f
    ld b, $46                                     ; $4b24: $06 $46
    ld b, [hl]                                    ; $4b26: $46
    ldh [$e2], a                                  ; $4b27: $e0 $e2
    db $e4                                        ; $4b29: $e4
    db $e4                                        ; $4b2a: $e4
    ld [c], a                                     ; $4b2b: $e2
    db $e4                                        ; $4b2c: $e4
    ld [c], a                                     ; $4b2d: $e2
    db $e4                                        ; $4b2e: $e4
    dec h                                         ; $4b2f: $25
    nop                                           ; $4b30: $00
    ld a, [c]                                     ; $4b31: $f2
    sub $6d                                       ; $4b32: $d6 $6d
    push hl                                       ; $4b34: $e5
    ei                                            ; $4b35: $fb
    push hl                                       ; $4b36: $e5
    inc c                                         ; $4b37: $0c
    inc c                                         ; $4b38: $0c
    inc c                                         ; $4b39: $0c
    inc l                                         ; $4b3a: $2c
    inc c                                         ; $4b3b: $0c
    inc c                                         ; $4b3c: $0c
    ld c, h                                       ; $4b3d: $4c
    ld c, h                                       ; $4b3e: $4c
    inc c                                         ; $4b3f: $0c
    ld c, h                                       ; $4b40: $4c
    inc c                                         ; $4b41: $0c
    inc c                                         ; $4b42: $0c
    ld b, $2c                                     ; $4b43: $06 $2c
    ld b, [hl]                                    ; $4b45: $46
    inc l                                         ; $4b46: $2c
    sub $d3                                       ; $4b47: $d6 $d3
    ld a, d                                       ; $4b49: $7a
    ld l, l                                       ; $4b4a: $6d
    rst $10                                       ; $4b4b: $d7
    ei                                            ; $4b4c: $fb
    add hl, sp                                    ; $4b4d: $39
    ld a, [hl-]                                   ; $4b4e: $3a
    db $d3                                        ; $4b4f: $d3
    inc [hl]                                      ; $4b50: $34
    dec sp                                        ; $4b51: $3b
    inc sp                                        ; $4b52: $33
    sub $fb                                       ; $4b53: $d6 $fb
    rst $38                                       ; $4b55: $ff
    cp $4c                                        ; $4b56: $fe $4c
    nop                                           ; $4b58: $00
    ld b, a                                       ; $4b59: $47
    jr nz, jr_08e_4ba8                            ; $4b5a: $20 $4c

    ld h, $08                                     ; $4b5c: $26 $08
    ld [$4600], sp                                ; $4b5e: $08 $00 $46
    ld [$2c48], sp                                ; $4b61: $08 $48 $2c
    ld h, $68                                     ; $4b64: $26 $68
    ld l, b                                       ; $4b66: $68
    inc a                                         ; $4b67: $3c
    dec a                                         ; $4b68: $3d
    ld a, $d3                                     ; $4b69: $3e $d3
    ccf                                           ; $4b6b: $3f
    ld b, b                                       ; $4b6c: $40
    ld b, c                                       ; $4b6d: $41
    ei                                            ; $4b6e: $fb
    inc [hl]                                      ; $4b6f: $34
    ld b, d                                       ; $4b70: $42
    ld a, d                                       ; $4b71: $7a
    db $d3                                        ; $4b72: $d3
    call c, $d343                                 ; $4b73: $dc $43 $d3
    ld a, d                                       ; $4b76: $7a
    ld [$0808], sp                                ; $4b77: $08 $08 $08
    nop                                           ; $4b7a: $00
    ld [$0808], sp                                ; $4b7b: $08 $08 $08
    ld b, $48                                     ; $4b7e: $06 $48
    ld [$0046], sp                                ; $4b80: $08 $46 $00
    ld l, b                                       ; $4b83: $68
    add hl, bc                                    ; $4b84: $09
    nop                                           ; $4b85: $00
    nop                                           ; $4b86: $00
    inc bc                                        ; $4b87: $03
    di                                            ; $4b88: $f3
    ld hl, sp-$07                                 ; $4b89: $f8 $f9
    inc de                                        ; $4b8b: $13
    inc [hl]                                      ; $4b8c: $34
    rst $18                                       ; $4b8d: $df
    ld a, d                                       ; $4b8e: $7a
    rst $10                                       ; $4b8f: $d7
    inc b                                         ; $4b90: $04
    ld [$dfeb], a                                 ; $4b91: $ea $eb $df
    ei                                            ; $4b94: $fb
    add sp, -$17                                  ; $4b95: $e8 $e9
    ld [$4848], sp                                ; $4b97: $08 $48 $48
    ld c, b                                       ; $4b9a: $48
    ld b, $06                                     ; $4b9b: $06 $06
    rrca                                          ; $4b9d: $0f
    ld b, $0c                                     ; $4b9e: $06 $0c
    nop                                           ; $4ba0: $00
    ld c, b                                       ; $4ba1: $48
    ld c, c                                       ; $4ba2: $49
    ld c, $26                                     ; $4ba3: $0e $26
    ld c, a                                       ; $4ba5: $4f
    ld c, b                                       ; $4ba6: $48
    ei                                            ; $4ba7: $fb

jr_08e_4ba8:
    jp nc, $d3d3                                  ; $4ba8: $d2 $d3 $d3

    ei                                            ; $4bab: $fb
    call nc, $fbd5                                ; $4bac: $d4 $d5 $fb
    ld l, l                                       ; $4baf: $6d
    ei                                            ; $4bb0: $fb
    rst $20                                       ; $4bb1: $e7
    rst $10                                       ; $4bb2: $d7
    inc de                                        ; $4bb3: $13
    ldh [$e2], a                                  ; $4bb4: $e0 $e2
    adc $47                                       ; $4bb6: $ce $47
    ld c, b                                       ; $4bb8: $48
    ld [$4000], sp                                ; $4bb9: $08 $00 $40
    ld c, c                                       ; $4bbc: $49
    ld [$2046], sp                                ; $4bbd: $08 $46 $20
    ld b, [hl]                                    ; $4bc0: $46
    ld c, $0c                                     ; $4bc1: $0e $0c
    ld b, [hl]                                    ; $4bc3: $46
    inc c                                         ; $4bc4: $0c
    inc l                                         ; $4bc5: $2c
    ld c, b                                       ; $4bc6: $48
    inc b                                         ; $4bc7: $04
    db $d3                                        ; $4bc8: $d3
    db $fd                                        ; $4bc9: $fd
    db $fc                                        ; $4bca: $fc
    db $d3                                        ; $4bcb: $d3
    ei                                            ; $4bcc: $fb
    rst $18                                       ; $4bcd: $df
    pop af                                        ; $4bce: $f1
    ld [de], a                                    ; $4bcf: $12
    db $d3                                        ; $4bd0: $d3
    rst $10                                       ; $4bd1: $d7
    rst $28                                       ; $4bd2: $ef
    rst $08                                       ; $4bd3: $cf
    rst $10                                       ; $4bd4: $d7
    ld b, h                                       ; $4bd5: $44
    db $ed                                        ; $4bd6: $ed
    nop                                           ; $4bd7: $00
    nop                                           ; $4bd8: $00
    ld l, c                                       ; $4bd9: $69
    ld l, b                                       ; $4bda: $68
    nop                                           ; $4bdb: $00
    ld h, $0f                                     ; $4bdc: $26 $0f
    ld l, b                                       ; $4bde: $68
    ld c, $00                                     ; $4bdf: $0e $00
    inc c                                         ; $4be1: $0c
    ld l, b                                       ; $4be2: $68
    ld c, c                                       ; $4be3: $49
    inc c                                         ; $4be4: $0c
    ld c, $68                                     ; $4be5: $0e $68
    db $db                                        ; $4be7: $db
    ld b, l                                       ; $4be8: $45
    db $d3                                        ; $4be9: $d3
    ld a, d                                       ; $4bea: $7a
    ldh a, [$fb]                                  ; $4beb: $f0 $fb
    ld a, d                                       ; $4bed: $7a
    ei                                            ; $4bee: $fb
    xor $44                                       ; $4bef: $ee $44
    db $d3                                        ; $4bf1: $d3
    ld a, d                                       ; $4bf2: $7a
    db $ec                                        ; $4bf3: $ec
    rst $18                                       ; $4bf4: $df
    ld a, d                                       ; $4bf5: $7a
    db $d3                                        ; $4bf6: $d3
    ld l, b                                       ; $4bf7: $68
    ld [$0000], sp                                ; $4bf8: $08 $00 $00
    ld l, b                                       ; $4bfb: $68
    ld b, b                                       ; $4bfc: $40
    ld b, [hl]                                    ; $4bfd: $46
    ld b, $68                                     ; $4bfe: $06 $68
    ld c, $00                                     ; $4c00: $0e $00
    nop                                           ; $4c02: $00
    ld l, b                                       ; $4c03: $68
    ld c, $46                                     ; $4c04: $0e $46
    nop                                           ; $4c06: $00
    ld a, d                                       ; $4c07: $7a
    ld l, l                                       ; $4c08: $6d
    inc b                                         ; $4c09: $04
    ei                                            ; $4c0a: $fb
    db $d3                                        ; $4c0b: $d3
    ei                                            ; $4c0c: $fb
    db $ed                                        ; $4c0d: $ed
    db $ec                                        ; $4c0e: $ec
    ld b, h                                       ; $4c0f: $44
    inc b                                         ; $4c10: $04
    rst $28                                       ; $4c11: $ef
    xor $fb                                       ; $4c12: $ee $fb
    ld b, h                                       ; $4c14: $44
    pop af                                        ; $4c15: $f1
    ldh a, [rP1]                                  ; $4c16: $f0 $00
    ld b, $00                                     ; $4c18: $06 $00
    ld h, $00                                     ; $4c1a: $26 $00
    ld b, $28                                     ; $4c1c: $06 $28
    jr z, jr_08e_4c2e                             ; $4c1e: $28 $0e

    nop                                           ; $4c20: $00
    jr z, @+$2b                                   ; $4c21: $28 $29

    ld b, $0e                                     ; $4c23: $06 $0e
    jr z, jr_08e_4c4f                             ; $4c25: $28 $28

    ld sp, $6d32                                  ; $4c27: $31 $32 $6d
    pop hl                                        ; $4c2a: $e1
    inc hl                                        ; $4c2b: $23
    ei                                            ; $4c2c: $fb
    inc d                                         ; $4c2d: $14

jr_08e_4c2e:
    db $d3                                        ; $4c2e: $d3
    rst $10                                       ; $4c2f: $d7
    db $d3                                        ; $4c30: $d3
    inc h                                         ; $4c31: $24
    ei                                            ; $4c32: $fb
    ld l, l                                       ; $4c33: $6d
    inc de                                        ; $4c34: $13
    inc b                                         ; $4c35: $04
    rst $10                                       ; $4c36: $d7
    ld [$6008], sp                                ; $4c37: $08 $08 $60
    ld c, h                                       ; $4c3a: $4c
    ld c, a                                       ; $4c3b: $4f
    ld h, $08                                     ; $4c3c: $26 $08
    nop                                           ; $4c3e: $00
    inc c                                         ; $4c3f: $0c
    nop                                           ; $4c40: $00
    ld [$2007], sp                                ; $4c41: $08 $07 $20
    ld h, [hl]                                    ; $4c44: $66
    nop                                           ; $4c45: $00
    inc c                                         ; $4c46: $0c
    ld [c], a                                     ; $4c47: $e2
    db $e4                                        ; $4c48: $e4
    rst $10                                       ; $4c49: $d7
    inc de                                        ; $4c4a: $13
    ldh [$d6], a                                  ; $4c4b: $e0 $d6
    ld b, [hl]                                    ; $4c4d: $46
    ld b, a                                       ; $4c4e: $47

jr_08e_4c4f:
    inc de                                        ; $4c4f: $13
    rst $10                                       ; $4c50: $d7
    ld c, b                                       ; $4c51: $48
    ld c, c                                       ; $4c52: $49
    sub $4a                                       ; $4c53: $d6 $4a
    ld c, e                                       ; $4c55: $4b
    dec h                                         ; $4c56: $25
    ld c, h                                       ; $4c57: $4c
    ld c, h                                       ; $4c58: $4c
    inc c                                         ; $4c59: $0c
    ld b, $4c                                     ; $4c5a: $06 $4c
    inc c                                         ; $4c5c: $0c
    ld [$0608], sp                                ; $4c5d: $08 $08 $06
    inc c                                         ; $4c60: $0c
    ld [$6c08], sp                                ; $4c61: $08 $08 $6c
    ld [$0c08], sp                                ; $4c64: $08 $08 $0c
    rst $18                                       ; $4c67: $df
    rra                                           ; $4c68: $1f
    db $d3                                        ; $4c69: $d3
    ld l, l                                       ; $4c6a: $6d
    ld l, l                                       ; $4c6b: $6d
    add hl, hl                                    ; $4c6c: $29
    ld a, [hl+]                                   ; $4c6d: $2a
    ei                                            ; $4c6e: $fb
    ld h, $4c                                     ; $4c6f: $26 $4c
    inc l                                         ; $4c71: $2c
    ld l, l                                       ; $4c72: $6d
    rst $10                                       ; $4c73: $d7
    pop af                                        ; $4c74: $f1
    ldh a, [$6d]                                  ; $4c75: $f0 $6d
    rrca                                          ; $4c77: $0f
    ld c, $06                                     ; $4c78: $0e $06
    ld h, [hl]                                    ; $4c7a: $66
    ld h, [hl]                                    ; $4c7b: $66
    ld [$4608], sp                                ; $4c7c: $08 $08 $46
    ld [$0908], sp                                ; $4c7f: $08 $08 $09
    jr nz, jr_08e_4c90                            ; $4c82: $20 $0c

    ld l, b                                       ; $4c84: $68
    ld l, b                                       ; $4c85: $68
    ld h, b                                       ; $4c86: $60
    db $d3                                        ; $4c87: $d3
    db $fd                                        ; $4c88: $fd
    db $fc                                        ; $4c89: $fc
    db $db                                        ; $4c8a: $db

jr_08e_4c8b:
    inc b                                         ; $4c8b: $04
    inc bc                                        ; $4c8c: $03
    di                                            ; $4c8d: $f3
    jr jr_08e_4c8b                                ; $4c8e: $18 $fb

jr_08e_4c90:
    ld b, h                                       ; $4c90: $44
    ldh [$d6], a                                  ; $4c91: $e0 $d6
    ld a, d                                       ; $4c93: $7a
    ld a, d                                       ; $4c94: $7a
    pop hl                                        ; $4c95: $e1
    sub $00                                       ; $4c96: $d6 $00
    jr z, @+$2a                                   ; $4c98: $28 $28

    jr z, jr_08e_4c9c                             ; $4c9a: $28 $00

jr_08e_4c9c:
    ld [$4848], sp                                ; $4c9c: $08 $48 $48
    ld b, $0e                                     ; $4c9f: $06 $0e
    inc c                                         ; $4ca1: $0c
    ld c, h                                       ; $4ca2: $4c
    nop                                           ; $4ca3: $00
    ld b, a                                       ; $4ca4: $47
    ld c, h                                       ; $4ca5: $4c
    inc c                                         ; $4ca6: $0c
    ld b, l                                       ; $4ca7: $45
    ei                                            ; $4ca8: $fb
    inc de                                        ; $4ca9: $13
    inc b                                         ; $4caa: $04
    dec e                                         ; $4cab: $1d
    ld e, $44                                     ; $4cac: $1e $44
    inc b                                         ; $4cae: $04
    ei                                            ; $4caf: $fb
    db $d3                                        ; $4cb0: $d3
    add hl, de                                    ; $4cb1: $19
    ld a, [de]                                    ; $4cb2: $1a
    inc b                                         ; $4cb3: $04
    ei                                            ; $4cb4: $fb
    inc b                                         ; $4cb5: $04
    dec b                                         ; $4cb6: $05
    ld c, b                                       ; $4cb7: $48
    daa                                           ; $4cb8: $27
    ld b, $00                                     ; $4cb9: $06 $00
    ld c, b                                       ; $4cbb: $48
    ld c, b                                       ; $4cbc: $48
    ld c, $20                                     ; $4cbd: $0e $20
    ld h, $00                                     ; $4cbf: $26 $00
    ld [$6008], sp                                ; $4cc1: $08 $08 $60
    ld h, b                                       ; $4cc4: $60
    ld [$d708], sp                                ; $4cc5: $08 $08 $d7
    inc hl                                        ; $4cc8: $23
    ld c, l                                       ; $4cc9: $4d
    inc de                                        ; $4cca: $13
    db $d3                                        ; $4ccb: $d3
    sub $d7                                       ; $4ccc: $d6 $d7
    rst $18                                       ; $4cce: $df
    jr jr_08e_4cee                                ; $4ccf: $18 $1d

    ld e, $6d                                     ; $4cd1: $1e $6d
    ld b, $07                                     ; $4cd3: $06 $07
    ld [$0c09], sp                                ; $4cd5: $08 $09 $0c
    jr z, @+$0a                                   ; $4cd8: $28 $08

    ld b, [hl]                                    ; $4cda: $46
    nop                                           ; $4cdb: $00
    ld l, h                                       ; $4cdc: $6c
    inc c                                         ; $4cdd: $0c
    ld c, $08                                     ; $4cde: $0e $08
    ld [$6608], sp                                ; $4ce0: $08 $08 $66
    ld [$0809], sp                                ; $4ce3: $08 $09 $08
    ld [$ef04], sp                                ; $4ce6: $08 $04 $ef
    xor $d7                                       ; $4ce9: $ee $d7
    ld b, h                                       ; $4ceb: $44
    db $ed                                        ; $4cec: $ed
    db $ec                                        ; $4ced: $ec

jr_08e_4cee:
    inc hl                                        ; $4cee: $23
    ei                                            ; $4cef: $fb
    ld b, [hl]                                    ; $4cf0: $46
    ei                                            ; $4cf1: $fb
    ld b, [hl]                                    ; $4cf2: $46
    db $10                                        ; $4cf3: $10
    inc b                                         ; $4cf4: $04
    ld b, [hl]                                    ; $4cf5: $46
    ei                                            ; $4cf6: $fb
    nop                                           ; $4cf7: $00
    ld l, b                                       ; $4cf8: $68
    ld l, c                                       ; $4cf9: $69
    ld c, h                                       ; $4cfa: $4c
    ld c, $68                                     ; $4cfb: $0e $68
    ld l, b                                       ; $4cfd: $68
    ld c, $27                                     ; $4cfe: $0e $27

Call_08e_4d00:
    ld l, [hl]                                    ; $4d00: $6e
    ld h, [hl]                                    ; $4d01: $66
    ld l, [hl]                                    ; $4d02: $6e
    ld [$6e00], sp                                ; $4d03: $08 $00 $6e
    ld h, b                                       ; $4d06: $60
    db $d3                                        ; $4d07: $d3
    ei                                            ; $4d08: $fb
    rst $18                                       ; $4d09: $df
    or $04                                        ; $4d0a: $f6 $04
    db $d3                                        ; $4d0c: $d3
    ei                                            ; $4d0d: $fb
    db $f4                                        ; $4d0e: $f4
    db $d3                                        ; $4d0f: $d3
    ld l, l                                       ; $4d10: $6d
    ld b, h                                       ; $4d11: $44
    inc bc                                        ; $4d12: $03
    dec h                                         ; $4d13: $25
    push hl                                       ; $4d14: $e5
    sub $d3                                       ; $4d15: $d6 $d3
    nop                                           ; $4d17: $00
    ld b, [hl]                                    ; $4d18: $46
    ld c, $48                                     ; $4d19: $0e $48
    nop                                           ; $4d1b: $00
    nop                                           ; $4d1c: $00
    ld h, [hl]                                    ; $4d1d: $66
    ld c, b                                       ; $4d1e: $48
    nop                                           ; $4d1f: $00
    ld h, [hl]                                    ; $4d20: $66
    ld c, $08                                     ; $4d21: $0e $08
    inc c                                         ; $4d23: $0c
    inc l                                         ; $4d24: $2c
    ld c, h                                       ; $4d25: $4c
    nop                                           ; $4d26: $00
    rst $30                                       ; $4d27: $f7
    ei                                            ; $4d28: $fb
    ei                                            ; $4d29: $fb
    db $d3                                        ; $4d2a: $d3
    push af                                       ; $4d2b: $f5
    ld a, [$0404]                                 ; $4d2c: $fa $04 $04
    di                                            ; $4d2f: $f3
    ld hl, sp-$07                                 ; $4d30: $f8 $f9
    ld l, l                                       ; $4d32: $6d
    db $d3                                        ; $4d33: $d3
    ld l, l                                       ; $4d34: $6d
    sub $d7                                       ; $4d35: $d6 $d7
    ld c, b                                       ; $4d37: $48
    ld c, b                                       ; $4d38: $48
    daa                                           ; $4d39: $27
    nop                                           ; $4d3a: $00
    ld c, c                                       ; $4d3b: $49
    ld c, b                                       ; $4d3c: $48
    nop                                           ; $4d3d: $00
    ld h, b                                       ; $4d3e: $60
    ld c, c                                       ; $4d3f: $49
    ld c, b                                       ; $4d40: $48
    ld c, b                                       ; $4d41: $48
    ld h, [hl]                                    ; $4d42: $66
    nop                                           ; $4d43: $00
    ld h, [hl]                                    ; $4d44: $66
    inc c                                         ; $4d45: $0c
    inc c                                         ; $4d46: $0c
    ld a, [bc]                                    ; $4d47: $0a
    dec bc                                        ; $4d48: $0b
    inc c                                         ; $4d49: $0c
    dec c                                         ; $4d4a: $0d
    ld a, d                                       ; $4d4b: $7a
    ld l, l                                       ; $4d4c: $6d
    ld c, $0f                                     ; $4d4d: $0e $0f
    jp nc, $d3d3                                  ; $4d4f: $d2 $d3 $d3

    inc b                                         ; $4d52: $04
    call nc, $fbd5                                ; $4d53: $d4 $d5 $fb
    ld l, l                                       ; $4d56: $6d
    ld [$0809], sp                                ; $4d57: $08 $09 $08
    add hl, bc                                    ; $4d5a: $09
    ld b, b                                       ; $4d5b: $40
    ld h, [hl]                                    ; $4d5c: $66
    ld [$4808], sp                                ; $4d5d: $08 $08 $48
    ld [$0000], sp                                ; $4d60: $08 $00 $00
    ld c, b                                       ; $4d63: $48
    ld [$6646], sp                                ; $4d64: $08 $46 $66
    ld de, $d6e1                                  ; $4d67: $11 $e1 $d6
    inc b                                         ; $4d6a: $04
    db $d3                                        ; $4d6b: $d3
    ldh [$e2], a                                  ; $4d6c: $e0 $e2
    sub $e1                                       ; $4d6e: $d6 $e1
    ld [c], a                                     ; $4d70: $e2
    db $e4                                        ; $4d71: $e4
    rst $10                                       ; $4d72: $d7
    db $e3                                        ; $4d73: $e3
    db $e3                                        ; $4d74: $e3
    ld [c], a                                     ; $4d75: $e2
    nop                                           ; $4d76: $00
    ld [$4c4c], sp                                ; $4d77: $08 $4c $4c
    nop                                           ; $4d7a: $00
    nop                                           ; $4d7b: $00
    inc c                                         ; $4d7c: $0c
    inc c                                         ; $4d7d: $0c
    ld c, h                                       ; $4d7e: $4c
    inc c                                         ; $4d7f: $0c
    inc c                                         ; $4d80: $0c
    inc c                                         ; $4d81: $0c
    ld c, h                                       ; $4d82: $4c
    inc c                                         ; $4d83: $0c
    ld c, h                                       ; $4d84: $4c
    ld c, h                                       ; $4d85: $4c
    inc c                                         ; $4d86: $0c
    db $d3                                        ; $4d87: $d3
    pop hl                                        ; $4d88: $e1
    db $e4                                        ; $4d89: $e4
    rst $10                                       ; $4d8a: $d7
    inc b                                         ; $4d8b: $04
    rst $18                                       ; $4d8c: $df
    nop                                           ; $4d8d: $00
    ld a, [c]                                     ; $4d8e: $f2
    db $d3                                        ; $4d8f: $d3
    rst $38                                       ; $4d90: $ff
    cp $44                                        ; $4d91: $fe $44
    ei                                            ; $4d93: $fb
    db $fd                                        ; $4d94: $fd
    db $fc                                        ; $4d95: $fc
    ld a, d                                       ; $4d96: $7a
    inc b                                         ; $4d97: $04
    inc c                                         ; $4d98: $0c
    inc c                                         ; $4d99: $0c
    ld c, h                                       ; $4d9a: $4c
    nop                                           ; $4d9b: $00
    ld c, $4c                                     ; $4d9c: $0e $4c
    inc c                                         ; $4d9e: $0c
    nop                                           ; $4d9f: $00
    ld l, b                                       ; $4da0: $68
    ld l, b                                       ; $4da1: $68
    ld c, $06                                     ; $4da2: $0e $06
    ld l, c                                       ; $4da4: $69
    ld l, b                                       ; $4da5: $68
    ld b, b                                       ; $4da6: $40
    inc b                                         ; $4da7: $04
    ld [$04eb], a                                 ; $4da8: $ea $eb $04
    ei                                            ; $4dab: $fb
    add sp, -$17                                  ; $4dac: $e8 $e9
    ei                                            ; $4dae: $fb
    rst $10                                       ; $4daf: $d7
    db $d3                                        ; $4db0: $d3
    ld a, d                                       ; $4db1: $7a
    sub $04                                       ; $4db2: $d6 $04
    rst $10                                       ; $4db4: $d7
    inc b                                         ; $4db5: $04
    ld [c], a                                     ; $4db6: $e2
    nop                                           ; $4db7: $00
    ld c, b                                       ; $4db8: $48
    ld c, b                                       ; $4db9: $48
    nop                                           ; $4dba: $00
    ld h, $48                                     ; $4dbb: $26 $48
    ld c, c                                       ; $4dbd: $49
    ld b, $6c                                     ; $4dbe: $06 $6c
    nop                                           ; $4dc0: $00
    ld b, [hl]                                    ; $4dc1: $46
    ld c, h                                       ; $4dc2: $4c
    nop                                           ; $4dc3: $00
    inc c                                         ; $4dc4: $0c
    nop                                           ; $4dc5: $00
    inc c                                         ; $4dc6: $0c
    ld b, h                                       ; $4dc7: $44
    ld a, d                                       ; $4dc8: $7a
    db $d3                                        ; $4dc9: $d3
    ld [de], a                                    ; $4dca: $12
    inc b                                         ; $4dcb: $04
    ei                                            ; $4dcc: $fb
    adc $cf                                       ; $4dcd: $ce $cf
    nop                                           ; $4dcf: $00
    sub $d0                                       ; $4dd0: $d6 $d0
    pop de                                        ; $4dd2: $d1
    sub $e0                                       ; $4dd3: $d6 $e0
    push hl                                       ; $4dd5: $e5
    db $d3                                        ; $4dd6: $d3
    ld c, [hl]                                    ; $4dd7: $4e
    ld b, [hl]                                    ; $4dd8: $46
    nop                                           ; $4dd9: $00
    ld c, $00                                     ; $4dda: $0e $00
    ld b, b                                       ; $4ddc: $40
    ld c, b                                       ; $4ddd: $48
    ld c, b                                       ; $4dde: $48
    inc l                                         ; $4ddf: $2c
    ld c, h                                       ; $4de0: $4c
    ld c, b                                       ; $4de1: $48
    ld c, c                                       ; $4de2: $49
    ld c, h                                       ; $4de3: $4c
    ld l, h                                       ; $4de4: $6c
    inc l                                         ; $4de5: $2c
    nop                                           ; $4de6: $00
    ld a, d                                       ; $4de7: $7a
    inc b                                         ; $4de8: $04
    pop hl                                        ; $4de9: $e1
    sub $fb                                       ; $4dea: $d6 $fb
    ld a, d                                       ; $4dec: $7a
    db $d3                                        ; $4ded: $d3
    inc de                                        ; $4dee: $13
    db $d3                                        ; $4def: $d3
    inc de                                        ; $4df0: $13
    rst $18                                       ; $4df1: $df
    ld c, [hl]                                    ; $4df2: $4e
    ei                                            ; $4df3: $fb
    ld b, h                                       ; $4df4: $44
    jr nz, jr_08e_4e18                            ; $4df5: $20 $21

    ld b, b                                       ; $4df7: $40
    nop                                           ; $4df8: $00
    ld c, h                                       ; $4df9: $4c
    inc c                                         ; $4dfa: $0c
    ld b, b                                       ; $4dfb: $40
    ld b, [hl]                                    ; $4dfc: $46
    nop                                           ; $4dfd: $00
    ld b, [hl]                                    ; $4dfe: $46
    nop                                           ; $4dff: $00
    ld b, [hl]                                    ; $4e00: $46
    ld c, $0f                                     ; $4e01: $0e $0f
    ld h, $0e                                     ; $4e03: $26 $0e
    ld [$d308], sp                                ; $4e05: $08 $08 $d3
    ei                                            ; $4e08: $fb
    ld a, d                                       ; $4e09: $7a
    push hl                                       ; $4e0a: $e5
    ld c, [hl]                                    ; $4e0b: $4e
    ld a, d                                       ; $4e0c: $7a
    push hl                                       ; $4e0d: $e5
    dec h                                         ; $4e0e: $25
    push hl                                       ; $4e0f: $e5
    dec h                                         ; $4e10: $25
    nop                                           ; $4e11: $00
    ldh [$e1], a                                  ; $4e12: $e0 $e1
    ld [c], a                                     ; $4e14: $e2
    db $e4                                        ; $4e15: $e4
    rst $10                                       ; $4e16: $d7
    nop                                           ; $4e17: $00

jr_08e_4e18:
    ld b, a                                       ; $4e18: $47
    ld b, a                                       ; $4e19: $47
    inc l                                         ; $4e1a: $2c
    ld c, $40                                     ; $4e1b: $0e $40
    inc c                                         ; $4e1d: $0c
    ld c, h                                       ; $4e1e: $4c
    inc l                                         ; $4e1f: $2c
    ld c, h                                       ; $4e20: $4c
    inc c                                         ; $4e21: $0c
    inc c                                         ; $4e22: $0c
    ld c, h                                       ; $4e23: $4c
    ld c, h                                       ; $4e24: $4c
    ld c, h                                       ; $4e25: $4c
    inc c                                         ; $4e26: $0c
    inc de                                        ; $4e27: $13
    pop hl                                        ; $4e28: $e1
    rst $10                                       ; $4e29: $d7
    ret nc                                        ; $4e2a: $d0

    nop                                           ; $4e2b: $00
    db $e3                                        ; $4e2c: $e3
    ldh [rP1], a                                  ; $4e2d: $e0 $00
    db $e4                                        ; $4e2f: $e4
    pop hl                                        ; $4e30: $e1
    ld [c], a                                     ; $4e31: $e2
    db $e4                                        ; $4e32: $e4
    push hl                                       ; $4e33: $e5
    push hl                                       ; $4e34: $e5
    ldh [$d6], a                                  ; $4e35: $e0 $d6
    ld b, $0c                                     ; $4e37: $06 $0c
    ld c, h                                       ; $4e39: $4c
    ld c, b                                       ; $4e3a: $48
    inc c                                         ; $4e3b: $0c
    ld c, h                                       ; $4e3c: $4c
    inc c                                         ; $4e3d: $0c
    inc c                                         ; $4e3e: $0c
    ld c, h                                       ; $4e3f: $4c
    ld c, h                                       ; $4e40: $4c
    ld c, h                                       ; $4e41: $4c
    ld c, h                                       ; $4e42: $4c
    inc c                                         ; $4e43: $0c
    inc c                                         ; $4e44: $0c
    ld c, h                                       ; $4e45: $4c
    inc c                                         ; $4e46: $0c
    pop de                                        ; $4e47: $d1
    inc de                                        ; $4e48: $13
    ei                                            ; $4e49: $fb
    ld sp, hl                                     ; $4e4a: $f9
    ld a, [c]                                     ; $4e4b: $f2
    inc d                                         ; $4e4c: $14
    ld l, l                                       ; $4e4d: $6d
    ld b, h                                       ; $4e4e: $44
    rst $10                                       ; $4e4f: $d7
    inc h                                         ; $4e50: $24
    ld a, d                                       ; $4e51: $7a
    inc de                                        ; $4e52: $13
    ld b, [hl]                                    ; $4e53: $46
    db $d3                                        ; $4e54: $d3
    sub $d7                                       ; $4e55: $d6 $d7
    ld c, b                                       ; $4e57: $48
    ld b, $27                                     ; $4e58: $06 $27
    ld l, b                                       ; $4e5a: $68
    ld c, h                                       ; $4e5b: $4c
    ld l, $06                                     ; $4e5c: $2e $06
    ld c, $0c                                     ; $4e5e: $0e $0c
    jr z, jr_08e_4ea8                             ; $4e60: $28 $46

    ld b, [hl]                                    ; $4e62: $46
    ld [$0c00], sp                                ; $4e63: $08 $00 $0c
    inc c                                         ; $4e66: $0c
    ld hl, sp-$0d                                 ; $4e67: $f8 $f3
    inc bc                                        ; $4e69: $03
    ld a, d                                       ; $4e6a: $7a
    ld c, a                                       ; $4e6b: $4f
    db $d3                                        ; $4e6c: $d3
    inc de                                        ; $4e6d: $13
    db $d3                                        ; $4e6e: $d3
    ld d, b                                       ; $4e6f: $50
    ld d, c                                       ; $4e70: $51
    ld a, d                                       ; $4e71: $7a
    ei                                            ; $4e72: $fb
    ldh a, [$f1]                                  ; $4e73: $f0 $f1
    db $d3                                        ; $4e75: $d3
    db $d3                                        ; $4e76: $d3
    ld l, b                                       ; $4e77: $68
    ld l, b                                       ; $4e78: $68
    jr z, jr_08e_4e7b                             ; $4e79: $28 $00

jr_08e_4e7b:
    ld [$4608], sp                                ; $4e7b: $08 $08 $46
    nop                                           ; $4e7e: $00
    ld [$4708], sp                                ; $4e7f: $08 $08 $47
    ld b, $08                                     ; $4e82: $06 $08
    ld [$0000], sp                                ; $4e84: $08 $00 $00
    dec h                                         ; $4e87: $25
    ldh [$d6], a                                  ; $4e88: $e0 $d6
    jr jr_08e_4f06                                ; $4e8a: $18 $7a

    inc b                                         ; $4e8c: $04
    db $d3                                        ; $4e8d: $d3
    daa                                           ; $4e8e: $27
    ld a, d                                       ; $4e8f: $7a
    ld b, h                                       ; $4e90: $44
    ei                                            ; $4e91: $fb
    jr z, jr_08e_4ebd                             ; $4e92: $28 $29

    ld a, [hl+]                                   ; $4e94: $2a
    ld sp, hl                                     ; $4e95: $f9
    db $d3                                        ; $4e96: $d3
    inc c                                         ; $4e97: $0c
    ld c, h                                       ; $4e98: $4c
    inc c                                         ; $4e99: $0c
    ld [$2047], sp                                ; $4e9a: $08 $47 $20
    nop                                           ; $4e9d: $00
    ld [$6e40], sp                                ; $4e9e: $08 $40 $6e
    ld h, $68                                     ; $4ea1: $26 $68
    ld [$0808], sp                                ; $4ea3: $08 $08 $08
    nop                                           ; $4ea6: $00
    dec e                                         ; $4ea7: $1d

jr_08e_4ea8:
    ld e, $d3                                     ; $4ea8: $1e $d3
    ei                                            ; $4eaa: $fb
    dec l                                         ; $4eab: $2d
    ld l, $fb                                     ; $4eac: $2e $fb
    ld b, [hl]                                    ; $4eae: $46
    cpl                                           ; $4eaf: $2f
    jr nc, @+$48                                  ; $4eb0: $30 $46

    ld b, h                                       ; $4eb2: $44
    db $d3                                        ; $4eb3: $d3
    inc hl                                        ; $4eb4: $23
    ld l, l                                       ; $4eb5: $6d
    inc b                                         ; $4eb6: $04
    ld [$0008], sp                                ; $4eb7: $08 $08 $00
    ld h, a                                       ; $4eba: $67
    add hl, bc                                    ; $4ebb: $09
    add hl, bc                                    ; $4ebc: $09

jr_08e_4ebd:
    ld b, $6e                                     ; $4ebd: $06 $6e
    ld [$6e08], sp                                ; $4ebf: $08 $08 $6e
    ld l, $00                                     ; $4ec2: $2e $00
    ld c, $66                                     ; $4ec4: $0e $66
    jr nz, jr_08e_4f1a                            ; $4ec6: $20 $52

    ld d, e                                       ; $4ec8: $53
    db $d3                                        ; $4ec9: $d3
    ld b, l                                       ; $4eca: $45
    ei                                            ; $4ecb: $fb
    add hl, sp                                    ; $4ecc: $39
    ld a, [hl-]                                   ; $4ecd: $3a
    adc $44                                       ; $4ece: $ce $44
    dec sp                                        ; $4ed0: $3b
    inc sp                                        ; $4ed1: $33
    inc [hl]                                      ; $4ed2: $34
    ld a, d                                       ; $4ed3: $7a
    rst $38                                       ; $4ed4: $ff
    cp $dc                                        ; $4ed5: $fe $dc
    ld [$0008], sp                                ; $4ed7: $08 $08 $00
    ld l, b                                       ; $4eda: $68
    ld h, b                                       ; $4edb: $60
    ld [$0808], sp                                ; $4edc: $08 $08 $08
    ld c, $08                                     ; $4edf: $0e $08
    ld c, b                                       ; $4ee1: $48
    ld c, b                                       ; $4ee2: $48
    ld b, a                                       ; $4ee3: $47
    ld l, b                                       ; $4ee4: $68
    ld l, b                                       ; $4ee5: $68
    ld l, b                                       ; $4ee6: $68
    db $db                                        ; $4ee7: $db
    db $d3                                        ; $4ee8: $d3
    ld c, [hl]                                    ; $4ee9: $4e
    ei                                            ; $4eea: $fb
    rst $08                                       ; $4eeb: $cf
    db $d3                                        ; $4eec: $d3
    ld b, [hl]                                    ; $4eed: $46
    ld a, d                                       ; $4eee: $7a
    ld b, d                                       ; $4eef: $42
    ld a, d                                       ; $4ef0: $7a
    db $d3                                        ; $4ef1: $d3
    db $d3                                        ; $4ef2: $d3
    ld b, e                                       ; $4ef3: $43
    ld b, h                                       ; $4ef4: $44
    db $d3                                        ; $4ef5: $d3
    ld a, d                                       ; $4ef6: $7a
    ld [$0e04], sp                                ; $4ef7: $08 $04 $0e
    ld b, $08                                     ; $4efa: $06 $08
    nop                                           ; $4efc: $00
    ld l, [hl]                                    ; $4efd: $6e
    nop                                           ; $4efe: $00
    ld [$0047], sp                                ; $4eff: $08 $47 $00
    nop                                           ; $4f02: $00
    add hl, bc                                    ; $4f03: $09
    ld c, $00                                     ; $4f04: $0e $00

jr_08e_4f06:
    nop                                           ; $4f06: $00
    dec hl                                        ; $4f07: $2b
    inc l                                         ; $4f08: $2c
    ei                                            ; $4f09: $fb
    db $d3                                        ; $4f0a: $d3
    ld sp, $6d32                                  ; $4f0b: $31 $32 $6d
    ld b, h                                       ; $4f0e: $44
    ld l, l                                       ; $4f0f: $6d
    jr @+$1f                                      ; $4f10: $18 $1d

    ld e, $d7                                     ; $4f12: $1e $d7
    daa                                           ; $4f14: $27
    dec l                                         ; $4f15: $2d
    ld l, $08                                     ; $4f16: $2e $08
    add hl, bc                                    ; $4f18: $09
    ld b, a                                       ; $4f19: $47

jr_08e_4f1a:
    nop                                           ; $4f1a: $00
    ld [$6608], sp                                ; $4f1b: $08 $08 $66
    ld c, $66                                     ; $4f1e: $0e $66
    ld [$0808], sp                                ; $4f20: $08 $08 $08
    ld c, h                                       ; $4f23: $4c
    ld [$0909], sp                                ; $4f24: $08 $09 $09
    add hl, de                                    ; $4f27: $19
    ld a, [de]                                    ; $4f28: $1a
    ldh [$d6], a                                  ; $4f29: $e0 $d6
    dec de                                        ; $4f2b: $1b
    inc e                                         ; $4f2c: $1c
    pop hl                                        ; $4f2d: $e1
    sub $df                                       ; $4f2e: $d6 $df
    inc hl                                        ; $4f30: $23
    db $d3                                        ; $4f31: $d3
    inc b                                         ; $4f32: $04
    ei                                            ; $4f33: $fb
    db $d3                                        ; $4f34: $d3
    db $d3                                        ; $4f35: $d3
    ei                                            ; $4f36: $fb
    ld [$0c08], sp                                ; $4f37: $08 $08 $0c
    ld c, h                                       ; $4f3a: $4c
    ld [$4c08], sp                                ; $4f3b: $08 $08 $4c
    inc c                                         ; $4f3e: $0c
    rrca                                          ; $4f3f: $0f
    ld [$0000], sp                                ; $4f40: $08 $00 $00
    ld b, $00                                     ; $4f43: $06 $00
    inc b                                         ; $4f45: $04
    ld h, $6d                                     ; $4f46: $26 $6d
    db $fd                                        ; $4f48: $fd
    db $fc                                        ; $4f49: $fc
    db $db                                        ; $4f4a: $db
    ld e, $1d                                     ; $4f4b: $1e $1d
    jr jr_08e_4f93                                ; $4f4d: $18 $44

    ld [$46eb], a                                 ; $4f4f: $ea $eb $46
    inc de                                        ; $4f52: $13
    add sp, -$17                                  ; $4f53: $e8 $e9
    rst $18                                       ; $4f55: $df
    dec [hl]                                      ; $4f56: $35
    ld h, [hl]                                    ; $4f57: $66
    ld l, c                                       ; $4f58: $69
    ld l, b                                       ; $4f59: $68
    ld l, b                                       ; $4f5a: $68
    jr z, @+$2a                                   ; $4f5b: $28 $28

    jr z, jr_08e_4fad                             ; $4f5d: $28 $4e

jr_08e_4f5f:
    ld c, b                                       ; $4f5f: $48
    ld c, c                                       ; $4f60: $49
    ld l, $46                                     ; $4f61: $2e $46
    ld c, b                                       ; $4f63: $48
    ld c, b                                       ; $4f64: $48
    ld c, $08                                     ; $4f65: $0e $08
    ld b, l                                       ; $4f67: $45
    ldh [$d6], a                                  ; $4f68: $e0 $d6
    ei                                            ; $4f6a: $fb
    ld b, h                                       ; $4f6b: $44
    pop hl                                        ; $4f6c: $e1
    sub $d3                                       ; $4f6d: $d6 $d3
    ld a, d                                       ; $4f6f: $7a
    db $d3                                        ; $4f70: $d3
    ld b, [hl]                                    ; $4f71: $46
    ld a, d                                       ; $4f72: $7a
    dec e                                         ; $4f73: $1d
    ld e, $d3                                     ; $4f74: $1e $d3
    ld a, d                                       ; $4f76: $7a
    ld [$4c0c], sp                                ; $4f77: $08 $0c $4c
    ld b, $0e                                     ; $4f7a: $06 $0e
    ld c, h                                       ; $4f7c: $4c
    inc c                                         ; $4f7d: $0c
    nop                                           ; $4f7e: $00
    ld b, b                                       ; $4f7f: $40
    nop                                           ; $4f80: $00
    ld c, [hl]                                    ; $4f81: $4e
    nop                                           ; $4f82: $00
    ld [$0008], sp                                ; $4f83: $08 $08 $00
    nop                                           ; $4f86: $00
    nop                                           ; $4f87: $00
    jr z, jr_08e_4fb9                             ; $4f88: $28 $2f

    jr nc, jr_08e_4f5f                            ; $4f8a: $30 $d3

    ld l, l                                       ; $4f8c: $6d
    ei                                            ; $4f8d: $fb
    ld b, h                                       ; $4f8e: $44
    rst $20                                       ; $4f8f: $e7
    ldh [$d6], a                                  ; $4f90: $e0 $d6
    ei                                            ; $4f92: $fb

jr_08e_4f93:
    ei                                            ; $4f93: $fb
    pop hl                                        ; $4f94: $e1
    sub $d3                                       ; $4f95: $d6 $d3
    inc c                                         ; $4f97: $0c
    ld l, b                                       ; $4f98: $68
    ld [$0008], sp                                ; $4f99: $08 $08 $00
    ld h, [hl]                                    ; $4f9c: $66
    ld b, b                                       ; $4f9d: $40
    ld c, [hl]                                    ; $4f9e: $4e
    rrca                                          ; $4f9f: $0f
    inc c                                         ; $4fa0: $0c
    ld c, h                                       ; $4fa1: $4c
    ld b, [hl]                                    ; $4fa2: $46
    ld b, [hl]                                    ; $4fa3: $46
    ld c, h                                       ; $4fa4: $4c
    inc c                                         ; $4fa5: $0c
    inc b                                         ; $4fa6: $04
    db $d3                                        ; $4fa7: $d3
    rst $10                                       ; $4fa8: $d7
    ldh [$d6], a                                  ; $4fa9: $e0 $d6
    rst $10                                       ; $4fab: $d7
    nop                                           ; $4fac: $00

jr_08e_4fad:
    ld [c], a                                     ; $4fad: $e2
    db $e4                                        ; $4fae: $e4
    ld sp, hl                                     ; $4faf: $f9
    db $e3                                        ; $4fb0: $e3
    ld [c], a                                     ; $4fb1: $e2
    nop                                           ; $4fb2: $00
    ldh [$e2], a                                  ; $4fb3: $e0 $e2
    db $e4                                        ; $4fb5: $e4
    db $e4                                        ; $4fb6: $e4
    nop                                           ; $4fb7: $00
    ld l, h                                       ; $4fb8: $6c

jr_08e_4fb9:
    inc c                                         ; $4fb9: $0c
    ld c, h                                       ; $4fba: $4c
    ld l, h                                       ; $4fbb: $6c
    ld l, h                                       ; $4fbc: $6c
    inc c                                         ; $4fbd: $0c
    inc c                                         ; $4fbe: $0c
    ld l, b                                       ; $4fbf: $68
    inc c                                         ; $4fc0: $0c

jr_08e_4fc1:
    inc c                                         ; $4fc1: $0c
    ld c, h                                       ; $4fc2: $4c
    inc c                                         ; $4fc3: $0c
    inc c                                         ; $4fc4: $0c
    inc c                                         ; $4fc5: $0c
    inc l                                         ; $4fc6: $2c
    db $d3                                        ; $4fc7: $d3
    ld a, d                                       ; $4fc8: $7a
    ei                                            ; $4fc9: $fb
    scf                                           ; $4fca: $37
    rst $10                                       ; $4fcb: $d7
    ld b, h                                       ; $4fcc: $44
    db $d3                                        ; $4fcd: $d3
    dec [hl]                                      ; $4fce: $35
    ld a, [c]                                     ; $4fcf: $f2
    inc sp                                        ; $4fd0: $33
    inc [hl]                                      ; $4fd1: $34
    ldh [$d6], a                                  ; $4fd2: $e0 $d6
    ld b, h                                       ; $4fd4: $44
    ld a, d                                       ; $4fd5: $7a
    ld l, l                                       ; $4fd6: $6d
    nop                                           ; $4fd7: $00
    ld b, [hl]                                    ; $4fd8: $46
    ld h, b                                       ; $4fd9: $60
    ld c, b                                       ; $4fda: $48
    ld c, h                                       ; $4fdb: $4c
    ld c, $00                                     ; $4fdc: $0e $00
    ld c, b                                       ; $4fde: $48
    inc c                                         ; $4fdf: $0c
    ld [$0c08], sp                                ; $4fe0: $08 $08 $0c
    ld c, h                                       ; $4fe3: $4c
    ld c, $46                                     ; $4fe4: $0e $46
    jr nz, jr_08e_5015                            ; $4fe6: $20 $2d

    ld l, $fb                                     ; $4fe8: $2e $fb
    db $d3                                        ; $4fea: $d3
    cpl                                           ; $4feb: $2f
    jr nc, jr_08e_4fc1                            ; $4fec: $30 $d3

    ei                                            ; $4fee: $fb
    sub $d7                                       ; $4fef: $d6 $d7
    db $d3                                        ; $4ff1: $d3
    ld a, d                                       ; $4ff2: $7a
    inc a                                         ; $4ff3: $3c
    dec a                                         ; $4ff4: $3d
    ld a, $d3                                     ; $4ff5: $3e $d3
    add hl, bc                                    ; $4ff7: $09
    ld [$0606], sp                                ; $4ff8: $08 $06 $06
    ld [$0008], sp                                ; $4ffb: $08 $08 $00
    ld b, $0c                                     ; $4ffe: $06 $0c
    inc c                                         ; $5000: $0c
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    ld [$0808], sp                                ; $5003: $08 $08 $08
    nop                                           ; $5006: $00

jr_08e_5007:
    ei                                            ; $5007: $fb
    ei                                            ; $5008: $fb
    db $d3                                        ; $5009: $d3
    rst $10                                       ; $500a: $d7
    ld a, d                                       ; $500b: $7a
    rra                                           ; $500c: $1f
    ei                                            ; $500d: $fb
    inc de                                        ; $500e: $13
    db $d3                                        ; $500f: $d3
    ld b, h                                       ; $5010: $44
    rst $18                                       ; $5011: $df
    dec d                                         ; $5012: $15
    db $d3                                        ; $5013: $d3
    ld l, l                                       ; $5014: $6d

jr_08e_5015:
    rst $20                                       ; $5015: $e7
    inc [hl]                                      ; $5016: $34
    ld b, $40                                     ; $5017: $06 $40
    nop                                           ; $5019: $00
    inc c                                         ; $501a: $0c
    nop                                           ; $501b: $00
    ld c, $26                                     ; $501c: $0e $26
    ld [$0e00], sp                                ; $501e: $08 $00 $0e
    rrca                                          ; $5021: $0f
    ld [$6600], sp                                ; $5022: $08 $00 $66
    ld c, $06                                     ; $5025: $0e $06
    pop hl                                        ; $5027: $e1
    sub $d6                                       ; $5028: $d6 $d6
    db $e4                                        ; $502a: $e4
    ld d, $d6                                     ; $502b: $16 $d6
    nop                                           ; $502d: $00
    nop                                           ; $502e: $00
    rla                                           ; $502f: $17
    db $d3                                        ; $5030: $d3
    ei                                            ; $5031: $fb
    jr jr_08e_5007                                ; $5032: $18 $d3

    sub $e5                                       ; $5034: $d6 $e5
    daa                                           ; $5036: $27
    inc c                                         ; $5037: $0c
    ld c, h                                       ; $5038: $4c
    ld c, h                                       ; $5039: $4c
    inc c                                         ; $503a: $0c
    ld [$0c0c], sp                                ; $503b: $08 $0c $0c
    ld c, h                                       ; $503e: $4c
    ld [$2600], sp                                ; $503f: $08 $00 $26
    ld c, $00                                     ; $5042: $0e $00
    inc l                                         ; $5044: $2c
    ld c, h                                       ; $5045: $4c
    ld [$d3d7], sp                                ; $5046: $08 $d7 $d3
    add hl, de                                    ; $5049: $19
    ld a, [de]                                    ; $504a: $1a
    ld b, h                                       ; $504b: $44
    ei                                            ; $504c: $fb
    dec de                                        ; $504d: $1b
    inc e                                         ; $504e: $1c
    dec e                                         ; $504f: $1d
    ld e, $04                                     ; $5050: $1e $04
    rra                                           ; $5052: $1f
    dec l                                         ; $5053: $2d
    ld l, $fb                                     ; $5054: $2e $fb
    sub $4c                                       ; $5056: $d6 $4c
    nop                                           ; $5058: $00
    ld c, $08                                     ; $5059: $0e $08
    ld c, $46                                     ; $505b: $0e $46
    ld [$0809], sp                                ; $505d: $08 $09 $08
    ld [$0e00], sp                                ; $5060: $08 $00 $0e
    add hl, bc                                    ; $5063: $09
    add hl, bc                                    ; $5064: $09
    ld b, $0c                                     ; $5065: $06 $0c
    ld b, h                                       ; $5067: $44
    db $d3                                        ; $5068: $d3
    rst $28                                       ; $5069: $ef
    ld [hl+], a                                   ; $506a: $22
    db $d3                                        ; $506b: $d3
    ei                                            ; $506c: $fb
    inc hl                                        ; $506d: $23
    db $d3                                        ; $506e: $d3
    rst $18                                       ; $506f: $df
    db $d3                                        ; $5070: $d3
    inc b                                         ; $5071: $04
    ei                                            ; $5072: $fb
    rst $10                                       ; $5073: $d7
    ld a, d                                       ; $5074: $7a
    inc b                                         ; $5075: $04
    ld l, l                                       ; $5076: $6d
    ld c, $06                                     ; $5077: $0e $06
    jr z, jr_08e_5083                             ; $5079: $28 $08

    nop                                           ; $507b: $00
    ld b, $6f                                     ; $507c: $06 $6f
    nop                                           ; $507e: $00
    ld c, $00                                     ; $507f: $0e $00
    nop                                           ; $5081: $00
    ld b, b                                       ; $5082: $40

jr_08e_5083:
    inc c                                         ; $5083: $0c
    ld b, $00                                     ; $5084: $06 $00
    ld h, [hl]                                    ; $5086: $66
    inc b                                         ; $5087: $04
    inc hl                                        ; $5088: $23
    db $d3                                        ; $5089: $d3
    inc b                                         ; $508a: $04
    db $d3                                        ; $508b: $d3
    sub $00                                       ; $508c: $d6 $00
    db $d3                                        ; $508e: $d3
    dec h                                         ; $508f: $25
    sub $d7                                       ; $5090: $d6 $d7
    ld h, $d3                                     ; $5092: $26 $d3
    inc de                                        ; $5094: $13
    inc b                                         ; $5095: $04
    ei                                            ; $5096: $fb
    nop                                           ; $5097: $00
    jr z, jr_08e_509e                             ; $5098: $28 $04

    nop                                           ; $509a: $00
    nop                                           ; $509b: $00
    ld l, h                                       ; $509c: $6c
    inc c                                         ; $509d: $0c

jr_08e_509e:
    nop                                           ; $509e: $00
    inc c                                         ; $509f: $0c
    inc l                                         ; $50a0: $2c
    inc c                                         ; $50a1: $0c
    ld [$0600], sp                                ; $50a2: $08 $00 $06
    nop                                           ; $50a5: $00
    ld h, $23                                     ; $50a6: $26 $23
    ei                                            ; $50a8: $fb
    rst $10                                       ; $50a9: $d7
    jr z, jr_08e_50d5                             ; $50aa: $28 $29

    ld a, [hl+]                                   ; $50ac: $2a
    ld sp, hl                                     ; $50ad: $f9
    inc de                                        ; $50ae: $13
    dec hl                                        ; $50af: $2b
    inc l                                         ; $50b0: $2c
    ei                                            ; $50b1: $fb
    db $e3                                        ; $50b2: $e3
    ld sp, $6d32                                  ; $50b3: $31 $32 $6d
    pop hl                                        ; $50b6: $e1
    ld c, [hl]                                    ; $50b7: $4e
    daa                                           ; $50b8: $27
    inc c                                         ; $50b9: $0c
    ld l, b                                       ; $50ba: $68
    ld [$0808], sp                                ; $50bb: $08 $08 $08
    ld b, $08                                     ; $50be: $06 $08
    add hl, bc                                    ; $50c0: $09
    ld b, [hl]                                    ; $50c1: $46
    ld c, h                                       ; $50c2: $4c
    ld [$6008], sp                                ; $50c3: $08 $08 $60
    ld c, h                                       ; $50c6: $4c
    cpl                                           ; $50c7: $2f
    jr nc, @-$03                                  ; $50c8: $30 $fb

    inc b                                         ; $50ca: $04
    add hl, hl                                    ; $50cb: $29
    push hl                                       ; $50cc: $e5
    rst $20                                       ; $50cd: $e7
    inc de                                        ; $50ce: $13
    dec h                                         ; $50cf: $25
    nop                                           ; $50d0: $00
    ld a, [c]                                     ; $50d1: $f2
    rra                                           ; $50d2: $1f
    ld [c], a                                     ; $50d3: $e2
    db $e4                                        ; $50d4: $e4

jr_08e_50d5:
    rst $10                                       ; $50d5: $d7
    inc de                                        ; $50d6: $13
    ld [$4008], sp                                ; $50d7: $08 $08 $40
    nop                                           ; $50da: $00
    ld b, h                                       ; $50db: $44
    ld l, h                                       ; $50dc: $6c
    ld c, $06                                     ; $50dd: $0e $06
    ld c, h                                       ; $50df: $4c
    inc c                                         ; $50e0: $0c
    ld c, h                                       ; $50e1: $4c
    ld c, $4c                                     ; $50e2: $0e $4c
    ld c, h                                       ; $50e4: $4c
    inc c                                         ; $50e5: $0c
    ld b, $ea                                     ; $50e6: $06 $ea
    db $eb                                        ; $50e8: $eb
    ld l, l                                       ; $50e9: $6d
    rst $10                                       ; $50ea: $d7
    add sp, -$17                                  ; $50eb: $e8 $e9
    ldh [rP1], a                                  ; $50ed: $e0 $00
    ld a, d                                       ; $50ef: $7a
    ld a, d                                       ; $50f0: $7a
    db $d3                                        ; $50f1: $d3
    dec h                                         ; $50f2: $25
    rst $18                                       ; $50f3: $df
    rra                                           ; $50f4: $1f
    ld h, $6d                                     ; $50f5: $26 $6d
    ld c, b                                       ; $50f7: $48
    ld c, c                                       ; $50f8: $49
    ld b, $0c                                     ; $50f9: $06 $0c
    ld c, b                                       ; $50fb: $48
    ld c, b                                       ; $50fc: $48
    inc c                                         ; $50fd: $0c
    inc c                                         ; $50fe: $0c
    ld b, b                                       ; $50ff: $40
    ld b, [hl]                                    ; $5100: $46
    nop                                           ; $5101: $00
    inc c                                         ; $5102: $0c
    rrca                                          ; $5103: $0f
    ld c, $08                                     ; $5104: $0e $08
    ld h, [hl]                                    ; $5106: $66
    ei                                            ; $5107: $fb
    ld b, h                                       ; $5108: $44
    db $ed                                        ; $5109: $ed
    db $ec                                        ; $510a: $ec
    ld a, d                                       ; $510b: $7a
    db $d3                                        ; $510c: $d3
    rst $28                                       ; $510d: $ef
    xor $fb                                       ; $510e: $ee $fb
    inc de                                        ; $5110: $13
    pop af                                        ; $5111: $f1
    ldh a, [$d3]                                  ; $5112: $f0 $d3
    db $fd                                        ; $5114: $fd
    db $fc                                        ; $5115: $fc
    db $db                                        ; $5116: $db
    ld b, $4f                                     ; $5117: $06 $4f
    jr z, jr_08e_5143                             ; $5119: $28 $28

    nop                                           ; $511b: $00
    nop                                           ; $511c: $00
    jr z, jr_08e_5148                             ; $511d: $28 $29

    ld b, $06                                     ; $511f: $06 $06
    jr z, jr_08e_514b                             ; $5121: $28 $28

    nop                                           ; $5123: $00
    jr z, jr_08e_514e                             ; $5124: $28 $28

    jr z, jr_08e_514b                             ; $5126: $28 $23

    ei                                            ; $5128: $fb
    inc d                                         ; $5129: $14
    inc b                                         ; $512a: $04
    rst $10                                       ; $512b: $d7
    db $d3                                        ; $512c: $d3
    inc h                                         ; $512d: $24
    ei                                            ; $512e: $fb
    ld l, l                                       ; $512f: $6d
    inc de                                        ; $5130: $13
    inc b                                         ; $5131: $04
    rst $10                                       ; $5132: $d7
    ld b, l                                       ; $5133: $45
    ei                                            ; $5134: $fb
    inc de                                        ; $5135: $13
    ld b, h                                       ; $5136: $44
    ld c, [hl]                                    ; $5137: $4e
    ld h, $08                                     ; $5138: $26 $08
    nop                                           ; $513a: $00
    inc c                                         ; $513b: $0c
    nop                                           ; $513c: $00
    ld [$2006], sp                                ; $513d: $08 $06 $20
    ld h, [hl]                                    ; $5140: $66
    nop                                           ; $5141: $00
    inc c                                         ; $5142: $0c

jr_08e_5143:
    ld c, b                                       ; $5143: $48
    ld h, $06                                     ; $5144: $26 $06
    ld c, $e0                                     ; $5146: $0e $e0

jr_08e_5148:
    sub $46                                       ; $5148: $d6 $46
    ld b, a                                       ; $514a: $47

jr_08e_514b:
    inc de                                        ; $514b: $13
    rst $10                                       ; $514c: $d7
    ld c, b                                       ; $514d: $48

jr_08e_514e:
    ld c, c                                       ; $514e: $49
    sub $4a                                       ; $514f: $d6 $4a
    ld c, e                                       ; $5151: $4b
    db $d3                                        ; $5152: $d3
    rst $10                                       ; $5153: $d7
    inc hl                                        ; $5154: $23
    ld c, l                                       ; $5155: $4d
    inc de                                        ; $5156: $13
    ld c, h                                       ; $5157: $4c
    inc c                                         ; $5158: $0c
    ld [$0608], sp                                ; $5159: $08 $08 $06
    inc c                                         ; $515c: $0c
    ld [$6c08], sp                                ; $515d: $08 $08 $6c
    ld [$0008], sp                                ; $5160: $08 $08 $00
    inc c                                         ; $5163: $0c
    jr z, jr_08e_516e                             ; $5164: $28 $08

    ld b, [hl]                                    ; $5166: $46
    ld l, l                                       ; $5167: $6d
    jr z, @+$31                                   ; $5168: $28 $2f

    jr nc, jr_08e_5192                            ; $516a: $30 $26

    daa                                           ; $516c: $27
    dec l                                         ; $516d: $2d

jr_08e_516e:
    ld l, $1f                                     ; $516e: $2e $1f
    jr jr_08e_518f                                ; $5170: $18 $1d

    ld e, $01                                     ; $5172: $1e $01
    ld d, h                                       ; $5174: $54
    db $d3                                        ; $5175: $d3
    inc de                                        ; $5176: $13
    ld h, [hl]                                    ; $5177: $66
    jr z, jr_08e_51c2                             ; $5178: $28 $48

    ld c, b                                       ; $517a: $48
    ld [$4948], sp                                ; $517b: $08 $48 $49
    ld c, c                                       ; $517e: $49
    ld c, $48                                     ; $517f: $0e $48
    ld c, b                                       ; $5181: $48
    ld c, b                                       ; $5182: $48
    ld [$0009], sp                                ; $5183: $08 $09 $00
    ld b, $04                                     ; $5186: $06 $04
    rst $38                                       ; $5188: $ff
    cp $dc                                        ; $5189: $fe $dc
    db $d3                                        ; $518b: $d3
    dec sp                                        ; $518c: $3b
    inc sp                                        ; $518d: $33
    inc [hl]                                      ; $518e: $34

jr_08e_518f:
    ld a, d                                       ; $518f: $7a
    db $d3                                        ; $5190: $d3
    inc hl                                        ; $5191: $23

jr_08e_5192:
    ld d, l                                       ; $5192: $55
    db $d3                                        ; $5193: $d3
    inc de                                        ; $5194: $13
    inc de                                        ; $5195: $13
    ld d, [hl]                                    ; $5196: $56
    nop                                           ; $5197: $00
    jr z, jr_08e_51c2                             ; $5198: $28 $28

    jr z, jr_08e_519c                             ; $519a: $28 $00

jr_08e_519c:
    ld c, b                                       ; $519c: $48
    ld [$0008], sp                                ; $519d: $08 $08 $00
    nop                                           ; $51a0: $00
    jr z, jr_08e_51ac                             ; $51a1: $28 $09

    nop                                           ; $51a3: $00
    ld b, $06                                     ; $51a4: $06 $06
    ld [$4443], sp                                ; $51a6: $08 $43 $44
    db $d3                                        ; $51a9: $d3
    dec h                                         ; $51aa: $25
    ld b, d                                       ; $51ab: $42

jr_08e_51ac:
    ld d, a                                       ; $51ac: $57
    add hl, hl                                    ; $51ad: $29
    ld [c], a                                     ; $51ae: $e2
    db $db                                        ; $51af: $db
    jr z, jr_08e_5192                             ; $51b0: $28 $e0

    ld [c], a                                     ; $51b2: $e2
    db $d3                                        ; $51b3: $d3
    pop hl                                        ; $51b4: $e1
    ld [c], a                                     ; $51b5: $e2
    db $e4                                        ; $51b6: $e4
    ld c, c                                       ; $51b7: $49
    ld c, [hl]                                    ; $51b8: $4e
    nop                                           ; $51b9: $00
    ld c, h                                       ; $51ba: $4c
    ld c, b                                       ; $51bb: $48
    ld [$4c04], sp                                ; $51bc: $08 $04 $4c
    ld c, b                                       ; $51bf: $48
    ld c, b                                       ; $51c0: $48
    inc c                                         ; $51c1: $0c

jr_08e_51c2:
    inc c                                         ; $51c2: $0c
    nop                                           ; $51c3: $00
    inc c                                         ; $51c4: $0c
    inc c                                         ; $51c5: $0c
    inc c                                         ; $51c6: $0c
    nop                                           ; $51c7: $00
    db $d3                                        ; $51c8: $d3
    ld a, d                                       ; $51c9: $7a
    ei                                            ; $51ca: $fb
    db $e4                                        ; $51cb: $e4
    sub $26                                       ; $51cc: $d6 $26
    inc de                                        ; $51ce: $13
    db $e4                                        ; $51cf: $e4
    rst $10                                       ; $51d0: $d7
    dec h                                         ; $51d1: $25
    nop                                           ; $51d2: $00
    sub $e5                                       ; $51d3: $d6 $e5
    inc de                                        ; $51d5: $13
    ld b, h                                       ; $51d6: $44
    inc c                                         ; $51d7: $0c
    nop                                           ; $51d8: $00
    ld b, [hl]                                    ; $51d9: $46
    ld b, [hl]                                    ; $51da: $46
    ld c, h                                       ; $51db: $4c
    ld l, h                                       ; $51dc: $6c
    ld [$4c46], sp                                ; $51dd: $08 $46 $4c
    inc c                                         ; $51e0: $0c
    ld c, h                                       ; $51e1: $4c
    inc c                                         ; $51e2: $0c
    ld l, h                                       ; $51e3: $6c
    inc l                                         ; $51e4: $2c
    ld b, [hl]                                    ; $51e5: $46
    ld c, $02                                     ; $51e6: $0e $02
    ld e, b                                       ; $51e8: $58
    ld l, l                                       ; $51e9: $6d
    db $d3                                        ; $51ea: $d3
    inc de                                        ; $51eb: $13
    ei                                            ; $51ec: $fb
    push hl                                       ; $51ed: $e5
    sub $7a                                       ; $51ee: $d6 $7a
    ld a, d                                       ; $51f0: $7a
    push hl                                       ; $51f1: $e5
    ld l, l                                       ; $51f2: $6d
    dec a                                         ; $51f3: $3d
    ld a, $03                                     ; $51f4: $3e $03
    ld e, c                                       ; $51f6: $59
    ld [$0608], sp                                ; $51f7: $08 $08 $06
    ld b, $47                                     ; $51fa: $06 $47
    ld b, [hl]                                    ; $51fc: $46
    ld l, h                                       ; $51fd: $6c
    inc c                                         ; $51fe: $0c
    ld b, a                                       ; $51ff: $47

Call_08e_5200:
    ld b, b                                       ; $5200: $40
    inc l                                         ; $5201: $2c
    ld h, [hl]                                    ; $5202: $66
    ld [$6809], sp                                ; $5203: $08 $09 $68
    ld [$3635], sp                                ; $5206: $08 $35 $36

jr_08e_5209:
    ld l, l                                       ; $5209: $6d
    pop hl                                        ; $520a: $e1
    scf                                           ; $520b: $37
    jr c, jr_08e_5209                             ; $520c: $38 $fb

    db $e3                                        ; $520e: $e3
    jr z, jr_08e_5240                             ; $520f: $28 $2f

    jr nc, jr_08e_5226                            ; $5211: $30 $13

    daa                                           ; $5213: $27
    dec l                                         ; $5214: $2d
    ld l, $f9                                     ; $5215: $2e $f9
    ld [$2009], sp                                ; $5217: $08 $09 $20
    inc c                                         ; $521a: $0c
    ld [$4608], sp                                ; $521b: $08 $08 $46
    inc c                                         ; $521e: $0c
    jr z, jr_08e_5269                             ; $521f: $28 $48

    ld c, b                                       ; $5221: $48
    ld b, [hl]                                    ; $5222: $46
    ld c, b                                       ; $5223: $48
    ld c, c                                       ; $5224: $49
    ld c, c                                       ; $5225: $49

jr_08e_5226:
    ld c, b                                       ; $5226: $48
    ld [c], a                                     ; $5227: $e2
    db $e4                                        ; $5228: $e4
    ld [c], a                                     ; $5229: $e2
    db $e4                                        ; $522a: $e4
    dec h                                         ; $522b: $25
    nop                                           ; $522c: $00
    ld a, [c]                                     ; $522d: $f2
    push hl                                       ; $522e: $e5
    ei                                            ; $522f: $fb
    push hl                                       ; $5230: $e5
    ei                                            ; $5231: $fb
    db $d3                                        ; $5232: $d3
    ld b, h                                       ; $5233: $44
    jp nc, $04d3                                  ; $5234: $d2 $d3 $04

    inc c                                         ; $5237: $0c
    inc c                                         ; $5238: $0c
    ld c, h                                       ; $5239: $4c
    ld c, h                                       ; $523a: $4c
    inc c                                         ; $523b: $0c
    ld c, h                                       ; $523c: $4c
    inc c                                         ; $523d: $0c
    inc l                                         ; $523e: $2c
    ld b, b                                       ; $523f: $40

jr_08e_5240:
    inc l                                         ; $5240: $2c
    ld b, [hl]                                    ; $5241: $46
    nop                                           ; $5242: $00
    ld c, $48                                     ; $5243: $0e $48
    ld [$d700], sp                                ; $5245: $08 $00 $d7
    rst $20                                       ; $5248: $e7
    add hl, sp                                    ; $5249: $39
    ld a, [hl-]                                   ; $524a: $3a
    db $d3                                        ; $524b: $d3
    ei                                            ; $524c: $fb
    inc b                                         ; $524d: $04
    inc sp                                        ; $524e: $33
    sub $44                                       ; $524f: $d6 $44
    rst $38                                       ; $5251: $ff
    cp $04                                        ; $5252: $fe $04
    ei                                            ; $5254: $fb
    db $fd                                        ; $5255: $fd
    db $fc                                        ; $5256: $fc
    ld c, h                                       ; $5257: $4c
    ld c, $08                                     ; $5258: $0e $08
    ld [$2600], sp                                ; $525a: $08 $00 $26
    nop                                           ; $525d: $00
    ld c, b                                       ; $525e: $48
    inc l                                         ; $525f: $2c
    ld c, $68                                     ; $5260: $0e $68
    ld l, b                                       ; $5262: $68
    nop                                           ; $5263: $00
    ld h, b                                       ; $5264: $60
    ld l, c                                       ; $5265: $69
    ld l, b                                       ; $5266: $68
    ccf                                           ; $5267: $3f
    ld b, b                                       ; $5268: $40

jr_08e_5269:
    ld b, c                                       ; $5269: $41
    db $d3                                        ; $526a: $d3
    inc [hl]                                      ; $526b: $34
    ld b, d                                       ; $526c: $42
    ld a, d                                       ; $526d: $7a
    ei                                            ; $526e: $fb
    call c, $d343                                 ; $526f: $dc $43 $d3
    ld a, d                                       ; $5272: $7a
    db $db                                        ; $5273: $db
    ld b, l                                       ; $5274: $45
    ld l, l                                       ; $5275: $6d
    db $d3                                        ; $5276: $d3
    ld [$0808], sp                                ; $5277: $08 $08 $08
    nop                                           ; $527a: $00
    ld c, b                                       ; $527b: $48
    ld [$0646], sp                                ; $527c: $08 $46 $06
    ld l, b                                       ; $527f: $68
    add hl, bc                                    ; $5280: $09
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    ld l, b                                       ; $5283: $68
    ld [$0066], sp                                ; $5284: $08 $66 $00
    jr jr_08e_52a6                                ; $5287: $18 $1d

    ld e, $7a                                     ; $5289: $1e $7a
    rst $10                                       ; $528b: $d7
    inc b                                         ; $528c: $04
    ld [$dfeb], a                                 ; $528d: $ea $eb $df
    ei                                            ; $5290: $fb
    add sp, -$17                                  ; $5291: $e8 $e9
    db $d3                                        ; $5293: $d3
    ei                                            ; $5294: $fb
    ld a, d                                       ; $5295: $7a
    ei                                            ; $5296: $fb
    ld c, b                                       ; $5297: $48
    ld c, b                                       ; $5298: $48
    ld c, b                                       ; $5299: $48
    ld b, $0c                                     ; $529a: $06 $0c
    nop                                           ; $529c: $00
    ld c, b                                       ; $529d: $48
    ld c, c                                       ; $529e: $49
    ld c, $26                                     ; $529f: $0e $26
    ld c, b                                       ; $52a1: $48
    ld c, b                                       ; $52a2: $48
    nop                                           ; $52a3: $00
    ld b, a                                       ; $52a4: $47
    ld b, [hl]                                    ; $52a5: $46

jr_08e_52a6:
    ld h, b                                       ; $52a6: $60
    ei                                            ; $52a7: $fb
    call nc, $fbd5                                ; $52a8: $d4 $d5 $fb
    ld l, l                                       ; $52ab: $6d
    ei                                            ; $52ac: $fb
    rst $20                                       ; $52ad: $e7
    rst $10                                       ; $52ae: $d7
    inc de                                        ; $52af: $13
    ldh [$e2], a                                  ; $52b0: $e0 $e2
    adc $13                                       ; $52b2: $ce $13
    pop hl                                        ; $52b4: $e1
    rst $10                                       ; $52b5: $d7
    ret nc                                        ; $52b6: $d0

    ld b, b                                       ; $52b7: $40
    ld c, c                                       ; $52b8: $49
    ld [$2046], sp                                ; $52b9: $08 $46 $20
    ld b, [hl]                                    ; $52bc: $46
    ld c, $0c                                     ; $52bd: $0e $0c
    ld b, [hl]                                    ; $52bf: $46
    inc c                                         ; $52c0: $0c
    inc l                                         ; $52c1: $2c
    ld c, b                                       ; $52c2: $48
    ld b, $0c                                     ; $52c3: $06 $0c
    ld c, h                                       ; $52c5: $4c
    ld c, b                                       ; $52c6: $48
    db $d3                                        ; $52c7: $d3
    rst $20                                       ; $52c8: $e7
    ei                                            ; $52c9: $fb
    pop af                                        ; $52ca: $f1
    ld [de], a                                    ; $52cb: $12
    db $d3                                        ; $52cc: $d3
    rst $10                                       ; $52cd: $d7
    rst $28                                       ; $52ce: $ef
    rst $08                                       ; $52cf: $cf
    rst $10                                       ; $52d0: $d7
    ld b, h                                       ; $52d1: $44
    db $ed                                        ; $52d2: $ed
    pop de                                        ; $52d3: $d1
    inc de                                        ; $52d4: $13
    ei                                            ; $52d5: $fb
    ld sp, hl                                     ; $52d6: $f9
    nop                                           ; $52d7: $00
    ld c, $26                                     ; $52d8: $0e $26
    ld l, b                                       ; $52da: $68
    ld c, $00                                     ; $52db: $0e $00
    inc c                                         ; $52dd: $0c
    ld l, b                                       ; $52de: $68
    ld c, c                                       ; $52df: $49
    inc c                                         ; $52e0: $0c
    ld c, $68                                     ; $52e1: $0e $68
    ld c, b                                       ; $52e3: $48
    ld b, $26                                     ; $52e4: $06 $26
    ld l, b                                       ; $52e6: $68
    ldh a, [$fb]                                  ; $52e7: $f0 $fb
    ld a, d                                       ; $52e9: $7a
    ei                                            ; $52ea: $fb
    xor $04                                       ; $52eb: $ee $04
    db $d3                                        ; $52ed: $d3
    ld a, d                                       ; $52ee: $7a
    db $ec                                        ; $52ef: $ec
    ld a, d                                       ; $52f0: $7a
    ld a, d                                       ; $52f1: $7a
    db $d3                                        ; $52f2: $d3
    ld hl, sp-$0d                                 ; $52f3: $f8 $f3
    inc bc                                        ; $52f5: $03
    ld a, d                                       ; $52f6: $7a
    ld l, b                                       ; $52f7: $68
    ld b, b                                       ; $52f8: $40
    ld b, [hl]                                    ; $52f9: $46
    ld b, $68                                     ; $52fa: $06 $68
    nop                                           ; $52fc: $00
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    ld l, b                                       ; $52ff: $68
    ld b, [hl]                                    ; $5300: $46
    ld b, [hl]                                    ; $5301: $46
    nop                                           ; $5302: $00
    ld l, b                                       ; $5303: $68
    ld l, b                                       ; $5304: $68
    jr z, jr_08e_5307                             ; $5305: $28 $00

jr_08e_5307:
    ld c, [hl]                                    ; $5307: $4e
    ld h, $e5                                     ; $5308: $26 $e5
    dec h                                         ; $530a: $25
    db $d3                                        ; $530b: $d3
    dec h                                         ; $530c: $25
    nop                                           ; $530d: $00
    ldh [$e1], a                                  ; $530e: $e0 $e1
    ld [c], a                                     ; $5310: $e2
    db $e4                                        ; $5311: $e4
    rst $10                                       ; $5312: $d7
    dec h                                         ; $5313: $25
    ldh [$d6], a                                  ; $5314: $e0 $d6
    ld e, d                                       ; $5316: $5a
    ld c, $08                                     ; $5317: $0e $08
    inc c                                         ; $5319: $0c
    ld c, h                                       ; $531a: $4c
    nop                                           ; $531b: $00
    ld c, h                                       ; $531c: $4c
    inc c                                         ; $531d: $0c
    inc c                                         ; $531e: $0c
    ld c, h                                       ; $531f: $4c
    ld c, h                                       ; $5320: $4c
    ld c, h                                       ; $5321: $4c
    inc c                                         ; $5322: $0c
    inc c                                         ; $5323: $0c
    ld c, h                                       ; $5324: $4c
    inc c                                         ; $5325: $0c
    ld c, $00                                     ; $5326: $0e $00
    db $e3                                        ; $5328: $e3
    ldh [rP1], a                                  ; $5329: $e0 $00
    db $e4                                        ; $532b: $e4
    pop hl                                        ; $532c: $e1
    ld [c], a                                     ; $532d: $e2
    db $e4                                        ; $532e: $e4
    push hl                                       ; $532f: $e5
    push hl                                       ; $5330: $e5
    ldh [$d6], a                                  ; $5331: $e0 $d6
    ld l, l                                       ; $5333: $6d
    ld c, [hl]                                    ; $5334: $4e
    push hl                                       ; $5335: $e5
    ei                                            ; $5336: $fb
    inc c                                         ; $5337: $0c
    ld c, h                                       ; $5338: $4c
    inc c                                         ; $5339: $0c
    inc c                                         ; $533a: $0c
    ld c, h                                       ; $533b: $4c
    ld c, h                                       ; $533c: $4c
    ld c, h                                       ; $533d: $4c
    ld c, h                                       ; $533e: $4c
    inc c                                         ; $533f: $0c
    inc c                                         ; $5340: $0c
    ld c, h                                       ; $5341: $4c
    inc c                                         ; $5342: $0c
    ld h, a                                       ; $5343: $67
    ld c, $0c                                     ; $5344: $0e $0c
    ld h, [hl]                                    ; $5346: $66
    ld a, [c]                                     ; $5347: $f2
    inc d                                         ; $5348: $14
    ld a, d                                       ; $5349: $7a
    inc de                                        ; $534a: $13
    rst $10                                       ; $534b: $d7
    inc h                                         ; $534c: $24
    ld a, d                                       ; $534d: $7a
    inc de                                        ; $534e: $13
    ld b, [hl]                                    ; $534f: $46
    db $d3                                        ; $5350: $d3
    sub $d7                                       ; $5351: $d6 $d7
    ld d, d                                       ; $5353: $52
    ld d, e                                       ; $5354: $53
    inc b                                         ; $5355: $04
    ld b, l                                       ; $5356: $45
    ld c, h                                       ; $5357: $4c
    ld l, $40                                     ; $5358: $2e $40
    ld b, $0c                                     ; $535a: $06 $0c
    jr z, jr_08e_53a4                             ; $535c: $28 $46

    ld b, [hl]                                    ; $535e: $46
    ld [$0c00], sp                                ; $535f: $08 $00 $0c
    inc c                                         ; $5362: $0c
    ld [$0008], sp                                ; $5363: $08 $08 $00
    ld l, b                                       ; $5366: $68
    ld c, a                                       ; $5367: $4f
    db $d3                                        ; $5368: $d3
    inc de                                        ; $5369: $13
    db $d3                                        ; $536a: $d3
    ld d, b                                       ; $536b: $50
    ld d, c                                       ; $536c: $51
    ld a, d                                       ; $536d: $7a
    ei                                            ; $536e: $fb
    ldh a, [$f1]                                  ; $536f: $f0 $f1
    ld b, h                                       ; $5371: $44
    inc b                                         ; $5372: $04
    db $db                                        ; $5373: $db
    db $d3                                        ; $5374: $d3
    ld c, [hl]                                    ; $5375: $4e
    db $d3                                        ; $5376: $d3
    ld [$4608], sp                                ; $5377: $08 $08 $46
    nop                                           ; $537a: $00
    ld [$4608], sp                                ; $537b: $08 $08 $46
    ld b, $08                                     ; $537e: $06 $08
    ld [$000e], sp                                ; $5380: $08 $0e $00
    ld [$0e04], sp                                ; $5383: $08 $04 $0e
    nop                                           ; $5386: $00
    rst $10                                       ; $5387: $d7
    db $d3                                        ; $5388: $d3
    ei                                            ; $5389: $fb
    ld h, $d7                                     ; $538a: $26 $d7
    inc de                                        ; $538c: $13
    ld a, d                                       ; $538d: $7a
    rst $18                                       ; $538e: $df
    ld l, l                                       ; $538f: $6d
    push hl                                       ; $5390: $e5
    ldh [$d6], a                                  ; $5391: $e0 $d6
    ld [hl], $d7                                  ; $5393: $36 $d7
    nop                                           ; $5395: $00
    db $e4                                        ; $5396: $e4
    inc c                                         ; $5397: $0c
    nop                                           ; $5398: $00
    ld b, [hl]                                    ; $5399: $46
    ld [$460c], sp                                ; $539a: $08 $0c $46
    ld b, [hl]                                    ; $539d: $46
    ld c, $40                                     ; $539e: $0e $40
    inc c                                         ; $53a0: $0c
    inc c                                         ; $53a1: $0c
    ld c, h                                       ; $53a2: $4c
    add hl, bc                                    ; $53a3: $09

jr_08e_53a4:
    inc c                                         ; $53a4: $0c
    inc c                                         ; $53a5: $0c
    inc c                                         ; $53a6: $0c
    inc de                                        ; $53a7: $13
    ei                                            ; $53a8: $fb
    ld hl, $5b20                                  ; $53a9: $21 $20 $5b
    ld e, h                                       ; $53ac: $5c
    ld [hl+], a                                   ; $53ad: $22
    rst $28                                       ; $53ae: $ef
    jr z, jr_08e_540e                             ; $53af: $28 $5d

    ld l, l                                       ; $53b1: $6d
    db $d3                                        ; $53b2: $d3
    sub $5e                                       ; $53b3: $d6 $5e
    inc de                                        ; $53b5: $13
    inc de                                        ; $53b6: $13
    rlca                                          ; $53b7: $07
    ld h, a                                       ; $53b8: $67
    jr z, @+$2a                                   ; $53b9: $28 $28

    ld [$2808], sp                                ; $53bb: $08 $08 $28
    ld [$082e], sp                                ; $53be: $08 $2e $08
    jr nz, jr_08e_53c3                            ; $53c1: $20 $00

jr_08e_53c3:
    ld l, h                                       ; $53c3: $6c
    ld [$6646], sp                                ; $53c4: $08 $46 $66
    rst $10                                       ; $53c7: $d7
    inc b                                         ; $53c8: $04
    ld b, h                                       ; $53c9: $44
    ld b, e                                       ; $53ca: $43
    ld e, a                                       ; $53cb: $5f
    ld [hl], $57                                  ; $53cc: $36 $57
    ld b, d                                       ; $53ce: $42
    scf                                           ; $53cf: $37
    jr c, jr_08e_5432                             ; $53d0: $38 $60

    ld d, l                                       ; $53d2: $55
    ld a, d                                       ; $53d3: $7a
    db $d3                                        ; $53d4: $d3
    inc [hl]                                      ; $53d5: $34
    add hl, sp                                    ; $53d6: $39
    inc c                                         ; $53d7: $0c
    nop                                           ; $53d8: $00
    ld l, b                                       ; $53d9: $68
    ld l, c                                       ; $53da: $69
    ld [$2809], sp                                ; $53db: $08 $09 $28
    ld l, b                                       ; $53de: $68
    ld [$0909], sp                                ; $53df: $08 $09 $09
    jr z, jr_08e_5424                             ; $53e2: $28 $40

    nop                                           ; $53e4: $00
    jr z, jr_08e_544f                             ; $53e5: $28 $68

    call c, $04d7                                 ; $53e7: $dc $d7 $04
    db $d3                                        ; $53ea: $d3
    inc [hl]                                      ; $53eb: $34
    inc sp                                        ; $53ec: $33
    dec sp                                        ; $53ed: $3b
    ei                                            ; $53ee: $fb
    rst $10                                       ; $53ef: $d7
    ld h, c                                       ; $53f0: $61
    add hl, sp                                    ; $53f1: $39
    ld a, d                                       ; $53f2: $7a
    ei                                            ; $53f3: $fb
    ei                                            ; $53f4: $fb
    ld b, h                                       ; $53f5: $44
    db $d3                                        ; $53f6: $d3
    ld [$400c], sp                                ; $53f7: $08 $0c $40
    nop                                           ; $53fa: $00
    jr z, jr_08e_5425                             ; $53fb: $28 $28

    ld l, b                                       ; $53fd: $68
    ld b, $0c                                     ; $53fe: $06 $0c
    ld [$0068], sp                                ; $5400: $08 $68 $00
    ld h, [hl]                                    ; $5403: $66
    ld h, [hl]                                    ; $5404: $66
    ld c, $00                                     ; $5405: $0e $00
    jr z, @-$1f                                   ; $5407: $28 $df

    rra                                           ; $5409: $1f
    inc de                                        ; $540a: $13
    ld a, d                                       ; $540b: $7a
    inc de                                        ; $540c: $13
    rst $20                                       ; $540d: $e7

jr_08e_540e:
    inc [hl]                                      ; $540e: $34
    ld a, d                                       ; $540f: $7a
    ld b, [hl]                                    ; $5410: $46
    jp hl                                         ; $5411: $e9


    ld h, d                                       ; $5412: $62
    db $d3                                        ; $5413: $d3
    rst $10                                       ; $5414: $d7
    ld b, a                                       ; $5415: $47
    rst $10                                       ; $5416: $d7
    ld [$0f0e], sp                                ; $5417: $08 $0e $0f
    ld b, $00                                     ; $541a: $06 $00
    ld b, $0e                                     ; $541c: $06 $0e
    ld b, $00                                     ; $541e: $06 $00
    ld [$0e08], sp                                ; $5420: $08 $08 $0e
    nop                                           ; $5423: $00

jr_08e_5424:
    ld l, h                                       ; $5424: $6c

jr_08e_5425:
    ld c, c                                       ; $5425: $49
    inc c                                         ; $5426: $0c
    ld h, e                                       ; $5427: $63
    db $e3                                        ; $5428: $e3
    dec h                                         ; $5429: $25
    nop                                           ; $542a: $00
    ld h, $e5                                     ; $542b: $26 $e5
    sub $e5                                       ; $542d: $d6 $e5
    ld b, [hl]                                    ; $542f: $46
    ld b, a                                       ; $5430: $47
    ld h, h                                       ; $5431: $64

jr_08e_5432:
    ld h, l                                       ; $5432: $65
    add hl, hl                                    ; $5433: $29
    ld a, [hl+]                                   ; $5434: $2a
    ld sp, hl                                     ; $5435: $f9
    ld e, d                                       ; $5436: $5a
    ld c, $0c                                     ; $5437: $0e $0c
    inc c                                         ; $5439: $0c
    ld c, h                                       ; $543a: $4c
    ld c, b                                       ; $543b: $48
    inc c                                         ; $543c: $0c
    inc l                                         ; $543d: $2c
    inc c                                         ; $543e: $0c
    ld [$2808], sp                                ; $543f: $08 $08 $28
    add hl, bc                                    ; $5442: $09
    ld c, b                                       ; $5443: $48
    ld c, b                                       ; $5444: $48
    ld c, b                                       ; $5445: $48
    ld c, $d7                                     ; $5446: $0e $d7
    ld a, d                                       ; $5448: $7a
    ld a, d                                       ; $5449: $7a
    inc de                                        ; $544a: $13
    inc de                                        ; $544b: $13
    ld b, h                                       ; $544c: $44
    dec h                                         ; $544d: $25
    nop                                           ; $544e: $00

jr_08e_544f:
    rra                                           ; $544f: $1f
    ld a, d                                       ; $5450: $7a
    ld [c], a                                     ; $5451: $e2
    db $e4                                        ; $5452: $e4
    ld a, d                                       ; $5453: $7a
    inc b                                         ; $5454: $04
    db $d3                                        ; $5455: $d3
    dec h                                         ; $5456: $25
    inc c                                         ; $5457: $0c
    ld b, b                                       ; $5458: $40
    ld b, [hl]                                    ; $5459: $46
    ld b, [hl]                                    ; $545a: $46
    ld b, $0e                                     ; $545b: $06 $0e
    ld c, h                                       ; $545d: $4c
    inc c                                         ; $545e: $0c
    rrca                                          ; $545f: $0f

jr_08e_5460:
    ld b, [hl]                                    ; $5460: $46
    ld c, h                                       ; $5461: $4c
    ld c, h                                       ; $5462: $4c
    ld b, b                                       ; $5463: $40
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    ld c, h                                       ; $5466: $4c
    ld b, b                                       ; $5467: $40
    ld b, c                                       ; $5468: $41
    ld c, b                                       ; $5469: $48
    scf                                           ; $546a: $37
    db $d3                                        ; $546b: $d3
    ld c, [hl]                                    ; $546c: $4e
    inc de                                        ; $546d: $13
    ld l, l                                       ; $546e: $6d
    sub $e5                                       ; $546f: $d6 $e5
    ld l, l                                       ; $5471: $6d
    db $d3                                        ; $5472: $d3
    rst $10                                       ; $5473: $d7
    sub $e2                                       ; $5474: $d6 $e2
    nop                                           ; $5476: $00
    ld [$2808], sp                                ; $5477: $08 $08 $28
    ld [$0e00], sp                                ; $547a: $08 $00 $0e
    ld b, [hl]                                    ; $547d: $46
    rlca                                          ; $547e: $07
    ld l, h                                       ; $547f: $6c
    inc c                                         ; $5480: $0c
    ld b, $00                                     ; $5481: $06 $00
    inc c                                         ; $5483: $0c
    ld l, h                                       ; $5484: $6c
    inc c                                         ; $5485: $0c
    inc c                                         ; $5486: $0c
    jr z, jr_08e_5460                             ; $5487: $28 $d7

    push hl                                       ; $5489: $e5
    ldh [$7a], a                                  ; $548a: $e0 $7a
    dec h                                         ; $548c: $25
    push hl                                       ; $548d: $e5
    add hl, hl                                    ; $548e: $29
    ei                                            ; $548f: $fb
    db $d3                                        ; $5490: $d3
    jr jr_08e_54b0                                ; $5491: $18 $1d

    ld a, d                                       ; $5493: $7a
    inc b                                         ; $5494: $04
    daa                                           ; $5495: $27
    dec l                                         ; $5496: $2d
    ld [$0c2c], sp                                ; $5497: $08 $2c $0c
    ld c, h                                       ; $549a: $4c
    nop                                           ; $549b: $00
    ld c, h                                       ; $549c: $4c
    ld c, h                                       ; $549d: $4c
    inc b                                         ; $549e: $04
    ld b, $00                                     ; $549f: $06 $00
    ld [$0008], sp                                ; $54a1: $08 $08 $00
    nop                                           ; $54a4: $00
    ld [$2509], sp                                ; $54a5: $08 $09 $25
    inc [hl]                                      ; $54a8: $34
    rra                                           ; $54a9: $1f
    inc b                                         ; $54aa: $04
    push hl                                       ; $54ab: $e5
    inc de                                        ; $54ac: $13
    rst $10                                       ; $54ad: $d7
    ldh [rNR34], a                                ; $54ae: $e0 $1e

jr_08e_54b0:
    rst $18                                       ; $54b0: $df
    ld a, d                                       ; $54b1: $7a
    sub $2e                                       ; $54b2: $d6 $2e
    rra                                           ; $54b4: $1f
    rst $20                                       ; $54b5: $e7
    ld b, a                                       ; $54b6: $47
    ld l, h                                       ; $54b7: $6c
    rlca                                          ; $54b8: $07
    ld c, $00                                     ; $54b9: $0e $00
    inc c                                         ; $54bb: $0c
    ld b, $0c                                     ; $54bc: $06 $0c
    inc l                                         ; $54be: $2c
    ld [$400e], sp                                ; $54bf: $08 $0e $40
    inc c                                         ; $54c2: $0c
    add hl, bc                                    ; $54c3: $09
    ld c, $0e                                     ; $54c4: $0e $0e
    jr z, jr_08e_54db                             ; $54c6: $28 $13

    inc de                                        ; $54c8: $13
    ei                                            ; $54c9: $fb
    ldh [$fb], a                                  ; $54ca: $e0 $fb
    inc de                                        ; $54cc: $13
    rst $10                                       ; $54cd: $d7
    dec h                                         ; $54ce: $25
    inc b                                         ; $54cf: $04
    rra                                           ; $54d0: $1f
    inc de                                        ; $54d1: $13
    inc de                                        ; $54d2: $13
    ld b, [hl]                                    ; $54d3: $46
    ld sp, hl                                     ; $54d4: $f9
    ld l, l                                       ; $54d5: $6d
    rst $10                                       ; $54d6: $d7
    ld h, [hl]                                    ; $54d7: $66
    ld b, [hl]                                    ; $54d8: $46
    ld b, [hl]                                    ; $54d9: $46
    ld c, h                                       ; $54da: $4c

jr_08e_54db:
    ld h, [hl]                                    ; $54db: $66
    ld b, $0c                                     ; $54dc: $06 $0c
    ld c, h                                       ; $54de: $4c
    ld b, c                                       ; $54df: $41
    ld c, $06                                     ; $54e0: $0e $06
    ld b, $28                                     ; $54e2: $06 $28
    ld [$0c66], sp                                ; $54e4: $08 $66 $0c
    ld [c], a                                     ; $54e7: $e2
    inc de                                        ; $54e8: $13
    dec h                                         ; $54e9: $25
    db $d3                                        ; $54ea: $d3
    db $e4                                        ; $54eb: $e4
    ld [c], a                                     ; $54ec: $e2
    rst $10                                       ; $54ed: $d7
    push hl                                       ; $54ee: $e5
    ldh [rP1], a                                  ; $54ef: $e0 $00
    db $d3                                        ; $54f1: $d3
    rst $10                                       ; $54f2: $d7
    add hl, hl                                    ; $54f3: $29
    push hl                                       ; $54f4: $e5
    inc b                                         ; $54f5: $04
    db $d3                                        ; $54f6: $d3
    ld l, h                                       ; $54f7: $6c
    ld b, $0c                                     ; $54f8: $06 $0c
    nop                                           ; $54fa: $00
    ld c, h                                       ; $54fb: $4c
    inc l                                         ; $54fc: $2c
    inc c                                         ; $54fd: $0c
    inc c                                         ; $54fe: $0c
    ld c, h                                       ; $54ff: $4c
    ld c, h                                       ; $5500: $4c
    nop                                           ; $5501: $00
    inc c                                         ; $5502: $0c
    inc b                                         ; $5503: $04
    inc l                                         ; $5504: $2c
    ld b, b                                       ; $5505: $40
    nop                                           ; $5506: $00
    inc de                                        ; $5507: $13
    ld c, [hl]                                    ; $5508: $4e
    jr z, jr_08e_553a                             ; $5509: $28 $2f

    dec h                                         ; $550b: $25
    sub $66                                       ; $550c: $d6 $66
    ld h, a                                       ; $550e: $67
    ld a, d                                       ; $550f: $7a
    db $d3                                        ; $5510: $d3
    ld b, [hl]                                    ; $5511: $46
    ld b, a                                       ; $5512: $47
    db $d3                                        ; $5513: $d3
    add hl, de                                    ; $5514: $19
    ld hl, $061a                                  ; $5515: $21 $1a $06
    ld c, $68                                     ; $5518: $0e $68
    ld [$4c0c], sp                                ; $551a: $08 $0c $4c
    ld c, $0e                                     ; $551d: $0e $0e
    nop                                           ; $551f: $00
    nop                                           ; $5520: $00
    ld [$0008], sp                                ; $5521: $08 $08 $00
    ld c, [hl]                                    ; $5524: $4e
    ld l, b                                       ; $5525: $68
    ld c, b                                       ; $5526: $48
    jr nc, jr_08e_552d                            ; $5527: $30 $04

    ld h, d                                       ; $5529: $62
    rst $38                                       ; $552a: $ff
    inc de                                        ; $552b: $13
    inc b                                         ; $552c: $04

jr_08e_552d:
    inc b                                         ; $552d: $04
    ld l, b                                       ; $552e: $68
    rra                                           ; $552f: $1f
    inc hl                                        ; $5530: $23
    inc de                                        ; $5531: $13

jr_08e_5532:
    scf                                           ; $5532: $37
    inc de                                        ; $5533: $13
    rst $28                                       ; $5534: $ef
    ld [hl+], a                                   ; $5535: $22

jr_08e_5536:
    dec [hl]                                      ; $5536: $35
    ld [$0e00], sp                                ; $5537: $08 $00 $0e

jr_08e_553a:
    jr z, jr_08e_5542                             ; $553a: $28 $06

    ld b, b                                       ; $553c: $40
    nop                                           ; $553d: $00
    ld c, $0f                                     ; $553e: $0e $0f
    ld l, $06                                     ; $5540: $2e $06

jr_08e_5542:
    ld c, b                                       ; $5542: $48
    ld b, $68                                     ; $5543: $06 $68
    ld c, b                                       ; $5545: $48
    ld c, b                                       ; $5546: $48
    rst $38                                       ; $5547: $ff
    db $d3                                        ; $5548: $d3
    ld e, d                                       ; $5549: $5a
    push hl                                       ; $554a: $e5
    ld l, c                                       ; $554b: $69
    rst $10                                       ; $554c: $d7
    ldh [rP1], a                                  ; $554d: $e0 $00
    jr c, jr_08e_5532                             ; $554f: $38 $e1

    ld [c], a                                     ; $5551: $e2
    db $e4                                        ; $5552: $e4
    ld l, d                                       ; $5553: $6a
    jr z, jr_08e_5536                             ; $5554: $28 $e0

    ld [c], a                                     ; $5556: $e2
    ld [$0e00], sp                                ; $5557: $08 $00 $0e
    ld l, h                                       ; $555a: $6c
    ld c, $0c                                     ; $555b: $0e $0c
    ld c, h                                       ; $555d: $4c
    inc c                                         ; $555e: $0c
    ld c, c                                       ; $555f: $49
    ld c, h                                       ; $5560: $4c
    ld c, h                                       ; $5561: $4c
    ld c, h                                       ; $5562: $4c

jr_08e_5563:
    add hl, bc                                    ; $5563: $09
    ld c, b                                       ; $5564: $48
    ld c, h                                       ; $5565: $4c
    ld c, h                                       ; $5566: $4c
    ei                                            ; $5567: $fb
    rst $18                                       ; $5568: $df
    sub $e5                                       ; $5569: $d6 $e5
    ld a, [c]                                     ; $556b: $f2
    add hl, hl                                    ; $556c: $29
    db $d3                                        ; $556d: $d3
    ei                                            ; $556e: $fb
    ld [c], a                                     ; $556f: $e2
    db $e4                                        ; $5570: $e4
    rst $10                                       ; $5571: $d7
    rst $18                                       ; $5572: $df
    db $e4                                        ; $5573: $e4
    db $e4                                        ; $5574: $e4
    sub $d3                                       ; $5575: $d6 $d3
    ld h, [hl]                                    ; $5577: $66
    ld c, $6c                                     ; $5578: $0e $6c
    inc c                                         ; $557a: $0c
    ld c, h                                       ; $557b: $4c
    ld b, h                                       ; $557c: $44
    nop                                           ; $557d: $00
    ld h, [hl]                                    ; $557e: $66
    inc c                                         ; $557f: $0c
    inc c                                         ; $5580: $0c
    inc c                                         ; $5581: $0c
    ld c, $4c                                     ; $5582: $0e $4c
    ld l, h                                       ; $5584: $6c
    inc c                                         ; $5585: $0c
    nop                                           ; $5586: $00
    ld a, d                                       ; $5587: $7a
    db $d3                                        ; $5588: $d3
    inc hl                                        ; $5589: $23
    ei                                            ; $558a: $fb
    ei                                            ; $558b: $fb
    ret nc                                        ; $558c: $d0

    pop de                                        ; $558d: $d1
    jr z, jr_08e_5563                             ; $558e: $28 $d3

    ld l, e                                       ; $5590: $6b
    rst $08                                       ; $5591: $cf
    inc de                                        ; $5592: $13
    ld a, d                                       ; $5593: $7a
    inc de                                        ; $5594: $13
    inc b                                         ; $5595: $04
    ld a, d                                       ; $5596: $7a
    nop                                           ; $5597: $00
    ld b, $48                                     ; $5598: $06 $48
    ld h, $06                                     ; $559a: $26 $06
    ld [$4809], sp                                ; $559c: $08 $09 $48
    nop                                           ; $559f: $00
    ld [$4608], sp                                ; $55a0: $08 $08 $46
    nop                                           ; $55a3: $00
    ld b, $00                                     ; $55a4: $06 $00
    nop                                           ; $55a6: $00
    jr z, jr_08e_55c9                             ; $55a7: $28 $20

    ld hl, $d304                                  ; $55a9: $21 $04 $d3
    inc de                                        ; $55ac: $13
    dec h                                         ; $55ad: $25
    nop                                           ; $55ae: $00
    inc b                                         ; $55af: $04
    ld b, h                                       ; $55b0: $44
    add hl, hl                                    ; $55b1: $29
    push hl                                       ; $55b2: $e5
    ei                                            ; $55b3: $fb
    db $d3                                        ; $55b4: $d3
    db $d3                                        ; $55b5: $d3
    jr z, jr_08e_55c0                             ; $55b6: $28 $08

    ld c, b                                       ; $55b8: $48
    ld c, b                                       ; $55b9: $48
    nop                                           ; $55ba: $00
    nop                                           ; $55bb: $00
    ld b, $0c                                     ; $55bc: $06 $0c
    ld c, h                                       ; $55be: $4c
    nop                                           ; $55bf: $00

jr_08e_55c0:
    ld c, $04                                     ; $55c0: $0e $04
    inc l                                         ; $55c2: $2c
    ld b, $00                                     ; $55c3: $06 $00
    nop                                           ; $55c5: $00
    ld [$04df], sp                                ; $55c6: $08 $df $04

jr_08e_55c9:
    ld sp, hl                                     ; $55c9: $f9
    db $e3                                        ; $55ca: $e3
    ld l, l                                       ; $55cb: $6d
    ld c, [hl]                                    ; $55cc: $4e
    db $d3                                        ; $55cd: $d3
    nop                                           ; $55ce: $00
    db $d3                                        ; $55cf: $d3
    rst $18                                       ; $55d0: $df
    inc b                                         ; $55d1: $04
    ld b, h                                       ; $55d2: $44
    ld a, d                                       ; $55d3: $7a
    ld a, d                                       ; $55d4: $7a
    ei                                            ; $55d5: $fb
    ld a, d                                       ; $55d6: $7a
    ld c, $00                                     ; $55d7: $0e $00
    ld l, b                                       ; $55d9: $68
    ld c, h                                       ; $55da: $4c
    ld h, [hl]                                    ; $55db: $66
    ld c, $00                                     ; $55dc: $0e $00
    inc l                                         ; $55de: $2c
    nop                                           ; $55df: $00
    ld c, $00                                     ; $55e0: $0e $00
    ld c, $00                                     ; $55e2: $0e $00
    nop                                           ; $55e4: $00
    ld b, $00                                     ; $55e5: $06 $00
    ld [c], a                                     ; $55e7: $e2
    nop                                           ; $55e8: $00
    ld a, [c]                                     ; $55e9: $f2
    inc sp                                        ; $55ea: $33
    ld [c], a                                     ; $55eb: $e2
    db $e4                                        ; $55ec: $e4
    rst $10                                       ; $55ed: $d7
    ld e, d                                       ; $55ee: $5a
    ldh [$d6], a                                  ; $55ef: $e0 $d6
    db $d3                                        ; $55f1: $d3
    inc de                                        ; $55f2: $13
    sub $7a                                       ; $55f3: $d6 $7a
    ei                                            ; $55f5: $fb
    ld a, d                                       ; $55f6: $7a
    ld c, h                                       ; $55f7: $4c
    inc c                                         ; $55f8: $0c
    ld c, h                                       ; $55f9: $4c
    ld c, b                                       ; $55fa: $48

jr_08e_55fb:
    ld c, h                                       ; $55fb: $4c
    ld c, h                                       ; $55fc: $4c
    inc c                                         ; $55fd: $0c
    ld c, $4c                                     ; $55fe: $0e $4c
    inc c                                         ; $5600: $0c
    nop                                           ; $5601: $00
    ld b, [hl]                                    ; $5602: $46
    inc c                                         ; $5603: $0c
    nop                                           ; $5604: $00
    ld b, $00                                     ; $5605: $06 $00
    jr c, jr_08e_5676                             ; $5607: $38 $6d

    push hl                                       ; $5609: $e5
    nop                                           ; $560a: $00
    inc de                                        ; $560b: $13
    inc bc                                        ; $560c: $03
    di                                            ; $560d: $f3

jr_08e_560e:
    ld [hl], $d6                                  ; $560e: $36 $d6
    inc b                                         ; $5610: $04
    ld c, a                                       ; $5611: $4f
    db $d3                                        ; $5612: $d3
    db $d3                                        ; $5613: $d3
    jr z, jr_08e_560e                             ; $5614: $28 $f8

    di                                            ; $5616: $f3
    ld [$0c40], sp                                ; $5617: $08 $40 $0c
    ld c, h                                       ; $561a: $4c
    ld b, $49                                     ; $561b: $06 $49
    ld [$6c09], sp                                ; $561d: $08 $09 $6c
    nop                                           ; $5620: $00
    ld c, b                                       ; $5621: $48
    ld c, c                                       ; $5622: $49
    nop                                           ; $5623: $00
    ld l, $28                                     ; $5624: $2e $28
    jr z, jr_08e_55fb                             ; $5626: $28 $d3

    ld a, d                                       ; $5628: $7a
    db $d3                                        ; $5629: $d3
    inc de                                        ; $562a: $13
    ld a, d                                       ; $562b: $7a
    db $d3                                        ; $562c: $d3
    rst $10                                       ; $562d: $d7
    ld a, d                                       ; $562e: $7a
    jr z, @+$5c                                   ; $562f: $28 $5a

    ei                                            ; $5631: $fb
    ld b, [hl]                                    ; $5632: $46
    inc bc                                        ; $5633: $03
    db $d3                                        ; $5634: $d3
    ld l, l                                       ; $5635: $6d
    ei                                            ; $5636: $fb
    nop                                           ; $5637: $00
    ld b, [hl]                                    ; $5638: $46
    nop                                           ; $5639: $00
    ld b, $46                                     ; $563a: $06 $46
    nop                                           ; $563c: $00
    inc c                                         ; $563d: $0c
    ld b, b                                       ; $563e: $40
    ld c, b                                       ; $563f: $48
    ld c, $66                                     ; $5640: $0e $66
    ld c, $68                                     ; $5642: $0e $68
    nop                                           ; $5644: $00
    ld h, [hl]                                    ; $5645: $66
    ld h, [hl]                                    ; $5646: $66
    inc de                                        ; $5647: $13
    inc hl                                        ; $5648: $23
    ld b, h                                       ; $5649: $44
    ei                                            ; $564a: $fb
    ld a, d                                       ; $564b: $7a
    ld l, h                                       ; $564c: $6c
    ld h, h                                       ; $564d: $64
    inc de                                        ; $564e: $13
    rst $10                                       ; $564f: $d7
    nop                                           ; $5650: $00
    push hl                                       ; $5651: $e5
    dec h                                         ; $5652: $25
    ld sp, $e104                                  ; $5653: $31 $04 $e1
    ld [c], a                                     ; $5656: $e2
    nop                                           ; $5657: $00
    rrca                                          ; $5658: $0f
    ld c, $66                                     ; $5659: $0e $66
    ld b, [hl]                                    ; $565b: $46
    ld [$0608], sp                                ; $565c: $08 $08 $06
    inc c                                         ; $565f: $0c
    inc c                                         ; $5660: $0c
    inc c                                         ; $5661: $0c
    ld c, h                                       ; $5662: $4c
    ld c, b                                       ; $5663: $48
    ld b, b                                       ; $5664: $40
    inc c                                         ; $5665: $0c
    inc c                                         ; $5666: $0c
    inc de                                        ; $5667: $13
    ld l, l                                       ; $5668: $6d
    ld c, [hl]                                    ; $5669: $4e
    ei                                            ; $566a: $fb
    ld b, h                                       ; $566b: $44
    ld l, [hl]                                    ; $566c: $6e
    inc de                                        ; $566d: $13
    db $d3                                        ; $566e: $d3
    sub $e5                                       ; $566f: $d6 $e5
    inc de                                        ; $5671: $13
    ld a, d                                       ; $5672: $7a
    db $e4                                        ; $5673: $e4
    sub $d3                                       ; $5674: $d6 $d3

jr_08e_5676:
    ld a, d                                       ; $5676: $7a
    ld h, [hl]                                    ; $5677: $66
    ld [$060e], sp                                ; $5678: $08 $0e $06
    ld c, $09                                     ; $567b: $0e $09
    ld b, $00                                     ; $567d: $06 $00
    ld c, h                                       ; $567f: $4c
    ld c, h                                       ; $5680: $4c
    ld b, $00                                     ; $5681: $06 $00
    inc c                                         ; $5683: $0c
    ld l, h                                       ; $5684: $6c
    nop                                           ; $5685: $00
    nop                                           ; $5686: $00
    rra                                           ; $5687: $1f
    db $ed                                        ; $5688: $ed
    db $ec                                        ; $5689: $ec
    ld [hl], $6d                                  ; $568a: $36 $6d
    rst $28                                       ; $568c: $ef
    xor $d3                                       ; $568d: $ee $d3
    ld l, a                                       ; $568f: $6f
    pop af                                        ; $5690: $f1
    ldh a, [$fb]                                  ; $5691: $f0 $fb
    db $fd                                        ; $5693: $fd
    db $fc                                        ; $5694: $fc
    db $db                                        ; $5695: $db
    ld b, l                                       ; $5696: $45
    ld c, $29                                     ; $5697: $0e $29
    jr z, @+$4a                                   ; $5699: $28 $48

    jr nz, @+$2a                                  ; $569b: $20 $28

    jr z, jr_08e_569f                             ; $569d: $28 $00

jr_08e_569f:
    ld c, $28                                     ; $569f: $0e $28
    add hl, hl                                    ; $56a1: $29
    nop                                           ; $56a2: $00
    add hl, hl                                    ; $56a3: $29
    jr z, jr_08e_56ce                             ; $56a4: $28 $28

    ld c, b                                       ; $56a6: $48
    push hl                                       ; $56a7: $e5
    sub $e5                                       ; $56a8: $d6 $e5
    ld h, $fb                                     ; $56aa: $26 $fb
    ldh [rP1], a                                  ; $56ac: $e0 $00
    db $d3                                        ; $56ae: $d3
    inc de                                        ; $56af: $13
    push hl                                       ; $56b0: $e5
    ld sp, hl                                     ; $56b1: $f9
    inc de                                        ; $56b2: $13
    ei                                            ; $56b3: $fb
    inc de                                        ; $56b4: $13
    db $d3                                        ; $56b5: $d3
    ei                                            ; $56b6: $fb
    ld l, h                                       ; $56b7: $6c
    ld l, h                                       ; $56b8: $6c
    inc c                                         ; $56b9: $0c
    ld c, b                                       ; $56ba: $48
    ld h, b                                       ; $56bb: $60
    ld c, h                                       ; $56bc: $4c
    ld c, h                                       ; $56bd: $4c
    nop                                           ; $56be: $00
    ld b, [hl]                                    ; $56bf: $46
    inc l                                         ; $56c0: $2c
    ld l, b                                       ; $56c1: $68
    ld b, [hl]                                    ; $56c2: $46
    ld h, [hl]                                    ; $56c3: $66
    ld b, $00                                     ; $56c4: $06 $00
    ld h, [hl]                                    ; $56c6: $66
    dec hl                                        ; $56c7: $2b
    inc l                                         ; $56c8: $2c
    db $e3                                        ; $56c9: $e3
    ldh [$29], a                                  ; $56ca: $e0 $29
    ld a, [hl+]                                   ; $56cc: $2a
    push hl                                       ; $56cd: $e5

jr_08e_56ce:
    add hl, hl                                    ; $56ce: $29
    rst $18                                       ; $56cf: $df
    ei                                            ; $56d0: $fb
    ei                                            ; $56d1: $fb
    jr z, jr_08e_56e7                             ; $56d2: $28 $13

    sub $e5                                       ; $56d4: $d6 $e5
    daa                                           ; $56d6: $27
    ld c, b                                       ; $56d7: $48
    ld c, c                                       ; $56d8: $49
    inc c                                         ; $56d9: $0c
    ld c, h                                       ; $56da: $4c
    ld c, b                                       ; $56db: $48
    ld c, b                                       ; $56dc: $48
    inc c                                         ; $56dd: $0c
    inc b                                         ; $56de: $04
    ld c, $66                                     ; $56df: $0e $66
    ld h, b                                       ; $56e1: $60
    ld l, $06                                     ; $56e2: $2e $06
    ld l, h                                       ; $56e4: $6c
    inc c                                         ; $56e5: $0c
    ld c, b                                       ; $56e6: $48

jr_08e_56e7:
    nop                                           ; $56e7: $00
    inc b                                         ; $56e8: $04
    ld l, l                                       ; $56e9: $6d
    ei                                            ; $56ea: $fb
    ld h, $d3                                     ; $56eb: $26 $d3
    ld l, [hl]                                    ; $56ed: $6e
    db $d3                                        ; $56ee: $d3
    cpl                                           ; $56ef: $2f
    jr nc, jr_08e_5740                            ; $56f0: $30 $4e

    inc b                                         ; $56f2: $04
    dec l                                         ; $56f3: $2d
    ld l, $46                                     ; $56f4: $2e $46
    ei                                            ; $56f6: $fb
    ld c, h                                       ; $56f7: $4c
    nop                                           ; $56f8: $00
    ld [$4806], sp                                ; $56f9: $08 $06 $48
    nop                                           ; $56fc: $00
    add hl, bc                                    ; $56fd: $09
    nop                                           ; $56fe: $00
    ld c, b                                       ; $56ff: $48
    ld c, b                                       ; $5700: $48
    ld c, $00                                     ; $5701: $0e $00
    ld c, c                                       ; $5703: $49
    ld c, b                                       ; $5704: $48
    ld c, [hl]                                    ; $5705: $4e
    ld b, $ff                                     ; $5706: $06 $ff

jr_08e_5708:
    cp $dc                                        ; $5708: $fe $dc
    ld b, e                                       ; $570a: $43
    dec sp                                        ; $570b: $3b
    inc sp                                        ; $570c: $33
    inc [hl]                                      ; $570d: $34
    ld b, d                                       ; $570e: $42
    add hl, sp                                    ; $570f: $39
    ld a, [hl-]                                   ; $5710: $3a
    ccf                                           ; $5711: $3f
    ld b, b                                       ; $5712: $40
    ld e, d                                       ; $5713: $5a
    ld l, l                                       ; $5714: $6d
    inc a                                         ; $5715: $3c
    dec a                                         ; $5716: $3d
    jr z, jr_08e_5741                             ; $5717: $28 $28

    jr z, jr_08e_5764                             ; $5719: $28 $49

    ld c, b                                       ; $571b: $48
    ld [$4808], sp                                ; $571c: $08 $08 $48
    ld c, b                                       ; $571f: $48
    ld c, b                                       ; $5720: $48
    ld c, b                                       ; $5721: $48
    ld c, c                                       ; $5722: $49
    ld c, $60                                     ; $5723: $0e $60
    ld c, b                                       ; $5725: $48
    ld c, b                                       ; $5726: $48
    jr z, jr_08e_5708                             ; $5727: $28 $df

    jr z, jr_08e_5740                             ; $5729: $28 $15

    ld b, h                                       ; $572b: $44
    rra                                           ; $572c: $1f
    ei                                            ; $572d: $fb
    inc de                                        ; $572e: $13
    ld b, c                                       ; $572f: $41
    ld l, l                                       ; $5730: $6d
    ei                                            ; $5731: $fb
    rst $10                                       ; $5732: $d7
    ld a, $28                                     ; $5733: $3e $28
    inc b                                         ; $5735: $04
    ld a, d                                       ; $5736: $7a
    ld c, b                                       ; $5737: $48
    add hl, bc                                    ; $5738: $09
    ld [$0e48], sp                                ; $5739: $08 $48 $0e
    ld c, $60                                     ; $573c: $0e $60
    ld c, b                                       ; $573e: $48
    ld c, b                                       ; $573f: $48

jr_08e_5740:
    ld h, [hl]                                    ; $5740: $66

jr_08e_5741:
    ld h, [hl]                                    ; $5741: $66
    ld c, h                                       ; $5742: $4c
    ld c, b                                       ; $5743: $48
    ld c, b                                       ; $5744: $48
    ld b, c                                       ; $5745: $41
    nop                                           ; $5746: $00
    rla                                           ; $5747: $17
    ld l, l                                       ; $5748: $6d
    inc b                                         ; $5749: $04
    jr @+$18                                      ; $574a: $18 $16

    ei                                            ; $574c: $fb
    jr @+$1f                                      ; $574d: $18 $1d

    sub $26                                       ; $574f: $d6 $26
    daa                                           ; $5751: $27
    dec l                                         ; $5752: $2d
    ei                                            ; $5753: $fb
    db $d3                                        ; $5754: $d3

jr_08e_5755:
    jr z, jr_08e_5786                             ; $5755: $28 $2f

    ld c, b                                       ; $5757: $48
    ld h, [hl]                                    ; $5758: $66
    nop                                           ; $5759: $00
    ld c, [hl]                                    ; $575a: $4e
    ld c, b                                       ; $575b: $48
    ld h, [hl]                                    ; $575c: $66
    ld [$4c08], sp                                ; $575d: $08 $08 $4c
    ld c, b                                       ; $5760: $48
    ld [$6609], sp                                ; $5761: $08 $09 $66

jr_08e_5764:
    nop                                           ; $5764: $00
    ld l, b                                       ; $5765: $68
    ld [$1e1d], sp                                ; $5766: $08 $1d $1e
    ld b, h                                       ; $5769: $44
    ld a, d                                       ; $576a: $7a
    ld e, $fb                                     ; $576b: $1e $fb
    ld b, h                                       ; $576d: $44
    ld a, d                                       ; $576e: $7a
    ld l, $04                                     ; $576f: $2e $04
    inc de                                        ; $5771: $13
    db $d3                                        ; $5772: $d3
    jr nc, jr_08e_5755                            ; $5773: $30 $e0

    db $d3                                        ; $5775: $d3
    ld a, d                                       ; $5776: $7a
    ld c, b                                       ; $5777: $48
    ld c, [hl]                                    ; $5778: $4e
    ld c, $00                                     ; $5779: $0e $00
    ld [$0e66], sp                                ; $577b: $08 $66 $0e
    nop                                           ; $577e: $00
    add hl, bc                                    ; $577f: $09
    nop                                           ; $5780: $00
    ld h, [hl]                                    ; $5781: $66
    nop                                           ; $5782: $00
    ld [$002c], sp                                ; $5783: $08 $2c $00

jr_08e_5786:
    nop                                           ; $5786: $00
    inc [hl]                                      ; $5787: $34
    db $d3                                        ; $5788: $d3
    inc b                                         ; $5789: $04
    rst $18                                       ; $578a: $df
    db $d3                                        ; $578b: $d3
    inc b                                         ; $578c: $04
    cpl                                           ; $578d: $2f
    jr nc, @+$5c                                  ; $578e: $30 $5a

    jr nc, jr_08e_57c1                            ; $5790: $30 $2f

    jr z, @-$2b                                   ; $5792: $28 $d3

    ld a, d                                       ; $5794: $7a
    db $d3                                        ; $5795: $d3
    ld a, d                                       ; $5796: $7a
    ld c, b                                       ; $5797: $48
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    ld c, $00                                     ; $579a: $0e $00
    nop                                           ; $579c: $00
    ld c, b                                       ; $579d: $48
    ld c, b                                       ; $579e: $48
    ld l, [hl]                                    ; $579f: $6e
    jr z, jr_08e_57ca                             ; $57a0: $28 $28

    ld c, b                                       ; $57a2: $48
    nop                                           ; $57a3: $00
    nop                                           ; $57a4: $00
    nop                                           ; $57a5: $00
    nop                                           ; $57a6: $00
    ei                                            ; $57a7: $fb
    ei                                            ; $57a8: $fb
    inc b                                         ; $57a9: $04
    db $d3                                        ; $57aa: $d3
    ld e, d                                       ; $57ab: $5a
    ei                                            ; $57ac: $fb
    nop                                           ; $57ad: $00
    ld a, [c]                                     ; $57ae: $f2
    inc de                                        ; $57af: $13
    db $d3                                        ; $57b0: $d3
    ldh [$d6], a                                  ; $57b1: $e0 $d6
    db $d3                                        ; $57b3: $d3
    ld a, d                                       ; $57b4: $7a
    jr z, jr_08e_57ca                             ; $57b5: $28 $13

    ld h, [hl]                                    ; $57b7: $66
    ld h, [hl]                                    ; $57b8: $66
    nop                                           ; $57b9: $00
    inc b                                         ; $57ba: $04
    ld l, [hl]                                    ; $57bb: $6e
    ld h, b                                       ; $57bc: $60
    inc c                                         ; $57bd: $0c

jr_08e_57be:
    ld c, h                                       ; $57be: $4c
    ld b, [hl]                                    ; $57bf: $46
    nop                                           ; $57c0: $00

jr_08e_57c1:
    ld c, h                                       ; $57c1: $4c
    inc c                                         ; $57c2: $0c
    nop                                           ; $57c3: $00
    nop                                           ; $57c4: $00
    ld [$fb06], sp                                ; $57c5: $08 $06 $fb
    ld b, h                                       ; $57c8: $44
    ld a, d                                       ; $57c9: $7a

jr_08e_57ca:
    db $d3                                        ; $57ca: $d3
    inc de                                        ; $57cb: $13
    add sp, -$17                                  ; $57cc: $e8 $e9
    ei                                            ; $57ce: $fb
    inc b                                         ; $57cf: $04
    cpl                                           ; $57d0: $2f
    jr nc, @+$06                                  ; $57d1: $30 $04

    ld a, d                                       ; $57d3: $7a
    sub $7a                                       ; $57d4: $d6 $7a
    jr z, jr_08e_583e                             ; $57d6: $28 $66

    ld c, $00                                     ; $57d8: $0e $00
    nop                                           ; $57da: $00
    ld b, [hl]                                    ; $57db: $46
    ld [$4008], sp                                ; $57dc: $08 $08 $40
    ld b, b                                       ; $57df: $40
    ld [$0008], sp                                ; $57e0: $08 $08 $00
    nop                                           ; $57e3: $00
    inc c                                         ; $57e4: $0c
    nop                                           ; $57e5: $00
    ld [$d600], sp                                ; $57e6: $08 $00 $d6
    jr z, jr_08e_57be                             ; $57e9: $28 $d3

    inc b                                         ; $57eb: $04
    sub $13                                       ; $57ec: $d6 $13
    ei                                            ; $57ee: $fb
    db $d3                                        ; $57ef: $d3
    ld a, d                                       ; $57f0: $7a
    db $d3                                        ; $57f1: $d3
    db $d3                                        ; $57f2: $d3
    ei                                            ; $57f3: $fb
    db $d3                                        ; $57f4: $d3
    inc de                                        ; $57f5: $13
    ei                                            ; $57f6: $fb
    ld l, h                                       ; $57f7: $6c
    inc c                                         ; $57f8: $0c
    ld [$4000], sp                                ; $57f9: $08 $00 $40
    inc c                                         ; $57fc: $0c
    ld b, [hl]                                    ; $57fd: $46
    ld b, $00                                     ; $57fe: $06 $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    ld b, $00                                     ; $5803: $06 $00
    ld b, $06                                     ; $5805: $06 $06
    inc c                                         ; $5807: $0c
    nop                                           ; $5808: $00
    ld [$4000], sp                                ; $5809: $08 $00 $40
    rlca                                          ; $580c: $07
    ccf                                           ; $580d: $3f
    ccf                                           ; $580e: $3f
    ccf                                           ; $580f: $3f
    ld b, b                                       ; $5810: $40
    ccf                                           ; $5811: $3f
    ccf                                           ; $5812: $3f
    ccf                                           ; $5813: $3f
    ld b, b                                       ; $5814: $40
    ccf                                           ; $5815: $3f
    ccf                                           ; $5816: $3f
    ccf                                           ; $5817: $3f
    ld b, b                                       ; $5818: $40
    ccf                                           ; $5819: $3f
    ccf                                           ; $581a: $3f
    ccf                                           ; $581b: $3f
    ld b, b                                       ; $581c: $40
    add d                                         ; $581d: $82
    add d                                         ; $581e: $82
    add d                                         ; $581f: $82
    add d                                         ; $5820: $82
    add d                                         ; $5821: $82
    add d                                         ; $5822: $82
    add d                                         ; $5823: $82
    add d                                         ; $5824: $82
    add d                                         ; $5825: $82
    add d                                         ; $5826: $82
    add d                                         ; $5827: $82
    add d                                         ; $5828: $82
    add d                                         ; $5829: $82
    add d                                         ; $582a: $82
    add d                                         ; $582b: $82
    add d                                         ; $582c: $82
    ld b, c                                       ; $582d: $41
    ld b, d                                       ; $582e: $42
    ld b, d                                       ; $582f: $42
    ld b, d                                       ; $5830: $42
    ld b, e                                       ; $5831: $43
    ld b, d                                       ; $5832: $42
    ld b, d                                       ; $5833: $42
    ld b, d                                       ; $5834: $42
    ld b, h                                       ; $5835: $44
    ld b, d                                       ; $5836: $42
    ld b, d                                       ; $5837: $42
    ld b, d                                       ; $5838: $42
    ld b, l                                       ; $5839: $45
    ld b, d                                       ; $583a: $42
    ld b, d                                       ; $583b: $42
    ld b, d                                       ; $583c: $42
    dec b                                         ; $583d: $05

jr_08e_583e:
    dec b                                         ; $583e: $05
    dec b                                         ; $583f: $05
    dec b                                         ; $5840: $05
    dec b                                         ; $5841: $05
    dec b                                         ; $5842: $05
    dec b                                         ; $5843: $05
    dec b                                         ; $5844: $05
    ld h, l                                       ; $5845: $65
    dec b                                         ; $5846: $05
    dec b                                         ; $5847: $05
    dec b                                         ; $5848: $05
    dec b                                         ; $5849: $05
    dec b                                         ; $584a: $05
    dec b                                         ; $584b: $05
    dec b                                         ; $584c: $05
    ld b, d                                       ; $584d: $42
    ld b, h                                       ; $584e: $44
    ld b, b                                       ; $584f: $40
    ld b, [hl]                                    ; $5850: $46
    ld b, d                                       ; $5851: $42
    ld b, e                                       ; $5852: $43
    ld b, b                                       ; $5853: $40
    ld b, a                                       ; $5854: $47
    ld b, d                                       ; $5855: $42
    ld b, c                                       ; $5856: $41
    ld b, b                                       ; $5857: $40
    ld c, b                                       ; $5858: $48
    ld b, d                                       ; $5859: $42
    ld b, l                                       ; $585a: $45
    ld b, b                                       ; $585b: $40
    ld c, c                                       ; $585c: $49
    dec b                                         ; $585d: $05
    dec b                                         ; $585e: $05
    ld [bc], a                                    ; $585f: $02
    dec b                                         ; $5860: $05
    dec b                                         ; $5861: $05
    ld h, l                                       ; $5862: $65
    ld [bc], a                                    ; $5863: $02
    dec b                                         ; $5864: $05
    dec b                                         ; $5865: $05
    ld h, l                                       ; $5866: $65
    ld [bc], a                                    ; $5867: $02
    ld h, l                                       ; $5868: $65
    dec b                                         ; $5869: $05
    ld h, l                                       ; $586a: $65
    ld [bc], a                                    ; $586b: $02
    ld h, l                                       ; $586c: $65
    ld c, d                                       ; $586d: $4a
    ld c, e                                       ; $586e: $4b
    ld c, h                                       ; $586f: $4c
    ld c, l                                       ; $5870: $4d
    ld c, [hl]                                    ; $5871: $4e
    ld c, a                                       ; $5872: $4f
    ld d, b                                       ; $5873: $50
    ld d, c                                       ; $5874: $51
    ld d, d                                       ; $5875: $52
    ld d, e                                       ; $5876: $53
    ld d, h                                       ; $5877: $54
    ld d, l                                       ; $5878: $55
    ld c, d                                       ; $5879: $4a
    ld c, e                                       ; $587a: $4b
    ld c, h                                       ; $587b: $4c
    ld c, l                                       ; $587c: $4d
    inc bc                                        ; $587d: $03
    inc bc                                        ; $587e: $03
    inc bc                                        ; $587f: $03
    inc bc                                        ; $5880: $03
    inc bc                                        ; $5881: $03
    inc bc                                        ; $5882: $03
    inc bc                                        ; $5883: $03
    inc bc                                        ; $5884: $03
    inc bc                                        ; $5885: $03
    inc bc                                        ; $5886: $03
    inc bc                                        ; $5887: $03
    inc bc                                        ; $5888: $03
    inc bc                                        ; $5889: $03
    inc bc                                        ; $588a: $03
    inc bc                                        ; $588b: $03
    inc bc                                        ; $588c: $03
    ld b, c                                       ; $588d: $41
    ld b, d                                       ; $588e: $42
    ld b, d                                       ; $588f: $42
    ld b, d                                       ; $5890: $42
    ld b, e                                       ; $5891: $43
    ld b, d                                       ; $5892: $42
    ld b, d                                       ; $5893: $42
    ld b, d                                       ; $5894: $42
    ld d, [hl]                                    ; $5895: $56
    ld d, a                                       ; $5896: $57
    ld e, b                                       ; $5897: $58
    ld e, c                                       ; $5898: $59
    ld e, d                                       ; $5899: $5a
    ld e, e                                       ; $589a: $5b
    ld e, e                                       ; $589b: $5b
    ld e, e                                       ; $589c: $5b
    dec b                                         ; $589d: $05
    dec b                                         ; $589e: $05
    dec b                                         ; $589f: $05
    dec b                                         ; $58a0: $05
    dec b                                         ; $58a1: $05
    dec b                                         ; $58a2: $05
    dec b                                         ; $58a3: $05
    dec b                                         ; $58a4: $05
    dec b                                         ; $58a5: $05
    dec b                                         ; $58a6: $05
    dec b                                         ; $58a7: $05
    dec b                                         ; $58a8: $05
    ld [bc], a                                    ; $58a9: $02
    ld [bc], a                                    ; $58aa: $02
    ld [bc], a                                    ; $58ab: $02
    ld [bc], a                                    ; $58ac: $02
    ld b, d                                       ; $58ad: $42
    ld b, h                                       ; $58ae: $44
    ld b, b                                       ; $58af: $40
    ld b, [hl]                                    ; $58b0: $46
    ld b, d                                       ; $58b1: $42
    ld b, e                                       ; $58b2: $43
    ld b, b                                       ; $58b3: $40
    ld b, a                                       ; $58b4: $47
    ld d, a                                       ; $58b5: $57
    ld e, h                                       ; $58b6: $5c
    ld b, b                                       ; $58b7: $40
    ld e, l                                       ; $58b8: $5d
    ld e, e                                       ; $58b9: $5b
    ld e, [hl]                                    ; $58ba: $5e
    ld b, b                                       ; $58bb: $40
    ld e, d                                       ; $58bc: $5a
    dec b                                         ; $58bd: $05
    dec b                                         ; $58be: $05
    ld [bc], a                                    ; $58bf: $02
    dec b                                         ; $58c0: $05
    dec b                                         ; $58c1: $05
    ld h, l                                       ; $58c2: $65
    ld [bc], a                                    ; $58c3: $02
    dec b                                         ; $58c4: $05
    dec b                                         ; $58c5: $05
    dec b                                         ; $58c6: $05
    ld [bc], a                                    ; $58c7: $02
    dec b                                         ; $58c8: $05
    ld [bc], a                                    ; $58c9: $02
    ld [bc], a                                    ; $58ca: $02
    ld [bc], a                                    ; $58cb: $02
    ld [bc], a                                    ; $58cc: $02
    ld c, [hl]                                    ; $58cd: $4e
    ld c, a                                       ; $58ce: $4f
    ld d, b                                       ; $58cf: $50
    ld d, c                                       ; $58d0: $51
    ld e, a                                       ; $58d1: $5f
    ld h, b                                       ; $58d2: $60
    ld h, c                                       ; $58d3: $61
    ld h, d                                       ; $58d4: $62
    ld h, e                                       ; $58d5: $63
    ld h, e                                       ; $58d6: $63
    ld h, e                                       ; $58d7: $63
    ld h, e                                       ; $58d8: $63
    ld e, e                                       ; $58d9: $5b
    ld e, e                                       ; $58da: $5b
    ld e, e                                       ; $58db: $5b
    ld e, e                                       ; $58dc: $5b
    inc bc                                        ; $58dd: $03
    inc bc                                        ; $58de: $03
    inc bc                                        ; $58df: $03
    inc bc                                        ; $58e0: $03
    inc bc                                        ; $58e1: $03
    inc bc                                        ; $58e2: $03
    inc bc                                        ; $58e3: $03
    inc bc                                        ; $58e4: $03
    dec b                                         ; $58e5: $05
    dec b                                         ; $58e6: $05
    dec b                                         ; $58e7: $05
    dec b                                         ; $58e8: $05
    ld [bc], a                                    ; $58e9: $02
    ld [bc], a                                    ; $58ea: $02
    ld [bc], a                                    ; $58eb: $02
    ld [bc], a                                    ; $58ec: $02
    ld h, h                                       ; $58ed: $64
    ld h, h                                       ; $58ee: $64
    ld h, h                                       ; $58ef: $64
    ld h, h                                       ; $58f0: $64
    ld h, l                                       ; $58f1: $65
    ld h, l                                       ; $58f2: $65
    ld h, l                                       ; $58f3: $65
    ld h, l                                       ; $58f4: $65
    ld h, [hl]                                    ; $58f5: $66
    ld h, a                                       ; $58f6: $67
    ld l, b                                       ; $58f7: $68
    ld l, c                                       ; $58f8: $69
    ld l, d                                       ; $58f9: $6a
    ld l, e                                       ; $58fa: $6b
    ld l, h                                       ; $58fb: $6c
    ld l, l                                       ; $58fc: $6d
    ld [bc], a                                    ; $58fd: $02
    ld [bc], a                                    ; $58fe: $02
    ld [bc], a                                    ; $58ff: $02
    ld [bc], a                                    ; $5900: $02
    ld [bc], a                                    ; $5901: $02
    ld [bc], a                                    ; $5902: $02
    ld [bc], a                                    ; $5903: $02
    ld [bc], a                                    ; $5904: $02
    inc b                                         ; $5905: $04
    inc b                                         ; $5906: $04
    inc b                                         ; $5907: $04
    inc b                                         ; $5908: $04
    inc b                                         ; $5909: $04
    ld bc, $0101                                  ; $590a: $01 $01 $01
    ld h, h                                       ; $590d: $64
    ld h, h                                       ; $590e: $64
    ld b, b                                       ; $590f: $40
    ld h, h                                       ; $5910: $64
    ld h, l                                       ; $5911: $65
    ld h, l                                       ; $5912: $65
    ld l, [hl]                                    ; $5913: $6e
    ld h, l                                       ; $5914: $65
    ld l, a                                       ; $5915: $6f
    ld [hl], b                                    ; $5916: $70
    ld [hl], c                                    ; $5917: $71
    ld [hl], d                                    ; $5918: $72
    ld [hl], e                                    ; $5919: $73
    ld [hl], h                                    ; $591a: $74
    ld [hl], l                                    ; $591b: $75
    halt                                          ; $591c: $76
    ld [bc], a                                    ; $591d: $02
    ld [bc], a                                    ; $591e: $02
    ld [bc], a                                    ; $591f: $02
    ld [bc], a                                    ; $5920: $02
    ld [bc], a                                    ; $5921: $02
    ld [bc], a                                    ; $5922: $02
    ld [bc], a                                    ; $5923: $02
    ld [bc], a                                    ; $5924: $02
    inc b                                         ; $5925: $04
    inc b                                         ; $5926: $04
    inc b                                         ; $5927: $04
    inc b                                         ; $5928: $04
    ld bc, $0101                                  ; $5929: $01 $01 $01
    ld bc, $6464                                  ; $592c: $01 $64 $64
    ld h, h                                       ; $592f: $64
    ld h, h                                       ; $5930: $64
    ld h, l                                       ; $5931: $65
    ld h, l                                       ; $5932: $65
    ld h, l                                       ; $5933: $65
    ld h, l                                       ; $5934: $65
    ld h, [hl]                                    ; $5935: $66
    ld h, a                                       ; $5936: $67
    ld l, b                                       ; $5937: $68
    ld l, c                                       ; $5938: $69
    ld l, d                                       ; $5939: $6a
    ld l, e                                       ; $593a: $6b
    ld l, h                                       ; $593b: $6c
    ld l, l                                       ; $593c: $6d
    ld [bc], a                                    ; $593d: $02
    ld [bc], a                                    ; $593e: $02
    ld [bc], a                                    ; $593f: $02
    ld [bc], a                                    ; $5940: $02
    ld [bc], a                                    ; $5941: $02
    ld [bc], a                                    ; $5942: $02
    ld [bc], a                                    ; $5943: $02
    ld [bc], a                                    ; $5944: $02
    inc b                                         ; $5945: $04
    inc b                                         ; $5946: $04
    inc b                                         ; $5947: $04
    inc b                                         ; $5948: $04
    ld bc, $0101                                  ; $5949: $01 $01 $01
    ld bc, $7877                                  ; $594c: $01 $77 $78
    ld a, c                                       ; $594f: $79
    ld a, d                                       ; $5950: $7a
    ld a, e                                       ; $5951: $7b
    ld a, h                                       ; $5952: $7c
    ld a, l                                       ; $5953: $7d
    ld a, [hl]                                    ; $5954: $7e
    ld a, a                                       ; $5955: $7f
    add b                                         ; $5956: $80
    add c                                         ; $5957: $81
    add d                                         ; $5958: $82
    add e                                         ; $5959: $83
    add h                                         ; $595a: $84
    add l                                         ; $595b: $85
    add [hl]                                      ; $595c: $86
    inc b                                         ; $595d: $04
    ld bc, $0101                                  ; $595e: $01 $01 $01
    inc b                                         ; $5961: $04
    ld bc, $0101                                  ; $5962: $01 $01 $01
    inc b                                         ; $5965: $04
    add hl, bc                                    ; $5966: $09
    add hl, bc                                    ; $5967: $09
    add hl, bc                                    ; $5968: $09
    inc c                                         ; $5969: $0c
    add hl, bc                                    ; $596a: $09
    add hl, bc                                    ; $596b: $09
    add hl, bc                                    ; $596c: $09
    add a                                         ; $596d: $87
    adc b                                         ; $596e: $88
    adc c                                         ; $596f: $89
    adc d                                         ; $5970: $8a
    adc e                                         ; $5971: $8b
    adc h                                         ; $5972: $8c
    adc l                                         ; $5973: $8d
    adc [hl]                                      ; $5974: $8e
    adc a                                         ; $5975: $8f
    sub b                                         ; $5976: $90
    sub c                                         ; $5977: $91
    sub d                                         ; $5978: $92
    sub e                                         ; $5979: $93
    sub h                                         ; $597a: $94
    sub l                                         ; $597b: $95
    sub [hl]                                      ; $597c: $96
    add hl, bc                                    ; $597d: $09
    add hl, bc                                    ; $597e: $09
    add hl, bc                                    ; $597f: $09
    add hl, bc                                    ; $5980: $09
    add hl, bc                                    ; $5981: $09
    add hl, bc                                    ; $5982: $09
    add hl, bc                                    ; $5983: $09
    add hl, bc                                    ; $5984: $09
    add hl, bc                                    ; $5985: $09
    add hl, bc                                    ; $5986: $09
    add hl, bc                                    ; $5987: $09
    add hl, bc                                    ; $5988: $09
    add hl, bc                                    ; $5989: $09
    add hl, bc                                    ; $598a: $09
    add hl, bc                                    ; $598b: $09
    add hl, bc                                    ; $598c: $09
    ld [hl], a                                    ; $598d: $77
    ld a, b                                       ; $598e: $78
    ld a, c                                       ; $598f: $79
    ld a, d                                       ; $5990: $7a
    ld a, e                                       ; $5991: $7b
    ld a, h                                       ; $5992: $7c
    ld a, l                                       ; $5993: $7d
    ld a, [hl]                                    ; $5994: $7e
    ld a, a                                       ; $5995: $7f
    add b                                         ; $5996: $80
    add c                                         ; $5997: $81
    add d                                         ; $5998: $82
    add e                                         ; $5999: $83
    add h                                         ; $599a: $84
    add l                                         ; $599b: $85
    add [hl]                                      ; $599c: $86
    ld bc, $0101                                  ; $599d: $01 $01 $01
    ld bc, $0101                                  ; $59a0: $01 $01 $01
    ld bc, $0101                                  ; $59a3: $01 $01 $01
    add hl, bc                                    ; $59a6: $09
    add hl, bc                                    ; $59a7: $09
    add hl, bc                                    ; $59a8: $09
    add hl, bc                                    ; $59a9: $09
    add hl, bc                                    ; $59aa: $09
    add hl, bc                                    ; $59ab: $09
    add hl, bc                                    ; $59ac: $09
    ld c, c                                       ; $59ad: $49
    ld b, b                                       ; $59ae: $40
    ld b, c                                       ; $59af: $41
    ld b, d                                       ; $59b0: $42
    ld c, b                                       ; $59b1: $48
    ld b, b                                       ; $59b2: $40
    ld b, e                                       ; $59b3: $43
    ld b, d                                       ; $59b4: $42
    ld b, a                                       ; $59b5: $47
    ld b, b                                       ; $59b6: $40
    ld b, h                                       ; $59b7: $44
    ld b, d                                       ; $59b8: $42
    ld b, [hl]                                    ; $59b9: $46
    ld b, b                                       ; $59ba: $40
    ld b, l                                       ; $59bb: $45
    ld b, d                                       ; $59bc: $42
    dec b                                         ; $59bd: $05
    ld [bc], a                                    ; $59be: $02
    dec b                                         ; $59bf: $05
    dec b                                         ; $59c0: $05
    dec b                                         ; $59c1: $05
    ld [bc], a                                    ; $59c2: $02
    dec b                                         ; $59c3: $05
    dec b                                         ; $59c4: $05
    ld h, l                                       ; $59c5: $65
    ld [bc], a                                    ; $59c6: $02
    ld h, l                                       ; $59c7: $65
    dec b                                         ; $59c8: $05
    ld h, l                                       ; $59c9: $65
    ld [bc], a                                    ; $59ca: $02
    dec b                                         ; $59cb: $05
    dec b                                         ; $59cc: $05
    ld b, h                                       ; $59cd: $44
    ld b, b                                       ; $59ce: $40
    sub a                                         ; $59cf: $97
    ld b, d                                       ; $59d0: $42
    ld b, e                                       ; $59d1: $43
    ld b, b                                       ; $59d2: $40
    sbc b                                         ; $59d3: $98
    ld b, d                                       ; $59d4: $42
    ld b, c                                       ; $59d5: $41
    ld b, b                                       ; $59d6: $40
    sbc c                                         ; $59d7: $99
    ld b, d                                       ; $59d8: $42
    ld b, l                                       ; $59d9: $45
    ld b, b                                       ; $59da: $40
    sbc d                                         ; $59db: $9a
    ld b, d                                       ; $59dc: $42
    dec b                                         ; $59dd: $05
    ld [bc], a                                    ; $59de: $02
    dec c                                         ; $59df: $0d
    dec b                                         ; $59e0: $05
    ld h, l                                       ; $59e1: $65
    ld [bc], a                                    ; $59e2: $02
    dec c                                         ; $59e3: $0d
    dec b                                         ; $59e4: $05
    ld h, l                                       ; $59e5: $65
    ld [bc], a                                    ; $59e6: $02
    dec c                                         ; $59e7: $0d
    dec b                                         ; $59e8: $05
    ld h, l                                       ; $59e9: $65
    ld [bc], a                                    ; $59ea: $02
    dec c                                         ; $59eb: $0d
    dec b                                         ; $59ec: $05
    ld b, d                                       ; $59ed: $42
    sbc e                                         ; $59ee: $9b
    ld b, b                                       ; $59ef: $40
    ld b, c                                       ; $59f0: $41
    ld b, d                                       ; $59f1: $42
    sbc h                                         ; $59f2: $9c
    ld b, b                                       ; $59f3: $40
    ld b, e                                       ; $59f4: $43
    ld b, d                                       ; $59f5: $42
    sbc l                                         ; $59f6: $9d
    ld b, b                                       ; $59f7: $40
    ld b, h                                       ; $59f8: $44
    ld b, d                                       ; $59f9: $42
    sbc [hl]                                      ; $59fa: $9e
    ld b, b                                       ; $59fb: $40
    ld b, l                                       ; $59fc: $45
    dec b                                         ; $59fd: $05
    dec c                                         ; $59fe: $0d
    ld [bc], a                                    ; $59ff: $02
    dec b                                         ; $5a00: $05
    dec b                                         ; $5a01: $05
    dec c                                         ; $5a02: $0d
    ld [bc], a                                    ; $5a03: $02
    dec b                                         ; $5a04: $05
    dec b                                         ; $5a05: $05
    dec c                                         ; $5a06: $0d
    ld [bc], a                                    ; $5a07: $02
    ld h, l                                       ; $5a08: $65
    dec b                                         ; $5a09: $05
    dec c                                         ; $5a0a: $0d
    ld [bc], a                                    ; $5a0b: $02
    dec b                                         ; $5a0c: $05
    ld c, b                                       ; $5a0d: $48
    ld b, b                                       ; $5a0e: $40
    ld b, c                                       ; $5a0f: $41
    ld b, d                                       ; $5a10: $42
    ld b, a                                       ; $5a11: $47
    ld b, b                                       ; $5a12: $40
    ld b, e                                       ; $5a13: $43
    ld b, d                                       ; $5a14: $42
    sbc a                                         ; $5a15: $9f
    ld b, b                                       ; $5a16: $40
    ld d, [hl]                                    ; $5a17: $56
    ld d, a                                       ; $5a18: $57
    ld e, [hl]                                    ; $5a19: $5e
    ld b, b                                       ; $5a1a: $40
    ld e, d                                       ; $5a1b: $5a
    ld e, e                                       ; $5a1c: $5b
    dec b                                         ; $5a1d: $05
    ld [bc], a                                    ; $5a1e: $02
    dec b                                         ; $5a1f: $05
    dec b                                         ; $5a20: $05
    ld h, l                                       ; $5a21: $65
    ld [bc], a                                    ; $5a22: $02
    dec b                                         ; $5a23: $05
    dec b                                         ; $5a24: $05
    dec c                                         ; $5a25: $0d
    ld [bc], a                                    ; $5a26: $02
    dec b                                         ; $5a27: $05
    dec b                                         ; $5a28: $05
    ld [bc], a                                    ; $5a29: $02
    ld [bc], a                                    ; $5a2a: $02
    ld [bc], a                                    ; $5a2b: $02
    ld [bc], a                                    ; $5a2c: $02
    ld b, h                                       ; $5a2d: $44
    ld b, b                                       ; $5a2e: $40
    sub a                                         ; $5a2f: $97
    and b                                         ; $5a30: $a0
    ld b, e                                       ; $5a31: $43
    ld b, b                                       ; $5a32: $40
    and c                                         ; $5a33: $a1
    and d                                         ; $5a34: $a2
    ld e, h                                       ; $5a35: $5c
    ld b, b                                       ; $5a36: $40
    and e                                         ; $5a37: $a3
    and h                                         ; $5a38: $a4
    ld e, [hl]                                    ; $5a39: $5e
    ld b, b                                       ; $5a3a: $40
    and l                                         ; $5a3b: $a5
    and [hl]                                      ; $5a3c: $a6
    dec b                                         ; $5a3d: $05
    ld [bc], a                                    ; $5a3e: $02
    dec c                                         ; $5a3f: $0d
    dec c                                         ; $5a40: $0d
    ld h, l                                       ; $5a41: $65
    ld [bc], a                                    ; $5a42: $02
    ld a, [bc]                                    ; $5a43: $0a
    ld a, [bc]                                    ; $5a44: $0a
    dec b                                         ; $5a45: $05
    ld [bc], a                                    ; $5a46: $02
    add hl, bc                                    ; $5a47: $09
    add hl, bc                                    ; $5a48: $09
    ld [bc], a                                    ; $5a49: $02
    ld [bc], a                                    ; $5a4a: $02
    add hl, bc                                    ; $5a4b: $09
    add hl, bc                                    ; $5a4c: $09
    and a                                         ; $5a4d: $a7
    xor b                                         ; $5a4e: $a8
    ld b, b                                       ; $5a4f: $40
    ld b, c                                       ; $5a50: $41
    and d                                         ; $5a51: $a2
    xor c                                         ; $5a52: $a9
    ld b, b                                       ; $5a53: $40
    ld b, e                                       ; $5a54: $43
    and e                                         ; $5a55: $a3
    and h                                         ; $5a56: $a4
    ld b, b                                       ; $5a57: $40
    ld d, [hl]                                    ; $5a58: $56
    and l                                         ; $5a59: $a5
    and [hl]                                      ; $5a5a: $a6
    ld b, b                                       ; $5a5b: $40
    ld e, d                                       ; $5a5c: $5a
    dec c                                         ; $5a5d: $0d
    dec c                                         ; $5a5e: $0d
    ld [bc], a                                    ; $5a5f: $02
    dec b                                         ; $5a60: $05
    ld a, [bc]                                    ; $5a61: $0a
    ld a, [bc]                                    ; $5a62: $0a
    ld [bc], a                                    ; $5a63: $02
    dec b                                         ; $5a64: $05
    add hl, bc                                    ; $5a65: $09
    add hl, bc                                    ; $5a66: $09
    ld [bc], a                                    ; $5a67: $02
    dec b                                         ; $5a68: $05
    add hl, bc                                    ; $5a69: $09
    add hl, bc                                    ; $5a6a: $09
    ld [bc], a                                    ; $5a6b: $02
    ld [bc], a                                    ; $5a6c: $02
    ld h, h                                       ; $5a6d: $64
    ld b, b                                       ; $5a6e: $40
    ld h, h                                       ; $5a6f: $64
    ld h, h                                       ; $5a70: $64
    ld h, l                                       ; $5a71: $65
    ld l, [hl]                                    ; $5a72: $6e
    ld h, l                                       ; $5a73: $65
    ld h, l                                       ; $5a74: $65
    ld l, a                                       ; $5a75: $6f
    ld [hl], b                                    ; $5a76: $70
    ld [hl], c                                    ; $5a77: $71
    ld [hl], d                                    ; $5a78: $72
    ld [hl], e                                    ; $5a79: $73
    ld [hl], h                                    ; $5a7a: $74
    ld [hl], l                                    ; $5a7b: $75
    halt                                          ; $5a7c: $76
    ld [bc], a                                    ; $5a7d: $02
    ld [bc], a                                    ; $5a7e: $02
    ld [bc], a                                    ; $5a7f: $02
    ld [bc], a                                    ; $5a80: $02
    ld [bc], a                                    ; $5a81: $02
    ld [bc], a                                    ; $5a82: $02
    ld [bc], a                                    ; $5a83: $02
    ld [bc], a                                    ; $5a84: $02
    inc b                                         ; $5a85: $04
    inc b                                         ; $5a86: $04
    inc b                                         ; $5a87: $04
    inc b                                         ; $5a88: $04
    ld bc, $0101                                  ; $5a89: $01 $01 $01
    ld bc, $4064                                  ; $5a8c: $01 $64 $40
    xor d                                         ; $5a8f: $aa
    xor e                                         ; $5a90: $ab
    ld h, l                                       ; $5a91: $65
    ld l, [hl]                                    ; $5a92: $6e
    xor h                                         ; $5a93: $ac
    xor l                                         ; $5a94: $ad
    ld h, [hl]                                    ; $5a95: $66
    ld h, a                                       ; $5a96: $67
    ld l, b                                       ; $5a97: $68
    ld l, c                                       ; $5a98: $69
    ld l, d                                       ; $5a99: $6a
    ld l, e                                       ; $5a9a: $6b
    ld l, h                                       ; $5a9b: $6c
    ld l, l                                       ; $5a9c: $6d
    ld [bc], a                                    ; $5a9d: $02
    ld [bc], a                                    ; $5a9e: $02
    add hl, bc                                    ; $5a9f: $09
    add hl, bc                                    ; $5aa0: $09
    ld [bc], a                                    ; $5aa1: $02
    ld [bc], a                                    ; $5aa2: $02
    add hl, bc                                    ; $5aa3: $09
    add hl, bc                                    ; $5aa4: $09
    inc b                                         ; $5aa5: $04
    inc b                                         ; $5aa6: $04
    inc b                                         ; $5aa7: $04
    inc b                                         ; $5aa8: $04
    ld bc, $0101                                  ; $5aa9: $01 $01 $01
    ld bc, $afae                                  ; $5aac: $01 $ae $af
    ld b, b                                       ; $5aaf: $40
    ld h, h                                       ; $5ab0: $64
    xor h                                         ; $5ab1: $ac
    xor l                                         ; $5ab2: $ad
    ld l, [hl]                                    ; $5ab3: $6e
    ld h, l                                       ; $5ab4: $65
    ld l, a                                       ; $5ab5: $6f
    ld [hl], b                                    ; $5ab6: $70
    ld [hl], c                                    ; $5ab7: $71
    ld [hl], d                                    ; $5ab8: $72
    ld [hl], e                                    ; $5ab9: $73
    ld [hl], h                                    ; $5aba: $74
    ld [hl], l                                    ; $5abb: $75
    halt                                          ; $5abc: $76
    add hl, bc                                    ; $5abd: $09
    add hl, bc                                    ; $5abe: $09
    ld [bc], a                                    ; $5abf: $02
    ld [bc], a                                    ; $5ac0: $02
    add hl, bc                                    ; $5ac1: $09
    add hl, bc                                    ; $5ac2: $09
    ld [bc], a                                    ; $5ac3: $02
    ld [bc], a                                    ; $5ac4: $02
    inc b                                         ; $5ac5: $04
    inc b                                         ; $5ac6: $04
    inc b                                         ; $5ac7: $04
    inc b                                         ; $5ac8: $04
    ld bc, $0101                                  ; $5ac9: $01 $01 $01
    ld bc, $6464                                  ; $5acc: $01 $64 $64
    ld b, b                                       ; $5acf: $40
    ld h, h                                       ; $5ad0: $64
    ld h, l                                       ; $5ad1: $65
    ld h, l                                       ; $5ad2: $65
    ld l, [hl]                                    ; $5ad3: $6e
    ld h, l                                       ; $5ad4: $65
    ld h, [hl]                                    ; $5ad5: $66
    ld h, a                                       ; $5ad6: $67
    ld l, b                                       ; $5ad7: $68
    ld l, c                                       ; $5ad8: $69
    ld l, d                                       ; $5ad9: $6a
    ld l, e                                       ; $5ada: $6b
    ld l, h                                       ; $5adb: $6c
    ld l, l                                       ; $5adc: $6d
    ld [bc], a                                    ; $5add: $02
    ld [bc], a                                    ; $5ade: $02
    ld [bc], a                                    ; $5adf: $02
    ld [bc], a                                    ; $5ae0: $02
    ld [bc], a                                    ; $5ae1: $02
    ld [bc], a                                    ; $5ae2: $02
    ld [bc], a                                    ; $5ae3: $02
    ld [bc], a                                    ; $5ae4: $02
    inc b                                         ; $5ae5: $04
    inc b                                         ; $5ae6: $04
    inc b                                         ; $5ae7: $04
    inc b                                         ; $5ae8: $04
    ld bc, $0101                                  ; $5ae9: $01 $01 $01
    ld bc, $8887                                  ; $5aec: $01 $87 $88
    adc c                                         ; $5aef: $89
    adc d                                         ; $5af0: $8a
    adc e                                         ; $5af1: $8b
    adc h                                         ; $5af2: $8c
    adc l                                         ; $5af3: $8d
    adc [hl]                                      ; $5af4: $8e
    or b                                          ; $5af5: $b0
    or c                                          ; $5af6: $b1
    sub c                                         ; $5af7: $91
    sub d                                         ; $5af8: $92
    or d                                          ; $5af9: $b2
    or e                                          ; $5afa: $b3
    sub l                                         ; $5afb: $95
    sub [hl]                                      ; $5afc: $96
    add hl, bc                                    ; $5afd: $09
    add hl, bc                                    ; $5afe: $09
    add hl, bc                                    ; $5aff: $09
    add hl, bc                                    ; $5b00: $09
    add hl, bc                                    ; $5b01: $09
    add hl, bc                                    ; $5b02: $09
    add hl, bc                                    ; $5b03: $09
    add hl, bc                                    ; $5b04: $09
    ld c, $0e                                     ; $5b05: $0e $0e
    add hl, bc                                    ; $5b07: $09
    add hl, bc                                    ; $5b08: $09
    ld c, $0e                                     ; $5b09: $0e $0e
    add hl, bc                                    ; $5b0b: $09
    add hl, bc                                    ; $5b0c: $09
    ld [hl], a                                    ; $5b0d: $77
    ld a, b                                       ; $5b0e: $78
    ld a, c                                       ; $5b0f: $79
    ld a, d                                       ; $5b10: $7a
    ld a, e                                       ; $5b11: $7b
    ld a, h                                       ; $5b12: $7c
    ld a, l                                       ; $5b13: $7d
    or h                                          ; $5b14: $b4
    ld a, a                                       ; $5b15: $7f
    add b                                         ; $5b16: $80
    add c                                         ; $5b17: $81
    or l                                          ; $5b18: $b5
    add e                                         ; $5b19: $83
    add h                                         ; $5b1a: $84
    add l                                         ; $5b1b: $85
    or [hl]                                       ; $5b1c: $b6
    ld bc, $0101                                  ; $5b1d: $01 $01 $01
    ld bc, $0101                                  ; $5b20: $01 $01 $01
    ld bc, $010b                                  ; $5b23: $01 $0b $01
    add hl, bc                                    ; $5b26: $09
    add hl, bc                                    ; $5b27: $09
    dec bc                                        ; $5b28: $0b
    add hl, bc                                    ; $5b29: $09
    add hl, bc                                    ; $5b2a: $09
    add hl, bc                                    ; $5b2b: $09
    dec bc                                        ; $5b2c: $0b
    add a                                         ; $5b2d: $87
    adc b                                         ; $5b2e: $88
    adc c                                         ; $5b2f: $89
    adc d                                         ; $5b30: $8a
    or h                                          ; $5b31: $b4
    adc h                                         ; $5b32: $8c
    adc l                                         ; $5b33: $8d
    adc [hl]                                      ; $5b34: $8e
    or l                                          ; $5b35: $b5
    sub b                                         ; $5b36: $90
    sub c                                         ; $5b37: $91
    sub d                                         ; $5b38: $92
    or a                                          ; $5b39: $b7
    sub h                                         ; $5b3a: $94
    sub l                                         ; $5b3b: $95
    sub [hl]                                      ; $5b3c: $96
    add hl, bc                                    ; $5b3d: $09
    add hl, bc                                    ; $5b3e: $09
    add hl, bc                                    ; $5b3f: $09
    add hl, bc                                    ; $5b40: $09
    dec hl                                        ; $5b41: $2b
    add hl, bc                                    ; $5b42: $09
    add hl, bc                                    ; $5b43: $09
    add hl, bc                                    ; $5b44: $09
    dec hl                                        ; $5b45: $2b
    add hl, bc                                    ; $5b46: $09
    add hl, bc                                    ; $5b47: $09
    add hl, bc                                    ; $5b48: $09
    dec bc                                        ; $5b49: $0b
    add hl, bc                                    ; $5b4a: $09
    add hl, bc                                    ; $5b4b: $09
    add hl, bc                                    ; $5b4c: $09
    ld [hl], a                                    ; $5b4d: $77
    ld a, b                                       ; $5b4e: $78
    ld a, c                                       ; $5b4f: $79
    ld a, d                                       ; $5b50: $7a
    ld a, e                                       ; $5b51: $7b
    ld a, h                                       ; $5b52: $7c
    ld a, l                                       ; $5b53: $7d
    ld a, [hl]                                    ; $5b54: $7e
    ld a, a                                       ; $5b55: $7f
    add b                                         ; $5b56: $80
    cp b                                          ; $5b57: $b8
    cp c                                          ; $5b58: $b9
    add e                                         ; $5b59: $83
    add h                                         ; $5b5a: $84
    cp d                                          ; $5b5b: $ba
    cp e                                          ; $5b5c: $bb
    ld bc, $0101                                  ; $5b5d: $01 $01 $01
    ld bc, $0101                                  ; $5b60: $01 $01 $01
    ld bc, $0101                                  ; $5b63: $01 $01 $01
    add hl, bc                                    ; $5b66: $09
    rrca                                          ; $5b67: $0f
    rrca                                          ; $5b68: $0f
    add hl, bc                                    ; $5b69: $09
    add hl, bc                                    ; $5b6a: $09
    rrca                                          ; $5b6b: $0f
    rrca                                          ; $5b6c: $0f
    ld c, l                                       ; $5b6d: $4d
    ld c, h                                       ; $5b6e: $4c
    ld c, e                                       ; $5b6f: $4b
    ld c, d                                       ; $5b70: $4a
    ld d, c                                       ; $5b71: $51
    ld d, b                                       ; $5b72: $50
    ld c, a                                       ; $5b73: $4f
    ld c, [hl]                                    ; $5b74: $4e
    ld d, l                                       ; $5b75: $55
    ld d, h                                       ; $5b76: $54
    ld d, e                                       ; $5b77: $53
    ld d, d                                       ; $5b78: $52
    ld c, l                                       ; $5b79: $4d
    ld c, h                                       ; $5b7a: $4c
    ld c, e                                       ; $5b7b: $4b
    ld c, d                                       ; $5b7c: $4a
    inc hl                                        ; $5b7d: $23
    inc hl                                        ; $5b7e: $23
    inc hl                                        ; $5b7f: $23
    inc hl                                        ; $5b80: $23
    inc hl                                        ; $5b81: $23
    inc hl                                        ; $5b82: $23
    inc hl                                        ; $5b83: $23
    inc hl                                        ; $5b84: $23
    inc hl                                        ; $5b85: $23
    inc hl                                        ; $5b86: $23
    inc hl                                        ; $5b87: $23
    inc hl                                        ; $5b88: $23
    inc hl                                        ; $5b89: $23
    inc hl                                        ; $5b8a: $23
    inc hl                                        ; $5b8b: $23
    inc hl                                        ; $5b8c: $23
    ld b, d                                       ; $5b8d: $42
    ld b, d                                       ; $5b8e: $42
    ld b, d                                       ; $5b8f: $42
    ld b, h                                       ; $5b90: $44
    ld b, d                                       ; $5b91: $42
    ld b, d                                       ; $5b92: $42
    ld b, d                                       ; $5b93: $42
    ld b, e                                       ; $5b94: $43
    ld b, d                                       ; $5b95: $42
    ld b, d                                       ; $5b96: $42
    ld b, d                                       ; $5b97: $42
    ld b, c                                       ; $5b98: $41
    ld b, d                                       ; $5b99: $42
    ld b, d                                       ; $5b9a: $42
    ld b, d                                       ; $5b9b: $42
    ld b, l                                       ; $5b9c: $45
    dec b                                         ; $5b9d: $05
    dec b                                         ; $5b9e: $05
    dec b                                         ; $5b9f: $05
    dec b                                         ; $5ba0: $05
    dec b                                         ; $5ba1: $05
    dec b                                         ; $5ba2: $05
    dec b                                         ; $5ba3: $05
    ld h, l                                       ; $5ba4: $65
    dec b                                         ; $5ba5: $05
    dec b                                         ; $5ba6: $05
    dec b                                         ; $5ba7: $05
    ld h, l                                       ; $5ba8: $65
    dec b                                         ; $5ba9: $05
    dec b                                         ; $5baa: $05
    dec b                                         ; $5bab: $05
    ld h, l                                       ; $5bac: $65
    ld b, b                                       ; $5bad: $40
    ccf                                           ; $5bae: $3f
    ccf                                           ; $5baf: $3f
    ccf                                           ; $5bb0: $3f
    ld b, b                                       ; $5bb1: $40
    ccf                                           ; $5bb2: $3f
    ccf                                           ; $5bb3: $3f
    ccf                                           ; $5bb4: $3f
    ld b, b                                       ; $5bb5: $40
    ccf                                           ; $5bb6: $3f
    ccf                                           ; $5bb7: $3f
    ccf                                           ; $5bb8: $3f
    ld b, b                                       ; $5bb9: $40
    ccf                                           ; $5bba: $3f
    ccf                                           ; $5bbb: $3f
    ccf                                           ; $5bbc: $3f
    add d                                         ; $5bbd: $82
    add d                                         ; $5bbe: $82
    add d                                         ; $5bbf: $82
    add d                                         ; $5bc0: $82
    add d                                         ; $5bc1: $82
    add d                                         ; $5bc2: $82
    add d                                         ; $5bc3: $82
    add d                                         ; $5bc4: $82
    add d                                         ; $5bc5: $82
    add d                                         ; $5bc6: $82
    add d                                         ; $5bc7: $82
    add d                                         ; $5bc8: $82
    add d                                         ; $5bc9: $82
    add d                                         ; $5bca: $82
    add d                                         ; $5bcb: $82
    add d                                         ; $5bcc: $82
    ld d, c                                       ; $5bcd: $51
    ld d, b                                       ; $5bce: $50
    ld c, a                                       ; $5bcf: $4f
    ld c, [hl]                                    ; $5bd0: $4e
    ld h, d                                       ; $5bd1: $62
    ld h, c                                       ; $5bd2: $61
    ld h, b                                       ; $5bd3: $60
    ld e, a                                       ; $5bd4: $5f
    ld h, e                                       ; $5bd5: $63
    ld h, e                                       ; $5bd6: $63
    ld h, e                                       ; $5bd7: $63
    ld h, e                                       ; $5bd8: $63
    ld e, e                                       ; $5bd9: $5b
    ld e, e                                       ; $5bda: $5b
    ld e, e                                       ; $5bdb: $5b
    ld e, e                                       ; $5bdc: $5b
    inc hl                                        ; $5bdd: $23
    inc hl                                        ; $5bde: $23
    inc hl                                        ; $5bdf: $23
    inc hl                                        ; $5be0: $23
    inc hl                                        ; $5be1: $23
    inc hl                                        ; $5be2: $23
    inc hl                                        ; $5be3: $23
    inc hl                                        ; $5be4: $23
    dec b                                         ; $5be5: $05
    dec b                                         ; $5be6: $05
    dec b                                         ; $5be7: $05
    dec b                                         ; $5be8: $05
    ld [bc], a                                    ; $5be9: $02
    ld [bc], a                                    ; $5bea: $02
    ld [bc], a                                    ; $5beb: $02
    ld [bc], a                                    ; $5bec: $02
    ld c, b                                       ; $5bed: $48
    ld b, b                                       ; $5bee: $40
    ld b, c                                       ; $5bef: $41
    ld b, d                                       ; $5bf0: $42
    ld b, a                                       ; $5bf1: $47
    ld b, b                                       ; $5bf2: $40
    ld b, e                                       ; $5bf3: $43
    ld b, d                                       ; $5bf4: $42
    sbc a                                         ; $5bf5: $9f
    ld b, b                                       ; $5bf6: $40
    ld d, [hl]                                    ; $5bf7: $56
    ld d, a                                       ; $5bf8: $57
    ld e, [hl]                                    ; $5bf9: $5e
    ld b, b                                       ; $5bfa: $40
    ld e, d                                       ; $5bfb: $5a
    ld e, e                                       ; $5bfc: $5b
    dec b                                         ; $5bfd: $05
    ld [bc], a                                    ; $5bfe: $02
    dec b                                         ; $5bff: $05
    dec b                                         ; $5c00: $05
    ld h, l                                       ; $5c01: $65
    ld [bc], a                                    ; $5c02: $02
    dec b                                         ; $5c03: $05
    dec b                                         ; $5c04: $05
    dec c                                         ; $5c05: $0d
    ld [bc], a                                    ; $5c06: $02
    dec b                                         ; $5c07: $05
    dec h                                         ; $5c08: $25
    ld [bc], a                                    ; $5c09: $02
    ld [bc], a                                    ; $5c0a: $02
    ld [bc], a                                    ; $5c0b: $02
    ld [bc], a                                    ; $5c0c: $02
    ld b, d                                       ; $5c0d: $42
    ld b, d                                       ; $5c0e: $42
    ld b, d                                       ; $5c0f: $42
    ld b, h                                       ; $5c10: $44
    ld b, d                                       ; $5c11: $42
    ld b, d                                       ; $5c12: $42
    ld b, d                                       ; $5c13: $42
    ld b, e                                       ; $5c14: $43
    ld e, c                                       ; $5c15: $59
    ld e, b                                       ; $5c16: $58
    ld d, a                                       ; $5c17: $57
    ld e, h                                       ; $5c18: $5c
    ld e, e                                       ; $5c19: $5b
    ld e, e                                       ; $5c1a: $5b
    ld e, e                                       ; $5c1b: $5b
    ld e, [hl]                                    ; $5c1c: $5e
    dec b                                         ; $5c1d: $05
    dec b                                         ; $5c1e: $05
    dec b                                         ; $5c1f: $05
    dec b                                         ; $5c20: $05
    dec b                                         ; $5c21: $05
    dec b                                         ; $5c22: $05
    dec b                                         ; $5c23: $05
    ld h, l                                       ; $5c24: $65
    dec h                                         ; $5c25: $25
    dec h                                         ; $5c26: $25
    dec h                                         ; $5c27: $25
    dec b                                         ; $5c28: $05
    ld [bc], a                                    ; $5c29: $02
    ld [bc], a                                    ; $5c2a: $02
    ld [bc], a                                    ; $5c2b: $02
    ld [bc], a                                    ; $5c2c: $02
    ld h, h                                       ; $5c2d: $64
    ld h, h                                       ; $5c2e: $64
    ld h, h                                       ; $5c2f: $64
    ld h, h                                       ; $5c30: $64
    ld h, l                                       ; $5c31: $65
    ld h, l                                       ; $5c32: $65
    ld h, l                                       ; $5c33: $65
    ld h, l                                       ; $5c34: $65
    ld l, a                                       ; $5c35: $6f
    ld [hl], b                                    ; $5c36: $70
    ld [hl], c                                    ; $5c37: $71
    ld [hl], d                                    ; $5c38: $72
    ld [hl], e                                    ; $5c39: $73
    ld [hl], h                                    ; $5c3a: $74
    ld [hl], l                                    ; $5c3b: $75
    halt                                          ; $5c3c: $76
    ld [bc], a                                    ; $5c3d: $02
    ld [bc], a                                    ; $5c3e: $02
    ld [bc], a                                    ; $5c3f: $02
    ld [bc], a                                    ; $5c40: $02
    ld [bc], a                                    ; $5c41: $02
    ld [bc], a                                    ; $5c42: $02
    ld [bc], a                                    ; $5c43: $02
    ld [bc], a                                    ; $5c44: $02
    inc b                                         ; $5c45: $04
    inc b                                         ; $5c46: $04
    inc b                                         ; $5c47: $04
    inc b                                         ; $5c48: $04
    ld bc, $0101                                  ; $5c49: $01 $01 $01
    ld bc, $4064                                  ; $5c4c: $01 $64 $40
    ld h, h                                       ; $5c4f: $64
    ld h, h                                       ; $5c50: $64
    ld h, l                                       ; $5c51: $65
    ld l, [hl]                                    ; $5c52: $6e
    ld h, l                                       ; $5c53: $65
    ld h, l                                       ; $5c54: $65
    ld h, [hl]                                    ; $5c55: $66
    ld h, a                                       ; $5c56: $67
    ld l, b                                       ; $5c57: $68
    ld l, c                                       ; $5c58: $69
    ld l, d                                       ; $5c59: $6a
    ld l, e                                       ; $5c5a: $6b
    ld l, h                                       ; $5c5b: $6c
    ld l, l                                       ; $5c5c: $6d
    ld [bc], a                                    ; $5c5d: $02
    ld [bc], a                                    ; $5c5e: $02
    ld [bc], a                                    ; $5c5f: $02
    ld [bc], a                                    ; $5c60: $02
    ld [bc], a                                    ; $5c61: $02
    ld [bc], a                                    ; $5c62: $02
    ld [bc], a                                    ; $5c63: $02
    ld [bc], a                                    ; $5c64: $02
    inc b                                         ; $5c65: $04
    inc b                                         ; $5c66: $04
    inc b                                         ; $5c67: $04
    inc b                                         ; $5c68: $04
    ld bc, $0101                                  ; $5c69: $01 $01 $01
    ld bc, $6464                                  ; $5c6c: $01 $64 $64
    ld h, h                                       ; $5c6f: $64
    ld h, h                                       ; $5c70: $64
    ld h, l                                       ; $5c71: $65
    ld h, l                                       ; $5c72: $65
    ld h, l                                       ; $5c73: $65
    ld h, l                                       ; $5c74: $65
    ld l, a                                       ; $5c75: $6f
    ld [hl], b                                    ; $5c76: $70
    ld [hl], c                                    ; $5c77: $71
    ld [hl], d                                    ; $5c78: $72
    ld [hl], e                                    ; $5c79: $73
    ld [hl], h                                    ; $5c7a: $74
    ld [hl], l                                    ; $5c7b: $75
    halt                                          ; $5c7c: $76
    ld [bc], a                                    ; $5c7d: $02
    ld [bc], a                                    ; $5c7e: $02
    ld [bc], a                                    ; $5c7f: $02
    ld [bc], a                                    ; $5c80: $02
    ld [bc], a                                    ; $5c81: $02
    ld [bc], a                                    ; $5c82: $02
    ld [bc], a                                    ; $5c83: $02
    ld [bc], a                                    ; $5c84: $02
    inc b                                         ; $5c85: $04
    inc b                                         ; $5c86: $04
    inc b                                         ; $5c87: $04
    inc b                                         ; $5c88: $04
    ld bc, $0101                                  ; $5c89: $01 $01 $01
    inc b                                         ; $5c8c: $04
    add a                                         ; $5c8d: $87
    adc b                                         ; $5c8e: $88
    adc c                                         ; $5c8f: $89
    adc d                                         ; $5c90: $8a
    adc e                                         ; $5c91: $8b
    adc h                                         ; $5c92: $8c
    adc l                                         ; $5c93: $8d
    adc [hl]                                      ; $5c94: $8e
    adc a                                         ; $5c95: $8f
    sub b                                         ; $5c96: $90
    sub c                                         ; $5c97: $91
    sub d                                         ; $5c98: $92
    sub e                                         ; $5c99: $93
    sub h                                         ; $5c9a: $94
    sub l                                         ; $5c9b: $95
    sub [hl]                                      ; $5c9c: $96
    add hl, bc                                    ; $5c9d: $09
    add hl, bc                                    ; $5c9e: $09
    add hl, bc                                    ; $5c9f: $09
    inc c                                         ; $5ca0: $0c
    add hl, bc                                    ; $5ca1: $09
    add hl, bc                                    ; $5ca2: $09
    add hl, bc                                    ; $5ca3: $09
    inc c                                         ; $5ca4: $0c
    add hl, bc                                    ; $5ca5: $09
    add hl, bc                                    ; $5ca6: $09
    add hl, bc                                    ; $5ca7: $09
    inc c                                         ; $5ca8: $0c
    add hl, bc                                    ; $5ca9: $09
    add hl, bc                                    ; $5caa: $09
    add hl, bc                                    ; $5cab: $09
    inc c                                         ; $5cac: $0c
    cp h                                          ; $5cad: $bc
    cp l                                          ; $5cae: $bd
    cp [hl]                                       ; $5caf: $be
    cp a                                          ; $5cb0: $bf
    ret nz                                        ; $5cb1: $c0

    pop bc                                        ; $5cb2: $c1
    jp nz, $66c3                                  ; $5cb3: $c2 $c3 $66

    ld h, a                                       ; $5cb6: $67
    ld l, b                                       ; $5cb7: $68
    ld l, c                                       ; $5cb8: $69
    ld l, d                                       ; $5cb9: $6a
    ld l, e                                       ; $5cba: $6b
    ld l, h                                       ; $5cbb: $6c
    ld l, l                                       ; $5cbc: $6d
    inc c                                         ; $5cbd: $0c
    add hl, bc                                    ; $5cbe: $09
    add hl, bc                                    ; $5cbf: $09
    add hl, bc                                    ; $5cc0: $09
    inc c                                         ; $5cc1: $0c
    add hl, bc                                    ; $5cc2: $09
    add hl, bc                                    ; $5cc3: $09
    add hl, bc                                    ; $5cc4: $09
    inc b                                         ; $5cc5: $04
    ld bc, $0101                                  ; $5cc6: $01 $01 $01
    inc b                                         ; $5cc9: $04
    ld bc, $0101                                  ; $5cca: $01 $01 $01
    call nz, $c6c5                                ; $5ccd: $c4 $c5 $c6
    add $c7                                       ; $5cd0: $c6 $c7
    ret z                                         ; $5cd2: $c8

    ret                                           ; $5cd3: $c9


    jp z, $cb6f                                   ; $5cd4: $ca $6f $cb

    call z, Call_08e_73cd                         ; $5cd7: $cc $cd $73
    ret z                                         ; $5cda: $c8

    adc $cf                                       ; $5cdb: $ce $cf
    add hl, bc                                    ; $5cdd: $09
    ld a, [bc]                                    ; $5cde: $0a
    ld a, [bc]                                    ; $5cdf: $0a
    ld a, [bc]                                    ; $5ce0: $0a
    add hl, bc                                    ; $5ce1: $09
    ld a, [bc]                                    ; $5ce2: $0a
    dec bc                                        ; $5ce3: $0b
    ld a, [bc]                                    ; $5ce4: $0a
    ld bc, $0b0a                                  ; $5ce5: $01 $0a $0b
    dec bc                                        ; $5ce8: $0b
    ld bc, $0b0a                                  ; $5ce9: $01 $0a $0b
    dec bc                                        ; $5cec: $0b
    ret nc                                        ; $5ced: $d0

    pop de                                        ; $5cee: $d1
    jp nc, $d4d3                                  ; $5cef: $d2 $d3 $d4

    push de                                       ; $5cf2: $d5
    sub $42                                       ; $5cf3: $d6 $42
    rst $10                                       ; $5cf5: $d7
    ret c                                         ; $5cf6: $d8

    ld b, d                                       ; $5cf7: $42
    ld b, d                                       ; $5cf8: $42
    reti                                          ; $5cf9: $d9


    jp c, $dcdb                                   ; $5cfa: $da $db $dc

    ld [$0808], sp                                ; $5cfd: $08 $08 $08
    ld [$0808], sp                                ; $5d00: $08 $08 $08
    ld [$0800], sp                                ; $5d03: $08 $00 $08
    ld [$0000], sp                                ; $5d06: $08 $00 $00
    ld [$0808], sp                                ; $5d09: $08 $08 $08
    ld [$cb87], sp                                ; $5d0c: $08 $87 $cb
    db $dd                                        ; $5d0f: $dd
    sbc $8b                                       ; $5d10: $de $8b
    ret z                                         ; $5d12: $c8

    jp z, $8fca                                   ; $5d13: $ca $ca $8f

    rst $18                                       ; $5d16: $df
    ldh [$e0], a                                  ; $5d17: $e0 $e0
    sub e                                         ; $5d19: $93
    sub h                                         ; $5d1a: $94
    sub l                                         ; $5d1b: $95
    sub [hl]                                      ; $5d1c: $96
    add hl, bc                                    ; $5d1d: $09
    ld a, [bc]                                    ; $5d1e: $0a
    dec bc                                        ; $5d1f: $0b
    dec bc                                        ; $5d20: $0b
    add hl, bc                                    ; $5d21: $09
    ld a, [bc]                                    ; $5d22: $0a
    ld a, [bc]                                    ; $5d23: $0a
    ld a, [bc]                                    ; $5d24: $0a
    add hl, bc                                    ; $5d25: $09
    ld a, [bc]                                    ; $5d26: $0a
    ld a, [bc]                                    ; $5d27: $0a
    ld a, [bc]                                    ; $5d28: $0a
    add hl, bc                                    ; $5d29: $09
    inc c                                         ; $5d2a: $0c
    inc c                                         ; $5d2b: $0c
    inc c                                         ; $5d2c: $0c
    pop hl                                        ; $5d2d: $e1
    ld [c], a                                     ; $5d2e: $e2
    db $e3                                        ; $5d2f: $e3
    db $e4                                        ; $5d30: $e4
    push hl                                       ; $5d31: $e5
    and $e5                                       ; $5d32: $e6 $e5
    and $e7                                       ; $5d34: $e6 $e7
    ldh [$e7], a                                  ; $5d36: $e0 $e7
    ldh [$83], a                                  ; $5d38: $e0 $83
    add h                                         ; $5d3a: $84
    add l                                         ; $5d3b: $85
    add [hl]                                      ; $5d3c: $86
    ld [$0808], sp                                ; $5d3d: $08 $08 $08
    ld [$0a0a], sp                                ; $5d40: $08 $0a $0a
    ld a, [bc]                                    ; $5d43: $0a
    ld a, [bc]                                    ; $5d44: $0a
    ld a, [bc]                                    ; $5d45: $0a
    ld a, [bc]                                    ; $5d46: $0a
    ld a, [bc]                                    ; $5d47: $0a
    ld a, [bc]                                    ; $5d48: $0a
    add hl, bc                                    ; $5d49: $09
    inc c                                         ; $5d4a: $0c
    inc c                                         ; $5d4b: $0c
    inc c                                         ; $5d4c: $0c
    call nz, $e9e8                                ; $5d4d: $c4 $e8 $e9
    ld [$ebc7], a                                 ; $5d50: $ea $c7 $eb
    db $ec                                        ; $5d53: $ec
    db $ed                                        ; $5d54: $ed
    ld l, a                                       ; $5d55: $6f
    ld [hl], b                                    ; $5d56: $70
    ld [hl], c                                    ; $5d57: $71
    ld [hl], d                                    ; $5d58: $72
    ld [hl], e                                    ; $5d59: $73
    ld [hl], h                                    ; $5d5a: $74
    ld [hl], l                                    ; $5d5b: $75
    halt                                          ; $5d5c: $76
    add hl, bc                                    ; $5d5d: $09
    add hl, bc                                    ; $5d5e: $09
    add hl, bc                                    ; $5d5f: $09
    add hl, bc                                    ; $5d60: $09
    add hl, bc                                    ; $5d61: $09
    add hl, bc                                    ; $5d62: $09
    add hl, bc                                    ; $5d63: $09
    add hl, bc                                    ; $5d64: $09
    ld bc, $0101                                  ; $5d65: $01 $01 $01
    ld bc, $0101                                  ; $5d68: $01 $01 $01
    ld bc, $bc01                                  ; $5d6b: $01 $01 $bc
    cp l                                          ; $5d6e: $bd
    cp [hl]                                       ; $5d6f: $be
    cp a                                          ; $5d70: $bf
    ret nz                                        ; $5d71: $c0

    pop bc                                        ; $5d72: $c1
    jp nz, $66c3                                  ; $5d73: $c2 $c3 $66

    ld h, a                                       ; $5d76: $67
    ld l, b                                       ; $5d77: $68
    ld l, c                                       ; $5d78: $69
    ld l, d                                       ; $5d79: $6a
    ld l, e                                       ; $5d7a: $6b
    ld l, h                                       ; $5d7b: $6c
    ld l, l                                       ; $5d7c: $6d
    add hl, bc                                    ; $5d7d: $09
    add hl, bc                                    ; $5d7e: $09
    add hl, bc                                    ; $5d7f: $09
    add hl, bc                                    ; $5d80: $09
    add hl, bc                                    ; $5d81: $09
    add hl, bc                                    ; $5d82: $09
    add hl, bc                                    ; $5d83: $09
    add hl, bc                                    ; $5d84: $09
    ld bc, $0101                                  ; $5d85: $01 $01 $01
    ld bc, $0101                                  ; $5d88: $01 $01 $01
    ld bc, $ee01                                  ; $5d8b: $01 $01 $ee
    rst $28                                       ; $5d8e: $ef
    ldh a, [$f1]                                  ; $5d8f: $f0 $f1
    ld a, [c]                                     ; $5d91: $f2
    di                                            ; $5d92: $f3
    db $f4                                        ; $5d93: $f4
    ld b, d                                       ; $5d94: $42
    ld b, d                                       ; $5d95: $42
    ld b, d                                       ; $5d96: $42
    push af                                       ; $5d97: $f5
    ld b, d                                       ; $5d98: $42
    db $db                                        ; $5d99: $db
    jp c, $dcdb                                   ; $5d9a: $da $db $dc

    ld [$0808], sp                                ; $5d9d: $08 $08 $08
    ld [$0808], sp                                ; $5da0: $08 $08 $08
    ld [$0000], sp                                ; $5da3: $08 $00 $00
    nop                                           ; $5da6: $00
    ld [$2800], sp                                ; $5da7: $08 $00 $28
    ld [$0808], sp                                ; $5daa: $08 $08 $08
    pop af                                        ; $5dad: $f1
    pop af                                        ; $5dae: $f1
    or $f7                                        ; $5daf: $f6 $f7
    ld b, d                                       ; $5db1: $42
    ld b, d                                       ; $5db2: $42
    ld hl, sp-$07                                 ; $5db3: $f8 $f9
    ld b, d                                       ; $5db5: $42
    ld b, d                                       ; $5db6: $42
    ld b, d                                       ; $5db7: $42
    ld b, d                                       ; $5db8: $42
    db $db                                        ; $5db9: $db
    jp c, $dcdb                                   ; $5dba: $da $db $dc

    ld [$0808], sp                                ; $5dbd: $08 $08 $08
    ld [$0000], sp                                ; $5dc0: $08 $00 $00
    jr z, @+$0a                                   ; $5dc3: $28 $08

    nop                                           ; $5dc5: $00
    nop                                           ; $5dc6: $00
    nop                                           ; $5dc7: $00
    nop                                           ; $5dc8: $00
    jr z, jr_08e_5dd3                             ; $5dc9: $28 $08

    ld [$fa08], sp                                ; $5dcb: $08 $08 $fa
    db $d3                                        ; $5dce: $d3
    ei                                            ; $5dcf: $fb
    pop af                                        ; $5dd0: $f1
    db $fc                                        ; $5dd1: $fc
    db $fd                                        ; $5dd2: $fd

jr_08e_5dd3:
    ld b, d                                       ; $5dd3: $42
    ld b, d                                       ; $5dd4: $42
    cp $ff                                        ; $5dd5: $fe $ff
    ld b, d                                       ; $5dd7: $42
    ld b, d                                       ; $5dd8: $42
    db $db                                        ; $5dd9: $db
    jp c, $dcdb                                   ; $5dda: $da $db $dc

    ld [$0808], sp                                ; $5ddd: $08 $08 $08
    ld [$0808], sp                                ; $5de0: $08 $08 $08
    nop                                           ; $5de3: $00
    nop                                           ; $5de4: $00
    ld [$0008], sp                                ; $5de5: $08 $08 $00
    nop                                           ; $5de8: $00
    jr z, jr_08e_5df3                             ; $5de9: $28 $08

    ld [$f108], sp                                ; $5deb: $08 $08 $f1
    nop                                           ; $5dee: $00
    ld bc, $4202                                  ; $5def: $01 $02 $42
    inc bc                                        ; $5df2: $03

jr_08e_5df3:
    inc b                                         ; $5df3: $04
    dec b                                         ; $5df4: $05
    ld b, d                                       ; $5df5: $42
    ld b, d                                       ; $5df6: $42
    ld b, d                                       ; $5df7: $42
    ld b, $db                                     ; $5df8: $06 $db
    jp c, $dadb                                   ; $5dfa: $da $db $da

    ld [$0808], sp                                ; $5dfd: $08 $08 $08
    ld [$0800], sp                                ; $5e00: $08 $00 $08
    ld [$0008], sp                                ; $5e03: $08 $08 $00
    nop                                           ; $5e06: $00
    nop                                           ; $5e07: $00
    ld [$0828], sp                                ; $5e08: $08 $28 $08
    ld [$0708], sp                                ; $5e0b: $08 $08 $07
    ld [$e3e2], sp                                ; $5e0e: $08 $e2 $e3
    push hl                                       ; $5e11: $e5
    and $e5                                       ; $5e12: $e6 $e5
    and $e7                                       ; $5e14: $e6 $e7
    ldh [$e7], a                                  ; $5e16: $e0 $e7
    ldh [$93], a                                  ; $5e18: $e0 $93
    sub h                                         ; $5e1a: $94
    sub l                                         ; $5e1b: $95
    sub [hl]                                      ; $5e1c: $96
    ld [$0808], sp                                ; $5e1d: $08 $08 $08
    ld [$0a0a], sp                                ; $5e20: $08 $0a $0a
    ld a, [bc]                                    ; $5e23: $0a
    ld a, [bc]                                    ; $5e24: $0a
    ld a, [bc]                                    ; $5e25: $0a
    ld a, [bc]                                    ; $5e26: $0a
    ld a, [bc]                                    ; $5e27: $0a
    ld a, [bc]                                    ; $5e28: $0a
    inc c                                         ; $5e29: $0c
    inc c                                         ; $5e2a: $0c
    inc c                                         ; $5e2b: $0c
    inc c                                         ; $5e2c: $0c
    db $e4                                        ; $5e2d: $e4
    rlca                                          ; $5e2e: $07
    ld [$e5e2], sp                                ; $5e2f: $08 $e2 $e5
    and $e5                                       ; $5e32: $e6 $e5
    and $e7                                       ; $5e34: $e6 $e7
    ldh [$e7], a                                  ; $5e36: $e0 $e7
    ldh [$83], a                                  ; $5e38: $e0 $83
    add h                                         ; $5e3a: $84
    add l                                         ; $5e3b: $85
    add hl, bc                                    ; $5e3c: $09
    ld [$0808], sp                                ; $5e3d: $08 $08 $08
    ld [$0a0a], sp                                ; $5e40: $08 $0a $0a
    ld a, [bc]                                    ; $5e43: $0a
    ld a, [bc]                                    ; $5e44: $0a
    ld a, [bc]                                    ; $5e45: $0a
    ld a, [bc]                                    ; $5e46: $0a
    ld a, [bc]                                    ; $5e47: $0a
    ld a, [bc]                                    ; $5e48: $0a
    inc c                                         ; $5e49: $0c
    inc c                                         ; $5e4a: $0c
    inc c                                         ; $5e4b: $0c
    inc c                                         ; $5e4c: $0c
    db $e3                                        ; $5e4d: $e3
    db $e4                                        ; $5e4e: $e4
    rlca                                          ; $5e4f: $07
    ld [$e6e5], sp                                ; $5e50: $08 $e5 $e6
    push hl                                       ; $5e53: $e5
    and $e7                                       ; $5e54: $e6 $e7
    ldh [$e7], a                                  ; $5e56: $e0 $e7
    ldh [$0a], a                                  ; $5e58: $e0 $0a
    sub h                                         ; $5e5a: $94
    sub l                                         ; $5e5b: $95
    sub [hl]                                      ; $5e5c: $96
    ld [$0808], sp                                ; $5e5d: $08 $08 $08
    ld [$0a0a], sp                                ; $5e60: $08 $0a $0a
    ld a, [bc]                                    ; $5e63: $0a
    ld a, [bc]                                    ; $5e64: $0a
    ld a, [bc]                                    ; $5e65: $0a
    ld a, [bc]                                    ; $5e66: $0a
    ld a, [bc]                                    ; $5e67: $0a
    ld a, [bc]                                    ; $5e68: $0a
    inc c                                         ; $5e69: $0c
    inc c                                         ; $5e6a: $0c
    inc c                                         ; $5e6b: $0c
    inc c                                         ; $5e6c: $0c
    ld [c], a                                     ; $5e6d: $e2
    db $e3                                        ; $5e6e: $e3
    db $e4                                        ; $5e6f: $e4
    ld [c], a                                     ; $5e70: $e2
    push hl                                       ; $5e71: $e5
    and $e5                                       ; $5e72: $e6 $e5
    and $e7                                       ; $5e74: $e6 $e7
    ldh [$e7], a                                  ; $5e76: $e0 $e7
    ldh [$83], a                                  ; $5e78: $e0 $83
    add h                                         ; $5e7a: $84
    add l                                         ; $5e7b: $85
    add [hl]                                      ; $5e7c: $86
    ld [$0808], sp                                ; $5e7d: $08 $08 $08
    ld [$0a0a], sp                                ; $5e80: $08 $0a $0a
    ld a, [bc]                                    ; $5e83: $0a
    ld a, [bc]                                    ; $5e84: $0a
    ld a, [bc]                                    ; $5e85: $0a
    ld a, [bc]                                    ; $5e86: $0a
    ld a, [bc]                                    ; $5e87: $0a
    ld a, [bc]                                    ; $5e88: $0a
    inc c                                         ; $5e89: $0c
    inc c                                         ; $5e8a: $0c
    inc c                                         ; $5e8b: $0c
    inc c                                         ; $5e8c: $0c
    pop af                                        ; $5e8d: $f1
    jp nc, $d0d1                                  ; $5e8e: $d2 $d1 $d0

    ld b, d                                       ; $5e91: $42
    sub $d5                                       ; $5e92: $d6 $d5
    call nc, Call_08e_4242                        ; $5e94: $d4 $42 $42
    ret c                                         ; $5e97: $d8

    rst $10                                       ; $5e98: $d7
    db $db                                        ; $5e99: $db
    call c, $0bdb                                 ; $5e9a: $dc $db $0b
    ld [$2828], sp                                ; $5e9d: $08 $28 $28
    jr z, jr_08e_5ea2                             ; $5ea0: $28 $00

jr_08e_5ea2:
    jr z, jr_08e_5ecc                             ; $5ea2: $28 $28

    jr z, jr_08e_5ea6                             ; $5ea4: $28 $00

jr_08e_5ea6:
    nop                                           ; $5ea6: $00
    jr z, @+$2a                                   ; $5ea7: $28 $28

    ld [$2808], sp                                ; $5ea9: $08 $08 $28
    ld [$c6c6], sp                                ; $5eac: $08 $c6 $c6
    push bc                                       ; $5eaf: $c5
    cp a                                          ; $5eb0: $bf
    jp z, $c8c9                                   ; $5eb1: $ca $c9 $c8

    jp $cccd                                      ; $5eb4: $c3 $cd $cc


    bit 5, c                                      ; $5eb7: $cb $69
    rst $08                                       ; $5eb9: $cf
    adc $c8                                       ; $5eba: $ce $c8
    ld l, l                                       ; $5ebc: $6d
    ld a, [hl+]                                   ; $5ebd: $2a
    ld a, [hl+]                                   ; $5ebe: $2a
    ld a, [hl+]                                   ; $5ebf: $2a
    add hl, bc                                    ; $5ec0: $09
    ld a, [hl+]                                   ; $5ec1: $2a
    dec hl                                        ; $5ec2: $2b
    ld a, [hl+]                                   ; $5ec3: $2a
    inc c                                         ; $5ec4: $0c
    dec hl                                        ; $5ec5: $2b
    dec hl                                        ; $5ec6: $2b
    ld a, [hl+]                                   ; $5ec7: $2a
    inc b                                         ; $5ec8: $04
    dec hl                                        ; $5ec9: $2b
    dec hl                                        ; $5eca: $2b
    ld a, [hl+]                                   ; $5ecb: $2a

jr_08e_5ecc:
    inc b                                         ; $5ecc: $04
    call nz, $e9e8                                ; $5ecd: $c4 $e8 $e9
    ld [$ebc7], a                                 ; $5ed0: $ea $c7 $eb
    db $ec                                        ; $5ed3: $ec
    db $ed                                        ; $5ed4: $ed
    ld l, a                                       ; $5ed5: $6f
    ld [hl], b                                    ; $5ed6: $70
    ld [hl], c                                    ; $5ed7: $71
    ld [hl], d                                    ; $5ed8: $72
    ld [hl], e                                    ; $5ed9: $73
    ld [hl], h                                    ; $5eda: $74
    ld [hl], l                                    ; $5edb: $75
    halt                                          ; $5edc: $76
    add hl, bc                                    ; $5edd: $09
    add hl, bc                                    ; $5ede: $09
    add hl, bc                                    ; $5edf: $09
    inc c                                         ; $5ee0: $0c
    add hl, bc                                    ; $5ee1: $09
    add hl, bc                                    ; $5ee2: $09
    add hl, bc                                    ; $5ee3: $09
    inc c                                         ; $5ee4: $0c
    ld bc, $0101                                  ; $5ee5: $01 $01 $01
    inc b                                         ; $5ee8: $04
    ld bc, $0101                                  ; $5ee9: $01 $01 $01
    inc b                                         ; $5eec: $04
    db $e3                                        ; $5eed: $e3
    db $e4                                        ; $5eee: $e4
    rlca                                          ; $5eef: $07
    ld [$e6e5], sp                                ; $5ef0: $08 $e5 $e6
    push hl                                       ; $5ef3: $e5
    and $e7                                       ; $5ef4: $e6 $e7
    ldh [$e7], a                                  ; $5ef6: $e0 $e7
    ldh [$93], a                                  ; $5ef8: $e0 $93
    sub h                                         ; $5efa: $94
    sub l                                         ; $5efb: $95
    sub [hl]                                      ; $5efc: $96
    ld [$0808], sp                                ; $5efd: $08 $08 $08
    ld [$0a0a], sp                                ; $5f00: $08 $0a $0a
    ld a, [bc]                                    ; $5f03: $0a
    ld a, [bc]                                    ; $5f04: $0a
    ld a, [bc]                                    ; $5f05: $0a
    ld a, [bc]                                    ; $5f06: $0a
    ld a, [bc]                                    ; $5f07: $0a
    ld a, [bc]                                    ; $5f08: $0a
    inc c                                         ; $5f09: $0c
    inc c                                         ; $5f0a: $0c
    inc c                                         ; $5f0b: $0c
    inc c                                         ; $5f0c: $0c
    sbc $dd                                       ; $5f0d: $de $dd
    bit 7, d                                      ; $5f0f: $cb $7a
    jp z, $c8ca                                   ; $5f11: $ca $ca $c8

    ld a, [hl]                                    ; $5f14: $7e
    rst $20                                       ; $5f15: $e7
    rst $20                                       ; $5f16: $e7
    rst $18                                       ; $5f17: $df
    add d                                         ; $5f18: $82
    add e                                         ; $5f19: $83
    add h                                         ; $5f1a: $84
    add l                                         ; $5f1b: $85
    add [hl]                                      ; $5f1c: $86
    dec hl                                        ; $5f1d: $2b
    dec hl                                        ; $5f1e: $2b
    ld a, [hl+]                                   ; $5f1f: $2a
    inc b                                         ; $5f20: $04
    ld a, [hl+]                                   ; $5f21: $2a
    ld a, [hl+]                                   ; $5f22: $2a
    ld a, [hl+]                                   ; $5f23: $2a
    inc b                                         ; $5f24: $04
    ld a, [bc]                                    ; $5f25: $0a
    ld a, [bc]                                    ; $5f26: $0a
    ld a, [hl+]                                   ; $5f27: $2a
    inc c                                         ; $5f28: $0c
    inc c                                         ; $5f29: $0c
    inc c                                         ; $5f2a: $0c
    inc c                                         ; $5f2b: $0c
    inc c                                         ; $5f2c: $0c
    add a                                         ; $5f2d: $87
    adc b                                         ; $5f2e: $88
    adc c                                         ; $5f2f: $89
    adc d                                         ; $5f30: $8a
    adc e                                         ; $5f31: $8b
    adc h                                         ; $5f32: $8c
    adc l                                         ; $5f33: $8d
    adc [hl]                                      ; $5f34: $8e
    inc c                                         ; $5f35: $0c
    sub b                                         ; $5f36: $90
    sub c                                         ; $5f37: $91
    sub d                                         ; $5f38: $92
    dec c                                         ; $5f39: $0d
    sub h                                         ; $5f3a: $94
    sub l                                         ; $5f3b: $95
    sub [hl]                                      ; $5f3c: $96
    add hl, bc                                    ; $5f3d: $09
    add hl, bc                                    ; $5f3e: $09
    add hl, bc                                    ; $5f3f: $09
    inc c                                         ; $5f40: $0c
    add hl, bc                                    ; $5f41: $09
    add hl, bc                                    ; $5f42: $09
    add hl, bc                                    ; $5f43: $09
    inc c                                         ; $5f44: $0c
    add hl, hl                                    ; $5f45: $29
    add hl, bc                                    ; $5f46: $09
    add hl, bc                                    ; $5f47: $09
    inc c                                         ; $5f48: $0c
    add hl, hl                                    ; $5f49: $29
    add hl, bc                                    ; $5f4a: $09
    add hl, bc                                    ; $5f4b: $09
    inc c                                         ; $5f4c: $0c
    inc c                                         ; $5f4d: $0c
    nop                                           ; $5f4e: $00
    inc c                                         ; $5f4f: $0c
    nop                                           ; $5f50: $00
    ld h, b                                       ; $5f51: $60
    dec b                                         ; $5f52: $05
    pop de                                        ; $5f53: $d1
    pop de                                        ; $5f54: $d1
    pop de                                        ; $5f55: $d1
    pop de                                        ; $5f56: $d1
    pop de                                        ; $5f57: $d1
    pop de                                        ; $5f58: $d1
    pop de                                        ; $5f59: $d1
    pop de                                        ; $5f5a: $d1
    pop de                                        ; $5f5b: $d1
    pop de                                        ; $5f5c: $d1
    pop de                                        ; $5f5d: $d1
    pop de                                        ; $5f5e: $d1
    pop de                                        ; $5f5f: $d1
    pop de                                        ; $5f60: $d1
    pop de                                        ; $5f61: $d1
    pop de                                        ; $5f62: $d1
    inc bc                                        ; $5f63: $03
    inc bc                                        ; $5f64: $03
    inc bc                                        ; $5f65: $03
    inc bc                                        ; $5f66: $03
    inc bc                                        ; $5f67: $03
    inc bc                                        ; $5f68: $03
    inc bc                                        ; $5f69: $03
    inc bc                                        ; $5f6a: $03
    inc bc                                        ; $5f6b: $03
    inc bc                                        ; $5f6c: $03
    inc bc                                        ; $5f6d: $03
    inc bc                                        ; $5f6e: $03
    inc bc                                        ; $5f6f: $03
    inc bc                                        ; $5f70: $03
    inc bc                                        ; $5f71: $03
    inc bc                                        ; $5f72: $03
    pop de                                        ; $5f73: $d1
    pop de                                        ; $5f74: $d1
    pop de                                        ; $5f75: $d1
    pop de                                        ; $5f76: $d1
    pop de                                        ; $5f77: $d1
    pop de                                        ; $5f78: $d1
    pop de                                        ; $5f79: $d1
    pop de                                        ; $5f7a: $d1
    pop de                                        ; $5f7b: $d1
    jp nc, $d4d3                                  ; $5f7c: $d2 $d3 $d4

    pop de                                        ; $5f7f: $d1
    push de                                       ; $5f80: $d5
    sub $d7                                       ; $5f81: $d6 $d7
    inc bc                                        ; $5f83: $03
    inc bc                                        ; $5f84: $03
    inc bc                                        ; $5f85: $03
    inc bc                                        ; $5f86: $03
    inc bc                                        ; $5f87: $03
    inc bc                                        ; $5f88: $03
    inc bc                                        ; $5f89: $03
    inc bc                                        ; $5f8a: $03
    inc bc                                        ; $5f8b: $03
    inc b                                         ; $5f8c: $04
    inc b                                         ; $5f8d: $04
    inc b                                         ; $5f8e: $04
    inc bc                                        ; $5f8f: $03
    inc b                                         ; $5f90: $04
    inc b                                         ; $5f91: $04
    inc b                                         ; $5f92: $04
    pop de                                        ; $5f93: $d1
    pop de                                        ; $5f94: $d1
    pop de                                        ; $5f95: $d1
    pop de                                        ; $5f96: $d1
    pop de                                        ; $5f97: $d1
    pop de                                        ; $5f98: $d1
    pop de                                        ; $5f99: $d1
    pop de                                        ; $5f9a: $d1
    ret c                                         ; $5f9b: $d8

    reti                                          ; $5f9c: $d9


    reti                                          ; $5f9d: $d9


    reti                                          ; $5f9e: $d9


    jp c, $dcdb                                   ; $5f9f: $da $db $dc

    db $dd                                        ; $5fa2: $dd
    inc bc                                        ; $5fa3: $03
    inc bc                                        ; $5fa4: $03
    inc bc                                        ; $5fa5: $03
    inc bc                                        ; $5fa6: $03
    inc bc                                        ; $5fa7: $03
    inc bc                                        ; $5fa8: $03
    inc bc                                        ; $5fa9: $03
    inc bc                                        ; $5faa: $03
    inc b                                         ; $5fab: $04
    inc b                                         ; $5fac: $04
    inc b                                         ; $5fad: $04
    inc b                                         ; $5fae: $04
    inc b                                         ; $5faf: $04
    inc b                                         ; $5fb0: $04
    inc b                                         ; $5fb1: $04
    inc b                                         ; $5fb2: $04
    pop de                                        ; $5fb3: $d1
    sbc $df                                       ; $5fb4: $de $df
    ldh [$d1], a                                  ; $5fb6: $e0 $d1
    pop hl                                        ; $5fb8: $e1
    ld [c], a                                     ; $5fb9: $e2
    db $e3                                        ; $5fba: $e3
    pop de                                        ; $5fbb: $d1
    reti                                          ; $5fbc: $d9


    db $d3                                        ; $5fbd: $d3
    db $e4                                        ; $5fbe: $e4
    pop de                                        ; $5fbf: $d1
    pop de                                        ; $5fc0: $d1
    pop de                                        ; $5fc1: $d1
    pop de                                        ; $5fc2: $d1
    inc bc                                        ; $5fc3: $03
    inc b                                         ; $5fc4: $04
    inc b                                         ; $5fc5: $04
    inc b                                         ; $5fc6: $04
    inc bc                                        ; $5fc7: $03
    inc b                                         ; $5fc8: $04
    inc b                                         ; $5fc9: $04
    inc b                                         ; $5fca: $04
    inc bc                                        ; $5fcb: $03
    inc b                                         ; $5fcc: $04
    ld b, h                                       ; $5fcd: $44
    inc b                                         ; $5fce: $04
    inc bc                                        ; $5fcf: $03
    inc bc                                        ; $5fd0: $03
    inc bc                                        ; $5fd1: $03
    inc bc                                        ; $5fd2: $03
    push hl                                       ; $5fd3: $e5
    and $e7                                       ; $5fd4: $e6 $e7
    reti                                          ; $5fd6: $d9


    add sp, -$17                                  ; $5fd7: $e8 $e9
    ld [$ebd9], a                                 ; $5fd9: $ea $d9 $eb
    reti                                          ; $5fdc: $d9


    db $ec                                        ; $5fdd: $ec
    db $ed                                        ; $5fde: $ed
    pop de                                        ; $5fdf: $d1
    pop de                                        ; $5fe0: $d1
    pop de                                        ; $5fe1: $d1
    pop de                                        ; $5fe2: $d1
    inc b                                         ; $5fe3: $04
    inc b                                         ; $5fe4: $04
    inc b                                         ; $5fe5: $04
    inc b                                         ; $5fe6: $04
    inc b                                         ; $5fe7: $04
    inc b                                         ; $5fe8: $04
    inc b                                         ; $5fe9: $04
    inc b                                         ; $5fea: $04
    inc b                                         ; $5feb: $04
    inc b                                         ; $5fec: $04
    inc b                                         ; $5fed: $04
    inc b                                         ; $5fee: $04
    inc bc                                        ; $5fef: $03
    inc bc                                        ; $5ff0: $03
    inc bc                                        ; $5ff1: $03
    inc bc                                        ; $5ff2: $03
    pop de                                        ; $5ff3: $d1
    pop de                                        ; $5ff4: $d1
    pop de                                        ; $5ff5: $d1
    pop de                                        ; $5ff6: $d1
    pop de                                        ; $5ff7: $d1
    pop de                                        ; $5ff8: $d1
    pop de                                        ; $5ff9: $d1
    pop de                                        ; $5ffa: $d1
    pop de                                        ; $5ffb: $d1
    pop de                                        ; $5ffc: $d1
    pop de                                        ; $5ffd: $d1
    pop de                                        ; $5ffe: $d1
    pop de                                        ; $5fff: $d1
    pop de                                        ; $6000: $d1
    xor $ef                                       ; $6001: $ee $ef
    inc bc                                        ; $6003: $03
    inc bc                                        ; $6004: $03
    inc bc                                        ; $6005: $03
    inc bc                                        ; $6006: $03
    inc bc                                        ; $6007: $03
    inc bc                                        ; $6008: $03
    inc bc                                        ; $6009: $03
    inc bc                                        ; $600a: $03
    inc bc                                        ; $600b: $03
    inc bc                                        ; $600c: $03
    inc bc                                        ; $600d: $03
    inc bc                                        ; $600e: $03
    inc bc                                        ; $600f: $03
    inc bc                                        ; $6010: $03
    inc bc                                        ; $6011: $03
    inc bc                                        ; $6012: $03
    pop de                                        ; $6013: $d1
    pop de                                        ; $6014: $d1
    pop de                                        ; $6015: $d1
    pop de                                        ; $6016: $d1
    pop de                                        ; $6017: $d1
    pop de                                        ; $6018: $d1
    pop de                                        ; $6019: $d1
    pop de                                        ; $601a: $d1
    pop de                                        ; $601b: $d1
    pop de                                        ; $601c: $d1
    pop de                                        ; $601d: $d1
    pop de                                        ; $601e: $d1
    ldh a, [$d1]                                  ; $601f: $f0 $d1
    pop de                                        ; $6021: $d1
    pop de                                        ; $6022: $d1
    inc bc                                        ; $6023: $03
    inc bc                                        ; $6024: $03
    inc bc                                        ; $6025: $03
    inc bc                                        ; $6026: $03
    inc bc                                        ; $6027: $03
    inc bc                                        ; $6028: $03
    inc bc                                        ; $6029: $03
    inc bc                                        ; $602a: $03
    inc bc                                        ; $602b: $03
    inc bc                                        ; $602c: $03
    inc bc                                        ; $602d: $03
    inc bc                                        ; $602e: $03
    inc bc                                        ; $602f: $03
    inc bc                                        ; $6030: $03
    inc bc                                        ; $6031: $03
    inc bc                                        ; $6032: $03
    pop af                                        ; $6033: $f1
    ld a, [c]                                     ; $6034: $f2
    pop de                                        ; $6035: $d1
    pop de                                        ; $6036: $d1
    di                                            ; $6037: $f3
    db $f4                                        ; $6038: $f4
    pop de                                        ; $6039: $d1
    pop de                                        ; $603a: $d1
    di                                            ; $603b: $f3
    push af                                       ; $603c: $f5
    or $f7                                        ; $603d: $f6 $f7
    di                                            ; $603f: $f3
    di                                            ; $6040: $f3
    di                                            ; $6041: $f3
    di                                            ; $6042: $f3
    inc bc                                        ; $6043: $03
    inc bc                                        ; $6044: $03
    inc bc                                        ; $6045: $03
    inc bc                                        ; $6046: $03
    inc bc                                        ; $6047: $03
    inc bc                                        ; $6048: $03
    inc bc                                        ; $6049: $03
    inc bc                                        ; $604a: $03
    inc bc                                        ; $604b: $03
    inc bc                                        ; $604c: $03
    inc bc                                        ; $604d: $03
    inc bc                                        ; $604e: $03
    ld [bc], a                                    ; $604f: $02
    inc bc                                        ; $6050: $03
    inc bc                                        ; $6051: $03
    inc bc                                        ; $6052: $03
    pop de                                        ; $6053: $d1
    ld hl, sp-$07                                 ; $6054: $f8 $f9
    di                                            ; $6056: $f3
    pop de                                        ; $6057: $d1
    ld a, [$f3f3]                                 ; $6058: $fa $f3 $f3
    ei                                            ; $605b: $fb
    db $fc                                        ; $605c: $fc
    di                                            ; $605d: $f3
    di                                            ; $605e: $f3
    di                                            ; $605f: $f3
    db $fd                                        ; $6060: $fd
    cp $f3                                        ; $6061: $fe $f3
    inc bc                                        ; $6063: $03
    inc bc                                        ; $6064: $03
    inc bc                                        ; $6065: $03
    inc bc                                        ; $6066: $03
    inc bc                                        ; $6067: $03
    inc bc                                        ; $6068: $03
    inc bc                                        ; $6069: $03
    inc bc                                        ; $606a: $03
    inc bc                                        ; $606b: $03
    inc bc                                        ; $606c: $03
    inc bc                                        ; $606d: $03
    inc bc                                        ; $606e: $03
    ld [bc], a                                    ; $606f: $02
    ld [bc], a                                    ; $6070: $02
    ld [bc], a                                    ; $6071: $02
    ld [bc], a                                    ; $6072: $02
    rst $38                                       ; $6073: $ff
    nop                                           ; $6074: $00
    ld bc, $f302                                  ; $6075: $01 $02 $f3
    inc bc                                        ; $6078: $03
    di                                            ; $6079: $f3
    di                                            ; $607a: $f3
    inc b                                         ; $607b: $04
    dec b                                         ; $607c: $05
    ld b, $f3                                     ; $607d: $06 $f3
    rlca                                          ; $607f: $07
    ld [$0a09], sp                                ; $6080: $08 $09 $0a
    inc bc                                        ; $6083: $03
    inc bc                                        ; $6084: $03
    inc bc                                        ; $6085: $03
    inc bc                                        ; $6086: $03
    inc bc                                        ; $6087: $03
    inc bc                                        ; $6088: $03
    inc bc                                        ; $6089: $03
    inc bc                                        ; $608a: $03
    ld [bc], a                                    ; $608b: $02
    ld [bc], a                                    ; $608c: $02
    ld [bc], a                                    ; $608d: $02
    ld [bc], a                                    ; $608e: $02
    ld [bc], a                                    ; $608f: $02
    ld [bc], a                                    ; $6090: $02
    ld [bc], a                                    ; $6091: $02
    ld [bc], a                                    ; $6092: $02
    dec bc                                        ; $6093: $0b
    inc c                                         ; $6094: $0c
    dec c                                         ; $6095: $0d
    ld c, $0f                                     ; $6096: $0e $0f
    db $10                                        ; $6098: $10
    di                                            ; $6099: $f3
    ld sp, hl                                     ; $609a: $f9
    di                                            ; $609b: $f3
    di                                            ; $609c: $f3
    di                                            ; $609d: $f3
    di                                            ; $609e: $f3
    di                                            ; $609f: $f3
    di                                            ; $60a0: $f3
    di                                            ; $60a1: $f3
    di                                            ; $60a2: $f3
    inc bc                                        ; $60a3: $03
    inc bc                                        ; $60a4: $03
    inc bc                                        ; $60a5: $03
    inc bc                                        ; $60a6: $03
    inc bc                                        ; $60a7: $03
    inc bc                                        ; $60a8: $03
    inc bc                                        ; $60a9: $03
    inc hl                                        ; $60aa: $23
    inc bc                                        ; $60ab: $03
    inc bc                                        ; $60ac: $03
    inc bc                                        ; $60ad: $03
    inc bc                                        ; $60ae: $03
    ld [bc], a                                    ; $60af: $02
    inc bc                                        ; $60b0: $03
    ld [bc], a                                    ; $60b1: $02
    ld [bc], a                                    ; $60b2: $02
    pop de                                        ; $60b3: $d1
    pop de                                        ; $60b4: $d1
    pop de                                        ; $60b5: $d1
    pop de                                        ; $60b6: $d1
    pop de                                        ; $60b7: $d1
    pop de                                        ; $60b8: $d1
    pop de                                        ; $60b9: $d1
    pop de                                        ; $60ba: $d1
    pop de                                        ; $60bb: $d1
    pop de                                        ; $60bc: $d1
    pop de                                        ; $60bd: $d1
    pop de                                        ; $60be: $d1
    pop de                                        ; $60bf: $d1
    ld de, $1312                                  ; $60c0: $11 $12 $13
    inc bc                                        ; $60c3: $03
    inc bc                                        ; $60c4: $03
    inc bc                                        ; $60c5: $03
    inc bc                                        ; $60c6: $03
    inc bc                                        ; $60c7: $03
    inc bc                                        ; $60c8: $03
    inc bc                                        ; $60c9: $03
    inc bc                                        ; $60ca: $03
    inc bc                                        ; $60cb: $03
    inc bc                                        ; $60cc: $03
    inc bc                                        ; $60cd: $03
    inc bc                                        ; $60ce: $03
    inc bc                                        ; $60cf: $03
    inc bc                                        ; $60d0: $03

jr_08e_60d1:
    inc bc                                        ; $60d1: $03
    inc bc                                        ; $60d2: $03
    dec bc                                        ; $60d3: $0b
    inc d                                         ; $60d4: $14
    di                                            ; $60d5: $f3
    dec d                                         ; $60d6: $15
    ld d, $f3                                     ; $60d7: $16 $f3
    di                                            ; $60d9: $f3
    di                                            ; $60da: $f3
    rla                                           ; $60db: $17
    jr jr_08e_60d1                                ; $60dc: $18 $f3

    di                                            ; $60de: $f3
    di                                            ; $60df: $f3
    di                                            ; $60e0: $f3
    di                                            ; $60e1: $f3
    di                                            ; $60e2: $f3
    inc hl                                        ; $60e3: $23
    inc bc                                        ; $60e4: $03
    inc bc                                        ; $60e5: $03
    inc bc                                        ; $60e6: $03
    inc bc                                        ; $60e7: $03
    inc bc                                        ; $60e8: $03
    inc bc                                        ; $60e9: $03
    inc bc                                        ; $60ea: $03
    inc bc                                        ; $60eb: $03
    inc bc                                        ; $60ec: $03
    inc bc                                        ; $60ed: $03
    inc bc                                        ; $60ee: $03
    inc bc                                        ; $60ef: $03
    inc bc                                        ; $60f0: $03
    inc bc                                        ; $60f1: $03

jr_08e_60f2:
    inc bc                                        ; $60f2: $03
    add hl, de                                    ; $60f3: $19
    pop de                                        ; $60f4: $d1
    pop de                                        ; $60f5: $d1
    pop de                                        ; $60f6: $d1
    ld a, [de]                                    ; $60f7: $1a
    pop de                                        ; $60f8: $d1
    pop de                                        ; $60f9: $d1
    pop de                                        ; $60fa: $d1
    dec de                                        ; $60fb: $1b
    inc e                                         ; $60fc: $1c
    pop de                                        ; $60fd: $d1
    pop de                                        ; $60fe: $d1
    di                                            ; $60ff: $f3
    dec e                                         ; $6100: $1d
    ld e, $1f                                     ; $6101: $1e $1f
    inc bc                                        ; $6103: $03
    inc bc                                        ; $6104: $03
    inc bc                                        ; $6105: $03
    inc bc                                        ; $6106: $03
    inc bc                                        ; $6107: $03
    inc bc                                        ; $6108: $03
    inc bc                                        ; $6109: $03
    inc bc                                        ; $610a: $03
    inc bc                                        ; $610b: $03
    inc bc                                        ; $610c: $03
    inc bc                                        ; $610d: $03
    inc bc                                        ; $610e: $03
    inc bc                                        ; $610f: $03
    inc bc                                        ; $6110: $03
    inc bc                                        ; $6111: $03
    inc bc                                        ; $6112: $03
    pop de                                        ; $6113: $d1
    pop de                                        ; $6114: $d1
    pop de                                        ; $6115: $d1
    pop de                                        ; $6116: $d1
    pop de                                        ; $6117: $d1
    pop de                                        ; $6118: $d1
    pop de                                        ; $6119: $d1
    pop de                                        ; $611a: $d1
    pop de                                        ; $611b: $d1
    pop de                                        ; $611c: $d1
    pop de                                        ; $611d: $d1
    pop de                                        ; $611e: $d1
    jr nz, jr_08e_60f2                            ; $611f: $20 $d1

    pop de                                        ; $6121: $d1
    pop de                                        ; $6122: $d1
    inc bc                                        ; $6123: $03
    inc bc                                        ; $6124: $03
    inc bc                                        ; $6125: $03
    inc bc                                        ; $6126: $03
    inc bc                                        ; $6127: $03
    inc bc                                        ; $6128: $03
    inc bc                                        ; $6129: $03
    inc bc                                        ; $612a: $03
    inc bc                                        ; $612b: $03
    inc bc                                        ; $612c: $03
    inc bc                                        ; $612d: $03
    inc bc                                        ; $612e: $03
    inc bc                                        ; $612f: $03
    inc bc                                        ; $6130: $03
    inc bc                                        ; $6131: $03
    inc bc                                        ; $6132: $03
    di                                            ; $6133: $f3
    di                                            ; $6134: $f3
    di                                            ; $6135: $f3
    di                                            ; $6136: $f3
    di                                            ; $6137: $f3
    di                                            ; $6138: $f3
    ld hl, $f3f3                                  ; $6139: $21 $f3 $f3
    ld [hl+], a                                   ; $613c: $22
    inc hl                                        ; $613d: $23
    inc h                                         ; $613e: $24
    di                                            ; $613f: $f3
    dec h                                         ; $6140: $25
    ld h, $27                                     ; $6141: $26 $27
    ld [bc], a                                    ; $6143: $02
    inc bc                                        ; $6144: $03
    inc bc                                        ; $6145: $03
    ld [bc], a                                    ; $6146: $02
    ld [bc], a                                    ; $6147: $02
    ld [bc], a                                    ; $6148: $02
    ld [bc], a                                    ; $6149: $02
    ld [bc], a                                    ; $614a: $02
    ld [bc], a                                    ; $614b: $02
    ld [bc], a                                    ; $614c: $02
    ld [bc], a                                    ; $614d: $02
    ld [bc], a                                    ; $614e: $02
    ld [bc], a                                    ; $614f: $02
    ld [bc], a                                    ; $6150: $02
    ld [bc], a                                    ; $6151: $02
    ld [bc], a                                    ; $6152: $02
    jr z, jr_08e_617e                             ; $6153: $28 $29

    ld a, [hl+]                                   ; $6155: $2a
    dec hl                                        ; $6156: $2b
    inc l                                         ; $6157: $2c
    dec l                                         ; $6158: $2d
    ld l, $2f                                     ; $6159: $2e $2f
    jr nc, jr_08e_618e                            ; $615b: $30 $31

    ld [hl-], a                                   ; $615d: $32
    inc sp                                        ; $615e: $33
    inc [hl]                                      ; $615f: $34
    dec [hl]                                      ; $6160: $35
    ld [hl], $37                                  ; $6161: $36 $37
    ld [bc], a                                    ; $6163: $02
    ld [bc], a                                    ; $6164: $02
    ld [bc], a                                    ; $6165: $02
    ld [bc], a                                    ; $6166: $02
    ld [bc], a                                    ; $6167: $02
    ld [bc], a                                    ; $6168: $02
    ld [bc], a                                    ; $6169: $02
    ld [bc], a                                    ; $616a: $02
    ld [bc], a                                    ; $616b: $02
    ld [bc], a                                    ; $616c: $02
    ld [bc], a                                    ; $616d: $02
    ld [bc], a                                    ; $616e: $02
    ld [bc], a                                    ; $616f: $02
    ld [bc], a                                    ; $6170: $02
    ld [bc], a                                    ; $6171: $02
    ld [bc], a                                    ; $6172: $02
    jr c, jr_08e_61ae                             ; $6173: $38 $39

    ld a, [hl-]                                   ; $6175: $3a
    dec sp                                        ; $6176: $3b
    inc a                                         ; $6177: $3c
    dec a                                         ; $6178: $3d
    ld a, $3f                                     ; $6179: $3e $3f
    ld b, b                                       ; $617b: $40
    ld b, c                                       ; $617c: $41
    ld b, d                                       ; $617d: $42

jr_08e_617e:
    ld b, e                                       ; $617e: $43
    ld b, h                                       ; $617f: $44
    ld b, l                                       ; $6180: $45
    ld b, [hl]                                    ; $6181: $46
    ld b, a                                       ; $6182: $47
    ld [bc], a                                    ; $6183: $02
    ld [bc], a                                    ; $6184: $02
    ld [bc], a                                    ; $6185: $02
    ld [bc], a                                    ; $6186: $02
    ld [bc], a                                    ; $6187: $02
    ld [bc], a                                    ; $6188: $02
    ld [bc], a                                    ; $6189: $02
    ld [bc], a                                    ; $618a: $02
    ld [bc], a                                    ; $618b: $02
    ld [bc], a                                    ; $618c: $02
    ld [bc], a                                    ; $618d: $02

jr_08e_618e:
    ld [bc], a                                    ; $618e: $02
    ld [bc], a                                    ; $618f: $02
    ld [bc], a                                    ; $6190: $02
    ld [bc], a                                    ; $6191: $02
    ld [bc], a                                    ; $6192: $02
    ld c, b                                       ; $6193: $48
    di                                            ; $6194: $f3
    di                                            ; $6195: $f3
    dec d                                         ; $6196: $15
    ld c, c                                       ; $6197: $49
    ld c, d                                       ; $6198: $4a
    ld c, e                                       ; $6199: $4b
    ld c, h                                       ; $619a: $4c
    ld c, l                                       ; $619b: $4d
    ld c, [hl]                                    ; $619c: $4e
    ld c, a                                       ; $619d: $4f
    ld d, b                                       ; $619e: $50
    ld d, c                                       ; $619f: $51
    ld d, d                                       ; $61a0: $52
    ld d, e                                       ; $61a1: $53
    ld d, h                                       ; $61a2: $54
    ld [bc], a                                    ; $61a3: $02
    ld [bc], a                                    ; $61a4: $02
    ld [bc], a                                    ; $61a5: $02
    ld h, d                                       ; $61a6: $62
    ld [bc], a                                    ; $61a7: $02
    ld [bc], a                                    ; $61a8: $02
    ld [bc], a                                    ; $61a9: $02
    ld [bc], a                                    ; $61aa: $02
    ld [bc], a                                    ; $61ab: $02
    ld [bc], a                                    ; $61ac: $02
    ld [bc], a                                    ; $61ad: $02

jr_08e_61ae:
    ld [bc], a                                    ; $61ae: $02
    ld [bc], a                                    ; $61af: $02
    ld [bc], a                                    ; $61b0: $02
    ld [bc], a                                    ; $61b1: $02
    ld [bc], a                                    ; $61b2: $02
    ld d, l                                       ; $61b3: $55
    ld d, [hl]                                    ; $61b4: $56
    ld d, a                                       ; $61b5: $57
    ld e, b                                       ; $61b6: $58
    ld e, c                                       ; $61b7: $59
    ld e, d                                       ; $61b8: $5a
    ld e, e                                       ; $61b9: $5b
    ld e, h                                       ; $61ba: $5c
    ld e, l                                       ; $61bb: $5d
    ld e, [hl]                                    ; $61bc: $5e
    ld e, a                                       ; $61bd: $5f
    ld h, b                                       ; $61be: $60
    ld h, c                                       ; $61bf: $61
    ld h, d                                       ; $61c0: $62
    ld h, e                                       ; $61c1: $63
    ld h, h                                       ; $61c2: $64
    ld [bc], a                                    ; $61c3: $02
    ld bc, $0102                                  ; $61c4: $01 $02 $01
    ld bc, $0101                                  ; $61c7: $01 $01 $01
    ld bc, $0101                                  ; $61ca: $01 $01 $01
    ld bc, $0101                                  ; $61cd: $01 $01 $01
    ld bc, $0101                                  ; $61d0: $01 $01 $01
    ld h, l                                       ; $61d3: $65
    ld h, [hl]                                    ; $61d4: $66
    ld h, a                                       ; $61d5: $67
    ld l, b                                       ; $61d6: $68
    ld l, c                                       ; $61d7: $69
    ld l, d                                       ; $61d8: $6a
    ld l, e                                       ; $61d9: $6b
    ld l, h                                       ; $61da: $6c
    ld l, l                                       ; $61db: $6d
    ld l, [hl]                                    ; $61dc: $6e
    ld l, a                                       ; $61dd: $6f
    ld [hl], b                                    ; $61de: $70
    ld [hl], c                                    ; $61df: $71
    ld [hl], d                                    ; $61e0: $72
    ld [hl], e                                    ; $61e1: $73
    ld [hl], h                                    ; $61e2: $74
    ld bc, $0101                                  ; $61e3: $01 $01 $01
    ld bc, $0101                                  ; $61e6: $01 $01 $01
    ld bc, $0101                                  ; $61e9: $01 $01 $01
    ld bc, $0101                                  ; $61ec: $01 $01 $01
    ld bc, $0101                                  ; $61ef: $01 $01 $01
    ld bc, $7675                                  ; $61f2: $01 $75 $76
    ld [hl], a                                    ; $61f5: $77
    ld a, b                                       ; $61f6: $78
    ld a, c                                       ; $61f7: $79
    ld a, d                                       ; $61f8: $7a
    ld l, e                                       ; $61f9: $6b
    ld l, h                                       ; $61fa: $6c
    ld a, e                                       ; $61fb: $7b
    ld a, h                                       ; $61fc: $7c
    ld a, l                                       ; $61fd: $7d
    ld h, b                                       ; $61fe: $60
    ld [hl], e                                    ; $61ff: $73
    ld [hl], h                                    ; $6200: $74
    ld a, [hl]                                    ; $6201: $7e
    ld a, a                                       ; $6202: $7f
    ld bc, $0101                                  ; $6203: $01 $01 $01
    ld bc, $0101                                  ; $6206: $01 $01 $01
    ld bc, $0101                                  ; $6209: $01 $01 $01
    ld bc, $0101                                  ; $620c: $01 $01 $01
    ld bc, $0101                                  ; $620f: $01 $01 $01
    ld bc, $8180                                  ; $6212: $01 $80 $81
    add d                                         ; $6215: $82
    add e                                         ; $6216: $83
    ld a, c                                       ; $6217: $79
    add h                                         ; $6218: $84
    add l                                         ; $6219: $85
    add [hl]                                      ; $621a: $86
    ld l, l                                       ; $621b: $6d
    ld l, [hl]                                    ; $621c: $6e
    ld l, a                                       ; $621d: $6f
    ld h, b                                       ; $621e: $60
    ld [hl], e                                    ; $621f: $73
    ld [hl], h                                    ; $6220: $74
    ld [hl], e                                    ; $6221: $73
    ld h, h                                       ; $6222: $64
    add hl, bc                                    ; $6223: $09
    add hl, bc                                    ; $6224: $09
    add hl, bc                                    ; $6225: $09
    ld a, [bc]                                    ; $6226: $0a
    ld bc, $0909                                  ; $6227: $01 $09 $09
    add hl, bc                                    ; $622a: $09
    ld bc, $0101                                  ; $622b: $01 $01 $01
    ld bc, $0101                                  ; $622e: $01 $01 $01
    ld bc, $8701                                  ; $6231: $01 $01 $87
    adc b                                         ; $6234: $88
    adc c                                         ; $6235: $89
    ld a, a                                       ; $6236: $7f
    adc d                                         ; $6237: $8a
    adc e                                         ; $6238: $8b
    adc h                                         ; $6239: $8c
    ld [hl], h                                    ; $623a: $74
    ld a, [hl]                                    ; $623b: $7e
    ld a, a                                       ; $623c: $7f
    adc l                                         ; $623d: $8d
    adc [hl]                                      ; $623e: $8e
    adc a                                         ; $623f: $8f
    sub b                                         ; $6240: $90
    sub c                                         ; $6241: $91
    sub d                                         ; $6242: $92
    add hl, bc                                    ; $6243: $09
    add hl, bc                                    ; $6244: $09
    add hl, bc                                    ; $6245: $09
    ld bc, $0909                                  ; $6246: $01 $09 $09
    add hl, bc                                    ; $6249: $09
    ld bc, $0101                                  ; $624a: $01 $01 $01
    add hl, bc                                    ; $624d: $09
    add hl, bc                                    ; $624e: $09
    add hl, bc                                    ; $624f: $09
    add hl, bc                                    ; $6250: $09
    add hl, bc                                    ; $6251: $09
    add hl, bc                                    ; $6252: $09
    ld a, [hl]                                    ; $6253: $7e
    ld a, a                                       ; $6254: $7f
    ld a, [hl]                                    ; $6255: $7e
    sub e                                         ; $6256: $93
    sub h                                         ; $6257: $94
    sub l                                         ; $6258: $95
    adc l                                         ; $6259: $8d
    adc [hl]                                      ; $625a: $8e
    adc a                                         ; $625b: $8f
    sub b                                         ; $625c: $90
    sub [hl]                                      ; $625d: $96
    sub a                                         ; $625e: $97
    sbc b                                         ; $625f: $98
    sbc c                                         ; $6260: $99
    sbc d                                         ; $6261: $9a
    sbc e                                         ; $6262: $9b
    ld bc, $0101                                  ; $6263: $01 $01 $01
    add hl, bc                                    ; $6266: $09
    add hl, bc                                    ; $6267: $09
    add hl, bc                                    ; $6268: $09
    add hl, bc                                    ; $6269: $09
    add hl, bc                                    ; $626a: $09
    add hl, bc                                    ; $626b: $09
    add hl, bc                                    ; $626c: $09
    add hl, bc                                    ; $626d: $09
    add hl, bc                                    ; $626e: $09
    add hl, bc                                    ; $626f: $09
    add hl, bc                                    ; $6270: $09
    add hl, bc                                    ; $6271: $09
    add hl, bc                                    ; $6272: $09
    sub h                                         ; $6273: $94
    sub l                                         ; $6274: $95
    adc l                                         ; $6275: $8d
    sub e                                         ; $6276: $93
    sbc h                                         ; $6277: $9c
    sbc l                                         ; $6278: $9d
    sub [hl]                                      ; $6279: $96
    sub a                                         ; $627a: $97
    sbc b                                         ; $627b: $98
    sbc c                                         ; $627c: $99
    sbc d                                         ; $627d: $9a
    sbc e                                         ; $627e: $9b
    sbc [hl]                                      ; $627f: $9e
    sbc a                                         ; $6280: $9f
    and b                                         ; $6281: $a0
    and c                                         ; $6282: $a1
    add hl, bc                                    ; $6283: $09
    add hl, bc                                    ; $6284: $09
    add hl, bc                                    ; $6285: $09
    add hl, bc                                    ; $6286: $09
    add hl, bc                                    ; $6287: $09
    add hl, bc                                    ; $6288: $09
    add hl, bc                                    ; $6289: $09
    add hl, bc                                    ; $628a: $09
    add hl, bc                                    ; $628b: $09
    add hl, bc                                    ; $628c: $09
    add hl, bc                                    ; $628d: $09
    add hl, bc                                    ; $628e: $09
    add hl, bc                                    ; $628f: $09
    add hl, bc                                    ; $6290: $09
    add hl, bc                                    ; $6291: $09
    add hl, bc                                    ; $6292: $09
    sub h                                         ; $6293: $94
    sub l                                         ; $6294: $95
    ld a, [hl]                                    ; $6295: $7e
    ld a, a                                       ; $6296: $7f
    sbc b                                         ; $6297: $98
    sub b                                         ; $6298: $90
    sub c                                         ; $6299: $91
    adc [hl]                                      ; $629a: $8e
    sbc [hl]                                      ; $629b: $9e
    sbc a                                         ; $629c: $9f
    and b                                         ; $629d: $a0
    sub d                                         ; $629e: $92
    and d                                         ; $629f: $a2
    and e                                         ; $62a0: $a3
    and h                                         ; $62a1: $a4
    and l                                         ; $62a2: $a5
    add hl, bc                                    ; $62a3: $09
    add hl, bc                                    ; $62a4: $09
    ld bc, $0901                                  ; $62a5: $01 $01 $09
    add hl, bc                                    ; $62a8: $09
    add hl, bc                                    ; $62a9: $09
    add hl, bc                                    ; $62aa: $09
    add hl, bc                                    ; $62ab: $09
    add hl, bc                                    ; $62ac: $09
    add hl, bc                                    ; $62ad: $09
    add hl, bc                                    ; $62ae: $09
    add hl, bc                                    ; $62af: $09
    add hl, bc                                    ; $62b0: $09
    add hl, bc                                    ; $62b1: $09
    add hl, bc                                    ; $62b2: $09
    and [hl]                                      ; $62b3: $a6
    and a                                         ; $62b4: $a7
    sbc d                                         ; $62b5: $9a
    sbc e                                         ; $62b6: $9b
    xor b                                         ; $62b7: $a8
    sbc a                                         ; $62b8: $9f
    and b                                         ; $62b9: $a0
    and c                                         ; $62ba: $a1
    and d                                         ; $62bb: $a2
    and e                                         ; $62bc: $a3
    and h                                         ; $62bd: $a4
    and l                                         ; $62be: $a5
    sbc h                                         ; $62bf: $9c
    sbc l                                         ; $62c0: $9d
    sub [hl]                                      ; $62c1: $96
    sub a                                         ; $62c2: $97
    add hl, bc                                    ; $62c3: $09
    add hl, bc                                    ; $62c4: $09
    add hl, bc                                    ; $62c5: $09
    add hl, bc                                    ; $62c6: $09
    add hl, bc                                    ; $62c7: $09
    add hl, bc                                    ; $62c8: $09
    add hl, bc                                    ; $62c9: $09
    add hl, bc                                    ; $62ca: $09
    add hl, bc                                    ; $62cb: $09
    add hl, bc                                    ; $62cc: $09
    add hl, bc                                    ; $62cd: $09
    add hl, bc                                    ; $62ce: $09
    add hl, bc                                    ; $62cf: $09
    add hl, bc                                    ; $62d0: $09
    add hl, bc                                    ; $62d1: $09
    add hl, bc                                    ; $62d2: $09
    sbc [hl]                                      ; $62d3: $9e
    sbc a                                         ; $62d4: $9f
    and b                                         ; $62d5: $a0
    and c                                         ; $62d6: $a1
    and d                                         ; $62d7: $a2
    and e                                         ; $62d8: $a3
    and h                                         ; $62d9: $a4
    and l                                         ; $62da: $a5
    sbc h                                         ; $62db: $9c
    sbc l                                         ; $62dc: $9d
    sub [hl]                                      ; $62dd: $96
    sub a                                         ; $62de: $97
    sbc b                                         ; $62df: $98
    sbc c                                         ; $62e0: $99
    sbc d                                         ; $62e1: $9a
    sbc e                                         ; $62e2: $9b
    add hl, bc                                    ; $62e3: $09
    add hl, bc                                    ; $62e4: $09
    add hl, bc                                    ; $62e5: $09
    add hl, bc                                    ; $62e6: $09
    add hl, bc                                    ; $62e7: $09
    add hl, bc                                    ; $62e8: $09
    add hl, bc                                    ; $62e9: $09
    add hl, bc                                    ; $62ea: $09
    add hl, bc                                    ; $62eb: $09
    add hl, bc                                    ; $62ec: $09
    add hl, bc                                    ; $62ed: $09
    add hl, bc                                    ; $62ee: $09
    add hl, bc                                    ; $62ef: $09
    add hl, bc                                    ; $62f0: $09
    add hl, bc                                    ; $62f1: $09
    add hl, bc                                    ; $62f2: $09
    and d                                         ; $62f3: $a2
    and e                                         ; $62f4: $a3
    and h                                         ; $62f5: $a4
    and l                                         ; $62f6: $a5
    sbc h                                         ; $62f7: $9c
    sbc l                                         ; $62f8: $9d
    sub [hl]                                      ; $62f9: $96
    sub a                                         ; $62fa: $97
    sbc b                                         ; $62fb: $98
    sbc c                                         ; $62fc: $99
    sbc d                                         ; $62fd: $9a
    sbc e                                         ; $62fe: $9b
    sbc [hl]                                      ; $62ff: $9e
    sbc a                                         ; $6300: $9f
    and b                                         ; $6301: $a0
    and c                                         ; $6302: $a1
    add hl, bc                                    ; $6303: $09
    add hl, bc                                    ; $6304: $09
    add hl, bc                                    ; $6305: $09
    add hl, bc                                    ; $6306: $09
    add hl, bc                                    ; $6307: $09
    add hl, bc                                    ; $6308: $09
    add hl, bc                                    ; $6309: $09
    add hl, bc                                    ; $630a: $09
    add hl, bc                                    ; $630b: $09
    add hl, bc                                    ; $630c: $09
    add hl, bc                                    ; $630d: $09
    add hl, bc                                    ; $630e: $09
    add hl, bc                                    ; $630f: $09
    add hl, bc                                    ; $6310: $09
    add hl, bc                                    ; $6311: $09
    add hl, bc                                    ; $6312: $09
    sbc h                                         ; $6313: $9c
    sbc l                                         ; $6314: $9d
    sub [hl]                                      ; $6315: $96
    sub a                                         ; $6316: $97
    sbc b                                         ; $6317: $98
    sbc c                                         ; $6318: $99
    sbc d                                         ; $6319: $9a
    sbc e                                         ; $631a: $9b
    sbc [hl]                                      ; $631b: $9e
    sbc a                                         ; $631c: $9f
    and b                                         ; $631d: $a0
    and c                                         ; $631e: $a1
    and d                                         ; $631f: $a2
    and e                                         ; $6320: $a3
    and h                                         ; $6321: $a4
    and l                                         ; $6322: $a5
    add hl, bc                                    ; $6323: $09
    add hl, bc                                    ; $6324: $09
    add hl, bc                                    ; $6325: $09
    add hl, bc                                    ; $6326: $09
    add hl, bc                                    ; $6327: $09
    add hl, bc                                    ; $6328: $09
    add hl, bc                                    ; $6329: $09
    add hl, bc                                    ; $632a: $09
    add hl, bc                                    ; $632b: $09
    add hl, bc                                    ; $632c: $09
    add hl, bc                                    ; $632d: $09
    add hl, bc                                    ; $632e: $09
    add hl, bc                                    ; $632f: $09
    add hl, bc                                    ; $6330: $09
    add hl, bc                                    ; $6331: $09
    add hl, bc                                    ; $6332: $09
    di                                            ; $6333: $f3
    di                                            ; $6334: $f3
    di                                            ; $6335: $f3
    di                                            ; $6336: $f3
    di                                            ; $6337: $f3
    di                                            ; $6338: $f3
    xor c                                         ; $6339: $a9
    di                                            ; $633a: $f3
    di                                            ; $633b: $f3
    di                                            ; $633c: $f3
    xor d                                         ; $633d: $aa
    xor e                                         ; $633e: $ab
    di                                            ; $633f: $f3
    di                                            ; $6340: $f3
    xor h                                         ; $6341: $ac
    xor l                                         ; $6342: $ad
    ld [bc], a                                    ; $6343: $02
    ld [bc], a                                    ; $6344: $02
    ld [bc], a                                    ; $6345: $02
    ld [bc], a                                    ; $6346: $02
    ld [bc], a                                    ; $6347: $02
    ld [bc], a                                    ; $6348: $02
    ld a, [bc]                                    ; $6349: $0a
    ld [bc], a                                    ; $634a: $02
    ld [bc], a                                    ; $634b: $02
    ld [bc], a                                    ; $634c: $02
    ld a, [bc]                                    ; $634d: $0a
    ld a, [bc]                                    ; $634e: $0a
    ld [bc], a                                    ; $634f: $02
    ld [bc], a                                    ; $6350: $02
    ld a, [bc]                                    ; $6351: $0a
    ld a, [bc]                                    ; $6352: $0a
    di                                            ; $6353: $f3
    xor [hl]                                      ; $6354: $ae
    di                                            ; $6355: $f3
    di                                            ; $6356: $f3
    di                                            ; $6357: $f3
    di                                            ; $6358: $f3
    di                                            ; $6359: $f3
    di                                            ; $635a: $f3
    di                                            ; $635b: $f3
    di                                            ; $635c: $f3
    di                                            ; $635d: $f3
    di                                            ; $635e: $f3
    di                                            ; $635f: $f3
    di                                            ; $6360: $f3
    di                                            ; $6361: $f3
    di                                            ; $6362: $f3
    inc bc                                        ; $6363: $03
    dec bc                                        ; $6364: $0b
    inc bc                                        ; $6365: $03
    inc bc                                        ; $6366: $03
    inc bc                                        ; $6367: $03
    inc bc                                        ; $6368: $03
    inc bc                                        ; $6369: $03
    inc bc                                        ; $636a: $03
    ld [bc], a                                    ; $636b: $02
    ld [bc], a                                    ; $636c: $02
    ld [bc], a                                    ; $636d: $02
    ld [bc], a                                    ; $636e: $02
    ld [bc], a                                    ; $636f: $02
    ld [bc], a                                    ; $6370: $02
    ld [bc], a                                    ; $6371: $02
    ld [bc], a                                    ; $6372: $02
    xor a                                         ; $6373: $af
    or b                                          ; $6374: $b0
    rst $28                                       ; $6375: $ef
    or c                                          ; $6376: $b1
    or d                                          ; $6377: $b2
    or e                                          ; $6378: $b3
    di                                            ; $6379: $f3
    or h                                          ; $637a: $b4
    or l                                          ; $637b: $b5
    di                                            ; $637c: $f3
    di                                            ; $637d: $f3
    di                                            ; $637e: $f3
    di                                            ; $637f: $f3
    di                                            ; $6380: $f3
    di                                            ; $6381: $f3
    di                                            ; $6382: $f3
    dec bc                                        ; $6383: $0b
    dec bc                                        ; $6384: $0b
    inc bc                                        ; $6385: $03
    dec bc                                        ; $6386: $0b
    dec bc                                        ; $6387: $0b
    dec bc                                        ; $6388: $0b
    inc bc                                        ; $6389: $03
    dec bc                                        ; $638a: $0b
    dec bc                                        ; $638b: $0b
    ld [bc], a                                    ; $638c: $02
    ld [bc], a                                    ; $638d: $02
    ld [bc], a                                    ; $638e: $02
    ld [bc], a                                    ; $638f: $02
    ld [bc], a                                    ; $6390: $02
    ld [bc], a                                    ; $6391: $02
    ld [bc], a                                    ; $6392: $02
    or [hl]                                       ; $6393: $b6
    or a                                          ; $6394: $b7
    cp b                                          ; $6395: $b8
    cp c                                          ; $6396: $b9
    add b                                         ; $6397: $80
    cp d                                          ; $6398: $ba
    cp e                                          ; $6399: $bb
    cp h                                          ; $639a: $bc
    ld l, h                                       ; $639b: $6c
    cp l                                          ; $639c: $bd
    cp [hl]                                       ; $639d: $be
    cp a                                          ; $639e: $bf
    ld [hl], c                                    ; $639f: $71
    ret nz                                        ; $63a0: $c0

    pop bc                                        ; $63a1: $c1
    jp nz, $0a0a                                  ; $63a2: $c2 $0a $0a

    ld a, [bc]                                    ; $63a5: $0a
    ld a, [bc]                                    ; $63a6: $0a
    add hl, bc                                    ; $63a7: $09
    add hl, bc                                    ; $63a8: $09
    add hl, bc                                    ; $63a9: $09
    add hl, bc                                    ; $63aa: $09
    ld bc, $0909                                  ; $63ab: $01 $09 $09
    add hl, bc                                    ; $63ae: $09
    ld bc, $0909                                  ; $63af: $01 $09 $09
    add hl, bc                                    ; $63b2: $09
    di                                            ; $63b3: $f3
    di                                            ; $63b4: $f3
    di                                            ; $63b5: $f3
    di                                            ; $63b6: $f3
    jp $f3f3                                      ; $63b7: $c3 $f3 $f3


    di                                            ; $63ba: $f3
    call nz, $c6c5                                ; $63bb: $c4 $c5 $c6
    rst $00                                       ; $63be: $c7
    ret z                                         ; $63bf: $c8

    ld l, e                                       ; $63c0: $6b
    ld l, h                                       ; $63c1: $6c
    ret                                           ; $63c2: $c9


    ld [bc], a                                    ; $63c3: $02
    ld [bc], a                                    ; $63c4: $02
    ld [bc], a                                    ; $63c5: $02
    ld [bc], a                                    ; $63c6: $02
    ld a, [bc]                                    ; $63c7: $0a
    ld [bc], a                                    ; $63c8: $02
    ld [bc], a                                    ; $63c9: $02
    ld [bc], a                                    ; $63ca: $02
    ld a, [bc]                                    ; $63cb: $0a
    ld a, [bc]                                    ; $63cc: $0a
    ld a, [bc]                                    ; $63cd: $0a
    ld a, [bc]                                    ; $63ce: $0a
    add hl, bc                                    ; $63cf: $09
    ld bc, $0901                                  ; $63d0: $01 $01 $09
    di                                            ; $63d3: $f3
    di                                            ; $63d4: $f3
    di                                            ; $63d5: $f3
    di                                            ; $63d6: $f3
    di                                            ; $63d7: $f3
    di                                            ; $63d8: $f3
    di                                            ; $63d9: $f3
    di                                            ; $63da: $f3
    jp z, $cccb                                   ; $63db: $ca $cb $cc

    call z, $cecd                                 ; $63de: $cc $cd $ce
    ld h, a                                       ; $63e1: $67
    rst $08                                       ; $63e2: $cf
    ld [bc], a                                    ; $63e3: $02
    ld [bc], a                                    ; $63e4: $02
    ld [bc], a                                    ; $63e5: $02
    ld [bc], a                                    ; $63e6: $02
    ld [bc], a                                    ; $63e7: $02
    ld [bc], a                                    ; $63e8: $02
    ld [bc], a                                    ; $63e9: $02
    ld [bc], a                                    ; $63ea: $02
    ld a, [bc]                                    ; $63eb: $0a
    ld a, [bc]                                    ; $63ec: $0a
    ld a, [bc]                                    ; $63ed: $0a
    ld a, [bc]                                    ; $63ee: $0a
    add hl, bc                                    ; $63ef: $09
    add hl, bc                                    ; $63f0: $09
    ld bc, $7e09                                  ; $63f1: $01 $09 $7e
    ret nc                                        ; $63f4: $d0

    pop de                                        ; $63f5: $d1
    jp nc, $d38f                                  ; $63f6: $d2 $8f $d3

    call nc, $d6d5                                ; $63f9: $d4 $d5 $d6
    rst $10                                       ; $63fc: $d7
    ret c                                         ; $63fd: $d8

    reti                                          ; $63fe: $d9


    sbc h                                         ; $63ff: $9c
    jp c, $dcdb                                   ; $6400: $da $db $dc

    ld bc, $0909                                  ; $6403: $01 $09 $09
    add hl, bc                                    ; $6406: $09
    add hl, bc                                    ; $6407: $09
    add hl, bc                                    ; $6408: $09
    add hl, bc                                    ; $6409: $09
    add hl, bc                                    ; $640a: $09
    add hl, bc                                    ; $640b: $09
    add hl, bc                                    ; $640c: $09
    add hl, bc                                    ; $640d: $09
    add hl, bc                                    ; $640e: $09
    add hl, bc                                    ; $640f: $09
    add hl, bc                                    ; $6410: $09
    add hl, bc                                    ; $6411: $09
    add hl, bc                                    ; $6412: $09
    db $dd                                        ; $6413: $dd
    sbc $7a                                       ; $6414: $de $7a
    ld l, e                                       ; $6416: $6b
    rst $18                                       ; $6417: $df
    ldh [$72], a                                  ; $6418: $e0 $72
    pop hl                                        ; $641a: $e1
    ld [c], a                                     ; $641b: $e2
    db $e3                                        ; $641c: $e3
    ld a, h                                       ; $641d: $7c
    ld a, l                                       ; $641e: $7d
    db $e4                                        ; $641f: $e4
    push hl                                       ; $6420: $e5
    ld [hl], e                                    ; $6421: $73
    ld [hl], h                                    ; $6422: $74
    add hl, bc                                    ; $6423: $09
    add hl, bc                                    ; $6424: $09
    ld bc, $0901                                  ; $6425: $01 $01 $09
    add hl, bc                                    ; $6428: $09
    ld bc, $0909                                  ; $6429: $01 $09 $09
    add hl, bc                                    ; $642c: $09
    ld bc, $0901                                  ; $642d: $01 $01 $09
    add hl, bc                                    ; $6430: $09
    ld bc, $6c01                                  ; $6431: $01 $01 $6c
    ld a, c                                       ; $6434: $79
    and $c9                                       ; $6435: $e6 $c9
    ld h, b                                       ; $6437: $60
    ld l, e                                       ; $6438: $6b
    ld l, h                                       ; $6439: $6c
    ld a, c                                       ; $643a: $79
    ld h, h                                       ; $643b: $64
    ld [hl], c                                    ; $643c: $71
    ld [hl], d                                    ; $643d: $72
    ld l, e                                       ; $643e: $6b
    ld [hl], b                                    ; $643f: $70
    ld a, e                                       ; $6440: $7b
    ld a, h                                       ; $6441: $7c
    ld a, l                                       ; $6442: $7d
    ld bc, $0901                                  ; $6443: $01 $01 $09
    add hl, bc                                    ; $6446: $09
    ld bc, $0101                                  ; $6447: $01 $01 $01
    ld bc, $0101                                  ; $644a: $01 $01 $01
    ld bc, $0101                                  ; $644d: $01 $01 $01
    ld bc, $0101                                  ; $6450: $01 $01 $01
    sbc b                                         ; $6453: $98
    sbc c                                         ; $6454: $99
    rst $20                                       ; $6455: $e7
    add sp, -$62                                  ; $6456: $e8 $9e
    sbc a                                         ; $6458: $9f
    and b                                         ; $6459: $a0
    sub a                                         ; $645a: $97
    and d                                         ; $645b: $a2
    and e                                         ; $645c: $a3
    and h                                         ; $645d: $a4
    sbc e                                         ; $645e: $9b
    sbc h                                         ; $645f: $9c
    sbc l                                         ; $6460: $9d
    sub [hl]                                      ; $6461: $96
    and c                                         ; $6462: $a1
    add hl, bc                                    ; $6463: $09
    add hl, bc                                    ; $6464: $09
    add hl, bc                                    ; $6465: $09
    add hl, bc                                    ; $6466: $09
    add hl, bc                                    ; $6467: $09
    add hl, bc                                    ; $6468: $09
    add hl, bc                                    ; $6469: $09
    add hl, bc                                    ; $646a: $09
    add hl, bc                                    ; $646b: $09
    add hl, bc                                    ; $646c: $09
    add hl, bc                                    ; $646d: $09
    add hl, bc                                    ; $646e: $09
    add hl, bc                                    ; $646f: $09
    add hl, bc                                    ; $6470: $09
    add hl, bc                                    ; $6471: $09
    add hl, bc                                    ; $6472: $09
    jp hl                                         ; $6473: $e9


    sub l                                         ; $6474: $95
    ld a, [hl]                                    ; $6475: $7e
    ld a, a                                       ; $6476: $7f
    adc a                                         ; $6477: $8f
    sub b                                         ; $6478: $90
    sub c                                         ; $6479: $91
    ld [hl], h                                    ; $647a: $74
    sbc [hl]                                      ; $647b: $9e
    and a                                         ; $647c: $a7
    ld [$a292], a                                 ; $647d: $ea $92 $a2
    and e                                         ; $6480: $a3
    db $eb                                        ; $6481: $eb
    db $ec                                        ; $6482: $ec
    add hl, bc                                    ; $6483: $09
    add hl, bc                                    ; $6484: $09
    ld bc, $0901                                  ; $6485: $01 $01 $09
    add hl, bc                                    ; $6488: $09
    add hl, bc                                    ; $6489: $09
    ld bc, $0909                                  ; $648a: $01 $09 $09
    add hl, bc                                    ; $648d: $09
    add hl, bc                                    ; $648e: $09
    add hl, bc                                    ; $648f: $09
    add hl, bc                                    ; $6490: $09
    add hl, bc                                    ; $6491: $09
    add hl, bc                                    ; $6492: $09
    ld [hl], e                                    ; $6493: $73
    db $ed                                        ; $6494: $ed
    xor $ef                                       ; $6495: $ee $ef
    ld a, [hl]                                    ; $6497: $7e
    ld a, a                                       ; $6498: $7f
    ld [hl], e                                    ; $6499: $73
    ld h, b                                       ; $649a: $60
    ld [hl], e                                    ; $649b: $73
    ld [hl], h                                    ; $649c: $74
    ld a, [hl]                                    ; $649d: $7e
    ld a, a                                       ; $649e: $7f
    xor b                                         ; $649f: $a8
    ld a, a                                       ; $64a0: $7f
    ld [hl], e                                    ; $64a1: $73
    ld [hl], h                                    ; $64a2: $74
    ld bc, $0909                                  ; $64a3: $01 $09 $09
    add hl, bc                                    ; $64a6: $09
    ld bc, $0101                                  ; $64a7: $01 $01 $01
    ld bc, $0101                                  ; $64aa: $01 $01 $01
    ld bc, $0901                                  ; $64ad: $01 $01 $09
    ld bc, $0101                                  ; $64b0: $01 $01 $01

    db $db, $03, $00, $00, $00, $01, $00, $02, $00, $03, $00, $41, $10, $02, $00, $11
    db $00, $12, $00, $1f, $02, $00, $14, $20, $00, $21, $02, $10, $2b, $02, $20, $35
    db $00, $00, $36, $00, $42, $00, $43, $00, $44, $00, $50, $45, $02, $10, $4c, $20
    db $00, $04, $00, $05, $00, $00, $06, $00, $07, $00, $13, $00, $14, $00, $00, $15
    db $00, $16, $00, $22, $00, $23, $00, $40, $24, $38, $10, $2c, $00, $2d, $00, $2e
    db $00, $40, $37, $02, $00, $38, $00, $39, $00, $46, $00, $40, $47, $38, $50, $08
    db $00, $09, $00, $0a, $00, $00, $0b, $00, $17, $00, $18, $00, $19, $00, $01, $1a
    db $00, $25, $00, $26, $00, $27, $70, $10, $00, $2f, $00, $30, $00, $31, $00, $3a
    db $00, $00, $3b, $00, $3c, $00, $3d, $00, $48, $00, $40, $49, $70, $50, $0c, $00
    db $0d, $00, $0e, $00, $00, $0f, $00, $1b, $00, $1c, $00, $1d, $00, $01, $1e, $00
    db $28, $00, $29, $00, $2a, $a8, $10, $00, $32, $00, $33, $00, $34, $00, $3e, $00
    db $00, $3f, $00, $40, $00, $41, $00, $4a, $00, $40, $4b, $a8, $50, $4d, $00, $4e
    db $00, $4f, $00, $00, $50, $00, $5c, $00, $5d, $00, $5e, $00, $01, $5f, $00, $6c
    db $00, $6d, $00, $6e, $02, $00, $00, $7b, $00, $7c, $00, $7d, $00, $7e, $00, $00
    db $8b, $00, $8c, $00, $8d, $00, $8e, $00, $10, $9b, $00, $9c, $e0, $50, $51, $00
    db $52, $00, $00, $53, $00, $54, $00, $60, $00, $61, $00, $00, $62, $00, $63, $00
    db $6f, $00, $70, $00, $00, $71, $00, $72, $00, $7f, $00, $80, $00, $00, $81, $00
    db $82, $00, $8f, $00, $90, $00, $00, $91, $00, $92, $00, $9d, $00, $9e, $00, $00
    db $9f, $00, $a0, $00, $a9, $00, $aa, $00, $40, $ab, $38, $01, $55, $00, $56, $00
    db $57, $00, $00, $58, $00, $64, $00, $65, $00, $66, $00, $00, $67, $00, $73, $00
    db $74, $00, $75, $00, $00, $76, $00, $83, $00, $84, $00, $85, $00, $00, $86, $00
    db $93, $00, $94, $00, $95, $00, $00, $96, $00, $a1, $00, $a2, $00, $a3, $00, $01
    db $a4, $00, $ac, $00, $ad, $00, $ae, $70, $01, $04, $59, $00, $5a, $00, $5b, $02
    db $00, $68, $00, $00, $69, $00, $6a, $00, $6b, $00, $77, $00, $00, $78, $00, $79
    db $00, $7a, $00, $87, $00, $00, $88, $00, $89, $00, $8a, $00, $97, $00, $00, $98
    db $00, $99, $00, $9a, $00, $a5, $00, $00, $a6, $00, $a7, $00, $a8, $00, $af, $00
    db $00, $b0, $00, $b1, $00, $b2, $00, $b3, $00, $00, $b4, $00, $b5, $00, $b6, $00
    db $c1, $00, $40, $c2, $02, $10, $cf, $00, $d0, $00, $d1, $00, $00, $d2, $00, $df
    db $00, $e0, $00, $e1, $00, $00, $e2, $00, $ed, $00, $ee, $00, $ef, $00, $01, $f0
    db $00, $fd, $00, $fe, $00, $ff, $ed, $01, $00, $0d, $01, $0e, $01, $0f, $01, $10
    db $01, $00, $b7, $00, $b8, $00, $b9, $00, $ba, $00, $00, $c3, $00, $c4, $00, $c5
    db $00, $c6, $00, $01, $d3, $00, $d4, $00, $d5, $00, $d6, $02, $00, $00, $e3, $00
    db $e4, $00, $e5, $00, $f1, $00, $00, $f2, $00, $f3, $00, $f4, $00, $01, $01, $00
    db $02, $01, $03, $01, $04, $01, $11, $01, $00, $12, $01, $13, $01, $14, $01, $bb
    db $00, $00, $bc, $00, $bd, $00, $be, $00, $c7, $00, $00, $c8, $00, $c9, $00, $ca
    db $00, $d7, $00, $00, $d8, $00, $d9, $00, $da, $00, $e6, $00, $40, $e7, $42, $00
    db $e8, $00, $f5, $00, $f6, $00, $00, $f7, $00, $f8, $00, $05, $01, $06, $01, $00
    db $07, $01, $08, $01, $15, $01, $16, $01, $04, $17, $01, $18, $01, $3a, $da, $01
    db $bf, $00, $00, $c0, $00, $cb, $00, $cc, $00, $cd, $00, $00, $ce, $00, $db, $00
    db $dc, $00, $dd, $00, $00, $de, $00, $e9, $00, $ea, $00, $eb, $00, $00, $ec, $00
    db $f9, $00, $fa, $00, $fb, $00, $00, $fc, $00, $09, $01, $0a, $01, $0b, $01, $00
    db $0c, $01, $19, $01, $1a, $01, $1b, $01, $00, $1c, $01, $1d, $01, $1e, $01, $1f
    db $01, $00, $20, $01, $2c, $01, $2d, $01, $2e, $01, $00, $2f, $01, $3c, $01, $3d
    db $01, $3e, $01, $00, $3f, $01, $4c, $01, $4d, $01, $4e, $01, $00, $4f, $01, $5c
    db $01, $5d, $01, $5e, $01, $00, $5f, $01, $6a, $01, $6b, $01, $6c, $01, $00, $6d
    db $01, $79, $01, $7a, $01, $7b, $01, $00, $7c, $01, $21, $01, $22, $01, $23, $01
    db $00, $24, $01, $30, $01, $31, $01, $32, $01, $00, $33, $01, $40, $01, $41, $01
    db $42, $01, $00, $43, $01, $50, $01, $51, $01, $52, $01, $00, $53, $01, $60, $01
    db $61, $01, $62, $01, $00, $63, $01, $6e, $01, $6f, $01, $70, $01, $00, $71, $01
    db $7d, $01, $7e, $01, $7f, $01, $10, $80, $01, $25, $02, $00, $26, $01, $27, $01
    db $00, $34, $01, $35, $01, $36, $01, $37, $01, $00, $44, $01, $45, $01, $46, $01
    db $47, $01, $00, $54, $01, $55, $01, $56, $01, $57, $01, $20, $64, $01, $dc, $08
    db $65, $01, $72, $01, $73, $00, $01, $74, $01, $75, $01, $81, $01, $82, $80, $02
    db $00, $83, $01, $28, $01, $29, $01, $2a, $00, $01, $2b, $01, $38, $01, $39, $01
    db $3a, $00, $01, $3b, $01, $48, $01, $49, $01, $4a, $00, $01, $4b, $01, $58, $01
    db $59, $01, $5a, $00, $01, $5b, $01, $66, $01, $67, $01, $68, $00, $01, $69, $01
    db $76, $01, $77, $01, $78, $80, $02, $00, $84, $01, $85, $01, $86, $01, $87, $00
    db $01, $88, $01, $89, $01, $8a, $01, $8b, $00, $01, $94, $01, $95, $01, $96, $01
    db $97, $00, $01, $a2, $01, $a3, $01, $a4, $01, $a5, $00, $01, $ae, $01, $af, $01
    db $b0, $01, $b1, $00, $01, $be, $01, $bf, $01, $c0, $01, $c1, $00, $01, $ce, $01
    db $cf, $01, $d0, $01, $d1, $00, $01, $dc, $01, $dd, $01, $de, $01, $df, $40, $01
    db $ee, $09, $8c, $01, $8d, $01, $98, $01, $00, $99, $01, $9a, $01, $9b, $01, $a6
    db $01, $40, $a7, $02, $00, $a8, $01, $b2, $01, $b3, $01, $00, $b4, $01, $b5, $01
    db $c2, $01, $c3, $01, $00, $c4, $01, $c5, $01, $d2, $01, $d3, $01, $00, $d4, $01
    db $d5, $01, $e0, $01, $e1, $01, $00, $e2, $01, $e3, $01, $8e, $01, $8f, $01, $50
    db $90, $02, $00, $9c, $02, $10, $9d, $01, $a9, $01, $80, $fa, $1b, $b6, $01, $b7
    db $01, $b8, $01, $b9, $00, $01, $c6, $01, $c7, $01, $c8, $01, $c9, $80, $02, $00
    db $d6, $01, $d7, $01, $d8, $01, $e4, $02, $01, $e5, $01, $e6, $01, $e7, $30, $02
    db $91, $00, $01, $92, $01, $93, $01, $9e, $01, $9f, $00, $01, $a0, $01, $a1, $01
    db $aa, $01, $ab, $00, $01, $ac, $01, $ad, $01, $ba, $01, $bb, $00, $01, $bc, $01
    db $bd, $01, $ca, $01, $cb, $00, $01, $cc, $01, $cd, $01, $d9, $01, $da, $08, $01
    db $21, $00, $db, $9e, $01, $4d, $01, $e8, $00, $01, $e9, $01

    ld [hl], h                                    ; $692f: $74
    inc bc                                        ; $6930: $03
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    ld bc, $0200                                  ; $6934: $01 $00 $02
    nop                                           ; $6937: $00
    inc bc                                        ; $6938: $03
    nop                                           ; $6939: $00
    nop                                           ; $693a: $00
    stop                                          ; $693b: $10 $00
    ld de, $1200                                  ; $693d: $11 $00 $12
    nop                                           ; $6940: $00
    inc de                                        ; $6941: $13
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    dec e                                         ; $6944: $1d
    nop                                           ; $6945: $00
    ld e, $00                                     ; $6946: $1e $00
    rra                                           ; $6948: $1f
    nop                                           ; $6949: $00
    jr nz, jr_08e_694c                            ; $694a: $20 $00

jr_08e_694c:
    nop                                           ; $694c: $00
    dec l                                         ; $694d: $2d
    nop                                           ; $694e: $00
    ld l, $00                                     ; $694f: $2e $00
    cpl                                           ; $6951: $2f
    nop                                           ; $6952: $00
    jr nc, jr_08e_6955                            ; $6953: $30 $00

jr_08e_6955:
    nop                                           ; $6955: $00
    dec a                                         ; $6956: $3d
    nop                                           ; $6957: $00
    ld a, $00                                     ; $6958: $3e $00
    ccf                                           ; $695a: $3f
    nop                                           ; $695b: $00
    ld b, b                                       ; $695c: $40
    nop                                           ; $695d: $00
    ld b, h                                       ; $695e: $44
    ld c, l                                       ; $695f: $4d
    inc b                                         ; $6960: $04
    nop                                           ; $6961: $00
    ld c, [hl]                                    ; $6962: $4e
    nop                                           ; $6963: $00
    ld c, a                                       ; $6964: $4f
    inc h                                         ; $6965: $24
    nop                                           ; $6966: $00
    ld e, h                                       ; $6967: $5c
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    ld e, l                                       ; $696a: $5d
    nop                                           ; $696b: $00
    ld e, [hl]                                    ; $696c: $5e
    nop                                           ; $696d: $00
    ld l, e                                       ; $696e: $6b
    nop                                           ; $696f: $00
    ld l, h                                       ; $6970: $6c
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    inc b                                         ; $6973: $04
    nop                                           ; $6974: $00
    dec b                                         ; $6975: $05
    nop                                           ; $6976: $00
    ld b, $00                                     ; $6977: $06 $00
    rlca                                          ; $6979: $07
    nop                                           ; $697a: $00
    db $10                                        ; $697b: $10
    inc d                                         ; $697c: $14
    nop                                           ; $697d: $00
    dec d                                         ; $697e: $15
    inc a                                         ; $697f: $3c
    nop                                           ; $6980: $00
    ld d, $00                                     ; $6981: $16 $00
    ld hl, $0000                                  ; $6983: $21 $00 $00
    ld [hl+], a                                   ; $6986: $22
    nop                                           ; $6987: $00
    inc hl                                        ; $6988: $23
    nop                                           ; $6989: $00
    inc h                                         ; $698a: $24
    nop                                           ; $698b: $00
    ld sp, $0000                                  ; $698c: $31 $00 $00
    ld [hl-], a                                   ; $698f: $32
    nop                                           ; $6990: $00
    inc sp                                        ; $6991: $33
    nop                                           ; $6992: $00
    inc [hl]                                      ; $6993: $34
    nop                                           ; $6994: $00
    ld b, c                                       ; $6995: $41
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    ld b, d                                       ; $6998: $42
    nop                                           ; $6999: $00
    ld b, e                                       ; $699a: $43
    nop                                           ; $699b: $00
    ld b, h                                       ; $699c: $44
    nop                                           ; $699d: $00
    ld d, b                                       ; $699e: $50
    nop                                           ; $699f: $00
    nop                                           ; $69a0: $00
    ld d, c                                       ; $69a1: $51
    nop                                           ; $69a2: $00
    ld d, d                                       ; $69a3: $52
    nop                                           ; $69a4: $00
    ld d, e                                       ; $69a5: $53
    nop                                           ; $69a6: $00
    ld e, a                                       ; $69a7: $5f
    nop                                           ; $69a8: $00
    nop                                           ; $69a9: $00
    ld h, b                                       ; $69aa: $60
    nop                                           ; $69ab: $00
    ld h, c                                       ; $69ac: $61
    nop                                           ; $69ad: $00
    ld h, d                                       ; $69ae: $62
    nop                                           ; $69af: $00
    ld l, l                                       ; $69b0: $6d
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    ld l, [hl]                                    ; $69b3: $6e
    nop                                           ; $69b4: $00
    ld [$0900], sp                                ; $69b5: $08 $00 $09
    nop                                           ; $69b8: $00
    ld a, [bc]                                    ; $69b9: $0a
    nop                                           ; $69ba: $00
    inc b                                         ; $69bb: $04
    dec bc                                        ; $69bc: $0b
    nop                                           ; $69bd: $00
    rla                                           ; $69be: $17
    nop                                           ; $69bf: $00
    jr jr_08e_6a3a                                ; $69c0: $18 $78

    nop                                           ; $69c2: $00
    add hl, de                                    ; $69c3: $19
    nop                                           ; $69c4: $00
    nop                                           ; $69c5: $00
    dec h                                         ; $69c6: $25
    nop                                           ; $69c7: $00
    ld h, $00                                     ; $69c8: $26 $00
    daa                                           ; $69ca: $27
    nop                                           ; $69cb: $00
    jr z, jr_08e_69ce                             ; $69cc: $28 $00

jr_08e_69ce:
    nop                                           ; $69ce: $00
    dec [hl]                                      ; $69cf: $35
    nop                                           ; $69d0: $00
    ld [hl], $00                                  ; $69d1: $36 $00
    scf                                           ; $69d3: $37
    nop                                           ; $69d4: $00
    jr c, jr_08e_69d7                             ; $69d5: $38 $00

jr_08e_69d7:
    nop                                           ; $69d7: $00
    ld b, l                                       ; $69d8: $45
    nop                                           ; $69d9: $00
    ld b, [hl]                                    ; $69da: $46
    nop                                           ; $69db: $00
    ld b, a                                       ; $69dc: $47
    nop                                           ; $69dd: $00
    ld c, b                                       ; $69de: $48
    nop                                           ; $69df: $00
    nop                                           ; $69e0: $00
    ld d, h                                       ; $69e1: $54
    nop                                           ; $69e2: $00
    ld d, l                                       ; $69e3: $55
    nop                                           ; $69e4: $00
    ld d, [hl]                                    ; $69e5: $56
    nop                                           ; $69e6: $00
    ld d, a                                       ; $69e7: $57
    nop                                           ; $69e8: $00
    nop                                           ; $69e9: $00
    ld h, e                                       ; $69ea: $63
    nop                                           ; $69eb: $00
    ld h, h                                       ; $69ec: $64
    nop                                           ; $69ed: $00
    ld h, l                                       ; $69ee: $65
    nop                                           ; $69ef: $00
    ld h, [hl]                                    ; $69f0: $66
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    ld l, a                                       ; $69f3: $6f
    nop                                           ; $69f4: $00
    ld [hl], b                                    ; $69f5: $70
    nop                                           ; $69f6: $00
    inc c                                         ; $69f7: $0c
    nop                                           ; $69f8: $00
    dec c                                         ; $69f9: $0d
    nop                                           ; $69fa: $00
    ld bc, $000e                                  ; $69fb: $01 $0e $00
    rrca                                          ; $69fe: $0f
    nop                                           ; $69ff: $00
    ld a, [de]                                    ; $6a00: $1a
    nop                                           ; $6a01: $00
    dec de                                        ; $6a02: $1b
    or h                                          ; $6a03: $b4
    nop                                           ; $6a04: $00
    nop                                           ; $6a05: $00
    inc e                                         ; $6a06: $1c
    nop                                           ; $6a07: $00
    add hl, hl                                    ; $6a08: $29
    nop                                           ; $6a09: $00
    ld a, [hl+]                                   ; $6a0a: $2a
    nop                                           ; $6a0b: $00
    dec hl                                        ; $6a0c: $2b
    nop                                           ; $6a0d: $00
    nop                                           ; $6a0e: $00
    inc l                                         ; $6a0f: $2c
    nop                                           ; $6a10: $00
    add hl, sp                                    ; $6a11: $39
    nop                                           ; $6a12: $00
    ld a, [hl-]                                   ; $6a13: $3a
    nop                                           ; $6a14: $00
    dec sp                                        ; $6a15: $3b
    nop                                           ; $6a16: $00
    nop                                           ; $6a17: $00
    inc a                                         ; $6a18: $3c
    nop                                           ; $6a19: $00
    ld c, c                                       ; $6a1a: $49
    nop                                           ; $6a1b: $00
    ld c, d                                       ; $6a1c: $4a
    nop                                           ; $6a1d: $00
    ld c, e                                       ; $6a1e: $4b
    nop                                           ; $6a1f: $00
    nop                                           ; $6a20: $00
    ld c, h                                       ; $6a21: $4c
    nop                                           ; $6a22: $00
    ld e, b                                       ; $6a23: $58
    nop                                           ; $6a24: $00
    ld e, c                                       ; $6a25: $59
    nop                                           ; $6a26: $00
    ld e, d                                       ; $6a27: $5a
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    ld e, e                                       ; $6a2a: $5b
    nop                                           ; $6a2b: $00
    ld h, a                                       ; $6a2c: $67
    nop                                           ; $6a2d: $00
    ld l, b                                       ; $6a2e: $68
    nop                                           ; $6a2f: $00
    ld l, c                                       ; $6a30: $69
    nop                                           ; $6a31: $00
    nop                                           ; $6a32: $00
    ld l, d                                       ; $6a33: $6a
    nop                                           ; $6a34: $00
    ld [hl], c                                    ; $6a35: $71
    nop                                           ; $6a36: $00
    ld [hl], d                                    ; $6a37: $72
    nop                                           ; $6a38: $00
    ld [hl], e                                    ; $6a39: $73

jr_08e_6a3a:
    nop                                           ; $6a3a: $00
    nop                                           ; $6a3b: $00
    ld [hl], h                                    ; $6a3c: $74
    nop                                           ; $6a3d: $00
    ld [hl], l                                    ; $6a3e: $75
    nop                                           ; $6a3f: $00
    halt                                          ; $6a40: $76
    nop                                           ; $6a41: $00
    add c                                         ; $6a42: $81
    nop                                           ; $6a43: $00
    ld b, c                                       ; $6a44: $41
    add d                                         ; $6a45: $82
    ldh a, [rP1]                                  ; $6a46: $f0 $00
    add e                                         ; $6a48: $83
    nop                                           ; $6a49: $00
    adc l                                         ; $6a4a: $8d
    nop                                           ; $6a4b: $00
    adc [hl]                                      ; $6a4c: $8e
    ld hl, sp+$00                                 ; $6a4d: $f8 $00
    nop                                           ; $6a4f: $00
    adc a                                         ; $6a50: $8f
    nop                                           ; $6a51: $00
    sbc c                                         ; $6a52: $99
    nop                                           ; $6a53: $00
    sbc d                                         ; $6a54: $9a
    nop                                           ; $6a55: $00
    sbc e                                         ; $6a56: $9b
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    sbc h                                         ; $6a59: $9c
    nop                                           ; $6a5a: $00
    xor c                                         ; $6a5b: $a9
    nop                                           ; $6a5c: $00
    xor d                                         ; $6a5d: $aa
    nop                                           ; $6a5e: $00
    xor e                                         ; $6a5f: $ab
    nop                                           ; $6a60: $00
    ld de, $00ac                                  ; $6a61: $11 $ac $00
    cp c                                          ; $6a64: $b9
    ld c, $01                                     ; $6a65: $0e $01
    cp d                                          ; $6a67: $ba
    nop                                           ; $6a68: $00
    cp e                                          ; $6a69: $bb
    inc d                                         ; $6a6a: $14
    ld bc, $c800                                  ; $6a6b: $01 $00 $c8
    nop                                           ; $6a6e: $00
    ret                                           ; $6a6f: $c9


    nop                                           ; $6a70: $00
    jp z, $d700                                   ; $6a71: $ca $00 $d7

    nop                                           ; $6a74: $00
    nop                                           ; $6a75: $00
    ret c                                         ; $6a76: $d8

    nop                                           ; $6a77: $00
    ld [hl], a                                    ; $6a78: $77
    nop                                           ; $6a79: $00
    ld a, b                                       ; $6a7a: $78
    nop                                           ; $6a7b: $00
    ld a, c                                       ; $6a7c: $79
    nop                                           ; $6a7d: $00
    inc b                                         ; $6a7e: $04
    ld a, d                                       ; $6a7f: $7a
    nop                                           ; $6a80: $00
    add h                                         ; $6a81: $84
    nop                                           ; $6a82: $00
    add l                                         ; $6a83: $85
    inc l                                         ; $6a84: $2c
    ld bc, $0086                                  ; $6a85: $01 $86 $00
    db $10                                        ; $6a88: $10
    sub b                                         ; $6a89: $90
    nop                                           ; $6a8a: $00
    sub c                                         ; $6a8b: $91
    inc [hl]                                      ; $6a8c: $34
    ld bc, $0092                                  ; $6a8d: $01 $92 $00
    sbc l                                         ; $6a90: $9d
    nop                                           ; $6a91: $00
    nop                                           ; $6a92: $00
    sbc [hl]                                      ; $6a93: $9e
    nop                                           ; $6a94: $00
    sbc a                                         ; $6a95: $9f
    nop                                           ; $6a96: $00
    and b                                         ; $6a97: $a0
    nop                                           ; $6a98: $00
    xor l                                         ; $6a99: $ad
    nop                                           ; $6a9a: $00
    nop                                           ; $6a9b: $00
    xor [hl]                                      ; $6a9c: $ae
    nop                                           ; $6a9d: $00
    xor a                                         ; $6a9e: $af
    nop                                           ; $6a9f: $00
    or b                                          ; $6aa0: $b0
    nop                                           ; $6aa1: $00
    cp h                                          ; $6aa2: $bc
    nop                                           ; $6aa3: $00
    nop                                           ; $6aa4: $00
    cp l                                          ; $6aa5: $bd
    nop                                           ; $6aa6: $00
    cp [hl]                                       ; $6aa7: $be
    nop                                           ; $6aa8: $00
    cp a                                          ; $6aa9: $bf
    nop                                           ; $6aaa: $00
    rlc b                                         ; $6aab: $cb $00
    ld bc, $00cc                                  ; $6aad: $01 $cc $00
    call $ce00                                    ; $6ab0: $cd $00 $ce
    nop                                           ; $6ab3: $00
    reti                                          ; $6ab4: $d9


    ld e, d                                       ; $6ab5: $5a
    ld bc, $7b00                                  ; $6ab6: $01 $00 $7b
    nop                                           ; $6ab9: $00
    ld a, h                                       ; $6aba: $7c
    nop                                           ; $6abb: $00
    ld a, l                                       ; $6abc: $7d
    nop                                           ; $6abd: $00
    ld a, [hl]                                    ; $6abe: $7e
    nop                                           ; $6abf: $00
    db $10                                        ; $6ac0: $10
    add a                                         ; $6ac1: $87
    nop                                           ; $6ac2: $00
    adc b                                         ; $6ac3: $88
    ld l, b                                       ; $6ac4: $68
    ld bc, $0089                                  ; $6ac5: $01 $89 $00
    sub e                                         ; $6ac8: $93
    nop                                           ; $6ac9: $00
    ld b, b                                       ; $6aca: $40
    sub h                                         ; $6acb: $94
    ld [hl], b                                    ; $6acc: $70
    ld bc, $0095                                  ; $6acd: $01 $95 $00
    and c                                         ; $6ad0: $a1
    nop                                           ; $6ad1: $00
    and d                                         ; $6ad2: $a2
    nop                                           ; $6ad3: $00
    nop                                           ; $6ad4: $00
    and e                                         ; $6ad5: $a3
    nop                                           ; $6ad6: $00
    and h                                         ; $6ad7: $a4
    nop                                           ; $6ad8: $00
    or c                                          ; $6ad9: $b1
    nop                                           ; $6ada: $00
    or d                                          ; $6adb: $b2
    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    or e                                          ; $6ade: $b3
    nop                                           ; $6adf: $00
    or h                                          ; $6ae0: $b4
    nop                                           ; $6ae1: $00
    ret nz                                        ; $6ae2: $c0

    nop                                           ; $6ae3: $00
    pop bc                                        ; $6ae4: $c1
    nop                                           ; $6ae5: $00
    nop                                           ; $6ae6: $00
    jp nz, $c300                                  ; $6ae7: $c2 $00 $c3

    nop                                           ; $6aea: $00
    rst $08                                       ; $6aeb: $cf
    nop                                           ; $6aec: $00
    ret nc                                        ; $6aed: $d0

    nop                                           ; $6aee: $00
    ld b, $d1                                     ; $6aef: $06 $d1
    nop                                           ; $6af1: $00
    jp nc, $da00                                  ; $6af2: $d2 $00 $da

    sub [hl]                                      ; $6af5: $96
    ld bc, $0802                                  ; $6af6: $01 $02 $08
    ld a, a                                       ; $6af9: $7f
    ld [bc], a                                    ; $6afa: $02
    nop                                           ; $6afb: $00
    add b                                         ; $6afc: $80
    nop                                           ; $6afd: $00
    adc d                                         ; $6afe: $8a
    nop                                           ; $6aff: $00
    adc e                                         ; $6b00: $8b
    and h                                         ; $6b01: $a4
    ld bc, $088c                                  ; $6b02: $01 $8c $08
    nop                                           ; $6b05: $00
    sub [hl]                                      ; $6b06: $96
    nop                                           ; $6b07: $00
    sub a                                         ; $6b08: $97
    xor h                                         ; $6b09: $ac
    ld bc, $0098                                  ; $6b0a: $01 $98 $00
    and l                                         ; $6b0d: $a5
    nop                                           ; $6b0e: $00
    nop                                           ; $6b0f: $00
    and [hl]                                      ; $6b10: $a6
    nop                                           ; $6b11: $00
    and a                                         ; $6b12: $a7
    nop                                           ; $6b13: $00
    xor b                                         ; $6b14: $a8
    nop                                           ; $6b15: $00
    or l                                          ; $6b16: $b5
    nop                                           ; $6b17: $00
    nop                                           ; $6b18: $00
    or [hl]                                       ; $6b19: $b6
    nop                                           ; $6b1a: $00
    or a                                          ; $6b1b: $b7
    nop                                           ; $6b1c: $00
    cp b                                          ; $6b1d: $b8
    nop                                           ; $6b1e: $00
    call nz, RST_00                               ; $6b1f: $c4 $00 $00
    push bc                                       ; $6b22: $c5
    nop                                           ; $6b23: $00
    add $00                                       ; $6b24: $c6 $00
    rst $00                                       ; $6b26: $c7
    nop                                           ; $6b27: $00
    db $d3                                        ; $6b28: $d3
    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    call nc, $d500                                ; $6b2b: $d4 $00 $d5
    nop                                           ; $6b2e: $00
    sub $00                                       ; $6b2f: $d6 $00
    db $db                                        ; $6b31: $db
    add b                                         ; $6b32: $80
    jp nc, $dc01                                  ; $6b33: $d2 $01 $dc

    nop                                           ; $6b36: $00
    db $dd                                        ; $6b37: $dd
    nop                                           ; $6b38: $00
    sbc $00                                       ; $6b39: $de $00
    rst $18                                       ; $6b3b: $df
    nop                                           ; $6b3c: $00
    nop                                           ; $6b3d: $00
    db $ec                                        ; $6b3e: $ec
    nop                                           ; $6b3f: $00
    db $ed                                        ; $6b40: $ed
    nop                                           ; $6b41: $00
    xor $00                                       ; $6b42: $ee $00
    rst $28                                       ; $6b44: $ef
    ld [bc], a                                    ; $6b45: $02
    nop                                           ; $6b46: $00
    db $fc                                        ; $6b47: $fc
    nop                                           ; $6b48: $00
    db $fd                                        ; $6b49: $fd
    nop                                           ; $6b4a: $00
    cp $ea                                        ; $6b4b: $fe $ea
    ld bc, $0408                                  ; $6b4d: $01 $08 $04
    ld bc, $0109                                  ; $6b50: $01 $09 $01
    ld a, [bc]                                    ; $6b53: $0a
    ld bc, $085c                                  ; $6b54: $01 $5c $08
    inc de                                        ; $6b57: $13
    ld bc, $1400                                  ; $6b58: $01 $00 $14
    ld bc, $0115                                  ; $6b5b: $01 $15 $01
    ld [hl+], a                                   ; $6b5e: $22
    ld bc, $0123                                  ; $6b5f: $01 $23 $01
    nop                                           ; $6b62: $00
    inc h                                         ; $6b63: $24
    ld bc, $0125                                  ; $6b64: $01 $25 $01
    ld [hl-], a                                   ; $6b67: $32
    ld bc, $0133                                  ; $6b68: $01 $33 $01
    inc b                                         ; $6b6b: $04
    inc [hl]                                      ; $6b6c: $34
    ld bc, $0135                                  ; $6b6d: $01 $35 $01
    ld b, d                                       ; $6b70: $42
    inc e                                         ; $6b71: $1c
    nop                                           ; $6b72: $00
    ldh [rP1], a                                  ; $6b73: $e0 $00
    nop                                           ; $6b75: $00
    pop hl                                        ; $6b76: $e1
    nop                                           ; $6b77: $00
    ld [c], a                                     ; $6b78: $e2
    nop                                           ; $6b79: $00
    db $e3                                        ; $6b7a: $e3
    nop                                           ; $6b7b: $00
    ldh a, [rP1]                                  ; $6b7c: $f0 $00
    ld bc, $00f1                                  ; $6b7e: $01 $f1 $00
    ld a, [c]                                     ; $6b81: $f2
    nop                                           ; $6b82: $00
    di                                            ; $6b83: $f3
    nop                                           ; $6b84: $00
    rst $38                                       ; $6b85: $ff
    dec l                                         ; $6b86: $2d
    ld [bc], a                                    ; $6b87: $02
    ld b, c                                       ; $6b88: $41
    ld bc, $0034                                  ; $6b89: $01 $34 $00
    dec bc                                        ; $6b8c: $0b
    ld bc, $010c                                  ; $6b8d: $01 $0c $01
    dec c                                         ; $6b90: $0d
    inc a                                         ; $6b91: $3c
    nop                                           ; $6b92: $00
    nop                                           ; $6b93: $00
    ld d, $01                                     ; $6b94: $16 $01
    rla                                           ; $6b96: $17
    ld bc, $0118                                  ; $6b97: $01 $18 $01
    add hl, de                                    ; $6b9a: $19
    ld bc, $2600                                  ; $6b9b: $01 $00 $26
    ld bc, $0127                                  ; $6b9e: $01 $27 $01
    jr z, jr_08e_6ba4                             ; $6ba1: $28 $01

    add hl, hl                                    ; $6ba3: $29

jr_08e_6ba4:
    ld bc, $3600                                  ; $6ba4: $01 $00 $36
    ld bc, $0137                                  ; $6ba7: $01 $37 $01
    jr c, jr_08e_6bad                             ; $6baa: $38 $01

    add hl, sp                                    ; $6bac: $39

jr_08e_6bad:
    ld bc, $4340                                  ; $6bad: $01 $40 $43
    ld e, b                                       ; $6bb0: $58
    nop                                           ; $6bb1: $00
    db $e4                                        ; $6bb2: $e4
    nop                                           ; $6bb3: $00
    push hl                                       ; $6bb4: $e5
    nop                                           ; $6bb5: $00
    and $00                                       ; $6bb6: $e6 $00
    nop                                           ; $6bb8: $00
    rst $20                                       ; $6bb9: $e7
    nop                                           ; $6bba: $00
    db $f4                                        ; $6bbb: $f4
    nop                                           ; $6bbc: $00
    push af                                       ; $6bbd: $f5
    nop                                           ; $6bbe: $00
    or $00                                        ; $6bbf: $f6 $00
    ld bc, $00f7                                  ; $6bc1: $01 $f7 $00
    ld [bc], a                                    ; $6bc4: $02
    ld bc, $0103                                  ; $6bc5: $01 $03 $01
    inc b                                         ; $6bc8: $04
    ld [hl], b                                    ; $6bc9: $70
    nop                                           ; $6bca: $00
    inc b                                         ; $6bcb: $04
    ld c, $01                                     ; $6bcc: $0e $01
    rrca                                          ; $6bce: $0f
    ld bc, $7810                                  ; $6bcf: $01 $10 $78
    nop                                           ; $6bd2: $00
    ld a, [de]                                    ; $6bd3: $1a
    ld bc, $1b00                                  ; $6bd4: $01 $00 $1b
    ld bc, $011c                                  ; $6bd7: $01 $1c $01
    dec e                                         ; $6bda: $1d
    ld bc, $012a                                  ; $6bdb: $01 $2a $01
    nop                                           ; $6bde: $00
    dec hl                                        ; $6bdf: $2b
    ld bc, $012c                                  ; $6be0: $01 $2c $01
    dec l                                         ; $6be3: $2d
    ld bc, $013a                                  ; $6be4: $01 $3a $01
    ld bc, $013b                                  ; $6be7: $01 $3b $01
    inc a                                         ; $6bea: $3c
    ld bc, $013d                                  ; $6beb: $01 $3d $01
    ld b, h                                       ; $6bee: $44
    sub h                                         ; $6bef: $94
    nop                                           ; $6bf0: $00
    nop                                           ; $6bf1: $00
    add sp, $00                                   ; $6bf2: $e8 $00
    jp hl                                         ; $6bf4: $e9


    nop                                           ; $6bf5: $00
    ld [$eb00], a                                 ; $6bf6: $ea $00 $eb
    nop                                           ; $6bf9: $00
    nop                                           ; $6bfa: $00
    ld hl, sp+$00                                 ; $6bfb: $f8 $00
    ld sp, hl                                     ; $6bfd: $f9
    nop                                           ; $6bfe: $00
    ld a, [$fb00]                                 ; $6bff: $fa $00 $fb
    nop                                           ; $6c02: $00
    inc b                                         ; $6c03: $04
    dec b                                         ; $6c04: $05
    ld bc, $0106                                  ; $6c05: $01 $06 $01
    rlca                                          ; $6c08: $07
    xor h                                         ; $6c09: $ac
    nop                                           ; $6c0a: $00
    ret z                                         ; $6c0b: $c8

    nop                                           ; $6c0c: $00
    db $10                                        ; $6c0d: $10
    ld de, $1201                                  ; $6c0e: $11 $01 $12
    or h                                          ; $6c11: $b4
    nop                                           ; $6c12: $00
    ld e, $01                                     ; $6c13: $1e $01
    rra                                           ; $6c15: $1f
    ld bc, $2000                                  ; $6c16: $01 $00 $20
    ld bc, $0121                                  ; $6c19: $01 $21 $01
    ld l, $01                                     ; $6c1c: $2e $01
    cpl                                           ; $6c1e: $2f
    ld bc, $3000                                  ; $6c1f: $01 $00 $30
    ld bc, $0131                                  ; $6c22: $01 $31 $01
    ld a, $01                                     ; $6c25: $3e $01
    ccf                                           ; $6c27: $3f
    ld bc, $4006                                  ; $6c28: $01 $06 $40
    ld bc, $0141                                  ; $6c2b: $01 $41 $01
    ld b, l                                       ; $6c2e: $45
    ret nc                                        ; $6c2f: $d0

    db $10                                        ; $6c30: $10
    jr nc, jr_08e_6c4c                            ; $6c31: $30 $19

    ld c, a                                       ; $6c33: $4f
    ld [$5001], sp                                ; $6c34: $08 $01 $50
    ld bc, $e051                                  ; $6c37: $01 $51 $e0
    db $10                                        ; $6c3a: $10
    ld e, [hl]                                    ; $6c3b: $5e
    ld bc, $005f                                  ; $6c3c: $01 $5f $00
    ld bc, $0160                                  ; $6c3f: $01 $60 $01
    ld l, l                                       ; $6c42: $6d
    ld bc, $016e                                  ; $6c43: $01 $6e $01
    ld l, a                                       ; $6c46: $6f
    nop                                           ; $6c47: $00
    ld bc, $0170                                  ; $6c48: $01 $70 $01
    ld a, l                                       ; $6c4b: $7d

jr_08e_6c4c:
    ld bc, $017e                                  ; $6c4c: $01 $7e $01
    ld a, a                                       ; $6c4f: $7f
    nop                                           ; $6c50: $00
    ld bc, $0180                                  ; $6c51: $01 $80 $01
    adc l                                         ; $6c54: $8d
    ld bc, $018e                                  ; $6c55: $01 $8e $01
    adc a                                         ; $6c58: $8f
    add b                                         ; $6c59: $80
    nop                                           ; $6c5a: $00
    ld bc, $0199                                  ; $6c5b: $01 $99 $01
    sbc d                                         ; $6c5e: $9a
    ld bc, $019b                                  ; $6c5f: $01 $9b $01
    sbc h                                         ; $6c62: $9c
    jr nz, jr_08e_6c66                            ; $6c63: $20 $01

    xor c                                         ; $6c65: $a9

jr_08e_6c66:
    inc c                                         ; $6c66: $0c
    ld de, $0146                                  ; $6c67: $11 $46 $01
    ld b, a                                       ; $6c6a: $47
    ld bc, $0048                                  ; $6c6b: $01 $48 $00
    ld bc, $0152                                  ; $6c6e: $01 $52 $01
    ld d, e                                       ; $6c71: $53
    ld bc, $0154                                  ; $6c72: $01 $54 $01
    ld d, l                                       ; $6c75: $55
    nop                                           ; $6c76: $00
    ld bc, $0161                                  ; $6c77: $01 $61 $01
    ld h, d                                       ; $6c7a: $62
    ld bc, $0163                                  ; $6c7b: $01 $63 $01
    ld h, h                                       ; $6c7e: $64
    nop                                           ; $6c7f: $00
    ld bc, $0171                                  ; $6c80: $01 $71 $01
    ld [hl], d                                    ; $6c83: $72
    ld bc, $0173                                  ; $6c84: $01 $73 $01
    ld [hl], h                                    ; $6c87: $74
    nop                                           ; $6c88: $00
    ld bc, $0181                                  ; $6c89: $01 $81 $01
    add d                                         ; $6c8c: $82
    ld bc, $0183                                  ; $6c8d: $01 $83 $01
    add h                                         ; $6c90: $84
    ld [bc], a                                    ; $6c91: $02
    ld bc, $0190                                  ; $6c92: $01 $90 $01
    sub c                                         ; $6c95: $91
    ld bc, $3c92                                  ; $6c96: $01 $92 $3c
    ld bc, $009d                                  ; $6c99: $01 $9d $00
    ld bc, $019e                                  ; $6c9c: $01 $9e $01
    sbc a                                         ; $6c9f: $9f
    ld bc, $01a0                                  ; $6ca0: $01 $a0 $01
    xor d                                         ; $6ca3: $aa
    add b                                         ; $6ca4: $80
    ld c, b                                       ; $6ca5: $48
    ld de, $0149                                  ; $6ca6: $11 $49 $01
    ld c, d                                       ; $6ca9: $4a
    ld bc, $014b                                  ; $6caa: $01 $4b $01
    ld d, [hl]                                    ; $6cad: $56
    nop                                           ; $6cae: $00
    ld bc, $0157                                  ; $6caf: $01 $57 $01
    ld e, b                                       ; $6cb2: $58
    ld bc, $0159                                  ; $6cb3: $01 $59 $01
    ld h, l                                       ; $6cb6: $65
    nop                                           ; $6cb7: $00
    ld bc, $0166                                  ; $6cb8: $01 $66 $01
    ld h, a                                       ; $6cbb: $67
    ld bc, $0168                                  ; $6cbc: $01 $68 $01
    ld [hl], l                                    ; $6cbf: $75
    nop                                           ; $6cc0: $00
    ld bc, $0176                                  ; $6cc1: $01 $76 $01
    ld [hl], a                                    ; $6cc4: $77
    ld bc, $0178                                  ; $6cc5: $01 $78 $01
    add l                                         ; $6cc8: $85
    nop                                           ; $6cc9: $00
    ld bc, $0186                                  ; $6cca: $01 $86 $01
    add a                                         ; $6ccd: $87
    ld bc, $0188                                  ; $6cce: $01 $88 $01
    sub e                                         ; $6cd1: $93
    ld [$9401], sp                                ; $6cd2: $08 $01 $94
    ld bc, $7895                                  ; $6cd5: $01 $95 $78
    ld bc, $01a1                                  ; $6cd8: $01 $a1 $01
    and d                                         ; $6cdb: $a2
    ld [bc], a                                    ; $6cdc: $02
    ld bc, $01a3                                  ; $6cdd: $01 $a3 $01
    and h                                         ; $6ce0: $a4
    ld bc, $84ab                                  ; $6ce1: $01 $ab $84
    ld de, $004c                                  ; $6ce4: $11 $4c $00
    ld bc, $014d                                  ; $6ce7: $01 $4d $01
    ld c, [hl]                                    ; $6cea: $4e
    ld bc, $015a                                  ; $6ceb: $01 $5a $01
    ld e, e                                       ; $6cee: $5b
    nop                                           ; $6cef: $00
    ld bc, $015c                                  ; $6cf0: $01 $5c $01
    ld e, l                                       ; $6cf3: $5d
    ld bc, $0169                                  ; $6cf4: $01 $69 $01
    ld l, d                                       ; $6cf7: $6a
    nop                                           ; $6cf8: $00
    ld bc, $016b                                  ; $6cf9: $01 $6b $01
    ld l, h                                       ; $6cfc: $6c
    ld bc, $0179                                  ; $6cfd: $01 $79 $01
    ld a, d                                       ; $6d00: $7a
    nop                                           ; $6d01: $00
    ld bc, $017b                                  ; $6d02: $01 $7b $01
    ld a, h                                       ; $6d05: $7c
    ld bc, $0189                                  ; $6d06: $01 $89 $01
    adc d                                         ; $6d09: $8a
    nop                                           ; $6d0a: $00
    ld bc, $018b                                  ; $6d0b: $01 $8b $01
    adc h                                         ; $6d0e: $8c
    ld bc, $0196                                  ; $6d0f: $01 $96 $01
    sub a                                         ; $6d12: $97
    jr nz, jr_08e_6d16                            ; $6d13: $20 $01

    sbc b                                         ; $6d15: $98

jr_08e_6d16:
    or h                                          ; $6d16: $b4
    ld bc, $01a5                                  ; $6d17: $01 $a5 $01
    and [hl]                                      ; $6d1a: $a6
    ld bc, $08a7                                  ; $6d1b: $01 $a7 $08
    ld bc, $01a8                                  ; $6d1e: $01 $a8 $01
    xor h                                         ; $6d21: $ac
    ret nz                                        ; $6d22: $c0

    ld de, $01ad                                  ; $6d23: $11 $ad $01
    xor [hl]                                      ; $6d26: $ae
    nop                                           ; $6d27: $00
    ld bc, $01af                                  ; $6d28: $01 $af $01
    or b                                          ; $6d2b: $b0
    ld bc, $01b1                                  ; $6d2c: $01 $b1 $01
    or d                                          ; $6d2f: $b2
    ret nz                                        ; $6d30: $c0

    nop                                           ; $6d31: $00
    ld b, c                                       ; $6d32: $41
    ld a, [bc]                                    ; $6d33: $0a
    ld c, b                                       ; $6d34: $48
    or e                                          ; $6d35: $b3
    ld bc, $01b4                                  ; $6d36: $01 $b4 $01
    or l                                          ; $6d39: $b5
    ld bc, $b610                                  ; $6d3a: $01 $10 $b6
    ld bc, $20b7                                  ; $6d3d: $01 $b7 $20
    ld h, b                                       ; $6d40: $60
    db $eb                                        ; $6d41: $eb
    ld bc, $0000                                  ; $6d42: $01 $00 $00
    nop                                           ; $6d45: $00
    ld bc, $0200                                  ; $6d46: $01 $00 $02
    nop                                           ; $6d49: $00
    inc bc                                        ; $6d4a: $03
    nop                                           ; $6d4b: $00
    ld b, b                                       ; $6d4c: $40
    ld [$c002], sp                                ; $6d4d: $08 $02 $c0
    ld sp, $0400                                  ; $6d50: $31 $00 $04
    nop                                           ; $6d53: $00
    dec b                                         ; $6d54: $05
    nop                                           ; $6d55: $00
    nop                                           ; $6d56: $00
    ld b, $00                                     ; $6d57: $06 $00
    rlca                                          ; $6d59: $07
    nop                                           ; $6d5a: $00
    stop                                          ; $6d5b: $10 $00
    ld de, $0000                                  ; $6d5d: $11 $00 $00
    ld [de], a                                    ; $6d60: $12
    nop                                           ; $6d61: $00
    inc de                                        ; $6d62: $13
    nop                                           ; $6d63: $00
    inc e                                         ; $6d64: $1c
    nop                                           ; $6d65: $00
    dec e                                         ; $6d66: $1d
    nop                                           ; $6d67: $00
    nop                                           ; $6d68: $00
    ld e, $00                                     ; $6d69: $1e $00
    rra                                           ; $6d6b: $1f
    nop                                           ; $6d6c: $00
    jr z, jr_08e_6d6f                             ; $6d6d: $28 $00

jr_08e_6d6f:
    add hl, hl                                    ; $6d6f: $29
    nop                                           ; $6d70: $00
    ld b, c                                       ; $6d71: $41
    ld a, [hl+]                                   ; $6d72: $2a
    ld d, $00                                     ; $6d73: $16 $00
    ld [hl-], a                                   ; $6d75: $32
    nop                                           ; $6d76: $00
    inc sp                                        ; $6d77: $33
    nop                                           ; $6d78: $00
    inc [hl]                                      ; $6d79: $34
    ld b, h                                       ; $6d7a: $44
    nop                                           ; $6d7b: $00
    nop                                           ; $6d7c: $00
    add hl, bc                                    ; $6d7d: $09
    nop                                           ; $6d7e: $00
    ld a, [bc]                                    ; $6d7f: $0a
    nop                                           ; $6d80: $00
    dec bc                                        ; $6d81: $0b
    nop                                           ; $6d82: $00
    inc d                                         ; $6d83: $14
    nop                                           ; $6d84: $00
    nop                                           ; $6d85: $00
    dec d                                         ; $6d86: $15
    nop                                           ; $6d87: $00
    ld d, $00                                     ; $6d88: $16 $00
    rla                                           ; $6d8a: $17
    nop                                           ; $6d8b: $00
    jr nz, jr_08e_6d8e                            ; $6d8c: $20 $00

jr_08e_6d8e:
    nop                                           ; $6d8e: $00
    ld hl, $2200                                  ; $6d8f: $21 $00 $22
    nop                                           ; $6d92: $00
    inc hl                                        ; $6d93: $23
    nop                                           ; $6d94: $00
    dec hl                                        ; $6d95: $2b
    nop                                           ; $6d96: $00
    db $10                                        ; $6d97: $10
    inc l                                         ; $6d98: $2c
    nop                                           ; $6d99: $00
    dec l                                         ; $6d9a: $2d
    ld d, $00                                     ; $6d9b: $16 $00
    dec [hl]                                      ; $6d9d: $35
    nop                                           ; $6d9e: $00
    ld [hl], $00                                  ; $6d9f: $36 $00
    nop                                           ; $6da1: $00
    scf                                           ; $6da2: $37
    nop                                           ; $6da3: $00
    inc c                                         ; $6da4: $0c
    nop                                           ; $6da5: $00
    dec c                                         ; $6da6: $0d
    nop                                           ; $6da7: $00
    ld c, $00                                     ; $6da8: $0e $00
    nop                                           ; $6daa: $00
    rrca                                          ; $6dab: $0f
    nop                                           ; $6dac: $00
    jr jr_08e_6daf                                ; $6dad: $18 $00

jr_08e_6daf:
    add hl, de                                    ; $6daf: $19
    nop                                           ; $6db0: $00
    ld a, [de]                                    ; $6db1: $1a
    nop                                           ; $6db2: $00
    nop                                           ; $6db3: $00
    dec de                                        ; $6db4: $1b
    nop                                           ; $6db5: $00
    inc h                                         ; $6db6: $24
    nop                                           ; $6db7: $00
    dec h                                         ; $6db8: $25
    nop                                           ; $6db9: $00
    ld h, $00                                     ; $6dba: $26 $00
    ld bc, $0027                                  ; $6dbc: $01 $27 $00
    ld l, $00                                     ; $6dbf: $2e $00
    cpl                                           ; $6dc1: $2f
    nop                                           ; $6dc2: $00
    jr nc, jr_08e_6ddb                            ; $6dc3: $30 $16

    nop                                           ; $6dc5: $00
    nop                                           ; $6dc6: $00
    jr c, jr_08e_6dc9                             ; $6dc7: $38 $00

jr_08e_6dc9:
    add hl, sp                                    ; $6dc9: $39
    nop                                           ; $6dca: $00
    ld a, [hl-]                                   ; $6dcb: $3a
    nop                                           ; $6dcc: $00
    dec sp                                        ; $6dcd: $3b
    nop                                           ; $6dce: $00
    nop                                           ; $6dcf: $00
    inc a                                         ; $6dd0: $3c
    nop                                           ; $6dd1: $00
    dec a                                         ; $6dd2: $3d
    nop                                           ; $6dd3: $00
    ld a, $00                                     ; $6dd4: $3e $00
    ld c, d                                       ; $6dd6: $4a
    nop                                           ; $6dd7: $00
    nop                                           ; $6dd8: $00

Jump_08e_6dd9:
    ld c, e                                       ; $6dd9: $4b
    nop                                           ; $6dda: $00

jr_08e_6ddb:
    ld c, h                                       ; $6ddb: $4c
    nop                                           ; $6ddc: $00
    ld c, l                                       ; $6ddd: $4d
    nop                                           ; $6dde: $00
    ld e, c                                       ; $6ddf: $59
    nop                                           ; $6de0: $00
    nop                                           ; $6de1: $00
    ld e, d                                       ; $6de2: $5a
    nop                                           ; $6de3: $00
    ld e, e                                       ; $6de4: $5b
    nop                                           ; $6de5: $00
    ld e, h                                       ; $6de6: $5c
    nop                                           ; $6de7: $00
    ld h, l                                       ; $6de8: $65
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    ld h, [hl]                                    ; $6deb: $66
    nop                                           ; $6dec: $00
    ld h, a                                       ; $6ded: $67
    nop                                           ; $6dee: $00
    ld l, b                                       ; $6def: $68
    nop                                           ; $6df0: $00
    ld [hl], c                                    ; $6df1: $71
    nop                                           ; $6df2: $00
    nop                                           ; $6df3: $00
    ld [hl], d                                    ; $6df4: $72
    nop                                           ; $6df5: $00
    ld [hl], e                                    ; $6df6: $73
    nop                                           ; $6df7: $00
    ccf                                           ; $6df8: $3f
    nop                                           ; $6df9: $00
    ld b, b                                       ; $6dfa: $40
    nop                                           ; $6dfb: $00
    nop                                           ; $6dfc: $00
    ld b, c                                       ; $6dfd: $41
    nop                                           ; $6dfe: $00
    ld b, d                                       ; $6dff: $42
    nop                                           ; $6e00: $00
    ld c, [hl]                                    ; $6e01: $4e
    nop                                           ; $6e02: $00
    ld c, a                                       ; $6e03: $4f
    nop                                           ; $6e04: $00
    nop                                           ; $6e05: $00
    ld d, b                                       ; $6e06: $50
    nop                                           ; $6e07: $00
    ld d, c                                       ; $6e08: $51
    nop                                           ; $6e09: $00
    ld e, l                                       ; $6e0a: $5d
    nop                                           ; $6e0b: $00
    ld e, [hl]                                    ; $6e0c: $5e
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    ld e, a                                       ; $6e0f: $5f
    nop                                           ; $6e10: $00
    ld h, b                                       ; $6e11: $60
    nop                                           ; $6e12: $00
    ld l, c                                       ; $6e13: $69
    nop                                           ; $6e14: $00
    ld l, d                                       ; $6e15: $6a
    nop                                           ; $6e16: $00
    nop                                           ; $6e17: $00
    ld l, e                                       ; $6e18: $6b
    nop                                           ; $6e19: $00
    ld l, h                                       ; $6e1a: $6c
    nop                                           ; $6e1b: $00
    ld [hl], h                                    ; $6e1c: $74
    nop                                           ; $6e1d: $00
    ld [hl], l                                    ; $6e1e: $75
    nop                                           ; $6e1f: $00
    nop                                           ; $6e20: $00
    halt                                          ; $6e21: $76
    nop                                           ; $6e22: $00
    ld b, e                                       ; $6e23: $43
    nop                                           ; $6e24: $00
    ld b, h                                       ; $6e25: $44
    nop                                           ; $6e26: $00
    ld b, l                                       ; $6e27: $45
    nop                                           ; $6e28: $00
    nop                                           ; $6e29: $00
    ld b, [hl]                                    ; $6e2a: $46
    nop                                           ; $6e2b: $00
    ld d, d                                       ; $6e2c: $52
    nop                                           ; $6e2d: $00
    ld d, e                                       ; $6e2e: $53
    nop                                           ; $6e2f: $00
    ld d, h                                       ; $6e30: $54
    nop                                           ; $6e31: $00
    nop                                           ; $6e32: $00
    ld d, l                                       ; $6e33: $55
    nop                                           ; $6e34: $00
    ld h, c                                       ; $6e35: $61
    nop                                           ; $6e36: $00
    ld h, d                                       ; $6e37: $62
    nop                                           ; $6e38: $00
    ld h, e                                       ; $6e39: $63
    nop                                           ; $6e3a: $00
    nop                                           ; $6e3b: $00
    ld h, h                                       ; $6e3c: $64
    nop                                           ; $6e3d: $00
    ld l, l                                       ; $6e3e: $6d
    nop                                           ; $6e3f: $00
    ld l, [hl]                                    ; $6e40: $6e
    nop                                           ; $6e41: $00
    ld l, a                                       ; $6e42: $6f
    nop                                           ; $6e43: $00
    ld bc, $0070                                  ; $6e44: $01 $70 $00
    ld [hl], a                                    ; $6e47: $77
    nop                                           ; $6e48: $00
    ld a, b                                       ; $6e49: $78
    nop                                           ; $6e4a: $00
    ld a, c                                       ; $6e4b: $79
    ld [bc], a                                    ; $6e4c: $02
    ld bc, $4700                                  ; $6e4d: $01 $00 $47
    nop                                           ; $6e50: $00
    ld c, b                                       ; $6e51: $48
    nop                                           ; $6e52: $00
    ld c, c                                       ; $6e53: $49
    nop                                           ; $6e54: $00
    ld d, [hl]                                    ; $6e55: $56
    nop                                           ; $6e56: $00
    ld a, [de]                                    ; $6e57: $1a
    ld d, a                                       ; $6e58: $57
    nop                                           ; $6e59: $00
    ld e, b                                       ; $6e5a: $58
    cp $50                                        ; $6e5b: $fe $50
    inc e                                         ; $6e5d: $1c
    add hl, sp                                    ; $6e5e: $39
    ld a, d                                       ; $6e5f: $7a
    jr z, jr_08e_6e93                             ; $6e60: $28 $31

    ld a, e                                       ; $6e62: $7b
    nop                                           ; $6e63: $00
    nop                                           ; $6e64: $00
    ld a, h                                       ; $6e65: $7c
    nop                                           ; $6e66: $00
    ld a, l                                       ; $6e67: $7d
    nop                                           ; $6e68: $00
    ld a, [hl]                                    ; $6e69: $7e
    nop                                           ; $6e6a: $00
    adc d                                         ; $6e6b: $8a
    and b                                         ; $6e6c: $a0
    nop                                           ; $6e6d: $00
    ld bc, $168b                                  ; $6e6e: $01 $8b $16
    ld b, c                                       ; $6e71: $41
    sbc b                                         ; $6e72: $98
    nop                                           ; $6e73: $00
    sbc c                                         ; $6e74: $99
    nop                                           ; $6e75: $00
    sbc d                                         ; $6e76: $9a
    add b                                         ; $6e77: $80
    ld c, [hl]                                    ; $6e78: $4e
    ld sp, $007f                                  ; $6e79: $31 $7f $00
    add b                                         ; $6e7c: $80
    nop                                           ; $6e7d: $00
    add c                                         ; $6e7e: $81
    nop                                           ; $6e7f: $00
    add d                                         ; $6e80: $82
    jr z, jr_08e_6e83                             ; $6e81: $28 $00

jr_08e_6e83:
    adc h                                         ; $6e83: $8c
    nop                                           ; $6e84: $00
    ld bc, $168d                                  ; $6e85: $01 $8d $16
    ld b, c                                       ; $6e88: $41
    sbc e                                         ; $6e89: $9b
    nop                                           ; $6e8a: $00
    sbc h                                         ; $6e8b: $9c
    ret nz                                        ; $6e8c: $c0

    ld d, $01                                     ; $6e8d: $16 $01
    ld [hl], h                                    ; $6e8f: $74
    add hl, hl                                    ; $6e90: $29
    add e                                         ; $6e91: $83
    nop                                           ; $6e92: $00

jr_08e_6e93:
    add h                                         ; $6e93: $84
    nop                                           ; $6e94: $00
    add l                                         ; $6e95: $85
    nop                                           ; $6e96: $00
    inc d                                         ; $6e97: $14
    add [hl]                                      ; $6e98: $86
    nop                                           ; $6e99: $00
    adc [hl]                                      ; $6e9a: $8e
    nop                                           ; $6e9b: $00
    ld bc, $168f                                  ; $6e9c: $01 $8f $16
    ld b, c                                       ; $6e9f: $41
    sbc l                                         ; $6ea0: $9d
    nop                                           ; $6ea1: $00
    ld h, b                                       ; $6ea2: $60
    sbc [hl]                                      ; $6ea3: $9e
    ld d, $01                                     ; $6ea4: $16 $01
    sbc d                                         ; $6ea6: $9a
    add hl, sp                                    ; $6ea7: $39
    add a                                         ; $6ea8: $87
    nop                                           ; $6ea9: $00
    adc b                                         ; $6eaa: $88
    nop                                           ; $6eab: $00
    adc c                                         ; $6eac: $89
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    sub b                                         ; $6eaf: $90
    nop                                           ; $6eb0: $00
    sub c                                         ; $6eb1: $91
    nop                                           ; $6eb2: $00
    sub d                                         ; $6eb3: $92
    nop                                           ; $6eb4: $00
    sub e                                         ; $6eb5: $93
    nop                                           ; $6eb6: $00
    nop                                           ; $6eb7: $00
    sub h                                         ; $6eb8: $94
    nop                                           ; $6eb9: $00
    sub l                                         ; $6eba: $95
    nop                                           ; $6ebb: $00
    sub [hl]                                      ; $6ebc: $96
    nop                                           ; $6ebd: $00
    sub a                                         ; $6ebe: $97
    ld [bc], a                                    ; $6ebf: $02
    nop                                           ; $6ec0: $00
    sbc a                                         ; $6ec1: $9f
    nop                                           ; $6ec2: $00
    and b                                         ; $6ec3: $a0
    nop                                           ; $6ec4: $00
    and c                                         ; $6ec5: $a1
    sub b                                         ; $6ec6: $90
    ld bc, $08a2                                  ; $6ec7: $01 $a2 $08
    nop                                           ; $6eca: $00
    and e                                         ; $6ecb: $a3
    nop                                           ; $6ecc: $00
    and h                                         ; $6ecd: $a4
    sub b                                         ; $6ece: $90
    ld bc, $00af                                  ; $6ecf: $01 $af $00

Call_08e_6ed2:
    or b                                          ; $6ed2: $b0
    nop                                           ; $6ed3: $00
    nop                                           ; $6ed4: $00
    or c                                          ; $6ed5: $b1
    nop                                           ; $6ed6: $00
    cp e                                          ; $6ed7: $bb
    nop                                           ; $6ed8: $00
    cp h                                          ; $6ed9: $bc
    nop                                           ; $6eda: $00
    cp l                                          ; $6edb: $bd
    nop                                           ; $6edc: $00
    nop                                           ; $6edd: $00
    cp [hl]                                       ; $6ede: $be
    nop                                           ; $6edf: $00
    rst $00                                       ; $6ee0: $c7
    nop                                           ; $6ee1: $00
    ret z                                         ; $6ee2: $c8

    nop                                           ; $6ee3: $00
    ret                                           ; $6ee4: $c9


    nop                                           ; $6ee5: $00
    nop                                           ; $6ee6: $00
    jp z, $d200                                   ; $6ee7: $ca $00 $d2

    nop                                           ; $6eea: $00
    db $d3                                        ; $6eeb: $d3
    nop                                           ; $6eec: $00
    call nc, $9082                                ; $6eed: $d4 $82 $90
    ld bc, $00a5                                  ; $6ef0: $01 $a5 $00
    and [hl]                                      ; $6ef3: $a6
    nop                                           ; $6ef4: $00
    and a                                         ; $6ef5: $a7
    sub b                                         ; $6ef6: $90
    ld bc, $00b2                                  ; $6ef7: $01 $b2 $00
    nop                                           ; $6efa: $00
    or e                                          ; $6efb: $b3
    nop                                           ; $6efc: $00
    or h                                          ; $6efd: $b4
    nop                                           ; $6efe: $00
    cp a                                          ; $6eff: $bf
    nop                                           ; $6f00: $00
    ret nz                                        ; $6f01: $c0

    nop                                           ; $6f02: $00
    nop                                           ; $6f03: $00
    pop bc                                        ; $6f04: $c1
    nop                                           ; $6f05: $00
    jp nz, $cb00                                  ; $6f06: $c2 $00 $cb

    nop                                           ; $6f09: $00
    call z, RST_00                                ; $6f0a: $cc $00 $00
    call $ce00                                    ; $6f0d: $cd $00 $ce
    nop                                           ; $6f10: $00
    push de                                       ; $6f11: $d5
    nop                                           ; $6f12: $00
    sub $08                                       ; $6f13: $d6 $08
    nop                                           ; $6f15: $00
    rst $10                                       ; $6f16: $d7
    nop                                           ; $6f17: $00
    xor b                                         ; $6f18: $a8
    sub b                                         ; $6f19: $90
    ld bc, $00a9                                  ; $6f1a: $01 $a9 $00
    xor d                                         ; $6f1d: $aa
    add b                                         ; $6f1e: $80
    sub b                                         ; $6f1f: $90
    ld bc, $00b5                                  ; $6f20: $01 $b5 $00
    or [hl]                                       ; $6f23: $b6
    nop                                           ; $6f24: $00
    or a                                          ; $6f25: $b7
    nop                                           ; $6f26: $00
    jp RST_00                                     ; $6f27: $c3 $00 $00


    call nz, $c500                                ; $6f2a: $c4 $00 $c5
    nop                                           ; $6f2d: $00
    add $00                                       ; $6f2e: $c6 $00
    rst $08                                       ; $6f30: $cf
    ld a, [bc]                                    ; $6f31: $0a
    nop                                           ; $6f32: $00
    ret nc                                        ; $6f33: $d0

    nop                                           ; $6f34: $00
    pop de                                        ; $6f35: $d1
    ld a, [bc]                                    ; $6f36: $0a
    nop                                           ; $6f37: $00
    ret c                                         ; $6f38: $d8

    ld l, $12                                     ; $6f39: $2e $12
    xor e                                         ; $6f3b: $ab
    nop                                           ; $6f3c: $00
    nop                                           ; $6f3d: $00
    xor h                                         ; $6f3e: $ac
    nop                                           ; $6f3f: $00
    xor l                                         ; $6f40: $ad
    nop                                           ; $6f41: $00
    xor [hl]                                      ; $6f42: $ae
    nop                                           ; $6f43: $00
    cp b                                          ; $6f44: $b8
    ld [$b900], sp                                ; $6f45: $08 $00 $b9
    nop                                           ; $6f48: $00
    cp d                                          ; $6f49: $ba
    ld b, b                                       ; $6f4a: $40
    or d                                          ; $6f4b: $b2
    reti                                          ; $6f4c: $d9


    nop                                           ; $6f4d: $00
    jp c, RST_00                                  ; $6f4e: $da $00 $00

    db $db                                        ; $6f51: $db
    nop                                           ; $6f52: $00
    call c, $e900                                 ; $6f53: $dc $00 $e9
    nop                                           ; $6f56: $00
    ld [$0020], a                                 ; $6f57: $ea $20 $00
    db $eb                                        ; $6f5a: $eb
    ld h, [hl]                                    ; $6f5b: $66
    or d                                          ; $6f5c: $b2
    db $dd                                        ; $6f5d: $dd
    nop                                           ; $6f5e: $00
    sbc $00                                       ; $6f5f: $de $00
    rst $18                                       ; $6f61: $df
    nop                                           ; $6f62: $00
    nop                                           ; $6f63: $00
    ldh [rP1], a                                  ; $6f64: $e0 $00
    db $ec                                        ; $6f66: $ec
    nop                                           ; $6f67: $00
    db $ed                                        ; $6f68: $ed
    nop                                           ; $6f69: $00
    xor $80                                       ; $6f6a: $ee $80
    adc h                                         ; $6f6c: $8c
    or d                                          ; $6f6d: $b2
    pop hl                                        ; $6f6e: $e1
    nop                                           ; $6f6f: $00
    ld [c], a                                     ; $6f70: $e2
    nop                                           ; $6f71: $00
    db $e3                                        ; $6f72: $e3
    nop                                           ; $6f73: $00
    db $e4                                        ; $6f74: $e4
    ld [bc], a                                    ; $6f75: $02
    nop                                           ; $6f76: $00
    rst $28                                       ; $6f77: $ef
    nop                                           ; $6f78: $00
    ldh a, [rP1]                                  ; $6f79: $f0 $00
    pop af                                        ; $6f7b: $f1
    or d                                          ; $6f7c: $b2
    or d                                          ; $6f7d: $b2
    push hl                                       ; $6f7e: $e5
    nop                                           ; $6f7f: $00
    nop                                           ; $6f80: $00
    and $00                                       ; $6f81: $e6 $00
    rst $20                                       ; $6f83: $e7
    nop                                           ; $6f84: $00
    add sp, $00                                   ; $6f85: $e8 $00
    ld a, [c]                                     ; $6f87: $f2
    jr nz, jr_08e_6f8a                            ; $6f88: $20 $00

jr_08e_6f8a:
    di                                            ; $6f8a: $f3
    sub $c2                                       ; $6f8b: $d6 $c2
    ld a, [hl]                                    ; $6f8d: $7e
    ld [bc], a                                    ; $6f8e: $02
    nop                                           ; $6f8f: $00
    nop                                           ; $6f90: $00
    nop                                           ; $6f91: $00
    ld bc, $0200                                  ; $6f92: $01 $00 $02
    nop                                           ; $6f95: $00
    inc bc                                        ; $6f96: $03
    nop                                           ; $6f97: $00
    ld bc, $0010                                  ; $6f98: $01 $10 $00
    ld de, $1200                                  ; $6f9b: $11 $00 $12
    nop                                           ; $6f9e: $00
    inc de                                        ; $6f9f: $13
    ld [bc], a                                    ; $6fa0: $02
    sub b                                         ; $6fa1: $90
    db $10                                        ; $6fa2: $10
    inc hl                                        ; $6fa3: $23
    nop                                           ; $6fa4: $00
    inc h                                         ; $6fa5: $24
    ld a, [de]                                    ; $6fa6: $1a
    jr nc, jr_08e_6fad                            ; $6fa7: $30 $04

    nop                                           ; $6fa9: $00
    dec b                                         ; $6faa: $05
    nop                                           ; $6fab: $00
    nop                                           ; $6fac: $00

jr_08e_6fad:
    ld b, $00                                     ; $6fad: $06 $00
    rlca                                          ; $6faf: $07
    nop                                           ; $6fb0: $00
    inc d                                         ; $6fb1: $14
    nop                                           ; $6fb2: $00
    dec d                                         ; $6fb3: $15
    nop                                           ; $6fb4: $00
    ld b, b                                       ; $6fb5: $40
    ld d, $30                                     ; $6fb6: $16 $30
    ld h, b                                       ; $6fb8: $60
    inc e                                         ; $6fb9: $1c
    nop                                           ; $6fba: $00
    dec e                                         ; $6fbb: $1d
    nop                                           ; $6fbc: $00
    dec h                                         ; $6fbd: $25
    nop                                           ; $6fbe: $00
    inc b                                         ; $6fbf: $04
    ld h, $00                                     ; $6fc0: $26 $00
    daa                                           ; $6fc2: $27
    nop                                           ; $6fc3: $00
    jr z, jr_08e_7010                             ; $6fc4: $28 $4a

    jr nc, jr_08e_6fd0                            ; $6fc6: $30 $08

    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00
    add hl, bc                                    ; $6fca: $09
    nop                                           ; $6fcb: $00
    ld a, [bc]                                    ; $6fcc: $0a
    nop                                           ; $6fcd: $00
    dec bc                                        ; $6fce: $0b
    nop                                           ; $6fcf: $00

jr_08e_6fd0:
    rla                                           ; $6fd0: $17
    nop                                           ; $6fd1: $00
    ld b, b                                       ; $6fd2: $40
    jr jr_08e_7035                                ; $6fd3: $18 $60

    ld [hl], b                                    ; $6fd5: $70
    ld e, $00                                     ; $6fd6: $1e $00
    rra                                           ; $6fd8: $1f
    nop                                           ; $6fd9: $00
    add hl, hl                                    ; $6fda: $29
    nop                                           ; $6fdb: $00
    inc b                                         ; $6fdc: $04
    ld a, [hl+]                                   ; $6fdd: $2a
    nop                                           ; $6fde: $00
    dec hl                                        ; $6fdf: $2b
    nop                                           ; $6fe0: $00
    inc l                                         ; $6fe1: $2c
    ld a, d                                       ; $6fe2: $7a
    jr nc, jr_08e_6ff1                            ; $6fe3: $30 $0c

    nop                                           ; $6fe5: $00
    nop                                           ; $6fe6: $00
    dec c                                         ; $6fe7: $0d
    nop                                           ; $6fe8: $00
    ld c, $00                                     ; $6fe9: $0e $00
    rrca                                          ; $6feb: $0f
    nop                                           ; $6fec: $00
    add hl, de                                    ; $6fed: $19
    nop                                           ; $6fee: $00
    db $10                                        ; $6fef: $10
    ld a, [de]                                    ; $6ff0: $1a

jr_08e_6ff1:
    nop                                           ; $6ff1: $00
    dec de                                        ; $6ff2: $1b
    sub b                                         ; $6ff3: $90
    ld d, b                                       ; $6ff4: $50
    jr nz, jr_08e_6ff7                            ; $6ff5: $20 $00

jr_08e_6ff7:
    ld hl, $0000                                  ; $6ff7: $21 $00 $00
    ld [hl+], a                                   ; $6ffa: $22
    nop                                           ; $6ffb: $00
    dec l                                         ; $6ffc: $2d
    nop                                           ; $6ffd: $00
    ld l, $00                                     ; $6ffe: $2e $00
    cpl                                           ; $7000: $2f
    nop                                           ; $7001: $00
    inc d                                         ; $7002: $14
    jr nc, jr_08e_7005                            ; $7003: $30 $00

jr_08e_7005:
    ld sp, $00ac                                  ; $7005: $31 $ac $00
    ld [hl-], a                                   ; $7008: $32
    or b                                          ; $7009: $b0
    nop                                           ; $700a: $00
    inc sp                                        ; $700b: $33
    nop                                           ; $700c: $00
    nop                                           ; $700d: $00
    inc [hl]                                      ; $700e: $34
    nop                                           ; $700f: $00

jr_08e_7010:
    dec [hl]                                      ; $7010: $35
    nop                                           ; $7011: $00
    ld [hl], $00                                  ; $7012: $36 $00
    dec a                                         ; $7014: $3d
    nop                                           ; $7015: $00
    db $10                                        ; $7016: $10
    ld a, $00                                     ; $7017: $3e $00
    ccf                                           ; $7019: $3f
    ret nz                                        ; $701a: $c0

    ld d, b                                       ; $701b: $50
    ld b, d                                       ; $701c: $42
    nop                                           ; $701d: $00
    ld b, e                                       ; $701e: $43
    nop                                           ; $701f: $00
    nop                                           ; $7020: $00
    ld b, h                                       ; $7021: $44
    nop                                           ; $7022: $00
    ld c, [hl]                                    ; $7023: $4e
    nop                                           ; $7024: $00
    ld c, a                                       ; $7025: $4f
    nop                                           ; $7026: $00
    ld d, b                                       ; $7027: $50
    nop                                           ; $7028: $00
    ld bc, $0051                                  ; $7029: $01 $51 $00
    ld d, a                                       ; $702c: $57
    nop                                           ; $702d: $00
    ld e, b                                       ; $702e: $58
    nop                                           ; $702f: $00
    ld e, c                                       ; $7030: $59
    ldh [rP1], a                                  ; $7031: $e0 $00
    nop                                           ; $7033: $00
    scf                                           ; $7034: $37

jr_08e_7035:
    nop                                           ; $7035: $00
    jr c, jr_08e_7038                             ; $7036: $38 $00

jr_08e_7038:
    add hl, sp                                    ; $7038: $39
    nop                                           ; $7039: $00
    ld a, [hl-]                                   ; $703a: $3a
    nop                                           ; $703b: $00
    db $10                                        ; $703c: $10
    ld b, b                                       ; $703d: $40
    nop                                           ; $703e: $00
    ld b, c                                       ; $703f: $41
    xor $60                                       ; $7040: $ee $60
    ld b, l                                       ; $7042: $45
    nop                                           ; $7043: $00
    ld b, [hl]                                    ; $7044: $46
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    ld b, a                                       ; $7047: $47
    nop                                           ; $7048: $00
    ld d, d                                       ; $7049: $52
    nop                                           ; $704a: $00
    ld d, e                                       ; $704b: $53
    nop                                           ; $704c: $00
    ld d, h                                       ; $704d: $54
    nop                                           ; $704e: $00
    ld bc, $0055                                  ; $704f: $01 $55 $00
    ld e, d                                       ; $7052: $5a
    nop                                           ; $7053: $00
    ld e, e                                       ; $7054: $5b
    nop                                           ; $7055: $00
    ld e, h                                       ; $7056: $5c
    db $10                                        ; $7057: $10
    ld sp, $3b40                                  ; $7058: $31 $40 $3b
    ld a, [de]                                    ; $705b: $1a
    add c                                         ; $705c: $81
    ld c, b                                       ; $705d: $48
    nop                                           ; $705e: $00
    ld c, c                                       ; $705f: $49
    nop                                           ; $7060: $00
    ld c, d                                       ; $7061: $4a
    nop                                           ; $7062: $00
    ld b, l                                       ; $7063: $45
    ld d, [hl]                                    ; $7064: $56
    inc [hl]                                      ; $7065: $34
    ld sp, $005d                                  ; $7066: $31 $5d $00
    ld e, [hl]                                    ; $7069: $5e
    ld b, b                                       ; $706a: $40
    ld bc, $443c                                  ; $706b: $01 $3c $44
    and c                                         ; $706e: $a1
    ld bc, $0013                                  ; $706f: $01 $13 $00
    ld c, e                                       ; $7072: $4b
    nop                                           ; $7073: $00
    ld c, h                                       ; $7074: $4c
    nop                                           ; $7075: $00
    ld c, l                                       ; $7076: $4d
    ld h, d                                       ; $7077: $62
    ld b, c                                       ; $7078: $41
    nop                                           ; $7079: $00
    ld e, a                                       ; $707a: $5f
    nop                                           ; $707b: $00
    ld h, b                                       ; $707c: $60
    nop                                           ; $707d: $00
    ld h, c                                       ; $707e: $61
    nop                                           ; $707f: $00
    ld h, d                                       ; $7080: $62
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    ld h, e                                       ; $7083: $63
    nop                                           ; $7084: $00
    ld h, h                                       ; $7085: $64
    nop                                           ; $7086: $00
    ld h, l                                       ; $7087: $65
    nop                                           ; $7088: $00
    ld [hl], d                                    ; $7089: $72
    nop                                           ; $708a: $00
    ld b, h                                       ; $708b: $44
    ld [hl], e                                    ; $708c: $73
    ld a, [hl]                                    ; $708d: $7e
    ld sp, $007a                                  ; $708e: $31 $7a $00
    ld a, e                                       ; $7091: $7b
    adc d                                         ; $7092: $8a
    ld bc, $0082                                  ; $7093: $01 $82 $00
    nop                                           ; $7096: $00
    add e                                         ; $7097: $83
    nop                                           ; $7098: $00
    add h                                         ; $7099: $84
    nop                                           ; $709a: $00
    adc h                                         ; $709b: $8c
    nop                                           ; $709c: $00
    adc l                                         ; $709d: $8d
    nop                                           ; $709e: $00
    nop                                           ; $709f: $00
    adc [hl]                                      ; $70a0: $8e
    nop                                           ; $70a1: $00
    adc a                                         ; $70a2: $8f
    nop                                           ; $70a3: $00
    sbc h                                         ; $70a4: $9c
    nop                                           ; $70a5: $00
    sbc l                                         ; $70a6: $9d
    nop                                           ; $70a7: $00
    nop                                           ; $70a8: $00
    sbc [hl]                                      ; $70a9: $9e
    nop                                           ; $70aa: $00
    sbc a                                         ; $70ab: $9f
    nop                                           ; $70ac: $00
    ld h, [hl]                                    ; $70ad: $66
    nop                                           ; $70ae: $00
    ld h, a                                       ; $70af: $67
    nop                                           ; $70b0: $00
    ld bc, $0068                                  ; $70b1: $01 $68 $00
    ld l, c                                       ; $70b4: $69
    nop                                           ; $70b5: $00
    ld [hl], h                                    ; $70b6: $74
    nop                                           ; $70b7: $00
    ld [hl], l                                    ; $70b8: $75
    xor [hl]                                      ; $70b9: $ae
    ld sp, $7c10                                  ; $70ba: $31 $10 $7c
    nop                                           ; $70bd: $00
    ld a, l                                       ; $70be: $7d
    cp d                                          ; $70bf: $ba
    ld bc, $0085                                  ; $70c0: $01 $85 $00
    add [hl]                                      ; $70c3: $86
    nop                                           ; $70c4: $00
    nop                                           ; $70c5: $00
    add a                                         ; $70c6: $87
    nop                                           ; $70c7: $00
    sub b                                         ; $70c8: $90
    nop                                           ; $70c9: $00
    sub c                                         ; $70ca: $91
    nop                                           ; $70cb: $00
    sub d                                         ; $70cc: $92
    nop                                           ; $70cd: $00
    nop                                           ; $70ce: $00
    sub e                                         ; $70cf: $93
    nop                                           ; $70d0: $00

Call_08e_70d1:
    and b                                         ; $70d1: $a0
    nop                                           ; $70d2: $00
    and c                                         ; $70d3: $a1
    nop                                           ; $70d4: $00
    and d                                         ; $70d5: $a2
    nop                                           ; $70d6: $00
    nop                                           ; $70d7: $00
    and e                                         ; $70d8: $a3
    nop                                           ; $70d9: $00
    ld l, d                                       ; $70da: $6a
    nop                                           ; $70db: $00
    ld l, e                                       ; $70dc: $6b
    nop                                           ; $70dd: $00
    ld l, h                                       ; $70de: $6c
    nop                                           ; $70df: $00
    inc b                                         ; $70e0: $04
    ld l, l                                       ; $70e1: $6d
    nop                                           ; $70e2: $00
    halt                                          ; $70e3: $76
    nop                                           ; $70e4: $00
    ld [hl], a                                    ; $70e5: $77
    sbc $31                                       ; $70e6: $de $31
    ld a, [hl]                                    ; $70e8: $7e
    nop                                           ; $70e9: $00
    ld b, b                                       ; $70ea: $40
    ld a, a                                       ; $70eb: $7f
    ld [$8811], a                                 ; $70ec: $ea $11 $88
    nop                                           ; $70ef: $00
    adc c                                         ; $70f0: $89
    nop                                           ; $70f1: $00
    sub h                                         ; $70f2: $94
    nop                                           ; $70f3: $00
    nop                                           ; $70f4: $00
    sub l                                         ; $70f5: $95
    nop                                           ; $70f6: $00
    sub [hl]                                      ; $70f7: $96
    nop                                           ; $70f8: $00
    sub a                                         ; $70f9: $97
    nop                                           ; $70fa: $00
    and h                                         ; $70fb: $a4
    nop                                           ; $70fc: $00
    nop                                           ; $70fd: $00
    and l                                         ; $70fe: $a5
    nop                                           ; $70ff: $00
    and [hl]                                      ; $7100: $a6
    nop                                           ; $7101: $00
    and a                                         ; $7102: $a7
    nop                                           ; $7103: $00
    ld l, [hl]                                    ; $7104: $6e
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    ld l, a                                       ; $7107: $6f
    nop                                           ; $7108: $00
    ld [hl], b                                    ; $7109: $70
    nop                                           ; $710a: $00
    ld [hl], c                                    ; $710b: $71
    nop                                           ; $710c: $00
    ld a, b                                       ; $710d: $78
    nop                                           ; $710e: $00
    ld b, h                                       ; $710f: $44
    ld a, c                                       ; $7110: $79
    ld c, $32                                     ; $7111: $0e $32
    add b                                         ; $7113: $80
    nop                                           ; $7114: $00
    add c                                         ; $7115: $81
    ld a, [de]                                    ; $7116: $1a
    ld [de], a                                    ; $7117: $12
    adc d                                         ; $7118: $8a
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    adc e                                         ; $711b: $8b
    nop                                           ; $711c: $00
    sbc b                                         ; $711d: $98
    nop                                           ; $711e: $00
    sbc c                                         ; $711f: $99
    nop                                           ; $7120: $00
    sbc d                                         ; $7121: $9a
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    sbc e                                         ; $7124: $9b
    nop                                           ; $7125: $00
    xor b                                         ; $7126: $a8
    nop                                           ; $7127: $00
    xor c                                         ; $7128: $a9
    nop                                           ; $7129: $00
    xor d                                         ; $712a: $aa
    nop                                           ; $712b: $00
    nop                                           ; $712c: $00
    xor e                                         ; $712d: $ab
    nop                                           ; $712e: $00
    xor h                                         ; $712f: $ac
    nop                                           ; $7130: $00
    xor l                                         ; $7131: $ad
    nop                                           ; $7132: $00
    xor [hl]                                      ; $7133: $ae
    nop                                           ; $7134: $00
    inc b                                         ; $7135: $04
    xor a                                         ; $7136: $af
    nop                                           ; $7137: $00
    or h                                          ; $7138: $b4
    nop                                           ; $7139: $00
    or l                                          ; $713a: $b5
    ld a, $32                                     ; $713b: $3e $32
    jp nz, Jump_000_1000                          ; $713d: $c2 $00 $10

    jp $b000                                      ; $7140: $c3 $00 $b0


    ld c, h                                       ; $7143: $4c
    ld [bc], a                                    ; $7144: $02
    adc $00                                       ; $7145: $ce $00
    rst $08                                       ; $7147: $cf
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    jp c, $db00                                   ; $714a: $da $00 $db

    nop                                           ; $714d: $00
    call c, $dd00                                 ; $714e: $dc $00 $dd
    nop                                           ; $7151: $00
    ld bc, $00de                                  ; $7152: $01 $de $00
    rst $18                                       ; $7155: $df
    nop                                           ; $7156: $00
    ldh [rP1], a                                  ; $7157: $e0 $00
    pop hl                                        ; $7159: $e1
    ld h, d                                       ; $715a: $62
    ld [de], a                                    ; $715b: $12
    nop                                           ; $715c: $00
    or b                                          ; $715d: $b0
    nop                                           ; $715e: $00
    or c                                          ; $715f: $b1
    nop                                           ; $7160: $00
    or [hl]                                       ; $7161: $b6
    nop                                           ; $7162: $00
    or a                                          ; $7163: $b7
    nop                                           ; $7164: $00
    inc b                                         ; $7165: $04
    cp b                                          ; $7166: $b8
    nop                                           ; $7167: $00
    cp c                                          ; $7168: $b9
    nop                                           ; $7169: $00
    call nz, Call_000_00dc                        ; $716a: $c4 $dc $00
    push bc                                       ; $716d: $c5
    nop                                           ; $716e: $00
    nop                                           ; $716f: $00
    add $00                                       ; $7170: $c6 $00
    ret nc                                        ; $7172: $d0

    nop                                           ; $7173: $00
    pop de                                        ; $7174: $d1
    nop                                           ; $7175: $00
    jp nc, Jump_08e_4100                          ; $7176: $d2 $00 $41

    db $d3                                        ; $7179: $d3
    add d                                         ; $717a: $82
    ld [hl-], a                                   ; $717b: $32
    ld [c], a                                     ; $717c: $e2
    nop                                           ; $717d: $00
    db $e3                                        ; $717e: $e3
    nop                                           ; $717f: $00
    db $e4                                        ; $7180: $e4
    sub b                                         ; $7181: $90
    ld [hl-], a                                   ; $7182: $32
    nop                                           ; $7183: $00
    or d                                          ; $7184: $b2
    nop                                           ; $7185: $00
    cp d                                          ; $7186: $ba
    nop                                           ; $7187: $00
    cp e                                          ; $7188: $bb
    nop                                           ; $7189: $00
    cp h                                          ; $718a: $bc
    nop                                           ; $718b: $00
    ld de, $00bd                                  ; $718c: $11 $bd $00
    rst $00                                       ; $718f: $c7
    call c, $c800                                 ; $7190: $dc $00 $c8
    nop                                           ; $7193: $00
    ret                                           ; $7194: $c9


    db $e4                                        ; $7195: $e4
    nop                                           ; $7196: $00
    inc b                                         ; $7197: $04
    call nc, $d500                                ; $7198: $d4 $00 $d5
    nop                                           ; $719b: $00
    sub $b2                                       ; $719c: $d6 $b2
    ld [hl-], a                                   ; $719e: $32
    push hl                                       ; $719f: $e5
    nop                                           ; $71a0: $00
    db $10                                        ; $71a1: $10
    and $00                                       ; $71a2: $e6 $00
    rst $20                                       ; $71a4: $e7
    ret nz                                        ; $71a5: $c0

    ld [hl-], a                                   ; $71a6: $32
    or e                                          ; $71a7: $b3
    nop                                           ; $71a8: $00
    cp [hl]                                       ; $71a9: $be
    nop                                           ; $71aa: $00
    nop                                           ; $71ab: $00
    cp a                                          ; $71ac: $bf
    nop                                           ; $71ad: $00
    ret nz                                        ; $71ae: $c0

    nop                                           ; $71af: $00
    pop bc                                        ; $71b0: $c1
    nop                                           ; $71b1: $00
    jp z, Jump_000_0400                           ; $71b2: $ca $00 $04

    rlc b                                         ; $71b5: $cb $00
    call z, $cd00                                 ; $71b7: $cc $00 $cd
    db $e4                                        ; $71ba: $e4
    nop                                           ; $71bb: $00
    rst $10                                       ; $71bc: $d7
    nop                                           ; $71bd: $00
    db $10                                        ; $71be: $10
    ret c                                         ; $71bf: $d8

    nop                                           ; $71c0: $00
    reti                                          ; $71c1: $d9


    ld [c], a                                     ; $71c2: $e2
    ld [hl-], a                                   ; $71c3: $32
    add sp, $00                                   ; $71c4: $e8 $00
    jp hl                                         ; $71c6: $e9


    nop                                           ; $71c7: $00
    ld b, b                                       ; $71c8: $40
    ld [$32f0], a                                 ; $71c9: $ea $f0 $32
    db $eb                                        ; $71cc: $eb
    nop                                           ; $71cd: $00
    db $ed                                        ; $71ce: $ed
    nop                                           ; $71cf: $00
    xor $00                                       ; $71d0: $ee $00
    nop                                           ; $71d2: $00
    rst $28                                       ; $71d3: $ef
    nop                                           ; $71d4: $00
    ldh a, [rP1]                                  ; $71d5: $f0 $00
    push af                                       ; $71d7: $f5
    nop                                           ; $71d8: $00
    or $00                                        ; $71d9: $f6 $00
    nop                                           ; $71db: $00
    rst $30                                       ; $71dc: $f7
    nop                                           ; $71dd: $00
    ld hl, sp+$00                                 ; $71de: $f8 $00
    ld bc, $0201                                  ; $71e0: $01 $01 $02

jr_08e_71e3:
    ld bc, $0308                                  ; $71e3: $01 $08 $03
    ld bc, $0104                                  ; $71e6: $01 $04 $01
    ld [de], a                                    ; $71e9: $12
    dec bc                                        ; $71ea: $0b
    ld a, [bc]                                    ; $71eb: $0a
    ld bc, $040b                                  ; $71ec: $01 $0b $04
    ld bc, $0117                                  ; $71ef: $01 $17 $01
    jr jr_08e_71f5                                ; $71f2: $18 $01

    ld h, b                                       ; $71f4: $60

jr_08e_71f5:
    jr c, jr_08e_71e3                             ; $71f5: $38 $ec

    nop                                           ; $71f7: $00
    nop                                           ; $71f8: $00
    pop af                                        ; $71f9: $f1
    nop                                           ; $71fa: $00
    ld a, [c]                                     ; $71fb: $f2
    nop                                           ; $71fc: $00
    di                                            ; $71fd: $f3
    nop                                           ; $71fe: $00
    db $f4                                        ; $71ff: $f4
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    ld sp, hl                                     ; $7202: $f9
    nop                                           ; $7203: $00
    ld a, [$fb00]                                 ; $7204: $fa $00 $fb
    nop                                           ; $7207: $00
    db $fc                                        ; $7208: $fc
    nop                                           ; $7209: $00
    ld bc, $0105                                  ; $720a: $01 $05 $01
    ld b, $01                                     ; $720d: $06 $01
    rlca                                          ; $720f: $07
    ld bc, $3008                                  ; $7210: $01 $08 $30
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    inc c                                         ; $7215: $0c
    ld bc, $010d                                  ; $7216: $01 $0d $01
    ld c, $01                                     ; $7219: $0e $01
    add hl, de                                    ; $721b: $19
    ld bc, $1a31                                  ; $721c: $01 $31 $1a
    ld bc, $3860                                  ; $721f: $01 $60 $38
    ld e, b                                       ; $7222: $58
    dec sp                                        ; $7223: $3b
    db $fd                                        ; $7224: $fd
    nop                                           ; $7225: $00
    cp $66                                        ; $7226: $fe $66
    ld d, e                                       ; $7228: $53
    nop                                           ; $7229: $00
    rrca                                          ; $722a: $0f
    ld bc, $0110                                  ; $722b: $01 $10 $01
    ld de, $1201                                  ; $722e: $11 $01 $12
    ld bc, $1b06                                  ; $7231: $01 $06 $1b
    ld bc, $011c                                  ; $7234: $01 $1c $01
    dec e                                         ; $7237: $1d
    ld l, [hl]                                    ; $7238: $6e
    db $10                                        ; $7239: $10
    add h                                         ; $723a: $84
    ld e, e                                       ; $723b: $5b
    rst $38                                       ; $723c: $ff
    ret nz                                        ; $723d: $c0

    and c                                         ; $723e: $a1
    inc bc                                        ; $723f: $03
    sub [hl]                                      ; $7240: $96
    dec sp                                        ; $7241: $3b
    add hl, bc                                    ; $7242: $09
    ld bc, $0113                                  ; $7243: $01 $13 $01
    inc d                                         ; $7246: $14
    ld bc, $1501                                  ; $7247: $01 $01 $15
    ld bc, $0116                                  ; $724a: $01 $16 $01
    ld e, $01                                     ; $724d: $1e $01
    rra                                           ; $724f: $1f
    ld h, b                                       ; $7250: $60
    sub b                                         ; $7251: $90
    db $10                                        ; $7252: $10
    jr nz, @+$03                                  ; $7253: $20 $01

    ld hl, $4046                                  ; $7255: $21 $46 $40
    ld h, $01                                     ; $7258: $26 $01
    jr z, jr_08e_725d                             ; $725a: $28 $01

    db $10                                        ; $725c: $10

jr_08e_725d:
    add hl, hl                                    ; $725d: $29
    ld bc, $022a                                  ; $725e: $01 $2a $02
    nop                                           ; $7261: $00
    inc sp                                        ; $7262: $33
    ld bc, $0134                                  ; $7263: $01 $34 $01
    ld b, h                                       ; $7266: $44
    dec [hl]                                      ; $7267: $35
    ld h, b                                       ; $7268: $60
    add b                                         ; $7269: $80
    ld [hl+], a                                   ; $726a: $22
    ld bc, $7623                                  ; $726b: $01 $23 $76
    ld b, b                                       ; $726e: $40
    daa                                           ; $726f: $27
    ld bc, $2b00                                  ; $7270: $01 $00 $2b
    ld bc, $012c                                  ; $7273: $01 $2c $01
    dec l                                         ; $7276: $2d
    ld bc, $012e                                  ; $7277: $01 $2e $01
    inc b                                         ; $727a: $04
    ld [hl], $01                                  ; $727b: $36 $01
    scf                                           ; $727d: $37
    ld bc, $9038                                  ; $727e: $01 $38 $90
    add b                                         ; $7281: $80
    inc h                                         ; $7282: $24
    ld bc, $2540                                  ; $7283: $01 $40 $25
    and [hl]                                      ; $7286: $a6
    ld d, b                                       ; $7287: $50
    cpl                                           ; $7288: $2f
    ld bc, $0130                                  ; $7289: $01 $30 $01
    ld sp, $0401                                  ; $728c: $31 $01 $04
    ld [hl-], a                                   ; $728f: $32
    ld bc, $0139                                  ; $7290: $01 $39 $01
    ld a, [hl-]                                   ; $7293: $3a
    inc l                                         ; $7294: $2c
    ld de, $03a8                                  ; $7295: $11 $a8 $03
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    nop                                           ; $729a: $00
    ld bc, $0200                                  ; $729b: $01 $00 $02
    nop                                           ; $729e: $00
    inc bc                                        ; $729f: $03
    nop                                           ; $72a0: $00
    ld b, b                                       ; $72a1: $40
    db $10                                        ; $72a2: $10
    ld b, $40                                     ; $72a3: $06 $40
    ld a, [de]                                    ; $72a5: $1a
    nop                                           ; $72a6: $00
    dec de                                        ; $72a7: $1b
    nop                                           ; $72a8: $00
    ld h, $00                                     ; $72a9: $26 $00
    nop                                           ; $72ab: $00
    daa                                           ; $72ac: $27
    nop                                           ; $72ad: $00
    jr z, jr_08e_72b0                             ; $72ae: $28 $00

jr_08e_72b0:
    add hl, hl                                    ; $72b0: $29
    nop                                           ; $72b1: $00
    ld [hl], $00                                  ; $72b2: $36 $00
    ld b, b                                       ; $72b4: $40
    scf                                           ; $72b5: $37
    ld a, [bc]                                    ; $72b6: $0a
    nop                                           ; $72b7: $00
    ld h, $00                                     ; $72b8: $26 $00
    ld b, e                                       ; $72ba: $43
    nop                                           ; $72bb: $00
    ld b, h                                       ; $72bc: $44
    nop                                           ; $72bd: $00
    nop                                           ; $72be: $00
    ld b, l                                       ; $72bf: $45
    nop                                           ; $72c0: $00
    ld b, [hl]                                    ; $72c1: $46
    nop                                           ; $72c2: $00
    ld d, e                                       ; $72c3: $53
    nop                                           ; $72c4: $00
    inc b                                         ; $72c5: $04
    nop                                           ; $72c6: $00
    ld bc, $0005                                  ; $72c7: $01 $05 $00
    ld b, $00                                     ; $72ca: $06 $00
    rlca                                          ; $72cc: $07
    nop                                           ; $72cd: $00
    ld de, $4006                                  ; $72ce: $11 $06 $40
    nop                                           ; $72d1: $00
    inc e                                         ; $72d2: $1c
    nop                                           ; $72d3: $00
    dec e                                         ; $72d4: $1d
    nop                                           ; $72d5: $00
    ld a, [hl+]                                   ; $72d6: $2a
    nop                                           ; $72d7: $00
    dec hl                                        ; $72d8: $2b
    nop                                           ; $72d9: $00
    ld bc, $002c                                  ; $72da: $01 $2c $00
    dec l                                         ; $72dd: $2d
    nop                                           ; $72de: $00
    jr c, jr_08e_72e1                             ; $72df: $38 $00

jr_08e_72e1:
    add hl, sp                                    ; $72e1: $39
    ld a, [bc]                                    ; $72e2: $0a
    nop                                           ; $72e3: $00
    nop                                           ; $72e4: $00
    ld a, [hl-]                                   ; $72e5: $3a
    nop                                           ; $72e6: $00
    ld b, a                                       ; $72e7: $47
    nop                                           ; $72e8: $00
    ld c, b                                       ; $72e9: $48
    nop                                           ; $72ea: $00
    ld c, c                                       ; $72eb: $49
    nop                                           ; $72ec: $00
    nop                                           ; $72ed: $00
    ld c, d                                       ; $72ee: $4a
    nop                                           ; $72ef: $00
    ld d, h                                       ; $72f0: $54
    nop                                           ; $72f1: $00
    ld [$0900], sp                                ; $72f2: $08 $00 $09
    nop                                           ; $72f5: $00
    nop                                           ; $72f6: $00
    ld a, [bc]                                    ; $72f7: $0a
    nop                                           ; $72f8: $00
    dec bc                                        ; $72f9: $0b
    nop                                           ; $72fa: $00
    ld [de], a                                    ; $72fb: $12
    nop                                           ; $72fc: $00
    inc de                                        ; $72fd: $13
    nop                                           ; $72fe: $00
    nop                                           ; $72ff: $00
    inc d                                         ; $7300: $14
    nop                                           ; $7301: $00
    dec d                                         ; $7302: $15
    nop                                           ; $7303: $00
    ld e, $00                                     ; $7304: $1e $00
    rra                                           ; $7306: $1f
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    jr nz, jr_08e_730b                            ; $7309: $20 $00

jr_08e_730b:
    ld hl, $2e00                                  ; $730b: $21 $00 $2e
    nop                                           ; $730e: $00
    cpl                                           ; $730f: $2f
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    jr nc, jr_08e_7314                            ; $7312: $30 $00

jr_08e_7314:
    ld sp, $3b00                                  ; $7314: $31 $00 $3b
    nop                                           ; $7317: $00
    inc a                                         ; $7318: $3c
    nop                                           ; $7319: $00
    nop                                           ; $731a: $00
    dec a                                         ; $731b: $3d
    nop                                           ; $731c: $00
    ld a, $00                                     ; $731d: $3e $00
    ld c, e                                       ; $731f: $4b
    nop                                           ; $7320: $00
    ld c, h                                       ; $7321: $4c
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    ld c, l                                       ; $7324: $4d
    nop                                           ; $7325: $00
    ld c, [hl]                                    ; $7326: $4e
    nop                                           ; $7327: $00
    ld d, l                                       ; $7328: $55
    nop                                           ; $7329: $00
    inc c                                         ; $732a: $0c
    nop                                           ; $732b: $00
    nop                                           ; $732c: $00
    dec c                                         ; $732d: $0d
    nop                                           ; $732e: $00
    ld c, $00                                     ; $732f: $0e $00
    rrca                                          ; $7331: $0f
    nop                                           ; $7332: $00
    ld d, $00                                     ; $7333: $16 $00
    nop                                           ; $7335: $00
    rla                                           ; $7336: $17
    nop                                           ; $7337: $00
    jr jr_08e_733a                                ; $7338: $18 $00

jr_08e_733a:
    add hl, de                                    ; $733a: $19
    nop                                           ; $733b: $00
    ld [hl+], a                                   ; $733c: $22
    nop                                           ; $733d: $00
    nop                                           ; $733e: $00
    inc hl                                        ; $733f: $23
    nop                                           ; $7340: $00
    inc h                                         ; $7341: $24
    nop                                           ; $7342: $00
    dec h                                         ; $7343: $25
    nop                                           ; $7344: $00
    ld [hl-], a                                   ; $7345: $32
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    inc sp                                        ; $7348: $33
    nop                                           ; $7349: $00
    inc [hl]                                      ; $734a: $34
    nop                                           ; $734b: $00
    dec [hl]                                      ; $734c: $35
    nop                                           ; $734d: $00
    ccf                                           ; $734e: $3f
    nop                                           ; $734f: $00
    nop                                           ; $7350: $00
    ld b, b                                       ; $7351: $40
    nop                                           ; $7352: $00
    ld b, c                                       ; $7353: $41
    nop                                           ; $7354: $00
    ld b, d                                       ; $7355: $42
    nop                                           ; $7356: $00
    ld c, a                                       ; $7357: $4f
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    ld d, b                                       ; $735a: $50
    nop                                           ; $735b: $00
    ld d, c                                       ; $735c: $51
    nop                                           ; $735d: $00
    ld d, d                                       ; $735e: $52
    nop                                           ; $735f: $00
    ld d, [hl]                                    ; $7360: $56
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    ld d, a                                       ; $7363: $57
    nop                                           ; $7364: $00
    ld e, b                                       ; $7365: $58
    nop                                           ; $7366: $00
    ld e, c                                       ; $7367: $59
    nop                                           ; $7368: $00
    ld e, d                                       ; $7369: $5a
    nop                                           ; $736a: $00
    nop                                           ; $736b: $00
    ld h, a                                       ; $736c: $67
    nop                                           ; $736d: $00
    ld l, b                                       ; $736e: $68
    nop                                           ; $736f: $00
    ld l, c                                       ; $7370: $69
    nop                                           ; $7371: $00
    ld l, d                                       ; $7372: $6a
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    ld [hl], a                                    ; $7375: $77
    nop                                           ; $7376: $00
    ld a, b                                       ; $7377: $78
    nop                                           ; $7378: $00
    ld a, c                                       ; $7379: $79
    nop                                           ; $737a: $00
    ld a, d                                       ; $737b: $7a
    nop                                           ; $737c: $00
    nop                                           ; $737d: $00
    add a                                         ; $737e: $87
    nop                                           ; $737f: $00
    adc b                                         ; $7380: $88
    nop                                           ; $7381: $00
    adc c                                         ; $7382: $89
    nop                                           ; $7383: $00
    adc d                                         ; $7384: $8a
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    sub a                                         ; $7387: $97
    nop                                           ; $7388: $00
    sbc b                                         ; $7389: $98
    nop                                           ; $738a: $00
    sbc c                                         ; $738b: $99
    nop                                           ; $738c: $00
    sbc d                                         ; $738d: $9a
    nop                                           ; $738e: $00
    nop                                           ; $738f: $00
    and a                                         ; $7390: $a7
    nop                                           ; $7391: $00
    xor b                                         ; $7392: $a8
    nop                                           ; $7393: $00
    xor c                                         ; $7394: $a9
    nop                                           ; $7395: $00
    xor d                                         ; $7396: $aa
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    or a                                          ; $7399: $b7
    nop                                           ; $739a: $00
    ld e, e                                       ; $739b: $5b
    nop                                           ; $739c: $00
    ld e, h                                       ; $739d: $5c
    nop                                           ; $739e: $00
    ld e, l                                       ; $739f: $5d
    nop                                           ; $73a0: $00
    nop                                           ; $73a1: $00
    ld e, [hl]                                    ; $73a2: $5e
    nop                                           ; $73a3: $00
    ld l, e                                       ; $73a4: $6b
    nop                                           ; $73a5: $00
    ld l, h                                       ; $73a6: $6c
    nop                                           ; $73a7: $00
    ld l, l                                       ; $73a8: $6d
    nop                                           ; $73a9: $00
    nop                                           ; $73aa: $00
    ld l, [hl]                                    ; $73ab: $6e
    nop                                           ; $73ac: $00
    ld a, e                                       ; $73ad: $7b
    nop                                           ; $73ae: $00
    ld a, h                                       ; $73af: $7c
    nop                                           ; $73b0: $00
    ld a, l                                       ; $73b1: $7d
    nop                                           ; $73b2: $00
    nop                                           ; $73b3: $00
    ld a, [hl]                                    ; $73b4: $7e
    nop                                           ; $73b5: $00
    adc e                                         ; $73b6: $8b
    nop                                           ; $73b7: $00
    adc h                                         ; $73b8: $8c
    nop                                           ; $73b9: $00
    adc l                                         ; $73ba: $8d
    nop                                           ; $73bb: $00
    nop                                           ; $73bc: $00
    adc [hl]                                      ; $73bd: $8e
    nop                                           ; $73be: $00
    sbc e                                         ; $73bf: $9b
    nop                                           ; $73c0: $00
    sbc h                                         ; $73c1: $9c
    nop                                           ; $73c2: $00
    sbc l                                         ; $73c3: $9d
    nop                                           ; $73c4: $00
    nop                                           ; $73c5: $00
    sbc [hl]                                      ; $73c6: $9e
    nop                                           ; $73c7: $00
    xor e                                         ; $73c8: $ab
    nop                                           ; $73c9: $00
    xor h                                         ; $73ca: $ac
    nop                                           ; $73cb: $00
    xor l                                         ; $73cc: $ad

Call_08e_73cd:
    nop                                           ; $73cd: $00
    nop                                           ; $73ce: $00
    xor [hl]                                      ; $73cf: $ae
    nop                                           ; $73d0: $00
    cp b                                          ; $73d1: $b8
    nop                                           ; $73d2: $00
    ld e, a                                       ; $73d3: $5f
    nop                                           ; $73d4: $00
    ld h, b                                       ; $73d5: $60
    nop                                           ; $73d6: $00
    nop                                           ; $73d7: $00
    ld h, c                                       ; $73d8: $61
    nop                                           ; $73d9: $00
    ld h, d                                       ; $73da: $62
    nop                                           ; $73db: $00
    ld l, a                                       ; $73dc: $6f
    nop                                           ; $73dd: $00
    ld [hl], b                                    ; $73de: $70
    nop                                           ; $73df: $00
    nop                                           ; $73e0: $00
    ld [hl], c                                    ; $73e1: $71
    nop                                           ; $73e2: $00
    ld [hl], d                                    ; $73e3: $72
    nop                                           ; $73e4: $00
    ld a, a                                       ; $73e5: $7f
    nop                                           ; $73e6: $00
    add b                                         ; $73e7: $80
    nop                                           ; $73e8: $00
    nop                                           ; $73e9: $00
    add c                                         ; $73ea: $81
    nop                                           ; $73eb: $00
    add d                                         ; $73ec: $82
    nop                                           ; $73ed: $00
    adc a                                         ; $73ee: $8f
    nop                                           ; $73ef: $00
    sub b                                         ; $73f0: $90
    nop                                           ; $73f1: $00
    nop                                           ; $73f2: $00
    sub c                                         ; $73f3: $91
    nop                                           ; $73f4: $00
    sub d                                         ; $73f5: $92
    nop                                           ; $73f6: $00
    sbc a                                         ; $73f7: $9f
    nop                                           ; $73f8: $00
    and b                                         ; $73f9: $a0
    nop                                           ; $73fa: $00
    nop                                           ; $73fb: $00
    and c                                         ; $73fc: $a1
    nop                                           ; $73fd: $00
    and d                                         ; $73fe: $a2
    nop                                           ; $73ff: $00
    xor a                                         ; $7400: $af
    nop                                           ; $7401: $00
    or b                                          ; $7402: $b0
    nop                                           ; $7403: $00
    nop                                           ; $7404: $00
    or c                                          ; $7405: $b1
    nop                                           ; $7406: $00
    or d                                          ; $7407: $b2
    nop                                           ; $7408: $00
    cp c                                          ; $7409: $b9
    nop                                           ; $740a: $00
    ld h, e                                       ; $740b: $63
    nop                                           ; $740c: $00
    nop                                           ; $740d: $00
    ld h, h                                       ; $740e: $64
    nop                                           ; $740f: $00
    ld h, l                                       ; $7410: $65
    nop                                           ; $7411: $00
    ld h, [hl]                                    ; $7412: $66
    nop                                           ; $7413: $00
    ld [hl], e                                    ; $7414: $73
    nop                                           ; $7415: $00
    nop                                           ; $7416: $00
    ld [hl], h                                    ; $7417: $74
    nop                                           ; $7418: $00
    ld [hl], l                                    ; $7419: $75
    nop                                           ; $741a: $00
    halt                                          ; $741b: $76
    nop                                           ; $741c: $00
    add e                                         ; $741d: $83
    nop                                           ; $741e: $00
    nop                                           ; $741f: $00

Call_08e_7420:
    add h                                         ; $7420: $84
    nop                                           ; $7421: $00
    add l                                         ; $7422: $85
    nop                                           ; $7423: $00
    add [hl]                                      ; $7424: $86
    nop                                           ; $7425: $00
    sub e                                         ; $7426: $93
    nop                                           ; $7427: $00
    nop                                           ; $7428: $00
    sub h                                         ; $7429: $94
    nop                                           ; $742a: $00
    sub l                                         ; $742b: $95
    nop                                           ; $742c: $00
    sub [hl]                                      ; $742d: $96
    nop                                           ; $742e: $00
    and e                                         ; $742f: $a3
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    and h                                         ; $7432: $a4
    nop                                           ; $7433: $00
    and l                                         ; $7434: $a5
    nop                                           ; $7435: $00
    and [hl]                                      ; $7436: $a6
    nop                                           ; $7437: $00
    or e                                          ; $7438: $b3
    nop                                           ; $7439: $00
    nop                                           ; $743a: $00
    or h                                          ; $743b: $b4
    nop                                           ; $743c: $00
    or l                                          ; $743d: $b5
    nop                                           ; $743e: $00
    or [hl]                                       ; $743f: $b6
    nop                                           ; $7440: $00
    cp d                                          ; $7441: $ba
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    cp e                                          ; $7444: $bb
    nop                                           ; $7445: $00
    cp h                                          ; $7446: $bc
    nop                                           ; $7447: $00
    cp l                                          ; $7448: $bd
    nop                                           ; $7449: $00
    cp [hl]                                       ; $744a: $be
    nop                                           ; $744b: $00
    nop                                           ; $744c: $00
    rlc b                                         ; $744d: $cb $00
    call z, $cd00                                 ; $744f: $cc $00 $cd
    nop                                           ; $7452: $00
    adc $00                                       ; $7453: $ce $00
    nop                                           ; $7455: $00
    jp c, $db00                                   ; $7456: $da $00 $db

    nop                                           ; $7459: $00
    call c, $dd00                                 ; $745a: $dc $00 $dd
    nop                                           ; $745d: $00
    nop                                           ; $745e: $00
    ld [$eb00], a                                 ; $745f: $ea $00 $eb
    nop                                           ; $7462: $00
    db $ec                                        ; $7463: $ec
    nop                                           ; $7464: $00
    db $ed                                        ; $7465: $ed
    nop                                           ; $7466: $00
    nop                                           ; $7467: $00
    ld hl, sp+$00                                 ; $7468: $f8 $00
    ld sp, hl                                     ; $746a: $f9
    nop                                           ; $746b: $00
    ld a, [$fb00]                                 ; $746c: $fa $00 $fb
    nop                                           ; $746f: $00
    nop                                           ; $7470: $00
    ld b, $01                                     ; $7471: $06 $01
    rlca                                          ; $7473: $07
    ld bc, $0108                                  ; $7474: $01 $08 $01
    add hl, bc                                    ; $7477: $09
    ld bc, $1600                                  ; $7478: $01 $00 $16
    ld bc, $00bf                                  ; $747b: $01 $bf $00
    ret nz                                        ; $747e: $c0

    nop                                           ; $747f: $00
    pop bc                                        ; $7480: $c1
    nop                                           ; $7481: $00
    nop                                           ; $7482: $00
    jp nz, $cf00                                  ; $7483: $c2 $00 $cf

    nop                                           ; $7486: $00
    ret nc                                        ; $7487: $d0

    nop                                           ; $7488: $00
    pop de                                        ; $7489: $d1
    nop                                           ; $748a: $00
    nop                                           ; $748b: $00
    jp nc, $de00                                  ; $748c: $d2 $00 $de

    nop                                           ; $748f: $00
    rst $18                                       ; $7490: $df
    nop                                           ; $7491: $00
    ldh [rP1], a                                  ; $7492: $e0 $00
    nop                                           ; $7494: $00
    pop hl                                        ; $7495: $e1
    nop                                           ; $7496: $00
    xor $00                                       ; $7497: $ee $00
    rst $28                                       ; $7499: $ef
    nop                                           ; $749a: $00
    ldh a, [rP1]                                  ; $749b: $f0 $00
    nop                                           ; $749d: $00
    pop af                                        ; $749e: $f1
    nop                                           ; $749f: $00
    db $fc                                        ; $74a0: $fc
    nop                                           ; $74a1: $00
    db $fd                                        ; $74a2: $fd
    nop                                           ; $74a3: $00
    cp $00                                        ; $74a4: $fe $00
    nop                                           ; $74a6: $00
    rst $38                                       ; $74a7: $ff
    nop                                           ; $74a8: $00
    ld a, [bc]                                    ; $74a9: $0a
    ld bc, $010b                                  ; $74aa: $01 $0b $01
    inc c                                         ; $74ad: $0c
    ld bc, $0d00                                  ; $74ae: $01 $00 $0d
    ld bc, $0117                                  ; $74b1: $01 $17 $01
    jp $c400                                      ; $74b4: $c3 $00 $c4


    nop                                           ; $74b7: $00
    nop                                           ; $74b8: $00
    push bc                                       ; $74b9: $c5
    nop                                           ; $74ba: $00
    add $00                                       ; $74bb: $c6 $00
    db $d3                                        ; $74bd: $d3
    nop                                           ; $74be: $00
    call nc, RST_00                               ; $74bf: $d4 $00 $00
    push de                                       ; $74c2: $d5
    nop                                           ; $74c3: $00
    sub $00                                       ; $74c4: $d6 $00
    ld [c], a                                     ; $74c6: $e2
    nop                                           ; $74c7: $00
    db $e3                                        ; $74c8: $e3
    nop                                           ; $74c9: $00
    nop                                           ; $74ca: $00
    db $e4                                        ; $74cb: $e4
    nop                                           ; $74cc: $00
    push hl                                       ; $74cd: $e5
    nop                                           ; $74ce: $00
    ld a, [c]                                     ; $74cf: $f2
    nop                                           ; $74d0: $00
    di                                            ; $74d1: $f3
    nop                                           ; $74d2: $00
    ld b, b                                       ; $74d3: $40
    db $f4                                        ; $74d4: $f4
    inc l                                         ; $74d5: $2c
    ld de, $0100                                  ; $74d6: $11 $00 $01
    ld bc, $0201                                  ; $74d9: $01 $01 $02
    ld bc, $0e00                                  ; $74dc: $01 $00 $0e
    ld bc, $010f                                  ; $74df: $01 $0f $01
    db $10                                        ; $74e2: $10
    ld bc, $0111                                  ; $74e3: $01 $11 $01
    nop                                           ; $74e6: $00
    jr jr_08e_74ea                                ; $74e7: $18 $01

    rst $00                                       ; $74e9: $c7

jr_08e_74ea:
    nop                                           ; $74ea: $00
    ret z                                         ; $74eb: $c8

    nop                                           ; $74ec: $00
    ret                                           ; $74ed: $c9


    nop                                           ; $74ee: $00
    ld b, b                                       ; $74ef: $40
    jp z, $0118                                   ; $74f0: $ca $18 $01

    rst $10                                       ; $74f3: $d7
    nop                                           ; $74f4: $00
    ret c                                         ; $74f5: $d8

    nop                                           ; $74f6: $00
    reti                                          ; $74f7: $d9


    nop                                           ; $74f8: $00
    nop                                           ; $74f9: $00
    and $00                                       ; $74fa: $e6 $00
    rst $20                                       ; $74fc: $e7
    nop                                           ; $74fd: $00
    add sp, $00                                   ; $74fe: $e8 $00
    jp hl                                         ; $7500: $e9


    nop                                           ; $7501: $00
    inc b                                         ; $7502: $04
    push af                                       ; $7503: $f5
    nop                                           ; $7504: $00
    or $00                                        ; $7505: $f6 $00
    rst $30                                       ; $7507: $f7
    inc l                                         ; $7508: $2c
    ld de, $0103                                  ; $7509: $11 $03 $01
    nop                                           ; $750c: $00
    inc b                                         ; $750d: $04
    ld bc, $0105                                  ; $750e: $01 $05 $01
    ld [de], a                                    ; $7511: $12
    ld bc, $0113                                  ; $7512: $01 $13 $01
    nop                                           ; $7515: $00
    inc d                                         ; $7516: $14
    ld bc, $0115                                  ; $7517: $01 $15 $01
    add hl, de                                    ; $751a: $19
    ld bc, $011a                                  ; $751b: $01 $1a $01
    nop                                           ; $751e: $00
    dec de                                        ; $751f: $1b
    ld bc, $011c                                  ; $7520: $01 $1c $01
    dec e                                         ; $7523: $1d
    ld bc, $0129                                  ; $7524: $01 $29 $01
    nop                                           ; $7527: $00
    ld a, [hl+]                                   ; $7528: $2a
    ld bc, $012b                                  ; $7529: $01 $2b $01
    inc l                                         ; $752c: $2c
    ld bc, $0139                                  ; $752d: $01 $39 $01
    nop                                           ; $7530: $00
    ld a, [hl-]                                   ; $7531: $3a
    ld bc, $013b                                  ; $7532: $01 $3b $01
    inc a                                         ; $7535: $3c
    ld bc, $0149                                  ; $7536: $01 $49 $01
    ld [$014a], sp                                ; $7539: $08 $4a $01
    ld c, e                                       ; $753c: $4b
    ld bc, $092c                                  ; $753d: $01 $2c $09
    ld d, h                                       ; $7540: $54
    ld bc, $0055                                  ; $7541: $01 $55 $00
    ld bc, $0156                                  ; $7544: $01 $56 $01
    ld h, b                                       ; $7547: $60
    ld bc, $0161                                  ; $7548: $01 $61 $01
    ld h, d                                       ; $754b: $62
    nop                                           ; $754c: $00
    ld bc, $0163                                  ; $754d: $01 $63 $01
    ld [hl], b                                    ; $7550: $70
    ld bc, $011e                                  ; $7551: $01 $1e $01
    rra                                           ; $7554: $1f
    nop                                           ; $7555: $00
    ld bc, $0120                                  ; $7556: $01 $20 $01
    ld hl, $2d01                                  ; $7559: $21 $01 $2d
    ld bc, $002e                                  ; $755c: $01 $2e $00
    ld bc, $012f                                  ; $755f: $01 $2f $01
    jr nc, jr_08e_7565                            ; $7562: $30 $01

    dec a                                         ; $7564: $3d

jr_08e_7565:
    ld bc, $003e                                  ; $7565: $01 $3e $00
    ld bc, $013f                                  ; $7568: $01 $3f $01
    ld b, b                                       ; $756b: $40
    ld bc, $014c                                  ; $756c: $01 $4c $01
    ld c, l                                       ; $756f: $4d
    db $10                                        ; $7570: $10
    ld bc, $014e                                  ; $7571: $01 $4e $01
    inc l                                         ; $7574: $2c
    add hl, bc                                    ; $7575: $09
    ld d, a                                       ; $7576: $57
    ld bc, $0158                                  ; $7577: $01 $58 $01
    nop                                           ; $757a: $00
    ld e, c                                       ; $757b: $59
    ld bc, $0164                                  ; $757c: $01 $64 $01
    ld h, l                                       ; $757f: $65
    ld bc, $0166                                  ; $7580: $01 $66 $01
    nop                                           ; $7583: $00
    ld h, a                                       ; $7584: $67
    ld bc, $0171                                  ; $7585: $01 $71 $01
    ld [hl+], a                                   ; $7588: $22
    ld bc, $0123                                  ; $7589: $01 $23 $01
    nop                                           ; $758c: $00
    inc h                                         ; $758d: $24
    ld bc, $0125                                  ; $758e: $01 $25 $01
    ld sp, $3201                                  ; $7591: $31 $01 $32
    ld bc, $3300                                  ; $7594: $01 $00 $33
    ld bc, $0134                                  ; $7597: $01 $34 $01
    ld b, c                                       ; $759a: $41
    ld bc, $0142                                  ; $759b: $01 $42 $01
    nop                                           ; $759e: $00
    ld b, e                                       ; $759f: $43
    ld bc, $0144                                  ; $75a0: $01 $44 $01
    ld c, a                                       ; $75a3: $4f
    ld bc, $0150                                  ; $75a4: $01 $50 $01
    ld b, b                                       ; $75a7: $40
    adc l                                         ; $75a8: $8d
    sub b                                         ; $75a9: $90
    ld de, $015a                                  ; $75aa: $11 $5a $01
    ld e, e                                       ; $75ad: $5b
    ld bc, $015c                                  ; $75ae: $01 $5c $01
    nop                                           ; $75b1: $00
    ld l, b                                       ; $75b2: $68
    ld bc, $0169                                  ; $75b3: $01 $69 $01
    ld l, d                                       ; $75b6: $6a
    ld bc, $016b                                  ; $75b7: $01 $6b $01
    nop                                           ; $75ba: $00
    ld [hl], d                                    ; $75bb: $72
    ld bc, $0000                                  ; $75bc: $01 $00 $00
    ld h, $01                                     ; $75bf: $26 $01
    daa                                           ; $75c1: $27
    ld bc, $2800                                  ; $75c2: $01 $00 $28
    ld bc, $0135                                  ; $75c5: $01 $35 $01
    ld [hl], $01                                  ; $75c8: $36 $01
    scf                                           ; $75ca: $37
    ld bc, $3800                                  ; $75cb: $01 $00 $38
    ld bc, $0145                                  ; $75ce: $01 $45 $01
    ld b, [hl]                                    ; $75d1: $46
    ld bc, $0147                                  ; $75d2: $01 $47 $01
    ld bc, $0148                                  ; $75d5: $01 $48 $01
    ld d, c                                       ; $75d8: $51
    ld bc, $0152                                  ; $75d9: $01 $52 $01
    ld d, e                                       ; $75dc: $53
    ld h, h                                       ; $75dd: $64
    stop                                          ; $75de: $10 $00
    ld e, l                                       ; $75e0: $5d
    ld bc, $015e                                  ; $75e1: $01 $5e $01
    ld e, a                                       ; $75e4: $5f
    ld bc, $016c                                  ; $75e5: $01 $6c $01
    nop                                           ; $75e8: $00
    ld l, l                                       ; $75e9: $6d
    ld bc, $016e                                  ; $75ea: $01 $6e $01
    ld l, a                                       ; $75ed: $6f
    ld bc, $0173                                  ; $75ee: $01 $73 $01
    nop                                           ; $75f1: $00
    inc b                                         ; $75f2: $04
    nop                                           ; $75f3: $00
    ld [hl], h                                    ; $75f4: $74
    ld bc, $0175                                  ; $75f5: $01 $75 $01
    halt                                          ; $75f8: $76
    ld bc, $8200                                  ; $75f9: $01 $00 $82
    ld bc, $0183                                  ; $75fc: $01 $83 $01
    add h                                         ; $75ff: $84
    ld bc, $0185                                  ; $7600: $01 $85 $01
    nop                                           ; $7603: $00
    sub d                                         ; $7604: $92
    ld bc, $0193                                  ; $7605: $01 $93 $01
    sub h                                         ; $7608: $94
    ld bc, $0195                                  ; $7609: $01 $95 $01
    ld [bc], a                                    ; $760c: $02
    and d                                         ; $760d: $a2
    ld bc, $01a3                                  ; $760e: $01 $a3 $01
    and h                                         ; $7611: $a4
    ld bc, $0990                                  ; $7612: $01 $90 $09
    xor [hl]                                      ; $7615: $ae
    nop                                           ; $7616: $00
    ld bc, $01af                                  ; $7617: $01 $af $01
    or b                                          ; $761a: $b0
    ld bc, $01ba                                  ; $761b: $01 $ba $01
    cp e                                          ; $761e: $bb
    nop                                           ; $761f: $00
    ld bc, $01bc                                  ; $7620: $01 $bc $01
    cp l                                          ; $7623: $bd
    ld bc, $01c8                                  ; $7624: $01 $c8 $01
    ld [$0000], sp                                ; $7627: $08 $00 $00
    ld [hl], a                                    ; $762a: $77
    ld bc, $0178                                  ; $762b: $01 $78 $01
    ld a, c                                       ; $762e: $79
    ld bc, $0086                                  ; $762f: $01 $86 $00
    ld bc, $0187                                  ; $7632: $01 $87 $01
    adc b                                         ; $7635: $88
    ld bc, $0189                                  ; $7636: $01 $89 $01
    sub [hl]                                      ; $7639: $96
    nop                                           ; $763a: $00
    ld bc, $0197                                  ; $763b: $01 $97 $01
    sbc b                                         ; $763e: $98
    ld bc, $0199                                  ; $763f: $01 $99 $01
    and l                                         ; $7642: $a5
    inc b                                         ; $7643: $04
    ld bc, $01a6                                  ; $7644: $01 $a6 $01
    and a                                         ; $7647: $a7
    ld bc, $0990                                  ; $7648: $01 $90 $09
    or c                                          ; $764b: $b1
    ld bc, $b200                                  ; $764c: $01 $00 $b2
    ld bc, $01b3                                  ; $764f: $01 $b3 $01
    cp [hl]                                       ; $7652: $be
    ld bc, $01bf                                  ; $7653: $01 $bf $01
    nop                                           ; $7656: $00
    ret nz                                        ; $7657: $c0

    ld bc, $01c1                                  ; $7658: $01 $c1 $01
    ret                                           ; $765b: $c9


    ld bc, $017a                                  ; $765c: $01 $7a $01
    nop                                           ; $765f: $00
    ld a, e                                       ; $7660: $7b
    ld bc, $017c                                  ; $7661: $01 $7c $01
    ld a, l                                       ; $7664: $7d
    ld bc, $018a                                  ; $7665: $01 $8a $01
    nop                                           ; $7668: $00
    adc e                                         ; $7669: $8b
    ld bc, $018c                                  ; $766a: $01 $8c $01
    adc l                                         ; $766d: $8d
    ld bc, $019a                                  ; $766e: $01 $9a $01
    nop                                           ; $7671: $00
    sbc e                                         ; $7672: $9b
    ld bc, $019c                                  ; $7673: $01 $9c $01
    sbc l                                         ; $7676: $9d
    ld bc, $01a8                                  ; $7677: $01 $a8 $01
    ld [$01a9], sp                                ; $767a: $08 $a9 $01
    xor d                                         ; $767d: $aa
    ld bc, $0abc                                  ; $767e: $01 $bc $0a
    or h                                          ; $7681: $b4
    ld bc, $00b5                                  ; $7682: $01 $b5 $00
    ld bc, $01b6                                  ; $7685: $01 $b6 $01
    jp nz, $c301                                  ; $7688: $c2 $01 $c3

    ld bc, $80c4                                  ; $768b: $01 $c4 $80
    adc h                                         ; $768e: $8c
    ld bc, $01ca                                  ; $768f: $01 $ca $01
    ld a, [hl]                                    ; $7692: $7e
    ld bc, $017f                                  ; $7693: $01 $7f $01
    add b                                         ; $7696: $80
    nop                                           ; $7697: $00
    ld bc, $0181                                  ; $7698: $01 $81 $01
    adc [hl]                                      ; $769b: $8e
    ld bc, $018f                                  ; $769c: $01 $8f $01
    sub b                                         ; $769f: $90
    nop                                           ; $76a0: $00
    ld bc, $0191                                  ; $76a1: $01 $91 $01
    sbc [hl]                                      ; $76a4: $9e
    ld bc, $019f                                  ; $76a5: $01 $9f $01
    and b                                         ; $76a8: $a0
    nop                                           ; $76a9: $00
    ld bc, $01a1                                  ; $76aa: $01 $a1 $01
    xor e                                         ; $76ad: $ab
    ld bc, $01ac                                  ; $76ae: $01 $ac $01
    xor l                                         ; $76b1: $ad
    ld b, b                                       ; $76b2: $40
    ld bc, $0abc                                  ; $76b3: $01 $bc $0a
    or a                                          ; $76b6: $b7
    ld bc, $01b8                                  ; $76b7: $01 $b8 $01
    cp c                                          ; $76ba: $b9
    ld bc, $c504                                  ; $76bb: $01 $04 $c5
    ld bc, $01c6                                  ; $76be: $01 $c6 $01
    rst $00                                       ; $76c1: $c7
    adc h                                         ; $76c2: $8c
    ld bc, $01cb                                  ; $76c3: $01 $cb $01
    ld l, c                                       ; $76c6: $69
    nop                                           ; $76c7: $00
    ld b, c                                       ; $76c8: $41
    nop                                           ; $76c9: $00
    ld bc, $0100                                  ; $76ca: $01 $00 $01
    nop                                           ; $76cd: $00
    ld [bc], a                                    ; $76ce: $02
    nop                                           ; $76cf: $00
    rrca                                          ; $76d0: $0f
    add hl, bc                                    ; $76d1: $09
    ld [$0000], sp                                ; $76d2: $08 $00 $00
    inc bc                                        ; $76d5: $03
    nop                                           ; $76d6: $00
    inc b                                         ; $76d7: $04
    nop                                           ; $76d8: $00
    dec b                                         ; $76d9: $05
    nop                                           ; $76da: $00
    ld b, $08                                     ; $76db: $06 $08
    nop                                           ; $76dd: $00
    stop                                          ; $76de: $10 $00
    ld de, $0019                                  ; $76e0: $11 $19 $00
    rlca                                          ; $76e3: $07
    nop                                           ; $76e4: $00
    ld [$0000], sp                                ; $76e5: $08 $00 $00
    add hl, bc                                    ; $76e8: $09
    nop                                           ; $76e9: $00
    ld a, [bc]                                    ; $76ea: $0a
    nop                                           ; $76eb: $00
    ld [de], a                                    ; $76ec: $12
    nop                                           ; $76ed: $00
    inc de                                        ; $76ee: $13
    nop                                           ; $76ef: $00
    nop                                           ; $76f0: $00
    inc d                                         ; $76f1: $14
    nop                                           ; $76f2: $00
    dec bc                                        ; $76f3: $0b
    nop                                           ; $76f4: $00
    inc c                                         ; $76f5: $0c
    nop                                           ; $76f6: $00
    dec c                                         ; $76f7: $0d
    nop                                           ; $76f8: $00
    nop                                           ; $76f9: $00
    ld c, $00                                     ; $76fa: $0e $00
    dec d                                         ; $76fc: $15
    nop                                           ; $76fd: $00
    ld d, $00                                     ; $76fe: $16 $00
    rla                                           ; $7700: $17
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    jr jr_08e_7705                                ; $7703: $18 $00

jr_08e_7705:
    add hl, de                                    ; $7705: $19
    nop                                           ; $7706: $00
    ld a, [de]                                    ; $7707: $1a
    nop                                           ; $7708: $00
    dec de                                        ; $7709: $1b
    nop                                           ; $770a: $00
    nop                                           ; $770b: $00
    ld h, $00                                     ; $770c: $26 $00
    daa                                           ; $770e: $27
    nop                                           ; $770f: $00
    jr z, jr_08e_7712                             ; $7710: $28 $00

jr_08e_7712:
    inc e                                         ; $7712: $1c
    jr nz, jr_08e_7715                            ; $7713: $20 $00

jr_08e_7715:
    dec e                                         ; $7715: $1d
    jr jr_08e_7718                                ; $7716: $18 $00

jr_08e_7718:
    ld e, $00                                     ; $7718: $1e $00
    add hl, hl                                    ; $771a: $29
    nop                                           ; $771b: $00
    ld a, [hl+]                                   ; $771c: $2a
    nop                                           ; $771d: $00
    nop                                           ; $771e: $00
    dec hl                                        ; $771f: $2b
    nop                                           ; $7720: $00
    rra                                           ; $7721: $1f
    nop                                           ; $7722: $00
    jr nz, jr_08e_7725                            ; $7723: $20 $00

jr_08e_7725:
    ld hl, $0000                                  ; $7725: $21 $00 $00
    ld [hl+], a                                   ; $7728: $22
    nop                                           ; $7729: $00
    inc l                                         ; $772a: $2c
    nop                                           ; $772b: $00
    dec l                                         ; $772c: $2d
    nop                                           ; $772d: $00
    ld l, $80                                     ; $772e: $2e $80
    ld c, $00                                     ; $7730: $0e $00
    inc hl                                        ; $7732: $23
    nop                                           ; $7733: $00
    inc h                                         ; $7734: $24
    nop                                           ; $7735: $00
    dec h                                         ; $7736: $25
    nop                                           ; $7737: $00
    cpl                                           ; $7738: $2f
    ld sp, $3000                                  ; $7739: $31 $00 $30
    ld l, l                                       ; $773c: $6d
    nop                                           ; $773d: $00
    ld c, $08                                     ; $773e: $0e $08
    inc hl                                        ; $7740: $23
    nop                                           ; $7741: $00
    ld sp, $0014                                  ; $7742: $31 $14 $00
    add b                                         ; $7745: $80
    ld c, $08                                     ; $7746: $0e $08
    ld e, $01                                     ; $7748: $1e $01
    nop                                           ; $774a: $00
    nop                                           ; $774b: $00
    nop                                           ; $774c: $00
    ld bc, $0200                                  ; $774d: $01 $00 $02
    nop                                           ; $7750: $00
    inc bc                                        ; $7751: $03
    nop                                           ; $7752: $00
    ld b, b                                       ; $7753: $40
    dec c                                         ; $7754: $0d
    ld b, $20                                     ; $7755: $06 $20
    ld a, [de]                                    ; $7757: $1a
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    nop                                           ; $775a: $00
    inc b                                         ; $775b: $04
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    dec b                                         ; $775e: $05
    nop                                           ; $775f: $00
    ld b, $00                                     ; $7760: $06 $00
    ld c, $00                                     ; $7762: $0e $00
    rrca                                          ; $7764: $0f
    nop                                           ; $7765: $00
    db $10                                        ; $7766: $10
    stop                                          ; $7767: $10 $00
    ld de, $1012                                  ; $7769: $11 $12 $10
    rlca                                          ; $776c: $07
    nop                                           ; $776d: $00
    ld [$0000], sp                                ; $776e: $08 $00 $00
    add hl, bc                                    ; $7771: $09
    nop                                           ; $7772: $00
    ld [de], a                                    ; $7773: $12
    nop                                           ; $7774: $00
    inc de                                        ; $7775: $13
    nop                                           ; $7776: $00
    inc d                                         ; $7777: $14
    nop                                           ; $7778: $00
    ld b, b                                       ; $7779: $40
    dec d                                         ; $777a: $15
    inc h                                         ; $777b: $24
    db $10                                        ; $777c: $10
    ld a, [bc]                                    ; $777d: $0a
    nop                                           ; $777e: $00
    dec bc                                        ; $777f: $0b
    nop                                           ; $7780: $00
    inc c                                         ; $7781: $0c
    nop                                           ; $7782: $00
    ld bc, $0016                                  ; $7783: $01 $16 $00
    rla                                           ; $7786: $17
    nop                                           ; $7787: $00
    jr jr_08e_778a                                ; $7788: $18 $00

jr_08e_778a:
    add hl, de                                    ; $778a: $19
    ld [hl], $00                                  ; $778b: $36 $00
    nop                                           ; $778d: $00
    dec de                                        ; $778e: $1b
    nop                                           ; $778f: $00
    inc e                                         ; $7790: $1c
    nop                                           ; $7791: $00
    dec e                                         ; $7792: $1d
    nop                                           ; $7793: $00
    ld e, $00                                     ; $7794: $1e $00
    nop                                           ; $7796: $00
    dec hl                                        ; $7797: $2b
    nop                                           ; $7798: $00
    inc l                                         ; $7799: $2c
    nop                                           ; $779a: $00
    dec l                                         ; $779b: $2d
    nop                                           ; $779c: $00
    ld l, $00                                     ; $779d: $2e $00
    nop                                           ; $779f: $00
    dec sp                                        ; $77a0: $3b
    nop                                           ; $77a1: $00
    rra                                           ; $77a2: $1f
    nop                                           ; $77a3: $00
    jr nz, jr_08e_77a6                            ; $77a4: $20 $00

jr_08e_77a6:
    ld hl, $0000                                  ; $77a6: $21 $00 $00
    ld [hl+], a                                   ; $77a9: $22
    nop                                           ; $77aa: $00
    cpl                                           ; $77ab: $2f
    nop                                           ; $77ac: $00
    jr nc, jr_08e_77af                            ; $77ad: $30 $00

jr_08e_77af:
    ld sp, $0000                                  ; $77af: $31 $00 $00
    ld [hl-], a                                   ; $77b2: $32
    nop                                           ; $77b3: $00
    inc a                                         ; $77b4: $3c
    nop                                           ; $77b5: $00
    inc hl                                        ; $77b6: $23
    nop                                           ; $77b7: $00
    inc h                                         ; $77b8: $24
    nop                                           ; $77b9: $00
    nop                                           ; $77ba: $00
    dec h                                         ; $77bb: $25
    nop                                           ; $77bc: $00
    ld h, $00                                     ; $77bd: $26 $00
    inc sp                                        ; $77bf: $33
    nop                                           ; $77c0: $00
    inc [hl]                                      ; $77c1: $34
    nop                                           ; $77c2: $00
    nop                                           ; $77c3: $00
    dec [hl]                                      ; $77c4: $35
    nop                                           ; $77c5: $00
    ld [hl], $00                                  ; $77c6: $36 $00
    dec a                                         ; $77c8: $3d
    nop                                           ; $77c9: $00
    daa                                           ; $77ca: $27
    nop                                           ; $77cb: $00
    nop                                           ; $77cc: $00
    jr z, jr_08e_77cf                             ; $77cd: $28 $00

jr_08e_77cf:
    add hl, hl                                    ; $77cf: $29
    nop                                           ; $77d0: $00
    ld a, [hl+]                                   ; $77d1: $2a
    nop                                           ; $77d2: $00
    scf                                           ; $77d3: $37
    nop                                           ; $77d4: $00
    inc b                                         ; $77d5: $04
    jr c, jr_08e_77d8                             ; $77d6: $38 $00

jr_08e_77d8:
    add hl, sp                                    ; $77d8: $39
    nop                                           ; $77d9: $00
    ld a, [hl-]                                   ; $77da: $3a
    ld a, [hl]                                    ; $77db: $7e
    nop                                           ; $77dc: $00
    ld a, $00                                     ; $77dd: $3e $00
    inc b                                         ; $77df: $04
    ccf                                           ; $77e0: $3f
    nop                                           ; $77e1: $00
    ld b, b                                       ; $77e2: $40
    nop                                           ; $77e3: $00
    ld b, c                                       ; $77e4: $41
    ld [de], a                                    ; $77e5: $12
    nop                                           ; $77e6: $00
    ld c, l                                       ; $77e7: $4d
    nop                                           ; $77e8: $00
    db $10                                        ; $77e9: $10
    ld c, [hl]                                    ; $77ea: $4e
    nop                                           ; $77eb: $00
    ld c, a                                       ; $77ec: $4f
    sub b                                         ; $77ed: $90
    db $10                                        ; $77ee: $10
    ld b, d                                       ; $77ef: $42
    nop                                           ; $77f0: $00
    ld b, e                                       ; $77f1: $43
    nop                                           ; $77f2: $00
    nop                                           ; $77f3: $00
    ld b, h                                       ; $77f4: $44
    nop                                           ; $77f5: $00
    ld d, b                                       ; $77f6: $50
    nop                                           ; $77f7: $00
    ld d, c                                       ; $77f8: $51
    nop                                           ; $77f9: $00
    ld d, d                                       ; $77fa: $52
    nop                                           ; $77fb: $00
    ld b, b                                       ; $77fc: $40
    ld d, e                                       ; $77fd: $53
    and d                                         ; $77fe: $a2
    nop                                           ; $77ff: $00
    ld b, l                                       ; $7800: $45
    nop                                           ; $7801: $00
    ld b, [hl]                                    ; $7802: $46
    nop                                           ; $7803: $00
    ld b, a                                       ; $7804: $47
    nop                                           ; $7805: $00
    nop                                           ; $7806: $00
    ld c, b                                       ; $7807: $48
    nop                                           ; $7808: $00
    ld d, h                                       ; $7809: $54
    nop                                           ; $780a: $00
    ld d, l                                       ; $780b: $55
    nop                                           ; $780c: $00
    ld d, [hl]                                    ; $780d: $56
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    ld d, a                                       ; $7810: $57
    nop                                           ; $7811: $00
    ld e, h                                       ; $7812: $5c
    nop                                           ; $7813: $00
    ld c, c                                       ; $7814: $49
    nop                                           ; $7815: $00
    ld c, d                                       ; $7816: $4a
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    ld c, e                                       ; $7819: $4b
    nop                                           ; $781a: $00
    ld c, h                                       ; $781b: $4c
    nop                                           ; $781c: $00
    ld e, b                                       ; $781d: $58
    nop                                           ; $781e: $00
    ld e, c                                       ; $781f: $59
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    ld e, d                                       ; $7822: $5a
    nop                                           ; $7823: $00
    ld e, e                                       ; $7824: $5b
    nop                                           ; $7825: $00
    ld e, l                                       ; $7826: $5d
    nop                                           ; $7827: $00
    ld e, [hl]                                    ; $7828: $5e
    nop                                           ; $7829: $00
    nop                                           ; $782a: $00
    ld e, a                                       ; $782b: $5f
    nop                                           ; $782c: $00
    ld h, b                                       ; $782d: $60
    nop                                           ; $782e: $00
    ld h, c                                       ; $782f: $61
    nop                                           ; $7830: $00
    ld l, h                                       ; $7831: $6c
    nop                                           ; $7832: $00
    ld bc, $006d                                  ; $7833: $01 $6d $00
    ld l, [hl]                                    ; $7836: $6e
    nop                                           ; $7837: $00
    ld l, a                                       ; $7838: $6f
    nop                                           ; $7839: $00
    ld a, h                                       ; $783a: $7c
    ret c                                         ; $783b: $d8

    nop                                           ; $783c: $00
    nop                                           ; $783d: $00
    ld h, d                                       ; $783e: $62
    nop                                           ; $783f: $00
    ld h, e                                       ; $7840: $63
    nop                                           ; $7841: $00
    ld h, h                                       ; $7842: $64
    nop                                           ; $7843: $00
    ld [hl], b                                    ; $7844: $70
    nop                                           ; $7845: $00
    inc b                                         ; $7846: $04
    ld [hl], c                                    ; $7847: $71
    nop                                           ; $7848: $00
    ld [hl], d                                    ; $7849: $72
    nop                                           ; $784a: $00
    ld [hl], e                                    ; $784b: $73
    ld [$6500], a                                 ; $784c: $ea $00 $65
    nop                                           ; $784f: $00
    nop                                           ; $7850: $00
    ld h, [hl]                                    ; $7851: $66
    nop                                           ; $7852: $00
    ld h, a                                       ; $7853: $67
    nop                                           ; $7854: $00
    ld l, b                                       ; $7855: $68
    nop                                           ; $7856: $00
    ld [hl], h                                    ; $7857: $74
    nop                                           ; $7858: $00
    ld bc, $0075                                  ; $7859: $01 $75 $00
    halt                                          ; $785c: $76
    nop                                           ; $785d: $00
    ld [hl], a                                    ; $785e: $77
    nop                                           ; $785f: $00
    ld a, l                                       ; $7860: $7d
    db $fc                                        ; $7861: $fc
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    ld l, c                                       ; $7864: $69
    nop                                           ; $7865: $00
    ld l, d                                       ; $7866: $6a
    nop                                           ; $7867: $00
    ld l, e                                       ; $7868: $6b
    nop                                           ; $7869: $00
    ld a, b                                       ; $786a: $78
    nop                                           ; $786b: $00
    inc b                                         ; $786c: $04
    ld a, c                                       ; $786d: $79
    nop                                           ; $786e: $00
    ld a, d                                       ; $786f: $7a
    nop                                           ; $7870: $00
    ld a, e                                       ; $7871: $7b
    ld c, $11                                     ; $7872: $0e $11
    ld a, [hl]                                    ; $7874: $7e
    nop                                           ; $7875: $00
    nop                                           ; $7876: $00
    ld a, a                                       ; $7877: $7f
    nop                                           ; $7878: $00
    add b                                         ; $7879: $80
    nop                                           ; $787a: $00
    add l                                         ; $787b: $85
    nop                                           ; $787c: $00
    add [hl]                                      ; $787d: $86
    nop                                           ; $787e: $00
    db $10                                        ; $787f: $10
    add a                                         ; $7880: $87
    nop                                           ; $7881: $00
    adc b                                         ; $7882: $88
    jr nz, jr_08e_7886                            ; $7883: $20 $01

    add c                                         ; $7885: $81

jr_08e_7886:
    nop                                           ; $7886: $00
    add d                                         ; $7887: $82
    nop                                           ; $7888: $00
    nop                                           ; $7889: $00
    add e                                         ; $788a: $83
    nop                                           ; $788b: $00
    add h                                         ; $788c: $84
    nop                                           ; $788d: $00
    adc c                                         ; $788e: $89
    nop                                           ; $788f: $00
    adc d                                         ; $7890: $8a
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    adc e                                         ; $7893: $8b
    nop                                           ; $7894: $00
    adc h                                         ; $7895: $8c
    nop                                           ; $7896: $00
    adc l                                         ; $7897: $8d
    nop                                           ; $7898: $00
    ld b, h                                       ; $7899: $44
    ld bc, $0000                                  ; $789a: $01 $00 $00
    nop                                           ; $789d: $00
    ld bc, $0200                                  ; $789e: $01 $00 $02
    nop                                           ; $78a1: $00
    inc bc                                        ; $78a2: $03
    nop                                           ; $78a3: $00
    nop                                           ; $78a4: $00
    stop                                          ; $78a5: $10 $00
    ld de, $1200                                  ; $78a7: $11 $00 $12
    nop                                           ; $78aa: $00
    inc de                                        ; $78ab: $13
    nop                                           ; $78ac: $00
    nop                                           ; $78ad: $00
    jr nz, jr_08e_78b0                            ; $78ae: $20 $00

jr_08e_78b0:
    ld hl, $0400                                  ; $78b0: $21 $00 $04
    nop                                           ; $78b3: $00
    dec b                                         ; $78b4: $05
    nop                                           ; $78b5: $00
    nop                                           ; $78b6: $00
    ld b, $00                                     ; $78b7: $06 $00
    rlca                                          ; $78b9: $07
    nop                                           ; $78ba: $00
    inc d                                         ; $78bb: $14
    nop                                           ; $78bc: $00
    dec d                                         ; $78bd: $15
    nop                                           ; $78be: $00
    nop                                           ; $78bf: $00
    ld d, $00                                     ; $78c0: $16 $00
    rla                                           ; $78c2: $17
    nop                                           ; $78c3: $00
    ld [hl+], a                                   ; $78c4: $22
    nop                                           ; $78c5: $00
    inc hl                                        ; $78c6: $23
    nop                                           ; $78c7: $00
    nop                                           ; $78c8: $00
    ld [$0900], sp                                ; $78c9: $08 $00 $09
    nop                                           ; $78cc: $00
    ld a, [bc]                                    ; $78cd: $0a
    nop                                           ; $78ce: $00
    dec bc                                        ; $78cf: $0b
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    jr jr_08e_78d4                                ; $78d2: $18 $00

jr_08e_78d4:
    add hl, de                                    ; $78d4: $19
    nop                                           ; $78d5: $00
    ld a, [de]                                    ; $78d6: $1a
    nop                                           ; $78d7: $00
    dec de                                        ; $78d8: $1b
    nop                                           ; $78d9: $00
    nop                                           ; $78da: $00
    inc h                                         ; $78db: $24
    nop                                           ; $78dc: $00
    dec h                                         ; $78dd: $25
    nop                                           ; $78de: $00
    inc c                                         ; $78df: $0c
    nop                                           ; $78e0: $00
    dec c                                         ; $78e1: $0d
    nop                                           ; $78e2: $00
    nop                                           ; $78e3: $00
    ld c, $00                                     ; $78e4: $0e $00
    rrca                                          ; $78e6: $0f
    nop                                           ; $78e7: $00
    inc e                                         ; $78e8: $1c
    nop                                           ; $78e9: $00
    dec e                                         ; $78ea: $1d
    nop                                           ; $78eb: $00
    nop                                           ; $78ec: $00
    ld e, $00                                     ; $78ed: $1e $00
    rra                                           ; $78ef: $1f
    nop                                           ; $78f0: $00
    ld h, $00                                     ; $78f1: $26 $00
    daa                                           ; $78f3: $27
    nop                                           ; $78f4: $00
    nop                                           ; $78f5: $00
    nop                                           ; $78f6: $00
    nop                                           ; $78f7: $00
    jr z, jr_08e_78fa                             ; $78f8: $28 $00

jr_08e_78fa:
    add hl, hl                                    ; $78fa: $29
    nop                                           ; $78fb: $00
    ld a, [hl+]                                   ; $78fc: $2a
    nop                                           ; $78fd: $00
    nop                                           ; $78fe: $00
    dec [hl]                                      ; $78ff: $35
    nop                                           ; $7900: $00
    ld [hl], $00                                  ; $7901: $36 $00
    scf                                           ; $7903: $37
    nop                                           ; $7904: $00
    jr c, jr_08e_7907                             ; $7905: $38 $00

jr_08e_7907:
    ld b, b                                       ; $7907: $40
    ld b, l                                       ; $7908: $45
    ld d, b                                       ; $7909: $50
    nop                                           ; $790a: $00
    nop                                           ; $790b: $00
    nop                                           ; $790c: $00
    dec hl                                        ; $790d: $2b
    nop                                           ; $790e: $00
    inc l                                         ; $790f: $2c
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    dec l                                         ; $7912: $2d
    nop                                           ; $7913: $00
    add hl, sp                                    ; $7914: $39
    nop                                           ; $7915: $00
    ld a, [hl-]                                   ; $7916: $3a
    nop                                           ; $7917: $00
    dec sp                                        ; $7918: $3b
    nop                                           ; $7919: $00
    db $10                                        ; $791a: $10
    inc a                                         ; $791b: $3c
    nop                                           ; $791c: $00
    ld b, [hl]                                    ; $791d: $46
    inc d                                         ; $791e: $14
    db $10                                        ; $791f: $10
    ld l, $00                                     ; $7920: $2e $00
    cpl                                           ; $7922: $2f
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    jr nc, jr_08e_7927                            ; $7925: $30 $00

jr_08e_7927:
    dec a                                         ; $7927: $3d
    nop                                           ; $7928: $00
    ld a, $00                                     ; $7929: $3e $00
    ccf                                           ; $792b: $3f
    nop                                           ; $792c: $00
    db $10                                        ; $792d: $10
    ld b, b                                       ; $792e: $40
    nop                                           ; $792f: $00
    ld b, a                                       ; $7930: $47
    ld a, b                                       ; $7931: $78
    nop                                           ; $7932: $00
    ld sp, $3200                                  ; $7933: $31 $00 $32
    nop                                           ; $7936: $00
    nop                                           ; $7937: $00
    inc sp                                        ; $7938: $33
    nop                                           ; $7939: $00
    inc [hl]                                      ; $793a: $34
    nop                                           ; $793b: $00
    ld b, c                                       ; $793c: $41
    nop                                           ; $793d: $00
    ld b, d                                       ; $793e: $42
    nop                                           ; $793f: $00
    inc d                                         ; $7940: $14
    ld b, e                                       ; $7941: $43
    nop                                           ; $7942: $00
    ld b, h                                       ; $7943: $44
    ld c, $00                                     ; $7944: $0e $00
    ld c, b                                       ; $7946: $48
    ld d, b                                       ; $7947: $50
    nop                                           ; $7948: $00
    ld c, c                                       ; $7949: $49
    nop                                           ; $794a: $00
    nop                                           ; $794b: $00
    ld c, d                                       ; $794c: $4a
    nop                                           ; $794d: $00
    ld c, e                                       ; $794e: $4b
    nop                                           ; $794f: $00
    ld d, a                                       ; $7950: $57
    nop                                           ; $7951: $00
    ld e, b                                       ; $7952: $58
    nop                                           ; $7953: $00
    inc b                                         ; $7954: $04
    ld e, c                                       ; $7955: $59
    nop                                           ; $7956: $00
    ld e, d                                       ; $7957: $5a
    nop                                           ; $7958: $00
    ld h, a                                       ; $7959: $67
    ld d, b                                       ; $795a: $50
    db $10                                        ; $795b: $10
    ld c, h                                       ; $795c: $4c
    nop                                           ; $795d: $00
    nop                                           ; $795e: $00
    ld c, l                                       ; $795f: $4d
    nop                                           ; $7960: $00
    ld c, [hl]                                    ; $7961: $4e
    nop                                           ; $7962: $00
    ld e, e                                       ; $7963: $5b
    nop                                           ; $7964: $00
    ld e, h                                       ; $7965: $5c
    nop                                           ; $7966: $00
    inc b                                         ; $7967: $04
    ld e, l                                       ; $7968: $5d
    nop                                           ; $7969: $00
    ld e, [hl]                                    ; $796a: $5e
    nop                                           ; $796b: $00
    ld l, b                                       ; $796c: $68
    or h                                          ; $796d: $b4
    nop                                           ; $796e: $00
    ld c, a                                       ; $796f: $4f
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    ld d, b                                       ; $7972: $50
    nop                                           ; $7973: $00
    ld d, c                                       ; $7974: $51
    nop                                           ; $7975: $00
    ld d, d                                       ; $7976: $52
    nop                                           ; $7977: $00
    ld e, a                                       ; $7978: $5f
    nop                                           ; $7979: $00
    nop                                           ; $797a: $00
    ld h, b                                       ; $797b: $60
    nop                                           ; $797c: $00
    ld h, c                                       ; $797d: $61
    nop                                           ; $797e: $00
    ld h, d                                       ; $797f: $62
    nop                                           ; $7980: $00
    ld l, c                                       ; $7981: $69
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    ld l, d                                       ; $7984: $6a
    nop                                           ; $7985: $00
    ld d, e                                       ; $7986: $53
    nop                                           ; $7987: $00
    ld d, h                                       ; $7988: $54
    nop                                           ; $7989: $00
    ld d, l                                       ; $798a: $55
    nop                                           ; $798b: $00
    nop                                           ; $798c: $00
    ld d, [hl]                                    ; $798d: $56
    nop                                           ; $798e: $00
    ld h, e                                       ; $798f: $63
    nop                                           ; $7990: $00
    ld h, h                                       ; $7991: $64
    nop                                           ; $7992: $00
    ld h, l                                       ; $7993: $65
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    ld h, [hl]                                    ; $7996: $66
    nop                                           ; $7997: $00
    ld l, e                                       ; $7998: $6b
    nop                                           ; $7999: $00
    ld l, h                                       ; $799a: $6c
    nop                                           ; $799b: $00
    ld l, l                                       ; $799c: $6d
    nop                                           ; $799d: $00
    nop                                           ; $799e: $00
    ld l, [hl]                                    ; $799f: $6e
    nop                                           ; $79a0: $00
    ld l, a                                       ; $79a1: $6f
    nop                                           ; $79a2: $00
    ld [hl], b                                    ; $79a3: $70
    nop                                           ; $79a4: $00
    ld a, d                                       ; $79a5: $7a
    nop                                           ; $79a6: $00
    nop                                           ; $79a7: $00
    ld a, e                                       ; $79a8: $7b
    nop                                           ; $79a9: $00
    ld a, h                                       ; $79aa: $7c
    nop                                           ; $79ab: $00
    ld a, l                                       ; $79ac: $7d
    nop                                           ; $79ad: $00
    adc d                                         ; $79ae: $8a
    nop                                           ; $79af: $00
    ld b, b                                       ; $79b0: $40
    adc e                                         ; $79b1: $8b
    or h                                          ; $79b2: $b4
    nop                                           ; $79b3: $00
    ld [hl], c                                    ; $79b4: $71
    nop                                           ; $79b5: $00
    ld [hl], d                                    ; $79b6: $72
    nop                                           ; $79b7: $00
    ld [hl], e                                    ; $79b8: $73
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    ld a, [hl]                                    ; $79bb: $7e
    nop                                           ; $79bc: $00
    ld a, a                                       ; $79bd: $7f
    nop                                           ; $79be: $00
    add b                                         ; $79bf: $80
    nop                                           ; $79c0: $00
    add c                                         ; $79c1: $81
    nop                                           ; $79c2: $00
    ld b, b                                       ; $79c3: $40
    adc h                                         ; $79c4: $8c
    or h                                          ; $79c5: $b4
    db $10                                        ; $79c6: $10
    ld [hl], h                                    ; $79c7: $74
    nop                                           ; $79c8: $00
    ld [hl], l                                    ; $79c9: $75
    nop                                           ; $79ca: $00
    halt                                          ; $79cb: $76
    nop                                           ; $79cc: $00
    nop                                           ; $79cd: $00
    add d                                         ; $79ce: $82
    nop                                           ; $79cf: $00
    add e                                         ; $79d0: $83
    nop                                           ; $79d1: $00
    add h                                         ; $79d2: $84
    nop                                           ; $79d3: $00
    add l                                         ; $79d4: $85
    nop                                           ; $79d5: $00
    ld b, b                                       ; $79d6: $40
    adc l                                         ; $79d7: $8d
    ret z                                         ; $79d8: $c8

    db $10                                        ; $79d9: $10
    ld [hl], a                                    ; $79da: $77
    nop                                           ; $79db: $00
    ld a, b                                       ; $79dc: $78
    nop                                           ; $79dd: $00
    ld a, c                                       ; $79de: $79
    nop                                           ; $79df: $00
    nop                                           ; $79e0: $00
    add [hl]                                      ; $79e1: $86
    nop                                           ; $79e2: $00
    add a                                         ; $79e3: $87
    nop                                           ; $79e4: $00
    adc b                                         ; $79e5: $88
    nop                                           ; $79e6: $00
    adc c                                         ; $79e7: $89
    nop                                           ; $79e8: $00
    ld b, b                                       ; $79e9: $40
    adc [hl]                                      ; $79ea: $8e
    call c, $8f10                                 ; $79eb: $dc $10 $8f
    nop                                           ; $79ee: $00
    sub b                                         ; $79ef: $90
    nop                                           ; $79f0: $00
    sub c                                         ; $79f1: $91
    nop                                           ; $79f2: $00
    nop                                           ; $79f3: $00
    sub [hl]                                      ; $79f4: $96
    nop                                           ; $79f5: $00
    sub a                                         ; $79f6: $97
    nop                                           ; $79f7: $00
    sbc b                                         ; $79f8: $98
    nop                                           ; $79f9: $00
    sbc c                                         ; $79fa: $99
    nop                                           ; $79fb: $00
    ld b, b                                       ; $79fc: $40
    sbc [hl]                                      ; $79fd: $9e
    ld b, b                                       ; $79fe: $40
    ld bc, $0092                                  ; $79ff: $01 $92 $00
    sub e                                         ; $7a02: $93
    nop                                           ; $7a03: $00
    sub h                                         ; $7a04: $94
    nop                                           ; $7a05: $00
    nop                                           ; $7a06: $00
    sub l                                         ; $7a07: $95
    nop                                           ; $7a08: $00
    sbc d                                         ; $7a09: $9a
    nop                                           ; $7a0a: $00
    sbc e                                         ; $7a0b: $9b
    nop                                           ; $7a0c: $00
    sbc h                                         ; $7a0d: $9c
    nop                                           ; $7a0e: $00
    ld b, b                                       ; $7a0f: $40
    sbc l                                         ; $7a10: $9d
    ld c, $00                                     ; $7a11: $0e $00
    sbc a                                         ; $7a13: $9f
    nop                                           ; $7a14: $00
    ld [$0000], a                                 ; $7a15: $ea $00 $00
    nop                                           ; $7a18: $00
    nop                                           ; $7a19: $00
    ld bc, $0200                                  ; $7a1a: $01 $00 $02
    nop                                           ; $7a1d: $00
    inc bc                                        ; $7a1e: $03
    nop                                           ; $7a1f: $00
    inc d                                         ; $7a20: $14
    stop                                          ; $7a21: $10 $00
    ld de, $000a                                  ; $7a23: $11 $0a $00
    ld [de], a                                    ; $7a26: $12
    ld a, [bc]                                    ; $7a27: $0a
    nop                                           ; $7a28: $00
    dec e                                         ; $7a29: $1d
    nop                                           ; $7a2a: $00
    nop                                           ; $7a2b: $00
    inc b                                         ; $7a2c: $04
    nop                                           ; $7a2d: $00
    dec b                                         ; $7a2e: $05
    nop                                           ; $7a2f: $00
    ld b, $00                                     ; $7a30: $06 $00
    rlca                                          ; $7a32: $07
    nop                                           ; $7a33: $00
    nop                                           ; $7a34: $00
    inc de                                        ; $7a35: $13
    nop                                           ; $7a36: $00
    inc d                                         ; $7a37: $14
    nop                                           ; $7a38: $00
    dec d                                         ; $7a39: $15
    nop                                           ; $7a3a: $00
    ld d, $00                                     ; $7a3b: $16 $00
    nop                                           ; $7a3d: $00
    ld e, $00                                     ; $7a3e: $1e $00
    rra                                           ; $7a40: $1f
    nop                                           ; $7a41: $00
    ld [$0900], sp                                ; $7a42: $08 $00 $09
    nop                                           ; $7a45: $00
    ld bc, $000a                                  ; $7a46: $01 $0a $00
    dec bc                                        ; $7a49: $0b
    nop                                           ; $7a4a: $00
    rla                                           ; $7a4b: $17
    nop                                           ; $7a4c: $00
    jr jr_08e_7a55                                ; $7a4d: $18 $06

    nop                                           ; $7a4f: $00
    nop                                           ; $7a50: $00
    add hl, de                                    ; $7a51: $19
    nop                                           ; $7a52: $00
    jr nz, jr_08e_7a55                            ; $7a53: $20 $00

jr_08e_7a55:
    ld hl, $0c00                                  ; $7a55: $21 $00 $0c
    nop                                           ; $7a58: $00
    nop                                           ; $7a59: $00
    dec c                                         ; $7a5a: $0d
    nop                                           ; $7a5b: $00
    ld c, $00                                     ; $7a5c: $0e $00
    rrca                                          ; $7a5e: $0f
    nop                                           ; $7a5f: $00
    ld a, [de]                                    ; $7a60: $1a
    nop                                           ; $7a61: $00
    ld b, b                                       ; $7a62: $40
    dec de                                        ; $7a63: $1b
    ld b, $00                                     ; $7a64: $06 $00
    inc e                                         ; $7a66: $1c
    nop                                           ; $7a67: $00
    ld [hl+], a                                   ; $7a68: $22
    nop                                           ; $7a69: $00
    inc hl                                        ; $7a6a: $23
    nop                                           ; $7a6b: $00
    nop                                           ; $7a6c: $00
    nop                                           ; $7a6d: $00
    nop                                           ; $7a6e: $00
    inc h                                         ; $7a6f: $24
    nop                                           ; $7a70: $00
    dec h                                         ; $7a71: $25
    nop                                           ; $7a72: $00
    ld h, $00                                     ; $7a73: $26 $00
    ld de, $002d                                  ; $7a75: $11 $2d $00
    ld l, $06                                     ; $7a78: $2e $06
    nop                                           ; $7a7a: $00
    cpl                                           ; $7a7b: $2f
    nop                                           ; $7a7c: $00
    add hl, sp                                    ; $7a7d: $39
    ld d, b                                       ; $7a7e: $50
    nop                                           ; $7a7f: $00
    inc b                                         ; $7a80: $04
    nop                                           ; $7a81: $00
    nop                                           ; $7a82: $00
    daa                                           ; $7a83: $27
    nop                                           ; $7a84: $00
    jr z, jr_08e_7ac3                             ; $7a85: $28 $3c

    nop                                           ; $7a87: $00
    jr nc, jr_08e_7a8a                            ; $7a88: $30 $00

jr_08e_7a8a:
    ld b, h                                       ; $7a8a: $44
    ld sp, $0042                                  ; $7a8b: $31 $42 $00
    ld [hl-], a                                   ; $7a8e: $32
    nop                                           ; $7a8f: $00
    ld a, [hl-]                                   ; $7a90: $3a
    inc d                                         ; $7a91: $14
    db $10                                        ; $7a92: $10
    add hl, hl                                    ; $7a93: $29
    nop                                           ; $7a94: $00
    ld b, h                                       ; $7a95: $44
    ld a, [hl+]                                   ; $7a96: $2a
    inc a                                         ; $7a97: $3c
    nop                                           ; $7a98: $00
    inc sp                                        ; $7a99: $33
    nop                                           ; $7a9a: $00
    inc [hl]                                      ; $7a9b: $34
    ld b, d                                       ; $7a9c: $42
    nop                                           ; $7a9d: $00
    dec [hl]                                      ; $7a9e: $35
    nop                                           ; $7a9f: $00
    ld b, h                                       ; $7aa0: $44
    dec sp                                        ; $7aa1: $3b
    jr z, jr_08e_7ab4                             ; $7aa2: $28 $10

    dec hl                                        ; $7aa4: $2b
    nop                                           ; $7aa5: $00
    inc l                                         ; $7aa6: $2c
    inc a                                         ; $7aa7: $3c
    nop                                           ; $7aa8: $00
    ld [hl], $00                                  ; $7aa9: $36 $00
    ld b, [hl]                                    ; $7aab: $46
    scf                                           ; $7aac: $37
    ld b, d                                       ; $7aad: $42
    nop                                           ; $7aae: $00
    jr c, jr_08e_7ab1                             ; $7aaf: $38 $00

jr_08e_7ab1:
    inc a                                         ; $7ab1: $3c
    inc a                                         ; $7ab2: $3c
    db $10                                        ; $7ab3: $10

jr_08e_7ab4:
    ld a, b                                       ; $7ab4: $78
    jr jr_08e_7af8                                ; $7ab5: $18 $41

    ld a, [hl+]                                   ; $7ab7: $2a
    nop                                           ; $7ab8: $00
    ld b, d                                       ; $7ab9: $42
    ld a, b                                       ; $7aba: $78
    db $10                                        ; $7abb: $10
    ld c, c                                       ; $7abc: $49
    ld d, b                                       ; $7abd: $50
    db $10                                        ; $7abe: $10
    dec a                                         ; $7abf: $3d
    ld a, b                                       ; $7ac0: $78
    db $10                                        ; $7ac1: $10
    ld b, e                                       ; $7ac2: $43

Jump_08e_7ac3:
jr_08e_7ac3:
    ld a, [hl+]                                   ; $7ac3: $2a
    nop                                           ; $7ac4: $00
    ld b, h                                       ; $7ac5: $44
    ld a, b                                       ; $7ac6: $78
    db $10                                        ; $7ac7: $10
    ld c, d                                       ; $7ac8: $4a
    or h                                          ; $7ac9: $b4
    nop                                           ; $7aca: $00
    ld a, $78                                     ; $7acb: $3e $78
    jr nz, @+$47                                  ; $7acd: $20 $45

    jr z, jr_08e_7ad1                             ; $7acf: $28 $00

jr_08e_7ad1:
    ld b, [hl]                                    ; $7ad1: $46
    ld a, b                                       ; $7ad2: $78
    db $10                                        ; $7ad3: $10
    ld c, e                                       ; $7ad4: $4b
    ret z                                         ; $7ad5: $c8

    nop                                           ; $7ad6: $00
    ccf                                           ; $7ad7: $3f
    nop                                           ; $7ad8: $00
    ld b, b                                       ; $7ad9: $40
    adc d                                         ; $7ada: $8a
    or h                                          ; $7adb: $b4

Call_08e_7adc:
    db $10                                        ; $7adc: $10
    ld b, a                                       ; $7add: $47
    nop                                           ; $7ade: $00
    ld c, b                                       ; $7adf: $48
    or h                                          ; $7ae0: $b4
    db $10                                        ; $7ae1: $10
    ld c, h                                       ; $7ae2: $4c
    call c, Call_08e_4d00                         ; $7ae3: $dc $00 $4d
    ld [hl+], a                                   ; $7ae6: $22
    nop                                           ; $7ae7: $00
    ld c, [hl]                                    ; $7ae8: $4e
    or h                                          ; $7ae9: $b4
    db $10                                        ; $7aea: $10
    ld d, l                                       ; $7aeb: $55
    nop                                           ; $7aec: $00
    ld d, [hl]                                    ; $7aed: $56
    or h                                          ; $7aee: $b4
    db $10                                        ; $7aef: $10
    ld e, c                                       ; $7af0: $59
    adc b                                         ; $7af1: $88
    and b                                         ; $7af2: $a0
    db $10                                        ; $7af3: $10
    ld c, a                                       ; $7af4: $4f
    nop                                           ; $7af5: $00
    ld d, b                                       ; $7af6: $50
    or h                                          ; $7af7: $b4

jr_08e_7af8:
    nop                                           ; $7af8: $00
    ld d, a                                       ; $7af9: $57
    nop                                           ; $7afa: $00
    ld e, b                                       ; $7afb: $58
    and e                                         ; $7afc: $a3
    or h                                          ; $7afd: $b4
    db $10                                        ; $7afe: $10
    ld e, d                                       ; $7aff: $5a
    or h                                          ; $7b00: $b4
    db $10                                        ; $7b01: $10
    ld d, c                                       ; $7b02: $51
    nop                                           ; $7b03: $00
    ld d, d                                       ; $7b04: $52
    ld [$f610], a                                 ; $7b05: $ea $10 $f6
    ld [$f0a3], sp                                ; $7b08: $08 $a3 $f0
    ld [$dc5b], sp                                ; $7b0b: $08 $5b $dc
    nop                                           ; $7b0e: $00
    ld d, e                                       ; $7b0f: $53
    nop                                           ; $7b10: $00
    ld d, h                                       ; $7b11: $54
    ld [$f610], a                                 ; $7b12: $ea $10 $f6
    ld [$1c00], sp                                ; $7b15: $08 $00 $1c
    nop                                           ; $7b18: $00
    ld e, h                                       ; $7b19: $5c
    nop                                           ; $7b1a: $00
    ld e, l                                       ; $7b1b: $5d
    nop                                           ; $7b1c: $00
    ld e, [hl]                                    ; $7b1d: $5e
    nop                                           ; $7b1e: $00
    ld b, h                                       ; $7b1f: $44
    ld e, a                                       ; $7b20: $5f
    ld [bc], a                                    ; $7b21: $02
    nop                                           ; $7b22: $00
    ld h, b                                       ; $7b23: $60
    nop                                           ; $7b24: $00
    ld h, e                                       ; $7b25: $63
    or $10                                        ; $7b26: $f6 $10
    cpl                                           ; $7b28: $2f
    nop                                           ; $7b29: $00
    inc b                                         ; $7b2a: $04
    ld l, d                                       ; $7b2b: $6a
    nop                                           ; $7b2c: $00
    ld l, e                                       ; $7b2d: $6b
    nop                                           ; $7b2e: $00
    ld h, c                                       ; $7b2f: $61
    ld [bc], a                                    ; $7b30: $02
    db $10                                        ; $7b31: $10
    ld h, d                                       ; $7b32: $62
    nop                                           ; $7b33: $00
    nop                                           ; $7b34: $00
    ld h, h                                       ; $7b35: $64
    nop                                           ; $7b36: $00
    ld h, l                                       ; $7b37: $65
    nop                                           ; $7b38: $00
    ld h, [hl]                                    ; $7b39: $66
    nop                                           ; $7b3a: $00
    ld h, a                                       ; $7b3b: $67
    nop                                           ; $7b3c: $00
    db $10                                        ; $7b3d: $10
    ld l, h                                       ; $7b3e: $6c
    nop                                           ; $7b3f: $00
    ld l, l                                       ; $7b40: $6d
    inc d                                         ; $7b41: $14
    jr nz, jr_08e_7ba5                            ; $7b42: $20 $61

    nop                                           ; $7b44: $00
    ld l, b                                       ; $7b45: $68
    nop                                           ; $7b46: $00
    ld b, b                                       ; $7b47: $40
    ld l, c                                       ; $7b48: $69
    inc c                                         ; $7b49: $0c
    jr nc, jr_08e_7b99                            ; $7b4a: $30 $4d

    ld bc, $0000                                  ; $7b4c: $01 $00 $00
    nop                                           ; $7b4f: $00
    ld bc, $0200                                  ; $7b50: $01 $00 $02
    nop                                           ; $7b53: $00
    inc bc                                        ; $7b54: $03
    nop                                           ; $7b55: $00
    nop                                           ; $7b56: $00
    dec c                                         ; $7b57: $0d
    nop                                           ; $7b58: $00
    ld c, $00                                     ; $7b59: $0e $00
    rrca                                          ; $7b5b: $0f
    nop                                           ; $7b5c: $00
    stop                                          ; $7b5d: $10 $00
    nop                                           ; $7b5f: $00
    dec e                                         ; $7b60: $1d
    nop                                           ; $7b61: $00
    ld e, $00                                     ; $7b62: $1e $00
    rra                                           ; $7b64: $1f
    nop                                           ; $7b65: $00
    nop                                           ; $7b66: $00
    nop                                           ; $7b67: $00
    nop                                           ; $7b68: $00
    inc b                                         ; $7b69: $04
    nop                                           ; $7b6a: $00
    dec b                                         ; $7b6b: $05
    nop                                           ; $7b6c: $00
    ld b, $00                                     ; $7b6d: $06 $00
    ld de, $0000                                  ; $7b6f: $11 $00 $00
    ld [de], a                                    ; $7b72: $12
    nop                                           ; $7b73: $00
    inc de                                        ; $7b74: $13
    nop                                           ; $7b75: $00
    inc d                                         ; $7b76: $14
    nop                                           ; $7b77: $00
    jr nz, jr_08e_7b7a                            ; $7b78: $20 $00

jr_08e_7b7a:
    ld b, b                                       ; $7b7a: $40
    ld hl, $1016                                  ; $7b7b: $21 $16 $10
    rlca                                          ; $7b7e: $07
    nop                                           ; $7b7f: $00
    ld [$0900], sp                                ; $7b80: $08 $00 $09
    nop                                           ; $7b83: $00
    nop                                           ; $7b84: $00
    dec d                                         ; $7b85: $15
    nop                                           ; $7b86: $00
    ld d, $00                                     ; $7b87: $16 $00
    rla                                           ; $7b89: $17
    nop                                           ; $7b8a: $00
    jr jr_08e_7b8d                                ; $7b8b: $18 $00

jr_08e_7b8d:
    db $10                                        ; $7b8d: $10
    ld [hl+], a                                   ; $7b8e: $22
    nop                                           ; $7b8f: $00
    inc hl                                        ; $7b90: $23
    inc l                                         ; $7b91: $2c
    db $10                                        ; $7b92: $10
    ld a, [bc]                                    ; $7b93: $0a
    nop                                           ; $7b94: $00
    dec bc                                        ; $7b95: $0b
    nop                                           ; $7b96: $00
    nop                                           ; $7b97: $00
    inc c                                         ; $7b98: $0c

jr_08e_7b99:
    nop                                           ; $7b99: $00
    add hl, de                                    ; $7b9a: $19
    nop                                           ; $7b9b: $00
    ld a, [de]                                    ; $7b9c: $1a
    nop                                           ; $7b9d: $00
    dec de                                        ; $7b9e: $1b
    nop                                           ; $7b9f: $00
    inc b                                         ; $7ba0: $04
    inc e                                         ; $7ba1: $1c
    nop                                           ; $7ba2: $00
    inc h                                         ; $7ba3: $24
    nop                                           ; $7ba4: $00

jr_08e_7ba5:
    dec h                                         ; $7ba5: $25
    ld b, d                                       ; $7ba6: $42
    db $10                                        ; $7ba7: $10
    ld bc, $0000                                  ; $7ba8: $01 $00 $00
    ld h, $00                                     ; $7bab: $26 $00
    daa                                           ; $7bad: $27
    nop                                           ; $7bae: $00
    cpl                                           ; $7baf: $2f
    nop                                           ; $7bb0: $00
    jr nc, jr_08e_7bb3                            ; $7bb1: $30 $00

jr_08e_7bb3:
    ld bc, $0031                                  ; $7bb3: $01 $31 $00
    ld [hl-], a                                   ; $7bb6: $32
    nop                                           ; $7bb7: $00
    ccf                                           ; $7bb8: $3f
    nop                                           ; $7bb9: $00
    ld b, b                                       ; $7bba: $40
    ld e, b                                       ; $7bbb: $58
    stop                                          ; $7bbc: $10 $00
    jr z, jr_08e_7bc0                             ; $7bbe: $28 $00

jr_08e_7bc0:
    add hl, hl                                    ; $7bc0: $29
    nop                                           ; $7bc1: $00
    ld a, [hl+]                                   ; $7bc2: $2a
    nop                                           ; $7bc3: $00
    inc sp                                        ; $7bc4: $33
    nop                                           ; $7bc5: $00
    nop                                           ; $7bc6: $00
    inc [hl]                                      ; $7bc7: $34
    nop                                           ; $7bc8: $00
    dec [hl]                                      ; $7bc9: $35
    nop                                           ; $7bca: $00
    ld [hl], $00                                  ; $7bcb: $36 $00
    ld b, c                                       ; $7bcd: $41
    nop                                           ; $7bce: $00
    db $10                                        ; $7bcf: $10
    ld b, d                                       ; $7bd0: $42
    nop                                           ; $7bd1: $00
    ld b, e                                       ; $7bd2: $43
    inc l                                         ; $7bd3: $2c
    db $10                                        ; $7bd4: $10
    dec hl                                        ; $7bd5: $2b
    nop                                           ; $7bd6: $00
    inc l                                         ; $7bd7: $2c
    nop                                           ; $7bd8: $00
    nop                                           ; $7bd9: $00
    scf                                           ; $7bda: $37
    nop                                           ; $7bdb: $00
    jr c, jr_08e_7bde                             ; $7bdc: $38 $00

jr_08e_7bde:
    add hl, sp                                    ; $7bde: $39
    nop                                           ; $7bdf: $00
    ld a, [hl-]                                   ; $7be0: $3a
    nop                                           ; $7be1: $00
    inc b                                         ; $7be2: $04
    ld b, h                                       ; $7be3: $44
    nop                                           ; $7be4: $00
    ld b, l                                       ; $7be5: $45
    nop                                           ; $7be6: $00
    ld b, [hl]                                    ; $7be7: $46
    ld b, d                                       ; $7be8: $42
    db $10                                        ; $7be9: $10
    dec l                                         ; $7bea: $2d
    nop                                           ; $7beb: $00
    nop                                           ; $7bec: $00
    ld l, $00                                     ; $7bed: $2e $00
    dec sp                                        ; $7bef: $3b
    nop                                           ; $7bf0: $00
    inc a                                         ; $7bf1: $3c
    nop                                           ; $7bf2: $00
    dec a                                         ; $7bf3: $3d
    nop                                           ; $7bf4: $00
    ld bc, $003e                                  ; $7bf5: $01 $3e $00
    ld b, a                                       ; $7bf8: $47
    nop                                           ; $7bf9: $00
    ld c, b                                       ; $7bfa: $48
    nop                                           ; $7bfb: $00
    ld c, c                                       ; $7bfc: $49
    ld e, b                                       ; $7bfd: $58
    stop                                          ; $7bfe: $10 $00
    ld c, d                                       ; $7c00: $4a
    nop                                           ; $7c01: $00
    ld c, e                                       ; $7c02: $4b
    nop                                           ; $7c03: $00
    ld d, [hl]                                    ; $7c04: $56
    nop                                           ; $7c05: $00
    ld d, a                                       ; $7c06: $57
    nop                                           ; $7c07: $00
    ld bc, $0058                                  ; $7c08: $01 $58 $00
    ld e, c                                       ; $7c0b: $59
    nop                                           ; $7c0c: $00
    ld h, [hl]                                    ; $7c0d: $66
    nop                                           ; $7c0e: $00
    ld h, a                                       ; $7c0f: $67
    ld l, [hl]                                    ; $7c10: $6e
    jr nz, jr_08e_7c13                            ; $7c11: $20 $00

jr_08e_7c13:
    ld c, h                                       ; $7c13: $4c
    nop                                           ; $7c14: $00
    ld c, l                                       ; $7c15: $4d
    nop                                           ; $7c16: $00
    ld e, d                                       ; $7c17: $5a
    nop                                           ; $7c18: $00
    ld e, e                                       ; $7c19: $5b
    nop                                           ; $7c1a: $00
    ld bc, $005c                                  ; $7c1b: $01 $5c $00
    ld e, l                                       ; $7c1e: $5d
    nop                                           ; $7c1f: $00
    ld l, b                                       ; $7c20: $68
    nop                                           ; $7c21: $00
    ld l, c                                       ; $7c22: $69
    add $00                                       ; $7c23: $c6 $00
    nop                                           ; $7c25: $00
    ld c, [hl]                                    ; $7c26: $4e
    nop                                           ; $7c27: $00
    ld c, a                                       ; $7c28: $4f
    nop                                           ; $7c29: $00
    ld d, b                                       ; $7c2a: $50
    nop                                           ; $7c2b: $00
    ld d, c                                       ; $7c2c: $51
    nop                                           ; $7c2d: $00
    nop                                           ; $7c2e: $00
    ld e, [hl]                                    ; $7c2f: $5e
    nop                                           ; $7c30: $00
    ld e, a                                       ; $7c31: $5f
    nop                                           ; $7c32: $00
    ld h, b                                       ; $7c33: $60
    nop                                           ; $7c34: $00
    ld h, c                                       ; $7c35: $61
    nop                                           ; $7c36: $00
    db $10                                        ; $7c37: $10
    ld l, d                                       ; $7c38: $6a
    nop                                           ; $7c39: $00
    ld l, e                                       ; $7c3a: $6b
    call c, Call_08e_5200                         ; $7c3b: $dc $00 $52
    nop                                           ; $7c3e: $00
    ld d, e                                       ; $7c3f: $53
    nop                                           ; $7c40: $00
    nop                                           ; $7c41: $00
    ld d, h                                       ; $7c42: $54
    nop                                           ; $7c43: $00
    ld d, l                                       ; $7c44: $55
    nop                                           ; $7c45: $00
    ld h, d                                       ; $7c46: $62
    nop                                           ; $7c47: $00
    ld h, e                                       ; $7c48: $63
    nop                                           ; $7c49: $00
    ld bc, $0064                                  ; $7c4a: $01 $64 $00
    ld h, l                                       ; $7c4d: $65
    nop                                           ; $7c4e: $00
    ld l, h                                       ; $7c4f: $6c
    nop                                           ; $7c50: $00
    ld l, l                                       ; $7c51: $6d
    ld a, [c]                                     ; $7c52: $f2
    nop                                           ; $7c53: $00
    nop                                           ; $7c54: $00
    ld l, [hl]                                    ; $7c55: $6e
    nop                                           ; $7c56: $00
    ld l, a                                       ; $7c57: $6f
    nop                                           ; $7c58: $00
    ld [hl], b                                    ; $7c59: $70
    nop                                           ; $7c5a: $00
    ld [hl], c                                    ; $7c5b: $71
    nop                                           ; $7c5c: $00
    nop                                           ; $7c5d: $00
    ld a, b                                       ; $7c5e: $78
    nop                                           ; $7c5f: $00
    ld a, c                                       ; $7c60: $79
    nop                                           ; $7c61: $00
    ld a, d                                       ; $7c62: $7a
    nop                                           ; $7c63: $00
    ld a, e                                       ; $7c64: $7b
    nop                                           ; $7c65: $00
    db $10                                        ; $7c66: $10
    adc b                                         ; $7c67: $88
    nop                                           ; $7c68: $00
    adc c                                         ; $7c69: $89
    add $20                                       ; $7c6a: $c6 $20
    ld [hl], d                                    ; $7c6c: $72
    nop                                           ; $7c6d: $00
    ld [hl], e                                    ; $7c6e: $73
    nop                                           ; $7c6f: $00

jr_08e_7c70:
    nop                                           ; $7c70: $00
    ld a, h                                       ; $7c71: $7c
    nop                                           ; $7c72: $00
    ld a, l                                       ; $7c73: $7d
    nop                                           ; $7c74: $00
    ld a, [hl]                                    ; $7c75: $7e
    nop                                           ; $7c76: $00
    ld a, a                                       ; $7c77: $7f
    nop                                           ; $7c78: $00
    db $10                                        ; $7c79: $10
    adc d                                         ; $7c7a: $8a
    nop                                           ; $7c7b: $00
    adc e                                         ; $7c7c: $8b
    call c, Call_08e_7420                         ; $7c7d: $dc $20 $74
    nop                                           ; $7c80: $00
    ld [hl], l                                    ; $7c81: $75
    nop                                           ; $7c82: $00
    nop                                           ; $7c83: $00
    add b                                         ; $7c84: $80
    nop                                           ; $7c85: $00
    add c                                         ; $7c86: $81
    nop                                           ; $7c87: $00
    add d                                         ; $7c88: $82
    nop                                           ; $7c89: $00
    add e                                         ; $7c8a: $83
    nop                                           ; $7c8b: $00
    db $10                                        ; $7c8c: $10
    adc h                                         ; $7c8d: $8c
    nop                                           ; $7c8e: $00
    adc l                                         ; $7c8f: $8d
    ld a, [c]                                     ; $7c90: $f2
    jr nz, jr_08e_7d09                            ; $7c91: $20 $76

    nop                                           ; $7c93: $00
    ld [hl], a                                    ; $7c94: $77
    nop                                           ; $7c95: $00

jr_08e_7c96:
    nop                                           ; $7c96: $00
    add h                                         ; $7c97: $84
    nop                                           ; $7c98: $00
    add l                                         ; $7c99: $85
    nop                                           ; $7c9a: $00
    add [hl]                                      ; $7c9b: $86
    nop                                           ; $7c9c: $00
    add a                                         ; $7c9d: $87
    nop                                           ; $7c9e: $00
    db $10                                        ; $7c9f: $10
    adc [hl]                                      ; $7ca0: $8e
    nop                                           ; $7ca1: $00
    adc a                                         ; $7ca2: $8f
    ld [$9021], sp                                ; $7ca3: $08 $21 $90
    nop                                           ; $7ca6: $00
    sub c                                         ; $7ca7: $91
    nop                                           ; $7ca8: $00
    nop                                           ; $7ca9: $00
    sub l                                         ; $7caa: $95
    nop                                           ; $7cab: $00
    sub [hl]                                      ; $7cac: $96
    nop                                           ; $7cad: $00
    sub a                                         ; $7cae: $97
    nop                                           ; $7caf: $00
    sbc b                                         ; $7cb0: $98
    nop                                           ; $7cb1: $00
    db $10                                        ; $7cb2: $10
    sbc a                                         ; $7cb3: $9f
    nop                                           ; $7cb4: $00
    and b                                         ; $7cb5: $a0
    ld h, b                                       ; $7cb6: $60
    ld de, $0092                                  ; $7cb7: $11 $92 $00
    sub e                                         ; $7cba: $93
    nop                                           ; $7cbb: $00
    nop                                           ; $7cbc: $00
    sub h                                         ; $7cbd: $94
    nop                                           ; $7cbe: $00
    sbc c                                         ; $7cbf: $99
    nop                                           ; $7cc0: $00
    sbc d                                         ; $7cc1: $9a
    nop                                           ; $7cc2: $00
    sbc e                                         ; $7cc3: $9b
    nop                                           ; $7cc4: $00
    ld bc, $009c                                  ; $7cc5: $01 $9c $00
    and c                                         ; $7cc8: $a1
    nop                                           ; $7cc9: $00
    and d                                         ; $7cca: $a2
    nop                                           ; $7ccb: $00
    and e                                         ; $7ccc: $a3
    halt                                          ; $7ccd: $76
    ld bc, $0388                                  ; $7cce: $01 $88 $03
    jr z, jr_08e_7c70                             ; $7cd1: $28 $9d

    nop                                           ; $7cd3: $00
    sbc [hl]                                      ; $7cd4: $9e
    ld c, $30                                     ; $7cd5: $0e $30
    rst $20                                       ; $7cd7: $e7
    ld bc, $0041                                  ; $7cd8: $01 $41 $00
    ld bc, $0230                                  ; $7cdb: $01 $30 $02
    nop                                           ; $7cde: $00
    inc bc                                        ; $7cdf: $03
    nop                                           ; $7ce0: $00
    inc b                                         ; $7ce1: $04
    ld [bc], a                                    ; $7ce2: $02
    jr nc, jr_08e_7d45                            ; $7ce3: $30 $60

    ld a, [de]                                    ; $7ce5: $1a
    add hl, de                                    ; $7ce6: $19
    jr c, jr_08e_7cf3                             ; $7ce7: $38 $0a

    ld b, b                                       ; $7ce9: $40
    dec b                                         ; $7cea: $05
    nop                                           ; $7ceb: $00
    ld b, $00                                     ; $7cec: $06 $00
    rlca                                          ; $7cee: $07
    ld [$0800], sp                                ; $7cef: $08 $00 $08
    nop                                           ; $7cf2: $00

jr_08e_7cf3:
    ld de, $2004                                  ; $7cf3: $11 $04 $20
    dec de                                        ; $7cf6: $1b
    nop                                           ; $7cf7: $00
    inc e                                         ; $7cf8: $1c
    jr nz, jr_08e_7cfb                            ; $7cf9: $20 $00

jr_08e_7cfb:
    dec e                                         ; $7cfb: $1d
    ld a, [hl+]                                   ; $7cfc: $2a
    ld [hl], b                                    ; $7cfd: $70
    add hl, bc                                    ; $7cfe: $09
    nop                                           ; $7cff: $00
    ld a, [bc]                                    ; $7d00: $0a
    nop                                           ; $7d01: $00
    dec bc                                        ; $7d02: $0b
    nop                                           ; $7d03: $00
    nop                                           ; $7d04: $00
    inc c                                         ; $7d05: $0c
    nop                                           ; $7d06: $00
    ld [de], a                                    ; $7d07: $12
    nop                                           ; $7d08: $00

jr_08e_7d09:
    inc de                                        ; $7d09: $13
    nop                                           ; $7d0a: $00
    inc d                                         ; $7d0b: $14
    nop                                           ; $7d0c: $00
    nop                                           ; $7d0d: $00
    dec d                                         ; $7d0e: $15
    nop                                           ; $7d0f: $00
    ld e, $00                                     ; $7d10: $1e $00
    rra                                           ; $7d12: $1f
    nop                                           ; $7d13: $00
    jr nz, jr_08e_7c96                            ; $7d14: $20 $80

    ld d, b                                       ; $7d16: $50
    ld h, b                                       ; $7d17: $60
    ld bc, $0d00                                  ; $7d18: $01 $00 $0d
    nop                                           ; $7d1b: $00
    ld c, $00                                     ; $7d1c: $0e $00
    rrca                                          ; $7d1e: $0f
    nop                                           ; $7d1f: $00
    nop                                           ; $7d20: $00
    stop                                          ; $7d21: $10 $00
    ld d, $00                                     ; $7d23: $16 $00
    rla                                           ; $7d25: $17
    nop                                           ; $7d26: $00
    jr jr_08e_7d29                                ; $7d27: $18 $00

jr_08e_7d29:
    nop                                           ; $7d29: $00
    add hl, de                                    ; $7d2a: $19
    nop                                           ; $7d2b: $00
    ld hl, $2200                                  ; $7d2c: $21 $00 $22
    nop                                           ; $7d2f: $00
    inc hl                                        ; $7d30: $23
    add b                                         ; $7d31: $80
    halt                                          ; $7d32: $76
    ld h, b                                       ; $7d33: $60
    inc h                                         ; $7d34: $24
    nop                                           ; $7d35: $00
    ld h, $00                                     ; $7d36: $26 $00
    daa                                           ; $7d38: $27
    nop                                           ; $7d39: $00
    jr z, jr_08e_7d3c                             ; $7d3a: $28 $00

jr_08e_7d3c:
    nop                                           ; $7d3c: $00
    add hl, hl                                    ; $7d3d: $29
    nop                                           ; $7d3e: $00
    ld [hl], $00                                  ; $7d3f: $36 $00
    scf                                           ; $7d41: $37
    nop                                           ; $7d42: $00
    jr c, jr_08e_7d47                             ; $7d43: $38 $02

jr_08e_7d45:
    nop                                           ; $7d45: $00
    add hl, sp                                    ; $7d46: $39

jr_08e_7d47:
    nop                                           ; $7d47: $00
    ld b, [hl]                                    ; $7d48: $46
    nop                                           ; $7d49: $00
    ld b, a                                       ; $7d4a: $47
    ld h, $70                                     ; $7d4b: $26 $70
    dec h                                         ; $7d4d: $25
    nop                                           ; $7d4e: $00
    nop                                           ; $7d4f: $00
    ld a, [hl+]                                   ; $7d50: $2a
    nop                                           ; $7d51: $00
    dec hl                                        ; $7d52: $2b
    nop                                           ; $7d53: $00
    inc l                                         ; $7d54: $2c
    nop                                           ; $7d55: $00
    dec l                                         ; $7d56: $2d
    nop                                           ; $7d57: $00
    nop                                           ; $7d58: $00
    ld a, [hl-]                                   ; $7d59: $3a
    nop                                           ; $7d5a: $00
    dec sp                                        ; $7d5b: $3b
    nop                                           ; $7d5c: $00
    inc a                                         ; $7d5d: $3c
    nop                                           ; $7d5e: $00
    dec a                                         ; $7d5f: $3d
    ld [$4800], sp                                ; $7d60: $08 $00 $48
    nop                                           ; $7d63: $00
    ld c, c                                       ; $7d64: $49
    ld c, h                                       ; $7d65: $4c
    ld [hl], b                                    ; $7d66: $70
    nop                                           ; $7d67: $00
    nop                                           ; $7d68: $00
    ld l, $00                                     ; $7d69: $2e $00
    nop                                           ; $7d6b: $00
    cpl                                           ; $7d6c: $2f
    nop                                           ; $7d6d: $00
    jr nc, jr_08e_7d70                            ; $7d6e: $30 $00

jr_08e_7d70:
    ld sp, $3e00                                  ; $7d70: $31 $00 $3e
    nop                                           ; $7d73: $00
    nop                                           ; $7d74: $00
    ccf                                           ; $7d75: $3f
    nop                                           ; $7d76: $00
    ld b, b                                       ; $7d77: $40
    nop                                           ; $7d78: $00
    ld b, c                                       ; $7d79: $41
    nop                                           ; $7d7a: $00
    ld c, d                                       ; $7d7b: $4a
    jr nz, jr_08e_7d7e                            ; $7d7c: $20 $00

jr_08e_7d7e:
    ld c, e                                       ; $7d7e: $4b
    ld h, $80                                     ; $7d7f: $26 $80
    ld [hl-], a                                   ; $7d81: $32
    nop                                           ; $7d82: $00
    inc sp                                        ; $7d83: $33
    nop                                           ; $7d84: $00
    inc [hl]                                      ; $7d85: $34
    nop                                           ; $7d86: $00
    nop                                           ; $7d87: $00
    dec [hl]                                      ; $7d88: $35
    nop                                           ; $7d89: $00
    ld b, d                                       ; $7d8a: $42
    nop                                           ; $7d8b: $00
    ld b, e                                       ; $7d8c: $43
    nop                                           ; $7d8d: $00
    ld b, h                                       ; $7d8e: $44
    nop                                           ; $7d8f: $00
    nop                                           ; $7d90: $00
    ld b, l                                       ; $7d91: $45
    nop                                           ; $7d92: $00
    ld c, h                                       ; $7d93: $4c
    nop                                           ; $7d94: $00
    ld c, l                                       ; $7d95: $4d
    nop                                           ; $7d96: $00
    ld c, [hl]                                    ; $7d97: $4e
    add b                                         ; $7d98: $80
    ld c, $61                                     ; $7d99: $0e $61
    ld c, a                                       ; $7d9b: $4f
    nop                                           ; $7d9c: $00
    ld d, d                                       ; $7d9d: $52
    nop                                           ; $7d9e: $00
    ld d, e                                       ; $7d9f: $53
    nop                                           ; $7da0: $00
    ld d, h                                       ; $7da1: $54
    nop                                           ; $7da2: $00
    nop                                           ; $7da3: $00
    ld d, l                                       ; $7da4: $55
    nop                                           ; $7da5: $00
    ld h, d                                       ; $7da6: $62
    nop                                           ; $7da7: $00
    ld h, e                                       ; $7da8: $63
    nop                                           ; $7da9: $00
    ld h, h                                       ; $7daa: $64
    ld [bc], a                                    ; $7dab: $02
    nop                                           ; $7dac: $00
    ld h, l                                       ; $7dad: $65
    nop                                           ; $7dae: $00
    ld [hl], d                                    ; $7daf: $72
    nop                                           ; $7db0: $00
    ld [hl], e                                    ; $7db1: $73
    ld c, e                                       ; $7db2: $4b
    ld bc, $0274                                  ; $7db3: $01 $74 $02
    nop                                           ; $7db6: $00
    add b                                         ; $7db7: $80
    nop                                           ; $7db8: $00
    add c                                         ; $7db9: $81
    nop                                           ; $7dba: $00
    add d                                         ; $7dbb: $82
    ld d, l                                       ; $7dbc: $55
    ld hl, $0050                                  ; $7dbd: $21 $50 $00
    nop                                           ; $7dc0: $00
    ld d, [hl]                                    ; $7dc1: $56
    nop                                           ; $7dc2: $00
    ld d, a                                       ; $7dc3: $57
    nop                                           ; $7dc4: $00
    ld e, b                                       ; $7dc5: $58
    nop                                           ; $7dc6: $00
    ld e, c                                       ; $7dc7: $59
    nop                                           ; $7dc8: $00
    nop                                           ; $7dc9: $00
    ld h, [hl]                                    ; $7dca: $66
    nop                                           ; $7dcb: $00
    ld h, a                                       ; $7dcc: $67
    nop                                           ; $7dcd: $00
    ld l, b                                       ; $7dce: $68
    nop                                           ; $7dcf: $00
    ld l, c                                       ; $7dd0: $69
    ld [$7500], sp                                ; $7dd1: $08 $00 $75
    nop                                           ; $7dd4: $00
    halt                                          ; $7dd5: $76
    ld [hl], c                                    ; $7dd6: $71
    ld bc, $0077                                  ; $7dd7: $01 $77 $00
    add e                                         ; $7dda: $83
    ld [$8400], sp                                ; $7ddb: $08 $00 $84
    nop                                           ; $7dde: $00
    add l                                         ; $7ddf: $85
    ld a, e                                       ; $7de0: $7b
    ld hl, $0051                                  ; $7de1: $21 $51 $00
    ld e, d                                       ; $7de4: $5a
    nop                                           ; $7de5: $00
    nop                                           ; $7de6: $00
    ld e, e                                       ; $7de7: $5b
    nop                                           ; $7de8: $00
    ld e, h                                       ; $7de9: $5c
    nop                                           ; $7dea: $00
    ld e, l                                       ; $7deb: $5d
    nop                                           ; $7dec: $00
    ld l, d                                       ; $7ded: $6a
    nop                                           ; $7dee: $00
    nop                                           ; $7def: $00
    ld l, e                                       ; $7df0: $6b
    nop                                           ; $7df1: $00
    ld l, h                                       ; $7df2: $6c
    nop                                           ; $7df3: $00
    ld l, l                                       ; $7df4: $6d
    nop                                           ; $7df5: $00
    ld a, b                                       ; $7df6: $78
    nop                                           ; $7df7: $00
    nop                                           ; $7df8: $00
    ld a, c                                       ; $7df9: $79
    nop                                           ; $7dfa: $00
    ld a, d                                       ; $7dfb: $7a
    nop                                           ; $7dfc: $00
    ld a, e                                       ; $7dfd: $7b
    nop                                           ; $7dfe: $00
    add [hl]                                      ; $7dff: $86
    ld [$8700], sp                                ; $7e00: $08 $00 $87
    nop                                           ; $7e03: $00
    adc b                                         ; $7e04: $88
    and c                                         ; $7e05: $a1
    ld sp, $005e                                  ; $7e06: $31 $5e $00
    ld e, a                                       ; $7e09: $5f
    nop                                           ; $7e0a: $00
    nop                                           ; $7e0b: $00
    ld h, b                                       ; $7e0c: $60
    nop                                           ; $7e0d: $00
    ld h, c                                       ; $7e0e: $61
    nop                                           ; $7e0f: $00
    ld l, [hl]                                    ; $7e10: $6e
    nop                                           ; $7e11: $00
    ld l, a                                       ; $7e12: $6f
    nop                                           ; $7e13: $00
    nop                                           ; $7e14: $00
    ld [hl], b                                    ; $7e15: $70
    nop                                           ; $7e16: $00
    ld [hl], c                                    ; $7e17: $71
    nop                                           ; $7e18: $00
    ld a, h                                       ; $7e19: $7c
    nop                                           ; $7e1a: $00
    ld a, l                                       ; $7e1b: $7d
    nop                                           ; $7e1c: $00
    nop                                           ; $7e1d: $00
    ld a, [hl]                                    ; $7e1e: $7e
    nop                                           ; $7e1f: $00
    ld a, a                                       ; $7e20: $7f
    nop                                           ; $7e21: $00
    adc c                                         ; $7e22: $89
    nop                                           ; $7e23: $00
    adc d                                         ; $7e24: $8a
    add b                                         ; $7e25: $80
    push bc                                       ; $7e26: $c5
    ld de, $008b                                  ; $7e27: $11 $8b $00
    adc h                                         ; $7e2a: $8c
    nop                                           ; $7e2b: $00
    adc l                                         ; $7e2c: $8d
    nop                                           ; $7e2d: $00
    sub a                                         ; $7e2e: $97
    nop                                           ; $7e2f: $00
    nop                                           ; $7e30: $00
    sbc b                                         ; $7e31: $98
    nop                                           ; $7e32: $00
    sbc c                                         ; $7e33: $99
    nop                                           ; $7e34: $00
    sbc d                                         ; $7e35: $9a
    nop                                           ; $7e36: $00
    and a                                         ; $7e37: $a7
    nop                                           ; $7e38: $00
    nop                                           ; $7e39: $00
    xor b                                         ; $7e3a: $a8
    nop                                           ; $7e3b: $00
    xor c                                         ; $7e3c: $a9
    nop                                           ; $7e3d: $00
    xor d                                         ; $7e3e: $aa
    nop                                           ; $7e3f: $00
    or a                                          ; $7e40: $b7
    nop                                           ; $7e41: $00
    nop                                           ; $7e42: $00
    cp b                                          ; $7e43: $b8
    nop                                           ; $7e44: $00
    cp c                                          ; $7e45: $b9
    nop                                           ; $7e46: $00
    cp d                                          ; $7e47: $ba
    nop                                           ; $7e48: $00
    cp a                                          ; $7e49: $bf
    jr nz, jr_08e_7e4c                            ; $7e4a: $20 $00

jr_08e_7e4c:
    ret nz                                        ; $7e4c: $c0

    db $eb                                        ; $7e4d: $eb
    ld de, $008e                                  ; $7e4e: $11 $8e $00
    adc a                                         ; $7e51: $8f
    nop                                           ; $7e52: $00
    sub b                                         ; $7e53: $90
    nop                                           ; $7e54: $00
    nop                                           ; $7e55: $00
    sbc e                                         ; $7e56: $9b
    nop                                           ; $7e57: $00
    sbc h                                         ; $7e58: $9c
    nop                                           ; $7e59: $00
    sbc l                                         ; $7e5a: $9d
    nop                                           ; $7e5b: $00
    sbc [hl]                                      ; $7e5c: $9e
    nop                                           ; $7e5d: $00
    nop                                           ; $7e5e: $00
    xor e                                         ; $7e5f: $ab
    nop                                           ; $7e60: $00
    xor h                                         ; $7e61: $ac
    nop                                           ; $7e62: $00
    xor l                                         ; $7e63: $ad
    nop                                           ; $7e64: $00
    xor [hl]                                      ; $7e65: $ae
    jr nz, jr_08e_7e68                            ; $7e66: $20 $00

jr_08e_7e68:
    cp e                                          ; $7e68: $bb
    xor $61                                       ; $7e69: $ee $61
    adc [hl]                                      ; $7e6b: $8e
    nop                                           ; $7e6c: $00
    sub c                                         ; $7e6d: $91
    nop                                           ; $7e6e: $00
    sub d                                         ; $7e6f: $92
    nop                                           ; $7e70: $00
    nop                                           ; $7e71: $00
    sbc a                                         ; $7e72: $9f
    nop                                           ; $7e73: $00
    and b                                         ; $7e74: $a0
    nop                                           ; $7e75: $00
    and c                                         ; $7e76: $a1
    nop                                           ; $7e77: $00
    and d                                         ; $7e78: $a2
    nop                                           ; $7e79: $00
    nop                                           ; $7e7a: $00
    xor a                                         ; $7e7b: $af
    nop                                           ; $7e7c: $00
    or b                                          ; $7e7d: $b0
    nop                                           ; $7e7e: $00
    or c                                          ; $7e7f: $b1
    nop                                           ; $7e80: $00
    or d                                          ; $7e81: $b2
    jr nz, jr_08e_7e84                            ; $7e82: $20 $00

jr_08e_7e84:
    cp h                                          ; $7e84: $bc
    inc d                                         ; $7e85: $14
    ld d, d                                       ; $7e86: $52
    sub e                                         ; $7e87: $93
    nop                                           ; $7e88: $00
    sub h                                         ; $7e89: $94
    nop                                           ; $7e8a: $00
    sub l                                         ; $7e8b: $95
    nop                                           ; $7e8c: $00
    nop                                           ; $7e8d: $00
    sub [hl]                                      ; $7e8e: $96
    nop                                           ; $7e8f: $00
    and e                                         ; $7e90: $a3
    nop                                           ; $7e91: $00
    and h                                         ; $7e92: $a4
    nop                                           ; $7e93: $00
    and l                                         ; $7e94: $a5
    nop                                           ; $7e95: $00
    nop                                           ; $7e96: $00
    and [hl]                                      ; $7e97: $a6
    nop                                           ; $7e98: $00
    or e                                          ; $7e99: $b3
    nop                                           ; $7e9a: $00
    or h                                          ; $7e9b: $b4
    nop                                           ; $7e9c: $00
    or l                                          ; $7e9d: $b5
    ld [bc], a                                    ; $7e9e: $02
    nop                                           ; $7e9f: $00
    or [hl]                                       ; $7ea0: $b6
    nop                                           ; $7ea1: $00
    cp l                                          ; $7ea2: $bd
    nop                                           ; $7ea3: $00
    cp [hl]                                       ; $7ea4: $be
    inc a                                         ; $7ea5: $3c
    ld b, d                                       ; $7ea6: $42
    pop bc                                        ; $7ea7: $c1
    nop                                           ; $7ea8: $00
    nop                                           ; $7ea9: $00
    jp nz, $c300                                  ; $7eaa: $c2 $00 $c3

    nop                                           ; $7ead: $00
    call nz, $c800                                ; $7eae: $c4 $00 $c8
    nop                                           ; $7eb1: $00
    nop                                           ; $7eb2: $00
    ret                                           ; $7eb3: $c9


    nop                                           ; $7eb4: $00
    jp z, $cb00                                   ; $7eb5: $ca $00 $cb

    nop                                           ; $7eb8: $00
    ret c                                         ; $7eb9: $d8

    nop                                           ; $7eba: $00
    nop                                           ; $7ebb: $00
    reti                                          ; $7ebc: $d9


    nop                                           ; $7ebd: $00
    jp c, $db00                                   ; $7ebe: $da $00 $db

    nop                                           ; $7ec1: $00
    add sp, $22                                   ; $7ec2: $e8 $22
    nop                                           ; $7ec4: $00
    jp hl                                         ; $7ec5: $e9


    ld h, d                                       ; $7ec6: $62
    ld b, d                                       ; $7ec7: $42
    push bc                                       ; $7ec8: $c5
    nop                                           ; $7ec9: $00
    add $02                                       ; $7eca: $c6 $02
    nop                                           ; $7ecc: $00
    rst $00                                       ; $7ecd: $c7
    nop                                           ; $7ece: $00
    nop                                           ; $7ecf: $00
    call z, $cd00                                 ; $7ed0: $cc $00 $cd
    nop                                           ; $7ed3: $00
    adc $00                                       ; $7ed4: $ce $00
    rst $08                                       ; $7ed6: $cf
    nop                                           ; $7ed7: $00
    nop                                           ; $7ed8: $00
    call c, $dd00                                 ; $7ed9: $dc $00 $dd
    nop                                           ; $7edc: $00
    sbc $00                                       ; $7edd: $de $00
    rst $18                                       ; $7edf: $df
    ld [$ea00], sp                                ; $7ee0: $08 $00 $ea
    nop                                           ; $7ee3: $00
    db $eb                                        ; $7ee4: $eb
    adc b                                         ; $7ee5: $88
    add d                                         ; $7ee6: $82
    ret nc                                        ; $7ee7: $d0

    nop                                           ; $7ee8: $00
    pop de                                        ; $7ee9: $d1
    nop                                           ; $7eea: $00
    nop                                           ; $7eeb: $00
    jp nc, $d300                                  ; $7eec: $d2 $00 $d3

    nop                                           ; $7eef: $00
    ldh [rP1], a                                  ; $7ef0: $e0 $00
    pop hl                                        ; $7ef2: $e1
    ld [bc], a                                    ; $7ef3: $02
    nop                                           ; $7ef4: $00
    ld [c], a                                     ; $7ef5: $e2
    nop                                           ; $7ef6: $00
    db $e3                                        ; $7ef7: $e3
    nop                                           ; $7ef8: $00
    db $ec                                        ; $7ef9: $ec
    xor h                                         ; $7efa: $ac
    sub d                                         ; $7efb: $92
    call nc, RST_00                               ; $7efc: $d4 $00 $00
    push de                                       ; $7eff: $d5
    nop                                           ; $7f00: $00
    sub $00                                       ; $7f01: $d6 $00
    rst $10                                       ; $7f03: $d7
    nop                                           ; $7f04: $00
    db $e4                                        ; $7f05: $e4
    nop                                           ; $7f06: $00
    nop                                           ; $7f07: $00
    push hl                                       ; $7f08: $e5
    nop                                           ; $7f09: $00
    and $00                                       ; $7f0a: $e6 $00
    rst $20                                       ; $7f0c: $e7
    nop                                           ; $7f0d: $00
    db $ed                                        ; $7f0e: $ed
    add $d2                                       ; $7f0f: $c6 $d2
    sub d                                         ; $7f11: $92
    nop                                           ; $7f12: $00
    dec de                                        ; $7f13: $1b
    xor $00                                       ; $7f14: $ee $00
    rst $28                                       ; $7f16: $ef
    ld a, [hl]                                    ; $7f17: $7e
    nop                                           ; $7f18: $00
    di                                            ; $7f19: $f3
    ld a, d                                       ; $7f1a: $7a
    ld a, d                                       ; $7f1b: $7a
    nop                                           ; $7f1c: $00
    nop                                           ; $7f1d: $00
    nop                                           ; $7f1e: $00
    nop                                           ; $7f1f: $00
    ld bc, $0200                                  ; $7f20: $01 $00 $02
    nop                                           ; $7f23: $00
    inc bc                                        ; $7f24: $03
    nop                                           ; $7f25: $00
    nop                                           ; $7f26: $00
    stop                                          ; $7f27: $10 $00
    ld de, $1200                                  ; $7f29: $11 $00 $12
    nop                                           ; $7f2c: $00
    inc de                                        ; $7f2d: $13
    nop                                           ; $7f2e: $00
    nop                                           ; $7f2f: $00
    inc b                                         ; $7f30: $04
    nop                                           ; $7f31: $00
    dec b                                         ; $7f32: $05
    nop                                           ; $7f33: $00
    ld b, $00                                     ; $7f34: $06 $00
    rlca                                          ; $7f36: $07
    nop                                           ; $7f37: $00
    inc b                                         ; $7f38: $04
    inc d                                         ; $7f39: $14
    nop                                           ; $7f3a: $00
    dec d                                         ; $7f3b: $15
    nop                                           ; $7f3c: $00
    ld d, $10                                     ; $7f3d: $16 $10
    nop                                           ; $7f3f: $00
    ld [$0000], sp                                ; $7f40: $08 $00 $00
    add hl, bc                                    ; $7f43: $09
    nop                                           ; $7f44: $00
    ld a, [bc]                                    ; $7f45: $0a
    nop                                           ; $7f46: $00
    dec bc                                        ; $7f47: $0b
    nop                                           ; $7f48: $00
    rla                                           ; $7f49: $17
    nop                                           ; $7f4a: $00
    db $10                                        ; $7f4b: $10
    jr jr_08e_7f4e                                ; $7f4c: $18 $00

jr_08e_7f4e:
    add hl, de                                    ; $7f4e: $19
    jr nz, jr_08e_7f51                            ; $7f4f: $20 $00

jr_08e_7f51:
    inc c                                         ; $7f51: $0c
    nop                                           ; $7f52: $00
    dec c                                         ; $7f53: $0d
    nop                                           ; $7f54: $00
    nop                                           ; $7f55: $00
    ld c, $00                                     ; $7f56: $0e $00
    rrca                                          ; $7f58: $0f
    nop                                           ; $7f59: $00
    ld a, [de]                                    ; $7f5a: $1a
    nop                                           ; $7f5b: $00
    dec de                                        ; $7f5c: $1b
    nop                                           ; $7f5d: $00
    ld b, b                                       ; $7f5e: $40
    inc e                                         ; $7f5f: $1c
    jr nc, jr_08e_7f62                            ; $7f60: $30 $00

jr_08e_7f62:
    dec e                                         ; $7f62: $1d
    nop                                           ; $7f63: $00
    ld e, $00                                     ; $7f64: $1e $00
    rra                                           ; $7f66: $1f
    nop                                           ; $7f67: $00
    ld bc, $0020                                  ; $7f68: $01 $20 $00
    dec hl                                        ; $7f6b: $2b
    nop                                           ; $7f6c: $00
    inc l                                         ; $7f6d: $2c
    nop                                           ; $7f6e: $00
    dec l                                         ; $7f6f: $2d
    ld b, b                                       ; $7f70: $40
    nop                                           ; $7f71: $00
    nop                                           ; $7f72: $00
    ld hl, $2200                                  ; $7f73: $21 $00 $22
    nop                                           ; $7f76: $00
    inc hl                                        ; $7f77: $23
    nop                                           ; $7f78: $00
    inc h                                         ; $7f79: $24
    nop                                           ; $7f7a: $00
    ld bc, $002e                                  ; $7f7b: $01 $2e $00
    cpl                                           ; $7f7e: $2f
    nop                                           ; $7f7f: $00
    jr nc, jr_08e_7f82                            ; $7f80: $30 $00

jr_08e_7f82:
    ld sp, $0020                                  ; $7f82: $31 $20 $00
    nop                                           ; $7f85: $00
    dec h                                         ; $7f86: $25
    nop                                           ; $7f87: $00
    ld h, $00                                     ; $7f88: $26 $00
    daa                                           ; $7f8a: $27
    nop                                           ; $7f8b: $00
    ld [hl-], a                                   ; $7f8c: $32
    nop                                           ; $7f8d: $00

jr_08e_7f8e:
    inc b                                         ; $7f8e: $04
    inc sp                                        ; $7f8f: $33
    nop                                           ; $7f90: $00
    inc [hl]                                      ; $7f91: $34
    nop                                           ; $7f92: $00
    dec [hl]                                      ; $7f93: $35
    jr nz, jr_08e_7f96                            ; $7f94: $20 $00

jr_08e_7f96:
    jr z, jr_08e_7f98                             ; $7f96: $28 $00

jr_08e_7f98:
    nop                                           ; $7f98: $00
    add hl, hl                                    ; $7f99: $29
    nop                                           ; $7f9a: $00
    ld a, [hl+]                                   ; $7f9b: $2a
    nop                                           ; $7f9c: $00
    ld [hl], $00                                  ; $7f9d: $36 $00
    scf                                           ; $7f9f: $37
    nop                                           ; $7fa0: $00
    ld bc, $0038                                  ; $7fa1: $01 $38 $00
    add hl, sp                                    ; $7fa4: $39
    nop                                           ; $7fa5: $00
    ld a, [hl-]                                   ; $7fa6: $3a
    nop                                           ; $7fa7: $00
    dec sp                                        ; $7fa8: $3b
    ld [bc], a                                    ; $7fa9: $02
    jr nc, @+$42                                  ; $7faa: $30 $40

    inc a                                         ; $7fac: $3c

jr_08e_7fad:
    add b                                         ; $7fad: $80
    nop                                           ; $7fae: $00

    db $01, $04, $ff, $7f, $0c, $6a, $a0, $54, $3f, $4f, $79, $32, $74, $19, $87, $1c
    db $ff, $4e, $b8, $56, $90, $31, $85, $08, $de, $7b, $f6, $66, $ab, $41, $a0, $14
    db $bf, $22, $97, $15, $91, $08, $45, $00, $bf, $21, $d7, $0c, $4f, $00, $07, $00
    db $79, $32, $d5, $66, $6a, $31, $00, $00, $77, $6f, $2c, $3a, $85, $1d, $80, $04

    add e                                         ; $7fef: $83
    jr z, jr_08e_7f8e                             ; $7ff0: $28 $9c

    inc b                                         ; $7ff2: $04
    dec l                                         ; $7ff3: $2d
    inc b                                         ; $7ff4: $04
    nop                                           ; $7ff5: $00
    nop                                           ; $7ff6: $00
    add e                                         ; $7ff7: $83
    jr z, jr_08e_7fad                             ; $7ff8: $28 $b3

    ld a, [bc]                                    ; $7ffa: $0a
    xor e                                         ; $7ffb: $ab
    dec d                                         ; $7ffc: $15
    nop                                           ; $7ffd: $00
    nop                                           ; $7ffe: $00
    rst $38                                       ; $7fff: $ff
