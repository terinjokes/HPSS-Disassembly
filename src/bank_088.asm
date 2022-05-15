; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $088", ROMX[$4000], BANK[$88]

    adc b                                         ; $4000: $88
    inc c                                         ; $4001: $0c
    nop                                           ; $4002: $00
    dec c                                         ; $4003: $0d
    nop                                           ; $4004: $00
    jr nz, jr_088_4016                            ; $4005: $20 $0f

    pop de                                        ; $4007: $d1
    pop de                                        ; $4008: $d1
    pop de                                        ; $4009: $d1
    pop de                                        ; $400a: $d1
    pop de                                        ; $400b: $d1
    pop de                                        ; $400c: $d1
    pop de                                        ; $400d: $d1
    pop de                                        ; $400e: $d1
    pop de                                        ; $400f: $d1
    pop de                                        ; $4010: $d1
    pop de                                        ; $4011: $d1
    pop de                                        ; $4012: $d1
    pop de                                        ; $4013: $d1
    pop de                                        ; $4014: $d1
    pop de                                        ; $4015: $d1

jr_088_4016:
    pop de                                        ; $4016: $d1
    add [hl]                                      ; $4017: $86
    add [hl]                                      ; $4018: $86
    add [hl]                                      ; $4019: $86
    add [hl]                                      ; $401a: $86
    add [hl]                                      ; $401b: $86
    add [hl]                                      ; $401c: $86
    add [hl]                                      ; $401d: $86
    add [hl]                                      ; $401e: $86
    add [hl]                                      ; $401f: $86
    add [hl]                                      ; $4020: $86
    add [hl]                                      ; $4021: $86
    add [hl]                                      ; $4022: $86
    add [hl]                                      ; $4023: $86
    add [hl]                                      ; $4024: $86
    add [hl]                                      ; $4025: $86
    add [hl]                                      ; $4026: $86
    pop de                                        ; $4027: $d1
    pop de                                        ; $4028: $d1
    pop de                                        ; $4029: $d1
    pop de                                        ; $402a: $d1
    pop de                                        ; $402b: $d1
    pop de                                        ; $402c: $d1
    pop de                                        ; $402d: $d1
    pop de                                        ; $402e: $d1
    pop de                                        ; $402f: $d1
    pop de                                        ; $4030: $d1
    pop de                                        ; $4031: $d1
    pop de                                        ; $4032: $d1
    pop de                                        ; $4033: $d1
    pop de                                        ; $4034: $d1
    pop de                                        ; $4035: $d1
    jp nc, Jump_000_0606                          ; $4036: $d2 $06 $06

    ld b, $06                                     ; $4039: $06 $06
    ld b, $06                                     ; $403b: $06 $06
    ld b, $06                                     ; $403d: $06 $06
    ld b, $06                                     ; $403f: $06 $06
    ld b, $06                                     ; $4041: $06 $06
    ld b, $06                                     ; $4043: $06 $06
    ld b, $02                                     ; $4045: $06 $02
    pop de                                        ; $4047: $d1
    pop de                                        ; $4048: $d1
    pop de                                        ; $4049: $d1
    pop de                                        ; $404a: $d1
    pop de                                        ; $404b: $d1
    pop de                                        ; $404c: $d1
    pop de                                        ; $404d: $d1
    db $d3                                        ; $404e: $d3
    pop de                                        ; $404f: $d1
    pop de                                        ; $4050: $d1
    call nc, $d1d5                                ; $4051: $d4 $d5 $d1
    sub $d7                                       ; $4054: $d6 $d7
    ret c                                         ; $4056: $d8

    ld b, $06                                     ; $4057: $06 $06
    ld b, $06                                     ; $4059: $06 $06
    ld b, $06                                     ; $405b: $06 $06
    ld b, $02                                     ; $405d: $06 $02
    ld b, $06                                     ; $405f: $06 $06
    ld [bc], a                                    ; $4061: $02
    ld [bc], a                                    ; $4062: $02
    ld b, $02                                     ; $4063: $06 $02
    ld [bc], a                                    ; $4065: $02
    ld [bc], a                                    ; $4066: $02
    pop de                                        ; $4067: $d1
    jp nc, $dad9                                  ; $4068: $d2 $d9 $da

    db $db                                        ; $406b: $db
    call c, $dedd                                 ; $406c: $dc $dd $de
    rst $18                                       ; $406f: $df
    ldh [$e1], a                                  ; $4070: $e0 $e1
    ld [c], a                                     ; $4072: $e2
    db $e3                                        ; $4073: $e3
    db $e4                                        ; $4074: $e4
    pop hl                                        ; $4075: $e1
    push hl                                       ; $4076: $e5
    ld b, $02                                     ; $4077: $06 $02
    ld [bc], a                                    ; $4079: $02
    ld [bc], a                                    ; $407a: $02
    ld [bc], a                                    ; $407b: $02
    ld [bc], a                                    ; $407c: $02
    ld [bc], a                                    ; $407d: $02
    ld [bc], a                                    ; $407e: $02
    ld [bc], a                                    ; $407f: $02
    ld [bc], a                                    ; $4080: $02
    ld [bc], a                                    ; $4081: $02
    ld [bc], a                                    ; $4082: $02
    ld [bc], a                                    ; $4083: $02
    ld [bc], a                                    ; $4084: $02
    ld [bc], a                                    ; $4085: $02
    ld [bc], a                                    ; $4086: $02
    pop de                                        ; $4087: $d1
    pop de                                        ; $4088: $d1
    pop de                                        ; $4089: $d1
    pop de                                        ; $408a: $d1
    pop de                                        ; $408b: $d1
    pop de                                        ; $408c: $d1
    pop de                                        ; $408d: $d1
    and $d1                                       ; $408e: $e6 $d1
    pop de                                        ; $4090: $d1
    rst $20                                       ; $4091: $e7
    add sp, -$2f                                  ; $4092: $e8 $d1
    pop de                                        ; $4094: $d1
    jp hl                                         ; $4095: $e9


    ld [$0606], a                                 ; $4096: $ea $06 $06
    ld b, $06                                     ; $4099: $06 $06
    ld b, $06                                     ; $409b: $06 $06
    ld b, $02                                     ; $409d: $06 $02
    ld b, $06                                     ; $409f: $06 $06
    ld [bc], a                                    ; $40a1: $02
    ld [bc], a                                    ; $40a2: $02
    ld b, $06                                     ; $40a3: $06 $06
    ld [bc], a                                    ; $40a5: $02
    ld [bc], a                                    ; $40a6: $02
    db $eb                                        ; $40a7: $eb
    db $ec                                        ; $40a8: $ec
    db $ed                                        ; $40a9: $ed
    xor $ef                                       ; $40aa: $ee $ef
    ldh a, [$f1]                                  ; $40ac: $f0 $f1
    ld a, [c]                                     ; $40ae: $f2
    pop hl                                        ; $40af: $e1
    di                                            ; $40b0: $f3
    db $f4                                        ; $40b1: $f4
    push af                                       ; $40b2: $f5
    pop hl                                        ; $40b3: $e1
    or $f7                                        ; $40b4: $f6 $f7
    ld hl, sp+$02                                 ; $40b6: $f8 $02
    ld [bc], a                                    ; $40b8: $02
    ld [bc], a                                    ; $40b9: $02
    ld [bc], a                                    ; $40ba: $02
    ld [bc], a                                    ; $40bb: $02
    ld [bc], a                                    ; $40bc: $02
    ld [bc], a                                    ; $40bd: $02
    ld [bc], a                                    ; $40be: $02
    ld [bc], a                                    ; $40bf: $02
    ld [bc], a                                    ; $40c0: $02
    ld [bc], a                                    ; $40c1: $02
    ld [bc], a                                    ; $40c2: $02
    ld [bc], a                                    ; $40c3: $02
    ld [bc], a                                    ; $40c4: $02
    ld [bc], a                                    ; $40c5: $02
    ld [bc], a                                    ; $40c6: $02
    ld sp, hl                                     ; $40c7: $f9
    ld a, [$fcfb]                                 ; $40c8: $fa $fb $fc
    db $fd                                        ; $40cb: $fd
    cp $ff                                        ; $40cc: $fe $ff
    nop                                           ; $40ce: $00
    ld bc, $0302                                  ; $40cf: $01 $02 $03
    inc b                                         ; $40d2: $04
    inc bc                                        ; $40d3: $03
    dec b                                         ; $40d4: $05
    ld b, $07                                     ; $40d5: $06 $07
    ld [bc], a                                    ; $40d7: $02
    ld [bc], a                                    ; $40d8: $02
    ld [bc], a                                    ; $40d9: $02
    ld [bc], a                                    ; $40da: $02
    ld [bc], a                                    ; $40db: $02
    ld [bc], a                                    ; $40dc: $02
    ld [bc], a                                    ; $40dd: $02
    ld [bc], a                                    ; $40de: $02
    ld [bc], a                                    ; $40df: $02
    ld [bc], a                                    ; $40e0: $02
    inc b                                         ; $40e1: $04
    inc b                                         ; $40e2: $04
    inc b                                         ; $40e3: $04
    inc b                                         ; $40e4: $04
    inc b                                         ; $40e5: $04
    inc b                                         ; $40e6: $04
    pop de                                        ; $40e7: $d1
    pop de                                        ; $40e8: $d1
    pop de                                        ; $40e9: $d1
    pop de                                        ; $40ea: $d1
    pop de                                        ; $40eb: $d1
    pop de                                        ; $40ec: $d1
    pop de                                        ; $40ed: $d1
    pop de                                        ; $40ee: $d1
    pop de                                        ; $40ef: $d1
    pop de                                        ; $40f0: $d1
    pop de                                        ; $40f1: $d1
    pop de                                        ; $40f2: $d1
    pop de                                        ; $40f3: $d1
    pop de                                        ; $40f4: $d1
    pop de                                        ; $40f5: $d1
    db $d3                                        ; $40f6: $d3
    ld b, $06                                     ; $40f7: $06 $06
    ld b, $06                                     ; $40f9: $06 $06
    ld b, $06                                     ; $40fb: $06 $06
    ld b, $06                                     ; $40fd: $06 $06
    ld b, $06                                     ; $40ff: $06 $06
    ld b, $06                                     ; $4101: $06 $06
    ld b, $06                                     ; $4103: $06 $06
    ld b, $02                                     ; $4105: $06 $02
    pop de                                        ; $4107: $d1
    ld [$0a09], sp                                ; $4108: $08 $09 $0a
    dec bc                                        ; $410b: $0b
    inc c                                         ; $410c: $0c
    dec c                                         ; $410d: $0d
    ld c, $0f                                     ; $410e: $0e $0f
    db $10                                        ; $4110: $10
    ld de, $1312                                  ; $4111: $11 $12 $13
    pop hl                                        ; $4114: $e1
    inc d                                         ; $4115: $14
    dec d                                         ; $4116: $15
    ld b, $02                                     ; $4117: $06 $02
    ld [bc], a                                    ; $4119: $02
    ld [bc], a                                    ; $411a: $02
    ld [bc], a                                    ; $411b: $02
    ld [bc], a                                    ; $411c: $02
    ld [bc], a                                    ; $411d: $02
    ld [bc], a                                    ; $411e: $02
    ld [bc], a                                    ; $411f: $02
    ld [bc], a                                    ; $4120: $02
    ld [bc], a                                    ; $4121: $02
    ld [bc], a                                    ; $4122: $02
    ld [bc], a                                    ; $4123: $02
    ld [bc], a                                    ; $4124: $02
    ld [bc], a                                    ; $4125: $02
    ld [bc], a                                    ; $4126: $02
    ld d, $17                                     ; $4127: $16 $17
    jr jr_088_412e                                ; $4129: $18 $03

    add hl, de                                    ; $412b: $19
    ld a, [de]                                    ; $412c: $1a
    inc bc                                        ; $412d: $03

jr_088_412e:
    dec de                                        ; $412e: $1b
    ld a, [de]                                    ; $412f: $1a
    inc e                                         ; $4130: $1c
    dec e                                         ; $4131: $1d
    ld e, $1f                                     ; $4132: $1e $1f
    jr nz, jr_088_4157                            ; $4134: $20 $21

    ld [hl+], a                                   ; $4136: $22
    ld [bc], a                                    ; $4137: $02
    ld [bc], a                                    ; $4138: $02
    ld [bc], a                                    ; $4139: $02
    inc b                                         ; $413a: $04
    ld [bc], a                                    ; $413b: $02
    ld [bc], a                                    ; $413c: $02
    inc b                                         ; $413d: $04
    inc b                                         ; $413e: $04
    ld [bc], a                                    ; $413f: $02
    inc b                                         ; $4140: $04
    inc b                                         ; $4141: $04
    rlca                                          ; $4142: $07
    inc b                                         ; $4143: $04
    add d                                         ; $4144: $82
    inc b                                         ; $4145: $04
    rlca                                          ; $4146: $07
    inc hl                                        ; $4147: $23
    inc h                                         ; $4148: $24
    dec h                                         ; $4149: $25
    ld h, $27                                     ; $414a: $26 $27
    jr z, jr_088_4177                             ; $414c: $28 $29

    ld a, [hl+]                                   ; $414e: $2a
    dec hl                                        ; $414f: $2b
    inc l                                         ; $4150: $2c
    dec l                                         ; $4151: $2d
    ld l, $2f                                     ; $4152: $2e $2f
    jr nc, jr_088_4187                            ; $4154: $30 $31

    ld [hl-], a                                   ; $4156: $32

jr_088_4157:
    inc b                                         ; $4157: $04
    inc b                                         ; $4158: $04
    inc b                                         ; $4159: $04
    inc b                                         ; $415a: $04
    inc b                                         ; $415b: $04
    inc b                                         ; $415c: $04
    rlca                                          ; $415d: $07
    rlca                                          ; $415e: $07
    rlca                                          ; $415f: $07
    inc b                                         ; $4160: $04
    rlca                                          ; $4161: $07
    inc b                                         ; $4162: $04
    inc b                                         ; $4163: $04
    rlca                                          ; $4164: $07
    inc b                                         ; $4165: $04
    inc b                                         ; $4166: $04
    pop de                                        ; $4167: $d1
    pop de                                        ; $4168: $d1
    pop de                                        ; $4169: $d1
    pop de                                        ; $416a: $d1
    pop de                                        ; $416b: $d1
    pop de                                        ; $416c: $d1
    pop de                                        ; $416d: $d1
    pop de                                        ; $416e: $d1
    pop de                                        ; $416f: $d1
    pop de                                        ; $4170: $d1
    pop de                                        ; $4171: $d1
    inc sp                                        ; $4172: $33
    inc [hl]                                      ; $4173: $34
    dec [hl]                                      ; $4174: $35
    ld [hl], $37                                  ; $4175: $36 $37

jr_088_4177:
    ld b, $06                                     ; $4177: $06 $06
    ld b, $06                                     ; $4179: $06 $06
    ld b, $06                                     ; $417b: $06 $06
    ld b, $06                                     ; $417d: $06 $06
    ld b, $06                                     ; $417f: $06 $06
    ld b, $02                                     ; $4181: $06 $02
    ld [bc], a                                    ; $4183: $02
    ld [bc], a                                    ; $4184: $02
    ld [bc], a                                    ; $4185: $02
    ld [bc], a                                    ; $4186: $02

jr_088_4187:
    pop de                                        ; $4187: $d1
    pop de                                        ; $4188: $d1
    pop de                                        ; $4189: $d1
    pop de                                        ; $418a: $d1
    pop de                                        ; $418b: $d1
    pop de                                        ; $418c: $d1
    pop de                                        ; $418d: $d1
    pop de                                        ; $418e: $d1
    jr c, jr_088_41ca                             ; $418f: $38 $39

    ld a, [hl-]                                   ; $4191: $3a
    ld a, [hl-]                                   ; $4192: $3a
    dec sp                                        ; $4193: $3b
    inc a                                         ; $4194: $3c
    dec a                                         ; $4195: $3d
    ld a, $06                                     ; $4196: $3e $06
    ld b, $06                                     ; $4198: $06 $06
    ld b, $06                                     ; $419a: $06 $06
    ld b, $06                                     ; $419c: $06 $06
    ld b, $02                                     ; $419e: $06 $02
    ld [bc], a                                    ; $41a0: $02
    ld [bc], a                                    ; $41a1: $02
    ld [bc], a                                    ; $41a2: $02
    ld [bc], a                                    ; $41a3: $02
    ld [bc], a                                    ; $41a4: $02
    ld [bc], a                                    ; $41a5: $02
    ld [bc], a                                    ; $41a6: $02
    pop de                                        ; $41a7: $d1
    pop de                                        ; $41a8: $d1
    pop de                                        ; $41a9: $d1
    pop de                                        ; $41aa: $d1
    pop de                                        ; $41ab: $d1
    pop de                                        ; $41ac: $d1
    pop de                                        ; $41ad: $d1
    pop de                                        ; $41ae: $d1
    ld a, [hl-]                                   ; $41af: $3a
    ld a, [hl-]                                   ; $41b0: $3a
    add hl, sp                                    ; $41b1: $39
    jr c, jr_088_41f2                             ; $41b2: $38 $3e

    ccf                                           ; $41b4: $3f
    inc a                                         ; $41b5: $3c
    dec sp                                        ; $41b6: $3b
    ld b, $06                                     ; $41b7: $06 $06
    ld b, $06                                     ; $41b9: $06 $06
    ld b, $06                                     ; $41bb: $06 $06
    ld b, $06                                     ; $41bd: $06 $06
    ld [bc], a                                    ; $41bf: $02
    ld [hl+], a                                   ; $41c0: $22
    ld [hl+], a                                   ; $41c1: $22
    ld [hl+], a                                   ; $41c2: $22
    ld [bc], a                                    ; $41c3: $02
    ld [bc], a                                    ; $41c4: $02
    ld [hl+], a                                   ; $41c5: $22
    ld [hl+], a                                   ; $41c6: $22
    pop de                                        ; $41c7: $d1
    pop de                                        ; $41c8: $d1
    pop de                                        ; $41c9: $d1

jr_088_41ca:
    pop de                                        ; $41ca: $d1
    pop de                                        ; $41cb: $d1
    pop de                                        ; $41cc: $d1
    pop de                                        ; $41cd: $d1
    pop de                                        ; $41ce: $d1
    inc sp                                        ; $41cf: $33
    pop de                                        ; $41d0: $d1
    pop de                                        ; $41d1: $d1
    pop de                                        ; $41d2: $d1
    scf                                           ; $41d3: $37
    ld [hl], $35                                  ; $41d4: $36 $35
    inc [hl]                                      ; $41d6: $34
    ld b, $06                                     ; $41d7: $06 $06
    ld b, $06                                     ; $41d9: $06 $06
    ld b, $06                                     ; $41db: $06 $06
    ld b, $06                                     ; $41dd: $06 $06
    ld [hl+], a                                   ; $41df: $22
    ld b, $06                                     ; $41e0: $06 $06
    ld b, $22                                     ; $41e2: $06 $22
    ld [hl+], a                                   ; $41e4: $22
    ld [hl+], a                                   ; $41e5: $22
    ld [hl+], a                                   ; $41e6: $22
    ld b, b                                       ; $41e7: $40
    ld b, c                                       ; $41e8: $41
    pop hl                                        ; $41e9: $e1
    pop hl                                        ; $41ea: $e1
    ld b, d                                       ; $41eb: $42
    ld b, e                                       ; $41ec: $43
    pop hl                                        ; $41ed: $e1
    pop hl                                        ; $41ee: $e1
    ld b, h                                       ; $41ef: $44
    ld b, l                                       ; $41f0: $45
    pop hl                                        ; $41f1: $e1

jr_088_41f2:
    pop hl                                        ; $41f2: $e1
    ld b, [hl]                                    ; $41f3: $46
    ld b, a                                       ; $41f4: $47
    ld c, b                                       ; $41f5: $48
    ld c, c                                       ; $41f6: $49
    ld [bc], a                                    ; $41f7: $02
    ld [bc], a                                    ; $41f8: $02
    ld [bc], a                                    ; $41f9: $02
    ld [bc], a                                    ; $41fa: $02
    ld [bc], a                                    ; $41fb: $02
    ld [bc], a                                    ; $41fc: $02
    ld [bc], a                                    ; $41fd: $02
    ld [bc], a                                    ; $41fe: $02
    ld [bc], a                                    ; $41ff: $02
    ld [bc], a                                    ; $4200: $02
    ld [bc], a                                    ; $4201: $02
    ld [bc], a                                    ; $4202: $02
    ld [bc], a                                    ; $4203: $02
    ld [bc], a                                    ; $4204: $02
    ld [bc], a                                    ; $4205: $02
    ld [bc], a                                    ; $4206: $02
    pop hl                                        ; $4207: $e1
    pop hl                                        ; $4208: $e1
    ld c, d                                       ; $4209: $4a
    pop hl                                        ; $420a: $e1
    pop hl                                        ; $420b: $e1
    pop hl                                        ; $420c: $e1
    ld c, e                                       ; $420d: $4b
    pop hl                                        ; $420e: $e1
    ld c, h                                       ; $420f: $4c
    ld c, l                                       ; $4210: $4d
    ld c, [hl]                                    ; $4211: $4e
    ld c, a                                       ; $4212: $4f
    ld d, b                                       ; $4213: $50
    ld d, c                                       ; $4214: $51
    ld d, d                                       ; $4215: $52
    ld d, e                                       ; $4216: $53
    ld [bc], a                                    ; $4217: $02
    ld [bc], a                                    ; $4218: $02
    ld [bc], a                                    ; $4219: $02
    ld [bc], a                                    ; $421a: $02
    ld [bc], a                                    ; $421b: $02
    ld [bc], a                                    ; $421c: $02
    ld [bc], a                                    ; $421d: $02
    ld [bc], a                                    ; $421e: $02
    ld [bc], a                                    ; $421f: $02
    ld [bc], a                                    ; $4220: $02
    ld [bc], a                                    ; $4221: $02
    ld [bc], a                                    ; $4222: $02
    ld bc, $0301                                  ; $4223: $01 $01 $03
    inc bc                                        ; $4226: $03
    pop hl                                        ; $4227: $e1
    ld d, h                                       ; $4228: $54
    ld d, l                                       ; $4229: $55
    pop hl                                        ; $422a: $e1
    pop hl                                        ; $422b: $e1
    ld d, [hl]                                    ; $422c: $56
    ld d, l                                       ; $422d: $55
    pop hl                                        ; $422e: $e1
    ld d, a                                       ; $422f: $57
    ld e, b                                       ; $4230: $58
    ld e, c                                       ; $4231: $59
    ld c, h                                       ; $4232: $4c
    ld d, e                                       ; $4233: $53
    ld e, d                                       ; $4234: $5a
    ld e, e                                       ; $4235: $5b
    ld e, h                                       ; $4236: $5c
    ld [bc], a                                    ; $4237: $02
    ld [bc], a                                    ; $4238: $02
    ld [bc], a                                    ; $4239: $02
    ld [bc], a                                    ; $423a: $02
    ld [bc], a                                    ; $423b: $02
    ld [bc], a                                    ; $423c: $02
    ld [bc], a                                    ; $423d: $02
    ld [bc], a                                    ; $423e: $02
    ld [bc], a                                    ; $423f: $02
    ld [bc], a                                    ; $4240: $02
    ld [bc], a                                    ; $4241: $02
    ld [hl+], a                                   ; $4242: $22
    inc hl                                        ; $4243: $23
    inc bc                                        ; $4244: $03
    ld [bc], a                                    ; $4245: $02
    ld [bc], a                                    ; $4246: $02
    ld e, l                                       ; $4247: $5d
    ld e, [hl]                                    ; $4248: $5e
    ld b, c                                       ; $4249: $41
    ld b, b                                       ; $424a: $40
    ld e, a                                       ; $424b: $5f
    ld h, b                                       ; $424c: $60
    ld h, c                                       ; $424d: $61
    pop hl                                        ; $424e: $e1
    ld h, d                                       ; $424f: $62
    ld h, e                                       ; $4250: $63
    ld h, h                                       ; $4251: $64
    pop hl                                        ; $4252: $e1
    ld h, l                                       ; $4253: $65
    ld h, [hl]                                    ; $4254: $66
    ld h, a                                       ; $4255: $67
    ld l, b                                       ; $4256: $68
    ld [bc], a                                    ; $4257: $02
    ld [bc], a                                    ; $4258: $02
    ld [hl+], a                                   ; $4259: $22
    ld [hl+], a                                   ; $425a: $22
    ld [bc], a                                    ; $425b: $02
    ld [bc], a                                    ; $425c: $02
    ld [bc], a                                    ; $425d: $02
    ld [bc], a                                    ; $425e: $02
    ld [bc], a                                    ; $425f: $02
    ld [bc], a                                    ; $4260: $02
    ld [bc], a                                    ; $4261: $02
    ld [bc], a                                    ; $4262: $02
    ld [bc], a                                    ; $4263: $02
    ld [bc], a                                    ; $4264: $02
    ld [bc], a                                    ; $4265: $02
    ld [bc], a                                    ; $4266: $02
    ld l, c                                       ; $4267: $69
    ld l, d                                       ; $4268: $6a
    ld l, e                                       ; $4269: $6b
    inc bc                                        ; $426a: $03
    inc bc                                        ; $426b: $03
    ld l, h                                       ; $426c: $6c
    ld l, l                                       ; $426d: $6d
    jr nc, jr_088_42de                            ; $426e: $30 $6e

    ld l, a                                       ; $4270: $6f
    ld [hl], b                                    ; $4271: $70
    ld [hl], c                                    ; $4272: $71
    ld [hl], d                                    ; $4273: $72
    ld [hl], e                                    ; $4274: $73
    ld [hl], h                                    ; $4275: $74
    ld [hl], l                                    ; $4276: $75
    ld [bc], a                                    ; $4277: $02
    ld [bc], a                                    ; $4278: $02
    ld [bc], a                                    ; $4279: $02
    inc b                                         ; $427a: $04
    inc b                                         ; $427b: $04
    inc b                                         ; $427c: $04
    inc b                                         ; $427d: $04
    inc b                                         ; $427e: $04
    inc b                                         ; $427f: $04
    inc b                                         ; $4280: $04
    inc b                                         ; $4281: $04
    inc b                                         ; $4282: $04
    inc b                                         ; $4283: $04
    rlca                                          ; $4284: $07
    inc b                                         ; $4285: $04
    rlca                                          ; $4286: $07
    halt                                          ; $4287: $76
    ld [hl], a                                    ; $4288: $77
    ld a, b                                       ; $4289: $78
    ld a, c                                       ; $428a: $79
    ld a, d                                       ; $428b: $7a
    ld a, d                                       ; $428c: $7a
    ld a, e                                       ; $428d: $7b
    ld a, h                                       ; $428e: $7c
    ld a, l                                       ; $428f: $7d
    ld a, [hl]                                    ; $4290: $7e
    ld a, a                                       ; $4291: $7f
    add b                                         ; $4292: $80
    ld b, $07                                     ; $4293: $06 $07
    add c                                         ; $4295: $81
    add d                                         ; $4296: $82
    ld bc, $0301                                  ; $4297: $01 $01 $03
    inc bc                                        ; $429a: $03
    ld bc, $0321                                  ; $429b: $01 $21 $03
    inc bc                                        ; $429e: $03
    inc b                                         ; $429f: $04
    inc b                                         ; $42a0: $04
    inc bc                                        ; $42a1: $03
    dec bc                                        ; $42a2: $0b
    inc b                                         ; $42a3: $04
    rlca                                          ; $42a4: $07
    dec bc                                        ; $42a5: $0b
    dec bc                                        ; $42a6: $0b
    add e                                         ; $42a7: $83
    add h                                         ; $42a8: $84
    dec l                                         ; $42a9: $2d
    inc e                                         ; $42aa: $1c
    add l                                         ; $42ab: $85
    add [hl]                                      ; $42ac: $86
    ld sp, $e132                                  ; $42ad: $31 $32 $e1
    add a                                         ; $42b0: $87
    ld a, l                                       ; $42b1: $7d
    ld a, [hl]                                    ; $42b2: $7e
    pop hl                                        ; $42b3: $e1
    adc b                                         ; $42b4: $88
    ld b, $07                                     ; $42b5: $06 $07
    dec bc                                        ; $42b7: $0b
    dec bc                                        ; $42b8: $0b
    inc b                                         ; $42b9: $04
    inc b                                         ; $42ba: $04
    dec bc                                        ; $42bb: $0b
    dec bc                                        ; $42bc: $0b
    inc b                                         ; $42bd: $04
    inc b                                         ; $42be: $04
    inc bc                                        ; $42bf: $03
    dec bc                                        ; $42c0: $0b
    inc b                                         ; $42c1: $04
    rlca                                          ; $42c2: $07
    inc bc                                        ; $42c3: $03
    dec bc                                        ; $42c4: $0b
    inc b                                         ; $42c5: $04
    inc b                                         ; $42c6: $04
    inc bc                                        ; $42c7: $03
    ld l, e                                       ; $42c8: $6b
    ld l, d                                       ; $42c9: $6a
    ld l, c                                       ; $42ca: $69
    ld hl, $6d6c                                  ; $42cb: $21 $6c $6d
    inc bc                                        ; $42ce: $03
    ld l, [hl]                                    ; $42cf: $6e
    ld l, a                                       ; $42d0: $6f
    ld [hl], b                                    ; $42d1: $70
    ld [hl], c                                    ; $42d2: $71
    ld [hl], d                                    ; $42d3: $72
    ld [hl], e                                    ; $42d4: $73
    ld [hl], h                                    ; $42d5: $74
    ld [hl], l                                    ; $42d6: $75
    inc b                                         ; $42d7: $04
    ld [hl+], a                                   ; $42d8: $22
    ld [hl+], a                                   ; $42d9: $22
    ld [hl+], a                                   ; $42da: $22
    inc b                                         ; $42db: $04
    inc b                                         ; $42dc: $04
    inc b                                         ; $42dd: $04

jr_088_42de:
    inc b                                         ; $42de: $04
    inc b                                         ; $42df: $04
    inc b                                         ; $42e0: $04
    rlca                                          ; $42e1: $07
    inc b                                         ; $42e2: $04
    rlca                                          ; $42e3: $07
    rlca                                          ; $42e4: $07
    inc b                                         ; $42e5: $04
    inc b                                         ; $42e6: $04
    adc c                                         ; $42e7: $89
    adc d                                         ; $42e8: $8a
    adc e                                         ; $42e9: $8b
    inc h                                         ; $42ea: $24
    adc h                                         ; $42eb: $8c
    adc l                                         ; $42ec: $8d
    daa                                           ; $42ed: $27
    jr z, jr_088_430d                             ; $42ee: $28 $1d

    ld e, $2b                                     ; $42f0: $1e $2b
    inc l                                         ; $42f2: $2c
    ld hl, $2f22                                  ; $42f3: $21 $22 $2f
    jr nc, jr_088_4307                            ; $42f6: $30 $0f

    inc c                                         ; $42f8: $0c
    inc c                                         ; $42f9: $0c
    inc b                                         ; $42fa: $04
    inc c                                         ; $42fb: $0c
    rrca                                          ; $42fc: $0f
    inc b                                         ; $42fd: $04
    rlca                                          ; $42fe: $07
    inc b                                         ; $42ff: $04
    inc b                                         ; $4300: $04
    rlca                                          ; $4301: $07
    inc b                                         ; $4302: $04
    rlca                                          ; $4303: $07
    inc b                                         ; $4304: $04
    inc b                                         ; $4305: $04
    inc b                                         ; $4306: $04

jr_088_4307:
    dec h                                         ; $4307: $25
    ld h, $8e                                     ; $4308: $26 $8e
    adc a                                         ; $430a: $8f
    add hl, hl                                    ; $430b: $29
    ld a, [hl+]                                   ; $430c: $2a

jr_088_430d:
    sub b                                         ; $430d: $90
    sub c                                         ; $430e: $91
    dec l                                         ; $430f: $2d
    ld l, $92                                     ; $4310: $2e $92
    sub e                                         ; $4312: $93
    ld sp, $9432                                  ; $4313: $31 $32 $94
    sub l                                         ; $4316: $95
    rlca                                          ; $4317: $07
    rlca                                          ; $4318: $07
    dec bc                                        ; $4319: $0b
    dec bc                                        ; $431a: $0b
    rlca                                          ; $431b: $07
    inc b                                         ; $431c: $04
    dec bc                                        ; $431d: $0b
    dec bc                                        ; $431e: $0b
    inc b                                         ; $431f: $04
    inc b                                         ; $4320: $04
    add hl, bc                                    ; $4321: $09
    add hl, bc                                    ; $4322: $09
    rlca                                          ; $4323: $07
    inc b                                         ; $4324: $04
    add hl, bc                                    ; $4325: $09
    add hl, bc                                    ; $4326: $09
    sub [hl]                                      ; $4327: $96
    sub a                                         ; $4328: $97
    dec h                                         ; $4329: $25
    ld h, $91                                     ; $432a: $26 $91
    sbc b                                         ; $432c: $98
    add hl, hl                                    ; $432d: $29
    ld a, [hl+]                                   ; $432e: $2a
    sbc c                                         ; $432f: $99
    sbc d                                         ; $4330: $9a
    dec l                                         ; $4331: $2d
    ld l, $9b                                     ; $4332: $2e $9b
    sub h                                         ; $4334: $94
    ld sp, $0b32                                  ; $4335: $31 $32 $0b
    dec bc                                        ; $4338: $0b
    inc b                                         ; $4339: $04
    rlca                                          ; $433a: $07
    dec bc                                        ; $433b: $0b
    dec bc                                        ; $433c: $0b
    inc b                                         ; $433d: $04
    rlca                                          ; $433e: $07
    add hl, bc                                    ; $433f: $09
    add hl, bc                                    ; $4340: $09
    inc b                                         ; $4341: $04
    inc b                                         ; $4342: $04
    add hl, bc                                    ; $4343: $09
    add hl, hl                                    ; $4344: $29
    inc b                                         ; $4345: $04
    rlca                                          ; $4346: $07
    adc c                                         ; $4347: $89
    adc d                                         ; $4348: $8a
    adc e                                         ; $4349: $8b
    inc h                                         ; $434a: $24
    adc h                                         ; $434b: $8c
    adc l                                         ; $434c: $8d
    daa                                           ; $434d: $27
    jr z, jr_088_436d                             ; $434e: $28 $1d

    ld e, $2b                                     ; $4350: $1e $2b
    inc l                                         ; $4352: $2c
    ld hl, $2f22                                  ; $4353: $21 $22 $2f
    jr nc, jr_088_4367                            ; $4356: $30 $0f

    inc c                                         ; $4358: $0c
    inc c                                         ; $4359: $0c
    rlca                                          ; $435a: $07
    inc c                                         ; $435b: $0c
    inc c                                         ; $435c: $0c
    rlca                                          ; $435d: $07
    inc b                                         ; $435e: $04
    inc b                                         ; $435f: $04
    rlca                                          ; $4360: $07
    inc b                                         ; $4361: $04
    inc b                                         ; $4362: $04
    rlca                                          ; $4363: $07
    inc b                                         ; $4364: $04
    inc b                                         ; $4365: $04
    rlca                                          ; $4366: $07

jr_088_4367:
    pop de                                        ; $4367: $d1
    pop de                                        ; $4368: $d1
    pop de                                        ; $4369: $d1
    pop de                                        ; $436a: $d1
    pop de                                        ; $436b: $d1
    pop de                                        ; $436c: $d1

jr_088_436d:
    pop de                                        ; $436d: $d1
    pop de                                        ; $436e: $d1
    pop de                                        ; $436f: $d1
    pop de                                        ; $4370: $d1
    pop de                                        ; $4371: $d1
    pop de                                        ; $4372: $d1
    jp nc, $d1d1                                  ; $4373: $d2 $d1 $d1

    pop de                                        ; $4376: $d1
    ld b, $06                                     ; $4377: $06 $06
    ld b, $06                                     ; $4379: $06 $06
    ld b, $06                                     ; $437b: $06 $06
    ld b, $06                                     ; $437d: $06 $06
    ld b, $06                                     ; $437f: $06 $06
    ld b, $06                                     ; $4381: $06 $06
    ld [hl+], a                                   ; $4383: $22
    ld b, $06                                     ; $4384: $06 $06
    ld b, $da                                     ; $4386: $06 $da
    reti                                          ; $4388: $d9


    jp nc, $9cd1                                  ; $4389: $d2 $d1 $9c

    sbc l                                         ; $438c: $9d
    sbc [hl]                                      ; $438d: $9e
    sbc a                                         ; $438e: $9f
    pop hl                                        ; $438f: $e1
    and b                                         ; $4390: $a0
    and c                                         ; $4391: $a1
    and d                                         ; $4392: $a2
    pop hl                                        ; $4393: $e1
    and e                                         ; $4394: $a3
    and h                                         ; $4395: $a4
    and l                                         ; $4396: $a5
    ld [hl+], a                                   ; $4397: $22
    ld [hl+], a                                   ; $4398: $22
    ld [hl+], a                                   ; $4399: $22
    ld b, $0a                                     ; $439a: $06 $0a
    ld a, [bc]                                    ; $439c: $0a
    ld a, [bc]                                    ; $439d: $0a
    dec c                                         ; $439e: $0d
    ld [bc], a                                    ; $439f: $02
    ld a, [bc]                                    ; $43a0: $0a
    ld a, [bc]                                    ; $43a1: $0a
    dec c                                         ; $43a2: $0d
    ld [bc], a                                    ; $43a3: $02
    ld a, [bc]                                    ; $43a4: $0a
    ld a, [bc]                                    ; $43a5: $0a
    dec c                                         ; $43a6: $0d
    pop de                                        ; $43a7: $d1
    pop de                                        ; $43a8: $d1
    pop de                                        ; $43a9: $d1
    pop de                                        ; $43aa: $d1
    and [hl]                                      ; $43ab: $a6
    pop de                                        ; $43ac: $d1
    pop de                                        ; $43ad: $d1
    pop de                                        ; $43ae: $d1
    and a                                         ; $43af: $a7
    xor b                                         ; $43b0: $a8
    xor c                                         ; $43b1: $a9
    pop de                                        ; $43b2: $d1
    xor d                                         ; $43b3: $aa
    xor e                                         ; $43b4: $ab
    xor h                                         ; $43b5: $ac
    xor l                                         ; $43b6: $ad
    ld b, $06                                     ; $43b7: $06 $06
    ld b, $06                                     ; $43b9: $06 $06
    dec c                                         ; $43bb: $0d
    dec b                                         ; $43bc: $05
    ld b, $06                                     ; $43bd: $06 $06
    dec c                                         ; $43bf: $0d
    dec c                                         ; $43c0: $0d
    dec c                                         ; $43c1: $0d
    ld b, $0d                                     ; $43c2: $06 $0d
    dec c                                         ; $43c4: $0d
    dec c                                         ; $43c5: $0d
    dec c                                         ; $43c6: $0d
    db $fc                                        ; $43c7: $fc
    xor [hl]                                      ; $43c8: $ae
    xor a                                         ; $43c9: $af
    or b                                          ; $43ca: $b0
    nop                                           ; $43cb: $00
    rst $38                                       ; $43cc: $ff
    or c                                          ; $43cd: $b1
    or d                                          ; $43ce: $b2
    or e                                          ; $43cf: $b3
    inc bc                                        ; $43d0: $03
    or h                                          ; $43d1: $b4
    or l                                          ; $43d2: $b5
    ld b, $b6                                     ; $43d3: $06 $b6
    inc bc                                        ; $43d5: $03
    or a                                          ; $43d6: $b7
    ld [hl+], a                                   ; $43d7: $22
    ld a, [bc]                                    ; $43d8: $0a
    ld a, [bc]                                    ; $43d9: $0a
    dec c                                         ; $43da: $0d
    ld [hl+], a                                   ; $43db: $22
    ld [hl+], a                                   ; $43dc: $22
    ld a, [bc]                                    ; $43dd: $0a
    dec c                                         ; $43de: $0d
    inc c                                         ; $43df: $0c
    inc b                                         ; $43e0: $04
    ld a, [bc]                                    ; $43e1: $0a
    dec c                                         ; $43e2: $0d
    inc b                                         ; $43e3: $04
    inc c                                         ; $43e4: $0c
    inc b                                         ; $43e5: $04
    ld a, [bc]                                    ; $43e6: $0a
    cp b                                          ; $43e7: $b8
    cp c                                          ; $43e8: $b9
    cp d                                          ; $43e9: $ba
    cp e                                          ; $43ea: $bb
    cp h                                          ; $43eb: $bc
    pop de                                        ; $43ec: $d1
    cp l                                          ; $43ed: $bd
    cp [hl]                                       ; $43ee: $be
    cp a                                          ; $43ef: $bf
    ret nz                                        ; $43f0: $c0

    pop bc                                        ; $43f1: $c1
    jp nz, $c4c3                                  ; $43f2: $c2 $c3 $c4

    push bc                                       ; $43f5: $c5
    add $0d                                       ; $43f6: $c6 $0d
    dec c                                         ; $43f8: $0d
    dec c                                         ; $43f9: $0d
    dec c                                         ; $43fa: $0d
    dec c                                         ; $43fb: $0d
    dec b                                         ; $43fc: $05
    dec c                                         ; $43fd: $0d
    dec c                                         ; $43fe: $0d
    dec c                                         ; $43ff: $0d
    dec c                                         ; $4400: $0d
    dec c                                         ; $4401: $0d
    dec c                                         ; $4402: $0d
    dec c                                         ; $4403: $0d
    dec c                                         ; $4404: $0d
    dec c                                         ; $4405: $0d
    dec c                                         ; $4406: $0d
    rst $00                                       ; $4407: $c7
    pop de                                        ; $4408: $d1
    pop de                                        ; $4409: $d1
    pop de                                        ; $440a: $d1
    ret z                                         ; $440b: $c8

    pop de                                        ; $440c: $d1
    pop de                                        ; $440d: $d1
    pop de                                        ; $440e: $d1
    ret                                           ; $440f: $c9


    rst $20                                       ; $4410: $e7
    pop de                                        ; $4411: $d1
    pop de                                        ; $4412: $d1
    jp z, $d1e9                                   ; $4413: $ca $e9 $d1

    pop de                                        ; $4416: $d1
    dec c                                         ; $4417: $0d
    ld b, $06                                     ; $4418: $06 $06
    ld b, $0a                                     ; $441a: $06 $0a
    ld b, $06                                     ; $441c: $06 $06
    ld b, $0a                                     ; $441e: $06 $0a
    ld [hl+], a                                   ; $4420: $22
    ld b, $06                                     ; $4421: $06 $06
    ld a, [bc]                                    ; $4423: $0a
    ld [hl+], a                                   ; $4424: $22
    ld b, $06                                     ; $4425: $06 $06
    dec h                                         ; $4427: $25
    ld h, $cb                                     ; $4428: $26 $cb
    inc bc                                        ; $442a: $03
    add hl, hl                                    ; $442b: $29
    ld a, [hl+]                                   ; $442c: $2a
    adc h                                         ; $442d: $8c
    dec de                                        ; $442e: $1b
    dec l                                         ; $442f: $2d
    ld l, $1d                                     ; $4430: $2e $1d
    ld e, $31                                     ; $4432: $1e $31
    ld [hl-], a                                   ; $4434: $32
    ld hl, $0422                                  ; $4435: $21 $22 $04
    inc b                                         ; $4438: $04
    inc c                                         ; $4439: $0c
    inc b                                         ; $443a: $04
    inc b                                         ; $443b: $04
    inc b                                         ; $443c: $04
    inc c                                         ; $443d: $0c
    inc b                                         ; $443e: $04
    rlca                                          ; $443f: $07
    inc b                                         ; $4440: $04
    rlca                                          ; $4441: $07
    inc b                                         ; $4442: $04
    inc b                                         ; $4443: $04
    rlca                                          ; $4444: $07
    inc b                                         ; $4445: $04
    rlca                                          ; $4446: $07
    call z, $cecd                                 ; $4447: $cc $cd $ce
    rst $08                                       ; $444a: $cf
    inc bc                                        ; $444b: $03
    ret nc                                        ; $444c: $d0

    pop de                                        ; $444d: $d1
    jp nc, $d32b                                  ; $444e: $d2 $2b $d3

    inc bc                                        ; $4451: $03
    ld a, [de]                                    ; $4452: $1a
    cpl                                           ; $4453: $2f
    jr nc, jr_088_4476                            ; $4454: $30 $20

    inc bc                                        ; $4456: $03
    ld a, [bc]                                    ; $4457: $0a
    dec c                                         ; $4458: $0d
    dec c                                         ; $4459: $0d
    dec c                                         ; $445a: $0d
    inc b                                         ; $445b: $04
    ld a, [bc]                                    ; $445c: $0a
    dec c                                         ; $445d: $0d
    dec c                                         ; $445e: $0d
    inc b                                         ; $445f: $04
    inc c                                         ; $4460: $0c
    inc b                                         ; $4461: $04
    ld [hl+], a                                   ; $4462: $22
    inc b                                         ; $4463: $04
    inc b                                         ; $4464: $04
    and d                                         ; $4465: $a2
    inc b                                         ; $4466: $04
    call nc, $d6d5                                ; $4467: $d4 $d5 $d6
    pop de                                        ; $446a: $d1
    rst $10                                       ; $446b: $d7
    pop hl                                        ; $446c: $e1
    ret c                                         ; $446d: $d8

    dec bc                                        ; $446e: $0b
    reti                                          ; $446f: $d9


    jp c, $0f10                                   ; $4470: $da $10 $0f

    dec d                                         ; $4473: $15
    inc d                                         ; $4474: $14
    pop hl                                        ; $4475: $e1

jr_088_4476:
    inc de                                        ; $4476: $13
    ld a, [bc]                                    ; $4477: $0a
    ld a, [bc]                                    ; $4478: $0a
    ld a, [bc]                                    ; $4479: $0a
    ld b, $0a                                     ; $447a: $06 $0a
    ld [bc], a                                    ; $447c: $02
    ld a, [bc]                                    ; $447d: $0a
    ld [hl+], a                                   ; $447e: $22
    ld a, [bc]                                    ; $447f: $0a
    ld a, [bc]                                    ; $4480: $0a
    ld [hl+], a                                   ; $4481: $22
    ld [hl+], a                                   ; $4482: $22
    ld [hl+], a                                   ; $4483: $22
    ld [hl+], a                                   ; $4484: $22
    ld [bc], a                                    ; $4485: $02
    ld [hl+], a                                   ; $4486: $22
    pop de                                        ; $4487: $d1
    pop de                                        ; $4488: $d1
    pop de                                        ; $4489: $d1
    pop de                                        ; $448a: $d1
    pop de                                        ; $448b: $d1
    pop de                                        ; $448c: $d1
    pop de                                        ; $448d: $d1
    pop de                                        ; $448e: $d1
    pop de                                        ; $448f: $d1
    pop de                                        ; $4490: $d1
    pop de                                        ; $4491: $d1
    pop de                                        ; $4492: $d1
    db $d3                                        ; $4493: $d3
    pop de                                        ; $4494: $d1
    pop de                                        ; $4495: $d1
    pop de                                        ; $4496: $d1
    ld b, $06                                     ; $4497: $06 $06
    ld b, $06                                     ; $4499: $06 $06
    ld b, $06                                     ; $449b: $06 $06
    ld b, $06                                     ; $449d: $06 $06
    ld b, $06                                     ; $449f: $06 $06
    ld b, $06                                     ; $44a1: $06 $06
    ld [hl+], a                                   ; $44a3: $22
    ld b, $86                                     ; $44a4: $06 $86
    add [hl]                                      ; $44a6: $86
    pop de                                        ; $44a7: $d1
    pop de                                        ; $44a8: $d1
    pop de                                        ; $44a9: $d1
    db $db                                        ; $44aa: $db
    pop de                                        ; $44ab: $d1
    pop de                                        ; $44ac: $d1
    pop de                                        ; $44ad: $d1
    call c, $d1d1                                 ; $44ae: $dc $d1 $d1
    pop de                                        ; $44b1: $d1
    db $dd                                        ; $44b2: $dd
    pop de                                        ; $44b3: $d1
    pop de                                        ; $44b4: $d1
    sbc $df                                       ; $44b5: $de $df
    ld b, $06                                     ; $44b7: $06 $06
    ld b, $0a                                     ; $44b9: $06 $0a
    ld b, $06                                     ; $44bb: $06 $06
    ld b, $0a                                     ; $44bd: $06 $0a
    ld b, $06                                     ; $44bf: $06 $06
    ld b, $0a                                     ; $44c1: $06 $0a
    ld b, $06                                     ; $44c3: $06 $06
    ld a, [bc]                                    ; $44c5: $0a
    ld a, [bc]                                    ; $44c6: $0a
    ldh [$e1], a                                  ; $44c7: $e0 $e1
    ld [c], a                                     ; $44c9: $e2
    db $e3                                        ; $44ca: $e3
    db $e4                                        ; $44cb: $e4
    push hl                                       ; $44cc: $e5
    inc bc                                        ; $44cd: $03
    dec b                                         ; $44ce: $05
    and $e7                                       ; $44cf: $e6 $e7
    add sp, -$17                                  ; $44d1: $e8 $e9
    ld [$eceb], a                                 ; $44d3: $ea $eb $ec
    pop hl                                        ; $44d6: $e1
    ld a, [bc]                                    ; $44d7: $0a
    ld a, [bc]                                    ; $44d8: $0a
    ld a, [bc]                                    ; $44d9: $0a
    inc c                                         ; $44da: $0c
    ld a, [bc]                                    ; $44db: $0a
    ld a, [bc]                                    ; $44dc: $0a
    inc b                                         ; $44dd: $04
    inc b                                         ; $44de: $04
    dec bc                                        ; $44df: $0b
    dec bc                                        ; $44e0: $0b
    dec bc                                        ; $44e1: $0b
    dec bc                                        ; $44e2: $0b
    dec bc                                        ; $44e3: $0b
    dec bc                                        ; $44e4: $0b
    dec bc                                        ; $44e5: $0b
    inc bc                                        ; $44e6: $03
    ld a, l                                       ; $44e7: $7d
    db $ed                                        ; $44e8: $ed
    xor $6f                                       ; $44e9: $ee $6f
    inc bc                                        ; $44eb: $03
    rst $28                                       ; $44ec: $ef
    inc bc                                        ; $44ed: $03
    ldh a, [$f1]                                  ; $44ee: $f0 $f1
    ld a, [c]                                     ; $44f0: $f2
    di                                            ; $44f1: $f3
    db $f4                                        ; $44f2: $f4
    pop hl                                        ; $44f3: $e1
    adc b                                         ; $44f4: $88
    push af                                       ; $44f5: $f5
    or $04                                        ; $44f6: $f6 $04
    adc d                                         ; $44f8: $8a
    inc c                                         ; $44f9: $0c
    inc b                                         ; $44fa: $04
    inc b                                         ; $44fb: $04
    adc d                                         ; $44fc: $8a
    inc b                                         ; $44fd: $04
    inc c                                         ; $44fe: $0c
    dec bc                                        ; $44ff: $0b
    dec bc                                        ; $4500: $0b
    adc c                                         ; $4501: $89
    adc c                                         ; $4502: $89
    inc bc                                        ; $4503: $03
    dec bc                                        ; $4504: $0b
    adc c                                         ; $4505: $89
    adc c                                         ; $4506: $89
    ld [hl], b                                    ; $4507: $70
    ld [hl], c                                    ; $4508: $71
    ld a, l                                       ; $4509: $7d
    ld a, [hl]                                    ; $450a: $7e
    ld [hl], h                                    ; $450b: $74
    ld [hl], l                                    ; $450c: $75
    ld b, $07                                     ; $450d: $06 $07
    adc e                                         ; $450f: $8b
    inc h                                         ; $4510: $24
    dec h                                         ; $4511: $25
    ld h, $27                                     ; $4512: $26 $27
    jr z, jr_088_453f                             ; $4514: $28 $29

    ld a, [hl+]                                   ; $4516: $2a
    inc b                                         ; $4517: $04
    rlca                                          ; $4518: $07
    inc b                                         ; $4519: $04
    inc b                                         ; $451a: $04
    inc b                                         ; $451b: $04
    inc b                                         ; $451c: $04
    inc b                                         ; $451d: $04
    rlca                                          ; $451e: $07
    inc c                                         ; $451f: $0c
    rlca                                          ; $4520: $07
    inc b                                         ; $4521: $04
    inc b                                         ; $4522: $04
    inc b                                         ; $4523: $04
    inc b                                         ; $4524: $04
    inc b                                         ; $4525: $04
    inc b                                         ; $4526: $04
    pop de                                        ; $4527: $d1
    pop de                                        ; $4528: $d1
    rst $30                                       ; $4529: $f7
    ld hl, sp-$2f                                 ; $452a: $f8 $d1
    pop de                                        ; $452c: $d1
    ld sp, hl                                     ; $452d: $f9
    ld a, [$d1d1]                                 ; $452e: $fa $d1 $d1
    ld sp, hl                                     ; $4531: $f9
    ld d, b                                       ; $4532: $50
    pop de                                        ; $4533: $d1
    pop de                                        ; $4534: $d1
    ld sp, hl                                     ; $4535: $f9
    halt                                          ; $4536: $76
    ld b, $06                                     ; $4537: $06 $06
    ld a, [bc]                                    ; $4539: $0a
    ld a, [bc]                                    ; $453a: $0a
    ld b, $06                                     ; $453b: $06 $06
    ld a, [bc]                                    ; $453d: $0a
    ld a, [bc]                                    ; $453e: $0a

jr_088_453f:
    ld b, $06                                     ; $453f: $06 $06
    ld a, [bc]                                    ; $4541: $0a
    ld bc, $0606                                  ; $4542: $01 $06 $06
    ld a, [bc]                                    ; $4545: $0a
    ld bc, $fcfb                                  ; $4546: $01 $fb $fc
    db $fd                                        ; $4549: $fd
    cp $ff                                        ; $454a: $fe $ff
    nop                                           ; $454c: $00
    ld bc, $5102                                  ; $454d: $01 $02 $51
    inc bc                                        ; $4550: $03
    inc b                                         ; $4551: $04
    dec b                                         ; $4552: $05
    ld [hl], a                                    ; $4553: $77
    ld [hl], e                                    ; $4554: $73
    ld [hl], h                                    ; $4555: $74
    ld [hl], l                                    ; $4556: $75
    dec bc                                        ; $4557: $0b
    dec bc                                        ; $4558: $0b
    dec bc                                        ; $4559: $0b
    dec bc                                        ; $455a: $0b
    dec bc                                        ; $455b: $0b
    dec bc                                        ; $455c: $0b
    dec bc                                        ; $455d: $0b
    dec bc                                        ; $455e: $0b
    ld bc, $0b0b                                  ; $455f: $01 $0b $0b
    dec bc                                        ; $4562: $0b
    ld bc, $0404                                  ; $4563: $01 $04 $04
    inc b                                         ; $4566: $04
    ld b, $07                                     ; $4567: $06 $07
    ld [$0a09], sp                                ; $4569: $08 $09 $0a
    dec bc                                        ; $456c: $0b
    inc c                                         ; $456d: $0c
    dec c                                         ; $456e: $0d
    ld c, $0f                                     ; $456f: $0e $0f
    db $10                                        ; $4571: $10
    ld de, $0706                                  ; $4572: $11 $06 $07
    ld [hl], d                                    ; $4575: $72
    ld [hl], e                                    ; $4576: $73
    dec bc                                        ; $4577: $0b
    dec bc                                        ; $4578: $0b
    add hl, bc                                    ; $4579: $09
    add hl, bc                                    ; $457a: $09
    dec bc                                        ; $457b: $0b
    dec bc                                        ; $457c: $0b
    add hl, bc                                    ; $457d: $09
    add hl, bc                                    ; $457e: $09
    dec bc                                        ; $457f: $0b
    dec bc                                        ; $4580: $0b
    add hl, bc                                    ; $4581: $09
    add hl, bc                                    ; $4582: $09
    rlca                                          ; $4583: $07
    inc b                                         ; $4584: $04
    inc b                                         ; $4585: $04
    inc b                                         ; $4586: $04
    dec hl                                        ; $4587: $2b
    inc l                                         ; $4588: $2c
    dec l                                         ; $4589: $2d
    ld l, $2f                                     ; $458a: $2e $2f
    jr nc, jr_088_45bf                            ; $458c: $30 $31

    ld [hl-], a                                   ; $458e: $32
    ld [hl], b                                    ; $458f: $70
    ld [hl], c                                    ; $4590: $71
    ld a, l                                       ; $4591: $7d
    ld a, [hl]                                    ; $4592: $7e
    ld [hl], h                                    ; $4593: $74
    ld [hl], l                                    ; $4594: $75
    ld b, $07                                     ; $4595: $06 $07
    inc b                                         ; $4597: $04
    rlca                                          ; $4598: $07
    inc b                                         ; $4599: $04
    rlca                                          ; $459a: $07
    inc b                                         ; $459b: $04
    inc b                                         ; $459c: $04
    rlca                                          ; $459d: $07
    rlca                                          ; $459e: $07
    inc b                                         ; $459f: $04
    inc b                                         ; $45a0: $04
    rlca                                          ; $45a1: $07
    inc b                                         ; $45a2: $04
    rlca                                          ; $45a3: $07
    inc b                                         ; $45a4: $04
    rlca                                          ; $45a5: $07
    inc b                                         ; $45a6: $04
    pop de                                        ; $45a7: $d1
    pop de                                        ; $45a8: $d1
    ld [de], a                                    ; $45a9: $12
    ld a, d                                       ; $45aa: $7a
    pop de                                        ; $45ab: $d1
    pop de                                        ; $45ac: $d1
    inc de                                        ; $45ad: $13
    ld a, [hl+]                                   ; $45ae: $2a
    pop de                                        ; $45af: $d1
    pop de                                        ; $45b0: $d1
    inc d                                         ; $45b1: $14
    ld l, $d1                                     ; $45b2: $2e $d1
    pop de                                        ; $45b4: $d1
    dec d                                         ; $45b5: $15
    ld d, $06                                     ; $45b6: $16 $06
    ld b, $0a                                     ; $45b8: $06 $0a
    ld bc, $0606                                  ; $45ba: $01 $06 $06
    ld a, [bc]                                    ; $45bd: $0a
    inc b                                         ; $45be: $04

jr_088_45bf:
    ld b, $06                                     ; $45bf: $06 $06
    ld a, [bc]                                    ; $45c1: $0a
    inc b                                         ; $45c2: $04
    ld b, $06                                     ; $45c3: $06 $06
    ld a, [bc]                                    ; $45c5: $0a
    inc c                                         ; $45c6: $0c
    ld a, d                                       ; $45c7: $7a
    adc d                                         ; $45c8: $8a
    adc e                                         ; $45c9: $8b
    inc h                                         ; $45ca: $24
    adc h                                         ; $45cb: $8c
    adc l                                         ; $45cc: $8d
    daa                                           ; $45cd: $27
    jr z, jr_088_45e7                             ; $45ce: $28 $17

    ld e, $2b                                     ; $45d0: $1e $2b
    inc l                                         ; $45d2: $2c
    jr jr_088_4641                                ; $45d3: $18 $6c

    cpl                                           ; $45d5: $2f
    jr nc, jr_088_45f9                            ; $45d6: $30 $21

    inc c                                         ; $45d8: $0c
    rrca                                          ; $45d9: $0f
    rlca                                          ; $45da: $07
    inc c                                         ; $45db: $0c
    inc c                                         ; $45dc: $0c
    inc b                                         ; $45dd: $04
    rlca                                          ; $45de: $07
    inc c                                         ; $45df: $0c
    inc b                                         ; $45e0: $04
    rlca                                          ; $45e1: $07
    inc b                                         ; $45e2: $04
    adc d                                         ; $45e3: $8a
    inc b                                         ; $45e4: $04
    inc b                                         ; $45e5: $04
    inc b                                         ; $45e6: $04

jr_088_45e7:
    dec h                                         ; $45e7: $25
    ld h, $89                                     ; $45e8: $26 $89
    adc d                                         ; $45ea: $8a
    add hl, hl                                    ; $45eb: $29
    ld a, [hl+]                                   ; $45ec: $2a
    adc h                                         ; $45ed: $8c
    adc l                                         ; $45ee: $8d
    dec l                                         ; $45ef: $2d
    inc e                                         ; $45f0: $1c
    dec e                                         ; $45f1: $1d
    ld e, $1f                                     ; $45f2: $1e $1f
    jr nz, jr_088_4617                            ; $45f4: $20 $21

    ld [hl+], a                                   ; $45f6: $22
    inc b                                         ; $45f7: $04
    rlca                                          ; $45f8: $07

jr_088_45f9:
    inc c                                         ; $45f9: $0c
    rrca                                          ; $45fa: $0f
    inc b                                         ; $45fb: $04
    inc b                                         ; $45fc: $04
    inc c                                         ; $45fd: $0c
    inc c                                         ; $45fe: $0c
    inc b                                         ; $45ff: $04
    inc b                                         ; $4600: $04
    inc b                                         ; $4601: $04
    inc b                                         ; $4602: $04
    inc b                                         ; $4603: $04
    add d                                         ; $4604: $82
    inc b                                         ; $4605: $04
    inc b                                         ; $4606: $04
    adc e                                         ; $4607: $8b
    inc h                                         ; $4608: $24
    dec h                                         ; $4609: $25
    ld h, $27                                     ; $460a: $26 $27
    jr z, jr_088_4637                             ; $460c: $28 $29

    ld a, [hl+]                                   ; $460e: $2a
    dec hl                                        ; $460f: $2b
    inc l                                         ; $4610: $2c
    dec l                                         ; $4611: $2d
    ld l, $2f                                     ; $4612: $2e $2f
    jr nc, jr_088_4647                            ; $4614: $30 $31

    ld [hl-], a                                   ; $4616: $32

jr_088_4617:
    inc c                                         ; $4617: $0c
    inc b                                         ; $4618: $04
    inc b                                         ; $4619: $04
    rlca                                          ; $461a: $07
    inc b                                         ; $461b: $04
    rlca                                          ; $461c: $07
    rlca                                          ; $461d: $07
    inc b                                         ; $461e: $04
    inc b                                         ; $461f: $04
    rlca                                          ; $4620: $07
    inc b                                         ; $4621: $04
    inc b                                         ; $4622: $04
    inc b                                         ; $4623: $04
    inc b                                         ; $4624: $04
    inc b                                         ; $4625: $04
    inc b                                         ; $4626: $04
    pop de                                        ; $4627: $d1
    pop de                                        ; $4628: $d1
    pop de                                        ; $4629: $d1
    add hl, de                                    ; $462a: $19
    pop de                                        ; $462b: $d1
    pop de                                        ; $462c: $d1
    pop de                                        ; $462d: $d1
    ld a, [de]                                    ; $462e: $1a
    pop de                                        ; $462f: $d1
    pop de                                        ; $4630: $d1
    pop de                                        ; $4631: $d1
    dec de                                        ; $4632: $1b
    pop de                                        ; $4633: $d1
    pop de                                        ; $4634: $d1
    pop de                                        ; $4635: $d1
    inc e                                         ; $4636: $1c

jr_088_4637:
    ld b, $06                                     ; $4637: $06 $06
    ld b, $0a                                     ; $4639: $06 $0a
    ld b, $06                                     ; $463b: $06 $06
    ld b, $0a                                     ; $463d: $06 $0a
    add [hl]                                      ; $463f: $86
    add [hl]                                      ; $4640: $86

jr_088_4641:
    add [hl]                                      ; $4641: $86
    ld a, [bc]                                    ; $4642: $0a
    add [hl]                                      ; $4643: $86
    add [hl]                                      ; $4644: $86
    add [hl]                                      ; $4645: $86
    ld a, [bc]                                    ; $4646: $0a

jr_088_4647:
    dec e                                         ; $4647: $1d
    inc bc                                        ; $4648: $03
    ld [hl], b                                    ; $4649: $70
    db $e3                                        ; $464a: $e3
    ld e, $03                                     ; $464b: $1e $03
    rra                                           ; $464d: $1f
    inc bc                                        ; $464e: $03
    jr nz, @-$17                                  ; $464f: $20 $e7

    add sp, -$17                                  ; $4651: $e8 $e9
    ld [$eceb], a                                 ; $4653: $ea $eb $ec
    pop hl                                        ; $4656: $e1
    adc d                                         ; $4657: $8a
    inc b                                         ; $4658: $04
    inc b                                         ; $4659: $04
    inc c                                         ; $465a: $0c
    adc d                                         ; $465b: $8a
    inc b                                         ; $465c: $04
    inc c                                         ; $465d: $0c
    inc b                                         ; $465e: $04
    dec bc                                        ; $465f: $0b
    dec bc                                        ; $4660: $0b
    dec bc                                        ; $4661: $0b
    dec bc                                        ; $4662: $0b
    dec bc                                        ; $4663: $0b
    dec bc                                        ; $4664: $0b
    dec bc                                        ; $4665: $0b
    inc bc                                        ; $4666: $03
    inc bc                                        ; $4667: $03
    db $ed                                        ; $4668: $ed
    xor $6f                                       ; $4669: $ee $6f
    inc bc                                        ; $466b: $03
    rst $28                                       ; $466c: $ef
    inc bc                                        ; $466d: $03
    ldh a, [$f1]                                  ; $466e: $f0 $f1
    ld a, [c]                                     ; $4670: $f2
    di                                            ; $4671: $f3
    db $f4                                        ; $4672: $f4
    pop hl                                        ; $4673: $e1
    adc b                                         ; $4674: $88
    push af                                       ; $4675: $f5
    or $04                                        ; $4676: $f6 $04
    adc d                                         ; $4678: $8a
    inc c                                         ; $4679: $0c
    inc b                                         ; $467a: $04
    inc b                                         ; $467b: $04
    adc d                                         ; $467c: $8a
    inc b                                         ; $467d: $04
    inc c                                         ; $467e: $0c
    dec bc                                        ; $467f: $0b
    dec bc                                        ; $4680: $0b
    adc c                                         ; $4681: $89
    adc c                                         ; $4682: $89
    inc bc                                        ; $4683: $03
    dec bc                                        ; $4684: $0b
    adc c                                         ; $4685: $89
    adc c                                         ; $4686: $89
    ld [hl], b                                    ; $4687: $70
    ld [hl], c                                    ; $4688: $71
    ld a, l                                       ; $4689: $7d
    ld a, [hl]                                    ; $468a: $7e
    ld [hl], h                                    ; $468b: $74
    ld [hl], l                                    ; $468c: $75
    ld b, $07                                     ; $468d: $06 $07
    adc e                                         ; $468f: $8b
    inc h                                         ; $4690: $24
    dec h                                         ; $4691: $25
    ld h, $27                                     ; $4692: $26 $27
    jr z, jr_088_46bf                             ; $4694: $28 $29

    ld a, [hl+]                                   ; $4696: $2a
    inc b                                         ; $4697: $04
    inc b                                         ; $4698: $04
    inc b                                         ; $4699: $04
    rlca                                          ; $469a: $07
    inc b                                         ; $469b: $04
    rlca                                          ; $469c: $07
    inc b                                         ; $469d: $04
    inc b                                         ; $469e: $04
    inc c                                         ; $469f: $0c
    inc b                                         ; $46a0: $04
    inc b                                         ; $46a1: $04
    inc b                                         ; $46a2: $04
    inc b                                         ; $46a3: $04
    inc b                                         ; $46a4: $04
    inc b                                         ; $46a5: $04
    rlca                                          ; $46a6: $07
    ld l, [hl]                                    ; $46a7: $6e
    ld l, a                                       ; $46a8: $6f
    ld [hl], b                                    ; $46a9: $70
    ld [hl], c                                    ; $46aa: $71
    ld [hl], d                                    ; $46ab: $72
    ld [hl], e                                    ; $46ac: $73
    ld [hl], h                                    ; $46ad: $74
    ld [hl], l                                    ; $46ae: $75
    adc c                                         ; $46af: $89
    adc d                                         ; $46b0: $8a
    adc e                                         ; $46b1: $8b
    inc h                                         ; $46b2: $24
    adc h                                         ; $46b3: $8c
    adc l                                         ; $46b4: $8d
    daa                                           ; $46b5: $27
    jr z, jr_088_46bf                             ; $46b6: $28 $07

    inc b                                         ; $46b8: $04
    inc b                                         ; $46b9: $04
    rlca                                          ; $46ba: $07
    inc b                                         ; $46bb: $04
    rlca                                          ; $46bc: $07
    inc b                                         ; $46bd: $04
    inc b                                         ; $46be: $04

jr_088_46bf:
    inc c                                         ; $46bf: $0c
    inc c                                         ; $46c0: $0c
    inc c                                         ; $46c1: $0c
    inc b                                         ; $46c2: $04
    inc c                                         ; $46c3: $0c
    rrca                                          ; $46c4: $0f
    rlca                                          ; $46c5: $07
    rlca                                          ; $46c6: $07
    ld a, l                                       ; $46c7: $7d
    ld a, [hl]                                    ; $46c8: $7e
    ld hl, $0622                                  ; $46c9: $21 $22 $06
    rlca                                          ; $46cc: $07
    ld [hl], d                                    ; $46cd: $72
    ld [hl], e                                    ; $46ce: $73
    dec h                                         ; $46cf: $25
    ld h, $89                                     ; $46d0: $26 $89
    adc d                                         ; $46d2: $8a
    add hl, hl                                    ; $46d3: $29
    ld a, [hl+]                                   ; $46d4: $2a
    adc h                                         ; $46d5: $8c
    adc l                                         ; $46d6: $8d
    inc b                                         ; $46d7: $04
    inc b                                         ; $46d8: $04
    add hl, bc                                    ; $46d9: $09
    add hl, bc                                    ; $46da: $09
    inc b                                         ; $46db: $04
    rlca                                          ; $46dc: $07
    inc b                                         ; $46dd: $04
    inc b                                         ; $46de: $04
    rlca                                          ; $46df: $07
    inc b                                         ; $46e0: $04
    inc c                                         ; $46e1: $0c
    inc c                                         ; $46e2: $0c
    inc b                                         ; $46e3: $04
    inc b                                         ; $46e4: $04
    rrca                                          ; $46e5: $0f
    inc c                                         ; $46e6: $0c
    inc hl                                        ; $46e7: $23
    inc h                                         ; $46e8: $24
    ld a, l                                       ; $46e9: $7d
    ld a, [hl]                                    ; $46ea: $7e
    ld [hl], h                                    ; $46eb: $74
    ld [hl], l                                    ; $46ec: $75
    ld b, $07                                     ; $46ed: $06 $07
    adc e                                         ; $46ef: $8b
    inc h                                         ; $46f0: $24
    dec h                                         ; $46f1: $25
    ld h, $27                                     ; $46f2: $26 $27
    jr z, jr_088_471f                             ; $46f4: $28 $29

    ld a, [hl+]                                   ; $46f6: $2a
    add hl, bc                                    ; $46f7: $09
    add hl, bc                                    ; $46f8: $09
    inc b                                         ; $46f9: $04
    inc b                                         ; $46fa: $04
    inc b                                         ; $46fb: $04
    rlca                                          ; $46fc: $07
    inc b                                         ; $46fd: $04
    inc b                                         ; $46fe: $04
    rrca                                          ; $46ff: $0f
    inc b                                         ; $4700: $04
    inc b                                         ; $4701: $04
    rlca                                          ; $4702: $07
    inc b                                         ; $4703: $04
    inc b                                         ; $4704: $04
    inc b                                         ; $4705: $04
    inc b                                         ; $4706: $04
    ld l, [hl]                                    ; $4707: $6e
    ld l, a                                       ; $4708: $6f
    ld [hl], b                                    ; $4709: $70
    ld [hl], c                                    ; $470a: $71
    ld [hl], d                                    ; $470b: $72
    ld [hl], e                                    ; $470c: $73
    ld [hl], h                                    ; $470d: $74
    ld [hl], l                                    ; $470e: $75
    adc c                                         ; $470f: $89
    adc d                                         ; $4710: $8a
    adc e                                         ; $4711: $8b
    inc h                                         ; $4712: $24
    adc h                                         ; $4713: $8c
    adc l                                         ; $4714: $8d
    daa                                           ; $4715: $27
    jr z, jr_088_471c                             ; $4716: $28 $04

    inc b                                         ; $4718: $04
    rlca                                          ; $4719: $07
    inc b                                         ; $471a: $04
    inc b                                         ; $471b: $04

jr_088_471c:
    inc b                                         ; $471c: $04
    rlca                                          ; $471d: $07
    inc b                                         ; $471e: $04

jr_088_471f:
    inc c                                         ; $471f: $0c
    inc c                                         ; $4720: $0c
    inc c                                         ; $4721: $0c
    rlca                                          ; $4722: $07
    inc c                                         ; $4723: $0c
    inc c                                         ; $4724: $0c
    inc b                                         ; $4725: $04
    inc b                                         ; $4726: $04
    dec e                                         ; $4727: $1d
    ld e, $2b                                     ; $4728: $1e $2b
    inc l                                         ; $472a: $2c
    ld hl, $2f22                                  ; $472b: $21 $22 $2f
    jr nc, jr_088_479e                            ; $472e: $30 $6e

    ld l, a                                       ; $4730: $6f
    ld [hl], b                                    ; $4731: $70
    ld [hl], c                                    ; $4732: $71
    ld [hl], d                                    ; $4733: $72
    ld [hl], e                                    ; $4734: $73
    ld [hl], h                                    ; $4735: $74
    ld [hl], l                                    ; $4736: $75
    inc b                                         ; $4737: $04
    inc b                                         ; $4738: $04
    rlca                                          ; $4739: $07
    inc b                                         ; $473a: $04
    inc b                                         ; $473b: $04
    rlca                                          ; $473c: $07
    inc b                                         ; $473d: $04
    inc b                                         ; $473e: $04
    inc b                                         ; $473f: $04
    rlca                                          ; $4740: $07
    inc b                                         ; $4741: $04
    inc b                                         ; $4742: $04
    rlca                                          ; $4743: $07
    rlca                                          ; $4744: $07
    inc b                                         ; $4745: $04
    inc b                                         ; $4746: $04
    dec l                                         ; $4747: $2d
    ld l, $1d                                     ; $4748: $2e $1d
    ld e, $31                                     ; $474a: $1e $31
    ld [hl-], a                                   ; $474c: $32
    ld hl, $7d22                                  ; $474d: $21 $22 $7d
    ld a, [hl]                                    ; $4750: $7e
    ld l, [hl]                                    ; $4751: $6e
    ld l, a                                       ; $4752: $6f
    ld b, $07                                     ; $4753: $06 $07
    ld [hl], d                                    ; $4755: $72
    ld [hl], e                                    ; $4756: $73
    inc b                                         ; $4757: $04
    inc b                                         ; $4758: $04
    inc b                                         ; $4759: $04
    rlca                                          ; $475a: $07
    inc b                                         ; $475b: $04
    rlca                                          ; $475c: $07
    rlca                                          ; $475d: $07
    rlca                                          ; $475e: $07
    rlca                                          ; $475f: $07
    inc b                                         ; $4760: $04
    inc b                                         ; $4761: $04
    inc b                                         ; $4762: $04
    inc b                                         ; $4763: $04
    inc b                                         ; $4764: $04
    inc b                                         ; $4765: $04
    inc b                                         ; $4766: $04
    dec hl                                        ; $4767: $2b
    inc l                                         ; $4768: $2c
    dec l                                         ; $4769: $2d
    ld l, $2f                                     ; $476a: $2e $2f
    jr nc, jr_088_479f                            ; $476c: $30 $31

    ld [hl-], a                                   ; $476e: $32
    ld [hl], b                                    ; $476f: $70
    ld [hl], c                                    ; $4770: $71
    ld a, l                                       ; $4771: $7d
    ld a, [hl]                                    ; $4772: $7e
    ld [hl], h                                    ; $4773: $74
    ld [hl], l                                    ; $4774: $75
    ld b, $07                                     ; $4775: $06 $07
    rlca                                          ; $4777: $07
    inc b                                         ; $4778: $04
    inc b                                         ; $4779: $04
    inc b                                         ; $477a: $04
    inc b                                         ; $477b: $04
    inc b                                         ; $477c: $04
    inc b                                         ; $477d: $04
    inc b                                         ; $477e: $04
    inc b                                         ; $477f: $04
    inc b                                         ; $4780: $04
    rlca                                          ; $4781: $07
    rlca                                          ; $4782: $07
    inc b                                         ; $4783: $04
    rlca                                          ; $4784: $07
    inc b                                         ; $4785: $04
    rlca                                          ; $4786: $07
    dec e                                         ; $4787: $1d
    ld e, $2b                                     ; $4788: $1e $2b
    inc l                                         ; $478a: $2c
    ld hl, $2f22                                  ; $478b: $21 $22 $2f
    jr nc, jr_088_47fe                            ; $478e: $30 $6e

    ld l, a                                       ; $4790: $6f
    ld [hl], b                                    ; $4791: $70
    ld [hl], c                                    ; $4792: $71
    ld [hl], d                                    ; $4793: $72
    ld [hl], e                                    ; $4794: $73
    ld [hl], h                                    ; $4795: $74
    ld [hl], l                                    ; $4796: $75
    inc b                                         ; $4797: $04
    rlca                                          ; $4798: $07
    rlca                                          ; $4799: $07
    inc b                                         ; $479a: $04
    inc b                                         ; $479b: $04
    inc b                                         ; $479c: $04
    inc b                                         ; $479d: $04

jr_088_479e:
    rlca                                          ; $479e: $07

jr_088_479f:
    rlca                                          ; $479f: $07
    inc b                                         ; $47a0: $04
    rlca                                          ; $47a1: $07
    inc b                                         ; $47a2: $04
    inc b                                         ; $47a3: $04
    inc b                                         ; $47a4: $04
    inc b                                         ; $47a5: $04
    rlca                                          ; $47a6: $07
    adc c                                         ; $47a7: $89
    adc d                                         ; $47a8: $8a
    adc e                                         ; $47a9: $8b
    inc h                                         ; $47aa: $24
    adc h                                         ; $47ab: $8c
    adc l                                         ; $47ac: $8d
    daa                                           ; $47ad: $27
    jr z, jr_088_47cd                             ; $47ae: $28 $1d

    ld e, $2b                                     ; $47b0: $1e $2b
    inc l                                         ; $47b2: $2c
    ld hl, $2f22                                  ; $47b3: $21 $22 $2f
    jr nc, jr_088_47c7                            ; $47b6: $30 $0f

    inc c                                         ; $47b8: $0c
    inc c                                         ; $47b9: $0c
    rlca                                          ; $47ba: $07
    inc c                                         ; $47bb: $0c
    inc c                                         ; $47bc: $0c
    rlca                                          ; $47bd: $07
    inc b                                         ; $47be: $04
    inc b                                         ; $47bf: $04
    rlca                                          ; $47c0: $07
    inc b                                         ; $47c1: $04
    inc b                                         ; $47c2: $04
    rlca                                          ; $47c3: $07
    inc b                                         ; $47c4: $04
    inc b                                         ; $47c5: $04
    inc b                                         ; $47c6: $04

jr_088_47c7:
    dec h                                         ; $47c7: $25
    ld h, $89                                     ; $47c8: $26 $89
    adc d                                         ; $47ca: $8a
    add hl, hl                                    ; $47cb: $29
    ld a, [hl+]                                   ; $47cc: $2a

jr_088_47cd:
    adc h                                         ; $47cd: $8c
    adc l                                         ; $47ce: $8d
    dec l                                         ; $47cf: $2d
    ld l, $1d                                     ; $47d0: $2e $1d
    ld e, $31                                     ; $47d2: $1e $31
    ld [hl-], a                                   ; $47d4: $32
    ld hl, $0422                                  ; $47d5: $21 $22 $04
    inc b                                         ; $47d8: $04
    rrca                                          ; $47d9: $0f
    rrca                                          ; $47da: $0f
    inc b                                         ; $47db: $04
    inc b                                         ; $47dc: $04
    inc c                                         ; $47dd: $0c
    inc c                                         ; $47de: $0c
    inc b                                         ; $47df: $04
    rlca                                          ; $47e0: $07
    rlca                                          ; $47e1: $07
    inc b                                         ; $47e2: $04
    rlca                                          ; $47e3: $07
    inc b                                         ; $47e4: $04
    rlca                                          ; $47e5: $07
    rlca                                          ; $47e6: $07
    adc e                                         ; $47e7: $8b
    inc h                                         ; $47e8: $24
    dec h                                         ; $47e9: $25
    ld h, $27                                     ; $47ea: $26 $27
    jr z, @+$2b                                   ; $47ec: $28 $29

    ld a, [hl+]                                   ; $47ee: $2a
    dec hl                                        ; $47ef: $2b
    inc l                                         ; $47f0: $2c
    dec l                                         ; $47f1: $2d
    ld l, $2f                                     ; $47f2: $2e $2f
    jr nc, jr_088_4827                            ; $47f4: $30 $31

    ld [hl-], a                                   ; $47f6: $32
    inc c                                         ; $47f7: $0c
    rlca                                          ; $47f8: $07
    inc b                                         ; $47f9: $04
    inc b                                         ; $47fa: $04
    rlca                                          ; $47fb: $07
    inc b                                         ; $47fc: $04
    inc b                                         ; $47fd: $04

jr_088_47fe:
    rlca                                          ; $47fe: $07
    rlca                                          ; $47ff: $07
    inc b                                         ; $4800: $04
    rlca                                          ; $4801: $07
    inc b                                         ; $4802: $04
    inc b                                         ; $4803: $04
    rlca                                          ; $4804: $07
    inc b                                         ; $4805: $04
    rlca                                          ; $4806: $07
    adc c                                         ; $4807: $89
    adc d                                         ; $4808: $8a
    adc e                                         ; $4809: $8b
    inc h                                         ; $480a: $24
    adc h                                         ; $480b: $8c
    adc l                                         ; $480c: $8d
    daa                                           ; $480d: $27
    jr z, jr_088_482d                             ; $480e: $28 $1d

    ld e, $2b                                     ; $4810: $1e $2b
    inc l                                         ; $4812: $2c
    ld hl, $2f22                                  ; $4813: $21 $22 $2f
    jr nc, jr_088_4827                            ; $4816: $30 $0f

    inc c                                         ; $4818: $0c
    rrca                                          ; $4819: $0f
    rlca                                          ; $481a: $07
    inc c                                         ; $481b: $0c
    rrca                                          ; $481c: $0f
    rlca                                          ; $481d: $07
    inc b                                         ; $481e: $04
    inc b                                         ; $481f: $04
    inc b                                         ; $4820: $04
    inc b                                         ; $4821: $04
    inc b                                         ; $4822: $04
    inc b                                         ; $4823: $04
    inc b                                         ; $4824: $04
    inc b                                         ; $4825: $04
    rlca                                          ; $4826: $07

jr_088_4827:
    ld l, [hl]                                    ; $4827: $6e
    ld l, a                                       ; $4828: $6f
    ld [hl], b                                    ; $4829: $70
    ld [hl], c                                    ; $482a: $71
    ld [hl], d                                    ; $482b: $72
    ld [hl], e                                    ; $482c: $73

jr_088_482d:
    ld [hl], h                                    ; $482d: $74
    ld [hl], l                                    ; $482e: $75
    adc c                                         ; $482f: $89
    adc d                                         ; $4830: $8a
    adc e                                         ; $4831: $8b
    inc h                                         ; $4832: $24
    adc h                                         ; $4833: $8c
    adc l                                         ; $4834: $8d
    daa                                           ; $4835: $27
    jr z, jr_088_483c                             ; $4836: $28 $04

    inc b                                         ; $4838: $04
    rlca                                          ; $4839: $07
    inc b                                         ; $483a: $04
    inc b                                         ; $483b: $04

jr_088_483c:
    inc b                                         ; $483c: $04
    inc b                                         ; $483d: $04
    inc b                                         ; $483e: $04
    inc c                                         ; $483f: $0c
    rrca                                          ; $4840: $0f
    inc c                                         ; $4841: $0c
    rlca                                          ; $4842: $07
    inc c                                         ; $4843: $0c
    inc c                                         ; $4844: $0c
    rlca                                          ; $4845: $07
    inc b                                         ; $4846: $04
    ld a, l                                       ; $4847: $7d
    ld a, [hl]                                    ; $4848: $7e
    ld l, [hl]                                    ; $4849: $6e
    ld l, a                                       ; $484a: $6f
    ld b, $07                                     ; $484b: $06 $07
    ld [hl], d                                    ; $484d: $72
    ld [hl], e                                    ; $484e: $73
    dec h                                         ; $484f: $25
    ld h, $89                                     ; $4850: $26 $89
    adc d                                         ; $4852: $8a
    add hl, hl                                    ; $4853: $29
    ld a, [hl+]                                   ; $4854: $2a
    adc h                                         ; $4855: $8c
    adc l                                         ; $4856: $8d
    inc b                                         ; $4857: $04
    inc b                                         ; $4858: $04
    inc b                                         ; $4859: $04
    inc b                                         ; $485a: $04
    rlca                                          ; $485b: $07
    inc b                                         ; $485c: $04
    rlca                                          ; $485d: $07
    inc b                                         ; $485e: $04
    inc b                                         ; $485f: $04
    rlca                                          ; $4860: $07
    inc c                                         ; $4861: $0c
    inc c                                         ; $4862: $0c
    inc b                                         ; $4863: $04
    inc b                                         ; $4864: $04
    inc c                                         ; $4865: $0c
    rrca                                          ; $4866: $0f
    ld [hl], b                                    ; $4867: $70
    ld [hl], c                                    ; $4868: $71
    ld a, l                                       ; $4869: $7d
    ld a, [hl]                                    ; $486a: $7e
    ld [hl], h                                    ; $486b: $74
    ld [hl], l                                    ; $486c: $75
    ld b, $07                                     ; $486d: $06 $07
    adc e                                         ; $486f: $8b
    inc h                                         ; $4870: $24
    dec h                                         ; $4871: $25
    ld h, $27                                     ; $4872: $26 $27
    jr z, jr_088_489f                             ; $4874: $28 $29

    ld a, [hl+]                                   ; $4876: $2a
    rlca                                          ; $4877: $07
    inc b                                         ; $4878: $04
    rlca                                          ; $4879: $07
    inc b                                         ; $487a: $04
    inc b                                         ; $487b: $04
    rlca                                          ; $487c: $07
    inc b                                         ; $487d: $04
    inc b                                         ; $487e: $04
    rrca                                          ; $487f: $0f
    inc b                                         ; $4880: $04
    rlca                                          ; $4881: $07
    inc b                                         ; $4882: $04
    inc b                                         ; $4883: $04
    inc b                                         ; $4884: $04
    inc b                                         ; $4885: $04
    rlca                                          ; $4886: $07
    ld l, [hl]                                    ; $4887: $6e
    ld l, a                                       ; $4888: $6f
    ld [hl], b                                    ; $4889: $70
    ld [hl], c                                    ; $488a: $71
    ld [hl], d                                    ; $488b: $72
    ld [hl], e                                    ; $488c: $73
    ld [hl], h                                    ; $488d: $74
    ld [hl], l                                    ; $488e: $75
    adc c                                         ; $488f: $89
    adc d                                         ; $4890: $8a
    adc e                                         ; $4891: $8b
    inc h                                         ; $4892: $24
    adc h                                         ; $4893: $8c
    adc l                                         ; $4894: $8d
    daa                                           ; $4895: $27
    jr z, jr_088_489c                             ; $4896: $28 $04

    rlca                                          ; $4898: $07
    inc b                                         ; $4899: $04
    inc b                                         ; $489a: $04
    rlca                                          ; $489b: $07

jr_088_489c:
    inc b                                         ; $489c: $04
    rlca                                          ; $489d: $07
    rlca                                          ; $489e: $07

jr_088_489f:
    inc c                                         ; $489f: $0c
    inc c                                         ; $48a0: $0c
    rrca                                          ; $48a1: $0f
    inc b                                         ; $48a2: $04
    inc c                                         ; $48a3: $0c
    rrca                                          ; $48a4: $0f
    inc b                                         ; $48a5: $04
    inc b                                         ; $48a6: $04
    ld a, l                                       ; $48a7: $7d
    ld a, [hl]                                    ; $48a8: $7e
    ld l, [hl]                                    ; $48a9: $6e
    ld l, a                                       ; $48aa: $6f
    ld b, $07                                     ; $48ab: $06 $07
    ld [hl], d                                    ; $48ad: $72
    ld [hl], e                                    ; $48ae: $73
    dec h                                         ; $48af: $25
    ld h, $89                                     ; $48b0: $26 $89
    adc d                                         ; $48b2: $8a
    add hl, hl                                    ; $48b3: $29
    ld a, [hl+]                                   ; $48b4: $2a
    adc h                                         ; $48b5: $8c
    adc l                                         ; $48b6: $8d
    rlca                                          ; $48b7: $07
    inc b                                         ; $48b8: $04
    inc b                                         ; $48b9: $04
    inc b                                         ; $48ba: $04
    inc b                                         ; $48bb: $04
    inc b                                         ; $48bc: $04
    rlca                                          ; $48bd: $07
    inc b                                         ; $48be: $04
    inc b                                         ; $48bf: $04
    inc b                                         ; $48c0: $04
    inc c                                         ; $48c1: $0c
    inc c                                         ; $48c2: $0c

Jump_088_48c3:
    rlca                                          ; $48c3: $07
    inc b                                         ; $48c4: $04
    inc c                                         ; $48c5: $0c
    inc c                                         ; $48c6: $0c
    ld [hl], b                                    ; $48c7: $70
    db $e3                                        ; $48c8: $e3
    db $ed                                        ; $48c9: $ed
    inc b                                         ; $48ca: $04
    rra                                           ; $48cb: $1f
    inc bc                                        ; $48cc: $03
    rst $28                                       ; $48cd: $ef
    rlca                                          ; $48ce: $07
    db $f4                                        ; $48cf: $f4
    di                                            ; $48d0: $f3
    ld a, [c]                                     ; $48d1: $f2
    pop af                                        ; $48d2: $f1
    or $f5                                        ; $48d3: $f6 $f5
    adc b                                         ; $48d5: $88
    pop hl                                        ; $48d6: $e1
    inc b                                         ; $48d7: $04
    inc c                                         ; $48d8: $0c
    xor d                                         ; $48d9: $aa
    inc b                                         ; $48da: $04
    inc c                                         ; $48db: $0c
    inc b                                         ; $48dc: $04
    xor d                                         ; $48dd: $aa
    inc b                                         ; $48de: $04
    xor c                                         ; $48df: $a9
    xor c                                         ; $48e0: $a9
    dec hl                                        ; $48e1: $2b
    dec hl                                        ; $48e2: $2b
    xor c                                         ; $48e3: $a9
    xor c                                         ; $48e4: $a9
    dec hl                                        ; $48e5: $2b
    inc bc                                        ; $48e6: $03
    inc bc                                        ; $48e7: $03
    ld [c], a                                     ; $48e8: $e2
    pop hl                                        ; $48e9: $e1
    ldh [$72], a                                  ; $48ea: $e0 $72
    ldh a, [$e5]                                  ; $48ec: $f0 $e5
    db $e4                                        ; $48ee: $e4
    jp hl                                         ; $48ef: $e9


    add sp, -$19                                  ; $48f0: $e8 $e7
    and $e1                                       ; $48f2: $e6 $e1
    db $ec                                        ; $48f4: $ec
    db $eb                                        ; $48f5: $eb
    ld [$2a04], a                                 ; $48f6: $ea $04 $2a
    ld a, [hl+]                                   ; $48f9: $2a
    ld a, [hl+]                                   ; $48fa: $2a
    inc b                                         ; $48fb: $04
    inc c                                         ; $48fc: $0c
    ld a, [hl+]                                   ; $48fd: $2a
    ld a, [hl+]                                   ; $48fe: $2a
    dec hl                                        ; $48ff: $2b
    dec hl                                        ; $4900: $2b
    dec hl                                        ; $4901: $2b
    dec hl                                        ; $4902: $2b
    inc bc                                        ; $4903: $03
    dec hl                                        ; $4904: $2b
    dec hl                                        ; $4905: $2b
    dec hl                                        ; $4906: $2b
    db $db                                        ; $4907: $db
    pop de                                        ; $4908: $d1
    pop de                                        ; $4909: $d1
    pop de                                        ; $490a: $d1
    call c, $d1d1                                 ; $490b: $dc $d1 $d1
    pop de                                        ; $490e: $d1
    db $dd                                        ; $490f: $dd
    pop de                                        ; $4910: $d1
    pop de                                        ; $4911: $d1
    pop de                                        ; $4912: $d1
    rst $18                                       ; $4913: $df
    sbc $d1                                       ; $4914: $de $d1
    pop de                                        ; $4916: $d1
    ld a, [hl+]                                   ; $4917: $2a
    add [hl]                                      ; $4918: $86
    add [hl]                                      ; $4919: $86
    add [hl]                                      ; $491a: $86
    ld a, [hl+]                                   ; $491b: $2a
    add [hl]                                      ; $491c: $86
    add [hl]                                      ; $491d: $86
    add [hl]                                      ; $491e: $86
    ld a, [hl+]                                   ; $491f: $2a
    add [hl]                                      ; $4920: $86
    add [hl]                                      ; $4921: $86
    add [hl]                                      ; $4922: $86
    ld a, [hl+]                                   ; $4923: $2a
    xor d                                         ; $4924: $aa
    add [hl]                                      ; $4925: $86
    add [hl]                                      ; $4926: $86
    dec l                                         ; $4927: $2d
    ld l, $1d                                     ; $4928: $2e $1d
    ld e, $31                                     ; $492a: $1e $31
    ld [hl-], a                                   ; $492c: $32
    ld hl, $7d22                                  ; $492d: $21 $22 $7d
    ld a, [hl]                                    ; $4930: $7e
    ld l, [hl]                                    ; $4931: $6e
    ld l, a                                       ; $4932: $6f
    ld b, $07                                     ; $4933: $06 $07
    ld [hl], d                                    ; $4935: $72
    ld [hl], e                                    ; $4936: $73
    inc b                                         ; $4937: $04
    inc b                                         ; $4938: $04
    rlca                                          ; $4939: $07
    inc b                                         ; $493a: $04
    inc b                                         ; $493b: $04
    rlca                                          ; $493c: $07
    inc b                                         ; $493d: $04
    inc b                                         ; $493e: $04
    rlca                                          ; $493f: $07
    inc b                                         ; $4940: $04
    inc b                                         ; $4941: $04
    rlca                                          ; $4942: $07
    inc b                                         ; $4943: $04
    inc b                                         ; $4944: $04
    rlca                                          ; $4945: $07
    inc b                                         ; $4946: $04
    add hl, bc                                    ; $4947: $09
    ld [$0607], sp                                ; $4948: $08 $07 $06
    dec c                                         ; $494b: $0d
    inc c                                         ; $494c: $0c
    dec bc                                        ; $494d: $0b
    ld a, [bc]                                    ; $494e: $0a
    ld de, $0f10                                  ; $494f: $11 $10 $0f
    ld c, $74                                     ; $4952: $0e $74
    ld [hl], l                                    ; $4954: $75
    ld b, $07                                     ; $4955: $06 $07
    add hl, hl                                    ; $4957: $29
    add hl, hl                                    ; $4958: $29
    dec hl                                        ; $4959: $2b
    dec hl                                        ; $495a: $2b
    add hl, hl                                    ; $495b: $29
    add hl, hl                                    ; $495c: $29
    dec hl                                        ; $495d: $2b
    dec hl                                        ; $495e: $2b
    add hl, hl                                    ; $495f: $29
    add hl, hl                                    ; $4960: $29
    dec hl                                        ; $4961: $2b
    dec hl                                        ; $4962: $2b
    inc b                                         ; $4963: $04
    inc b                                         ; $4964: $04
    inc b                                         ; $4965: $04
    inc b                                         ; $4966: $04
    cp $fd                                        ; $4967: $fe $fd
    db $fc                                        ; $4969: $fc
    ei                                            ; $496a: $fb
    ld [bc], a                                    ; $496b: $02
    ld bc, $ff00                                  ; $496c: $01 $00 $ff
    dec b                                         ; $496f: $05
    inc b                                         ; $4970: $04
    inc bc                                        ; $4971: $03
    dec h                                         ; $4972: $25
    ld [hl], d                                    ; $4973: $72
    ld [hl], e                                    ; $4974: $73
    ld [hl], h                                    ; $4975: $74
    dec b                                         ; $4976: $05
    dec hl                                        ; $4977: $2b
    dec hl                                        ; $4978: $2b
    dec hl                                        ; $4979: $2b
    dec hl                                        ; $497a: $2b
    dec hl                                        ; $497b: $2b
    dec hl                                        ; $497c: $2b
    dec hl                                        ; $497d: $2b
    dec hl                                        ; $497e: $2b
    dec hl                                        ; $497f: $2b
    dec hl                                        ; $4980: $2b
    dec hl                                        ; $4981: $2b
    dec bc                                        ; $4982: $0b
    inc b                                         ; $4983: $04
    inc b                                         ; $4984: $04
    inc b                                         ; $4985: $04
    inc b                                         ; $4986: $04
    ld hl, sp-$09                                 ; $4987: $f8 $f7
    pop de                                        ; $4989: $d1
    pop de                                        ; $498a: $d1
    ld a, [$d1f9]                                 ; $498b: $fa $f9 $d1
    pop de                                        ; $498e: $d1
    ld h, $f9                                     ; $498f: $26 $f9
    pop de                                        ; $4991: $d1
    pop de                                        ; $4992: $d1
    daa                                           ; $4993: $27
    ld sp, hl                                     ; $4994: $f9
    pop de                                        ; $4995: $d1
    pop de                                        ; $4996: $d1
    ld a, [hl+]                                   ; $4997: $2a
    xor d                                         ; $4998: $aa
    add [hl]                                      ; $4999: $86
    add [hl]                                      ; $499a: $86
    ld a, [hl+]                                   ; $499b: $2a
    xor d                                         ; $499c: $aa
    add [hl]                                      ; $499d: $86
    add [hl]                                      ; $499e: $86
    ld a, [bc]                                    ; $499f: $0a
    xor d                                         ; $49a0: $aa
    add [hl]                                      ; $49a1: $86
    add [hl]                                      ; $49a2: $86
    ld a, [bc]                                    ; $49a3: $0a
    xor d                                         ; $49a4: $aa
    add [hl]                                      ; $49a5: $86
    add [hl]                                      ; $49a6: $86
    dec h                                         ; $49a7: $25
    ld h, $89                                     ; $49a8: $26 $89
    adc d                                         ; $49aa: $8a
    add hl, hl                                    ; $49ab: $29
    ld a, [hl+]                                   ; $49ac: $2a
    adc h                                         ; $49ad: $8c
    adc l                                         ; $49ae: $8d
    dec l                                         ; $49af: $2d
    ld l, $1d                                     ; $49b0: $2e $1d
    ld e, $31                                     ; $49b2: $1e $31
    ld [hl-], a                                   ; $49b4: $32
    ld hl, $0422                                  ; $49b5: $21 $22 $04
    rlca                                          ; $49b8: $07
    inc c                                         ; $49b9: $0c
    rrca                                          ; $49ba: $0f
    inc b                                         ; $49bb: $04
    inc b                                         ; $49bc: $04
    inc c                                         ; $49bd: $0c
    inc c                                         ; $49be: $0c
    rlca                                          ; $49bf: $07
    inc b                                         ; $49c0: $04
    rlca                                          ; $49c1: $07
    inc b                                         ; $49c2: $04
    inc b                                         ; $49c3: $04
    rlca                                          ; $49c4: $07
    rlca                                          ; $49c5: $07
    inc b                                         ; $49c6: $04
    adc e                                         ; $49c7: $8b
    inc h                                         ; $49c8: $24
    dec h                                         ; $49c9: $25
    ld h, $27                                     ; $49ca: $26 $27
    jr z, @+$2b                                   ; $49cc: $28 $29

    ld a, [hl+]                                   ; $49ce: $2a
    dec hl                                        ; $49cf: $2b
    inc l                                         ; $49d0: $2c
    jr z, jr_088_4a01                             ; $49d1: $28 $2e

    cpl                                           ; $49d3: $2f
    jr nc, jr_088_49f6                            ; $49d4: $30 $20

    ld [hl-], a                                   ; $49d6: $32
    inc c                                         ; $49d7: $0c
    rlca                                          ; $49d8: $07
    inc b                                         ; $49d9: $04
    rlca                                          ; $49da: $07
    rlca                                          ; $49db: $07
    inc b                                         ; $49dc: $04
    inc b                                         ; $49dd: $04
    inc b                                         ; $49de: $04
    inc b                                         ; $49df: $04
    inc b                                         ; $49e0: $04
    inc c                                         ; $49e1: $0c
    inc b                                         ; $49e2: $04
    inc b                                         ; $49e3: $04
    inc b                                         ; $49e4: $04
    and d                                         ; $49e5: $a2
    inc b                                         ; $49e6: $04
    adc c                                         ; $49e7: $89
    adc d                                         ; $49e8: $8a
    adc e                                         ; $49e9: $8b
    inc h                                         ; $49ea: $24
    adc h                                         ; $49eb: $8c
    adc l                                         ; $49ec: $8d
    daa                                           ; $49ed: $27
    jr z, jr_088_4a0d                             ; $49ee: $28 $1d

    ld e, $2b                                     ; $49f0: $1e $2b
    inc bc                                        ; $49f2: $03
    ld hl, $6d22                                  ; $49f3: $21 $22 $6d

jr_088_49f6:
    jr jr_088_4a04                                ; $49f6: $18 $0c

    inc c                                         ; $49f8: $0c
    inc c                                         ; $49f9: $0c
    inc b                                         ; $49fa: $04
    rrca                                          ; $49fb: $0f
    inc c                                         ; $49fc: $0c
    inc b                                         ; $49fd: $04
    inc b                                         ; $49fe: $04
    inc b                                         ; $49ff: $04
    inc b                                         ; $4a00: $04

jr_088_4a01:
    inc b                                         ; $4a01: $04
    inc b                                         ; $4a02: $04
    inc b                                         ; $4a03: $04

jr_088_4a04:
    inc b                                         ; $4a04: $04
    inc b                                         ; $4a05: $04
    xor d                                         ; $4a06: $aa
    add hl, hl                                    ; $4a07: $29
    ld [de], a                                    ; $4a08: $12
    pop de                                        ; $4a09: $d1
    pop de                                        ; $4a0a: $d1
    add hl, hl                                    ; $4a0b: $29
    inc de                                        ; $4a0c: $13

jr_088_4a0d:
    pop de                                        ; $4a0d: $d1
    pop de                                        ; $4a0e: $d1
    dec l                                         ; $4a0f: $2d
    inc d                                         ; $4a10: $14
    pop de                                        ; $4a11: $d1
    pop de                                        ; $4a12: $d1
    rra                                           ; $4a13: $1f
    dec d                                         ; $4a14: $15
    pop de                                        ; $4a15: $d1
    pop de                                        ; $4a16: $d1
    inc c                                         ; $4a17: $0c
    xor d                                         ; $4a18: $aa
    add [hl]                                      ; $4a19: $86
    add [hl]                                      ; $4a1a: $86
    inc b                                         ; $4a1b: $04
    xor d                                         ; $4a1c: $aa
    add [hl]                                      ; $4a1d: $86
    add [hl]                                      ; $4a1e: $86
    inc b                                         ; $4a1f: $04
    xor d                                         ; $4a20: $aa
    add [hl]                                      ; $4a21: $86
    add [hl]                                      ; $4a22: $86
    inc b                                         ; $4a23: $04
    xor d                                         ; $4a24: $aa
    add [hl]                                      ; $4a25: $86
    add [hl]                                      ; $4a26: $86
    ld a, l                                       ; $4a27: $7d
    ld a, [hl]                                    ; $4a28: $7e
    ld l, [hl]                                    ; $4a29: $6e
    ld l, a                                       ; $4a2a: $6f
    ld b, $07                                     ; $4a2b: $06 $07
    ld [hl], d                                    ; $4a2d: $72
    ld [hl], e                                    ; $4a2e: $73
    dec h                                         ; $4a2f: $25
    ld h, $89                                     ; $4a30: $26 $89
    adc d                                         ; $4a32: $8a
    add hl, hl                                    ; $4a33: $29
    ld a, [hl+]                                   ; $4a34: $2a
    adc h                                         ; $4a35: $8c
    adc l                                         ; $4a36: $8d
    rlca                                          ; $4a37: $07
    inc b                                         ; $4a38: $04
    inc b                                         ; $4a39: $04
    rlca                                          ; $4a3a: $07
    inc b                                         ; $4a3b: $04
    inc b                                         ; $4a3c: $04
    rlca                                          ; $4a3d: $07
    inc b                                         ; $4a3e: $04
    inc b                                         ; $4a3f: $04
    inc b                                         ; $4a40: $04
    inc c                                         ; $4a41: $0c
    inc c                                         ; $4a42: $0c
    rlca                                          ; $4a43: $07
    inc b                                         ; $4a44: $04
    inc c                                         ; $4a45: $0c
    inc c                                         ; $4a46: $0c
    ld [hl], b                                    ; $4a47: $70
    db $e3                                        ; $4a48: $e3
    db $ed                                        ; $4a49: $ed
    inc b                                         ; $4a4a: $04
    rra                                           ; $4a4b: $1f
    inc bc                                        ; $4a4c: $03
    rst $28                                       ; $4a4d: $ef
    inc bc                                        ; $4a4e: $03
    db $f4                                        ; $4a4f: $f4
    di                                            ; $4a50: $f3
    ld a, [c]                                     ; $4a51: $f2
    pop af                                        ; $4a52: $f1
    or $f5                                        ; $4a53: $f6 $f5

jr_088_4a55:
    adc b                                         ; $4a55: $88
    pop hl                                        ; $4a56: $e1
    inc b                                         ; $4a57: $04
    inc c                                         ; $4a58: $0c
    xor d                                         ; $4a59: $aa
    inc b                                         ; $4a5a: $04
    inc c                                         ; $4a5b: $0c
    inc b                                         ; $4a5c: $04
    xor d                                         ; $4a5d: $aa
    inc b                                         ; $4a5e: $04
    xor c                                         ; $4a5f: $a9
    xor c                                         ; $4a60: $a9
    dec hl                                        ; $4a61: $2b
    dec hl                                        ; $4a62: $2b
    xor c                                         ; $4a63: $a9
    xor c                                         ; $4a64: $a9
    dec hl                                        ; $4a65: $2b
    inc bc                                        ; $4a66: $03
    ld l, [hl]                                    ; $4a67: $6e
    ld a, [hl+]                                   ; $4a68: $2a
    inc bc                                        ; $4a69: $03
    dec e                                         ; $4a6a: $1d
    dec hl                                        ; $4a6b: $2b
    inc bc                                        ; $4a6c: $03
    inc bc                                        ; $4a6d: $03
    ld e, $e9                                     ; $4a6e: $1e $e9
    add sp, -$19                                  ; $4a70: $e8 $e7
    jr nz, jr_088_4a55                            ; $4a72: $20 $e1

    db $ec                                        ; $4a74: $ec
    db $eb                                        ; $4a75: $eb
    ld [$0c04], a                                 ; $4a76: $ea $04 $0c
    inc b                                         ; $4a79: $04
    xor d                                         ; $4a7a: $aa
    inc c                                         ; $4a7b: $0c
    inc b                                         ; $4a7c: $04
    inc b                                         ; $4a7d: $04
    xor d                                         ; $4a7e: $aa
    dec hl                                        ; $4a7f: $2b
    dec hl                                        ; $4a80: $2b
    dec hl                                        ; $4a81: $2b
    dec hl                                        ; $4a82: $2b
    inc bc                                        ; $4a83: $03
    dec hl                                        ; $4a84: $2b
    dec hl                                        ; $4a85: $2b
    dec hl                                        ; $4a86: $2b
    add hl, de                                    ; $4a87: $19
    pop de                                        ; $4a88: $d1
    pop de                                        ; $4a89: $d1
    pop de                                        ; $4a8a: $d1
    ld a, [de]                                    ; $4a8b: $1a
    pop de                                        ; $4a8c: $d1
    pop de                                        ; $4a8d: $d1
    pop de                                        ; $4a8e: $d1
    dec de                                        ; $4a8f: $1b
    pop de                                        ; $4a90: $d1
    pop de                                        ; $4a91: $d1
    pop de                                        ; $4a92: $d1
    inc e                                         ; $4a93: $1c
    pop de                                        ; $4a94: $d1
    pop de                                        ; $4a95: $d1
    pop de                                        ; $4a96: $d1
    xor d                                         ; $4a97: $aa
    add [hl]                                      ; $4a98: $86
    add [hl]                                      ; $4a99: $86
    add [hl]                                      ; $4a9a: $86
    xor d                                         ; $4a9b: $aa
    add [hl]                                      ; $4a9c: $86
    add [hl]                                      ; $4a9d: $86
    add [hl]                                      ; $4a9e: $86
    xor d                                         ; $4a9f: $aa
    add [hl]                                      ; $4aa0: $86
    add [hl]                                      ; $4aa1: $86
    add [hl]                                      ; $4aa2: $86
    xor d                                         ; $4aa3: $aa
    add [hl]                                      ; $4aa4: $86
    add [hl]                                      ; $4aa5: $86
    add [hl]                                      ; $4aa6: $86
    inc l                                         ; $4aa7: $2c
    db $fc                                        ; $4aa8: $fc
    db $fd                                        ; $4aa9: $fd
    cp $2d                                        ; $4aaa: $fe $2d
    ld l, $01                                     ; $4aac: $2e $01
    ld [bc], a                                    ; $4aae: $02
    pop de                                        ; $4aaf: $d1
    cpl                                           ; $4ab0: $2f
    inc b                                         ; $4ab1: $04
    dec b                                         ; $4ab2: $05
    pop de                                        ; $4ab3: $d1
    pop de                                        ; $4ab4: $d1
    jr nc, jr_088_4aba                            ; $4ab5: $30 $03

    ld a, [bc]                                    ; $4ab7: $0a
    dec bc                                        ; $4ab8: $0b
    dec bc                                        ; $4ab9: $0b

jr_088_4aba:
    dec bc                                        ; $4aba: $0b
    ld a, [bc]                                    ; $4abb: $0a
    dec bc                                        ; $4abc: $0b
    dec bc                                        ; $4abd: $0b
    dec bc                                        ; $4abe: $0b
    add [hl]                                      ; $4abf: $86
    ld a, [bc]                                    ; $4ac0: $0a
    dec bc                                        ; $4ac1: $0b
    dec bc                                        ; $4ac2: $0b
    add [hl]                                      ; $4ac3: $86
    add [hl]                                      ; $4ac4: $86
    adc d                                         ; $4ac5: $8a
    inc b                                         ; $4ac6: $04
    ld b, $07                                     ; $4ac7: $06 $07
    ld [$0a09], sp                                ; $4ac9: $08 $09 $0a
    dec bc                                        ; $4acc: $0b
    inc c                                         ; $4acd: $0c
    dec c                                         ; $4ace: $0d
    ld c, $0f                                     ; $4acf: $0e $0f
    db $10                                        ; $4ad1: $10
    ld de, $0731                                  ; $4ad2: $11 $31 $07
    ld [hl], d                                    ; $4ad5: $72
    ld [hl], e                                    ; $4ad6: $73
    dec bc                                        ; $4ad7: $0b
    dec bc                                        ; $4ad8: $0b
    add hl, bc                                    ; $4ad9: $09
    add hl, bc                                    ; $4ada: $09
    dec bc                                        ; $4adb: $0b
    dec bc                                        ; $4adc: $0b

Call_088_4add:
    add hl, bc                                    ; $4add: $09
    add hl, bc                                    ; $4ade: $09
    dec bc                                        ; $4adf: $0b
    dec bc                                        ; $4ae0: $0b
    add hl, bc                                    ; $4ae1: $09
    add hl, bc                                    ; $4ae2: $09
    inc c                                         ; $4ae3: $0c
    inc b                                         ; $4ae4: $04
    inc b                                         ; $4ae5: $04
    inc b                                         ; $4ae6: $04
    dec hl                                        ; $4ae7: $2b
    inc l                                         ; $4ae8: $2c
    dec l                                         ; $4ae9: $2d
    ld l, $2f                                     ; $4aea: $2e $2f
    jr nc, jr_088_4b1f                            ; $4aec: $30 $31

    ld [hl-], a                                   ; $4aee: $32
    ld [hl], b                                    ; $4aef: $70
    ld [hl], c                                    ; $4af0: $71
    ld a, l                                       ; $4af1: $7d
    ld a, [hl]                                    ; $4af2: $7e
    ld [hl], h                                    ; $4af3: $74
    ld [hl], l                                    ; $4af4: $75
    ld b, $07                                     ; $4af5: $06 $07
    inc b                                         ; $4af7: $04
    inc b                                         ; $4af8: $04
    rlca                                          ; $4af9: $07
    inc b                                         ; $4afa: $04
    inc b                                         ; $4afb: $04
    rlca                                          ; $4afc: $07
    inc b                                         ; $4afd: $04
    inc b                                         ; $4afe: $04
    inc b                                         ; $4aff: $04
    inc b                                         ; $4b00: $04
    inc b                                         ; $4b01: $04
    rlca                                          ; $4b02: $07
    inc b                                         ; $4b03: $04
    inc b                                         ; $4b04: $04
    inc b                                         ; $4b05: $04
    inc b                                         ; $4b06: $04
    pop de                                        ; $4b07: $d1
    pop de                                        ; $4b08: $d1
    ld [hl-], a                                   ; $4b09: $32
    inc sp                                        ; $4b0a: $33
    pop de                                        ; $4b0b: $d1
    pop de                                        ; $4b0c: $d1
    pop de                                        ; $4b0d: $d1
    inc [hl]                                      ; $4b0e: $34
    pop de                                        ; $4b0f: $d1
    pop de                                        ; $4b10: $d1
    pop de                                        ; $4b11: $d1
    pop de                                        ; $4b12: $d1
    pop de                                        ; $4b13: $d1
    pop de                                        ; $4b14: $d1
    pop de                                        ; $4b15: $d1
    pop de                                        ; $4b16: $d1
    add [hl]                                      ; $4b17: $86
    add [hl]                                      ; $4b18: $86
    adc d                                         ; $4b19: $8a
    adc d                                         ; $4b1a: $8a
    add [hl]                                      ; $4b1b: $86
    add [hl]                                      ; $4b1c: $86
    add [hl]                                      ; $4b1d: $86
    adc d                                         ; $4b1e: $8a

jr_088_4b1f:
    add [hl]                                      ; $4b1f: $86
    add [hl]                                      ; $4b20: $86
    add [hl]                                      ; $4b21: $86
    add [hl]                                      ; $4b22: $86
    add [hl]                                      ; $4b23: $86
    add [hl]                                      ; $4b24: $86
    add [hl]                                      ; $4b25: $86
    add [hl]                                      ; $4b26: $86
    inc bc                                        ; $4b27: $03
    dec [hl]                                      ; $4b28: $35
    adc c                                         ; $4b29: $89
    adc d                                         ; $4b2a: $8a
    ld [hl], $03                                  ; $4b2b: $36 $03
    scf                                           ; $4b2d: $37
    adc l                                         ; $4b2e: $8d
    jr c, jr_088_4b67                             ; $4b2f: $38 $36

    inc bc                                        ; $4b31: $03
    add hl, sp                                    ; $4b32: $39
    pop de                                        ; $4b33: $d1
    ld a, [hl-]                                   ; $4b34: $3a
    dec sp                                        ; $4b35: $3b
    inc bc                                        ; $4b36: $03
    inc b                                         ; $4b37: $04
    inc c                                         ; $4b38: $0c
    inc c                                         ; $4b39: $0c
    inc c                                         ; $4b3a: $0c
    adc d                                         ; $4b3b: $8a
    inc b                                         ; $4b3c: $04
    inc c                                         ; $4b3d: $0c
    inc c                                         ; $4b3e: $0c
    adc d                                         ; $4b3f: $8a
    adc d                                         ; $4b40: $8a
    inc b                                         ; $4b41: $04
    inc c                                         ; $4b42: $0c
    add [hl]                                      ; $4b43: $86
    adc d                                         ; $4b44: $8a
    adc d                                         ; $4b45: $8a
    inc b                                         ; $4b46: $04
    adc e                                         ; $4b47: $8b
    inc h                                         ; $4b48: $24
    dec h                                         ; $4b49: $25
    ld h, $27                                     ; $4b4a: $26 $27
    jr z, jr_088_4b77                             ; $4b4c: $28 $29

    ld a, [hl+]                                   ; $4b4e: $2a
    dec hl                                        ; $4b4f: $2b
    inc l                                         ; $4b50: $2c
    dec l                                         ; $4b51: $2d
    ld l, $6d                                     ; $4b52: $2e $6d
    jr nc, jr_088_4b87                            ; $4b54: $30 $31

    ld [hl-], a                                   ; $4b56: $32
    rrca                                          ; $4b57: $0f
    inc b                                         ; $4b58: $04
    rlca                                          ; $4b59: $07
    inc b                                         ; $4b5a: $04
    inc b                                         ; $4b5b: $04
    rlca                                          ; $4b5c: $07
    inc b                                         ; $4b5d: $04
    inc b                                         ; $4b5e: $04
    inc b                                         ; $4b5f: $04
    inc b                                         ; $4b60: $04
    inc b                                         ; $4b61: $04
    rlca                                          ; $4b62: $07
    inc b                                         ; $4b63: $04
    inc b                                         ; $4b64: $04
    inc b                                         ; $4b65: $04
    inc b                                         ; $4b66: $04

jr_088_4b67:
    pop de                                        ; $4b67: $d1
    pop de                                        ; $4b68: $d1
    inc a                                         ; $4b69: $3c
    dec a                                         ; $4b6a: $3d
    pop de                                        ; $4b6b: $d1
    pop de                                        ; $4b6c: $d1
    pop de                                        ; $4b6d: $d1
    pop de                                        ; $4b6e: $d1
    pop de                                        ; $4b6f: $d1
    pop de                                        ; $4b70: $d1
    pop de                                        ; $4b71: $d1
    pop de                                        ; $4b72: $d1
    pop de                                        ; $4b73: $d1
    pop de                                        ; $4b74: $d1
    pop de                                        ; $4b75: $d1
    pop de                                        ; $4b76: $d1

jr_088_4b77:
    add [hl]                                      ; $4b77: $86
    add [hl]                                      ; $4b78: $86
    adc d                                         ; $4b79: $8a
    adc d                                         ; $4b7a: $8a
    add [hl]                                      ; $4b7b: $86
    add [hl]                                      ; $4b7c: $86
    add [hl]                                      ; $4b7d: $86
    add [hl]                                      ; $4b7e: $86
    add [hl]                                      ; $4b7f: $86
    add [hl]                                      ; $4b80: $86
    add [hl]                                      ; $4b81: $86
    add [hl]                                      ; $4b82: $86
    add [hl]                                      ; $4b83: $86
    add [hl]                                      ; $4b84: $86
    add [hl]                                      ; $4b85: $86
    add [hl]                                      ; $4b86: $86

jr_088_4b87:
    inc bc                                        ; $4b87: $03
    db $e3                                        ; $4b88: $e3
    ld a, l                                       ; $4b89: $7d
    ld a, [hl]                                    ; $4b8a: $7e
    ld a, $3f                                     ; $4b8b: $3e $3f
    inc bc                                        ; $4b8d: $03
    or [hl]                                       ; $4b8e: $b6
    pop de                                        ; $4b8f: $d1
    ld b, b                                       ; $4b90: $40
    ld b, c                                       ; $4b91: $41
    ccf                                           ; $4b92: $3f
    pop de                                        ; $4b93: $d1
    pop de                                        ; $4b94: $d1
    pop de                                        ; $4b95: $d1
    ld b, d                                       ; $4b96: $42
    inc b                                         ; $4b97: $04
    inc c                                         ; $4b98: $0c
    inc b                                         ; $4b99: $04
    inc b                                         ; $4b9a: $04
    adc d                                         ; $4b9b: $8a
    adc d                                         ; $4b9c: $8a
    inc b                                         ; $4b9d: $04
    inc c                                         ; $4b9e: $0c
    add [hl]                                      ; $4b9f: $86
    adc d                                         ; $4ba0: $8a
    adc d                                         ; $4ba1: $8a
    adc d                                         ; $4ba2: $8a
    add [hl]                                      ; $4ba3: $86
    add [hl]                                      ; $4ba4: $86
    add [hl]                                      ; $4ba5: $86
    adc d                                         ; $4ba6: $8a
    dec e                                         ; $4ba7: $1d
    ld e, $2b                                     ; $4ba8: $1e $2b
    inc l                                         ; $4baa: $2c
    ld hl, $2f22                                  ; $4bab: $21 $22 $2f
    jr nc, jr_088_4c1e                            ; $4bae: $30 $6e

    ld l, a                                       ; $4bb0: $6f
    ld [hl], b                                    ; $4bb1: $70
    ld [hl], c                                    ; $4bb2: $71
    ld [hl], d                                    ; $4bb3: $72
    ld [hl], e                                    ; $4bb4: $73
    ld [hl], h                                    ; $4bb5: $74
    ld [hl], l                                    ; $4bb6: $75
    inc b                                         ; $4bb7: $04
    inc b                                         ; $4bb8: $04
    inc b                                         ; $4bb9: $04
    inc b                                         ; $4bba: $04
    inc b                                         ; $4bbb: $04
    inc b                                         ; $4bbc: $04
    inc b                                         ; $4bbd: $04
    rlca                                          ; $4bbe: $07
    inc b                                         ; $4bbf: $04
    inc b                                         ; $4bc0: $04
    rlca                                          ; $4bc1: $07
    inc b                                         ; $4bc2: $04
    rlca                                          ; $4bc3: $07
    inc b                                         ; $4bc4: $04
    inc b                                         ; $4bc5: $04
    rlca                                          ; $4bc6: $07
    dec l                                         ; $4bc7: $2d
    ld l, $1d                                     ; $4bc8: $2e $1d
    ld e, $31                                     ; $4bca: $1e $31
    ld [hl-], a                                   ; $4bcc: $32
    ld hl, $7d22                                  ; $4bcd: $21 $22 $7d
    ld a, [hl]                                    ; $4bd0: $7e
    ld l, [hl]                                    ; $4bd1: $6e
    ld l, a                                       ; $4bd2: $6f
    ld b, $07                                     ; $4bd3: $06 $07
    ld [hl], d                                    ; $4bd5: $72
    ld [hl], e                                    ; $4bd6: $73
    rlca                                          ; $4bd7: $07
    inc b                                         ; $4bd8: $04
    inc b                                         ; $4bd9: $04
    inc b                                         ; $4bda: $04
    inc b                                         ; $4bdb: $04
    inc b                                         ; $4bdc: $04
    rlca                                          ; $4bdd: $07
    inc b                                         ; $4bde: $04
    inc b                                         ; $4bdf: $04
    rlca                                          ; $4be0: $07
    inc b                                         ; $4be1: $04
    inc b                                         ; $4be2: $04
    inc b                                         ; $4be3: $04
    inc b                                         ; $4be4: $04
    rlca                                          ; $4be5: $07
    inc b                                         ; $4be6: $04
    dec hl                                        ; $4be7: $2b
    inc l                                         ; $4be8: $2c
    dec l                                         ; $4be9: $2d
    ld l, $2f                                     ; $4bea: $2e $2f
    jr nc, jr_088_4c1f                            ; $4bec: $30 $31

    ld [hl-], a                                   ; $4bee: $32
    ld [hl], b                                    ; $4bef: $70
    ld [hl], c                                    ; $4bf0: $71
    ld a, l                                       ; $4bf1: $7d
    ld a, [hl]                                    ; $4bf2: $7e
    ld [hl], h                                    ; $4bf3: $74
    ld [hl], l                                    ; $4bf4: $75
    ld b, $07                                     ; $4bf5: $06 $07
    inc b                                         ; $4bf7: $04
    inc b                                         ; $4bf8: $04
    rlca                                          ; $4bf9: $07
    rlca                                          ; $4bfa: $07
    rlca                                          ; $4bfb: $07
    rlca                                          ; $4bfc: $07
    inc b                                         ; $4bfd: $04
    inc b                                         ; $4bfe: $04
    rlca                                          ; $4bff: $07
    inc b                                         ; $4c00: $04
    inc b                                         ; $4c01: $04
    rlca                                          ; $4c02: $07
    inc b                                         ; $4c03: $04
    inc b                                         ; $4c04: $04
    inc b                                         ; $4c05: $04
    inc b                                         ; $4c06: $04
    dec e                                         ; $4c07: $1d
    ld e, $2b                                     ; $4c08: $1e $2b
    inc l                                         ; $4c0a: $2c
    ld hl, $2f22                                  ; $4c0b: $21 $22 $2f
    jr nc, jr_088_4c7e                            ; $4c0e: $30 $6e

    ld l, a                                       ; $4c10: $6f
    ld [hl], b                                    ; $4c11: $70
    ld [hl], c                                    ; $4c12: $71
    ld [hl], d                                    ; $4c13: $72
    ld [hl], e                                    ; $4c14: $73
    ld [hl], h                                    ; $4c15: $74
    ld [hl], l                                    ; $4c16: $75
    rlca                                          ; $4c17: $07
    inc b                                         ; $4c18: $04
    inc b                                         ; $4c19: $04
    inc b                                         ; $4c1a: $04
    inc b                                         ; $4c1b: $04
    inc b                                         ; $4c1c: $04
    inc b                                         ; $4c1d: $04

jr_088_4c1e:
    rlca                                          ; $4c1e: $07

jr_088_4c1f:
    inc b                                         ; $4c1f: $04
    inc b                                         ; $4c20: $04
    rlca                                          ; $4c21: $07
    inc b                                         ; $4c22: $04
    inc b                                         ; $4c23: $04
    rlca                                          ; $4c24: $07
    inc b                                         ; $4c25: $04
    inc b                                         ; $4c26: $04
    adc c                                         ; $4c27: $89
    adc d                                         ; $4c28: $8a
    adc e                                         ; $4c29: $8b
    inc h                                         ; $4c2a: $24
    adc h                                         ; $4c2b: $8c
    adc l                                         ; $4c2c: $8d
    daa                                           ; $4c2d: $27
    jr z, jr_088_4c4d                             ; $4c2e: $28 $1d

    ld e, $2b                                     ; $4c30: $1e $2b
    inc l                                         ; $4c32: $2c
    ld hl, $2f22                                  ; $4c33: $21 $22 $2f
    jr nc, jr_088_4c44                            ; $4c36: $30 $0c

    rrca                                          ; $4c38: $0f
    rrca                                          ; $4c39: $0f
    inc b                                         ; $4c3a: $04
    rrca                                          ; $4c3b: $0f
    rrca                                          ; $4c3c: $0f
    inc b                                         ; $4c3d: $04
    inc b                                         ; $4c3e: $04
    inc b                                         ; $4c3f: $04
    inc b                                         ; $4c40: $04
    rlca                                          ; $4c41: $07
    rlca                                          ; $4c42: $07
    inc b                                         ; $4c43: $04

jr_088_4c44:
    rlca                                          ; $4c44: $07
    inc b                                         ; $4c45: $04
    inc b                                         ; $4c46: $04
    dec h                                         ; $4c47: $25
    ld h, $89                                     ; $4c48: $26 $89
    adc d                                         ; $4c4a: $8a
    add hl, hl                                    ; $4c4b: $29
    ld a, [hl+]                                   ; $4c4c: $2a

jr_088_4c4d:
    adc h                                         ; $4c4d: $8c
    adc l                                         ; $4c4e: $8d
    dec l                                         ; $4c4f: $2d
    ld l, $1d                                     ; $4c50: $2e $1d
    ld e, $31                                     ; $4c52: $1e $31
    ld [hl-], a                                   ; $4c54: $32
    ld hl, $0422                                  ; $4c55: $21 $22 $04
    rlca                                          ; $4c58: $07
    inc c                                         ; $4c59: $0c
    inc c                                         ; $4c5a: $0c
    rlca                                          ; $4c5b: $07
    inc b                                         ; $4c5c: $04
    inc c                                         ; $4c5d: $0c
    inc c                                         ; $4c5e: $0c
    inc b                                         ; $4c5f: $04
    inc b                                         ; $4c60: $04
    rlca                                          ; $4c61: $07
    inc b                                         ; $4c62: $04
    inc b                                         ; $4c63: $04
    rlca                                          ; $4c64: $07
    inc b                                         ; $4c65: $04
    inc b                                         ; $4c66: $04
    adc e                                         ; $4c67: $8b
    inc h                                         ; $4c68: $24
    dec h                                         ; $4c69: $25
    ld h, $27                                     ; $4c6a: $26 $27
    jr z, @+$2b                                   ; $4c6c: $28 $29

    ld a, [hl+]                                   ; $4c6e: $2a
    dec hl                                        ; $4c6f: $2b
    inc l                                         ; $4c70: $2c
    dec l                                         ; $4c71: $2d
    ld l, $2f                                     ; $4c72: $2e $2f
    jr nc, jr_088_4ca7                            ; $4c74: $30 $31

    ld [hl-], a                                   ; $4c76: $32
    rrca                                          ; $4c77: $0f
    rlca                                          ; $4c78: $07
    inc b                                         ; $4c79: $04
    rlca                                          ; $4c7a: $07
    inc b                                         ; $4c7b: $04
    inc b                                         ; $4c7c: $04
    inc b                                         ; $4c7d: $04

jr_088_4c7e:
    inc b                                         ; $4c7e: $04
    rlca                                          ; $4c7f: $07
    rlca                                          ; $4c80: $07
    rlca                                          ; $4c81: $07
    inc b                                         ; $4c82: $04
    rlca                                          ; $4c83: $07
    inc b                                         ; $4c84: $04
    inc b                                         ; $4c85: $04
    inc b                                         ; $4c86: $04
    adc c                                         ; $4c87: $89
    adc d                                         ; $4c88: $8a
    adc e                                         ; $4c89: $8b
    inc h                                         ; $4c8a: $24
    adc h                                         ; $4c8b: $8c
    adc l                                         ; $4c8c: $8d
    daa                                           ; $4c8d: $27
    jr z, jr_088_4cad                             ; $4c8e: $28 $1d

    ld e, $2b                                     ; $4c90: $1e $2b
    inc l                                         ; $4c92: $2c
    ld hl, $2f22                                  ; $4c93: $21 $22 $2f
    jr nc, jr_088_4ca4                            ; $4c96: $30 $0c

    inc c                                         ; $4c98: $0c
    inc c                                         ; $4c99: $0c
    inc b                                         ; $4c9a: $04
    rrca                                          ; $4c9b: $0f
    rrca                                          ; $4c9c: $0f
    inc b                                         ; $4c9d: $04
    inc b                                         ; $4c9e: $04
    inc b                                         ; $4c9f: $04
    inc b                                         ; $4ca0: $04
    inc b                                         ; $4ca1: $04
    rlca                                          ; $4ca2: $07
    rlca                                          ; $4ca3: $07

jr_088_4ca4:
    rlca                                          ; $4ca4: $07
    inc b                                         ; $4ca5: $04
    inc b                                         ; $4ca6: $04

jr_088_4ca7:
    ld l, [hl]                                    ; $4ca7: $6e
    ld l, a                                       ; $4ca8: $6f
    ld [hl], b                                    ; $4ca9: $70
    ld [hl], c                                    ; $4caa: $71
    dec hl                                        ; $4cab: $2b
    ld [hl], e                                    ; $4cac: $73

jr_088_4cad:
    ld [hl], h                                    ; $4cad: $74
    ld [hl], l                                    ; $4cae: $75
    inc bc                                        ; $4caf: $03
    inc bc                                        ; $4cb0: $03
    inc hl                                        ; $4cb1: $23
    inc h                                         ; $4cb2: $24
    ld b, e                                       ; $4cb3: $43
    ld b, h                                       ; $4cb4: $44
    ld b, l                                       ; $4cb5: $45
    inc bc                                        ; $4cb6: $03
    inc b                                         ; $4cb7: $04
    inc b                                         ; $4cb8: $04
    inc b                                         ; $4cb9: $04
    inc b                                         ; $4cba: $04
    inc c                                         ; $4cbb: $0c
    inc b                                         ; $4cbc: $04
    inc b                                         ; $4cbd: $04
    inc b                                         ; $4cbe: $04
    inc b                                         ; $4cbf: $04
    inc b                                         ; $4cc0: $04
    inc b                                         ; $4cc1: $04
    inc b                                         ; $4cc2: $04
    adc d                                         ; $4cc3: $8a
    adc d                                         ; $4cc4: $8a
    adc d                                         ; $4cc5: $8a
    inc b                                         ; $4cc6: $04
    ld a, l                                       ; $4cc7: $7d
    ld a, [hl]                                    ; $4cc8: $7e
    ld l, [hl]                                    ; $4cc9: $6e
    ld l, a                                       ; $4cca: $6f
    ld b, $07                                     ; $4ccb: $06 $07
    ld [hl], d                                    ; $4ccd: $72
    ld [hl], e                                    ; $4cce: $73
    dec h                                         ; $4ccf: $25
    ld h, $89                                     ; $4cd0: $26 $89
    ld b, [hl]                                    ; $4cd2: $46
    add hl, hl                                    ; $4cd3: $29
    ld a, [hl+]                                   ; $4cd4: $2a
    scf                                           ; $4cd5: $37
    inc bc                                        ; $4cd6: $03
    rlca                                          ; $4cd7: $07
    inc b                                         ; $4cd8: $04
    inc b                                         ; $4cd9: $04
    rlca                                          ; $4cda: $07
    inc b                                         ; $4cdb: $04
    inc b                                         ; $4cdc: $04
    inc b                                         ; $4cdd: $04
    inc b                                         ; $4cde: $04
    inc b                                         ; $4cdf: $04
    rlca                                          ; $4ce0: $07
    inc c                                         ; $4ce1: $0c
    inc c                                         ; $4ce2: $0c
    inc b                                         ; $4ce3: $04
    inc b                                         ; $4ce4: $04
    inc c                                         ; $4ce5: $0c
    inc b                                         ; $4ce6: $04
    ld [hl], b                                    ; $4ce7: $70
    ld [hl], c                                    ; $4ce8: $71
    ld a, l                                       ; $4ce9: $7d
    ld a, [hl]                                    ; $4cea: $7e
    ld [hl], h                                    ; $4ceb: $74
    ld [hl], l                                    ; $4cec: $75
    ld b, $07                                     ; $4ced: $06 $07
    inc hl                                        ; $4cef: $23
    inc h                                         ; $4cf0: $24
    dec h                                         ; $4cf1: $25
    ld h, $03                                     ; $4cf2: $26 $03
    ld b, a                                       ; $4cf4: $47
    add hl, hl                                    ; $4cf5: $29
    ld a, [hl+]                                   ; $4cf6: $2a
    inc b                                         ; $4cf7: $04
    inc b                                         ; $4cf8: $04
    inc b                                         ; $4cf9: $04
    inc b                                         ; $4cfa: $04
    inc b                                         ; $4cfb: $04
    inc b                                         ; $4cfc: $04
    rlca                                          ; $4cfd: $07
    inc b                                         ; $4cfe: $04
    inc b                                         ; $4cff: $04
    inc b                                         ; $4d00: $04
    inc b                                         ; $4d01: $04
    inc b                                         ; $4d02: $04
    inc b                                         ; $4d03: $04
    inc c                                         ; $4d04: $0c
    inc b                                         ; $4d05: $04
    rlca                                          ; $4d06: $07
    ld l, [hl]                                    ; $4d07: $6e
    ld l, a                                       ; $4d08: $6f
    ld [hl], b                                    ; $4d09: $70
    ld [hl], c                                    ; $4d0a: $71
    ld [hl], d                                    ; $4d0b: $72
    ld [hl], e                                    ; $4d0c: $73
    ld [hl], h                                    ; $4d0d: $74
    ld [hl], l                                    ; $4d0e: $75
    adc c                                         ; $4d0f: $89
    ld b, [hl]                                    ; $4d10: $46
    inc hl                                        ; $4d11: $23
    inc bc                                        ; $4d12: $03
    inc bc                                        ; $4d13: $03
    ld b, l                                       ; $4d14: $45
    ld b, h                                       ; $4d15: $44
    ld b, e                                       ; $4d16: $43
    inc b                                         ; $4d17: $04
    inc b                                         ; $4d18: $04
    rlca                                          ; $4d19: $07
    inc b                                         ; $4d1a: $04
    inc b                                         ; $4d1b: $04
    inc b                                         ; $4d1c: $04
    inc b                                         ; $4d1d: $04
    inc b                                         ; $4d1e: $04
    inc c                                         ; $4d1f: $0c
    inc c                                         ; $4d20: $0c
    inc b                                         ; $4d21: $04
    inc b                                         ; $4d22: $04
    inc b                                         ; $4d23: $04
    xor d                                         ; $4d24: $aa
    xor d                                         ; $4d25: $aa
    xor d                                         ; $4d26: $aa
    pop de                                        ; $4d27: $d1
    pop de                                        ; $4d28: $d1
    pop de                                        ; $4d29: $d1
    ld c, b                                       ; $4d2a: $48
    pop de                                        ; $4d2b: $d1
    pop de                                        ; $4d2c: $d1
    pop de                                        ; $4d2d: $d1
    ld c, c                                       ; $4d2e: $49
    pop de                                        ; $4d2f: $d1
    pop de                                        ; $4d30: $d1
    pop de                                        ; $4d31: $d1
    ld c, c                                       ; $4d32: $49
    pop de                                        ; $4d33: $d1
    pop de                                        ; $4d34: $d1
    pop de                                        ; $4d35: $d1
    ld c, c                                       ; $4d36: $49
    add [hl]                                      ; $4d37: $86
    add [hl]                                      ; $4d38: $86
    add [hl]                                      ; $4d39: $86
    adc b                                         ; $4d3a: $88
    add [hl]                                      ; $4d3b: $86
    add [hl]                                      ; $4d3c: $86
    add [hl]                                      ; $4d3d: $86
    adc b                                         ; $4d3e: $88
    add [hl]                                      ; $4d3f: $86
    add [hl]                                      ; $4d40: $86
    add [hl]                                      ; $4d41: $86
    adc b                                         ; $4d42: $88
    add [hl]                                      ; $4d43: $86
    add [hl]                                      ; $4d44: $86
    add [hl]                                      ; $4d45: $86
    adc b                                         ; $4d46: $88
    dec l                                         ; $4d47: $2d
    ld l, $03                                     ; $4d48: $2e $03
    ld c, d                                       ; $4d4a: $4a
    ld sp, $4b32                                  ; $4d4b: $31 $32 $4b
    ld c, h                                       ; $4d4e: $4c
    ld a, l                                       ; $4d4f: $7d
    ld a, [hl]                                    ; $4d50: $7e
    ld c, l                                       ; $4d51: $4d
    ld c, [hl]                                    ; $4d52: $4e
    ld b, $07                                     ; $4d53: $06 $07
    ld c, a                                       ; $4d55: $4f
    ld d, b                                       ; $4d56: $50
    inc b                                         ; $4d57: $04
    inc b                                         ; $4d58: $04
    inc b                                         ; $4d59: $04
    adc c                                         ; $4d5a: $89
    inc b                                         ; $4d5b: $04
    rlca                                          ; $4d5c: $07
    adc c                                         ; $4d5d: $89
    adc c                                         ; $4d5e: $89
    rlca                                          ; $4d5f: $07
    inc b                                         ; $4d60: $04
    adc c                                         ; $4d61: $89
    adc c                                         ; $4d62: $89
    inc b                                         ; $4d63: $04
    inc b                                         ; $4d64: $04
    adc c                                         ; $4d65: $89
    adc c                                         ; $4d66: $89
    ld d, c                                       ; $4d67: $51
    ld d, d                                       ; $4d68: $52
    dec l                                         ; $4d69: $2d
    ld l, $53                                     ; $4d6a: $2e $53
    ld d, h                                       ; $4d6c: $54
    ld sp, $5532                                  ; $4d6d: $31 $32 $55
    ld d, [hl]                                    ; $4d70: $56
    ld a, l                                       ; $4d71: $7d
    ld a, [hl]                                    ; $4d72: $7e
    ld d, a                                       ; $4d73: $57
    ld e, b                                       ; $4d74: $58
    ld b, $07                                     ; $4d75: $06 $07
    adc c                                         ; $4d77: $89
    adc c                                         ; $4d78: $89
    rlca                                          ; $4d79: $07
    inc b                                         ; $4d7a: $04
    adc c                                         ; $4d7b: $89
    adc c                                         ; $4d7c: $89
    rlca                                          ; $4d7d: $07
    inc b                                         ; $4d7e: $04
    adc c                                         ; $4d7f: $89
    adc c                                         ; $4d80: $89
    inc b                                         ; $4d81: $04
    inc b                                         ; $4d82: $04
    adc c                                         ; $4d83: $89
    adc c                                         ; $4d84: $89
    inc b                                         ; $4d85: $04
    rlca                                          ; $4d86: $07
    ld c, b                                       ; $4d87: $48
    pop de                                        ; $4d88: $d1
    pop de                                        ; $4d89: $d1
    pop de                                        ; $4d8a: $d1
    ld c, c                                       ; $4d8b: $49
    pop de                                        ; $4d8c: $d1
    pop de                                        ; $4d8d: $d1
    pop de                                        ; $4d8e: $d1
    ld c, c                                       ; $4d8f: $49
    pop de                                        ; $4d90: $d1
    pop de                                        ; $4d91: $d1
    pop de                                        ; $4d92: $d1
    ld c, c                                       ; $4d93: $49
    pop de                                        ; $4d94: $d1
    pop de                                        ; $4d95: $d1
    pop de                                        ; $4d96: $d1
    adc b                                         ; $4d97: $88
    add [hl]                                      ; $4d98: $86
    add [hl]                                      ; $4d99: $86
    add [hl]                                      ; $4d9a: $86
    adc b                                         ; $4d9b: $88
    add [hl]                                      ; $4d9c: $86
    add [hl]                                      ; $4d9d: $86
    add [hl]                                      ; $4d9e: $86
    adc b                                         ; $4d9f: $88
    add [hl]                                      ; $4da0: $86
    add [hl]                                      ; $4da1: $86
    add [hl]                                      ; $4da2: $86
    adc b                                         ; $4da3: $88
    add [hl]                                      ; $4da4: $86
    add [hl]                                      ; $4da5: $86
    add [hl]                                      ; $4da6: $86
    dec l                                         ; $4da7: $2d
    ld l, $1d                                     ; $4da8: $2e $1d
    ld e, $31                                     ; $4daa: $1e $31
    ld [hl-], a                                   ; $4dac: $32
    ld hl, $7d22                                  ; $4dad: $21 $22 $7d
    ld a, [hl]                                    ; $4db0: $7e
    ld l, [hl]                                    ; $4db1: $6e
    ld l, a                                       ; $4db2: $6f
    ld b, $07                                     ; $4db3: $06 $07
    ld [hl], d                                    ; $4db5: $72
    ld [hl], e                                    ; $4db6: $73
    inc b                                         ; $4db7: $04
    inc b                                         ; $4db8: $04
    inc b                                         ; $4db9: $04
    inc b                                         ; $4dba: $04
    inc b                                         ; $4dbb: $04
    inc b                                         ; $4dbc: $04
    rlca                                          ; $4dbd: $07
    inc b                                         ; $4dbe: $04
    inc b                                         ; $4dbf: $04
    rlca                                          ; $4dc0: $07
    inc b                                         ; $4dc1: $04
    inc b                                         ; $4dc2: $04
    rlca                                          ; $4dc3: $07
    inc b                                         ; $4dc4: $04
    rlca                                          ; $4dc5: $07
    inc b                                         ; $4dc6: $04

jr_088_4dc7:
    add hl, bc                                    ; $4dc7: $09
    ld [$0607], sp                                ; $4dc8: $08 $07 $06
    dec c                                         ; $4dcb: $0d
    inc c                                         ; $4dcc: $0c
    dec bc                                        ; $4dcd: $0b
    ld a, [bc]                                    ; $4dce: $0a
    ld de, $0f10                                  ; $4dcf: $11 $10 $0f
    ld c, $74                                     ; $4dd2: $0e $74
    ld [hl], l                                    ; $4dd4: $75
    ld b, $b6                                     ; $4dd5: $06 $b6
    add hl, hl                                    ; $4dd7: $29
    add hl, hl                                    ; $4dd8: $29
    dec hl                                        ; $4dd9: $2b
    dec hl                                        ; $4dda: $2b
    add hl, hl                                    ; $4ddb: $29
    add hl, hl                                    ; $4ddc: $29
    dec hl                                        ; $4ddd: $2b
    dec hl                                        ; $4dde: $2b
    add hl, hl                                    ; $4ddf: $29
    add hl, hl                                    ; $4de0: $29
    dec hl                                        ; $4de1: $2b
    dec hl                                        ; $4de2: $2b
    inc b                                         ; $4de3: $04
    inc b                                         ; $4de4: $04
    inc b                                         ; $4de5: $04
    inc c                                         ; $4de6: $0c
    cp $fd                                        ; $4de7: $fe $fd
    db $fc                                        ; $4de9: $fc
    inc l                                         ; $4dea: $2c
    ld [bc], a                                    ; $4deb: $02
    ld bc, $2d2e                                  ; $4dec: $01 $2e $2d
    dec b                                         ; $4def: $05
    inc b                                         ; $4df0: $04
    cpl                                           ; $4df1: $2f
    pop de                                        ; $4df2: $d1
    inc bc                                        ; $4df3: $03
    jr nc, jr_088_4dc7                            ; $4df4: $30 $d1

    pop de                                        ; $4df6: $d1
    dec hl                                        ; $4df7: $2b
    dec hl                                        ; $4df8: $2b
    dec hl                                        ; $4df9: $2b
    ld a, [hl+]                                   ; $4dfa: $2a
    dec hl                                        ; $4dfb: $2b
    dec hl                                        ; $4dfc: $2b
    dec hl                                        ; $4dfd: $2b
    ld a, [hl+]                                   ; $4dfe: $2a
    dec hl                                        ; $4dff: $2b
    dec hl                                        ; $4e00: $2b
    ld a, [hl+]                                   ; $4e01: $2a
    add [hl]                                      ; $4e02: $86
    inc b                                         ; $4e03: $04
    xor d                                         ; $4e04: $aa
    add [hl]                                      ; $4e05: $86
    add [hl]                                      ; $4e06: $86
    dec h                                         ; $4e07: $25
    ld h, $89                                     ; $4e08: $26 $89
    adc d                                         ; $4e0a: $8a
    add hl, hl                                    ; $4e0b: $29
    ld a, [hl+]                                   ; $4e0c: $2a
    adc h                                         ; $4e0d: $8c
    adc l                                         ; $4e0e: $8d
    dec l                                         ; $4e0f: $2d
    ld l, $1d                                     ; $4e10: $2e $1d
    ld e, $31                                     ; $4e12: $1e $31
    ld [hl-], a                                   ; $4e14: $32
    ld hl, $046c                                  ; $4e15: $21 $6c $04
    inc b                                         ; $4e18: $04
    inc c                                         ; $4e19: $0c
    inc c                                         ; $4e1a: $0c
    inc b                                         ; $4e1b: $04
    rlca                                          ; $4e1c: $07
    inc c                                         ; $4e1d: $0c
    inc c                                         ; $4e1e: $0c
    inc b                                         ; $4e1f: $04
    inc b                                         ; $4e20: $04
    inc b                                         ; $4e21: $04
    inc b                                         ; $4e22: $04
    inc b                                         ; $4e23: $04
    inc b                                         ; $4e24: $04
    inc b                                         ; $4e25: $04
    inc b                                         ; $4e26: $04
    adc e                                         ; $4e27: $8b
    inc h                                         ; $4e28: $24
    add hl, hl                                    ; $4e29: $29
    inc bc                                        ; $4e2a: $03
    daa                                           ; $4e2b: $27
    ld b, a                                       ; $4e2c: $47
    inc bc                                        ; $4e2d: $03
    ld [hl], $59                                  ; $4e2e: $36 $59
    inc bc                                        ; $4e30: $03
    ld [hl], $38                                  ; $4e31: $36 $38
    inc bc                                        ; $4e33: $03
    dec sp                                        ; $4e34: $3b
    ld a, [hl-]                                   ; $4e35: $3a
    pop de                                        ; $4e36: $d1
    inc c                                         ; $4e37: $0c
    inc b                                         ; $4e38: $04
    inc c                                         ; $4e39: $0c
    inc b                                         ; $4e3a: $04
    inc b                                         ; $4e3b: $04
    inc c                                         ; $4e3c: $0c
    inc b                                         ; $4e3d: $04
    xor d                                         ; $4e3e: $aa
    inc c                                         ; $4e3f: $0c
    inc b                                         ; $4e40: $04
    xor d                                         ; $4e41: $aa
    xor d                                         ; $4e42: $aa
    inc b                                         ; $4e43: $04
    xor d                                         ; $4e44: $aa
    xor d                                         ; $4e45: $aa
    add [hl]                                      ; $4e46: $86
    inc sp                                        ; $4e47: $33
    ld [hl-], a                                   ; $4e48: $32
    pop de                                        ; $4e49: $d1
    pop de                                        ; $4e4a: $d1
    inc [hl]                                      ; $4e4b: $34
    pop de                                        ; $4e4c: $d1
    pop de                                        ; $4e4d: $d1
    pop de                                        ; $4e4e: $d1
    pop de                                        ; $4e4f: $d1
    pop de                                        ; $4e50: $d1
    pop de                                        ; $4e51: $d1
    pop de                                        ; $4e52: $d1
    pop de                                        ; $4e53: $d1
    pop de                                        ; $4e54: $d1
    pop de                                        ; $4e55: $d1
    pop de                                        ; $4e56: $d1
    xor d                                         ; $4e57: $aa
    xor d                                         ; $4e58: $aa
    add [hl]                                      ; $4e59: $86
    add [hl]                                      ; $4e5a: $86
    xor d                                         ; $4e5b: $aa
    add [hl]                                      ; $4e5c: $86
    add [hl]                                      ; $4e5d: $86
    add [hl]                                      ; $4e5e: $86
    add [hl]                                      ; $4e5f: $86
    add [hl]                                      ; $4e60: $86
    add [hl]                                      ; $4e61: $86
    add [hl]                                      ; $4e62: $86
    add [hl]                                      ; $4e63: $86
    add [hl]                                      ; $4e64: $86
    add [hl]                                      ; $4e65: $86
    add [hl]                                      ; $4e66: $86
    ld a, l                                       ; $4e67: $7d
    ld a, [hl]                                    ; $4e68: $7e
    xor $03                                       ; $4e69: $ee $03
    ld sp, $3f03                                  ; $4e6b: $31 $03 $3f
    ld a, $3f                                     ; $4e6e: $3e $3f
    ld b, c                                       ; $4e70: $41
    ld b, b                                       ; $4e71: $40
    pop de                                        ; $4e72: $d1
    ld b, d                                       ; $4e73: $42
    pop de                                        ; $4e74: $d1
    pop de                                        ; $4e75: $d1
    pop de                                        ; $4e76: $d1
    inc b                                         ; $4e77: $04
    inc b                                         ; $4e78: $04
    inc c                                         ; $4e79: $0c
    inc b                                         ; $4e7a: $04
    inc c                                         ; $4e7b: $0c
    inc b                                         ; $4e7c: $04
    xor d                                         ; $4e7d: $aa
    xor d                                         ; $4e7e: $aa
    xor d                                         ; $4e7f: $aa
    xor d                                         ; $4e80: $aa
    xor d                                         ; $4e81: $aa
    add [hl]                                      ; $4e82: $86
    xor d                                         ; $4e83: $aa
    add [hl]                                      ; $4e84: $86
    add [hl]                                      ; $4e85: $86
    add [hl]                                      ; $4e86: $86
    dec a                                         ; $4e87: $3d
    inc a                                         ; $4e88: $3c
    pop de                                        ; $4e89: $d1
    pop de                                        ; $4e8a: $d1
    pop de                                        ; $4e8b: $d1
    pop de                                        ; $4e8c: $d1
    pop de                                        ; $4e8d: $d1
    pop de                                        ; $4e8e: $d1
    pop de                                        ; $4e8f: $d1
    pop de                                        ; $4e90: $d1
    pop de                                        ; $4e91: $d1
    pop de                                        ; $4e92: $d1
    pop de                                        ; $4e93: $d1
    pop de                                        ; $4e94: $d1
    pop de                                        ; $4e95: $d1
    pop de                                        ; $4e96: $d1
    xor d                                         ; $4e97: $aa
    xor d                                         ; $4e98: $aa
    add [hl]                                      ; $4e99: $86
    add [hl]                                      ; $4e9a: $86
    add [hl]                                      ; $4e9b: $86
    add [hl]                                      ; $4e9c: $86
    add [hl]                                      ; $4e9d: $86
    add [hl]                                      ; $4e9e: $86
    add [hl]                                      ; $4e9f: $86
    add [hl]                                      ; $4ea0: $86
    add [hl]                                      ; $4ea1: $86
    add [hl]                                      ; $4ea2: $86
    add [hl]                                      ; $4ea3: $86
    add [hl]                                      ; $4ea4: $86
    add [hl]                                      ; $4ea5: $86
    add [hl]                                      ; $4ea6: $86
    pop de                                        ; $4ea7: $d1
    pop de                                        ; $4ea8: $d1
    pop de                                        ; $4ea9: $d1
    ld c, c                                       ; $4eaa: $49
    pop de                                        ; $4eab: $d1
    pop de                                        ; $4eac: $d1
    pop de                                        ; $4ead: $d1
    ld e, d                                       ; $4eae: $5a
    pop de                                        ; $4eaf: $d1
    pop de                                        ; $4eb0: $d1
    pop de                                        ; $4eb1: $d1
    pop de                                        ; $4eb2: $d1
    pop de                                        ; $4eb3: $d1
    pop de                                        ; $4eb4: $d1
    pop de                                        ; $4eb5: $d1
    pop de                                        ; $4eb6: $d1
    add [hl]                                      ; $4eb7: $86
    add [hl]                                      ; $4eb8: $86
    add [hl]                                      ; $4eb9: $86
    adc b                                         ; $4eba: $88
    add [hl]                                      ; $4ebb: $86
    add [hl]                                      ; $4ebc: $86
    add [hl]                                      ; $4ebd: $86
    adc b                                         ; $4ebe: $88
    add [hl]                                      ; $4ebf: $86
    add [hl]                                      ; $4ec0: $86
    add [hl]                                      ; $4ec1: $86
    add [hl]                                      ; $4ec2: $86
    add [hl]                                      ; $4ec3: $86
    add [hl]                                      ; $4ec4: $86
    add [hl]                                      ; $4ec5: $86
    add [hl]                                      ; $4ec6: $86
    dec h                                         ; $4ec7: $25
    ld h, $5b                                     ; $4ec8: $26 $5b
    ld e, h                                       ; $4eca: $5c
    ld e, l                                       ; $4ecb: $5d
    ld e, l                                       ; $4ecc: $5d
    ld e, l                                       ; $4ecd: $5d
    ld e, l                                       ; $4ece: $5d
    pop de                                        ; $4ecf: $d1
    pop de                                        ; $4ed0: $d1
    pop de                                        ; $4ed1: $d1
    pop de                                        ; $4ed2: $d1
    pop de                                        ; $4ed3: $d1
    pop de                                        ; $4ed4: $d1
    pop de                                        ; $4ed5: $d1
    pop de                                        ; $4ed6: $d1
    inc b                                         ; $4ed7: $04
    rlca                                          ; $4ed8: $07
    adc c                                         ; $4ed9: $89
    adc c                                         ; $4eda: $89
    adc b                                         ; $4edb: $88
    adc b                                         ; $4edc: $88
    adc b                                         ; $4edd: $88
    adc b                                         ; $4ede: $88
    add [hl]                                      ; $4edf: $86
    add [hl]                                      ; $4ee0: $86
    add [hl]                                      ; $4ee1: $86
    add [hl]                                      ; $4ee2: $86
    add [hl]                                      ; $4ee3: $86
    add [hl]                                      ; $4ee4: $86
    add [hl]                                      ; $4ee5: $86
    add [hl]                                      ; $4ee6: $86
    ld e, [hl]                                    ; $4ee7: $5e
    ld e, a                                       ; $4ee8: $5f
    dec h                                         ; $4ee9: $25
    ld h, $5d                                     ; $4eea: $26 $5d
    ld e, l                                       ; $4eec: $5d
    ld e, l                                       ; $4eed: $5d
    ld e, l                                       ; $4eee: $5d
    pop de                                        ; $4eef: $d1
    pop de                                        ; $4ef0: $d1
    pop de                                        ; $4ef1: $d1
    pop de                                        ; $4ef2: $d1
    pop de                                        ; $4ef3: $d1
    pop de                                        ; $4ef4: $d1
    pop de                                        ; $4ef5: $d1
    pop de                                        ; $4ef6: $d1
    adc c                                         ; $4ef7: $89
    adc c                                         ; $4ef8: $89
    inc b                                         ; $4ef9: $04
    inc b                                         ; $4efa: $04
    adc b                                         ; $4efb: $88
    adc b                                         ; $4efc: $88
    adc b                                         ; $4efd: $88
    adc b                                         ; $4efe: $88
    add [hl]                                      ; $4eff: $86
    add [hl]                                      ; $4f00: $86
    add [hl]                                      ; $4f01: $86
    add [hl]                                      ; $4f02: $86
    add [hl]                                      ; $4f03: $86
    add [hl]                                      ; $4f04: $86
    add [hl]                                      ; $4f05: $86
    add [hl]                                      ; $4f06: $86
    ld c, c                                       ; $4f07: $49
    pop de                                        ; $4f08: $d1
    pop de                                        ; $4f09: $d1
    pop de                                        ; $4f0a: $d1
    ld h, b                                       ; $4f0b: $60
    pop de                                        ; $4f0c: $d1
    pop de                                        ; $4f0d: $d1
    pop de                                        ; $4f0e: $d1
    pop de                                        ; $4f0f: $d1
    pop de                                        ; $4f10: $d1
    pop de                                        ; $4f11: $d1
    pop de                                        ; $4f12: $d1
    pop de                                        ; $4f13: $d1
    pop de                                        ; $4f14: $d1
    pop de                                        ; $4f15: $d1
    pop de                                        ; $4f16: $d1
    adc b                                         ; $4f17: $88
    add [hl]                                      ; $4f18: $86
    add [hl]                                      ; $4f19: $86
    add [hl]                                      ; $4f1a: $86
    adc b                                         ; $4f1b: $88
    add [hl]                                      ; $4f1c: $86
    add [hl]                                      ; $4f1d: $86
    add [hl]                                      ; $4f1e: $86
    add [hl]                                      ; $4f1f: $86
    add [hl]                                      ; $4f20: $86
    add [hl]                                      ; $4f21: $86
    add [hl]                                      ; $4f22: $86
    add [hl]                                      ; $4f23: $86
    add [hl]                                      ; $4f24: $86
    add [hl]                                      ; $4f25: $86
    add [hl]                                      ; $4f26: $86
    ld c, $00                                     ; $4f27: $0e $00
    rrca                                          ; $4f29: $0f
    nop                                           ; $4f2a: $00
    ret nz                                        ; $4f2b: $c0

    dec c                                         ; $4f2c: $0d
    pop de                                        ; $4f2d: $d1
    pop de                                        ; $4f2e: $d1
    pop de                                        ; $4f2f: $d1
    pop de                                        ; $4f30: $d1
    pop de                                        ; $4f31: $d1
    pop de                                        ; $4f32: $d1
    pop de                                        ; $4f33: $d1
    pop de                                        ; $4f34: $d1
    pop de                                        ; $4f35: $d1
    pop de                                        ; $4f36: $d1
    pop de                                        ; $4f37: $d1
    pop de                                        ; $4f38: $d1
    pop de                                        ; $4f39: $d1
    pop de                                        ; $4f3a: $d1
    pop de                                        ; $4f3b: $d1
    pop de                                        ; $4f3c: $d1
    add c                                         ; $4f3d: $81
    add c                                         ; $4f3e: $81
    add c                                         ; $4f3f: $81
    add c                                         ; $4f40: $81
    add c                                         ; $4f41: $81
    add c                                         ; $4f42: $81
    add c                                         ; $4f43: $81
    add c                                         ; $4f44: $81
    add c                                         ; $4f45: $81
    ld bc, $8101                                  ; $4f46: $01 $01 $81
    ld bc, $0101                                  ; $4f49: $01 $01 $01
    add c                                         ; $4f4c: $81
    pop de                                        ; $4f4d: $d1
    pop de                                        ; $4f4e: $d1
    pop de                                        ; $4f4f: $d1
    pop de                                        ; $4f50: $d1
    pop de                                        ; $4f51: $d1
    pop de                                        ; $4f52: $d1
    pop de                                        ; $4f53: $d1
    pop de                                        ; $4f54: $d1
    pop de                                        ; $4f55: $d1
    pop de                                        ; $4f56: $d1
    pop de                                        ; $4f57: $d1
    pop de                                        ; $4f58: $d1
    pop de                                        ; $4f59: $d1
    pop de                                        ; $4f5a: $d1
    pop de                                        ; $4f5b: $d1
    jp nc, $0101                                  ; $4f5c: $d2 $01 $01

    ld bc, $0101                                  ; $4f5f: $01 $01 $01
    ld bc, $0101                                  ; $4f62: $01 $01 $01
    ld bc, $0101                                  ; $4f65: $01 $01 $01
    ld bc, $0101                                  ; $4f68: $01 $01 $01
    ld bc, $d101                                  ; $4f6b: $01 $01 $d1
    pop de                                        ; $4f6e: $d1
    pop de                                        ; $4f6f: $d1
    pop de                                        ; $4f70: $d1
    pop de                                        ; $4f71: $d1
    pop de                                        ; $4f72: $d1
    pop de                                        ; $4f73: $d1
    pop de                                        ; $4f74: $d1
    pop de                                        ; $4f75: $d1
    pop de                                        ; $4f76: $d1
    pop de                                        ; $4f77: $d1
    pop de                                        ; $4f78: $d1
    pop de                                        ; $4f79: $d1
    pop de                                        ; $4f7a: $d1
    pop de                                        ; $4f7b: $d1
    db $d3                                        ; $4f7c: $d3
    ld bc, $0101                                  ; $4f7d: $01 $01 $01
    ld bc, $0101                                  ; $4f80: $01 $01 $01
    ld bc, $0101                                  ; $4f83: $01 $01 $01
    ld bc, $0101                                  ; $4f86: $01 $01 $01
    ld bc, $0101                                  ; $4f89: $01 $01 $01
    ld bc, $d1d1                                  ; $4f8c: $01 $d1 $d1
    call nc, $d1d5                                ; $4f8f: $d4 $d5 $d1
    sub $d7                                       ; $4f92: $d6 $d7
    ret c                                         ; $4f94: $d8

    reti                                          ; $4f95: $d9


    jp c, $dcdb                                   ; $4f96: $da $db $dc

    db $dd                                        ; $4f99: $dd
    db $db                                        ; $4f9a: $db
    db $db                                        ; $4f9b: $db
    sbc $01                                       ; $4f9c: $de $01
    ld bc, $0101                                  ; $4f9e: $01 $01 $01
    ld bc, $0101                                  ; $4fa1: $01 $01 $01
    ld bc, $0101                                  ; $4fa4: $01 $01 $01
    ld bc, $0101                                  ; $4fa7: $01 $01 $01
    ld bc, $0101                                  ; $4faa: $01 $01 $01
    pop de                                        ; $4fad: $d1
    pop de                                        ; $4fae: $d1
    pop de                                        ; $4faf: $d1
    pop de                                        ; $4fb0: $d1
    rst $18                                       ; $4fb1: $df
    ldh [$e0], a                                  ; $4fb2: $e0 $e0
    ldh [$e1], a                                  ; $4fb4: $e0 $e1
    ld [c], a                                     ; $4fb6: $e2
    db $e3                                        ; $4fb7: $e3
    db $e3                                        ; $4fb8: $e3
    pop hl                                        ; $4fb9: $e1
    db $e4                                        ; $4fba: $e4
    db $db                                        ; $4fbb: $db
    db $db                                        ; $4fbc: $db
    ld bc, $0101                                  ; $4fbd: $01 $01 $01
    ld bc, $0000                                  ; $4fc0: $01 $00 $00
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    ld bc, $0101                                  ; $4fc6: $01 $01 $01
    nop                                           ; $4fc9: $00
    ld bc, $0101                                  ; $4fca: $01 $01 $01
    pop de                                        ; $4fcd: $d1
    pop de                                        ; $4fce: $d1
    pop de                                        ; $4fcf: $d1
    pop de                                        ; $4fd0: $d1
    ldh [$e0], a                                  ; $4fd1: $e0 $e0
    ldh [$e0], a                                  ; $4fd3: $e0 $e0
    db $e3                                        ; $4fd5: $e3
    db $e3                                        ; $4fd6: $e3
    db $e3                                        ; $4fd7: $e3
    db $e3                                        ; $4fd8: $e3
    push hl                                       ; $4fd9: $e5
    and $e7                                       ; $4fda: $e6 $e7
    db $db                                        ; $4fdc: $db
    ld bc, $0101                                  ; $4fdd: $01 $01 $01
    ld bc, $0000                                  ; $4fe0: $01 $00 $00
    nop                                           ; $4fe3: $00
    nop                                           ; $4fe4: $00
    ld bc, $0101                                  ; $4fe5: $01 $01 $01
    ld bc, $0101                                  ; $4fe8: $01 $01 $01
    ld bc, $e101                                  ; $4feb: $01 $01 $e1
    add sp, -$25                                  ; $4fee: $e8 $db
    jp hl                                         ; $4ff0: $e9


    pop hl                                        ; $4ff1: $e1
    ld [$eceb], a                                 ; $4ff2: $ea $eb $ec
    pop hl                                        ; $4ff5: $e1
    db $ed                                        ; $4ff6: $ed
    xor $ee                                       ; $4ff7: $ee $ee
    rst $28                                       ; $4ff9: $ef
    ldh a, [$f1]                                  ; $4ffa: $f0 $f1
    ld a, [c]                                     ; $4ffc: $f2
    nop                                           ; $4ffd: $00
    ld bc, $0101                                  ; $4ffe: $01 $01 $01
    nop                                           ; $5001: $00
    ld bc, $0101                                  ; $5002: $01 $01 $01
    nop                                           ; $5005: $00
    ld bc, $0101                                  ; $5006: $01 $01 $01
    nop                                           ; $5009: $00
    ld [bc], a                                    ; $500a: $02
    ld [bc], a                                    ; $500b: $02
    ld bc, $f4f3                                  ; $500c: $01 $f3 $f4
    push af                                       ; $500f: $f5
    db $db                                        ; $5010: $db
    or $f7                                        ; $5011: $f6 $f7
    ld hl, sp-$15                                 ; $5013: $f8 $eb
    ld sp, hl                                     ; $5015: $f9
    ld a, [$eefb]                                 ; $5016: $fa $fb $ee
    db $fc                                        ; $5019: $fc
    db $fd                                        ; $501a: $fd
    cp $f0                                        ; $501b: $fe $f0
    ld bc, $0101                                  ; $501d: $01 $01 $01
    ld bc, $0101                                  ; $5020: $01 $01 $01
    ld bc, $0101                                  ; $5023: $01 $01 $01
    ld bc, $0101                                  ; $5026: $01 $01 $01
    ld bc, $0101                                  ; $5029: $01 $01 $01
    ld [bc], a                                    ; $502c: $02
    pop de                                        ; $502d: $d1
    pop de                                        ; $502e: $d1
    pop de                                        ; $502f: $d1
    pop de                                        ; $5030: $d1
    pop de                                        ; $5031: $d1
    pop de                                        ; $5032: $d1
    rst $38                                       ; $5033: $ff
    nop                                           ; $5034: $00
    pop de                                        ; $5035: $d1
    ld bc, $0302                                  ; $5036: $01 $02 $03
    inc b                                         ; $5039: $04
    dec b                                         ; $503a: $05
    db $db                                        ; $503b: $db
    db $db                                        ; $503c: $db
    ld bc, $0101                                  ; $503d: $01 $01 $01
    ld bc, $0101                                  ; $5040: $01 $01 $01
    ld bc, $0101                                  ; $5043: $01 $01 $01
    ld bc, $0101                                  ; $5046: $01 $01 $01
    ld bc, $0101                                  ; $5049: $01 $01 $01
    ld bc, $06d1                                  ; $504c: $01 $d1 $06
    rlca                                          ; $504f: $07
    ld [$0a09], sp                                ; $5050: $08 $09 $0a
    db $db                                        ; $5053: $db
    db $db                                        ; $5054: $db
    db $db                                        ; $5055: $db
    db $db                                        ; $5056: $db
    db $db                                        ; $5057: $db
    db $db                                        ; $5058: $db
    db $db                                        ; $5059: $db
    db $db                                        ; $505a: $db
    db $db                                        ; $505b: $db
    db $db                                        ; $505c: $db
    ld bc, $0101                                  ; $505d: $01 $01 $01
    ld bc, $0101                                  ; $5060: $01 $01 $01
    ld bc, $0101                                  ; $5063: $01 $01 $01
    ld bc, $0101                                  ; $5066: $01 $01 $01
    ld bc, $0101                                  ; $5069: $01 $01 $01
    ld bc, $0be2                                  ; $506c: $01 $e2 $0b
    inc c                                         ; $506f: $0c
    dec c                                         ; $5070: $0d
    db $e4                                        ; $5071: $e4
    ld c, $0f                                     ; $5072: $0e $0f
    db $10                                        ; $5074: $10
    add sp, $11                                   ; $5075: $e8 $11
    ld [de], a                                    ; $5077: $12
    db $10                                        ; $5078: $10
    ld [$1413], a                                 ; $5079: $ea $13 $14
    dec d                                         ; $507c: $15
    ld hl, $0202                                  ; $507d: $21 $02 $02
    ld bc, $0221                                  ; $5080: $01 $21 $02
    ld [bc], a                                    ; $5083: $02
    ld bc, $0221                                  ; $5084: $01 $21 $02
    ld [bc], a                                    ; $5087: $02
    ld bc, $0221                                  ; $5088: $01 $21 $02
    ld [bc], a                                    ; $508b: $02
    ld [bc], a                                    ; $508c: $02
    ld d, $17                                     ; $508d: $16 $17
    jr jr_088_50aa                                ; $508f: $18 $19

    ld a, [de]                                    ; $5091: $1a
    dec de                                        ; $5092: $1b
    inc e                                         ; $5093: $1c
    dec e                                         ; $5094: $1d
    db $10                                        ; $5095: $10
    db $10                                        ; $5096: $10
    db $10                                        ; $5097: $10
    ld e, $db                                     ; $5098: $1e $db
    db $db                                        ; $509a: $db
    rra                                           ; $509b: $1f
    inc de                                        ; $509c: $13
    ld bc, $0101                                  ; $509d: $01 $01 $01
    ld [bc], a                                    ; $50a0: $02
    ld bc, $0101                                  ; $50a1: $01 $01 $01
    ld [bc], a                                    ; $50a4: $02
    ld bc, $0101                                  ; $50a5: $01 $01 $01
    ld [bc], a                                    ; $50a8: $02
    ld [bc], a                                    ; $50a9: $02

jr_088_50aa:
    ld [bc], a                                    ; $50aa: $02
    ld [bc], a                                    ; $50ab: $02
    ld [bc], a                                    ; $50ac: $02
    jr nz, jr_088_50d0                            ; $50ad: $20 $21

    db $db                                        ; $50af: $db
    db $db                                        ; $50b0: $db
    ld [hl+], a                                   ; $50b1: $22
    inc hl                                        ; $50b2: $23
    db $db                                        ; $50b3: $db
    inc h                                         ; $50b4: $24
    dec h                                         ; $50b5: $25
    ld h, $27                                     ; $50b6: $26 $27
    jr z, jr_088_50e3                             ; $50b8: $28 $29

    ld a, [hl+]                                   ; $50ba: $2a
    dec hl                                        ; $50bb: $2b
    db $db                                        ; $50bc: $db
    ld bc, $0101                                  ; $50bd: $01 $01 $01
    ld bc, $0101                                  ; $50c0: $01 $01 $01
    ld bc, $0101                                  ; $50c3: $01 $01 $01
    ld bc, $0101                                  ; $50c6: $01 $01 $01
    ld bc, $0101                                  ; $50c9: $01 $01 $01
    ld [bc], a                                    ; $50cc: $02
    db $db                                        ; $50cd: $db
    inc l                                         ; $50ce: $2c
    dec l                                         ; $50cf: $2d

jr_088_50d0:
    ld l, $2f                                     ; $50d0: $2e $2f
    jr nc, jr_088_5105                            ; $50d2: $30 $31

    ld [hl-], a                                   ; $50d4: $32
    dec hl                                        ; $50d5: $2b
    db $db                                        ; $50d6: $db
    inc sp                                        ; $50d7: $33
    inc [hl]                                      ; $50d8: $34
    rrca                                          ; $50d9: $0f
    dec [hl]                                      ; $50da: $35
    ld [hl], $37                                  ; $50db: $36 $37
    ld bc, $0101                                  ; $50dd: $01 $01 $01
    ld bc, $0101                                  ; $50e0: $01 $01 $01

jr_088_50e3:
    ld bc, $0101                                  ; $50e3: $01 $01 $01
    ld [bc], a                                    ; $50e6: $02
    ld [bc], a                                    ; $50e7: $02
    ld [bc], a                                    ; $50e8: $02
    ld [bc], a                                    ; $50e9: $02
    ld [bc], a                                    ; $50ea: $02
    ld [bc], a                                    ; $50eb: $02
    ld [bc], a                                    ; $50ec: $02
    db $ed                                        ; $50ed: $ed
    jr c, jr_088_5129                             ; $50ee: $38 $39

    ld a, [hl-]                                   ; $50f0: $3a
    db $db                                        ; $50f1: $db
    dec sp                                        ; $50f2: $3b
    pop af                                        ; $50f3: $f1
    inc a                                         ; $50f4: $3c
    dec a                                         ; $50f5: $3d
    dec bc                                        ; $50f6: $0b
    ld a, $3f                                     ; $50f7: $3e $3f
    ld b, b                                       ; $50f9: $40
    ld c, $41                                     ; $50fa: $0e $41
    dec [hl]                                      ; $50fc: $35
    ld hl, $0202                                  ; $50fd: $21 $02 $02
    ld [bc], a                                    ; $5100: $02
    ld [bc], a                                    ; $5101: $02
    ld [bc], a                                    ; $5102: $02
    ld [bc], a                                    ; $5103: $02
    ld [bc], a                                    ; $5104: $02

jr_088_5105:
    ld [bc], a                                    ; $5105: $02
    ld [bc], a                                    ; $5106: $02
    ld [bc], a                                    ; $5107: $02
    ld [bc], a                                    ; $5108: $02
    ld [bc], a                                    ; $5109: $02
    ld [bc], a                                    ; $510a: $02
    ld [bc], a                                    ; $510b: $02
    ld [bc], a                                    ; $510c: $02
    ld b, d                                       ; $510d: $42
    ld b, e                                       ; $510e: $43
    ld b, h                                       ; $510f: $44
    jr c, jr_088_5157                             ; $5110: $38 $45

    ld b, [hl]                                    ; $5112: $46
    ld b, a                                       ; $5113: $47
    ldh a, [rOBP0]                                ; $5114: $f0 $48
    inc [hl]                                      ; $5116: $34
    dec a                                         ; $5117: $3d
    dec bc                                        ; $5118: $0b
    ld [hl], $37                                  ; $5119: $36 $37
    ld b, b                                       ; $511b: $40
    ld c, $02                                     ; $511c: $0e $02
    ld [bc], a                                    ; $511e: $02
    ld [bc], a                                    ; $511f: $02
    ld [bc], a                                    ; $5120: $02
    ld [bc], a                                    ; $5121: $02
    ld [bc], a                                    ; $5122: $02
    ld [bc], a                                    ; $5123: $02
    ld [bc], a                                    ; $5124: $02
    ld [bc], a                                    ; $5125: $02
    ld [bc], a                                    ; $5126: $02
    ld [bc], a                                    ; $5127: $02
    ld [bc], a                                    ; $5128: $02

jr_088_5129:
    ld [bc], a                                    ; $5129: $02
    ld [bc], a                                    ; $512a: $02
    ld [bc], a                                    ; $512b: $02
    ld [bc], a                                    ; $512c: $02
    pop de                                        ; $512d: $d1
    pop de                                        ; $512e: $d1
    pop de                                        ; $512f: $d1
    pop de                                        ; $5130: $d1
    ldh [rOBP1], a                                ; $5131: $e0 $49
    pop de                                        ; $5133: $d1
    pop de                                        ; $5134: $d1
    ld c, d                                       ; $5135: $4a
    pop hl                                        ; $5136: $e1
    pop de                                        ; $5137: $d1
    pop de                                        ; $5138: $d1
    ld c, e                                       ; $5139: $4b
    pop hl                                        ; $513a: $e1
    pop de                                        ; $513b: $d1
    pop de                                        ; $513c: $d1
    ld bc, $0101                                  ; $513d: $01 $01 $01
    ld bc, $0000                                  ; $5140: $01 $00 $00
    ld bc, $0101                                  ; $5143: $01 $01 $01
    nop                                           ; $5146: $00
    ld bc, $0101                                  ; $5147: $01 $01 $01
    nop                                           ; $514a: $00
    ld bc, $4b01                                  ; $514b: $01 $01 $4b
    pop hl                                        ; $514e: $e1
    pop de                                        ; $514f: $d1
    pop de                                        ; $5150: $d1
    ld c, h                                       ; $5151: $4c
    pop hl                                        ; $5152: $e1
    pop de                                        ; $5153: $d1
    pop de                                        ; $5154: $d1
    ld c, l                                       ; $5155: $4d
    pop hl                                        ; $5156: $e1

jr_088_5157:
    pop de                                        ; $5157: $d1
    pop de                                        ; $5158: $d1
    pop af                                        ; $5159: $f1
    rst $28                                       ; $515a: $ef
    pop de                                        ; $515b: $d1
    pop de                                        ; $515c: $d1
    ld bc, $0100                                  ; $515d: $01 $00 $01
    ld bc, $0001                                  ; $5160: $01 $01 $00
    ld bc, $0101                                  ; $5163: $01 $01 $01
    nop                                           ; $5166: $00
    ld bc, $0201                                  ; $5167: $01 $01 $02
    nop                                           ; $516a: $00
    ld bc, $3e01                                  ; $516b: $01 $01 $3e
    ld [c], a                                     ; $516e: $e2
    ld [$4107], sp                                ; $516f: $08 $07 $41
    db $e4                                        ; $5172: $e4
    db $db                                        ; $5173: $db
    db $db                                        ; $5174: $db
    ld [de], a                                    ; $5175: $12
    add sp, -$25                                  ; $5176: $e8 $db
    db $db                                        ; $5178: $db
    inc d                                         ; $5179: $14
    ld [$dbdb], a                                 ; $517a: $ea $db $db
    ld [bc], a                                    ; $517d: $02
    ld bc, $2121                                  ; $517e: $01 $21 $21
    ld [bc], a                                    ; $5181: $02
    ld bc, $0101                                  ; $5182: $01 $01 $01
    ld [bc], a                                    ; $5185: $02
    ld bc, $0101                                  ; $5186: $01 $01 $01
    ld [bc], a                                    ; $5189: $02
    ld bc, $0101                                  ; $518a: $01 $01 $01
    ld b, $d1                                     ; $518d: $06 $d1
    pop de                                        ; $518f: $d1
    pop de                                        ; $5190: $d1
    ld a, [bc]                                    ; $5191: $0a
    add hl, bc                                    ; $5192: $09
    nop                                           ; $5193: $00
    rst $38                                       ; $5194: $ff
    ld c, [hl]                                    ; $5195: $4e
    ld c, a                                       ; $5196: $4f
    inc bc                                        ; $5197: $03
    ld [bc], a                                    ; $5198: $02
    ld d, b                                       ; $5199: $50
    ld d, c                                       ; $519a: $51
    db $db                                        ; $519b: $db
    db $db                                        ; $519c: $db
    ld hl, $0101                                  ; $519d: $21 $01 $01
    ld bc, $2121                                  ; $51a0: $01 $21 $21
    ld hl, $0121                                  ; $51a3: $21 $21 $01
    ld bc, $2121                                  ; $51a6: $01 $21 $21
    ld bc, $0101                                  ; $51a9: $01 $01 $01
    ld bc, $d1d1                                  ; $51ac: $01 $d1 $d1
    pop de                                        ; $51af: $d1
    pop de                                        ; $51b0: $d1
    pop de                                        ; $51b1: $d1
    pop de                                        ; $51b2: $d1
    pop de                                        ; $51b3: $d1
    pop de                                        ; $51b4: $d1
    ld bc, $d1d1                                  ; $51b5: $01 $d1 $d1
    pop de                                        ; $51b8: $d1
    ld d, d                                       ; $51b9: $52
    ld d, e                                       ; $51ba: $53
    jp nc, Jump_000_01d1                          ; $51bb: $d2 $d1 $01

    ld bc, $0101                                  ; $51be: $01 $01 $01
    ld bc, $0101                                  ; $51c1: $01 $01 $01
    ld bc, $0121                                  ; $51c4: $01 $21 $01
    ld bc, $0101                                  ; $51c7: $01 $01 $01
    ld bc, $0121                                  ; $51ca: $01 $21 $01
    add hl, sp                                    ; $51cd: $39
    db $ed                                        ; $51ce: $ed
    ld l, $2d                                     ; $51cf: $2e $2d
    ld d, h                                       ; $51d1: $54
    db $db                                        ; $51d2: $db
    ld [hl-], a                                   ; $51d3: $32
    ld sp, $3f3e                                  ; $51d4: $31 $3e $3f
    ld c, b                                       ; $51d7: $48
    ld d, l                                       ; $51d8: $55
    ld b, c                                       ; $51d9: $41
    dec [hl]                                      ; $51da: $35
    ld [hl], $37                                  ; $51db: $36 $37
    ld [bc], a                                    ; $51dd: $02
    ld bc, $2121                                  ; $51de: $01 $21 $21
    ld [bc], a                                    ; $51e1: $02
    ld [bc], a                                    ; $51e2: $02
    ld hl, $0221                                  ; $51e3: $21 $21 $02
    ld [bc], a                                    ; $51e6: $02
    ld [bc], a                                    ; $51e7: $02
    ld [bc], a                                    ; $51e8: $02
    ld [bc], a                                    ; $51e9: $02
    ld [bc], a                                    ; $51ea: $02
    ld [bc], a                                    ; $51eb: $02
    ld [bc], a                                    ; $51ec: $02
    inc l                                         ; $51ed: $2c
    db $db                                        ; $51ee: $db
    db $db                                        ; $51ef: $db
    db $db                                        ; $51f0: $db
    jr nc, @+$31                                  ; $51f1: $30 $2f

    inc h                                         ; $51f3: $24
    db $db                                        ; $51f4: $db
    db $db                                        ; $51f5: $db
    dec hl                                        ; $51f6: $2b
    jr z, jr_088_5220                             ; $51f7: $28 $27

    ld b, b                                       ; $51f9: $40
    dec e                                         ; $51fa: $1d
    db $db                                        ; $51fb: $db
    dec hl                                        ; $51fc: $2b
    ld hl, $0101                                  ; $51fd: $21 $01 $01
    ld bc, $2121                                  ; $5200: $01 $21 $21
    ld hl, $0201                                  ; $5203: $21 $01 $02
    ld hl, $2121                                  ; $5206: $21 $21 $21
    ld [bc], a                                    ; $5209: $02
    ld [bc], a                                    ; $520a: $02
    ld [bc], a                                    ; $520b: $02
    ld hl, $dbdb                                  ; $520c: $21 $db $db
    ld d, [hl]                                    ; $520f: $56
    call nc, $dbdb                                ; $5210: $d4 $db $db
    db $db                                        ; $5213: $db
    rst $10                                       ; $5214: $d7
    ld d, a                                       ; $5215: $57
    db $db                                        ; $5216: $db
    db $db                                        ; $5217: $db
    db $db                                        ; $5218: $db
    ld a, [hl+]                                   ; $5219: $2a
    ld e, b                                       ; $521a: $58
    db $db                                        ; $521b: $db
    db $db                                        ; $521c: $db
    ld bc, $0101                                  ; $521d: $01 $01 $01

jr_088_5220:
    ld hl, $0101                                  ; $5220: $21 $01 $01
    ld bc, $0121                                  ; $5223: $01 $21 $01
    ld bc, $0101                                  ; $5226: $01 $01 $01
    ld hl, $0101                                  ; $5229: $21 $01 $01
    ld bc, $d1d1                                  ; $522c: $01 $d1 $d1
    pop de                                        ; $522f: $d1
    pop de                                        ; $5230: $d1
    sub $d1                                       ; $5231: $d6 $d1
    pop de                                        ; $5233: $d1
    pop de                                        ; $5234: $d1
    jp c, $d1d9                                   ; $5235: $da $d9 $d1

    pop de                                        ; $5238: $d1
    db $db                                        ; $5239: $db
    db $dd                                        ; $523a: $dd
    db $d3                                        ; $523b: $d3
    pop de                                        ; $523c: $d1
    ld bc, $0101                                  ; $523d: $01 $01 $01
    ld bc, $0121                                  ; $5240: $01 $21 $01
    ld bc, $2101                                  ; $5243: $01 $01 $21
    ld hl, $0101                                  ; $5246: $21 $01 $01
    ld bc, $2121                                  ; $5249: $01 $21 $21
    ld bc, $d1d1                                  ; $524c: $01 $d1 $d1
    pop de                                        ; $524f: $d1
    ld e, c                                       ; $5250: $59
    pop de                                        ; $5251: $d1
    pop de                                        ; $5252: $d1
    ld e, d                                       ; $5253: $5a
    ld e, e                                       ; $5254: $5b
    pop de                                        ; $5255: $d1
    rst $38                                       ; $5256: $ff
    ld e, h                                       ; $5257: $5c
    db $db                                        ; $5258: $db
    pop de                                        ; $5259: $d1
    ld e, l                                       ; $525a: $5d
    ld e, [hl]                                    ; $525b: $5e
    ld e, a                                       ; $525c: $5f
    ld bc, $0101                                  ; $525d: $01 $01 $01
    ld bc, $0101                                  ; $5260: $01 $01 $01
    ld bc, $0101                                  ; $5263: $01 $01 $01
    ld bc, $0101                                  ; $5266: $01 $01 $01
    ld bc, $0101                                  ; $5269: $01 $01 $01
    ld bc, $db60                                  ; $526c: $01 $60 $db
    ld h, c                                       ; $526f: $61
    ld h, d                                       ; $5270: $62
    db $db                                        ; $5271: $db
    ld h, e                                       ; $5272: $63
    ld h, h                                       ; $5273: $64
    ld h, l                                       ; $5274: $65
    ld h, [hl]                                    ; $5275: $66
    ld h, a                                       ; $5276: $67
    ld l, b                                       ; $5277: $68
    db $db                                        ; $5278: $db
    ld l, c                                       ; $5279: $69
    ld l, b                                       ; $527a: $68
    db $db                                        ; $527b: $db
    ld l, d                                       ; $527c: $6a
    ld bc, $0101                                  ; $527d: $01 $01 $01
    ld bc, $0101                                  ; $5280: $01 $01 $01
    ld bc, $0101                                  ; $5283: $01 $01 $01
    ld bc, $0201                                  ; $5286: $01 $01 $02
    ld bc, $0201                                  ; $5289: $01 $01 $02
    ld [bc], a                                    ; $528c: $02
    pop de                                        ; $528d: $d1
    ld l, e                                       ; $528e: $6b
    ld l, h                                       ; $528f: $6c
    ld l, l                                       ; $5290: $6d
    ld l, [hl]                                    ; $5291: $6e
    ld l, a                                       ; $5292: $6f
    ld [hl], b                                    ; $5293: $70
    ld [hl], c                                    ; $5294: $71
    ld [hl], d                                    ; $5295: $72
    ld [hl], e                                    ; $5296: $73
    ld [hl], h                                    ; $5297: $74
    db $db                                        ; $5298: $db
    ld [hl], l                                    ; $5299: $75
    halt                                          ; $529a: $76
    ld [hl], a                                    ; $529b: $77
    ld a, b                                       ; $529c: $78
    ld bc, $0101                                  ; $529d: $01 $01 $01
    ld bc, $0101                                  ; $52a0: $01 $01 $01
    ld bc, $0101                                  ; $52a3: $01 $01 $01
    ld bc, $0201                                  ; $52a6: $01 $01 $02
    ld bc, $0101                                  ; $52a9: $01 $01 $01
    ld [bc], a                                    ; $52ac: $02
    ld a, c                                       ; $52ad: $79
    db $db                                        ; $52ae: $db
    inc c                                         ; $52af: $0c
    ld a, d                                       ; $52b0: $7a
    db $db                                        ; $52b1: $db
    dec e                                         ; $52b2: $1d
    ld b, c                                       ; $52b3: $41
    ld a, e                                       ; $52b4: $7b
    ld a, h                                       ; $52b5: $7c
    ld de, $7d12                                  ; $52b6: $11 $12 $7d
    ld a, [hl]                                    ; $52b9: $7e
    inc de                                        ; $52ba: $13
    inc d                                         ; $52bb: $14
    ld a, a                                       ; $52bc: $7f
    ld bc, $0202                                  ; $52bd: $01 $02 $02
    add l                                         ; $52c0: $85
    ld [bc], a                                    ; $52c1: $02
    ld [bc], a                                    ; $52c2: $02
    ld [bc], a                                    ; $52c3: $02
    add l                                         ; $52c4: $85
    ld [bc], a                                    ; $52c5: $02
    ld [bc], a                                    ; $52c6: $02
    ld [bc], a                                    ; $52c7: $02
    dec b                                         ; $52c8: $05
    ld [bc], a                                    ; $52c9: $02
    ld [bc], a                                    ; $52ca: $02
    ld [bc], a                                    ; $52cb: $02
    dec b                                         ; $52cc: $05
    pop de                                        ; $52cd: $d1
    pop de                                        ; $52ce: $d1
    pop de                                        ; $52cf: $d1
    rst $38                                       ; $52d0: $ff
    pop de                                        ; $52d1: $d1
    pop de                                        ; $52d2: $d1
    pop de                                        ; $52d3: $d1
    add b                                         ; $52d4: $80
    pop de                                        ; $52d5: $d1
    pop de                                        ; $52d6: $d1
    pop de                                        ; $52d7: $d1
    add c                                         ; $52d8: $81
    pop de                                        ; $52d9: $d1
    pop de                                        ; $52da: $d1
    pop de                                        ; $52db: $d1
    add d                                         ; $52dc: $82
    ld bc, $0101                                  ; $52dd: $01 $01 $01
    add h                                         ; $52e0: $84
    ld bc, $0101                                  ; $52e1: $01 $01 $01
    adc h                                         ; $52e4: $8c
    ld bc, $0101                                  ; $52e5: $01 $01 $01
    adc h                                         ; $52e8: $8c
    ld bc, $0101                                  ; $52e9: $01 $01 $01
    adc h                                         ; $52ec: $8c
    add e                                         ; $52ed: $83
    add h                                         ; $52ee: $84
    db $db                                        ; $52ef: $db
    ld b, e                                       ; $52f0: $43
    add l                                         ; $52f1: $85
    add [hl]                                      ; $52f2: $86
    add a                                         ; $52f3: $87
    ld b, [hl]                                    ; $52f4: $46
    adc b                                         ; $52f5: $88
    db $db                                        ; $52f6: $db
    ld c, b                                       ; $52f7: $48
    inc [hl]                                      ; $52f8: $34
    adc c                                         ; $52f9: $89
    adc d                                         ; $52fa: $8a
    adc e                                         ; $52fb: $8b
    scf                                           ; $52fc: $37
    adc h                                         ; $52fd: $8c
    add hl, bc                                    ; $52fe: $09
    ld [bc], a                                    ; $52ff: $02
    ld [bc], a                                    ; $5300: $02
    adc h                                         ; $5301: $8c
    add hl, bc                                    ; $5302: $09
    ld a, [bc]                                    ; $5303: $0a
    ld [bc], a                                    ; $5304: $02
    adc h                                         ; $5305: $8c
    ld [bc], a                                    ; $5306: $02
    ld [bc], a                                    ; $5307: $02
    ld [bc], a                                    ; $5308: $02
    adc h                                         ; $5309: $8c
    inc c                                         ; $530a: $0c
    inc c                                         ; $530b: $0c
    ld [bc], a                                    ; $530c: $02
    ld b, h                                       ; $530d: $44
    jr c, jr_088_5349                             ; $530e: $38 $39

    adc h                                         ; $5310: $8c
    ld b, a                                       ; $5311: $47
    ldh a, [$f1]                                  ; $5312: $f0 $f1
    inc a                                         ; $5314: $3c
    dec a                                         ; $5315: $3d
    dec bc                                        ; $5316: $0b
    ld a, $7a                                     ; $5317: $3e $7a
    ld b, b                                       ; $5319: $40
    ld c, $41                                     ; $531a: $0e $41
    ld a, e                                       ; $531c: $7b
    ld [bc], a                                    ; $531d: $02
    ld [bc], a                                    ; $531e: $02
    ld [bc], a                                    ; $531f: $02
    dec c                                         ; $5320: $0d
    ld [bc], a                                    ; $5321: $02
    ld [bc], a                                    ; $5322: $02
    ld [bc], a                                    ; $5323: $02
    ld [bc], a                                    ; $5324: $02
    ld [bc], a                                    ; $5325: $02
    ld [bc], a                                    ; $5326: $02
    ld [bc], a                                    ; $5327: $02
    add l                                         ; $5328: $85
    ld [bc], a                                    ; $5329: $02
    ld [bc], a                                    ; $532a: $02
    ld [bc], a                                    ; $532b: $02
    add l                                         ; $532c: $85
    pop de                                        ; $532d: $d1
    pop de                                        ; $532e: $d1
    pop de                                        ; $532f: $d1
    adc l                                         ; $5330: $8d
    pop de                                        ; $5331: $d1
    pop de                                        ; $5332: $d1
    pop de                                        ; $5333: $d1
    adc [hl]                                      ; $5334: $8e
    pop de                                        ; $5335: $d1
    pop de                                        ; $5336: $d1
    pop de                                        ; $5337: $d1
    adc a                                         ; $5338: $8f
    pop de                                        ; $5339: $d1
    pop de                                        ; $533a: $d1
    pop de                                        ; $533b: $d1
    sub b                                         ; $533c: $90
    ld bc, $0101                                  ; $533d: $01 $01 $01
    inc c                                         ; $5340: $0c
    ld bc, $0101                                  ; $5341: $01 $01 $01
    inc c                                         ; $5344: $0c
    ld bc, $0101                                  ; $5345: $01 $01 $01
    inc c                                         ; $5348: $0c

jr_088_5349:
    ld bc, $0101                                  ; $5349: $01 $01 $01
    inc c                                         ; $534c: $0c
    sub c                                         ; $534d: $91
    sub d                                         ; $534e: $92
    sub e                                         ; $534f: $93
    sub h                                         ; $5350: $94
    sub l                                         ; $5351: $95
    sub [hl]                                      ; $5352: $96
    sub a                                         ; $5353: $97
    sbc b                                         ; $5354: $98
    sbc c                                         ; $5355: $99
    sbc d                                         ; $5356: $9a
    sbc e                                         ; $5357: $9b
    ld b, e                                       ; $5358: $43
    sbc h                                         ; $5359: $9c
    sbc l                                         ; $535a: $9d
    sbc [hl]                                      ; $535b: $9e
    ld b, [hl]                                    ; $535c: $46
    inc c                                         ; $535d: $0c
    inc c                                         ; $535e: $0c
    inc c                                         ; $535f: $0c
    ld a, [bc]                                    ; $5360: $0a
    inc c                                         ; $5361: $0c
    inc c                                         ; $5362: $0c
    inc c                                         ; $5363: $0c
    ld a, [bc]                                    ; $5364: $0a
    inc c                                         ; $5365: $0c
    inc c                                         ; $5366: $0c
    inc c                                         ; $5367: $0c
    ld [bc], a                                    ; $5368: $02
    inc c                                         ; $5369: $0c
    inc c                                         ; $536a: $0c
    inc c                                         ; $536b: $0c
    ld [bc], a                                    ; $536c: $02
    sbc a                                         ; $536d: $9f
    ld de, $7d12                                  ; $536e: $11 $12 $7d
    ld a, [hl]                                    ; $5371: $7e
    inc de                                        ; $5372: $13
    inc d                                         ; $5373: $14
    ld a, a                                       ; $5374: $7f
    ld b, h                                       ; $5375: $44
    jr c, jr_088_53b1                             ; $5376: $38 $39

    adc h                                         ; $5378: $8c
    ld b, a                                       ; $5379: $47
    ldh a, [$f1]                                  ; $537a: $f0 $f1
    inc a                                         ; $537c: $3c
    ld a, [bc]                                    ; $537d: $0a
    ld [bc], a                                    ; $537e: $02
    ld [bc], a                                    ; $537f: $02
    dec b                                         ; $5380: $05
    ld [bc], a                                    ; $5381: $02
    ld [bc], a                                    ; $5382: $02
    ld [bc], a                                    ; $5383: $02
    dec b                                         ; $5384: $05
    ld [bc], a                                    ; $5385: $02
    ld [bc], a                                    ; $5386: $02
    ld [bc], a                                    ; $5387: $02
    dec c                                         ; $5388: $0d
    ld [bc], a                                    ; $5389: $02
    ld [bc], a                                    ; $538a: $02
    ld [bc], a                                    ; $538b: $02
    ld [bc], a                                    ; $538c: $02
    and b                                         ; $538d: $a0
    db $db                                        ; $538e: $db
    ld a, h                                       ; $538f: $7c
    ld de, $78db                                  ; $5390: $11 $db $78
    ld a, [hl]                                    ; $5393: $7e
    inc de                                        ; $5394: $13
    ld b, d                                       ; $5395: $42
    ld b, e                                       ; $5396: $43
    ld b, h                                       ; $5397: $44
    jr c, jr_088_53df                             ; $5398: $38 $45

    ld b, [hl]                                    ; $539a: $46
    ld b, a                                       ; $539b: $47
    ldh a, [$09]                                  ; $539c: $f0 $09
    ld [bc], a                                    ; $539e: $02
    ld [bc], a                                    ; $539f: $02
    ld [bc], a                                    ; $53a0: $02
    ld [bc], a                                    ; $53a1: $02
    ld [bc], a                                    ; $53a2: $02
    ld [bc], a                                    ; $53a3: $02
    ld [bc], a                                    ; $53a4: $02
    ld [bc], a                                    ; $53a5: $02
    ld [bc], a                                    ; $53a6: $02
    ld [bc], a                                    ; $53a7: $02
    ld [bc], a                                    ; $53a8: $02
    ld [bc], a                                    ; $53a9: $02
    ld [bc], a                                    ; $53aa: $02
    ld [bc], a                                    ; $53ab: $02
    ld [bc], a                                    ; $53ac: $02
    ld [de], a                                    ; $53ad: $12
    and c                                         ; $53ae: $a1
    and d                                         ; $53af: $a2
    sub h                                         ; $53b0: $94

jr_088_53b1:
    inc d                                         ; $53b1: $14
    and e                                         ; $53b2: $a3
    and h                                         ; $53b3: $a4
    sbc b                                         ; $53b4: $98
    add hl, sp                                    ; $53b5: $39
    ld a, [hl-]                                   ; $53b6: $3a
    and l                                         ; $53b7: $a5
    ld b, e                                       ; $53b8: $43
    pop af                                        ; $53b9: $f1
    inc a                                         ; $53ba: $3c
    ld b, l                                       ; $53bb: $45
    ld b, [hl]                                    ; $53bc: $46
    ld [bc], a                                    ; $53bd: $02
    ld a, [bc]                                    ; $53be: $0a
    ld a, [bc]                                    ; $53bf: $0a
    ld a, [bc]                                    ; $53c0: $0a
    ld [bc], a                                    ; $53c1: $02
    ld a, [bc]                                    ; $53c2: $0a
    ld a, [bc]                                    ; $53c3: $0a
    ld a, [bc]                                    ; $53c4: $0a
    ld [bc], a                                    ; $53c5: $02
    ld [bc], a                                    ; $53c6: $02
    ld a, [bc]                                    ; $53c7: $0a
    ld [bc], a                                    ; $53c8: $02
    ld [bc], a                                    ; $53c9: $02
    ld [bc], a                                    ; $53ca: $02
    ld [bc], a                                    ; $53cb: $02
    ld [bc], a                                    ; $53cc: $02
    sbc a                                         ; $53cd: $9f
    ld de, $a112                                  ; $53ce: $11 $12 $a1
    ld a, [hl]                                    ; $53d1: $7e
    inc de                                        ; $53d2: $13
    inc d                                         ; $53d3: $14
    and e                                         ; $53d4: $a3
    ld b, h                                       ; $53d5: $44
    jr c, jr_088_5411                             ; $53d6: $38 $39

    ld a, [hl-]                                   ; $53d8: $3a
    ld b, a                                       ; $53d9: $47
    ldh a, [$f1]                                  ; $53da: $f0 $f1
    inc a                                         ; $53dc: $3c
    ld a, [bc]                                    ; $53dd: $0a
    ld [bc], a                                    ; $53de: $02

jr_088_53df:
    ld [bc], a                                    ; $53df: $02
    ld a, [bc]                                    ; $53e0: $0a
    ld [bc], a                                    ; $53e1: $02
    ld [bc], a                                    ; $53e2: $02
    ld [bc], a                                    ; $53e3: $02
    ld a, [bc]                                    ; $53e4: $0a
    ld [bc], a                                    ; $53e5: $02
    ld [bc], a                                    ; $53e6: $02
    ld [bc], a                                    ; $53e7: $02
    ld [bc], a                                    ; $53e8: $02
    ld [bc], a                                    ; $53e9: $02
    ld [bc], a                                    ; $53ea: $02
    ld [bc], a                                    ; $53eb: $02
    ld [bc], a                                    ; $53ec: $02
    and d                                         ; $53ed: $a2
    sub h                                         ; $53ee: $94
    sbc a                                         ; $53ef: $9f
    ld de, $98a4                                  ; $53f0: $11 $a4 $98
    ld a, [hl]                                    ; $53f3: $7e
    inc de                                        ; $53f4: $13
    and l                                         ; $53f5: $a5
    ld b, e                                       ; $53f6: $43
    ld b, h                                       ; $53f7: $44
    jr c, jr_088_543f                             ; $53f8: $38 $45

    ld b, [hl]                                    ; $53fa: $46
    ld a, d                                       ; $53fb: $7a
    ldh a, [$0a]                                  ; $53fc: $f0 $0a
    ld a, [bc]                                    ; $53fe: $0a
    ld a, [bc]                                    ; $53ff: $0a
    ld [bc], a                                    ; $5400: $02
    ld a, [bc]                                    ; $5401: $0a
    ld a, [bc]                                    ; $5402: $0a
    ld [bc], a                                    ; $5403: $02
    ld [bc], a                                    ; $5404: $02
    ld a, [bc]                                    ; $5405: $0a
    ld [bc], a                                    ; $5406: $02
    ld [bc], a                                    ; $5407: $02
    ld [bc], a                                    ; $5408: $02
    ld [bc], a                                    ; $5409: $02
    ld [bc], a                                    ; $540a: $02
    add l                                         ; $540b: $85
    ld [bc], a                                    ; $540c: $02
    ld c, b                                       ; $540d: $48
    inc [hl]                                      ; $540e: $34
    dec a                                         ; $540f: $3d
    dec bc                                        ; $5410: $0b

jr_088_5411:
    and [hl]                                      ; $5411: $a6
    and a                                         ; $5412: $a7
    ld b, b                                       ; $5413: $40
    ld c, $a8                                     ; $5414: $0e $a8
    xor c                                         ; $5416: $a9
    sbc a                                         ; $5417: $9f
    ld de, $abaa                                  ; $5418: $11 $aa $ab
    ld a, [hl]                                    ; $541b: $7e
    inc de                                        ; $541c: $13
    ld [bc], a                                    ; $541d: $02
    ld [bc], a                                    ; $541e: $02
    ld [bc], a                                    ; $541f: $02
    ld [bc], a                                    ; $5420: $02
    adc l                                         ; $5421: $8d
    adc l                                         ; $5422: $8d
    ld [bc], a                                    ; $5423: $02
    ld [bc], a                                    ; $5424: $02
    dec c                                         ; $5425: $0d
    dec c                                         ; $5426: $0d
    ld a, [bc]                                    ; $5427: $0a
    ld [bc], a                                    ; $5428: $02
    dec c                                         ; $5429: $0d
    dec c                                         ; $542a: $0d
    ld [bc], a                                    ; $542b: $02
    ld [bc], a                                    ; $542c: $02
    ld a, $3f                                     ; $542d: $3e $3f
    ld c, b                                       ; $542f: $48
    inc [hl]                                      ; $5430: $34
    ld b, c                                       ; $5431: $41
    dec [hl]                                      ; $5432: $35
    ld [hl], $37                                  ; $5433: $36 $37
    ld [de], a                                    ; $5435: $12
    and c                                         ; $5436: $a1
    and a                                         ; $5437: $a7
    and [hl]                                      ; $5438: $a6
    inc d                                         ; $5439: $14
    and e                                         ; $543a: $a3
    xor h                                         ; $543b: $ac
    xor l                                         ; $543c: $ad
    ld [bc], a                                    ; $543d: $02
    ld [bc], a                                    ; $543e: $02

jr_088_543f:
    ld [bc], a                                    ; $543f: $02
    ld [bc], a                                    ; $5440: $02
    ld [bc], a                                    ; $5441: $02
    ld [bc], a                                    ; $5442: $02
    ld [bc], a                                    ; $5443: $02
    ld [bc], a                                    ; $5444: $02
    ld [bc], a                                    ; $5445: $02
    ld a, [bc]                                    ; $5446: $0a
    xor e                                         ; $5447: $ab
    xor e                                         ; $5448: $ab
    ld [bc], a                                    ; $5449: $02
    ld a, [bc]                                    ; $544a: $0a
    adc e                                         ; $544b: $8b
    adc e                                         ; $544c: $8b
    dec a                                         ; $544d: $3d
    dec bc                                        ; $544e: $0b
    ld a, $3f                                     ; $544f: $3e $3f
    ld a, d                                       ; $5451: $7a
    ld c, $41                                     ; $5452: $0e $41
    dec [hl]                                      ; $5454: $35
    ld a, e                                       ; $5455: $7b
    ld de, $a112                                  ; $5456: $11 $12 $a1
    ld a, e                                       ; $5459: $7b
    inc de                                        ; $545a: $13
    inc d                                         ; $545b: $14
    and e                                         ; $545c: $a3
    ld [bc], a                                    ; $545d: $02
    ld [bc], a                                    ; $545e: $02
    ld [bc], a                                    ; $545f: $02
    ld [bc], a                                    ; $5460: $02
    and e                                         ; $5461: $a3
    ld [bc], a                                    ; $5462: $02
    ld [bc], a                                    ; $5463: $02
    ld [bc], a                                    ; $5464: $02
    and e                                         ; $5465: $a3
    ld [bc], a                                    ; $5466: $02
    ld [bc], a                                    ; $5467: $02
    ld a, [bc]                                    ; $5468: $0a
    and e                                         ; $5469: $a3
    ld [bc], a                                    ; $546a: $02
    ld [bc], a                                    ; $546b: $02
    ld a, [bc]                                    ; $546c: $0a
    ld c, b                                       ; $546d: $48
    inc [hl]                                      ; $546e: $34
    ld a, e                                       ; $546f: $7b
    and [hl]                                      ; $5470: $a6
    ld [hl], $37                                  ; $5471: $36 $37
    ld a, l                                       ; $5473: $7d
    xor b                                         ; $5474: $a8
    and d                                         ; $5475: $a2
    sub h                                         ; $5476: $94
    ld a, a                                       ; $5477: $7f
    xor d                                         ; $5478: $aa
    and h                                         ; $5479: $a4
    sbc b                                         ; $547a: $98
    adc h                                         ; $547b: $8c
    xor [hl]                                      ; $547c: $ae
    ld [bc], a                                    ; $547d: $02
    ld [bc], a                                    ; $547e: $02
    add l                                         ; $547f: $85
    adc l                                         ; $5480: $8d
    ld [bc], a                                    ; $5481: $02
    ld [bc], a                                    ; $5482: $02
    dec b                                         ; $5483: $05
    dec c                                         ; $5484: $0d
    ld a, [bc]                                    ; $5485: $0a
    ld a, [bc]                                    ; $5486: $0a
    dec b                                         ; $5487: $05
    dec c                                         ; $5488: $0d
    ld a, [bc]                                    ; $5489: $0a
    ld a, [bc]                                    ; $548a: $0a
    dec c                                         ; $548b: $0d
    dec c                                         ; $548c: $0d
    xor [hl]                                      ; $548d: $ae
    xor a                                         ; $548e: $af
    ld b, h                                       ; $548f: $44
    jr c, jr_088_54d7                             ; $5490: $38 $45

    ld b, [hl]                                    ; $5492: $46
    ld b, a                                       ; $5493: $47
    ldh a, [rOBP0]                                ; $5494: $f0 $48
    inc [hl]                                      ; $5496: $34
    dec a                                         ; $5497: $3d
    dec bc                                        ; $5498: $0b
    and [hl]                                      ; $5499: $a6
    and a                                         ; $549a: $a7
    ld b, b                                       ; $549b: $40
    ld c, $0d                                     ; $549c: $0e $0d
    dec c                                         ; $549e: $0d
    ld [bc], a                                    ; $549f: $02
    ld [bc], a                                    ; $54a0: $02
    ld [bc], a                                    ; $54a1: $02
    ld [bc], a                                    ; $54a2: $02
    ld [bc], a                                    ; $54a3: $02
    ld [bc], a                                    ; $54a4: $02
    ld [bc], a                                    ; $54a5: $02
    ld [bc], a                                    ; $54a6: $02
    ld [bc], a                                    ; $54a7: $02
    ld [bc], a                                    ; $54a8: $02
    adc l                                         ; $54a9: $8d
    adc l                                         ; $54aa: $8d
    ld [bc], a                                    ; $54ab: $02
    ld [bc], a                                    ; $54ac: $02
    add hl, sp                                    ; $54ad: $39
    ld a, [hl-]                                   ; $54ae: $3a
    or b                                          ; $54af: $b0
    or c                                          ; $54b0: $b1
    pop af                                        ; $54b1: $f1
    inc a                                         ; $54b2: $3c
    or d                                          ; $54b3: $b2
    or e                                          ; $54b4: $b3
    ld a, $3f                                     ; $54b5: $3e $3f
    xor e                                         ; $54b7: $ab
    xor d                                         ; $54b8: $aa
    ld b, c                                       ; $54b9: $41
    dec [hl]                                      ; $54ba: $35
    xor a                                         ; $54bb: $af
    xor [hl]                                      ; $54bc: $ae
    ld [bc], a                                    ; $54bd: $02
    ld [bc], a                                    ; $54be: $02
    dec bc                                        ; $54bf: $0b
    dec bc                                        ; $54c0: $0b
    ld [bc], a                                    ; $54c1: $02
    ld [bc], a                                    ; $54c2: $02
    dec bc                                        ; $54c3: $0b
    dec bc                                        ; $54c4: $0b
    ld [bc], a                                    ; $54c5: $02
    ld [bc], a                                    ; $54c6: $02
    dec hl                                        ; $54c7: $2b
    dec hl                                        ; $54c8: $2b
    ld [bc], a                                    ; $54c9: $02
    ld [bc], a                                    ; $54ca: $02
    dec hl                                        ; $54cb: $2b
    dec hl                                        ; $54cc: $2b
    or h                                          ; $54cd: $b4
    jr c, jr_088_5509                             ; $54ce: $38 $39

    ld a, [hl-]                                   ; $54d0: $3a
    ld a, l                                       ; $54d1: $7d
    ldh a, [$f1]                                  ; $54d2: $f0 $f1
    inc a                                         ; $54d4: $3c
    ld a, a                                       ; $54d5: $7f
    dec bc                                        ; $54d6: $0b

jr_088_54d7:
    ld a, $3f                                     ; $54d7: $3e $3f
    adc h                                         ; $54d9: $8c
    ld c, $41                                     ; $54da: $0e $41
    dec [hl]                                      ; $54dc: $35
    dec bc                                        ; $54dd: $0b
    ld [bc], a                                    ; $54de: $02
    ld [bc], a                                    ; $54df: $02
    ld [bc], a                                    ; $54e0: $02
    inc hl                                        ; $54e1: $23
    ld [bc], a                                    ; $54e2: $02
    ld [bc], a                                    ; $54e3: $02
    ld [bc], a                                    ; $54e4: $02
    inc hl                                        ; $54e5: $23
    ld [bc], a                                    ; $54e6: $02
    ld [bc], a                                    ; $54e7: $02
    ld [bc], a                                    ; $54e8: $02
    dec hl                                        ; $54e9: $2b
    ld [bc], a                                    ; $54ea: $02
    ld [bc], a                                    ; $54eb: $02
    ld [bc], a                                    ; $54ec: $02
    and l                                         ; $54ed: $a5
    ld b, e                                       ; $54ee: $43
    ld b, h                                       ; $54ef: $44
    jr c, jr_088_5537                             ; $54f0: $38 $45

    ld b, [hl]                                    ; $54f2: $46
    ld b, a                                       ; $54f3: $47
    ldh a, [rOBP0]                                ; $54f4: $f0 $48
    inc [hl]                                      ; $54f6: $34
    dec a                                         ; $54f7: $3d
    dec bc                                        ; $54f8: $0b
    ld [hl], $37                                  ; $54f9: $36 $37
    ld b, b                                       ; $54fb: $40
    ld c, $0a                                     ; $54fc: $0e $0a
    ld [bc], a                                    ; $54fe: $02
    ld [bc], a                                    ; $54ff: $02
    ld [bc], a                                    ; $5500: $02
    ld [bc], a                                    ; $5501: $02
    ld [bc], a                                    ; $5502: $02
    ld [bc], a                                    ; $5503: $02
    ld [bc], a                                    ; $5504: $02
    ld [bc], a                                    ; $5505: $02
    ld [bc], a                                    ; $5506: $02
    ld [bc], a                                    ; $5507: $02
    ld [bc], a                                    ; $5508: $02

jr_088_5509:
    ld [bc], a                                    ; $5509: $02
    ld [bc], a                                    ; $550a: $02
    ld [bc], a                                    ; $550b: $02
    ld [bc], a                                    ; $550c: $02
    xor b                                         ; $550d: $a8
    xor c                                         ; $550e: $a9
    sbc a                                         ; $550f: $9f
    ld de, $abaa                                  ; $5510: $11 $aa $ab
    ld a, [hl]                                    ; $5513: $7e
    inc de                                        ; $5514: $13
    xor [hl]                                      ; $5515: $ae
    xor a                                         ; $5516: $af
    ld b, h                                       ; $5517: $44
    jr c, jr_088_555f                             ; $5518: $38 $45

    ld b, [hl]                                    ; $551a: $46
    ld b, a                                       ; $551b: $47
    ldh a, [$0d]                                  ; $551c: $f0 $0d
    dec c                                         ; $551e: $0d
    ld a, [bc]                                    ; $551f: $0a
    ld [bc], a                                    ; $5520: $02
    dec c                                         ; $5521: $0d
    dec c                                         ; $5522: $0d
    ld [bc], a                                    ; $5523: $02
    ld [bc], a                                    ; $5524: $02
    dec c                                         ; $5525: $0d
    dec c                                         ; $5526: $0d
    ld [bc], a                                    ; $5527: $02
    ld [bc], a                                    ; $5528: $02
    ld [bc], a                                    ; $5529: $02
    ld [bc], a                                    ; $552a: $02
    ld [bc], a                                    ; $552b: $02
    ld [bc], a                                    ; $552c: $02
    and d                                         ; $552d: $a2
    sub h                                         ; $552e: $94
    sbc a                                         ; $552f: $9f
    ld de, $98a4                                  ; $5530: $11 $a4 $98
    ld a, [hl]                                    ; $5533: $7e
    inc de                                        ; $5534: $13
    and l                                         ; $5535: $a5
    ld b, e                                       ; $5536: $43

jr_088_5537:
    ld b, h                                       ; $5537: $44
    jr c, jr_088_557f                             ; $5538: $38 $45

    ld b, [hl]                                    ; $553a: $46
    ld b, a                                       ; $553b: $47
    ldh a, [$0a]                                  ; $553c: $f0 $0a
    ld a, [bc]                                    ; $553e: $0a
    ld a, [bc]                                    ; $553f: $0a
    ld [bc], a                                    ; $5540: $02
    ld a, [bc]                                    ; $5541: $0a
    ld a, [bc]                                    ; $5542: $0a
    ld [bc], a                                    ; $5543: $02
    ld [bc], a                                    ; $5544: $02
    ld a, [bc]                                    ; $5545: $0a
    ld [bc], a                                    ; $5546: $02
    ld [bc], a                                    ; $5547: $02
    ld [bc], a                                    ; $5548: $02
    ld [bc], a                                    ; $5549: $02
    ld [bc], a                                    ; $554a: $02
    ld [bc], a                                    ; $554b: $02
    ld [bc], a                                    ; $554c: $02
    sbc a                                         ; $554d: $9f
    ld de, $b512                                  ; $554e: $11 $12 $b5
    ld a, [hl]                                    ; $5551: $7e
    inc de                                        ; $5552: $13
    inc d                                         ; $5553: $14
    and e                                         ; $5554: $a3
    ld b, h                                       ; $5555: $44
    jr c, jr_088_5591                             ; $5556: $38 $39

    ld a, [hl-]                                   ; $5558: $3a
    ld b, a                                       ; $5559: $47
    ldh a, [$7a]                                  ; $555a: $f0 $7a
    inc a                                         ; $555c: $3c
    ld a, [bc]                                    ; $555d: $0a
    ld [bc], a                                    ; $555e: $02

jr_088_555f:
    ld [bc], a                                    ; $555f: $02
    ld a, [bc]                                    ; $5560: $0a
    ld [bc], a                                    ; $5561: $02
    ld [bc], a                                    ; $5562: $02
    ld [bc], a                                    ; $5563: $02
    ld a, [bc]                                    ; $5564: $0a
    ld [bc], a                                    ; $5565: $02
    ld [bc], a                                    ; $5566: $02
    ld [bc], a                                    ; $5567: $02
    ld [bc], a                                    ; $5568: $02
    ld [bc], a                                    ; $5569: $02
    ld [bc], a                                    ; $556a: $02
    and l                                         ; $556b: $a5
    ld [bc], a                                    ; $556c: $02
    db $db                                        ; $556d: $db
    and b                                         ; $556e: $a0
    ld h, d                                       ; $556f: $62
    ld h, c                                       ; $5570: $61
    or [hl]                                       ; $5571: $b6
    db $db                                        ; $5572: $db
    ld h, l                                       ; $5573: $65
    ld h, h                                       ; $5574: $64
    and l                                         ; $5575: $a5
    or a                                          ; $5576: $b7
    db $db                                        ; $5577: $db
    ld l, b                                       ; $5578: $68
    ld b, l                                       ; $5579: $45
    ld b, [hl]                                    ; $557a: $46
    cp b                                          ; $557b: $b8
    db $db                                        ; $557c: $db
    ld [bc], a                                    ; $557d: $02
    add hl, hl                                    ; $557e: $29

jr_088_557f:
    ld hl, $0a21                                  ; $557f: $21 $21 $0a
    ld [bc], a                                    ; $5582: $02
    ld hl, $0a21                                  ; $5583: $21 $21 $0a
    ld a, [bc]                                    ; $5586: $0a
    ld [bc], a                                    ; $5587: $02
    ld hl, $0202                                  ; $5588: $21 $02 $02
    ld a, [bc]                                    ; $558b: $0a
    ld [bc], a                                    ; $558c: $02
    db $db                                        ; $558d: $db
    ld h, b                                       ; $558e: $60
    ld e, c                                       ; $558f: $59
    pop de                                        ; $5590: $d1

jr_088_5591:
    ld h, e                                       ; $5591: $63
    db $db                                        ; $5592: $db
    ld e, e                                       ; $5593: $5b
    ld e, d                                       ; $5594: $5a
    ld h, a                                       ; $5595: $67
    ld h, [hl]                                    ; $5596: $66
    db $db                                        ; $5597: $db
    ld e, h                                       ; $5598: $5c
    ld l, b                                       ; $5599: $68
    ld l, c                                       ; $559a: $69
    ld e, a                                       ; $559b: $5f
    ld e, [hl]                                    ; $559c: $5e
    ld bc, $2121                                  ; $559d: $01 $21 $21
    ld bc, $0121                                  ; $55a0: $01 $21 $01
    ld hl, $2121                                  ; $55a3: $21 $21 $21
    ld hl, $2101                                  ; $55a6: $21 $01 $21
    ld hl, $2121                                  ; $55a9: $21 $21 $21
    ld hl, $b9a7                                  ; $55ac: $21 $a7 $b9
    cp d                                          ; $55af: $ba
    cp e                                          ; $55b0: $bb
    xor c                                         ; $55b1: $a9
    cp h                                          ; $55b2: $bc
    cp l                                          ; $55b3: $bd
    cp h                                          ; $55b4: $bc
    xor e                                         ; $55b5: $ab
    cp [hl]                                       ; $55b6: $be
    cp a                                          ; $55b7: $bf
    ret nz                                        ; $55b8: $c0

    xor a                                         ; $55b9: $af
    and e                                         ; $55ba: $a3
    pop bc                                        ; $55bb: $c1
    sbc b                                         ; $55bc: $98
    adc l                                         ; $55bd: $8d
    adc h                                         ; $55be: $8c
    adc h                                         ; $55bf: $8c
    adc h                                         ; $55c0: $8c
    dec c                                         ; $55c1: $0d
    inc c                                         ; $55c2: $0c
    inc c                                         ; $55c3: $0c
    ld l, h                                       ; $55c4: $6c
    dec c                                         ; $55c5: $0d
    inc c                                         ; $55c6: $0c
    inc c                                         ; $55c7: $0c
    inc c                                         ; $55c8: $0c
    dec c                                         ; $55c9: $0d
    ld a, [bc]                                    ; $55ca: $0a
    inc c                                         ; $55cb: $0c
    ld a, [bc]                                    ; $55cc: $0a
    and a                                         ; $55cd: $a7
    and [hl]                                      ; $55ce: $a6
    ld a, e                                       ; $55cf: $7b
    ccf                                           ; $55d0: $3f
    xor c                                         ; $55d1: $a9
    xor b                                         ; $55d2: $a8
    ld a, l                                       ; $55d3: $7d
    dec [hl]                                      ; $55d4: $35
    xor e                                         ; $55d5: $ab
    xor d                                         ; $55d6: $aa
    ld a, a                                       ; $55d7: $7f
    and c                                         ; $55d8: $a1
    xor a                                         ; $55d9: $af
    xor [hl]                                      ; $55da: $ae
    adc h                                         ; $55db: $8c
    and e                                         ; $55dc: $a3
    xor l                                         ; $55dd: $ad
    xor l                                         ; $55de: $ad
    and l                                         ; $55df: $a5
    ld [bc], a                                    ; $55e0: $02
    dec l                                         ; $55e1: $2d
    dec l                                         ; $55e2: $2d
    dec h                                         ; $55e3: $25
    ld [bc], a                                    ; $55e4: $02
    dec l                                         ; $55e5: $2d
    dec l                                         ; $55e6: $2d
    dec h                                         ; $55e7: $25
    ld a, [bc]                                    ; $55e8: $0a
    dec l                                         ; $55e9: $2d
    dec l                                         ; $55ea: $2d
    dec l                                         ; $55eb: $2d
    ld a, [bc]                                    ; $55ec: $0a
    ld c, b                                       ; $55ed: $48
    inc [hl]                                      ; $55ee: $34
    dec a                                         ; $55ef: $3d
    add hl, de                                    ; $55f0: $19
    ld [hl], $37                                  ; $55f1: $36 $37
    ld b, b                                       ; $55f3: $40
    ld c, $a2                                     ; $55f4: $0e $a2
    sub h                                         ; $55f6: $94
    sbc a                                         ; $55f7: $9f
    ld de, $98a4                                  ; $55f8: $11 $a4 $98
    ld a, [hl]                                    ; $55fb: $7e
    inc de                                        ; $55fc: $13
    ld [bc], a                                    ; $55fd: $02
    ld [bc], a                                    ; $55fe: $02
    ld [bc], a                                    ; $55ff: $02
    ld [bc], a                                    ; $5600: $02
    ld [bc], a                                    ; $5601: $02
    ld [bc], a                                    ; $5602: $02
    ld [bc], a                                    ; $5603: $02
    ld [bc], a                                    ; $5604: $02
    ld a, [bc]                                    ; $5605: $0a
    ld a, [bc]                                    ; $5606: $0a
    ld a, [bc]                                    ; $5607: $0a
    ld [bc], a                                    ; $5608: $02
    ld a, [bc]                                    ; $5609: $0a
    ld a, [bc]                                    ; $560a: $0a
    ld [bc], a                                    ; $560b: $02
    ld [bc], a                                    ; $560c: $02
    db $db                                        ; $560d: $db
    ld a, c                                       ; $560e: $79
    ld l, l                                       ; $560f: $6d
    ld l, h                                       ; $5610: $6c
    rrca                                          ; $5611: $0f
    db $db                                        ; $5612: $db
    ld [hl], c                                    ; $5613: $71
    ld [hl], b                                    ; $5614: $70
    ld [de], a                                    ; $5615: $12
    or l                                          ; $5616: $b5
    db $db                                        ; $5617: $db
    ld [hl], h                                    ; $5618: $74
    inc d                                         ; $5619: $14
    and e                                         ; $561a: $a3
    jp nz, $02c3                                  ; $561b: $c2 $c3 $02

    ld hl, $2121                                  ; $561e: $21 $21 $21
    ld [bc], a                                    ; $5621: $02
    ld [bc], a                                    ; $5622: $02
    ld hl, $0221                                  ; $5623: $21 $21 $02
    ld a, [bc]                                    ; $5626: $0a
    ld [bc], a                                    ; $5627: $02
    ld hl, $0a02                                  ; $5628: $21 $02 $0a
    ld c, $0e                                     ; $562b: $0e $0e
    add hl, sp                                    ; $562d: $39
    ld a, [hl-]                                   ; $562e: $3a
    and l                                         ; $562f: $a5
    ld b, e                                       ; $5630: $43
    pop af                                        ; $5631: $f1
    inc a                                         ; $5632: $3c
    ld b, l                                       ; $5633: $45
    ld b, [hl]                                    ; $5634: $46
    ld a, $3f                                     ; $5635: $3e $3f
    ld c, b                                       ; $5637: $48
    inc [hl]                                      ; $5638: $34
    ld b, c                                       ; $5639: $41
    dec [hl]                                      ; $563a: $35
    ld [hl], $37                                  ; $563b: $36 $37
    ld [bc], a                                    ; $563d: $02
    ld [bc], a                                    ; $563e: $02
    ld a, [bc]                                    ; $563f: $0a
    ld [bc], a                                    ; $5640: $02
    ld [bc], a                                    ; $5641: $02
    ld [bc], a                                    ; $5642: $02
    ld [bc], a                                    ; $5643: $02
    ld [bc], a                                    ; $5644: $02
    ld [bc], a                                    ; $5645: $02
    ld [bc], a                                    ; $5646: $02
    ld [bc], a                                    ; $5647: $02
    ld [bc], a                                    ; $5648: $02
    ld [bc], a                                    ; $5649: $02
    ld [bc], a                                    ; $564a: $02
    ld [bc], a                                    ; $564b: $02
    ld [bc], a                                    ; $564c: $02
    ld b, h                                       ; $564d: $44
    jr c, jr_088_5689                             ; $564e: $38 $39

    ld a, [hl-]                                   ; $5650: $3a
    ld b, a                                       ; $5651: $47
    ldh a, [$f1]                                  ; $5652: $f0 $f1
    inc a                                         ; $5654: $3c
    dec a                                         ; $5655: $3d
    dec bc                                        ; $5656: $0b
    ld a, $3f                                     ; $5657: $3e $3f
    ld b, b                                       ; $5659: $40
    ld c, $41                                     ; $565a: $0e $41
    dec [hl]                                      ; $565c: $35
    ld [bc], a                                    ; $565d: $02
    ld [bc], a                                    ; $565e: $02
    ld [bc], a                                    ; $565f: $02
    ld [bc], a                                    ; $5660: $02
    ld [bc], a                                    ; $5661: $02
    ld [bc], a                                    ; $5662: $02
    ld [bc], a                                    ; $5663: $02
    ld [bc], a                                    ; $5664: $02
    ld [bc], a                                    ; $5665: $02
    ld [bc], a                                    ; $5666: $02
    ld [bc], a                                    ; $5667: $02
    ld [bc], a                                    ; $5668: $02
    ld [bc], a                                    ; $5669: $02
    ld [bc], a                                    ; $566a: $02
    ld [bc], a                                    ; $566b: $02
    ld [bc], a                                    ; $566c: $02
    add hl, sp                                    ; $566d: $39
    ld a, [hl-]                                   ; $566e: $3a
    call nz, $f1c5                                ; $566f: $c4 $c5 $f1
    inc a                                         ; $5672: $3c
    add $c7                                       ; $5673: $c6 $c7
    ld a, $3f                                     ; $5675: $3e $3f
    ret z                                         ; $5677: $c8

    ret                                           ; $5678: $c9


    ld b, c                                       ; $5679: $41
    dec [hl]                                      ; $567a: $35
    jp z, Jump_000_02cb                           ; $567b: $ca $cb $02

    ld [bc], a                                    ; $567e: $02
    ld c, $0e                                     ; $567f: $0e $0e
    ld [bc], a                                    ; $5681: $02
    ld [bc], a                                    ; $5682: $02
    ld c, $0e                                     ; $5683: $0e $0e
    ld [bc], a                                    ; $5685: $02
    ld [bc], a                                    ; $5686: $02
    ld c, $0e                                     ; $5687: $0e $0e

jr_088_5689:
    ld [bc], a                                    ; $5689: $02
    ld [bc], a                                    ; $568a: $02
    ld c, $0e                                     ; $568b: $0e $0e
    ld [de], a                                    ; $568d: $12
    and c                                         ; $568e: $a1
    and d                                         ; $568f: $a2
    sub h                                         ; $5690: $94
    inc d                                         ; $5691: $14
    call z, $cda4                                 ; $5692: $cc $a4 $cd
    add hl, sp                                    ; $5695: $39
    adc $cf                                       ; $5696: $ce $cf
    ret nc                                        ; $5698: $d0

    pop af                                        ; $5699: $f1
    pop de                                        ; $569a: $d1
    jp nc, Jump_000_02d0                          ; $569b: $d2 $d0 $02

    ld a, [bc]                                    ; $569e: $0a
    ld a, [bc]                                    ; $569f: $0a
    ld a, [bc]                                    ; $56a0: $0a
    ld [bc], a                                    ; $56a1: $02
    adc l                                         ; $56a2: $8d
    ld a, [bc]                                    ; $56a3: $0a
    ld a, [bc]                                    ; $56a4: $0a
    ld [bc], a                                    ; $56a5: $02
    adc l                                         ; $56a6: $8d
    adc l                                         ; $56a7: $8d
    ld a, [bc]                                    ; $56a8: $0a
    ld [bc], a                                    ; $56a9: $02
    dec c                                         ; $56aa: $0d
    dec c                                         ; $56ab: $0d
    ld a, [bc]                                    ; $56ac: $0a
    sbc a                                         ; $56ad: $9f
    ld de, $a112                                  ; $56ae: $11 $12 $a1
    db $d3                                        ; $56b1: $d3
    call nc, $a3d5                                ; $56b2: $d4 $d5 $a3
    sub $d7                                       ; $56b5: $d6 $d7
    ret c                                         ; $56b7: $d8

    ld a, [hl-]                                   ; $56b8: $3a
    reti                                          ; $56b9: $d9


    jp c, $3cdb                                   ; $56ba: $da $db $3c

    ld a, [bc]                                    ; $56bd: $0a
    ld [bc], a                                    ; $56be: $02
    ld [bc], a                                    ; $56bf: $02
    ld a, [bc]                                    ; $56c0: $0a
    inc c                                         ; $56c1: $0c
    inc c                                         ; $56c2: $0c
    inc c                                         ; $56c3: $0c
    ld a, [bc]                                    ; $56c4: $0a
    inc c                                         ; $56c5: $0c
    inc c                                         ; $56c6: $0c
    inc c                                         ; $56c7: $0c
    ld [bc], a                                    ; $56c8: $02
    inc c                                         ; $56c9: $0c
    inc c                                         ; $56ca: $0c
    inc c                                         ; $56cb: $0c
    ld [bc], a                                    ; $56cc: $02
    ld [de], a                                    ; $56cd: $12
    and c                                         ; $56ce: $a1
    call c, Call_000_14dd                         ; $56cf: $dc $dd $14
    and e                                         ; $56d2: $a3
    and h                                         ; $56d3: $a4
    sbc b                                         ; $56d4: $98
    add hl, sp                                    ; $56d5: $39
    ld a, [hl-]                                   ; $56d6: $3a
    and l                                         ; $56d7: $a5
    ld b, e                                       ; $56d8: $43
    pop af                                        ; $56d9: $f1
    inc a                                         ; $56da: $3c
    ld b, l                                       ; $56db: $45
    ld b, [hl]                                    ; $56dc: $46
    ld [bc], a                                    ; $56dd: $02
    ld a, [bc]                                    ; $56de: $0a
    ld c, $0e                                     ; $56df: $0e $0e
    ld [bc], a                                    ; $56e1: $02
    ld a, [bc]                                    ; $56e2: $0a
    ld a, [bc]                                    ; $56e3: $0a
    ld a, [bc]                                    ; $56e4: $0a
    ld [bc], a                                    ; $56e5: $02
    ld [bc], a                                    ; $56e6: $02
    ld a, [bc]                                    ; $56e7: $0a
    ld [bc], a                                    ; $56e8: $02
    ld [bc], a                                    ; $56e9: $02
    ld [bc], a                                    ; $56ea: $02
    ld [bc], a                                    ; $56eb: $02
    ld [bc], a                                    ; $56ec: $02
    pop de                                        ; $56ed: $d1
    pop de                                        ; $56ee: $d1
    pop de                                        ; $56ef: $d1
    pop de                                        ; $56f0: $d1
    pop de                                        ; $56f1: $d1
    pop de                                        ; $56f2: $d1
    pop de                                        ; $56f3: $d1
    pop de                                        ; $56f4: $d1
    rst $38                                       ; $56f5: $ff
    pop de                                        ; $56f6: $d1
    pop de                                        ; $56f7: $d1
    pop de                                        ; $56f8: $d1
    ld e, l                                       ; $56f9: $5d
    pop de                                        ; $56fa: $d1
    pop de                                        ; $56fb: $d1
    pop de                                        ; $56fc: $d1
    ld bc, $0101                                  ; $56fd: $01 $01 $01
    ld bc, $0101                                  ; $5700: $01 $01 $01
    ld bc, $2101                                  ; $5703: $01 $01 $21
    ld bc, $0101                                  ; $5706: $01 $01 $01
    ld hl, $0101                                  ; $5709: $21 $01 $01
    ld bc, $d16b                                  ; $570c: $01 $6b $d1
    pop de                                        ; $570f: $d1
    pop de                                        ; $5710: $d1
    ld l, a                                       ; $5711: $6f
    ld l, [hl]                                    ; $5712: $6e
    pop de                                        ; $5713: $d1
    pop de                                        ; $5714: $d1
    ld [hl], e                                    ; $5715: $73
    ld [hl], d                                    ; $5716: $72
    pop de                                        ; $5717: $d1
    pop de                                        ; $5718: $d1
    sbc $df                                       ; $5719: $de $df
    pop de                                        ; $571b: $d1
    pop de                                        ; $571c: $d1
    ld hl, $0101                                  ; $571d: $21 $01 $01
    ld bc, $2121                                  ; $5720: $01 $21 $21
    ld bc, $2101                                  ; $5723: $01 $01 $21
    ld hl, $0101                                  ; $5726: $21 $01 $01
    ld c, $0e                                     ; $5729: $0e $0e
    ld bc, $e001                                  ; $572b: $01 $01 $e0
    pop hl                                        ; $572e: $e1
    ld [c], a                                     ; $572f: $e2
    ldh [$c7], a                                  ; $5730: $e0 $c7
    db $e3                                        ; $5732: $e3
    ld [c], a                                     ; $5733: $e2
    db $e3                                        ; $5734: $e3
    db $e4                                        ; $5735: $e4
    push hl                                       ; $5736: $e5
    db $e4                                        ; $5737: $e4
    db $db                                        ; $5738: $db
    and $e7                                       ; $5739: $e6 $e7
    add sp, -$25                                  ; $573b: $e8 $db
    ld c, $0e                                     ; $573d: $0e $0e
    ld [$0e00], sp                                ; $573f: $08 $00 $0e
    ld c, $01                                     ; $5742: $0e $01
    ld bc, $0e0e                                  ; $5744: $01 $0e $0e
    ld bc, $0e01                                  ; $5747: $01 $01 $0e
    ld c, $01                                     ; $574a: $0e $01
    ld bc, $49e0                                  ; $574c: $01 $e0 $49
    pop de                                        ; $574f: $d1
    pop de                                        ; $5750: $d1
    ld c, d                                       ; $5751: $4a
    pop hl                                        ; $5752: $e1
    pop de                                        ; $5753: $d1
    pop de                                        ; $5754: $d1
    ld c, e                                       ; $5755: $4b
    add sp, -$2f                                  ; $5756: $e8 $d1
    pop de                                        ; $5758: $d1
    ld c, e                                       ; $5759: $4b
    add sp, -$2f                                  ; $575a: $e8 $d1
    pop de                                        ; $575c: $d1
    nop                                           ; $575d: $00
    nop                                           ; $575e: $00
    ld bc, $0101                                  ; $575f: $01 $01 $01
    nop                                           ; $5762: $00
    ld bc, $0101                                  ; $5763: $01 $01 $01
    ld [$0101], sp                                ; $5766: $08 $01 $01
    ld bc, $0108                                  ; $5769: $01 $08 $01
    ld bc, $eae9                                  ; $576c: $01 $e9 $ea
    ld [$7eeb], a                                 ; $576f: $ea $eb $7e
    inc de                                        ; $5772: $13
    db $ed                                        ; $5773: $ed
    xor $44                                       ; $5774: $ee $44
    jr c, @+$12                                   ; $5776: $38 $10

    db $10                                        ; $5778: $10
    ld b, a                                       ; $5779: $47
    ldh a, [rHDMA4]                               ; $577a: $f0 $54
    db $db                                        ; $577c: $db
    ld c, $0e                                     ; $577d: $0e $0e
    ld bc, $0201                                  ; $577f: $01 $01 $02
    ld [bc], a                                    ; $5782: $02
    ld bc, $0201                                  ; $5783: $01 $01 $02
    ld [bc], a                                    ; $5786: $02
    ld bc, $0201                                  ; $5787: $01 $01 $02
    ld [bc], a                                    ; $578a: $02
    ld [bc], a                                    ; $578b: $02
    ld [bc], a                                    ; $578c: $02
    ld c, h                                       ; $578d: $4c
    add sp, -$2f                                  ; $578e: $e8 $d1
    pop de                                        ; $5790: $d1
    ld c, l                                       ; $5791: $4d
    add sp, -$2f                                  ; $5792: $e8 $d1
    pop de                                        ; $5794: $d1
    db $10                                        ; $5795: $10
    add sp, -$15                                  ; $5796: $e8 $eb
    pop de                                        ; $5798: $d1
    db $10                                        ; $5799: $10
    pop hl                                        ; $579a: $e1
    db $eb                                        ; $579b: $eb
    pop de                                        ; $579c: $d1
    ld bc, $8188                                  ; $579d: $01 $88 $81
    add c                                         ; $57a0: $81
    ld bc, $8188                                  ; $57a1: $01 $88 $81
    add c                                         ; $57a4: $81
    ld bc, $c888                                  ; $57a5: $01 $88 $c8
    add c                                         ; $57a8: $81
    ld bc, $c880                                  ; $57a9: $01 $80 $c8
    add c                                         ; $57ac: $81
    pop de                                        ; $57ad: $d1
    pop de                                        ; $57ae: $d1
    pop de                                        ; $57af: $d1
    db $ec                                        ; $57b0: $ec
    pop de                                        ; $57b1: $d1
    pop de                                        ; $57b2: $d1
    pop de                                        ; $57b3: $d1
    pop de                                        ; $57b4: $d1
    pop de                                        ; $57b5: $d1
    pop de                                        ; $57b6: $d1
    pop de                                        ; $57b7: $d1
    pop de                                        ; $57b8: $d1
    pop de                                        ; $57b9: $d1
    pop de                                        ; $57ba: $d1
    pop de                                        ; $57bb: $d1
    pop de                                        ; $57bc: $d1
    ld bc, $0101                                  ; $57bd: $01 $01 $01
    inc c                                         ; $57c0: $0c
    ld bc, $0101                                  ; $57c1: $01 $01 $01
    inc b                                         ; $57c4: $04
    ld bc, $0101                                  ; $57c5: $01 $01 $01
    ld bc, $0101                                  ; $57c8: $01 $01 $01
    ld bc, $ed01                                  ; $57cb: $01 $01 $ed
    xor $ef                                       ; $57ce: $ee $ef
    inc [hl]                                      ; $57d0: $34
    ldh a, [$f1]                                  ; $57d1: $f0 $f1
    ld a, [c]                                     ; $57d3: $f2
    scf                                           ; $57d4: $37
    di                                            ; $57d5: $f3
    db $f4                                        ; $57d6: $f4
    push af                                       ; $57d7: $f5
    sub h                                         ; $57d8: $94
    or $f7                                        ; $57d9: $f6 $f7
    ld hl, sp-$68                                 ; $57db: $f8 $98
    inc c                                         ; $57dd: $0c
    inc c                                         ; $57de: $0c
    inc c                                         ; $57df: $0c
    ld [bc], a                                    ; $57e0: $02
    inc c                                         ; $57e1: $0c
    inc c                                         ; $57e2: $0c
    inc c                                         ; $57e3: $0c
    ld [bc], a                                    ; $57e4: $02
    inc c                                         ; $57e5: $0c
    inc c                                         ; $57e6: $0c
    inc c                                         ; $57e7: $0c
    ld a, [bc]                                    ; $57e8: $0a
    inc c                                         ; $57e9: $0c
    inc c                                         ; $57ea: $0c
    inc c                                         ; $57eb: $0c
    ld a, [bc]                                    ; $57ec: $0a
    dec a                                         ; $57ed: $3d
    dec bc                                        ; $57ee: $0b
    ld a, $3f                                     ; $57ef: $3e $3f
    ld b, b                                       ; $57f1: $40
    ld c, $41                                     ; $57f2: $0e $41
    dec [hl]                                      ; $57f4: $35
    sbc a                                         ; $57f5: $9f
    ld de, $a112                                  ; $57f6: $11 $12 $a1
    ld a, [hl]                                    ; $57f9: $7e
    inc de                                        ; $57fa: $13
    inc d                                         ; $57fb: $14
    and e                                         ; $57fc: $a3
    ld [bc], a                                    ; $57fd: $02
    ld [bc], a                                    ; $57fe: $02
    ld [bc], a                                    ; $57ff: $02
    ld [bc], a                                    ; $5800: $02
    ld [bc], a                                    ; $5801: $02
    ld [bc], a                                    ; $5802: $02
    ld [bc], a                                    ; $5803: $02
    ld [bc], a                                    ; $5804: $02
    ld a, [bc]                                    ; $5805: $0a
    ld [bc], a                                    ; $5806: $02
    ld [bc], a                                    ; $5807: $02
    ld a, [bc]                                    ; $5808: $0a
    ld [bc], a                                    ; $5809: $02
    ld [bc], a                                    ; $580a: $02
    ld [bc], a                                    ; $580b: $02
    ld a, [bc]                                    ; $580c: $0a
    pop de                                        ; $580d: $d1
    ld sp, hl                                     ; $580e: $f9
    ld a, [$d143]                                 ; $580f: $fa $43 $d1
    ei                                            ; $5812: $fb
    db $fc                                        ; $5813: $fc
    ld b, [hl]                                    ; $5814: $46
    pop de                                        ; $5815: $d1
    db $fd                                        ; $5816: $fd
    cp $55                                        ; $5817: $fe $55
    pop de                                        ; $5819: $d1
    pop de                                        ; $581a: $d1
    rst $38                                       ; $581b: $ff
    db $db                                        ; $581c: $db
    inc b                                         ; $581d: $04
    inc c                                         ; $581e: $0c
    inc c                                         ; $581f: $0c
    ld [bc], a                                    ; $5820: $02
    ld bc, $0c0c                                  ; $5821: $01 $0c $0c
    ld [bc], a                                    ; $5824: $02
    ld bc, $0c0c                                  ; $5825: $01 $0c $0c
    ld [bc], a                                    ; $5828: $02
    ld bc, $0c81                                  ; $5829: $01 $81 $0c
    ld [bc], a                                    ; $582c: $02
    ld b, h                                       ; $582d: $44
    jr c, jr_088_5869                             ; $582e: $38 $39

    ld a, [hl-]                                   ; $5830: $3a
    ld b, a                                       ; $5831: $47
    ldh a, [$f1]                                  ; $5832: $f0 $f1
    inc a                                         ; $5834: $3c
    dec a                                         ; $5835: $3d
    dec bc                                        ; $5836: $0b
    ld a, $3f                                     ; $5837: $3e $3f
    nop                                           ; $5839: $00
    ld c, $41                                     ; $583a: $0e $41
    dec [hl]                                      ; $583c: $35
    ld [bc], a                                    ; $583d: $02
    ld [bc], a                                    ; $583e: $02
    ld [bc], a                                    ; $583f: $02
    ld [bc], a                                    ; $5840: $02
    ld [bc], a                                    ; $5841: $02
    ld [bc], a                                    ; $5842: $02
    ld [bc], a                                    ; $5843: $02
    ld [bc], a                                    ; $5844: $02
    ld [bc], a                                    ; $5845: $02
    ld [bc], a                                    ; $5846: $02
    ld [bc], a                                    ; $5847: $02
    ld [bc], a                                    ; $5848: $02
    ld a, [bc]                                    ; $5849: $0a
    ld [bc], a                                    ; $584a: $02
    ld [bc], a                                    ; $584b: $02
    ld [bc], a                                    ; $584c: $02
    pop de                                        ; $584d: $d1
    pop de                                        ; $584e: $d1
    pop de                                        ; $584f: $d1
    ld bc, $d1d1                                  ; $5850: $01 $d1 $d1
    pop de                                        ; $5853: $d1
    ld [bc], a                                    ; $5854: $02
    pop de                                        ; $5855: $d1
    pop de                                        ; $5856: $d1
    pop de                                        ; $5857: $d1
    pop de                                        ; $5858: $d1
    pop de                                        ; $5859: $d1
    pop de                                        ; $585a: $d1
    pop de                                        ; $585b: $d1
    pop de                                        ; $585c: $d1
    ld bc, $8181                                  ; $585d: $01 $81 $81
    adc c                                         ; $5860: $89
    ld bc, $8181                                  ; $5861: $01 $81 $81
    adc c                                         ; $5864: $89
    ld bc, $8181                                  ; $5865: $01 $81 $81
    add c                                         ; $5868: $81

jr_088_5869:
    ld bc, $8181                                  ; $5869: $01 $81 $81
    add c                                         ; $586c: $81
    db $db                                        ; $586d: $db
    ld e, $12                                     ; $586e: $1e $12
    and c                                         ; $5870: $a1
    inc bc                                        ; $5871: $03
    db $db                                        ; $5872: $db
    inc b                                         ; $5873: $04
    and e                                         ; $5874: $a3
    dec b                                         ; $5875: $05
    ld b, $db                                     ; $5876: $06 $db
    rlca                                          ; $5878: $07
    pop de                                        ; $5879: $d1
    ld [$db06], sp                                ; $587a: $08 $06 $db
    ld [bc], a                                    ; $587d: $02
    ld [bc], a                                    ; $587e: $02
    ld [bc], a                                    ; $587f: $02
    ld a, [bc]                                    ; $5880: $0a
    adc c                                         ; $5881: $89
    ld [bc], a                                    ; $5882: $02
    ld a, [bc]                                    ; $5883: $0a
    ld a, [bc]                                    ; $5884: $0a
    adc c                                         ; $5885: $89
    adc c                                         ; $5886: $89
    ld [bc], a                                    ; $5887: $02
    ld a, [bc]                                    ; $5888: $0a
    add c                                         ; $5889: $81
    adc c                                         ; $588a: $89
    adc c                                         ; $588b: $89
    ld [bc], a                                    ; $588c: $02
    pop de                                        ; $588d: $d1
    pop de                                        ; $588e: $d1
    add hl, bc                                    ; $588f: $09
    ld a, [bc]                                    ; $5890: $0a
    pop de                                        ; $5891: $d1
    pop de                                        ; $5892: $d1
    pop de                                        ; $5893: $d1
    dec bc                                        ; $5894: $0b
    pop de                                        ; $5895: $d1
    pop de                                        ; $5896: $d1
    pop de                                        ; $5897: $d1
    pop de                                        ; $5898: $d1
    pop de                                        ; $5899: $d1
    pop de                                        ; $589a: $d1
    pop de                                        ; $589b: $d1
    pop de                                        ; $589c: $d1
    add c                                         ; $589d: $81
    add c                                         ; $589e: $81
    adc c                                         ; $589f: $89
    adc c                                         ; $58a0: $89
    add c                                         ; $58a1: $81
    add c                                         ; $58a2: $81
    add c                                         ; $58a3: $81
    adc c                                         ; $58a4: $89
    ld bc, $8181                                  ; $58a5: $01 $81 $81
    add c                                         ; $58a8: $81
    ld bc, $8101                                  ; $58a9: $01 $01 $81
    add c                                         ; $58ac: $81
    ld c, b                                       ; $58ad: $48
    inc [hl]                                      ; $58ae: $34
    dec a                                         ; $58af: $3d
    dec bc                                        ; $58b0: $0b
    ld [hl], $37                                  ; $58b1: $36 $37
    ld b, b                                       ; $58b3: $40
    ld c, $a2                                     ; $58b4: $0e $a2
    sub h                                         ; $58b6: $94
    sbc a                                         ; $58b7: $9f
    ld de, $98a4                                  ; $58b8: $11 $a4 $98
    ld a, [hl]                                    ; $58bb: $7e
    inc de                                        ; $58bc: $13
    ld [bc], a                                    ; $58bd: $02
    ld [bc], a                                    ; $58be: $02
    ld [bc], a                                    ; $58bf: $02
    ld [bc], a                                    ; $58c0: $02
    ld [bc], a                                    ; $58c1: $02
    ld [bc], a                                    ; $58c2: $02
    ld [bc], a                                    ; $58c3: $02
    ld [bc], a                                    ; $58c4: $02
    ld a, [bc]                                    ; $58c5: $0a
    ld a, [bc]                                    ; $58c6: $0a
    ld a, [bc]                                    ; $58c7: $0a
    ld [bc], a                                    ; $58c8: $02
    ld a, [bc]                                    ; $58c9: $0a
    ld a, [bc]                                    ; $58ca: $0a
    ld [bc], a                                    ; $58cb: $02
    ld [bc], a                                    ; $58cc: $02
    ld a, $3f                                     ; $58cd: $3e $3f
    ld c, b                                       ; $58cf: $48
    inc [hl]                                      ; $58d0: $34
    ld b, c                                       ; $58d1: $41
    dec [hl]                                      ; $58d2: $35

Jump_088_58d3:
    ld [hl], $37                                  ; $58d3: $36 $37
    ld [de], a                                    ; $58d5: $12
    and c                                         ; $58d6: $a1
    and d                                         ; $58d7: $a2
    sub h                                         ; $58d8: $94
    inc d                                         ; $58d9: $14
    and e                                         ; $58da: $a3
    call z, $0298                                 ; $58db: $cc $98 $02
    ld [bc], a                                    ; $58de: $02
    ld [bc], a                                    ; $58df: $02
    ld [bc], a                                    ; $58e0: $02
    ld [bc], a                                    ; $58e1: $02
    ld [bc], a                                    ; $58e2: $02
    ld [bc], a                                    ; $58e3: $02
    ld [bc], a                                    ; $58e4: $02
    ld [bc], a                                    ; $58e5: $02
    ld a, [bc]                                    ; $58e6: $0a
    ld a, [bc]                                    ; $58e7: $0a
    ld a, [bc]                                    ; $58e8: $0a
    ld [bc], a                                    ; $58e9: $02
    ld a, [bc]                                    ; $58ea: $0a
    adc l                                         ; $58eb: $8d
    ld a, [bc]                                    ; $58ec: $0a
    dec a                                         ; $58ed: $3d
    dec bc                                        ; $58ee: $0b
    ld a, $3f                                     ; $58ef: $3e $3f
    ld b, b                                       ; $58f1: $40
    ld c, $41                                     ; $58f2: $0e $41
    call z, $119f                                 ; $58f4: $cc $9f $11
    rst $08                                       ; $58f7: $cf
    adc $0c                                       ; $58f8: $ce $0c
    dec c                                         ; $58fa: $0d
    ld c, $0f                                     ; $58fb: $0e $0f
    ld [bc], a                                    ; $58fd: $02
    ld [bc], a                                    ; $58fe: $02
    ld [bc], a                                    ; $58ff: $02
    ld [bc], a                                    ; $5900: $02

jr_088_5901:
    ld [bc], a                                    ; $5901: $02
    ld [bc], a                                    ; $5902: $02
    ld [bc], a                                    ; $5903: $02
    xor l                                         ; $5904: $ad
    ld a, [bc]                                    ; $5905: $0a
    ld [bc], a                                    ; $5906: $02
    xor l                                         ; $5907: $ad
    xor l                                         ; $5908: $ad
    adc c                                         ; $5909: $89
    adc c                                         ; $590a: $89
    adc c                                         ; $590b: $89
    adc c                                         ; $590c: $89
    add hl, sp                                    ; $590d: $39
    ld a, [hl-]                                   ; $590e: $3a
    adc $cf                                       ; $590f: $ce $cf
    pop af                                        ; $5911: $f1
    inc a                                         ; $5912: $3c
    pop de                                        ; $5913: $d1
    jp nc, Jump_000_3f3e                          ; $5914: $d2 $3e $3f

    db $10                                        ; $5917: $10
    ld de, $3541                                  ; $5918: $11 $41 $35
    ld [hl], $37                                  ; $591b: $36 $37
    ld [bc], a                                    ; $591d: $02
    ld [bc], a                                    ; $591e: $02
    adc l                                         ; $591f: $8d
    adc l                                         ; $5920: $8d
    ld [bc], a                                    ; $5921: $02
    ld [bc], a                                    ; $5922: $02
    dec c                                         ; $5923: $0d
    dec c                                         ; $5924: $0d
    ld [bc], a                                    ; $5925: $02
    ld [bc], a                                    ; $5926: $02
    dec c                                         ; $5927: $0d
    dec c                                         ; $5928: $0d
    ld [bc], a                                    ; $5929: $02
    ld [bc], a                                    ; $592a: $02
    ld [bc], a                                    ; $592b: $02
    ld [bc], a                                    ; $592c: $02
    ld [de], a                                    ; $592d: $12
    inc de                                        ; $592e: $13
    inc d                                         ; $592f: $14
    dec d                                         ; $5930: $15
    ld d, $17                                     ; $5931: $16 $17
    jr jr_088_594e                                ; $5933: $18 $19

    ld a, [de]                                    ; $5935: $1a
    dec de                                        ; $5936: $1b
    inc e                                         ; $5937: $1c
    dec e                                         ; $5938: $1d
    ld b, b                                       ; $5939: $40
    ld e, $1f                                     ; $593a: $1e $1f
    dec [hl]                                      ; $593c: $35
    adc c                                         ; $593d: $89
    adc c                                         ; $593e: $89
    adc c                                         ; $593f: $89
    adc c                                         ; $5940: $89
    add hl, bc                                    ; $5941: $09
    add hl, bc                                    ; $5942: $09
    add hl, bc                                    ; $5943: $09
    add hl, bc                                    ; $5944: $09
    add hl, bc                                    ; $5945: $09
    add hl, bc                                    ; $5946: $09
    add hl, bc                                    ; $5947: $09
    add hl, bc                                    ; $5948: $09
    ld [bc], a                                    ; $5949: $02
    add hl, bc                                    ; $594a: $09
    add hl, bc                                    ; $594b: $09
    ld [bc], a                                    ; $594c: $02
    and l                                         ; $594d: $a5

jr_088_594e:
    call z, $3844                                 ; $594e: $cc $44 $38
    rst $08                                       ; $5951: $cf
    adc $47                                       ; $5952: $ce $47
    ldh a, [$d2]                                  ; $5954: $f0 $d2
    pop de                                        ; $5956: $d1
    dec a                                         ; $5957: $3d
    dec bc                                        ; $5958: $0b
    ld de, $4010                                  ; $5959: $11 $10 $40
    ld c, $0a                                     ; $595c: $0e $0a
    xor l                                         ; $595e: $ad
    ld [bc], a                                    ; $595f: $02
    ld [bc], a                                    ; $5960: $02
    xor l                                         ; $5961: $ad
    xor l                                         ; $5962: $ad
    ld [bc], a                                    ; $5963: $02
    ld [bc], a                                    ; $5964: $02
    dec l                                         ; $5965: $2d
    dec l                                         ; $5966: $2d
    ld [bc], a                                    ; $5967: $02
    ld [bc], a                                    ; $5968: $02
    dec l                                         ; $5969: $2d
    dec l                                         ; $596a: $2d
    ld [bc], a                                    ; $596b: $02
    ld [bc], a                                    ; $596c: $02
    and d                                         ; $596d: $a2

jr_088_596e:
    sub h                                         ; $596e: $94
    sbc a                                         ; $596f: $9f
    ld de, $98a4                                  ; $5970: $11 $a4 $98
    ld a, [hl]                                    ; $5973: $7e
    inc de                                        ; $5974: $13
    and l                                         ; $5975: $a5
    ld b, e                                       ; $5976: $43
    ld b, h                                       ; $5977: $44
    jr c, jr_088_5901                             ; $5978: $38 $87

    ld b, [hl]                                    ; $597a: $46
    ld b, a                                       ; $597b: $47
    ldh a, [$0a]                                  ; $597c: $f0 $0a
    ld a, [bc]                                    ; $597e: $0a
    ld a, [bc]                                    ; $597f: $0a
    ld [bc], a                                    ; $5980: $02
    ld a, [bc]                                    ; $5981: $0a
    ld a, [bc]                                    ; $5982: $0a
    ld [bc], a                                    ; $5983: $02
    ld [bc], a                                    ; $5984: $02
    ld a, [bc]                                    ; $5985: $0a
    ld [bc], a                                    ; $5986: $02
    ld [bc], a                                    ; $5987: $02
    ld [bc], a                                    ; $5988: $02
    ld a, [bc]                                    ; $5989: $0a
    ld [bc], a                                    ; $598a: $02
    ld [bc], a                                    ; $598b: $02
    ld [bc], a                                    ; $598c: $02
    db $db                                        ; $598d: $db
    ld d, l                                       ; $598e: $55
    dec a                                         ; $598f: $3d
    dec bc                                        ; $5990: $0b
    jr nz, jr_088_596e                            ; $5991: $20 $db

    nop                                           ; $5993: $00
    ld c, $d1                                     ; $5994: $0e $d1
    ld hl, $db22                                  ; $5996: $21 $22 $db
    pop de                                        ; $5999: $d1
    pop de                                        ; $599a: $d1
    inc hl                                        ; $599b: $23
    inc h                                         ; $599c: $24
    ld [bc], a                                    ; $599d: $02
    ld [bc], a                                    ; $599e: $02
    ld [bc], a                                    ; $599f: $02
    ld [bc], a                                    ; $59a0: $02
    adc c                                         ; $59a1: $89
    ld [bc], a                                    ; $59a2: $02
    ld a, [bc]                                    ; $59a3: $0a
    ld [bc], a                                    ; $59a4: $02
    add c                                         ; $59a5: $81
    adc c                                         ; $59a6: $89
    adc c                                         ; $59a7: $89
    ld [bc], a                                    ; $59a8: $02
    add c                                         ; $59a9: $81
    add c                                         ; $59aa: $81
    adc c                                         ; $59ab: $89
    adc c                                         ; $59ac: $89
    ld a, $3f                                     ; $59ad: $3e $3f
    ld c, b                                       ; $59af: $48
    inc [hl]                                      ; $59b0: $34
    ld b, c                                       ; $59b1: $41
    dec [hl]                                      ; $59b2: $35
    ld [hl], $37                                  ; $59b3: $36 $37
    dec h                                         ; $59b5: $25
    and c                                         ; $59b6: $a1
    and d                                         ; $59b7: $a2
    sub h                                         ; $59b8: $94
    ld [hl+], a                                   ; $59b9: $22
    db $db                                        ; $59ba: $db
    or [hl]                                       ; $59bb: $b6
    sbc b                                         ; $59bc: $98
    ld [bc], a                                    ; $59bd: $02
    ld [bc], a                                    ; $59be: $02
    ld [bc], a                                    ; $59bf: $02
    ld [bc], a                                    ; $59c0: $02
    ld [bc], a                                    ; $59c1: $02

Jump_088_59c2:
    ld [bc], a                                    ; $59c2: $02
    ld [bc], a                                    ; $59c3: $02
    ld [bc], a                                    ; $59c4: $02
    ld a, [bc]                                    ; $59c5: $0a
    ld a, [bc]                                    ; $59c6: $0a
    ld a, [bc]                                    ; $59c7: $0a
    ld a, [bc]                                    ; $59c8: $0a
    adc c                                         ; $59c9: $89
    ld [bc], a                                    ; $59ca: $02
    ld a, [bc]                                    ; $59cb: $0a
    ld a, [bc]                                    ; $59cc: $0a
    ld a, $10                                     ; $59cd: $3e $10
    ld de, $41d0                                  ; $59cf: $11 $d0 $41
    dec [hl]                                      ; $59d2: $35
    ld [hl], $d0                                  ; $59d3: $36 $d0
    ld [de], a                                    ; $59d5: $12
    and c                                         ; $59d6: $a1
    and d                                         ; $59d7: $a2
    ret nc                                        ; $59d8: $d0

    inc d                                         ; $59d9: $14
    and e                                         ; $59da: $a3
    and h                                         ; $59db: $a4
    ret nc                                        ; $59dc: $d0

    ld [bc], a                                    ; $59dd: $02
    dec c                                         ; $59de: $0d
    dec c                                         ; $59df: $0d
    ld a, [bc]                                    ; $59e0: $0a
    ld [bc], a                                    ; $59e1: $02
    ld [bc], a                                    ; $59e2: $02
    ld [bc], a                                    ; $59e3: $02
    ld a, [bc]                                    ; $59e4: $0a
    ld [bc], a                                    ; $59e5: $02
    ld a, [bc]                                    ; $59e6: $0a
    ld a, [bc]                                    ; $59e7: $0a
    ld a, [bc]                                    ; $59e8: $0a
    ld [bc], a                                    ; $59e9: $02
    ld a, [bc]                                    ; $59ea: $0a
    ld a, [bc]                                    ; $59eb: $0a
    ld a, [bc]                                    ; $59ec: $0a
    ld h, $26                                     ; $59ed: $26 $26
    daa                                           ; $59ef: $27
    ccf                                           ; $59f0: $3f
    jr z, jr_088_5a1b                             ; $59f1: $28 $28

    ret nc                                        ; $59f3: $d0

    dec [hl]                                      ; $59f4: $35
    jr z, jr_088_5a1f                             ; $59f5: $28 $28

    ret nc                                        ; $59f7: $d0

    and c                                         ; $59f8: $a1
    cp l                                          ; $59f9: $bd
    cp l                                          ; $59fa: $bd
    ret nc                                        ; $59fb: $d0

    rst $08                                       ; $59fc: $cf
    dec bc                                        ; $59fd: $0b
    dec hl                                        ; $59fe: $2b
    ld l, d                                       ; $59ff: $6a
    ld [bc], a                                    ; $5a00: $02
    dec bc                                        ; $5a01: $0b
    dec hl                                        ; $5a02: $2b
    ld l, d                                       ; $5a03: $6a
    ld [bc], a                                    ; $5a04: $02
    dec bc                                        ; $5a05: $0b
    dec hl                                        ; $5a06: $2b
    ld l, d                                       ; $5a07: $6a
    ld a, [bc]                                    ; $5a08: $0a
    inc c                                         ; $5a09: $0c
    inc c                                         ; $5a0a: $0c
    ld l, d                                       ; $5a0b: $6a
    xor l                                         ; $5a0c: $ad
    ld c, b                                       ; $5a0d: $48
    inc [hl]                                      ; $5a0e: $34
    dec a                                         ; $5a0f: $3d
    dec bc                                        ; $5a10: $0b
    ld [hl], $37                                  ; $5a11: $36 $37
    ld b, b                                       ; $5a13: $40
    ld c, $cc                                     ; $5a14: $0e $cc
    sub h                                         ; $5a16: $94
    sbc a                                         ; $5a17: $9f
    ld de, $98ce                                  ; $5a18: $11 $ce $98

jr_088_5a1b:
    ld a, [hl]                                    ; $5a1b: $7e
    inc de                                        ; $5a1c: $13
    ld [bc], a                                    ; $5a1d: $02
    ld [bc], a                                    ; $5a1e: $02

jr_088_5a1f:
    ld [bc], a                                    ; $5a1f: $02
    ld [bc], a                                    ; $5a20: $02
    ld [bc], a                                    ; $5a21: $02
    ld [bc], a                                    ; $5a22: $02
    ld [bc], a                                    ; $5a23: $02
    ld [bc], a                                    ; $5a24: $02
    xor l                                         ; $5a25: $ad
    ld a, [bc]                                    ; $5a26: $0a
    ld a, [bc]                                    ; $5a27: $0a
    ld [bc], a                                    ; $5a28: $02
    xor l                                         ; $5a29: $ad
    ld a, [bc]                                    ; $5a2a: $0a
    ld [bc], a                                    ; $5a2b: $02
    ld [bc], a                                    ; $5a2c: $02
    ld a, $3f                                     ; $5a2d: $3e $3f
    ld c, b                                       ; $5a2f: $48
    inc [hl]                                      ; $5a30: $34
    ld b, c                                       ; $5a31: $41
    dec [hl]                                      ; $5a32: $35
    ld [hl], $37                                  ; $5a33: $36 $37
    ld [de], a                                    ; $5a35: $12
    and c                                         ; $5a36: $a1
    and d                                         ; $5a37: $a2
    sub h                                         ; $5a38: $94
    inc d                                         ; $5a39: $14

Jump_088_5a3a:
    and e                                         ; $5a3a: $a3
    and h                                         ; $5a3b: $a4
    sbc b                                         ; $5a3c: $98
    ld [bc], a                                    ; $5a3d: $02
    ld [bc], a                                    ; $5a3e: $02
    ld [bc], a                                    ; $5a3f: $02
    ld [bc], a                                    ; $5a40: $02
    ld [bc], a                                    ; $5a41: $02
    ld [bc], a                                    ; $5a42: $02
    ld [bc], a                                    ; $5a43: $02
    ld [bc], a                                    ; $5a44: $02
    ld [bc], a                                    ; $5a45: $02
    ld a, [bc]                                    ; $5a46: $0a
    ld a, [bc]                                    ; $5a47: $0a
    ld a, [bc]                                    ; $5a48: $0a
    ld [bc], a                                    ; $5a49: $02
    ld a, [bc]                                    ; $5a4a: $0a
    ld a, [bc]                                    ; $5a4b: $0a
    ld a, [bc]                                    ; $5a4c: $0a
    add hl, sp                                    ; $5a4d: $39
    ld a, [hl-]                                   ; $5a4e: $3a
    and l                                         ; $5a4f: $a5
    ret nc                                        ; $5a50: $d0

    pop af                                        ; $5a51: $f1
    inc a                                         ; $5a52: $3c
    ld b, l                                       ; $5a53: $45
    add hl, hl                                    ; $5a54: $29
    ld a, $3f                                     ; $5a55: $3e $3f
    ld a, [hl+]                                   ; $5a57: $2a
    dec hl                                        ; $5a58: $2b
    ld b, c                                       ; $5a59: $41
    dec [hl]                                      ; $5a5a: $35
    ld [hl], $2c                                  ; $5a5b: $36 $2c
    ld [bc], a                                    ; $5a5d: $02
    ld [bc], a                                    ; $5a5e: $02
    ld a, [bc]                                    ; $5a5f: $0a
    ld a, [bc]                                    ; $5a60: $0a
    ld [bc], a                                    ; $5a61: $02
    ld [bc], a                                    ; $5a62: $02
    ld [bc], a                                    ; $5a63: $02
    ld a, [bc]                                    ; $5a64: $0a
    ld [bc], a                                    ; $5a65: $02
    ld [bc], a                                    ; $5a66: $02
    ld a, [bc]                                    ; $5a67: $0a
    ld a, [bc]                                    ; $5a68: $0a
    ld [bc], a                                    ; $5a69: $02
    ld [bc], a                                    ; $5a6a: $02
    ld [bc], a                                    ; $5a6b: $02
    ld a, [bc]                                    ; $5a6c: $0a
    cp l                                          ; $5a6d: $bd
    cp l                                          ; $5a6e: $bd
    ret nc                                        ; $5a6f: $d0

    jp nc, $2d2d                                  ; $5a70: $d2 $2d $2d

    ld l, $11                                     ; $5a73: $2e $11
    cpl                                           ; $5a75: $2f
    jr nc, jr_088_5aa9                            ; $5a76: $30 $31

    ld [hl-], a                                   ; $5a78: $32
    inc sp                                        ; $5a79: $33
    inc [hl]                                      ; $5a7a: $34
    dec [hl]                                      ; $5a7b: $35
    ld a, [hl+]                                   ; $5a7c: $2a
    inc c                                         ; $5a7d: $0c
    inc c                                         ; $5a7e: $0c
    ld l, d                                       ; $5a7f: $6a
    dec l                                         ; $5a80: $2d
    ld a, [bc]                                    ; $5a81: $0a
    ld a, [bc]                                    ; $5a82: $0a
    ld a, [bc]                                    ; $5a83: $0a
    dec l                                         ; $5a84: $2d
    ld a, [bc]                                    ; $5a85: $0a
    ld a, [bc]                                    ; $5a86: $0a
    ld a, [bc]                                    ; $5a87: $0a
    ld a, [bc]                                    ; $5a88: $0a
    ld a, [bc]                                    ; $5a89: $0a
    ld a, [bc]                                    ; $5a8a: $0a
    ld a, [bc]                                    ; $5a8b: $0a
    ld a, [bc]                                    ; $5a8c: $0a
    pop de                                        ; $5a8d: $d1
    ld b, e                                       ; $5a8e: $43
    ld b, h                                       ; $5a8f: $44
    jr c, jr_088_5aa2                             ; $5a90: $38 $10

    ld b, [hl]                                    ; $5a92: $46
    ld b, a                                       ; $5a93: $47
    ldh a, [rOBP0]                                ; $5a94: $f0 $48
    inc [hl]                                      ; $5a96: $34
    dec a                                         ; $5a97: $3d
    dec bc                                        ; $5a98: $0b
    ld [hl], $37                                  ; $5a99: $36 $37
    ld b, b                                       ; $5a9b: $40
    ld c, $2d                                     ; $5a9c: $0e $2d
    ld [bc], a                                    ; $5a9e: $02
    ld [bc], a                                    ; $5a9f: $02
    ld [bc], a                                    ; $5aa0: $02
    dec l                                         ; $5aa1: $2d

jr_088_5aa2:
    ld [bc], a                                    ; $5aa2: $02
    ld [bc], a                                    ; $5aa3: $02
    ld [bc], a                                    ; $5aa4: $02
    ld [bc], a                                    ; $5aa5: $02
    ld [bc], a                                    ; $5aa6: $02
    ld [bc], a                                    ; $5aa7: $02
    ld [bc], a                                    ; $5aa8: $02

jr_088_5aa9:
    ld [bc], a                                    ; $5aa9: $02
    ld [bc], a                                    ; $5aaa: $02
    ld [bc], a                                    ; $5aab: $02
    ld [bc], a                                    ; $5aac: $02
    add hl, sp                                    ; $5aad: $39
    ld a, [hl-]                                   ; $5aae: $3a
    and l                                         ; $5aaf: $a5
    or a                                          ; $5ab0: $b7
    pop af                                        ; $5ab1: $f1
    inc a                                         ; $5ab2: $3c
    ld b, l                                       ; $5ab3: $45
    db $db                                        ; $5ab4: $db
    ld a, $3f                                     ; $5ab5: $3e $3f
    inc sp                                        ; $5ab7: $33
    ld [hl], $41                                  ; $5ab8: $36 $41
    scf                                           ; $5aba: $37
    db $db                                        ; $5abb: $db
    jr c, jr_088_5ac0                             ; $5abc: $38 $02

    ld [bc], a                                    ; $5abe: $02
    ld a, [bc]                                    ; $5abf: $0a

jr_088_5ac0:
    ld a, [bc]                                    ; $5ac0: $0a
    ld [bc], a                                    ; $5ac1: $02
    ld [bc], a                                    ; $5ac2: $02
    ld [bc], a                                    ; $5ac3: $02
    ld [bc], a                                    ; $5ac4: $02
    ld [bc], a                                    ; $5ac5: $02
    ld [bc], a                                    ; $5ac6: $02
    ld [bc], a                                    ; $5ac7: $02
    adc c                                         ; $5ac8: $89
    ld [bc], a                                    ; $5ac9: $02
    ld a, [bc]                                    ; $5aca: $0a
    ld [bc], a                                    ; $5acb: $02
    adc c                                         ; $5acc: $89
    inc sp                                        ; $5acd: $33
    ld [hl-], a                                   ; $5ace: $32
    ld a, [hl+]                                   ; $5acf: $2a
    and c                                         ; $5ad0: $a1
    ld a, [hl]                                    ; $5ad1: $7e
    inc de                                        ; $5ad2: $13
    inc d                                         ; $5ad3: $14
    and e                                         ; $5ad4: $a3
    ld b, h                                       ; $5ad5: $44
    jr c, @+$3b                                   ; $5ad6: $38 $39

    ld a, [hl-]                                   ; $5ad8: $3a
    ld b, a                                       ; $5ad9: $47
    ldh a, [$f1]                                  ; $5ada: $f0 $f1
    inc a                                         ; $5adc: $3c
    ld [bc], a                                    ; $5add: $02
    ld a, [bc]                                    ; $5ade: $0a
    ld a, [bc]                                    ; $5adf: $0a
    ld a, [bc]                                    ; $5ae0: $0a
    ld [bc], a                                    ; $5ae1: $02
    ld [bc], a                                    ; $5ae2: $02
    ld [bc], a                                    ; $5ae3: $02
    ld a, [bc]                                    ; $5ae4: $0a
    ld [bc], a                                    ; $5ae5: $02
    ld [bc], a                                    ; $5ae6: $02
    ld [bc], a                                    ; $5ae7: $02
    ld [bc], a                                    ; $5ae8: $02
    ld [bc], a                                    ; $5ae9: $02
    ld [bc], a                                    ; $5aea: $02
    ld [bc], a                                    ; $5aeb: $02
    ld [bc], a                                    ; $5aec: $02
    and d                                         ; $5aed: $a2
    sub h                                         ; $5aee: $94
    sbc a                                         ; $5aef: $9f
    ld de, $98a4                                  ; $5af0: $11 $a4 $98
    ld a, [hl]                                    ; $5af3: $7e
    add hl, sp                                    ; $5af4: $39
    and l                                         ; $5af5: $a5
    ld b, e                                       ; $5af6: $43
    ld a, [hl+]                                   ; $5af7: $2a
    db $db                                        ; $5af8: $db
    ld b, l                                       ; $5af9: $45
    ld [hl-], a                                   ; $5afa: $32
    db $db                                        ; $5afb: $db
    ld b, $0a                                     ; $5afc: $06 $0a
    ld a, [bc]                                    ; $5afe: $0a
    ld a, [bc]                                    ; $5aff: $0a
    ld [bc], a                                    ; $5b00: $02
    ld a, [bc]                                    ; $5b01: $0a
    ld a, [bc]                                    ; $5b02: $0a
    ld [bc], a                                    ; $5b03: $02
    ld a, [bc]                                    ; $5b04: $0a
    ld a, [bc]                                    ; $5b05: $0a
    ld [bc], a                                    ; $5b06: $02
    ld a, [bc]                                    ; $5b07: $0a
    ld [bc], a                                    ; $5b08: $02
    ld [bc], a                                    ; $5b09: $02
    ld a, [bc]                                    ; $5b0a: $0a
    ld [bc], a                                    ; $5b0b: $02
    xor c                                         ; $5b0c: $a9
    dec h                                         ; $5b0d: $25
    db $db                                        ; $5b0e: $db
    ld bc, $dbd1                                  ; $5b0f: $01 $d1 $db
    inc bc                                        ; $5b12: $03
    ld [bc], a                                    ; $5b13: $02
    pop de                                        ; $5b14: $d1
    ld b, $05                                     ; $5b15: $06 $05
    pop de                                        ; $5b17: $d1
    pop de                                        ; $5b18: $d1
    ld [$d1d1], sp                                ; $5b19: $08 $d1 $d1
    pop de                                        ; $5b1c: $d1
    ld a, [bc]                                    ; $5b1d: $0a
    ld [bc], a                                    ; $5b1e: $02
    xor c                                         ; $5b1f: $a9
    add c                                         ; $5b20: $81
    ld [bc], a                                    ; $5b21: $02
    xor c                                         ; $5b22: $a9
    xor c                                         ; $5b23: $a9
    add c                                         ; $5b24: $81
    xor c                                         ; $5b25: $a9
    xor c                                         ; $5b26: $a9
    add c                                         ; $5b27: $81
    add c                                         ; $5b28: $81
    xor c                                         ; $5b29: $a9
    add c                                         ; $5b2a: $81
    add c                                         ; $5b2b: $81
    add c                                         ; $5b2c: $81
    ld a, $3f                                     ; $5b2d: $3e $3f
    ld c, b                                       ; $5b2f: $48
    inc [hl]                                      ; $5b30: $34
    ld b, c                                       ; $5b31: $41
    dec [hl]                                      ; $5b32: $35
    ld [hl], $37                                  ; $5b33: $36 $37
    ld [de], a                                    ; $5b35: $12
    and c                                         ; $5b36: $a1
    and d                                         ; $5b37: $a2
    sub h                                         ; $5b38: $94
    inc d                                         ; $5b39: $14
    and e                                         ; $5b3a: $a3
    and h                                         ; $5b3b: $a4
    ld a, b                                       ; $5b3c: $78
    ld [bc], a                                    ; $5b3d: $02
    ld [bc], a                                    ; $5b3e: $02
    ld [bc], a                                    ; $5b3f: $02
    ld [bc], a                                    ; $5b40: $02
    ld [bc], a                                    ; $5b41: $02
    ld [bc], a                                    ; $5b42: $02
    ld [bc], a                                    ; $5b43: $02
    ld [bc], a                                    ; $5b44: $02
    ld [bc], a                                    ; $5b45: $02
    ld a, [bc]                                    ; $5b46: $0a
    ld a, [bc]                                    ; $5b47: $0a
    ld a, [bc]                                    ; $5b48: $0a
    ld [bc], a                                    ; $5b49: $02
    ld a, [bc]                                    ; $5b4a: $0a
    ld a, [bc]                                    ; $5b4b: $0a
    ld [bc], a                                    ; $5b4c: $02
    dec a                                         ; $5b4d: $3d
    dec bc                                        ; $5b4e: $0b
    ld a, $3f                                     ; $5b4f: $3e $3f
    ld b, b                                       ; $5b51: $40
    ld c, $41                                     ; $5b52: $0e $41
    scf                                           ; $5b54: $37
    sbc a                                         ; $5b55: $9f
    ld e, $db                                     ; $5b56: $1e $db
    ld [hl+], a                                   ; $5b58: $22
    db $db                                        ; $5b59: $db
    ld [hl+], a                                   ; $5b5a: $22
    inc h                                         ; $5b5b: $24
    inc hl                                        ; $5b5c: $23
    ld [bc], a                                    ; $5b5d: $02
    ld [bc], a                                    ; $5b5e: $02
    ld [bc], a                                    ; $5b5f: $02
    ld [bc], a                                    ; $5b60: $02
    ld [bc], a                                    ; $5b61: $02
    ld [bc], a                                    ; $5b62: $02
    ld [bc], a                                    ; $5b63: $02
    ld a, [bc]                                    ; $5b64: $0a
    ld a, [bc]                                    ; $5b65: $0a
    ld [bc], a                                    ; $5b66: $02
    ld [bc], a                                    ; $5b67: $02
    xor c                                         ; $5b68: $a9
    ld [bc], a                                    ; $5b69: $02
    xor c                                         ; $5b6a: $a9
    xor c                                         ; $5b6b: $a9
    xor c                                         ; $5b6c: $a9
    inc sp                                        ; $5b6d: $33
    db $db                                        ; $5b6e: $db
    ld a, [bc]                                    ; $5b6f: $0a
    add hl, bc                                    ; $5b70: $09
    db $db                                        ; $5b71: $db
    jr nz, jr_088_5b7f                            ; $5b72: $20 $0b

    pop de                                        ; $5b74: $d1
    ld hl, $d1d1                                  ; $5b75: $21 $d1 $d1
    pop de                                        ; $5b78: $d1
    pop de                                        ; $5b79: $d1
    pop de                                        ; $5b7a: $d1
    pop de                                        ; $5b7b: $d1
    pop de                                        ; $5b7c: $d1
    ld [bc], a                                    ; $5b7d: $02
    ld [bc], a                                    ; $5b7e: $02

jr_088_5b7f:
    xor c                                         ; $5b7f: $a9
    xor c                                         ; $5b80: $a9
    ld [bc], a                                    ; $5b81: $02
    xor c                                         ; $5b82: $a9
    xor c                                         ; $5b83: $a9
    add c                                         ; $5b84: $81
    xor c                                         ; $5b85: $a9
    add c                                         ; $5b86: $81
    add c                                         ; $5b87: $81
    add c                                         ; $5b88: $81
    add c                                         ; $5b89: $81
    add c                                         ; $5b8a: $81
    add c                                         ; $5b8b: $81
    add c                                         ; $5b8c: $81
    dec a                                         ; $5b8d: $3d
    dec bc                                        ; $5b8e: $0b
    ld [c], a                                     ; $5b8f: $e2
    ldh [rLCDC], a                                ; $5b90: $e0 $40
    ld a, [hl-]                                   ; $5b92: $3a
    pop de                                        ; $5b93: $d1
    pop de                                        ; $5b94: $d1
    ld a, h                                       ; $5b95: $7c
    dec sp                                        ; $5b96: $3b
    pop de                                        ; $5b97: $d1
    pop de                                        ; $5b98: $d1
    db $db                                        ; $5b99: $db
    inc a                                         ; $5b9a: $3c
    pop de                                        ; $5b9b: $d1
    pop de                                        ; $5b9c: $d1
    ld [bc], a                                    ; $5b9d: $02
    ld [bc], a                                    ; $5b9e: $02
    adc b                                         ; $5b9f: $88
    add b                                         ; $5ba0: $80
    ld [bc], a                                    ; $5ba1: $02
    adc c                                         ; $5ba2: $89
    add c                                         ; $5ba3: $81
    add c                                         ; $5ba4: $81
    ld [bc], a                                    ; $5ba5: $02
    adc c                                         ; $5ba6: $89
    add c                                         ; $5ba7: $81
    add c                                         ; $5ba8: $81
    ld [bc], a                                    ; $5ba9: $02
    adc c                                         ; $5baa: $89
    add c                                         ; $5bab: $81
    add c                                         ; $5bac: $81
    ldh [$3d], a                                  ; $5bad: $e0 $3d
    db $eb                                        ; $5baf: $eb
    pop de                                        ; $5bb0: $d1
    pop de                                        ; $5bb1: $d1
    pop de                                        ; $5bb2: $d1
    pop de                                        ; $5bb3: $d1
    pop de                                        ; $5bb4: $d1
    pop de                                        ; $5bb5: $d1
    pop de                                        ; $5bb6: $d1
    pop de                                        ; $5bb7: $d1
    pop de                                        ; $5bb8: $d1
    pop de                                        ; $5bb9: $d1
    pop de                                        ; $5bba: $d1
    pop de                                        ; $5bbb: $d1
    pop de                                        ; $5bbc: $d1
    add b                                         ; $5bbd: $80
    adc b                                         ; $5bbe: $88
    ret z                                         ; $5bbf: $c8

    add c                                         ; $5bc0: $81
    add c                                         ; $5bc1: $81
    add c                                         ; $5bc2: $81
    add c                                         ; $5bc3: $81
    add c                                         ; $5bc4: $81
    add c                                         ; $5bc5: $81
    add c                                         ; $5bc6: $81
    add c                                         ; $5bc7: $81
    add c                                         ; $5bc8: $81
    add c                                         ; $5bc9: $81
    ld bc, $0101                                  ; $5bca: $01 $01 $01
    ld [hl], $3e                                  ; $5bcd: $36 $3e
    pop de                                        ; $5bcf: $d1
    pop de                                        ; $5bd0: $d1
    ccf                                           ; $5bd1: $3f
    pop de                                        ; $5bd2: $d1
    pop de                                        ; $5bd3: $d1
    pop de                                        ; $5bd4: $d1
    ld b, b                                       ; $5bd5: $40
    pop de                                        ; $5bd6: $d1
    pop de                                        ; $5bd7: $d1
    pop de                                        ; $5bd8: $d1
    pop de                                        ; $5bd9: $d1
    pop de                                        ; $5bda: $d1
    pop de                                        ; $5bdb: $d1
    pop de                                        ; $5bdc: $d1
    adc c                                         ; $5bdd: $89
    adc c                                         ; $5bde: $89
    add c                                         ; $5bdf: $81
    add c                                         ; $5be0: $81
    adc c                                         ; $5be1: $89
    add c                                         ; $5be2: $81
    add c                                         ; $5be3: $81
    add c                                         ; $5be4: $81
    adc c                                         ; $5be5: $89
    add c                                         ; $5be6: $81
    add c                                         ; $5be7: $81
    add c                                         ; $5be8: $81
    add c                                         ; $5be9: $81
    add c                                         ; $5bea: $81
    add c                                         ; $5beb: $81
    ld bc, $4241                                  ; $5bec: $01 $41 $42
    ld b, e                                       ; $5bef: $43
    ld b, h                                       ; $5bf0: $44
    pop de                                        ; $5bf1: $d1
    pop de                                        ; $5bf2: $d1
    pop de                                        ; $5bf3: $d1
    pop de                                        ; $5bf4: $d1
    pop de                                        ; $5bf5: $d1
    pop de                                        ; $5bf6: $d1
    pop de                                        ; $5bf7: $d1
    pop de                                        ; $5bf8: $d1
    pop de                                        ; $5bf9: $d1
    pop de                                        ; $5bfa: $d1
    pop de                                        ; $5bfb: $d1
    pop de                                        ; $5bfc: $d1
    adc c                                         ; $5bfd: $89
    adc c                                         ; $5bfe: $89
    adc c                                         ; $5bff: $89
    adc c                                         ; $5c00: $89
    add c                                         ; $5c01: $81
    add c                                         ; $5c02: $81
    add c                                         ; $5c03: $81
    add c                                         ; $5c04: $81
    add c                                         ; $5c05: $81
    add c                                         ; $5c06: $81
    add c                                         ; $5c07: $81
    add c                                         ; $5c08: $81
    ld bc, $0101                                  ; $5c09: $01 $01 $01
    add c                                         ; $5c0c: $81
    db $db                                        ; $5c0d: $db
    ld b, l                                       ; $5c0e: $45
    add hl, sp                                    ; $5c0f: $39
    ld a, [hl-]                                   ; $5c10: $3a
    ld b, [hl]                                    ; $5c11: $46
    ldh a, [$f1]                                  ; $5c12: $f0 $f1
    db $10                                        ; $5c14: $10
    pop hl                                        ; $5c15: $e1
    dec bc                                        ; $5c16: $0b
    ld a, $47                                     ; $5c17: $3e $47
    pop hl                                        ; $5c19: $e1
    ld c, $41                                     ; $5c1a: $0e $41
    ld c, b                                       ; $5c1c: $48
    ld [bc], a                                    ; $5c1d: $02
    ld a, [bc]                                    ; $5c1e: $0a
    ld [bc], a                                    ; $5c1f: $02
    ld [bc], a                                    ; $5c20: $02
    adc b                                         ; $5c21: $88
    ld [bc], a                                    ; $5c22: $02
    ld [bc], a                                    ; $5c23: $02
    ld bc, $0280                                  ; $5c24: $01 $80 $02
    ld [bc], a                                    ; $5c27: $02
    adc c                                         ; $5c28: $89
    add b                                         ; $5c29: $80
    ld [bc], a                                    ; $5c2a: $02
    ld [bc], a                                    ; $5c2b: $02
    adc c                                         ; $5c2c: $89
    ld b, d                                       ; $5c2d: $42
    or a                                          ; $5c2e: $b7
    ld b, h                                       ; $5c2f: $44
    jr c, jr_088_5c7b                             ; $5c30: $38 $49

    ld c, d                                       ; $5c32: $4a
    ld c, e                                       ; $5c33: $4b
    ldh a, [$4c]                                  ; $5c34: $f0 $4c
    ld c, l                                       ; $5c36: $4d
    ld c, [hl]                                    ; $5c37: $4e
    dec bc                                        ; $5c38: $0b
    ld c, a                                       ; $5c39: $4f
    ld d, b                                       ; $5c3a: $50
    ld d, c                                       ; $5c3b: $51
    ld c, $02                                     ; $5c3c: $0e $02
    ld a, [bc]                                    ; $5c3e: $0a
    ld [bc], a                                    ; $5c3f: $02
    ld [bc], a                                    ; $5c40: $02
    adc c                                         ; $5c41: $89
    adc c                                         ; $5c42: $89
    adc c                                         ; $5c43: $89
    ld [bc], a                                    ; $5c44: $02
    adc c                                         ; $5c45: $89
    adc c                                         ; $5c46: $89
    adc c                                         ; $5c47: $89
    ld [bc], a                                    ; $5c48: $02
    adc c                                         ; $5c49: $89
    adc c                                         ; $5c4a: $89
    adc c                                         ; $5c4b: $89
    ld [bc], a                                    ; $5c4c: $02
    pop hl                                        ; $5c4d: $e1
    ld de, $5212                                  ; $5c4e: $11 $12 $52
    pop hl                                        ; $5c51: $e1
    inc de                                        ; $5c52: $13
    inc d                                         ; $5c53: $14
    ld d, e                                       ; $5c54: $53
    ld d, h                                       ; $5c55: $54
    ldh [$e0], a                                  ; $5c56: $e0 $e0
    ldh [$d1], a                                  ; $5c58: $e0 $d1
    pop de                                        ; $5c5a: $d1
    pop de                                        ; $5c5b: $d1
    pop de                                        ; $5c5c: $d1
    add b                                         ; $5c5d: $80
    ld [bc], a                                    ; $5c5e: $02
    ld [bc], a                                    ; $5c5f: $02
    adc c                                         ; $5c60: $89
    add b                                         ; $5c61: $80
    ld [bc], a                                    ; $5c62: $02
    ld [bc], a                                    ; $5c63: $02
    adc c                                         ; $5c64: $89
    adc b                                         ; $5c65: $88
    add b                                         ; $5c66: $80
    add b                                         ; $5c67: $80
    add b                                         ; $5c68: $80
    add c                                         ; $5c69: $81
    add c                                         ; $5c6a: $81
    add c                                         ; $5c6b: $81
    add c                                         ; $5c6c: $81
    ld d, l                                       ; $5c6d: $55
    ld d, [hl]                                    ; $5c6e: $56
    ld d, a                                       ; $5c6f: $57
    ld de, $5958                                  ; $5c70: $11 $58 $59
    ld e, d                                       ; $5c73: $5a
    inc de                                        ; $5c74: $13
    ldh [$e0], a                                  ; $5c75: $e0 $e0
    ldh [$e0], a                                  ; $5c77: $e0 $e0
    pop de                                        ; $5c79: $d1
    pop de                                        ; $5c7a: $d1

jr_088_5c7b:
    pop de                                        ; $5c7b: $d1
    pop de                                        ; $5c7c: $d1
    adc c                                         ; $5c7d: $89
    adc c                                         ; $5c7e: $89
    adc c                                         ; $5c7f: $89
    ld [bc], a                                    ; $5c80: $02
    adc c                                         ; $5c81: $89
    adc c                                         ; $5c82: $89
    adc c                                         ; $5c83: $89
    ld [bc], a                                    ; $5c84: $02
    add b                                         ; $5c85: $80
    add b                                         ; $5c86: $80
    add b                                         ; $5c87: $80
    add b                                         ; $5c88: $80
    add c                                         ; $5c89: $81
    add c                                         ; $5c8a: $81
    add c                                         ; $5c8b: $81
    add c                                         ; $5c8c: $81
    ld e, e                                       ; $5c8d: $5b
    db $db                                        ; $5c8e: $db
    ld b, h                                       ; $5c8f: $44
    ld b, e                                       ; $5c90: $43
    pop af                                        ; $5c91: $f1
    ld b, [hl]                                    ; $5c92: $46
    pop de                                        ; $5c93: $d1
    pop de                                        ; $5c94: $d1
    ld a, $e1                                     ; $5c95: $3e $e1
    pop de                                        ; $5c97: $d1
    pop de                                        ; $5c98: $d1
    ld b, c                                       ; $5c99: $41
    pop hl                                        ; $5c9a: $e1
    pop de                                        ; $5c9b: $d1
    pop de                                        ; $5c9c: $d1
    ld a, [bc]                                    ; $5c9d: $0a
    ld [bc], a                                    ; $5c9e: $02
    xor c                                         ; $5c9f: $a9
    xor c                                         ; $5ca0: $a9
    ld [bc], a                                    ; $5ca1: $02
    adc b                                         ; $5ca2: $88
    add c                                         ; $5ca3: $81
    add c                                         ; $5ca4: $81
    ld [bc], a                                    ; $5ca5: $02
    add b                                         ; $5ca6: $80
    add c                                         ; $5ca7: $81
    ld bc, $8002                                  ; $5ca8: $01 $02 $80
    add c                                         ; $5cab: $81
    ld bc, $4142                                  ; $5cac: $01 $42 $41
    pop de                                        ; $5caf: $d1
    pop de                                        ; $5cb0: $d1
    pop de                                        ; $5cb1: $d1
    pop de                                        ; $5cb2: $d1
    pop de                                        ; $5cb3: $d1
    pop de                                        ; $5cb4: $d1
    pop de                                        ; $5cb5: $d1
    pop de                                        ; $5cb6: $d1
    pop de                                        ; $5cb7: $d1
    pop de                                        ; $5cb8: $d1
    pop de                                        ; $5cb9: $d1
    pop de                                        ; $5cba: $d1
    pop de                                        ; $5cbb: $d1
    pop de                                        ; $5cbc: $d1
    xor c                                         ; $5cbd: $a9
    xor c                                         ; $5cbe: $a9
    add c                                         ; $5cbf: $81
    add c                                         ; $5cc0: $81
    add c                                         ; $5cc1: $81
    add c                                         ; $5cc2: $81
    add c                                         ; $5cc3: $81
    ld bc, $0101                                  ; $5cc4: $01 $01 $01
    ld bc, $0101                                  ; $5cc7: $01 $01 $01
    ld bc, $0101                                  ; $5cca: $01 $01 $01
    ld [de], a                                    ; $5ccd: $12
    pop hl                                        ; $5cce: $e1
    pop de                                        ; $5ccf: $d1
    pop de                                        ; $5cd0: $d1
    inc d                                         ; $5cd1: $14
    pop hl                                        ; $5cd2: $e1
    pop de                                        ; $5cd3: $d1
    pop de                                        ; $5cd4: $d1
    ldh [$3d], a                                  ; $5cd5: $e0 $3d
    pop de                                        ; $5cd7: $d1
    pop de                                        ; $5cd8: $d1
    pop de                                        ; $5cd9: $d1
    pop de                                        ; $5cda: $d1
    pop de                                        ; $5cdb: $d1
    pop de                                        ; $5cdc: $d1
    ld [bc], a                                    ; $5cdd: $02
    add b                                         ; $5cde: $80
    add c                                         ; $5cdf: $81
    ld bc, $8002                                  ; $5ce0: $01 $02 $80
    add c                                         ; $5ce3: $81
    ld bc, $8880                                  ; $5ce4: $01 $80 $88
    add c                                         ; $5ce7: $81
    ld bc, $8181                                  ; $5ce8: $01 $81 $81
    add c                                         ; $5ceb: $81
    ld bc, $0009                                  ; $5cec: $01 $09 $00
    dec bc                                        ; $5cef: $0b
    nop                                           ; $5cf0: $00
    ldh [rTAC], a                                 ; $5cf1: $e0 $07
    pop de                                        ; $5cf3: $d1
    pop de                                        ; $5cf4: $d1
    pop de                                        ; $5cf5: $d1
    pop de                                        ; $5cf6: $d1
    pop de                                        ; $5cf7: $d1
    pop de                                        ; $5cf8: $d1
    pop de                                        ; $5cf9: $d1
    pop de                                        ; $5cfa: $d1
    pop de                                        ; $5cfb: $d1
    pop de                                        ; $5cfc: $d1
    pop de                                        ; $5cfd: $d1
    jp nc, $d1d1                                  ; $5cfe: $d2 $d1 $d1

    pop de                                        ; $5d01: $d1
    db $d3                                        ; $5d02: $d3
    nop                                           ; $5d03: $00
    nop                                           ; $5d04: $00
    nop                                           ; $5d05: $00
    nop                                           ; $5d06: $00
    nop                                           ; $5d07: $00
    nop                                           ; $5d08: $00
    nop                                           ; $5d09: $00
    nop                                           ; $5d0a: $00
    nop                                           ; $5d0b: $00
    nop                                           ; $5d0c: $00
    nop                                           ; $5d0d: $00
    nop                                           ; $5d0e: $00
    nop                                           ; $5d0f: $00
    nop                                           ; $5d10: $00
    add b                                         ; $5d11: $80
    add b                                         ; $5d12: $80
    pop de                                        ; $5d13: $d1
    pop de                                        ; $5d14: $d1
    pop de                                        ; $5d15: $d1
    pop de                                        ; $5d16: $d1
    pop de                                        ; $5d17: $d1
    pop de                                        ; $5d18: $d1
    pop de                                        ; $5d19: $d1
    pop de                                        ; $5d1a: $d1
    call nc, $d4d4                                ; $5d1b: $d4 $d4 $d4
    call nc, $d6d5                                ; $5d1e: $d4 $d5 $d6
    rst $10                                       ; $5d21: $d7
    ret c                                         ; $5d22: $d8

    nop                                           ; $5d23: $00
    nop                                           ; $5d24: $00
    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    nop                                           ; $5d2b: $00
    nop                                           ; $5d2c: $00
    nop                                           ; $5d2d: $00
    nop                                           ; $5d2e: $00
    inc bc                                        ; $5d2f: $03
    inc bc                                        ; $5d30: $03
    inc bc                                        ; $5d31: $03
    inc bc                                        ; $5d32: $03
    pop de                                        ; $5d33: $d1
    pop de                                        ; $5d34: $d1
    pop de                                        ; $5d35: $d1
    pop de                                        ; $5d36: $d1
    pop de                                        ; $5d37: $d1
    pop de                                        ; $5d38: $d1
    pop de                                        ; $5d39: $d1
    pop de                                        ; $5d3a: $d1
    call nc, $d4d4                                ; $5d3b: $d4 $d4 $d4
    call nc, $dad9                                ; $5d3e: $d4 $d9 $da
    db $db                                        ; $5d41: $db
    call c, RST_00                                ; $5d42: $dc $00 $00
    nop                                           ; $5d45: $00
    nop                                           ; $5d46: $00
    nop                                           ; $5d47: $00
    nop                                           ; $5d48: $00
    nop                                           ; $5d49: $00
    nop                                           ; $5d4a: $00
    nop                                           ; $5d4b: $00
    nop                                           ; $5d4c: $00
    nop                                           ; $5d4d: $00
    nop                                           ; $5d4e: $00
    inc bc                                        ; $5d4f: $03
    inc bc                                        ; $5d50: $03
    inc bc                                        ; $5d51: $03
    inc bc                                        ; $5d52: $03
    pop de                                        ; $5d53: $d1
    pop de                                        ; $5d54: $d1
    pop de                                        ; $5d55: $d1
    pop de                                        ; $5d56: $d1
    pop de                                        ; $5d57: $d1
    pop de                                        ; $5d58: $d1
    pop de                                        ; $5d59: $d1
    pop de                                        ; $5d5a: $d1
    call nc, $d4d4                                ; $5d5b: $d4 $d4 $d4
    call nc, $dedd                                ; $5d5e: $d4 $dd $de
    rst $18                                       ; $5d61: $df
    sbc $00                                       ; $5d62: $de $00
    nop                                           ; $5d64: $00
    nop                                           ; $5d65: $00
    nop                                           ; $5d66: $00
    nop                                           ; $5d67: $00
    nop                                           ; $5d68: $00
    nop                                           ; $5d69: $00
    nop                                           ; $5d6a: $00
    nop                                           ; $5d6b: $00
    nop                                           ; $5d6c: $00
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    inc bc                                        ; $5d6f: $03
    inc bc                                        ; $5d70: $03
    inc bc                                        ; $5d71: $03
    inc bc                                        ; $5d72: $03
    pop de                                        ; $5d73: $d1
    pop de                                        ; $5d74: $d1
    pop de                                        ; $5d75: $d1
    db $d3                                        ; $5d76: $d3
    pop de                                        ; $5d77: $d1
    pop de                                        ; $5d78: $d1
    pop de                                        ; $5d79: $d1
    db $d3                                        ; $5d7a: $d3
    pop de                                        ; $5d7b: $d1
    pop de                                        ; $5d7c: $d1
    pop de                                        ; $5d7d: $d1
    db $d3                                        ; $5d7e: $d3
    pop de                                        ; $5d7f: $d1
    pop de                                        ; $5d80: $d1
    pop de                                        ; $5d81: $d1
    db $d3                                        ; $5d82: $d3
    nop                                           ; $5d83: $00
    nop                                           ; $5d84: $00
    add b                                         ; $5d85: $80
    add b                                         ; $5d86: $80
    nop                                           ; $5d87: $00
    nop                                           ; $5d88: $00
    add b                                         ; $5d89: $80
    add b                                         ; $5d8a: $80
    nop                                           ; $5d8b: $00
    nop                                           ; $5d8c: $00
    add b                                         ; $5d8d: $80
    add b                                         ; $5d8e: $80
    nop                                           ; $5d8f: $00
    nop                                           ; $5d90: $00
    add b                                         ; $5d91: $80
    add b                                         ; $5d92: $80
    ldh [$e1], a                                  ; $5d93: $e0 $e1
    ld [c], a                                     ; $5d95: $e2
    db $e3                                        ; $5d96: $e3
    db $e4                                        ; $5d97: $e4
    push hl                                       ; $5d98: $e5
    and $e6                                       ; $5d99: $e6 $e6
    rst $20                                       ; $5d9b: $e7
    add sp, -$17                                  ; $5d9c: $e8 $e9
    jp hl                                         ; $5d9e: $e9


    ld [$eceb], a                                 ; $5d9f: $ea $eb $ec
    db $ed                                        ; $5da2: $ed
    inc bc                                        ; $5da3: $03
    inc bc                                        ; $5da4: $03
    inc bc                                        ; $5da5: $03
    inc bc                                        ; $5da6: $03
    inc bc                                        ; $5da7: $03
    inc bc                                        ; $5da8: $03
    inc bc                                        ; $5da9: $03
    inc bc                                        ; $5daa: $03
    inc bc                                        ; $5dab: $03
    inc bc                                        ; $5dac: $03
    inc bc                                        ; $5dad: $03
    inc bc                                        ; $5dae: $03
    inc bc                                        ; $5daf: $03
    inc bc                                        ; $5db0: $03
    inc bc                                        ; $5db1: $03
    inc bc                                        ; $5db2: $03
    xor $ef                                       ; $5db3: $ee $ef
    ldh a, [$f1]                                  ; $5db5: $f0 $f1
    and $f2                                       ; $5db7: $e6 $f2
    di                                            ; $5db9: $f3
    db $f4                                        ; $5dba: $f4
    jp hl                                         ; $5dbb: $e9


    push af                                       ; $5dbc: $f5
    or $f7                                        ; $5dbd: $f6 $f7
    ld hl, sp-$07                                 ; $5dbf: $f8 $f9
    db $ec                                        ; $5dc1: $ec
    ld a, [$0303]                                 ; $5dc2: $fa $03 $03
    inc bc                                        ; $5dc5: $03
    inc bc                                        ; $5dc6: $03
    inc bc                                        ; $5dc7: $03
    inc bc                                        ; $5dc8: $03
    inc bc                                        ; $5dc9: $03
    inc bc                                        ; $5dca: $03
    inc bc                                        ; $5dcb: $03
    inc bc                                        ; $5dcc: $03
    inc bc                                        ; $5dcd: $03
    ld [bc], a                                    ; $5dce: $02
    inc bc                                        ; $5dcf: $03
    inc bc                                        ; $5dd0: $03
    inc bc                                        ; $5dd1: $03
    ld [bc], a                                    ; $5dd2: $02
    ei                                            ; $5dd3: $fb
    db $fc                                        ; $5dd4: $fc
    db $fc                                        ; $5dd5: $fc
    db $fc                                        ; $5dd6: $fc
    db $fd                                        ; $5dd7: $fd
    cp $ff                                        ; $5dd8: $fe $ff
    nop                                           ; $5dda: $00
    ld bc, $0302                                  ; $5ddb: $01 $02 $03
    inc b                                         ; $5dde: $04
    dec b                                         ; $5ddf: $05
    ld b, $07                                     ; $5de0: $06 $07
    ld [$0303], sp                                ; $5de2: $08 $03 $03
    inc bc                                        ; $5de5: $03
    inc bc                                        ; $5de6: $03
    inc bc                                        ; $5de7: $03
    inc bc                                        ; $5de8: $03
    inc bc                                        ; $5de9: $03
    inc bc                                        ; $5dea: $03
    ld [bc], a                                    ; $5deb: $02
    ld [bc], a                                    ; $5dec: $02
    ld [bc], a                                    ; $5ded: $02
    ld [bc], a                                    ; $5dee: $02
    ld [bc], a                                    ; $5def: $02
    ld [bc], a                                    ; $5df0: $02
    ld [bc], a                                    ; $5df1: $02
    ld [bc], a                                    ; $5df2: $02
    add hl, bc                                    ; $5df3: $09
    ld a, [bc]                                    ; $5df4: $0a
    dec bc                                        ; $5df5: $0b
    inc c                                         ; $5df6: $0c
    dec c                                         ; $5df7: $0d
    ld c, $0f                                     ; $5df8: $0e $0f
    db $10                                        ; $5dfa: $10
    ld de, $1312                                  ; $5dfb: $11 $12 $13
    inc d                                         ; $5dfe: $14
    dec d                                         ; $5dff: $15
    ld d, $17                                     ; $5e00: $16 $17
    jr @+$08                                      ; $5e02: $18 $06

    ld b, $06                                     ; $5e04: $06 $06
    ld b, $06                                     ; $5e06: $06 $06
    ld bc, $0107                                  ; $5e08: $01 $07 $01
    ld b, $03                                     ; $5e0b: $06 $03
    ld bc, $0601                                  ; $5e0d: $01 $01 $06
    ld bc, $0107                                  ; $5e10: $01 $07 $01
    add hl, de                                    ; $5e13: $19
    add hl, bc                                    ; $5e14: $09
    ld a, [bc]                                    ; $5e15: $0a
    ld a, [de]                                    ; $5e16: $1a
    dec de                                        ; $5e17: $1b
    dec c                                         ; $5e18: $0d
    ld c, $1c                                     ; $5e19: $0e $1c
    dec e                                         ; $5e1b: $1d
    ld de, $1312                                  ; $5e1c: $11 $12 $13
    ld e, $15                                     ; $5e1f: $1e $15
    ld d, $17                                     ; $5e21: $16 $17
    ld b, $06                                     ; $5e23: $06 $06
    ld b, $02                                     ; $5e25: $06 $02
    ld bc, $0103                                  ; $5e27: $01 $03 $01
    ld [bc], a                                    ; $5e2a: $02
    rlca                                          ; $5e2b: $07
    ld bc, $0601                                  ; $5e2c: $01 $01 $06
    ld bc, $0701                                  ; $5e2f: $01 $01 $07
    ld bc, $201f                                  ; $5e32: $01 $1f $20
    ld hl, $221a                                  ; $5e35: $21 $1a $22
    inc hl                                        ; $5e38: $23
    inc h                                         ; $5e39: $24
    inc e                                         ; $5e3a: $1c
    inc d                                         ; $5e3b: $14
    dec e                                         ; $5e3c: $1d
    ld de, $1812                                  ; $5e3d: $11 $12 $18
    ld e, $15                                     ; $5e40: $1e $15
    ld d, $02                                     ; $5e42: $16 $02
    ld [bc], a                                    ; $5e44: $02
    ld [bc], a                                    ; $5e45: $02
    ld [bc], a                                    ; $5e46: $02
    ld [bc], a                                    ; $5e47: $02
    ld [bc], a                                    ; $5e48: $02
    ld [bc], a                                    ; $5e49: $02
    ld [bc], a                                    ; $5e4a: $02
    ld b, $06                                     ; $5e4b: $06 $06
    ld b, $06                                     ; $5e4d: $06 $06
    ld bc, $0707                                  ; $5e4f: $01 $07 $07
    ld bc, $2625                                  ; $5e52: $01 $25 $26
    daa                                           ; $5e55: $27
    jr z, jr_088_5e81                             ; $5e56: $28 $29

    ld a, [hl+]                                   ; $5e58: $2a
    dec hl                                        ; $5e59: $2b
    inc l                                         ; $5e5a: $2c
    dec l                                         ; $5e5b: $2d
    ld l, $2f                                     ; $5e5c: $2e $2f
    jr nc, @+$33                                  ; $5e5e: $30 $31

    ld [hl-], a                                   ; $5e60: $32
    inc sp                                        ; $5e61: $33
    inc [hl]                                      ; $5e62: $34
    ld b, $01                                     ; $5e63: $06 $01
    ld bc, $8403                                  ; $5e65: $01 $03 $84
    add h                                         ; $5e68: $84
    add h                                         ; $5e69: $84
    ld bc, $8406                                  ; $5e6a: $01 $06 $84
    add h                                         ; $5e6d: $84
    add h                                         ; $5e6e: $84
    ld b, $84                                     ; $5e6f: $06 $84
    add h                                         ; $5e71: $84
    add h                                         ; $5e72: $84
    dec [hl]                                      ; $5e73: $35
    dec h                                         ; $5e74: $25
    ld h, $27                                     ; $5e75: $26 $27
    ld [hl], $37                                  ; $5e77: $36 $37
    jr c, @+$3b                                   ; $5e79: $38 $39

    ld a, [hl-]                                   ; $5e7b: $3a
    add hl, bc                                    ; $5e7c: $09
    ld a, [bc]                                    ; $5e7d: $0a
    dec bc                                        ; $5e7e: $0b
    dec sp                                        ; $5e7f: $3b
    dec c                                         ; $5e80: $0d

jr_088_5e81:
    ld c, $0f                                     ; $5e81: $0e $0f
    ld bc, $0107                                  ; $5e83: $01 $07 $01
    ld bc, $0103                                  ; $5e86: $01 $03 $01
    ld bc, $0107                                  ; $5e89: $01 $07 $01
    rlca                                          ; $5e8c: $07
    ld bc, $0101                                  ; $5e8d: $01 $01 $01
    ld bc, $0701                                  ; $5e90: $01 $01 $07
    jr z, jr_088_5eca                             ; $5e93: $28 $35

    dec h                                         ; $5e95: $25
    ld h, $3c                                     ; $5e96: $26 $3c
    dec a                                         ; $5e98: $3d
    scf                                           ; $5e99: $37
    jr c, jr_088_5ea8                             ; $5e9a: $38 $0c

    add hl, de                                    ; $5e9c: $19
    add hl, bc                                    ; $5e9d: $09
    ld a, [bc]                                    ; $5e9e: $0a
    db $10                                        ; $5e9f: $10
    dec de                                        ; $5ea0: $1b
    dec c                                         ; $5ea1: $0d
    ld c, $07                                     ; $5ea2: $0e $07
    ld bc, $0101                                  ; $5ea4: $01 $01 $01
    rlca                                          ; $5ea7: $07

jr_088_5ea8:
    rlca                                          ; $5ea8: $07
    ld bc, $0701                                  ; $5ea9: $01 $01 $07
    ld bc, $0107                                  ; $5eac: $01 $07 $01
    ld bc, $0103                                  ; $5eaf: $01 $03 $01
    ld bc, $d1d1                                  ; $5eb2: $01 $d1 $d1
    pop de                                        ; $5eb5: $d1
    pop de                                        ; $5eb6: $d1
    pop de                                        ; $5eb7: $d1
    pop de                                        ; $5eb8: $d1
    pop de                                        ; $5eb9: $d1
    pop de                                        ; $5eba: $d1
    call nc, $d4d4                                ; $5ebb: $d4 $d4 $d4
    call nc, $de3e                                ; $5ebe: $d4 $3e $de
    rst $18                                       ; $5ec1: $df
    sbc $00                                       ; $5ec2: $de $00
    nop                                           ; $5ec4: $00
    nop                                           ; $5ec5: $00
    nop                                           ; $5ec6: $00
    nop                                           ; $5ec7: $00
    nop                                           ; $5ec8: $00
    nop                                           ; $5ec9: $00

jr_088_5eca:
    nop                                           ; $5eca: $00
    nop                                           ; $5ecb: $00
    nop                                           ; $5ecc: $00
    nop                                           ; $5ecd: $00
    nop                                           ; $5ece: $00
    inc bc                                        ; $5ecf: $03
    inc bc                                        ; $5ed0: $03
    inc bc                                        ; $5ed1: $03
    inc bc                                        ; $5ed2: $03
    pop de                                        ; $5ed3: $d1
    pop de                                        ; $5ed4: $d1
    pop de                                        ; $5ed5: $d1
    pop de                                        ; $5ed6: $d1
    pop de                                        ; $5ed7: $d1
    pop de                                        ; $5ed8: $d1
    pop de                                        ; $5ed9: $d1
    pop de                                        ; $5eda: $d1
    call nc, $d13f                                ; $5edb: $d4 $3f $d1
    pop de                                        ; $5ede: $d1
    ld a, $d3                                     ; $5edf: $3e $d3
    pop de                                        ; $5ee1: $d1
    pop de                                        ; $5ee2: $d1
    nop                                           ; $5ee3: $00
    nop                                           ; $5ee4: $00
    nop                                           ; $5ee5: $00
    nop                                           ; $5ee6: $00
    nop                                           ; $5ee7: $00
    nop                                           ; $5ee8: $00
    nop                                           ; $5ee9: $00
    nop                                           ; $5eea: $00
    nop                                           ; $5eeb: $00
    nop                                           ; $5eec: $00
    nop                                           ; $5eed: $00
    nop                                           ; $5eee: $00
    inc bc                                        ; $5eef: $03
    add b                                         ; $5ef0: $80
    add b                                         ; $5ef1: $80
    nop                                           ; $5ef2: $00
    pop de                                        ; $5ef3: $d1
    pop de                                        ; $5ef4: $d1
    pop de                                        ; $5ef5: $d1
    pop de                                        ; $5ef6: $d1
    pop de                                        ; $5ef7: $d1
    pop de                                        ; $5ef8: $d1
    pop de                                        ; $5ef9: $d1
    pop de                                        ; $5efa: $d1
    pop de                                        ; $5efb: $d1
    pop de                                        ; $5efc: $d1
    pop de                                        ; $5efd: $d1
    pop de                                        ; $5efe: $d1
    pop de                                        ; $5eff: $d1
    pop de                                        ; $5f00: $d1
    pop de                                        ; $5f01: $d1
    pop de                                        ; $5f02: $d1
    add b                                         ; $5f03: $80
    add b                                         ; $5f04: $80
    add b                                         ; $5f05: $80
    add b                                         ; $5f06: $80
    nop                                           ; $5f07: $00
    nop                                           ; $5f08: $00
    nop                                           ; $5f09: $00
    nop                                           ; $5f0a: $00
    nop                                           ; $5f0b: $00
    nop                                           ; $5f0c: $00
    nop                                           ; $5f0d: $00
    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00
    nop                                           ; $5f10: $00
    nop                                           ; $5f11: $00
    nop                                           ; $5f12: $00
    ld b, b                                       ; $5f13: $40
    ld b, c                                       ; $5f14: $41
    ld b, d                                       ; $5f15: $42
    db $fc                                        ; $5f16: $fc
    ld b, e                                       ; $5f17: $43
    ld b, h                                       ; $5f18: $44
    ld b, l                                       ; $5f19: $45
    ld b, [hl]                                    ; $5f1a: $46
    ld b, a                                       ; $5f1b: $47
    ld c, b                                       ; $5f1c: $48
    ld c, c                                       ; $5f1d: $49
    ld c, d                                       ; $5f1e: $4a
    ld c, e                                       ; $5f1f: $4b
    ld c, h                                       ; $5f20: $4c
    ld c, l                                       ; $5f21: $4d
    ld c, [hl]                                    ; $5f22: $4e
    inc bc                                        ; $5f23: $03
    inc bc                                        ; $5f24: $03
    inc bc                                        ; $5f25: $03
    inc bc                                        ; $5f26: $03
    inc bc                                        ; $5f27: $03
    inc bc                                        ; $5f28: $03
    inc bc                                        ; $5f29: $03
    inc bc                                        ; $5f2a: $03
    ld [bc], a                                    ; $5f2b: $02
    ld [bc], a                                    ; $5f2c: $02
    ld [bc], a                                    ; $5f2d: $02
    ld [bc], a                                    ; $5f2e: $02
    ld [bc], a                                    ; $5f2f: $02
    ld [bc], a                                    ; $5f30: $02
    ld [bc], a                                    ; $5f31: $02
    ld [bc], a                                    ; $5f32: $02
    db $fc                                        ; $5f33: $fc
    db $d3                                        ; $5f34: $d3
    pop de                                        ; $5f35: $d1
    pop de                                        ; $5f36: $d1
    ld c, a                                       ; $5f37: $4f
    db $d3                                        ; $5f38: $d3
    pop de                                        ; $5f39: $d1
    pop de                                        ; $5f3a: $d1
    ld d, b                                       ; $5f3b: $50
    db $d3                                        ; $5f3c: $d3
    pop de                                        ; $5f3d: $d1
    pop de                                        ; $5f3e: $d1
    ld d, c                                       ; $5f3f: $51
    db $d3                                        ; $5f40: $d3
    pop de                                        ; $5f41: $d1
    pop de                                        ; $5f42: $d1
    inc bc                                        ; $5f43: $03
    add b                                         ; $5f44: $80
    add b                                         ; $5f45: $80
    nop                                           ; $5f46: $00
    inc bc                                        ; $5f47: $03
    add b                                         ; $5f48: $80
    add b                                         ; $5f49: $80
    nop                                           ; $5f4a: $00
    ld [bc], a                                    ; $5f4b: $02
    add b                                         ; $5f4c: $80
    add b                                         ; $5f4d: $80
    nop                                           ; $5f4e: $00
    ld [bc], a                                    ; $5f4f: $02
    add b                                         ; $5f50: $80
    add b                                         ; $5f51: $80
    nop                                           ; $5f52: $00
    rra                                           ; $5f53: $1f
    ld a, [de]                                    ; $5f54: $1a
    rra                                           ; $5f55: $1f
    ld a, [de]                                    ; $5f56: $1a
    ld [hl+], a                                   ; $5f57: $22
    inc e                                         ; $5f58: $1c
    ld [hl+], a                                   ; $5f59: $22
    inc e                                         ; $5f5a: $1c
    inc de                                        ; $5f5b: $13
    inc d                                         ; $5f5c: $14
    dec e                                         ; $5f5d: $1d
    ld de, $1817                                  ; $5f5e: $11 $17 $18
    ld e, $15                                     ; $5f61: $1e $15
    ld [bc], a                                    ; $5f63: $02
    ld [bc], a                                    ; $5f64: $02
    ld [bc], a                                    ; $5f65: $02
    ld [bc], a                                    ; $5f66: $02
    ld [bc], a                                    ; $5f67: $02
    ld [bc], a                                    ; $5f68: $02
    ld [bc], a                                    ; $5f69: $02
    ld [bc], a                                    ; $5f6a: $02
    ld b, $06                                     ; $5f6b: $06 $06
    ld b, $06                                     ; $5f6d: $06 $06
    ld bc, $0701                                  ; $5f6f: $01 $01 $07
    ld bc, $d31f                                  ; $5f72: $01 $1f $d3
    pop de                                        ; $5f75: $d1
    pop de                                        ; $5f76: $d1
    ld [hl+], a                                   ; $5f77: $22
    db $d3                                        ; $5f78: $d3
    pop de                                        ; $5f79: $d1
    pop de                                        ; $5f7a: $d1
    ld [de], a                                    ; $5f7b: $12
    ld d, d                                       ; $5f7c: $52
    call nc, Call_000_16d4                        ; $5f7d: $d4 $d4 $16
    ld d, e                                       ; $5f80: $53
    ld d, h                                       ; $5f81: $54
    ld d, l                                       ; $5f82: $55
    ld [bc], a                                    ; $5f83: $02
    add b                                         ; $5f84: $80
    add b                                         ; $5f85: $80
    nop                                           ; $5f86: $00
    ld [bc], a                                    ; $5f87: $02
    add b                                         ; $5f88: $80
    add b                                         ; $5f89: $80
    nop                                           ; $5f8a: $00
    ld b, $80                                     ; $5f8b: $06 $80
    add b                                         ; $5f8d: $80
    nop                                           ; $5f8e: $00
    ld b, $00                                     ; $5f8f: $06 $00
    inc bc                                        ; $5f91: $03
    inc bc                                        ; $5f92: $03
    pop de                                        ; $5f93: $d1
    pop de                                        ; $5f94: $d1
    pop de                                        ; $5f95: $d1
    pop de                                        ; $5f96: $d1
    pop de                                        ; $5f97: $d1
    pop de                                        ; $5f98: $d1
    pop de                                        ; $5f99: $d1
    pop de                                        ; $5f9a: $d1
    call nc, $d4d4                                ; $5f9b: $d4 $d4 $d4
    call nc, $db56                                ; $5f9e: $d4 $56 $db
    ld d, a                                       ; $5fa1: $57
    ld e, b                                       ; $5fa2: $58
    nop                                           ; $5fa3: $00
    nop                                           ; $5fa4: $00
    nop                                           ; $5fa5: $00
    nop                                           ; $5fa6: $00
    nop                                           ; $5fa7: $00
    nop                                           ; $5fa8: $00
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    nop                                           ; $5fab: $00
    nop                                           ; $5fac: $00
    nop                                           ; $5fad: $00
    nop                                           ; $5fae: $00
    inc bc                                        ; $5faf: $03
    inc bc                                        ; $5fb0: $03
    inc bc                                        ; $5fb1: $03
    inc bc                                        ; $5fb2: $03
    pop de                                        ; $5fb3: $d1
    pop de                                        ; $5fb4: $d1
    pop de                                        ; $5fb5: $d1
    pop de                                        ; $5fb6: $d1
    pop de                                        ; $5fb7: $d1
    pop de                                        ; $5fb8: $d1
    pop de                                        ; $5fb9: $d1
    pop de                                        ; $5fba: $d1
    call nc, $d4d4                                ; $5fbb: $d4 $d4 $d4
    call nc, $dddc                                ; $5fbe: $d4 $dc $dd
    sbc $df                                       ; $5fc1: $de $df
    nop                                           ; $5fc3: $00
    nop                                           ; $5fc4: $00
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    nop                                           ; $5fcc: $00
    nop                                           ; $5fcd: $00
    nop                                           ; $5fce: $00
    inc bc                                        ; $5fcf: $03
    inc bc                                        ; $5fd0: $03
    inc bc                                        ; $5fd1: $03
    inc bc                                        ; $5fd2: $03
    daa                                           ; $5fd3: $27
    jr z, jr_088_600b                             ; $5fd4: $28 $35

    dec h                                         ; $5fd6: $25
    add hl, sp                                    ; $5fd7: $39
    inc a                                         ; $5fd8: $3c
    dec a                                         ; $5fd9: $3d
    scf                                           ; $5fda: $37
    dec bc                                        ; $5fdb: $0b
    inc c                                         ; $5fdc: $0c
    add hl, de                                    ; $5fdd: $19
    add hl, bc                                    ; $5fde: $09
    rrca                                          ; $5fdf: $0f
    db $10                                        ; $5fe0: $10
    dec de                                        ; $5fe1: $1b
    dec c                                         ; $5fe2: $0d
    inc bc                                        ; $5fe3: $03
    ld bc, $0301                                  ; $5fe4: $01 $01 $03
    rlca                                          ; $5fe7: $07
    rlca                                          ; $5fe8: $07
    ld bc, $0101                                  ; $5fe9: $01 $01 $01
    inc bc                                        ; $5fec: $03
    ld bc, $0107                                  ; $5fed: $01 $07 $01
    ld bc, $0107                                  ; $5ff0: $01 $07 $01
    ld h, $53                                     ; $5ff3: $26 $53
    ld e, c                                       ; $5ff5: $59
    ld e, d                                       ; $5ff6: $5a
    jr c, jr_088_604c                             ; $5ff7: $38 $53

    ld e, c                                       ; $5ff9: $59
    ld e, e                                       ; $5ffa: $5b
    ld a, [bc]                                    ; $5ffb: $0a
    ld e, h                                       ; $5ffc: $5c
    ld e, l                                       ; $5ffd: $5d
    ld e, [hl]                                    ; $5ffe: $5e
    ld c, $5f                                     ; $5fff: $0e $5f
    db $ed                                        ; $6001: $ed
    ld h, b                                       ; $6002: $60
    ld b, $00                                     ; $6003: $06 $00
    inc bc                                        ; $6005: $03
    inc bc                                        ; $6006: $03
    ld b, $00                                     ; $6007: $06 $00
    inc bc                                        ; $6009: $03
    inc bc                                        ; $600a: $03

jr_088_600b:
    ld b, $00                                     ; $600b: $06 $00
    inc bc                                        ; $600d: $03
    inc bc                                        ; $600e: $03
    ld b, $00                                     ; $600f: $06 $00
    inc bc                                        ; $6011: $03
    inc bc                                        ; $6012: $03
    ld h, c                                       ; $6013: $61
    ld h, d                                       ; $6014: $62
    ld h, e                                       ; $6015: $63
    ld h, h                                       ; $6016: $64
    ld h, l                                       ; $6017: $65
    ld h, d                                       ; $6018: $62
    ld h, [hl]                                    ; $6019: $66
    ld h, a                                       ; $601a: $67
    ld l, b                                       ; $601b: $68
    or $69                                        ; $601c: $f6 $69
    ld l, d                                       ; $601e: $6a
    ld l, e                                       ; $601f: $6b
    db $ec                                        ; $6020: $ec
    db $ed                                        ; $6021: $ed
    ld hl, sp+$03                                 ; $6022: $f8 $03
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
    ei                                            ; $6034: $fb
    db $fc                                        ; $6035: $fc
    db $fc                                        ; $6036: $fc
    ld l, h                                       ; $6037: $6c
    ld h, d                                       ; $6038: $62
    ld h, d                                       ; $6039: $62
    ld h, d                                       ; $603a: $62
    ld l, l                                       ; $603b: $6d
    or $69                                        ; $603c: $f6 $69
    ld l, [hl]                                    ; $603e: $6e
    ld sp, hl                                     ; $603f: $f9
    db $ec                                        ; $6040: $ec
    db $ed                                        ; $6041: $ed
    ld hl, sp+$03                                 ; $6042: $f8 $03
    inc bc                                        ; $6044: $03
    inc bc                                        ; $6045: $03
    inc bc                                        ; $6046: $03
    inc bc                                        ; $6047: $03
    inc bc                                        ; $6048: $03
    inc bc                                        ; $6049: $03
    inc bc                                        ; $604a: $03
    inc bc                                        ; $604b: $03

jr_088_604c:
    inc bc                                        ; $604c: $03
    inc bc                                        ; $604d: $03
    inc bc                                        ; $604e: $03
    inc bc                                        ; $604f: $03
    inc bc                                        ; $6050: $03
    inc bc                                        ; $6051: $03
    inc bc                                        ; $6052: $03
    pop de                                        ; $6053: $d1
    pop de                                        ; $6054: $d1
    pop de                                        ; $6055: $d1
    pop de                                        ; $6056: $d1
    pop de                                        ; $6057: $d1
    pop de                                        ; $6058: $d1
    pop de                                        ; $6059: $d1
    pop de                                        ; $605a: $d1
    ccf                                           ; $605b: $3f
    pop de                                        ; $605c: $d1
    pop de                                        ; $605d: $d1
    pop de                                        ; $605e: $d1
    db $d3                                        ; $605f: $d3
    pop de                                        ; $6060: $d1
    pop de                                        ; $6061: $d1
    pop de                                        ; $6062: $d1
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    nop                                           ; $606a: $00
    nop                                           ; $606b: $00
    nop                                           ; $606c: $00
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    add b                                         ; $606f: $80
    add b                                         ; $6070: $80
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    ld l, a                                       ; $6073: $6f
    pop de                                        ; $6074: $d1
    pop de                                        ; $6075: $d1
    pop de                                        ; $6076: $d1
    ld l, a                                       ; $6077: $6f
    pop de                                        ; $6078: $d1
    pop de                                        ; $6079: $d1
    pop de                                        ; $607a: $d1
    ld l, a                                       ; $607b: $6f
    pop de                                        ; $607c: $d1
    pop de                                        ; $607d: $d1
    pop de                                        ; $607e: $d1
    ld l, a                                       ; $607f: $6f
    pop de                                        ; $6080: $d1
    pop de                                        ; $6081: $d1
    pop de                                        ; $6082: $d1
    add b                                         ; $6083: $80
    add b                                         ; $6084: $80
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    add b                                         ; $6087: $80
    add b                                         ; $6088: $80
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    add b                                         ; $608b: $80
    add b                                         ; $608c: $80
    nop                                           ; $608d: $00
    nop                                           ; $608e: $00
    add b                                         ; $608f: $80
    add b                                         ; $6090: $80
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    ld de, $7170                                  ; $6093: $11 $70 $71
    ld [hl], d                                    ; $6096: $72
    dec d                                         ; $6097: $15
    ld [hl], e                                    ; $6098: $73
    ld [hl], h                                    ; $6099: $74
    ld [hl], l                                    ; $609a: $75
    dec h                                         ; $609b: $25
    halt                                          ; $609c: $76
    ld [hl], a                                    ; $609d: $77
    ld a, b                                       ; $609e: $78
    scf                                           ; $609f: $37
    ld a, c                                       ; $60a0: $79
    ld a, d                                       ; $60a1: $7a
    ld a, e                                       ; $60a2: $7b
    ld b, $04                                     ; $60a3: $06 $04
    inc b                                         ; $60a5: $04
    inc b                                         ; $60a6: $04
    ld b, $04                                     ; $60a7: $06 $04
    inc b                                         ; $60a9: $04
    inc b                                         ; $60aa: $04
    ld b, $04                                     ; $60ab: $06 $04
    inc b                                         ; $60ad: $04
    ld bc, $0406                                  ; $60ae: $01 $06 $04
    inc b                                         ; $60b1: $04
    inc b                                         ; $60b2: $04
    ld a, h                                       ; $60b3: $7c
    ld de, $1312                                  ; $60b4: $11 $12 $13
    ld a, l                                       ; $60b7: $7d
    dec d                                         ; $60b8: $15
    ld d, $17                                     ; $60b9: $16 $17
    ld a, [hl]                                    ; $60bb: $7e
    dec h                                         ; $60bc: $25
    ld h, $27                                     ; $60bd: $26 $27
    ld a, a                                       ; $60bf: $7f
    scf                                           ; $60c0: $37
    jr c, @+$3b                                   ; $60c1: $38 $39

    ld bc, $0301                                  ; $60c3: $01 $01 $03
    inc bc                                        ; $60c6: $03
    ld bc, $0107                                  ; $60c7: $01 $07 $01
    inc bc                                        ; $60ca: $03
    ld bc, $0707                                  ; $60cb: $01 $07 $07
    ld bc, $0101                                  ; $60ce: $01 $01 $01
    rlca                                          ; $60d1: $07
    rlca                                          ; $60d2: $07
    inc d                                         ; $60d3: $14
    dec e                                         ; $60d4: $1d
    ld de, $1812                                  ; $60d5: $11 $12 $18
    ld e, $15                                     ; $60d8: $1e $15
    ld d, $28                                     ; $60da: $16 $28
    dec [hl]                                      ; $60dc: $35
    dec h                                         ; $60dd: $25
    ld h, $3c                                     ; $60de: $26 $3c
    dec a                                         ; $60e0: $3d
    scf                                           ; $60e1: $37
    jr c, @+$03                                   ; $60e2: $38 $01

    ld bc, $0701                                  ; $60e4: $01 $01 $07
    ld bc, $0701                                  ; $60e7: $01 $01 $07
    rlca                                          ; $60ea: $07
    ld bc, $0107                                  ; $60eb: $01 $07 $01
    inc bc                                        ; $60ee: $03
    ld bc, $0101                                  ; $60ef: $01 $01 $01
    ld bc, $8009                                  ; $60f2: $01 $09 $80
    add c                                         ; $60f5: $81
    add d                                         ; $60f6: $82
    add e                                         ; $60f7: $83
    add h                                         ; $60f8: $84
    add l                                         ; $60f9: $85
    add [hl]                                      ; $60fa: $86
    ld de, $1312                                  ; $60fb: $11 $12 $13
    inc d                                         ; $60fe: $14
    dec d                                         ; $60ff: $15
    ld d, $17                                     ; $6100: $16 $17
    jr jr_088_610a                                ; $6102: $18 $06

    inc c                                         ; $6104: $0c
    inc c                                         ; $6105: $0c
    inc c                                         ; $6106: $0c
    ld c, $09                                     ; $6107: $0e $09
    add hl, bc                                    ; $6109: $09

jr_088_610a:
    rrca                                          ; $610a: $0f
    ld b, $07                                     ; $610b: $06 $07
    ld bc, $0601                                  ; $610d: $01 $01 $06
    ld bc, $0701                                  ; $6110: $01 $01 $07
    add a                                         ; $6113: $87
    add hl, bc                                    ; $6114: $09
    ld a, [bc]                                    ; $6115: $0a
    dec bc                                        ; $6116: $0b
    dec de                                        ; $6117: $1b
    dec c                                         ; $6118: $0d
    ld c, $0f                                     ; $6119: $0e $0f
    adc b                                         ; $611b: $88
    adc c                                         ; $611c: $89
    adc d                                         ; $611d: $8a
    inc de                                        ; $611e: $13
    adc e                                         ; $611f: $8b
    adc h                                         ; $6120: $8c
    adc l                                         ; $6121: $8d
    rla                                           ; $6122: $17
    add hl, bc                                    ; $6123: $09
    inc bc                                        ; $6124: $03
    ld bc, $0101                                  ; $6125: $01 $01 $01
    ld bc, $0107                                  ; $6128: $01 $07 $01
    adc d                                         ; $612b: $8a
    adc d                                         ; $612c: $8a
    adc d                                         ; $612d: $8a
    rlca                                          ; $612e: $07
    adc d                                         ; $612f: $8a
    adc d                                         ; $6130: $8a
    adc d                                         ; $6131: $8a
    ld bc, $190c                                  ; $6132: $01 $0c $19
    add hl, bc                                    ; $6135: $09
    ld a, [bc]                                    ; $6136: $0a
    db $10                                        ; $6137: $10
    dec de                                        ; $6138: $1b
    dec c                                         ; $6139: $0d
    ld c, $14                                     ; $613a: $0e $14
    dec e                                         ; $613c: $1d
    ld de, $1812                                  ; $613d: $11 $12 $18
    ld e, $15                                     ; $6140: $1e $15
    ld d, $07                                     ; $6142: $16 $07
    ld bc, $0103                                  ; $6144: $01 $03 $01
    ld bc, $0107                                  ; $6147: $01 $07 $01
    ld bc, $0301                                  ; $614a: $01 $01 $03
    ld bc, $0301                                  ; $614d: $01 $01 $03
    ld bc, $0101                                  ; $6150: $01 $01 $01
    dec h                                         ; $6153: $25
    ld h, $27                                     ; $6154: $26 $27
    jr z, @+$39                                   ; $6156: $28 $37

    jr c, @+$3b                                   ; $6158: $38 $39

    inc a                                         ; $615a: $3c
    add hl, bc                                    ; $615b: $09
    ld a, [bc]                                    ; $615c: $0a
    dec bc                                        ; $615d: $0b
    inc c                                         ; $615e: $0c
    dec c                                         ; $615f: $0d
    ld c, $0f                                     ; $6160: $0e $0f
    db $10                                        ; $6162: $10
    ld b, $01                                     ; $6163: $06 $01
    rlca                                          ; $6165: $07
    ld bc, $0106                                  ; $6166: $01 $06 $01
    rlca                                          ; $6169: $07
    ld bc, $0706                                  ; $616a: $01 $06 $07
    ld bc, $0603                                  ; $616d: $01 $03 $06
    ld bc, $0107                                  ; $6170: $01 $07 $01
    adc [hl]                                      ; $6173: $8e
    adc a                                         ; $6174: $8f
    sub b                                         ; $6175: $90
    daa                                           ; $6176: $27
    sub c                                         ; $6177: $91
    sub d                                         ; $6178: $92
    sub e                                         ; $6179: $93
    add hl, sp                                    ; $617a: $39
    sub h                                         ; $617b: $94
    sub l                                         ; $617c: $95
    sub [hl]                                      ; $617d: $96
    dec bc                                        ; $617e: $0b
    sub a                                         ; $617f: $97
    sub a                                         ; $6180: $97
    sbc b                                         ; $6181: $98
    rrca                                          ; $6182: $0f
    ld a, [bc]                                    ; $6183: $0a
    ld a, [bc]                                    ; $6184: $0a
    ld a, [bc]                                    ; $6185: $0a
    ld b, $0a                                     ; $6186: $06 $0a
    ld a, [bc]                                    ; $6188: $0a
    ld a, [bc]                                    ; $6189: $0a
    ld b, $0a                                     ; $618a: $06 $0a
    ld a, [bc]                                    ; $618c: $0a
    ld a, [bc]                                    ; $618d: $0a
    ld b, $0a                                     ; $618e: $06 $0a
    ld a, [bc]                                    ; $6190: $0a
    ld a, [bc]                                    ; $6191: $0a
    ld b, $28                                     ; $6192: $06 $28
    dec [hl]                                      ; $6194: $35
    dec h                                         ; $6195: $25
    ld h, $3c                                     ; $6196: $26 $3c
    dec a                                         ; $6198: $3d
    scf                                           ; $6199: $37
    jr c, @+$0e                                   ; $619a: $38 $0c

    add hl, de                                    ; $619c: $19
    add hl, bc                                    ; $619d: $09
    ld a, [bc]                                    ; $619e: $0a
    db $10                                        ; $619f: $10
    dec de                                        ; $61a0: $1b
    dec c                                         ; $61a1: $0d
    ld c, $01                                     ; $61a2: $0e $01
    ld bc, $0107                                  ; $61a4: $01 $07 $01
    ld bc, $0107                                  ; $61a7: $01 $07 $01
    inc bc                                        ; $61aa: $03
    ld bc, $0701                                  ; $61ab: $01 $01 $07
    rlca                                          ; $61ae: $07
    rlca                                          ; $61af: $07
    ld bc, $0101                                  ; $61b0: $01 $01 $01
    ld de, $1312                                  ; $61b3: $11 $12 $13
    inc d                                         ; $61b6: $14
    dec d                                         ; $61b7: $15
    ld d, $17                                     ; $61b8: $16 $17
    jr @-$65                                      ; $61ba: $18 $99

    sbc d                                         ; $61bc: $9a
    sbc e                                         ; $61bd: $9b
    sbc h                                         ; $61be: $9c
    sbc l                                         ; $61bf: $9d
    sbc [hl]                                      ; $61c0: $9e
    sbc a                                         ; $61c1: $9f
    and b                                         ; $61c2: $a0
    ld b, $01                                     ; $61c3: $06 $01
    rlca                                          ; $61c5: $07
    inc bc                                        ; $61c6: $03
    ld b, $03                                     ; $61c7: $06 $03
    ld bc, $8d01                                  ; $61c9: $01 $01 $8d
    adc l                                         ; $61cc: $8d
    adc l                                         ; $61cd: $8d
    adc l                                         ; $61ce: $8d
    adc l                                         ; $61cf: $8d
    adc l                                         ; $61d0: $8d
    adc l                                         ; $61d1: $8d
    adc l                                         ; $61d2: $8d
    pop de                                        ; $61d3: $d1
    pop de                                        ; $61d4: $d1
    pop de                                        ; $61d5: $d1
    inc de                                        ; $61d6: $13
    ld e, $15                                     ; $61d7: $1e $15
    ld d, $17                                     ; $61d9: $16 $17
    sbc c                                         ; $61db: $99
    sbc d                                         ; $61dc: $9a
    sbc e                                         ; $61dd: $9b
    sbc h                                         ; $61de: $9c
    sbc l                                         ; $61df: $9d
    sbc [hl]                                      ; $61e0: $9e
    sbc a                                         ; $61e1: $9f
    and b                                         ; $61e2: $a0
    ld [bc], a                                    ; $61e3: $02
    ld [bc], a                                    ; $61e4: $02
    ld [bc], a                                    ; $61e5: $02
    ld b, $06                                     ; $61e6: $06 $06
    ld b, $06                                     ; $61e8: $06 $06
    ld b, $8d                                     ; $61ea: $06 $8d
    adc l                                         ; $61ec: $8d
    adc l                                         ; $61ed: $8d
    adc l                                         ; $61ee: $8d
    adc l                                         ; $61ef: $8d
    adc l                                         ; $61f0: $8d
    adc l                                         ; $61f1: $8d
    adc l                                         ; $61f2: $8d
    inc d                                         ; $61f3: $14
    dec e                                         ; $61f4: $1d
    ld de, $1812                                  ; $61f5: $11 $12 $18
    ld e, $15                                     ; $61f8: $1e $15
    ld d, $a1                                     ; $61fa: $16 $a1
    dec [hl]                                      ; $61fc: $35
    dec h                                         ; $61fd: $25
    ld h, $a2                                     ; $61fe: $26 $a2
    and e                                         ; $6200: $a3
    and h                                         ; $6201: $a4
    jr c, @+$03                                   ; $6202: $38 $01

    ld bc, $0103                                  ; $6204: $01 $03 $01
    rlca                                          ; $6207: $07
    ld bc, $0307                                  ; $6208: $01 $07 $03
    add hl, bc                                    ; $620b: $09
    rlca                                          ; $620c: $07
    inc bc                                        ; $620d: $03
    ld bc, $098c                                  ; $620e: $01 $8c $09
    add hl, bc                                    ; $6211: $09
    ld bc, $1413                                  ; $6212: $01 $13 $14
    dec e                                         ; $6215: $1d
    ld de, $1817                                  ; $6216: $11 $17 $18
    ld e, $15                                     ; $6219: $1e $15
    daa                                           ; $621b: $27
    jr z, jr_088_6253                             ; $621c: $28 $35

    dec h                                         ; $621e: $25
    add hl, sp                                    ; $621f: $39
    inc a                                         ; $6220: $3c
    dec a                                         ; $6221: $3d
    scf                                           ; $6222: $37
    rlca                                          ; $6223: $07
    inc bc                                        ; $6224: $03
    ld bc, $0101                                  ; $6225: $01 $01 $01
    ld bc, $0701                                  ; $6228: $01 $01 $07
    ld bc, $0101                                  ; $622b: $01 $01 $01
    ld bc, $0701                                  ; $622e: $01 $01 $07
    ld bc, $1207                                  ; $6231: $01 $07 $12
    inc de                                        ; $6234: $13
    inc d                                         ; $6235: $14
    dec e                                         ; $6236: $1d
    ld d, $17                                     ; $6237: $16 $17
    jr @+$20                                      ; $6239: $18 $1e

    ld h, $a5                                     ; $623b: $26 $a5
    call nc, Call_000_38d4                        ; $623d: $d4 $d4 $38
    db $d3                                        ; $6240: $d3
    pop de                                        ; $6241: $d1
    pop de                                        ; $6242: $d1
    ld b, $06                                     ; $6243: $06 $06
    ld b, $06                                     ; $6245: $06 $06
    ld bc, $0701                                  ; $6247: $01 $01 $07

jr_088_624a:
    ld bc, $8803                                  ; $624a: $01 $03 $88
    add b                                         ; $624d: $80
    add b                                         ; $624e: $80
    ld bc, $8080                                  ; $624f: $01 $80 $80
    add b                                         ; $6252: $80

jr_088_6253:
    ld de, $1312                                  ; $6253: $11 $12 $13
    inc d                                         ; $6256: $14
    dec d                                         ; $6257: $15
    ld d, $17                                     ; $6258: $16 $17
    jr @-$2a                                      ; $625a: $18 $d4

    call nc, $d4d4                                ; $625c: $d4 $d4 $d4
    pop de                                        ; $625f: $d1
    pop de                                        ; $6260: $d1
    pop de                                        ; $6261: $d1
    pop de                                        ; $6262: $d1
    ld b, $06                                     ; $6263: $06 $06
    ld b, $06                                     ; $6265: $06 $06
    ld bc, $0107                                  ; $6267: $01 $07 $01
    rlca                                          ; $626a: $07
    add b                                         ; $626b: $80
    add b                                         ; $626c: $80
    add b                                         ; $626d: $80
    add b                                         ; $626e: $80
    add b                                         ; $626f: $80
    add b                                         ; $6270: $80
    add b                                         ; $6271: $80
    add b                                         ; $6272: $80
    dec e                                         ; $6273: $1d
    ld de, $1312                                  ; $6274: $11 $12 $13
    ld e, $15                                     ; $6277: $1e $15
    ld d, $17                                     ; $6279: $16 $17
    call nc, $d4d4                                ; $627b: $d4 $d4 $d4
    call nc, $d1d1                                ; $627e: $d4 $d1 $d1
    pop de                                        ; $6281: $d1
    pop de                                        ; $6282: $d1

jr_088_6283:
    ld b, $06                                     ; $6283: $06 $06
    ld b, $06                                     ; $6285: $06 $06
    rlca                                          ; $6287: $07
    inc bc                                        ; $6288: $03
    ld bc, $8007                                  ; $6289: $01 $07 $80
    add b                                         ; $628c: $80
    add b                                         ; $628d: $80
    add b                                         ; $628e: $80
    add b                                         ; $628f: $80
    add b                                         ; $6290: $80
    add b                                         ; $6291: $80
    add b                                         ; $6292: $80
    dec bc                                        ; $6293: $0b
    inc c                                         ; $6294: $0c
    add hl, de                                    ; $6295: $19
    add hl, bc                                    ; $6296: $09
    rrca                                          ; $6297: $0f
    db $10                                        ; $6298: $10
    dec de                                        ; $6299: $1b
    dec c                                         ; $629a: $0d
    inc de                                        ; $629b: $13
    inc d                                         ; $629c: $14
    and [hl]                                      ; $629d: $a6
    and a                                         ; $629e: $a7
    rla                                           ; $629f: $17
    jr jr_088_624a                                ; $62a0: $18 $a8

    xor c                                         ; $62a2: $a9
    rlca                                          ; $62a3: $07
    ld bc, $0103                                  ; $62a4: $01 $03 $01
    ld bc, $0103                                  ; $62a7: $01 $03 $01
    ld bc, $0107                                  ; $62aa: $01 $07 $01
    adc l                                         ; $62ad: $8d
    adc l                                         ; $62ae: $8d
    ld bc, $0d01                                  ; $62af: $01 $01 $0d
    dec c                                         ; $62b2: $0d
    ld a, [bc]                                    ; $62b3: $0a
    db $d3                                        ; $62b4: $d3
    pop de                                        ; $62b5: $d1
    pop de                                        ; $62b6: $d1
    xor d                                         ; $62b7: $aa
    db $d3                                        ; $62b8: $d3
    pop de                                        ; $62b9: $d1
    pop de                                        ; $62ba: $d1
    xor e                                         ; $62bb: $ab
    db $d3                                        ; $62bc: $d3
    pop de                                        ; $62bd: $d1
    pop de                                        ; $62be: $d1
    xor h                                         ; $62bf: $ac
    db $d3                                        ; $62c0: $d3
    pop de                                        ; $62c1: $d1
    pop de                                        ; $62c2: $d1
    ld b, $80                                     ; $62c3: $06 $80
    add b                                         ; $62c5: $80
    nop                                           ; $62c6: $00
    adc l                                         ; $62c7: $8d
    add b                                         ; $62c8: $80
    add b                                         ; $62c9: $80
    nop                                           ; $62ca: $00
    adc l                                         ; $62cb: $8d
    add b                                         ; $62cc: $80
    add b                                         ; $62cd: $80
    nop                                           ; $62ce: $00
    dec c                                         ; $62cf: $0d
    add b                                         ; $62d0: $80
    add b                                         ; $62d1: $80
    nop                                           ; $62d2: $00
    daa                                           ; $62d3: $27
    jr z, jr_088_6283                             ; $62d4: $28 $ad

    xor [hl]                                      ; $62d6: $ae
    add hl, sp                                    ; $62d7: $39
    inc a                                         ; $62d8: $3c
    xor a                                         ; $62d9: $af
    or b                                          ; $62da: $b0
    dec bc                                        ; $62db: $0b
    inc c                                         ; $62dc: $0c
    add hl, de                                    ; $62dd: $19
    add hl, bc                                    ; $62de: $09
    rrca                                          ; $62df: $0f
    db $10                                        ; $62e0: $10
    dec de                                        ; $62e1: $1b
    dec c                                         ; $62e2: $0d
    inc bc                                        ; $62e3: $03
    ld b, $0d                                     ; $62e4: $06 $0d
    dec c                                         ; $62e6: $0d
    ld bc, $0d06                                  ; $62e7: $01 $06 $0d
    dec c                                         ; $62ea: $0d
    ld bc, $0606                                  ; $62eb: $01 $06 $06
    ld b, $03                                     ; $62ee: $06 $03
    ld bc, $0103                                  ; $62f0: $01 $03 $01
    or c                                          ; $62f3: $b1
    db $d3                                        ; $62f4: $d3
    pop de                                        ; $62f5: $d1
    pop de                                        ; $62f6: $d1
    or d                                          ; $62f7: $b2
    db $d3                                        ; $62f8: $d3
    pop de                                        ; $62f9: $d1
    pop de                                        ; $62fa: $d1
    ld a, [bc]                                    ; $62fb: $0a
    db $d3                                        ; $62fc: $d3
    pop de                                        ; $62fd: $d1
    pop de                                        ; $62fe: $d1
    ld c, $d3                                     ; $62ff: $0e $d3
    pop de                                        ; $6301: $d1
    pop de                                        ; $6302: $d1
    dec c                                         ; $6303: $0d
    add b                                         ; $6304: $80
    add b                                         ; $6305: $80
    nop                                           ; $6306: $00
    dec c                                         ; $6307: $0d
    add b                                         ; $6308: $80
    add b                                         ; $6309: $80
    nop                                           ; $630a: $00
    ld b, $80                                     ; $630b: $06 $80
    add b                                         ; $630d: $80
    nop                                           ; $630e: $00
    ld b, $80                                     ; $630f: $06 $80
    add b                                         ; $6311: $80
    nop                                           ; $6312: $00
    inc de                                        ; $6313: $13

jr_088_6314:
    inc d                                         ; $6314: $14
    dec e                                         ; $6315: $1d
    ld de, $1817                                  ; $6316: $11 $17 $18
    ld e, $15                                     ; $6319: $1e $15
    daa                                           ; $631b: $27
    jr z, jr_088_6353                             ; $631c: $28 $35

    dec h                                         ; $631e: $25
    add hl, sp                                    ; $631f: $39
    inc a                                         ; $6320: $3c
    dec a                                         ; $6321: $3d
    scf                                           ; $6322: $37
    ld bc, $0101                                  ; $6323: $01 $01 $01
    ld bc, $0107                                  ; $6326: $01 $07 $01
    rlca                                          ; $6329: $07
    ld bc, $0107                                  ; $632a: $01 $07 $01
    ld bc, $0703                                  ; $632d: $01 $03 $07
    inc bc                                        ; $6330: $03
    inc bc                                        ; $6331: $03
    ld bc, $d312                                  ; $6332: $01 $12 $d3
    pop de                                        ; $6335: $d1
    pop de                                        ; $6336: $d1
    ld d, $d3                                     ; $6337: $16 $d3
    pop de                                        ; $6339: $d1
    pop de                                        ; $633a: $d1
    ld h, $d3                                     ; $633b: $26 $d3
    pop de                                        ; $633d: $d1
    pop de                                        ; $633e: $d1
    jr c, jr_088_6314                             ; $633f: $38 $d3

    pop de                                        ; $6341: $d1
    pop de                                        ; $6342: $d1
    ld b, $80                                     ; $6343: $06 $80
    add b                                         ; $6345: $80
    nop                                           ; $6346: $00
    ld b, $80                                     ; $6347: $06 $80
    add b                                         ; $6349: $80
    nop                                           ; $634a: $00
    ld b, $80                                     ; $634b: $06 $80
    add b                                         ; $634d: $80
    nop                                           ; $634e: $00
    ld b, $80                                     ; $634f: $06 $80
    add b                                         ; $6351: $80
    nop                                           ; $6352: $00

jr_088_6353:
    ld l, a                                       ; $6353: $6f
    or e                                          ; $6354: $b3
    pop de                                        ; $6355: $d1
    pop de                                        ; $6356: $d1
    db $d3                                        ; $6357: $d3
    or e                                          ; $6358: $b3
    pop de                                        ; $6359: $d1
    pop de                                        ; $635a: $d1
    or h                                          ; $635b: $b4
    or e                                          ; $635c: $b3
    pop de                                        ; $635d: $d1
    pop de                                        ; $635e: $d1
    pop de                                        ; $635f: $d1
    pop de                                        ; $6360: $d1
    pop de                                        ; $6361: $d1
    pop de                                        ; $6362: $d1
    add b                                         ; $6363: $80
    adc b                                         ; $6364: $88
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    add b                                         ; $6367: $80
    adc b                                         ; $6368: $88
    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    adc b                                         ; $636b: $88
    adc b                                         ; $636c: $88
    nop                                           ; $636d: $00
    nop                                           ; $636e: $00
    add b                                         ; $636f: $80
    add b                                         ; $6370: $80
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    or l                                          ; $6373: $b5
    or [hl]                                       ; $6374: $b6
    or a                                          ; $6375: $b7
    cp b                                          ; $6376: $b8
    cp c                                          ; $6377: $b9
    cp d                                          ; $6378: $ba
    cp e                                          ; $6379: $bb
    cp h                                          ; $637a: $bc
    cp l                                          ; $637b: $bd
    cp [hl]                                       ; $637c: $be
    cp a                                          ; $637d: $bf
    ret nz                                        ; $637e: $c0

    pop bc                                        ; $637f: $c1
    jp nz, $c4c3                                  ; $6380: $c2 $c3 $c4

    dec c                                         ; $6383: $0d
    dec c                                         ; $6384: $0d
    dec c                                         ; $6385: $0d
    dec c                                         ; $6386: $0d
    dec c                                         ; $6387: $0d
    dec c                                         ; $6388: $0d
    dec c                                         ; $6389: $0d
    dec c                                         ; $638a: $0d
    dec c                                         ; $638b: $0d
    dec c                                         ; $638c: $0d
    dec c                                         ; $638d: $0d
    dec c                                         ; $638e: $0d
    dec bc                                        ; $638f: $0b
    dec c                                         ; $6390: $0d
    dec c                                         ; $6391: $0d
    dec c                                         ; $6392: $0d
    or l                                          ; $6393: $b5
    or [hl]                                       ; $6394: $b6
    or a                                          ; $6395: $b7
    cp b                                          ; $6396: $b8
    cp c                                          ; $6397: $b9
    cp d                                          ; $6398: $ba
    cp e                                          ; $6399: $bb
    cp h                                          ; $639a: $bc
    push bc                                       ; $639b: $c5
    cp [hl]                                       ; $639c: $be
    cp a                                          ; $639d: $bf
    ret nz                                        ; $639e: $c0

    add $c2                                       ; $639f: $c6 $c2
    jp Jump_000_0dc7                              ; $63a1: $c3 $c7 $0d


    dec c                                         ; $63a4: $0d
    dec c                                         ; $63a5: $0d
    adc l                                         ; $63a6: $8d
    dec c                                         ; $63a7: $0d
    dec c                                         ; $63a8: $0d
    dec c                                         ; $63a9: $0d
    dec c                                         ; $63aa: $0d
    dec c                                         ; $63ab: $0d
    dec c                                         ; $63ac: $0d
    dec c                                         ; $63ad: $0d
    dec c                                         ; $63ae: $0d
    dec c                                         ; $63af: $0d
    dec c                                         ; $63b0: $0d
    dec c                                         ; $63b1: $0d
    dec c                                         ; $63b2: $0d
    ret z                                         ; $63b3: $c8

    ret                                           ; $63b4: $c9


    jp z, $cb0a                                   ; $63b5: $ca $0a $cb

    call z, $0ecd                                 ; $63b8: $cc $cd $0e
    adc $cf                                       ; $63bb: $ce $cf
    ret nc                                        ; $63bd: $d0

    ld [de], a                                    ; $63be: $12
    pop de                                        ; $63bf: $d1
    jp nc, $16d3                                  ; $63c0: $d2 $d3 $16

    inc c                                         ; $63c3: $0c
    inc c                                         ; $63c4: $0c
    add hl, bc                                    ; $63c5: $09
    inc bc                                        ; $63c6: $03
    inc c                                         ; $63c7: $0c
    inc c                                         ; $63c8: $0c
    add hl, bc                                    ; $63c9: $09
    ld bc, $0c0c                                  ; $63ca: $01 $0c $0c
    dec bc                                        ; $63cd: $0b
    ld bc, $090e                                  ; $63ce: $01 $0e $09
    add hl, bc                                    ; $63d1: $09
    ld bc, $d1d1                                  ; $63d2: $01 $d1 $d1
    pop de                                        ; $63d5: $d1
    db $d3                                        ; $63d6: $d3
    pop de                                        ; $63d7: $d1
    pop de                                        ; $63d8: $d1
    pop de                                        ; $63d9: $d1
    db $d3                                        ; $63da: $d3
    pop de                                        ; $63db: $d1
    pop de                                        ; $63dc: $d1
    pop de                                        ; $63dd: $d1
    db $d3                                        ; $63de: $d3
    pop de                                        ; $63df: $d1
    pop de                                        ; $63e0: $d1
    pop de                                        ; $63e1: $d1
    call nc, RST_00                               ; $63e2: $d4 $00 $00
    add b                                         ; $63e5: $80
    add b                                         ; $63e6: $80
    nop                                           ; $63e7: $00
    nop                                           ; $63e8: $00
    add b                                         ; $63e9: $80
    add b                                         ; $63ea: $80
    nop                                           ; $63eb: $00
    nop                                           ; $63ec: $00
    add b                                         ; $63ed: $80
    add b                                         ; $63ee: $80
    nop                                           ; $63ef: $00
    nop                                           ; $63f0: $00
    add b                                         ; $63f1: $80
    adc b                                         ; $63f2: $88
    push de                                       ; $63f3: $d5
    sub $d7                                       ; $63f4: $d6 $d7
    ret c                                         ; $63f6: $d8

    reti                                          ; $63f7: $d9


    jp c, $dcdb                                   ; $63f8: $da $db $dc

    push de                                       ; $63fb: $d5
    db $dd                                        ; $63fc: $dd
    sbc $df                                       ; $63fd: $de $df
    call nc, $d4d4                                ; $63ff: $d4 $d4 $d4
    call nc, Call_000_0a0b                        ; $6402: $d4 $0b $0a
    ld a, [bc]                                    ; $6405: $0a
    ld a, [bc]                                    ; $6406: $0a
    dec bc                                        ; $6407: $0b
    ld a, [bc]                                    ; $6408: $0a
    ld a, [bc]                                    ; $6409: $0a
    ld a, [bc]                                    ; $640a: $0a
    dec bc                                        ; $640b: $0b
    ld a, [bc]                                    ; $640c: $0a
    ld a, [bc]                                    ; $640d: $0a
    ld a, [bc]                                    ; $640e: $0a
    add b                                         ; $640f: $80
    add b                                         ; $6410: $80
    add b                                         ; $6411: $80
    add b                                         ; $6412: $80
    ldh [$e1], a                                  ; $6413: $e0 $e1
    ld h, $27                                     ; $6415: $26 $27
    ld [c], a                                     ; $6417: $e2
    db $e3                                        ; $6418: $e3
    jr c, jr_088_6454                             ; $6419: $38 $39

    db $e4                                        ; $641b: $e4
    push hl                                       ; $641c: $e5
    ld a, [bc]                                    ; $641d: $0a
    dec bc                                        ; $641e: $0b
    call nc, $d4d4                                ; $641f: $d4 $d4 $d4
    call nc, $0a0a                                ; $6422: $d4 $0a $0a
    ld b, $06                                     ; $6425: $06 $06
    ld a, [bc]                                    ; $6427: $0a
    ld a, [bc]                                    ; $6428: $0a
    ld b, $01                                     ; $6429: $06 $01
    ld a, [bc]                                    ; $642b: $0a
    ld a, [bc]                                    ; $642c: $0a
    ld b, $01                                     ; $642d: $06 $01
    add b                                         ; $642f: $80
    add b                                         ; $6430: $80
    add b                                         ; $6431: $80
    add b                                         ; $6432: $80
    jr z, @+$37                                   ; $6433: $28 $35

    dec h                                         ; $6435: $25
    ld h, $3c                                     ; $6436: $26 $3c
    dec a                                         ; $6438: $3d
    scf                                           ; $6439: $37
    jr c, jr_088_6448                             ; $643a: $38 $0c

    add hl, de                                    ; $643c: $19
    add hl, bc                                    ; $643d: $09
    ld a, [bc]                                    ; $643e: $0a
    call nc, $d4d4                                ; $643f: $d4 $d4 $d4
    call nc, Call_000_0306                        ; $6442: $d4 $06 $03
    ld bc, $0301                                  ; $6445: $01 $01 $03

jr_088_6448:
    ld bc, $0701                                  ; $6448: $01 $01 $07
    rlca                                          ; $644b: $07
    rlca                                          ; $644c: $07
    ld bc, $8007                                  ; $644d: $01 $07 $80
    add b                                         ; $6450: $80
    add b                                         ; $6451: $80
    add b                                         ; $6452: $80
    dec bc                                        ; $6453: $0b

jr_088_6454:
    inc c                                         ; $6454: $0c
    add hl, de                                    ; $6455: $19
    add hl, bc                                    ; $6456: $09
    rrca                                          ; $6457: $0f
    db $10                                        ; $6458: $10
    dec de                                        ; $6459: $1b
    dec c                                         ; $645a: $0d
    inc de                                        ; $645b: $13
    inc d                                         ; $645c: $14
    dec e                                         ; $645d: $1d
    ld de, $1817                                  ; $645e: $11 $17 $18
    ld e, $15                                     ; $6461: $1e $15
    ld bc, $0301                                  ; $6463: $01 $01 $03
    ld bc, $0107                                  ; $6466: $01 $07 $01
    ld bc, $0107                                  ; $6469: $01 $07 $01
    ld bc, $0103                                  ; $646c: $01 $03 $01
    ld bc, $0107                                  ; $646f: $01 $07 $01
    rlca                                          ; $6472: $07
    ld a, [bc]                                    ; $6473: $0a
    db $d3                                        ; $6474: $d3
    pop de                                        ; $6475: $d1
    pop de                                        ; $6476: $d1
    ld c, $d3                                     ; $6477: $0e $d3
    pop de                                        ; $6479: $d1
    pop de                                        ; $647a: $d1
    ld [de], a                                    ; $647b: $12
    db $d3                                        ; $647c: $d3
    pop de                                        ; $647d: $d1
    pop de                                        ; $647e: $d1
    ld d, $d3                                     ; $647f: $16 $d3
    pop de                                        ; $6481: $d1
    pop de                                        ; $6482: $d1
    ld b, $80                                     ; $6483: $06 $80
    add b                                         ; $6485: $80
    nop                                           ; $6486: $00
    ld b, $80                                     ; $6487: $06 $80
    add b                                         ; $6489: $80
    nop                                           ; $648a: $00
    ld b, $80                                     ; $648b: $06 $80
    add b                                         ; $648d: $80
    nop                                           ; $648e: $00
    ld b, $80                                     ; $648f: $06 $80
    add b                                         ; $6491: $80
    nop                                           ; $6492: $00
    daa                                           ; $6493: $27
    jr z, jr_088_64cb                             ; $6494: $28 $35

    dec h                                         ; $6496: $25
    add hl, sp                                    ; $6497: $39
    inc a                                         ; $6498: $3c
    dec a                                         ; $6499: $3d
    scf                                           ; $649a: $37
    dec bc                                        ; $649b: $0b
    inc c                                         ; $649c: $0c
    add hl, de                                    ; $649d: $19
    add hl, bc                                    ; $649e: $09
    call nc, $d4d4                                ; $649f: $d4 $d4 $d4
    call nc, $0707                                ; $64a2: $d4 $07 $07
    ld bc, $0707                                  ; $64a5: $01 $07 $07
    ld bc, $0107                                  ; $64a8: $01 $07 $01
    inc bc                                        ; $64ab: $03
    ld bc, $0107                                  ; $64ac: $01 $07 $01
    add b                                         ; $64af: $80
    add b                                         ; $64b0: $80
    add b                                         ; $64b1: $80
    add b                                         ; $64b2: $80
    ld h, $d3                                     ; $64b3: $26 $d3
    pop de                                        ; $64b5: $d1
    pop de                                        ; $64b6: $d1
    jr c, @-$2b                                   ; $64b7: $38 $d3

    pop de                                        ; $64b9: $d1
    pop de                                        ; $64ba: $d1
    ld a, [bc]                                    ; $64bb: $0a
    db $d3                                        ; $64bc: $d3
    pop de                                        ; $64bd: $d1
    pop de                                        ; $64be: $d1
    call nc, $d1b4                                ; $64bf: $d4 $b4 $d1
    pop de                                        ; $64c2: $d1
    ld b, $80                                     ; $64c3: $06 $80
    add b                                         ; $64c5: $80
    nop                                           ; $64c6: $00
    ld b, $80                                     ; $64c7: $06 $80
    add b                                         ; $64c9: $80
    nop                                           ; $64ca: $00

jr_088_64cb:
    ld b, $80                                     ; $64cb: $06 $80
    add b                                         ; $64cd: $80
    nop                                           ; $64ce: $00
    add b                                         ; $64cf: $80
    adc b                                         ; $64d0: $88
    add b                                         ; $64d1: $80
    nop                                           ; $64d2: $00
    add hl, bc                                    ; $64d3: $09
    nop                                           ; $64d4: $00
    ld de, $0000                                  ; $64d5: $11 $00 $00
    ld a, [bc]                                    ; $64d8: $0a
    pop de                                        ; $64d9: $d1
    jp nc, $d4d3                                  ; $64da: $d2 $d3 $d4

    push de                                       ; $64dd: $d5
    sub $d7                                       ; $64de: $d6 $d7
    ret c                                         ; $64e0: $d8

    reti                                          ; $64e1: $d9


    jp c, $dcdb                                   ; $64e2: $da $db $dc

    db $dd                                        ; $64e5: $dd
    sbc $df                                       ; $64e6: $de $df
    ldh [rP1], a                                  ; $64e8: $e0 $00
    nop                                           ; $64ea: $00
    nop                                           ; $64eb: $00
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    nop                                           ; $64f0: $00
    nop                                           ; $64f1: $00
    nop                                           ; $64f2: $00
    nop                                           ; $64f3: $00
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00
    nop                                           ; $64f8: $00
    pop hl                                        ; $64f9: $e1
    pop hl                                        ; $64fa: $e1
    pop hl                                        ; $64fb: $e1
    pop hl                                        ; $64fc: $e1
    pop hl                                        ; $64fd: $e1
    pop hl                                        ; $64fe: $e1
    pop hl                                        ; $64ff: $e1
    pop hl                                        ; $6500: $e1
    pop hl                                        ; $6501: $e1
    pop hl                                        ; $6502: $e1
    pop hl                                        ; $6503: $e1
    pop hl                                        ; $6504: $e1
    pop hl                                        ; $6505: $e1
    pop hl                                        ; $6506: $e1
    pop hl                                        ; $6507: $e1
    pop hl                                        ; $6508: $e1
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    nop                                           ; $650b: $00
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    nop                                           ; $650e: $00
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    pop hl                                        ; $6519: $e1
    pop hl                                        ; $651a: $e1
    pop hl                                        ; $651b: $e1
    pop hl                                        ; $651c: $e1
    pop hl                                        ; $651d: $e1
    pop hl                                        ; $651e: $e1
    pop hl                                        ; $651f: $e1
    pop hl                                        ; $6520: $e1
    pop hl                                        ; $6521: $e1
    pop hl                                        ; $6522: $e1
    pop hl                                        ; $6523: $e1
    pop hl                                        ; $6524: $e1
    pop hl                                        ; $6525: $e1
    pop hl                                        ; $6526: $e1
    pop hl                                        ; $6527: $e1
    ld [c], a                                     ; $6528: $e2
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00
    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    pop hl                                        ; $6539: $e1
    pop hl                                        ; $653a: $e1
    pop hl                                        ; $653b: $e1
    pop hl                                        ; $653c: $e1
    pop hl                                        ; $653d: $e1
    pop hl                                        ; $653e: $e1
    pop hl                                        ; $653f: $e1
    pop hl                                        ; $6540: $e1
    pop hl                                        ; $6541: $e1
    pop hl                                        ; $6542: $e1
    pop hl                                        ; $6543: $e1
    pop hl                                        ; $6544: $e1
    db $e3                                        ; $6545: $e3
    db $e3                                        ; $6546: $e3
    db $e3                                        ; $6547: $e3
    db $e3                                        ; $6548: $e3
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    nop                                           ; $654b: $00
    nop                                           ; $654c: $00
    nop                                           ; $654d: $00
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    pop hl                                        ; $6559: $e1
    pop hl                                        ; $655a: $e1
    pop hl                                        ; $655b: $e1
    pop hl                                        ; $655c: $e1
    pop hl                                        ; $655d: $e1
    pop hl                                        ; $655e: $e1
    pop hl                                        ; $655f: $e1
    pop hl                                        ; $6560: $e1
    pop hl                                        ; $6561: $e1
    pop hl                                        ; $6562: $e1
    pop hl                                        ; $6563: $e1
    pop hl                                        ; $6564: $e1
    db $e4                                        ; $6565: $e4
    pop hl                                        ; $6566: $e1
    pop hl                                        ; $6567: $e1
    pop hl                                        ; $6568: $e1
    nop                                           ; $6569: $00
    nop                                           ; $656a: $00
    nop                                           ; $656b: $00
    nop                                           ; $656c: $00
    nop                                           ; $656d: $00
    nop                                           ; $656e: $00
    nop                                           ; $656f: $00
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    pop hl                                        ; $6579: $e1
    pop hl                                        ; $657a: $e1
    pop hl                                        ; $657b: $e1
    push hl                                       ; $657c: $e5
    pop hl                                        ; $657d: $e1
    pop hl                                        ; $657e: $e1
    pop hl                                        ; $657f: $e1
    push hl                                       ; $6580: $e5
    pop hl                                        ; $6581: $e1
    pop hl                                        ; $6582: $e1
    pop hl                                        ; $6583: $e1
    push hl                                       ; $6584: $e5
    pop hl                                        ; $6585: $e1
    pop hl                                        ; $6586: $e1
    pop hl                                        ; $6587: $e1
    push hl                                       ; $6588: $e5
    add b                                         ; $6589: $80
    add b                                         ; $658a: $80
    add b                                         ; $658b: $80
    add b                                         ; $658c: $80
    add b                                         ; $658d: $80
    add b                                         ; $658e: $80
    add b                                         ; $658f: $80
    add b                                         ; $6590: $80
    add b                                         ; $6591: $80
    add b                                         ; $6592: $80
    add b                                         ; $6593: $80
    add b                                         ; $6594: $80
    add b                                         ; $6595: $80
    add b                                         ; $6596: $80
    add b                                         ; $6597: $80
    add b                                         ; $6598: $80
    and $e7                                       ; $6599: $e6 $e7
    add sp, -$27                                  ; $659b: $e8 $d9
    jp hl                                         ; $659d: $e9


    ld [$eceb], a                                 ; $659e: $ea $eb $ec
    db $ed                                        ; $65a1: $ed
    xor $ef                                       ; $65a2: $ee $ef
    ldh a, [$f1]                                  ; $65a4: $f0 $f1
    ld a, [c]                                     ; $65a6: $f2
    di                                            ; $65a7: $f3
    db $f4                                        ; $65a8: $f4
    ld [bc], a                                    ; $65a9: $02
    ld [bc], a                                    ; $65aa: $02
    ld [bc], a                                    ; $65ab: $02
    ld [bc], a                                    ; $65ac: $02
    ld [bc], a                                    ; $65ad: $02
    ld [bc], a                                    ; $65ae: $02
    ld [bc], a                                    ; $65af: $02
    ld [bc], a                                    ; $65b0: $02
    ld [bc], a                                    ; $65b1: $02
    ld [bc], a                                    ; $65b2: $02
    ld [bc], a                                    ; $65b3: $02
    ld [bc], a                                    ; $65b4: $02
    inc b                                         ; $65b5: $04
    ld [bc], a                                    ; $65b6: $02
    ld [bc], a                                    ; $65b7: $02
    ld [bc], a                                    ; $65b8: $02
    and $e7                                       ; $65b9: $e6 $e7
    add sp, -$27                                  ; $65bb: $e8 $d9
    push af                                       ; $65bd: $f5
    or $f7                                        ; $65be: $f6 $f7
    ld hl, sp-$07                                 ; $65c0: $f8 $f9
    ld a, [$effb]                                 ; $65c2: $fa $fb $ef
    db $fc                                        ; $65c5: $fc
    db $fd                                        ; $65c6: $fd
    cp $ff                                        ; $65c7: $fe $ff
    ld [bc], a                                    ; $65c9: $02
    ld [bc], a                                    ; $65ca: $02
    ld [bc], a                                    ; $65cb: $02
    ld [bc], a                                    ; $65cc: $02
    ld [bc], a                                    ; $65cd: $02
    ld [bc], a                                    ; $65ce: $02
    ld [bc], a                                    ; $65cf: $02
    ld [bc], a                                    ; $65d0: $02
    ld [bc], a                                    ; $65d1: $02
    ld [bc], a                                    ; $65d2: $02
    ld [bc], a                                    ; $65d3: $02
    ld [bc], a                                    ; $65d4: $02
    ld [bc], a                                    ; $65d5: $02
    ld [bc], a                                    ; $65d6: $02
    ld [bc], a                                    ; $65d7: $02
    ld [bc], a                                    ; $65d8: $02
    and $da                                       ; $65d9: $e6 $da
    db $db                                        ; $65db: $db
    call c, $00e9                                 ; $65dc: $dc $e9 $00
    ld bc, $ef02                                  ; $65df: $01 $02 $ef
    inc bc                                        ; $65e2: $03
    inc b                                         ; $65e3: $04
    dec b                                         ; $65e4: $05
    ld b, $07                                     ; $65e5: $06 $07
    ld [$0209], sp                                ; $65e7: $08 $09 $02
    ld [bc], a                                    ; $65ea: $02
    inc bc                                        ; $65eb: $03
    inc bc                                        ; $65ec: $03
    ld [bc], a                                    ; $65ed: $02
    ld [bc], a                                    ; $65ee: $02
    inc bc                                        ; $65ef: $03
    inc bc                                        ; $65f0: $03
    ld [bc], a                                    ; $65f1: $02
    ld [bc], a                                    ; $65f2: $02
    inc bc                                        ; $65f3: $03
    inc bc                                        ; $65f4: $03
    ld [bc], a                                    ; $65f5: $02
    ld h, d                                       ; $65f6: $62
    inc bc                                        ; $65f7: $03
    inc bc                                        ; $65f8: $03
    ld a, [bc]                                    ; $65f9: $0a
    dec bc                                        ; $65fa: $0b
    inc c                                         ; $65fb: $0c
    dec c                                         ; $65fc: $0d
    ld c, $0f                                     ; $65fd: $0e $0f
    db $10                                        ; $65ff: $10
    ld de, $1312                                  ; $6600: $11 $12 $13
    inc d                                         ; $6603: $14
    dec d                                         ; $6604: $15
    ld d, $17                                     ; $6605: $16 $17
    jr jr_088_6622                                ; $6607: $18 $19

    inc b                                         ; $6609: $04
    inc b                                         ; $660a: $04
    inc b                                         ; $660b: $04
    ld [bc], a                                    ; $660c: $02
    inc b                                         ; $660d: $04
    inc b                                         ; $660e: $04
    inc b                                         ; $660f: $04
    rlca                                          ; $6610: $07
    inc b                                         ; $6611: $04
    inc b                                         ; $6612: $04
    inc b                                         ; $6613: $04
    rlca                                          ; $6614: $07
    inc b                                         ; $6615: $04
    inc b                                         ; $6616: $04
    inc b                                         ; $6617: $04
    ld bc, $1b1a                                  ; $6618: $01 $1a $1b
    inc e                                         ; $661b: $1c
    dec c                                         ; $661c: $0d
    dec e                                         ; $661d: $1d
    ld e, $1f                                     ; $661e: $1e $1f
    jr nz, @+$23                                  ; $6620: $20 $21

jr_088_6622:
    ld [hl+], a                                   ; $6622: $22
    inc hl                                        ; $6623: $23
    inc h                                         ; $6624: $24
    dec h                                         ; $6625: $25
    ld h, $27                                     ; $6626: $26 $27
    jr z, jr_088_662c                             ; $6628: $28 $02

    ld [bc], a                                    ; $662a: $02
    ld [bc], a                                    ; $662b: $02

jr_088_662c:
    ld [bc], a                                    ; $662c: $02
    rlca                                          ; $662d: $07
    rlca                                          ; $662e: $07
    rlca                                          ; $662f: $07
    rlca                                          ; $6630: $07
    ld bc, $0101                                  ; $6631: $01 $01 $01
    ld bc, $0101                                  ; $6634: $01 $01 $01
    ld bc, $1a01                                  ; $6637: $01 $01 $1a
    ldh [$29], a                                  ; $663a: $e0 $29
    ld a, [hl+]                                   ; $663c: $2a
    dec hl                                        ; $663d: $2b
    inc l                                         ; $663e: $2c
    dec l                                         ; $663f: $2d
    ld l, $2f                                     ; $6640: $2e $2f
    jr nc, @+$33                                  ; $6642: $30 $31

    ld [hl-], a                                   ; $6644: $32
    inc sp                                        ; $6645: $33
    inc [hl]                                      ; $6646: $34
    dec [hl]                                      ; $6647: $35
    add hl, de                                    ; $6648: $19
    ld [bc], a                                    ; $6649: $02
    ld h, d                                       ; $664a: $62
    inc bc                                        ; $664b: $03
    inc bc                                        ; $664c: $03
    rlca                                          ; $664d: $07
    rlca                                          ; $664e: $07
    inc bc                                        ; $664f: $03
    inc bc                                        ; $6650: $03
    ld bc, $0101                                  ; $6651: $01 $01 $01
    ld bc, $0101                                  ; $6654: $01 $01 $01
    ld bc, $3601                                  ; $6657: $01 $01 $36
    scf                                           ; $665a: $37
    jr c, jr_088_6696                             ; $665b: $38 $39

    ld a, [hl-]                                   ; $665d: $3a
    dec sp                                        ; $665e: $3b
    inc a                                         ; $665f: $3c
    dec a                                         ; $6660: $3d
    ld a, $3f                                     ; $6661: $3e $3f
    ld b, b                                       ; $6663: $40
    ld b, c                                       ; $6664: $41
    dec hl                                        ; $6665: $2b
    inc l                                         ; $6666: $2c
    ld b, d                                       ; $6667: $42
    ld de, $0404                                  ; $6668: $11 $04 $04
    inc b                                         ; $666b: $04
    ld bc, $0707                                  ; $666c: $01 $07 $07
    rlca                                          ; $666f: $07
    ld bc, $0107                                  ; $6670: $01 $07 $01
    ld bc, $0701                                  ; $6673: $01 $01 $07
    ld bc, $0101                                  ; $6676: $01 $01 $01
    ld b, e                                       ; $6679: $43
    ld b, h                                       ; $667a: $44
    ld b, l                                       ; $667b: $45
    ld b, [hl]                                    ; $667c: $46
    ld b, a                                       ; $667d: $47
    ld c, b                                       ; $667e: $48
    ld c, c                                       ; $667f: $49
    ld c, d                                       ; $6680: $4a
    ld c, e                                       ; $6681: $4b
    ld c, h                                       ; $6682: $4c
    ld c, l                                       ; $6683: $4d
    ld c, [hl]                                    ; $6684: $4e
    dec e                                         ; $6685: $1d
    ld e, $1f                                     ; $6686: $1e $1f
    jr nz, @+$03                                  ; $6688: $20 $01

    ld bc, $0101                                  ; $668a: $01 $01 $01
    ld bc, $0101                                  ; $668d: $01 $01 $01
    ld bc, $0101                                  ; $6690: $01 $01 $01
    ld bc, $0101                                  ; $6693: $01 $01 $01

jr_088_6696:
    ld bc, $0101                                  ; $6696: $01 $01 $01
    ld c, a                                       ; $6699: $4f
    ld d, b                                       ; $669a: $50
    ld d, c                                       ; $669b: $51
    add hl, sp                                    ; $669c: $39
    ld a, [hl-]                                   ; $669d: $3a
    dec sp                                        ; $669e: $3b
    inc a                                         ; $669f: $3c
    dec a                                         ; $66a0: $3d
    ld a, $3f                                     ; $66a1: $3e $3f
    ld b, b                                       ; $66a3: $40
    ld b, c                                       ; $66a4: $41
    dec hl                                        ; $66a5: $2b
    inc l                                         ; $66a6: $2c
    ld b, d                                       ; $66a7: $42
    ld de, $0101                                  ; $66a8: $11 $01 $01
    ld bc, $0101                                  ; $66ab: $01 $01 $01
    ld bc, $0101                                  ; $66ae: $01 $01 $01
    ld bc, $0101                                  ; $66b1: $01 $01 $01
    ld bc, $0101                                  ; $66b4: $01 $01 $01
    ld bc, $2f01                                  ; $66b7: $01 $01 $2f
    jr nc, @+$54                                  ; $66ba: $30 $52

    ld d, e                                       ; $66bc: $53
    inc sp                                        ; $66bd: $33
    inc [hl]                                      ; $66be: $34
    dec [hl]                                      ; $66bf: $35
    ld d, h                                       ; $66c0: $54
    ld c, a                                       ; $66c1: $4f
    ld d, b                                       ; $66c2: $50
    ld d, c                                       ; $66c3: $51
    ld d, l                                       ; $66c4: $55
    ld a, [hl-]                                   ; $66c5: $3a
    dec sp                                        ; $66c6: $3b
    inc a                                         ; $66c7: $3c
    ld d, [hl]                                    ; $66c8: $56
    rlca                                          ; $66c9: $07
    ld bc, $0401                                  ; $66ca: $01 $01 $04
    rlca                                          ; $66cd: $07
    ld bc, $0407                                  ; $66ce: $01 $07 $04
    rlca                                          ; $66d1: $07
    ld bc, $0407                                  ; $66d2: $01 $07 $04
    rlca                                          ; $66d5: $07
    ld bc, $0207                                  ; $66d6: $01 $07 $02
    ld d, a                                       ; $66d9: $57
    ld e, b                                       ; $66da: $58
    ld e, c                                       ; $66db: $59
    inc h                                         ; $66dc: $24
    ld e, d                                       ; $66dd: $5a
    ld e, e                                       ; $66de: $5b
    ld e, h                                       ; $66df: $5c
    jr z, @+$5f                                   ; $66e0: $28 $5d

    ld e, [hl]                                    ; $66e2: $5e
    ld e, a                                       ; $66e3: $5f
    ld b, [hl]                                    ; $66e4: $46
    ld h, b                                       ; $66e5: $60
    ld h, b                                       ; $66e6: $60
    ld h, c                                       ; $66e7: $61
    ld c, d                                       ; $66e8: $4a
    inc b                                         ; $66e9: $04
    inc b                                         ; $66ea: $04
    inc b                                         ; $66eb: $04
    ld bc, $0404                                  ; $66ec: $01 $04 $04
    inc b                                         ; $66ef: $04
    ld bc, $0404                                  ; $66f0: $01 $04 $04
    inc b                                         ; $66f3: $04
    ld bc, $0202                                  ; $66f4: $01 $02 $02
    ld [bc], a                                    ; $66f7: $02
    ld bc, $302f                                  ; $66f8: $01 $2f $30
    ld d, d                                       ; $66fb: $52
    dec d                                         ; $66fc: $15
    inc sp                                        ; $66fd: $33
    inc [hl]                                      ; $66fe: $34
    dec [hl]                                      ; $66ff: $35
    add hl, de                                    ; $6700: $19
    ld c, a                                       ; $6701: $4f
    ld d, b                                       ; $6702: $50
    ld d, c                                       ; $6703: $51
    add hl, sp                                    ; $6704: $39
    ld a, [hl-]                                   ; $6705: $3a
    dec sp                                        ; $6706: $3b
    inc a                                         ; $6707: $3c
    dec a                                         ; $6708: $3d
    ld bc, $0101                                  ; $6709: $01 $01 $01
    ld bc, $0101                                  ; $670c: $01 $01 $01
    ld bc, $0101                                  ; $670f: $01 $01 $01
    ld bc, $0101                                  ; $6712: $01 $01 $01
    ld bc, $0101                                  ; $6715: $01 $01 $01
    ld bc, $dedd                                  ; $6718: $01 $dd $de
    rst $18                                       ; $671b: $df
    db $dd                                        ; $671c: $dd
    ld h, d                                       ; $671d: $62
    ld h, e                                       ; $671e: $63
    ld h, h                                       ; $671f: $64
    ld h, d                                       ; $6720: $62
    pop de                                        ; $6721: $d1
    jp nc, $d4d3                                  ; $6722: $d2 $d3 $d4

    push de                                       ; $6725: $d5
    sub $d7                                       ; $6726: $d6 $d7
    ret c                                         ; $6728: $d8

    inc bc                                        ; $6729: $03
    inc bc                                        ; $672a: $03
    inc bc                                        ; $672b: $03
    inc hl                                        ; $672c: $23
    inc bc                                        ; $672d: $03
    inc bc                                        ; $672e: $03
    inc bc                                        ; $672f: $03
    inc hl                                        ; $6730: $23
    inc b                                         ; $6731: $04
    inc b                                         ; $6732: $04
    inc b                                         ; $6733: $04
    inc b                                         ; $6734: $04
    inc b                                         ; $6735: $04
    inc b                                         ; $6736: $04
    inc b                                         ; $6737: $04
    inc b                                         ; $6738: $04
    call c, $e0db                                 ; $6739: $dc $db $e0
    ld h, l                                       ; $673c: $65
    ld [bc], a                                    ; $673d: $02
    ld bc, $6607                                  ; $673e: $01 $07 $66
    dec b                                         ; $6741: $05
    inc b                                         ; $6742: $04
    inc bc                                        ; $6743: $03
    rst $28                                       ; $6744: $ef
    add hl, bc                                    ; $6745: $09
    ld [$ff00], sp                                ; $6746: $08 $00 $ff
    inc hl                                        ; $6749: $23
    inc hl                                        ; $674a: $23
    ld [bc], a                                    ; $674b: $02
    ld [bc], a                                    ; $674c: $02
    inc hl                                        ; $674d: $23
    inc hl                                        ; $674e: $23
    ld [bc], a                                    ; $674f: $02
    ld [bc], a                                    ; $6750: $02
    inc hl                                        ; $6751: $23
    inc hl                                        ; $6752: $23
    ld h, d                                       ; $6753: $62
    ld [bc], a                                    ; $6754: $02
    inc hl                                        ; $6755: $23
    inc hl                                        ; $6756: $23
    ld h, d                                       ; $6757: $62
    ld [bc], a                                    ; $6758: $02
    ld h, a                                       ; $6759: $67
    rst $20                                       ; $675a: $e7
    add sp, -$27                                  ; $675b: $e8 $d9
    ld l, b                                       ; $675d: $68
    ld l, c                                       ; $675e: $69
    db $eb                                        ; $675f: $eb
    ld hl, sp-$11                                 ; $6760: $f8 $ef
    rst $28                                       ; $6762: $ef
    rst $28                                       ; $6763: $ef
    rst $28                                       ; $6764: $ef
    ld b, $6a                                     ; $6765: $06 $6a
    cp $ff                                        ; $6767: $fe $ff
    ld [bc], a                                    ; $6769: $02
    ld [bc], a                                    ; $676a: $02
    ld [bc], a                                    ; $676b: $02
    ld [bc], a                                    ; $676c: $02
    ld [bc], a                                    ; $676d: $02
    ld [bc], a                                    ; $676e: $02
    ld [bc], a                                    ; $676f: $02
    ld [bc], a                                    ; $6770: $02
    ld [bc], a                                    ; $6771: $02
    ld [bc], a                                    ; $6772: $02
    ld [bc], a                                    ; $6773: $02
    ld [bc], a                                    ; $6774: $02
    ld [bc], a                                    ; $6775: $02
    ld [bc], a                                    ; $6776: $02
    ld [bc], a                                    ; $6777: $02
    ld [bc], a                                    ; $6778: $02
    and $e7                                       ; $6779: $e6 $e7
    add sp, -$27                                  ; $677b: $e8 $d9
    jp hl                                         ; $677d: $e9


    ld l, e                                       ; $677e: $6b
    ld l, h                                       ; $677f: $6c
    ld l, l                                       ; $6780: $6d
    rst $28                                       ; $6781: $ef
    ld l, [hl]                                    ; $6782: $6e
    ld l, a                                       ; $6783: $6f
    ld [hl], b                                    ; $6784: $70
    ld b, $6a                                     ; $6785: $06 $6a
    ld [hl], c                                    ; $6787: $71
    pop af                                        ; $6788: $f1
    ld [bc], a                                    ; $6789: $02
    ld [bc], a                                    ; $678a: $02
    ld [bc], a                                    ; $678b: $02
    ld [bc], a                                    ; $678c: $02
    ld [bc], a                                    ; $678d: $02
    ld [bc], a                                    ; $678e: $02
    ld [bc], a                                    ; $678f: $02
    ld [bc], a                                    ; $6790: $02
    ld [bc], a                                    ; $6791: $02
    ld [bc], a                                    ; $6792: $02
    ld [bc], a                                    ; $6793: $02
    ld [bc], a                                    ; $6794: $02
    ld [bc], a                                    ; $6795: $02
    ld [bc], a                                    ; $6796: $02
    ld [bc], a                                    ; $6797: $02
    inc h                                         ; $6798: $24
    ld [hl], d                                    ; $6799: $72
    ld [hl], e                                    ; $679a: $73
    ld [hl], h                                    ; $679b: $74
    ld [hl], l                                    ; $679c: $75
    halt                                          ; $679d: $76
    ld [hl], a                                    ; $679e: $77
    ld a, b                                       ; $679f: $78
    halt                                          ; $67a0: $76
    ld a, c                                       ; $67a1: $79
    ld a, d                                       ; $67a2: $7a
    ld a, e                                       ; $67a3: $7b
    ld a, h                                       ; $67a4: $7c
    dec h                                         ; $67a5: $25
    ld h, $27                                     ; $67a6: $26 $27
    jr z, jr_088_67ad                             ; $67a8: $28 $03

    inc bc                                        ; $67aa: $03
    inc bc                                        ; $67ab: $03
    inc bc                                        ; $67ac: $03

jr_088_67ad:
    inc bc                                        ; $67ad: $03
    inc bc                                        ; $67ae: $03
    inc bc                                        ; $67af: $03
    inc hl                                        ; $67b0: $23
    ld bc, $0101                                  ; $67b1: $01 $01 $01
    ld bc, $0101                                  ; $67b4: $01 $01 $01
    ld bc, $2a01                                  ; $67b7: $01 $01 $2a
    add hl, hl                                    ; $67ba: $29
    jp c, Jump_000_2e0d                           ; $67bb: $da $0d $2e

    dec l                                         ; $67be: $2d
    ld b, d                                       ; $67bf: $42
    ld de, $7e7d                                  ; $67c0: $11 $7d $7e
    ld d, d                                       ; $67c3: $52
    dec d                                         ; $67c4: $15
    inc sp                                        ; $67c5: $33
    inc [hl]                                      ; $67c6: $34
    dec [hl]                                      ; $67c7: $35
    add hl, de                                    ; $67c8: $19
    inc hl                                        ; $67c9: $23
    inc hl                                        ; $67ca: $23
    ld h, d                                       ; $67cb: $62
    ld [bc], a                                    ; $67cc: $02
    inc hl                                        ; $67cd: $23
    inc hl                                        ; $67ce: $23
    rlca                                          ; $67cf: $07
    rlca                                          ; $67d0: $07
    ld bc, $0101                                  ; $67d1: $01 $01 $01
    ld bc, $0101                                  ; $67d4: $01 $01 $01
    ld bc, $1a01                                  ; $67d7: $01 $01 $1a
    inc c                                         ; $67da: $0c
    dec bc                                        ; $67db: $0b
    ld a, [bc]                                    ; $67dc: $0a
    dec hl                                        ; $67dd: $2b
    db $10                                        ; $67de: $10
    rrca                                          ; $67df: $0f
    ld c, $2f                                     ; $67e0: $0e $2f
    inc d                                         ; $67e2: $14
    inc de                                        ; $67e3: $13
    ld [de], a                                    ; $67e4: $12
    inc sp                                        ; $67e5: $33
    jr jr_088_67ff                                ; $67e6: $18 $17

    ld d, $02                                     ; $67e8: $16 $02
    inc h                                         ; $67ea: $24
    inc h                                         ; $67eb: $24
    inc h                                         ; $67ec: $24
    rlca                                          ; $67ed: $07
    inc h                                         ; $67ee: $24
    inc h                                         ; $67ef: $24
    inc h                                         ; $67f0: $24
    rlca                                          ; $67f1: $07
    inc h                                         ; $67f2: $24
    inc h                                         ; $67f3: $24
    inc h                                         ; $67f4: $24
    ld bc, $2424                                  ; $67f5: $01 $24 $24
    inc h                                         ; $67f8: $24
    ld c, a                                       ; $67f9: $4f
    jr c, @+$39                                   ; $67fa: $38 $37

    ld [hl], $3a                                  ; $67fc: $36 $3a
    dec sp                                        ; $67fe: $3b

jr_088_67ff:
    inc a                                         ; $67ff: $3c
    dec a                                         ; $6800: $3d
    ld a, $3f                                     ; $6801: $3e $3f
    ld b, b                                       ; $6803: $40
    ld b, c                                       ; $6804: $41
    dec hl                                        ; $6805: $2b
    inc l                                         ; $6806: $2c
    ld b, d                                       ; $6807: $42
    ld de, $2401                                  ; $6808: $11 $01 $24
    inc h                                         ; $680b: $24
    inc h                                         ; $680c: $24
    ld bc, $0707                                  ; $680d: $01 $07 $07
    rlca                                          ; $6810: $07
    ld bc, $0101                                  ; $6811: $01 $01 $01
    rlca                                          ; $6814: $07
    ld bc, $0101                                  ; $6815: $01 $01 $01
    rlca                                          ; $6818: $07
    ld hl, $2322                                  ; $6819: $21 $22 $23
    inc h                                         ; $681c: $24
    dec h                                         ; $681d: $25
    ld h, $27                                     ; $681e: $26 $27
    jr z, jr_088_6865                             ; $6820: $28 $43

    ld b, h                                       ; $6822: $44
    ld b, l                                       ; $6823: $45
    ld b, [hl]                                    ; $6824: $46
    ld b, a                                       ; $6825: $47
    ld c, b                                       ; $6826: $48
    ld c, c                                       ; $6827: $49
    ld c, d                                       ; $6828: $4a
    ld bc, $0101                                  ; $6829: $01 $01 $01
    ld bc, $0101                                  ; $682c: $01 $01 $01
    ld bc, $0101                                  ; $682f: $01 $01 $01
    ld bc, $0101                                  ; $6832: $01 $01 $01
    ld bc, $0101                                  ; $6835: $01 $01 $01
    ld bc, $302f                                  ; $6838: $01 $2f $30
    ld d, d                                       ; $683b: $52
    dec d                                         ; $683c: $15
    inc sp                                        ; $683d: $33
    inc [hl]                                      ; $683e: $34
    dec [hl]                                      ; $683f: $35
    add hl, de                                    ; $6840: $19
    ld c, a                                       ; $6841: $4f
    ld d, b                                       ; $6842: $50
    ld d, c                                       ; $6843: $51
    add hl, sp                                    ; $6844: $39
    ld a, [hl-]                                   ; $6845: $3a
    dec sp                                        ; $6846: $3b
    inc a                                         ; $6847: $3c
    dec a                                         ; $6848: $3d
    ld bc, $0101                                  ; $6849: $01 $01 $01
    rlca                                          ; $684c: $07
    ld bc, $0101                                  ; $684d: $01 $01 $01
    rlca                                          ; $6850: $07
    ld bc, $0101                                  ; $6851: $01 $01 $01
    rlca                                          ; $6854: $07
    ld bc, $0101                                  ; $6855: $01 $01 $01
    rlca                                          ; $6858: $07
    push hl                                       ; $6859: $e5
    pop hl                                        ; $685a: $e1
    pop hl                                        ; $685b: $e1
    pop hl                                        ; $685c: $e1
    push hl                                       ; $685d: $e5
    pop hl                                        ; $685e: $e1
    pop hl                                        ; $685f: $e1
    pop hl                                        ; $6860: $e1
    push hl                                       ; $6861: $e5
    pop hl                                        ; $6862: $e1
    pop hl                                        ; $6863: $e1
    pop hl                                        ; $6864: $e1

jr_088_6865:
    push hl                                       ; $6865: $e5
    pop hl                                        ; $6866: $e1
    pop hl                                        ; $6867: $e1
    pop hl                                        ; $6868: $e1
    add b                                         ; $6869: $80
    add b                                         ; $686a: $80
    add b                                         ; $686b: $80
    add b                                         ; $686c: $80
    add b                                         ; $686d: $80
    add b                                         ; $686e: $80
    add b                                         ; $686f: $80
    add b                                         ; $6870: $80
    add b                                         ; $6871: $80
    add b                                         ; $6872: $80
    add b                                         ; $6873: $80
    add b                                         ; $6874: $80
    add b                                         ; $6875: $80
    add b                                         ; $6876: $80
    add b                                         ; $6877: $80
    add b                                         ; $6878: $80
    ld a, $3f                                     ; $6879: $3e $3f
    ld b, b                                       ; $687b: $40
    ld b, c                                       ; $687c: $41
    dec hl                                        ; $687d: $2b
    inc l                                         ; $687e: $2c
    ld b, d                                       ; $687f: $42
    ld de, $302f                                  ; $6880: $11 $2f $30
    ld d, d                                       ; $6883: $52
    dec d                                         ; $6884: $15
    inc sp                                        ; $6885: $33
    inc [hl]                                      ; $6886: $34
    dec [hl]                                      ; $6887: $35
    ld a, a                                       ; $6888: $7f
    rlca                                          ; $6889: $07
    ld bc, $0707                                  ; $688a: $01 $07 $07
    rlca                                          ; $688d: $07
    ld bc, $0101                                  ; $688e: $01 $01 $01
    rlca                                          ; $6891: $07
    ld bc, $0101                                  ; $6892: $01 $01 $01
    rlca                                          ; $6895: $07
    rlca                                          ; $6896: $07
    ld bc, $4b85                                  ; $6897: $01 $85 $4b
    ld c, h                                       ; $689a: $4c
    ld c, l                                       ; $689b: $4d
    ld c, [hl]                                    ; $689c: $4e
    dec e                                         ; $689d: $1d
    ld e, $1f                                     ; $689e: $1e $1f
    jr nz, jr_088_68c3                            ; $68a0: $20 $21

    ld [hl+], a                                   ; $68a2: $22
    inc hl                                        ; $68a3: $23
    inc h                                         ; $68a4: $24
    dec h                                         ; $68a5: $25
    ld h, $27                                     ; $68a6: $26 $27
    jr z, @+$09                                   ; $68a8: $28 $07

    rlca                                          ; $68aa: $07
    rlca                                          ; $68ab: $07
    ld bc, $0101                                  ; $68ac: $01 $01 $01
    ld bc, $0101                                  ; $68af: $01 $01 $01
    ld bc, $0101                                  ; $68b2: $01 $01 $01
    ld bc, $0101                                  ; $68b5: $01 $01 $01
    ld bc, $3f3e                                  ; $68b8: $01 $3e $3f
    ld b, b                                       ; $68bb: $40
    ld b, c                                       ; $68bc: $41
    dec hl                                        ; $68bd: $2b
    inc l                                         ; $68be: $2c
    ld b, d                                       ; $68bf: $42
    ld de, $302f                                  ; $68c0: $11 $2f $30

jr_088_68c3:
    ld d, d                                       ; $68c3: $52
    add b                                         ; $68c4: $80
    inc sp                                        ; $68c5: $33
    inc [hl]                                      ; $68c6: $34
    dec [hl]                                      ; $68c7: $35
    add c                                         ; $68c8: $81
    ld bc, $0101                                  ; $68c9: $01 $01 $01
    ld bc, $0101                                  ; $68cc: $01 $01 $01
    ld bc, $0101                                  ; $68cf: $01 $01 $01
    ld bc, $0901                                  ; $68d2: $01 $01 $09
    ld bc, $0101                                  ; $68d5: $01 $01 $01
    add hl, bc                                    ; $68d8: $09
    add d                                         ; $68d9: $82
    add e                                         ; $68da: $83
    add h                                         ; $68db: $84
    add l                                         ; $68dc: $85
    add [hl]                                      ; $68dd: $86
    add [hl]                                      ; $68de: $86
    add a                                         ; $68df: $87
    adc b                                         ; $68e0: $88
    add [hl]                                      ; $68e1: $86
    add [hl]                                      ; $68e2: $86
    add a                                         ; $68e3: $87
    adc c                                         ; $68e4: $89
    add [hl]                                      ; $68e5: $86
    add [hl]                                      ; $68e6: $86
    add a                                         ; $68e7: $87
    adc b                                         ; $68e8: $88
    adc l                                         ; $68e9: $8d
    adc l                                         ; $68ea: $8d
    adc l                                         ; $68eb: $8d
    adc l                                         ; $68ec: $8d
    adc l                                         ; $68ed: $8d
    adc l                                         ; $68ee: $8d
    adc l                                         ; $68ef: $8d
    adc l                                         ; $68f0: $8d
    adc l                                         ; $68f1: $8d
    adc l                                         ; $68f2: $8d
    adc l                                         ; $68f3: $8d
    adc l                                         ; $68f4: $8d
    dec c                                         ; $68f5: $0d
    dec c                                         ; $68f6: $0d
    dec c                                         ; $68f7: $0d
    dec c                                         ; $68f8: $0d
    ld b, e                                       ; $68f9: $43
    ld b, h                                       ; $68fa: $44
    ld b, l                                       ; $68fb: $45
    ld b, [hl]                                    ; $68fc: $46
    ld b, a                                       ; $68fd: $47
    ld c, b                                       ; $68fe: $48
    adc d                                         ; $68ff: $8a
    ld c, d                                       ; $6900: $4a
    ld c, e                                       ; $6901: $4b
    adc e                                         ; $6902: $8b
    adc h                                         ; $6903: $8c
    adc l                                         ; $6904: $8d
    dec e                                         ; $6905: $1d
    adc [hl]                                      ; $6906: $8e
    adc a                                         ; $6907: $8f
    sub b                                         ; $6908: $90
    ld bc, $0101                                  ; $6909: $01 $01 $01
    ld bc, $0101                                  ; $690c: $01 $01 $01
    add hl, bc                                    ; $690f: $09
    ld bc, $0901                                  ; $6910: $01 $01 $09
    adc l                                         ; $6913: $8d
    add hl, bc                                    ; $6914: $09
    ld bc, $0d09                                  ; $6915: $01 $09 $0d
    dec c                                         ; $6918: $0d
    ld c, a                                       ; $6919: $4f
    ld d, b                                       ; $691a: $50
    ld d, c                                       ; $691b: $51
    sub c                                         ; $691c: $91
    ld a, [hl-]                                   ; $691d: $3a
    dec sp                                        ; $691e: $3b
    inc a                                         ; $691f: $3c
    sub d                                         ; $6920: $92
    ld a, $3f                                     ; $6921: $3e $3f
    ld b, b                                       ; $6923: $40
    sub e                                         ; $6924: $93
    sub h                                         ; $6925: $94
    inc l                                         ; $6926: $2c
    ld b, d                                       ; $6927: $42
    ld de, $0101                                  ; $6928: $11 $01 $01
    ld bc, $0109                                  ; $692b: $01 $09 $01
    ld bc, $0901                                  ; $692e: $01 $01 $09
    ld bc, $0101                                  ; $6931: $01 $01 $01
    add hl, bc                                    ; $6934: $09
    add hl, bc                                    ; $6935: $09
    ld bc, $0101                                  ; $6936: $01 $01 $01
    add [hl]                                      ; $6939: $86
    add [hl]                                      ; $693a: $86
    add a                                         ; $693b: $87
    sub l                                         ; $693c: $95
    sub [hl]                                      ; $693d: $96
    sub a                                         ; $693e: $97
    sbc b                                         ; $693f: $98
    sbc c                                         ; $6940: $99
    sbc d                                         ; $6941: $9a
    sbc e                                         ; $6942: $9b
    sbc e                                         ; $6943: $9b
    sbc h                                         ; $6944: $9c
    sbc l                                         ; $6945: $9d
    rst $28                                       ; $6946: $ef
    rst $28                                       ; $6947: $ef
    sbc [hl]                                      ; $6948: $9e
    dec c                                         ; $6949: $0d
    dec c                                         ; $694a: $0d
    dec c                                         ; $694b: $0d
    dec c                                         ; $694c: $0d
    dec c                                         ; $694d: $0d
    dec c                                         ; $694e: $0d
    dec c                                         ; $694f: $0d
    dec c                                         ; $6950: $0d
    dec c                                         ; $6951: $0d
    dec c                                         ; $6952: $0d
    dec c                                         ; $6953: $0d
    dec c                                         ; $6954: $0d
    dec c                                         ; $6955: $0d
    dec b                                         ; $6956: $05
    dec b                                         ; $6957: $05
    dec c                                         ; $6958: $0d
    ld hl, $a09f                                  ; $6959: $21 $9f $a0
    and c                                         ; $695c: $a1
    dec h                                         ; $695d: $25
    and d                                         ; $695e: $a2
    and e                                         ; $695f: $a3
    and h                                         ; $6960: $a4
    ld b, e                                       ; $6961: $43
    ld b, h                                       ; $6962: $44
    and l                                         ; $6963: $a5
    and [hl]                                      ; $6964: $a6
    ld b, a                                       ; $6965: $47
    ld c, b                                       ; $6966: $48
    ld c, c                                       ; $6967: $49
    ld c, d                                       ; $6968: $4a
    ld bc, $0d09                                  ; $6969: $01 $09 $0d
    dec c                                         ; $696c: $0d
    ld bc, $0e09                                  ; $696d: $01 $09 $0e
    ld c, $01                                     ; $6970: $0e $01
    ld bc, $0909                                  ; $6972: $01 $09 $09
    ld bc, $0101                                  ; $6975: $01 $01 $01
    ld bc, $30a7                                  ; $6978: $01 $a7 $30
    ld d, d                                       ; $697b: $52
    dec d                                         ; $697c: $15
    xor b                                         ; $697d: $a8
    inc [hl]                                      ; $697e: $34
    dec [hl]                                      ; $697f: $35
    add hl, de                                    ; $6980: $19
    ld c, a                                       ; $6981: $4f
    ld d, b                                       ; $6982: $50
    ld d, c                                       ; $6983: $51
    add hl, sp                                    ; $6984: $39
    ld a, [hl-]                                   ; $6985: $3a
    dec sp                                        ; $6986: $3b
    inc a                                         ; $6987: $3c
    dec a                                         ; $6988: $3d
    add hl, bc                                    ; $6989: $09
    ld bc, $0101                                  ; $698a: $01 $01 $01
    add hl, bc                                    ; $698d: $09
    ld bc, $0101                                  ; $698e: $01 $01 $01
    ld bc, $0101                                  ; $6991: $01 $01 $01
    ld bc, $0101                                  ; $6994: $01 $01 $01
    ld bc, $a901                                  ; $6997: $01 $01 $a9
    xor d                                         ; $699a: $aa
    xor d                                         ; $699b: $aa
    xor e                                         ; $699c: $ab
    xor h                                         ; $699d: $ac
    xor l                                         ; $699e: $ad
    xor l                                         ; $699f: $ad
    xor [hl]                                      ; $69a0: $ae
    xor c                                         ; $69a1: $a9
    xor d                                         ; $69a2: $aa
    xor d                                         ; $69a3: $aa
    xor a                                         ; $69a4: $af
    or b                                          ; $69a5: $b0
    or c                                          ; $69a6: $b1
    or d                                          ; $69a7: $b2
    or e                                          ; $69a8: $b3
    dec c                                         ; $69a9: $0d
    dec c                                         ; $69aa: $0d
    dec c                                         ; $69ab: $0d
    dec c                                         ; $69ac: $0d
    dec c                                         ; $69ad: $0d
    dec c                                         ; $69ae: $0d
    dec c                                         ; $69af: $0d
    dec c                                         ; $69b0: $0d
    dec c                                         ; $69b1: $0d
    dec c                                         ; $69b2: $0d
    dec c                                         ; $69b3: $0d
    dec c                                         ; $69b4: $0d
    ld c, $0e                                     ; $69b5: $0e $0e
    ld c, $0e                                     ; $69b7: $0e $0e
    ld c, e                                       ; $69b9: $4b
    ld c, h                                       ; $69ba: $4c
    ld c, l                                       ; $69bb: $4d
    ld c, [hl]                                    ; $69bc: $4e
    dec e                                         ; $69bd: $1d
    ld e, $1f                                     ; $69be: $1e $1f
    jr nz, jr_088_69e3                            ; $69c0: $20 $21

    ld [hl+], a                                   ; $69c2: $22
    inc hl                                        ; $69c3: $23
    inc h                                         ; $69c4: $24
    dec h                                         ; $69c5: $25
    ld h, $27                                     ; $69c6: $26 $27
    jr z, @+$03                                   ; $69c8: $28 $01

    ld bc, $0101                                  ; $69ca: $01 $01 $01
    ld bc, $0101                                  ; $69cd: $01 $01 $01
    ld bc, $0101                                  ; $69d0: $01 $01 $01
    ld bc, $0101                                  ; $69d3: $01 $01 $01
    ld bc, $0101                                  ; $69d6: $01 $01 $01
    ld a, $3f                                     ; $69d9: $3e $3f
    ld b, b                                       ; $69db: $40
    ld b, c                                       ; $69dc: $41
    dec hl                                        ; $69dd: $2b
    inc l                                         ; $69de: $2c
    ld b, d                                       ; $69df: $42
    ld de, $302f                                  ; $69e0: $11 $2f $30

jr_088_69e3:
    ld d, d                                       ; $69e3: $52
    dec d                                         ; $69e4: $15
    inc sp                                        ; $69e5: $33
    inc [hl]                                      ; $69e6: $34
    dec [hl]                                      ; $69e7: $35
    add hl, de                                    ; $69e8: $19
    ld bc, $0101                                  ; $69e9: $01 $01 $01
    ld bc, $0101                                  ; $69ec: $01 $01 $01
    ld bc, $0101                                  ; $69ef: $01 $01 $01
    ld bc, $0101                                  ; $69f2: $01 $01 $01
    ld bc, $0101                                  ; $69f5: $01 $01 $01
    ld bc, $4c4b                                  ; $69f8: $01 $4b $4c
    or h                                          ; $69fb: $b4
    or l                                          ; $69fc: $b5
    dec e                                         ; $69fd: $1d
    ld e, $b6                                     ; $69fe: $1e $b6
    rst $28                                       ; $6a00: $ef
    or a                                          ; $6a01: $b7
    cp b                                          ; $6a02: $b8
    cp c                                          ; $6a03: $b9
    cp d                                          ; $6a04: $ba
    cp e                                          ; $6a05: $bb
    cp h                                          ; $6a06: $bc
    cp l                                          ; $6a07: $bd
    cp [hl]                                       ; $6a08: $be
    ld bc, $8d01                                  ; $6a09: $01 $01 $8d
    adc l                                         ; $6a0c: $8d
    ld bc, $8d01                                  ; $6a0d: $01 $01 $8d
    add l                                         ; $6a10: $85
    adc l                                         ; $6a11: $8d
    add hl, bc                                    ; $6a12: $09
    dec c                                         ; $6a13: $0d
    dec c                                         ; $6a14: $0d
    dec c                                         ; $6a15: $0d
    dec c                                         ; $6a16: $0d
    dec c                                         ; $6a17: $0d
    dec c                                         ; $6a18: $0d
    or l                                          ; $6a19: $b5
    or l                                          ; $6a1a: $b5
    or l                                          ; $6a1b: $b5
    cp a                                          ; $6a1c: $bf
    rst $28                                       ; $6a1d: $ef
    rst $28                                       ; $6a1e: $ef
    rst $28                                       ; $6a1f: $ef
    ret nz                                        ; $6a20: $c0

    pop bc                                        ; $6a21: $c1
    jp nz, $c0c3                                  ; $6a22: $c2 $c3 $c0

    call nz, $c6c5                                ; $6a25: $c4 $c5 $c6
    ret nz                                        ; $6a28: $c0

    adc l                                         ; $6a29: $8d
    adc l                                         ; $6a2a: $8d
    adc l                                         ; $6a2b: $8d
    adc l                                         ; $6a2c: $8d
    add l                                         ; $6a2d: $85
    add l                                         ; $6a2e: $85
    add l                                         ; $6a2f: $85
    adc l                                         ; $6a30: $8d
    dec c                                         ; $6a31: $0d
    dec c                                         ; $6a32: $0d
    dec c                                         ; $6a33: $0d
    dec c                                         ; $6a34: $0d
    dec c                                         ; $6a35: $0d
    dec c                                         ; $6a36: $0d
    dec c                                         ; $6a37: $0d
    dec c                                         ; $6a38: $0d
    ld a, $3f                                     ; $6a39: $3e $3f
    ld b, b                                       ; $6a3b: $40
    ld b, c                                       ; $6a3c: $41
    dec hl                                        ; $6a3d: $2b
    inc l                                         ; $6a3e: $2c
    ld b, d                                       ; $6a3f: $42
    ld de, $302f                                  ; $6a40: $11 $2f $30
    ld d, d                                       ; $6a43: $52
    dec d                                         ; $6a44: $15
    inc sp                                        ; $6a45: $33
    inc [hl]                                      ; $6a46: $34
    dec [hl]                                      ; $6a47: $35
    add hl, de                                    ; $6a48: $19
    ld bc, $0101                                  ; $6a49: $01 $01 $01
    rlca                                          ; $6a4c: $07
    ld bc, $0101                                  ; $6a4d: $01 $01 $01
    rlca                                          ; $6a50: $07
    ld bc, $0101                                  ; $6a51: $01 $01 $01
    rlca                                          ; $6a54: $07
    ld bc, $0101                                  ; $6a55: $01 $01 $01
    rlca                                          ; $6a58: $07
    rst $00                                       ; $6a59: $c7
    ret z                                         ; $6a5a: $c8

    or [hl]                                       ; $6a5b: $b6
    rst $28                                       ; $6a5c: $ef
    ret                                           ; $6a5d: $c9


    jp z, $cbb6                                   ; $6a5e: $ca $b6 $cb

    call z, $b64c                                 ; $6a61: $cc $4c $b6
    call $1e1d                                    ; $6a64: $cd $1d $1e
    adc $cf                                       ; $6a67: $ce $cf
    dec c                                         ; $6a69: $0d
    dec c                                         ; $6a6a: $0d
    dec c                                         ; $6a6b: $0d
    dec b                                         ; $6a6c: $05
    ld c, $0e                                     ; $6a6d: $0e $0e
    dec c                                         ; $6a6f: $0d
    dec c                                         ; $6a70: $0d
    add hl, bc                                    ; $6a71: $09
    ld bc, $0d0d                                  ; $6a72: $01 $0d $0d
    ld bc, $0d01                                  ; $6a75: $01 $01 $0d
    dec c                                         ; $6a78: $0d
    ret nc                                        ; $6a79: $d0

    pop de                                        ; $6a7a: $d1
    jp nc, $d3c0                                  ; $6a7b: $d2 $c0 $d3

    call nc, $d6d5                                ; $6a7e: $d4 $d5 $d6
    rst $10                                       ; $6a81: $d7
    ret c                                         ; $6a82: $d8

    reti                                          ; $6a83: $d9


    jp c, $cfcf                                   ; $6a84: $da $cf $cf

    rst $08                                       ; $6a87: $cf
    db $db                                        ; $6a88: $db
    dec c                                         ; $6a89: $0d
    dec c                                         ; $6a8a: $0d
    ld a, [bc]                                    ; $6a8b: $0a
    dec c                                         ; $6a8c: $0d
    dec c                                         ; $6a8d: $0d
    dec c                                         ; $6a8e: $0d
    dec c                                         ; $6a8f: $0d
    dec c                                         ; $6a90: $0d
    dec c                                         ; $6a91: $0d
    dec c                                         ; $6a92: $0d
    dec c                                         ; $6a93: $0d
    dec c                                         ; $6a94: $0d
    dec c                                         ; $6a95: $0d
    dec c                                         ; $6a96: $0d
    dec c                                         ; $6a97: $0d
    dec c                                         ; $6a98: $0d
    ld b, e                                       ; $6a99: $43
    ld b, h                                       ; $6a9a: $44
    ld b, l                                       ; $6a9b: $45
    ld b, [hl]                                    ; $6a9c: $46
    ld b, a                                       ; $6a9d: $47
    call c, Call_088_4add                         ; $6a9e: $dc $dd $4a
    sbc $b7                                       ; $6aa1: $de $b7
    rst $18                                       ; $6aa3: $df
    ld c, [hl]                                    ; $6aa4: $4e
    cp h                                          ; $6aa5: $bc
    cp e                                          ; $6aa6: $bb
    ldh [rNR41], a                                ; $6aa7: $e0 $20
    ld bc, $0101                                  ; $6aa9: $01 $01 $01
    ld bc, $0901                                  ; $6aac: $01 $01 $09
    add hl, bc                                    ; $6aaf: $09
    ld bc, $ad09                                  ; $6ab0: $01 $09 $ad
    add hl, bc                                    ; $6ab3: $09
    ld bc, $2d2d                                  ; $6ab4: $01 $2d $2d
    add hl, bc                                    ; $6ab7: $09
    ld bc, $504f                                  ; $6ab8: $01 $4f $50
    ld d, c                                       ; $6abb: $51
    add hl, sp                                    ; $6abc: $39
    ld a, [hl-]                                   ; $6abd: $3a
    dec sp                                        ; $6abe: $3b
    inc a                                         ; $6abf: $3c
    dec a                                         ; $6ac0: $3d
    ld a, $3f                                     ; $6ac1: $3e $3f
    ld b, b                                       ; $6ac3: $40
    ld b, c                                       ; $6ac4: $41
    dec hl                                        ; $6ac5: $2b
    inc l                                         ; $6ac6: $2c
    ld b, d                                       ; $6ac7: $42
    ld de, $0101                                  ; $6ac8: $11 $01 $01
    ld bc, $0107                                  ; $6acb: $01 $07 $01
    ld bc, $0701                                  ; $6ace: $01 $01 $07
    ld bc, $0101                                  ; $6ad1: $01 $01 $01
    rlca                                          ; $6ad4: $07
    ld bc, $0101                                  ; $6ad5: $01 $01 $01
    rlca                                          ; $6ad8: $07
    ld hl, $e122                                  ; $6ad9: $21 $22 $e1
    ld [c], a                                     ; $6adc: $e2
    dec h                                         ; $6add: $25
    ld h, $e3                                     ; $6ade: $26 $e3
    db $e4                                        ; $6ae0: $e4
    ld b, e                                       ; $6ae1: $43
    ld b, h                                       ; $6ae2: $44
    push hl                                       ; $6ae3: $e5
    and $47                                       ; $6ae4: $e6 $47
    ld c, b                                       ; $6ae6: $48
    ld c, c                                       ; $6ae7: $49
    ld c, d                                       ; $6ae8: $4a
    ld bc, $0f01                                  ; $6ae9: $01 $01 $0f
    ld c, $01                                     ; $6aec: $0e $01
    ld bc, $0e0f                                  ; $6aee: $01 $0f $0e
    ld bc, $0f01                                  ; $6af1: $01 $01 $0f
    rrca                                          ; $6af4: $0f
    ld bc, $0101                                  ; $6af5: $01 $01 $01
    ld bc, $e7e7                                  ; $6af8: $01 $e7 $e7
    ld [c], a                                     ; $6afb: $e2
    add sp, -$17                                  ; $6afc: $e8 $e9
    jp hl                                         ; $6afe: $e9


    db $e4                                        ; $6aff: $e4
    ld [$eceb], a                                 ; $6b00: $ea $eb $ec
    db $ed                                        ; $6b03: $ed
    xor $3a                                       ; $6b04: $ee $3a
    dec sp                                        ; $6b06: $3b
    inc a                                         ; $6b07: $3c
    dec a                                         ; $6b08: $3d
    ld c, $2e                                     ; $6b09: $0e $2e
    ld l, $0f                                     ; $6b0b: $2e $0f
    ld c, $2e                                     ; $6b0d: $0e $2e
    ld l, $0f                                     ; $6b0f: $2e $0f
    rrca                                          ; $6b11: $0f
    rrca                                          ; $6b12: $0f

jr_088_6b13:
    rrca                                          ; $6b13: $0f
    rrca                                          ; $6b14: $0f
    ld bc, $0101                                  ; $6b15: $01 $01 $01
    ld bc, $c7c8                                  ; $6b18: $01 $c8 $c7
    rst $28                                       ; $6b1b: $ef
    inc h                                         ; $6b1c: $24
    jp z, $f0c9                                   ; $6b1d: $ca $c9 $f0

    jr z, jr_088_6b13                             ; $6b20: $28 $f1

    ld a, [c]                                     ; $6b22: $f2
    di                                            ; $6b23: $f3
    ld b, [hl]                                    ; $6b24: $46
    ld b, a                                       ; $6b25: $47
    ld c, b                                       ; $6b26: $48
    ld c, c                                       ; $6b27: $49
    ld c, d                                       ; $6b28: $4a
    dec l                                         ; $6b29: $2d
    dec l                                         ; $6b2a: $2d
    add hl, bc                                    ; $6b2b: $09
    ld bc, $2e2e                                  ; $6b2c: $01 $2e $2e
    add hl, bc                                    ; $6b2f: $09
    ld bc, $0909                                  ; $6b30: $01 $09 $09
    add hl, bc                                    ; $6b33: $09
    ld bc, $0101                                  ; $6b34: $01 $01 $01
    ld bc, $2f01                                  ; $6b37: $01 $01 $2f
    jr nc, jr_088_6b8e                            ; $6b3a: $30 $52

    dec d                                         ; $6b3c: $15
    inc sp                                        ; $6b3d: $33
    inc [hl]                                      ; $6b3e: $34
    dec [hl]                                      ; $6b3f: $35
    add hl, de                                    ; $6b40: $19
    ld c, a                                       ; $6b41: $4f
    ld d, b                                       ; $6b42: $50
    ld d, c                                       ; $6b43: $51
    add hl, sp                                    ; $6b44: $39
    ld a, [hl-]                                   ; $6b45: $3a
    dec sp                                        ; $6b46: $3b
    inc a                                         ; $6b47: $3c
    dec a                                         ; $6b48: $3d
    ld bc, $0101                                  ; $6b49: $01 $01 $01
    rlca                                          ; $6b4c: $07
    ld bc, $0101                                  ; $6b4d: $01 $01 $01
    rlca                                          ; $6b50: $07
    ld bc, $0101                                  ; $6b51: $01 $01 $01
    rlca                                          ; $6b54: $07
    ld bc, $0101                                  ; $6b55: $01 $01 $01
    ld bc, $3f3e                                  ; $6b58: $01 $3e $3f
    ld b, b                                       ; $6b5b: $40
    ld b, c                                       ; $6b5c: $41
    dec hl                                        ; $6b5d: $2b
    inc l                                         ; $6b5e: $2c
    ld b, d                                       ; $6b5f: $42
    ld de, $302f                                  ; $6b60: $11 $2f $30
    ld d, d                                       ; $6b63: $52
    dec d                                         ; $6b64: $15
    inc sp                                        ; $6b65: $33
    inc [hl]                                      ; $6b66: $34
    dec [hl]                                      ; $6b67: $35
    add hl, de                                    ; $6b68: $19
    ld bc, $0101                                  ; $6b69: $01 $01 $01
    ld bc, $0101                                  ; $6b6c: $01 $01 $01
    ld bc, $0101                                  ; $6b6f: $01 $01 $01
    ld bc, $0701                                  ; $6b72: $01 $01 $07
    ld bc, $0101                                  ; $6b75: $01 $01 $01
    rlca                                          ; $6b78: $07
    db $f4                                        ; $6b79: $f4
    db $e3                                        ; $6b7a: $e3
    db $e4                                        ; $6b7b: $e4
    pop hl                                        ; $6b7c: $e1
    push af                                       ; $6b7d: $f5
    rst $20                                       ; $6b7e: $e7
    push hl                                       ; $6b7f: $e5
    pop hl                                        ; $6b80: $e1
    or $ea                                        ; $6b81: $f6 $ea
    rst $30                                       ; $6b83: $f7
    pop hl                                        ; $6b84: $e1
    ld hl, sp-$11                                 ; $6b85: $f8 $ef
    rst $30                                       ; $6b87: $f7
    pop hl                                        ; $6b88: $e1
    adc b                                         ; $6b89: $88
    add b                                         ; $6b8a: $80
    add b                                         ; $6b8b: $80
    add b                                         ; $6b8c: $80
    ld a, [bc]                                    ; $6b8d: $0a

jr_088_6b8e:
    ld [bc], a                                    ; $6b8e: $02
    add b                                         ; $6b8f: $80
    add b                                         ; $6b90: $80
    ld a, [bc]                                    ; $6b91: $0a
    ld [bc], a                                    ; $6b92: $02
    adc b                                         ; $6b93: $88
    add b                                         ; $6b94: $80
    ld a, [bc]                                    ; $6b95: $0a
    ld [bc], a                                    ; $6b96: $02
    adc b                                         ; $6b97: $88
    add b                                         ; $6b98: $80
    ld sp, hl                                     ; $6b99: $f9
    ld l, d                                       ; $6b9a: $6a
    rst $30                                       ; $6b9b: $f7
    pop hl                                        ; $6b9c: $e1
    ld a, [$f71b]                                 ; $6b9d: $fa $1b $f7
    pop hl                                        ; $6ba0: $e1
    ld b, e                                       ; $6ba1: $43
    ld b, h                                       ; $6ba2: $44
    rst $30                                       ; $6ba3: $f7
    ei                                            ; $6ba4: $fb
    ld b, a                                       ; $6ba5: $47
    ld c, b                                       ; $6ba6: $48
    push hl                                       ; $6ba7: $e5
    ei                                            ; $6ba8: $fb
    ld a, [bc]                                    ; $6ba9: $0a
    ld [bc], a                                    ; $6baa: $02
    adc b                                         ; $6bab: $88
    add b                                         ; $6bac: $80
    ld a, [bc]                                    ; $6bad: $0a
    ld [bc], a                                    ; $6bae: $02
    adc b                                         ; $6baf: $88
    add b                                         ; $6bb0: $80
    rlca                                          ; $6bb1: $07
    rlca                                          ; $6bb2: $07
    adc b                                         ; $6bb3: $88
    adc b                                         ; $6bb4: $88
    ld bc, $8007                                  ; $6bb5: $01 $07 $80
    adc b                                         ; $6bb8: $88
    db $fc                                        ; $6bb9: $fc
    db $e3                                        ; $6bba: $e3
    db $fd                                        ; $6bbb: $fd
    ei                                            ; $6bbc: $fb
    push hl                                       ; $6bbd: $e5
    pop hl                                        ; $6bbe: $e1
    pop hl                                        ; $6bbf: $e1
    pop hl                                        ; $6bc0: $e1
    push hl                                       ; $6bc1: $e5
    pop hl                                        ; $6bc2: $e1
    pop hl                                        ; $6bc3: $e1
    pop hl                                        ; $6bc4: $e1
    push hl                                       ; $6bc5: $e5
    pop hl                                        ; $6bc6: $e1
    pop hl                                        ; $6bc7: $e1
    pop hl                                        ; $6bc8: $e1
    adc b                                         ; $6bc9: $88
    add b                                         ; $6bca: $80
    adc b                                         ; $6bcb: $88
    adc b                                         ; $6bcc: $88
    add b                                         ; $6bcd: $80
    add b                                         ; $6bce: $80
    add b                                         ; $6bcf: $80
    add b                                         ; $6bd0: $80
    add b                                         ; $6bd1: $80
    add b                                         ; $6bd2: $80
    add b                                         ; $6bd3: $80
    add b                                         ; $6bd4: $80
    add b                                         ; $6bd5: $80
    add b                                         ; $6bd6: $80
    add b                                         ; $6bd7: $80
    add b                                         ; $6bd8: $80
    pop af                                        ; $6bd9: $f1
    ld d, b                                       ; $6bda: $50
    ld d, c                                       ; $6bdb: $51
    add hl, sp                                    ; $6bdc: $39
    ld a, [bc]                                    ; $6bdd: $0a
    dec bc                                        ; $6bde: $0b
    inc c                                         ; $6bdf: $0c
    dec a                                         ; $6be0: $3d
    ld c, $0f                                     ; $6be1: $0e $0f
    db $10                                        ; $6be3: $10
    ld b, c                                       ; $6be4: $41
    ld [de], a                                    ; $6be5: $12
    inc de                                        ; $6be6: $13
    inc d                                         ; $6be7: $14
    ld de, $0702                                  ; $6be8: $11 $02 $07
    rlca                                          ; $6beb: $07
    rlca                                          ; $6bec: $07
    ld [bc], a                                    ; $6bed: $02
    ld [bc], a                                    ; $6bee: $02
    ld [bc], a                                    ; $6bef: $02
    ld bc, $0202                                  ; $6bf0: $01 $02 $02
    ld [bc], a                                    ; $6bf3: $02
    ld bc, $0202                                  ; $6bf4: $01 $02 $02
    ld [bc], a                                    ; $6bf7: $02
    ld bc, $1716                                  ; $6bf8: $01 $16 $17
    jr @+$17                                      ; $6bfb: $18 $15

    ld [hl], $37                                  ; $6bfd: $36 $37
    jr c, jr_088_6c1a                             ; $6bff: $38 $19

    ld c, a                                       ; $6c01: $4f
    ld d, b                                       ; $6c02: $50
    ld d, c                                       ; $6c03: $51
    add hl, sp                                    ; $6c04: $39
    ld a, [hl-]                                   ; $6c05: $3a
    dec sp                                        ; $6c06: $3b
    inc a                                         ; $6c07: $3c
    dec a                                         ; $6c08: $3d
    ld [bc], a                                    ; $6c09: $02
    ld [bc], a                                    ; $6c0a: $02
    ld [bc], a                                    ; $6c0b: $02
    ld bc, $0202                                  ; $6c0c: $01 $02 $02
    ld [bc], a                                    ; $6c0f: $02
    ld bc, $0707                                  ; $6c10: $01 $07 $07
    rlca                                          ; $6c13: $07
    ld bc, $0107                                  ; $6c14: $01 $07 $01
    ld bc, $2101                                  ; $6c17: $01 $01 $21

jr_088_6c1a:
    ld [hl+], a                                   ; $6c1a: $22
    inc hl                                        ; $6c1b: $23
    inc h                                         ; $6c1c: $24
    dec h                                         ; $6c1d: $25
    ld h, $27                                     ; $6c1e: $26 $27
    jr z, jr_088_6c65                             ; $6c20: $28 $43

    ld b, h                                       ; $6c22: $44
    cp $ff                                        ; $6c23: $fe $ff
    ld b, a                                       ; $6c25: $47
    ld c, b                                       ; $6c26: $48
    nop                                           ; $6c27: $00
    ld bc, $0101                                  ; $6c28: $01 $01 $01
    ld bc, $0101                                  ; $6c2b: $01 $01 $01
    ld bc, $0101                                  ; $6c2e: $01 $01 $01
    ld bc, $8d01                                  ; $6c31: $01 $01 $8d
    adc l                                         ; $6c34: $8d
    ld bc, $8d01                                  ; $6c35: $01 $01 $8d
    adc l                                         ; $6c38: $8d
    cpl                                           ; $6c39: $2f
    jr nc, @+$54                                  ; $6c3a: $30 $52

    dec d                                         ; $6c3c: $15
    inc sp                                        ; $6c3d: $33
    inc [hl]                                      ; $6c3e: $34
    dec [hl]                                      ; $6c3f: $35
    add hl, de                                    ; $6c40: $19
    ld [bc], a                                    ; $6c41: $02
    inc bc                                        ; $6c42: $03
    inc b                                         ; $6c43: $04
    dec b                                         ; $6c44: $05
    ld b, $07                                     ; $6c45: $06 $07
    ld [$0109], sp                                ; $6c47: $08 $09 $01
    ld bc, $0101                                  ; $6c4a: $01 $01 $01
    ld bc, $0101                                  ; $6c4d: $01 $01 $01
    ld bc, $8d8d                                  ; $6c50: $01 $8d $8d
    adc l                                         ; $6c53: $8d
    adc l                                         ; $6c54: $8d
    adc l                                         ; $6c55: $8d
    adc l                                         ; $6c56: $8d
    adc l                                         ; $6c57: $8d
    adc l                                         ; $6c58: $8d
    ld a, $3f                                     ; $6c59: $3e $3f
    ld b, b                                       ; $6c5b: $40
    ld b, c                                       ; $6c5c: $41
    dec hl                                        ; $6c5d: $2b
    inc l                                         ; $6c5e: $2c
    ld b, d                                       ; $6c5f: $42
    ld de, $302f                                  ; $6c60: $11 $2f $30
    ld d, d                                       ; $6c63: $52
    dec d                                         ; $6c64: $15

jr_088_6c65:
    inc sp                                        ; $6c65: $33
    inc [hl]                                      ; $6c66: $34
    dec [hl]                                      ; $6c67: $35
    add hl, de                                    ; $6c68: $19
    rlca                                          ; $6c69: $07
    ld bc, $0101                                  ; $6c6a: $01 $01 $01
    rlca                                          ; $6c6d: $07
    ld bc, $0101                                  ; $6c6e: $01 $01 $01
    rlca                                          ; $6c71: $07
    ld bc, $0101                                  ; $6c72: $01 $01 $01
    rlca                                          ; $6c75: $07
    ld bc, $0101                                  ; $6c76: $01 $01 $01
    ld c, e                                       ; $6c79: $4b
    ld c, h                                       ; $6c7a: $4c
    ld a, [bc]                                    ; $6c7b: $0a
    dec bc                                        ; $6c7c: $0b
    dec e                                         ; $6c7d: $1d
    ld e, $0c                                     ; $6c7e: $1e $0c
    dec c                                         ; $6c80: $0d
    ld hl, $e122                                  ; $6c81: $21 $22 $e1
    ld c, $25                                     ; $6c84: $0e $25
    ld h, $e3                                     ; $6c86: $26 $e3
    db $e4                                        ; $6c88: $e4
    ld bc, $0d07                                  ; $6c89: $01 $07 $0d
    dec c                                         ; $6c8c: $0d
    ld bc, $0d07                                  ; $6c8d: $01 $07 $0d
    dec c                                         ; $6c90: $0d
    ld bc, $0f07                                  ; $6c91: $01 $07 $0f
    ld c, $01                                     ; $6c94: $0e $01
    rlca                                          ; $6c96: $07
    rrca                                          ; $6c97: $0f
    ld c, $0f                                     ; $6c98: $0e $0f
    db $10                                        ; $6c9a: $10
    ld de, $1209                                  ; $6c9b: $11 $09 $12
    ld [de], a                                    ; $6c9e: $12
    ld [de], a                                    ; $6c9f: $12
    inc de                                        ; $6ca0: $13
    inc d                                         ; $6ca1: $14
    inc d                                         ; $6ca2: $14
    ld c, $e8                                     ; $6ca3: $0e $e8
    jp hl                                         ; $6ca5: $e9


    jp hl                                         ; $6ca6: $e9


    db $e4                                        ; $6ca7: $e4
    ld [$0d0d], a                                 ; $6ca8: $ea $0d $0d
    dec c                                         ; $6cab: $0d
    dec c                                         ; $6cac: $0d
    dec c                                         ; $6cad: $0d
    dec c                                         ; $6cae: $0d
    dec c                                         ; $6caf: $0d
    dec c                                         ; $6cb0: $0d
    ld c, $2e                                     ; $6cb1: $0e $2e
    ld l, $0f                                     ; $6cb3: $2e $0f
    ld c, $2e                                     ; $6cb5: $0e $2e
    ld l, $0f                                     ; $6cb7: $2e $0f
    ld c, a                                       ; $6cb9: $4f
    ld d, b                                       ; $6cba: $50
    ld d, c                                       ; $6cbb: $51
    add hl, sp                                    ; $6cbc: $39
    ld a, [hl-]                                   ; $6cbd: $3a
    dec sp                                        ; $6cbe: $3b
    inc a                                         ; $6cbf: $3c
    dec a                                         ; $6cc0: $3d
    ld a, $3f                                     ; $6cc1: $3e $3f
    ld b, b                                       ; $6cc3: $40
    ld b, c                                       ; $6cc4: $41
    dec hl                                        ; $6cc5: $2b
    inc l                                         ; $6cc6: $2c
    ld b, d                                       ; $6cc7: $42
    ld de, $0107                                  ; $6cc8: $11 $07 $01
    ld bc, $0701                                  ; $6ccb: $01 $01 $07
    ld bc, $0101                                  ; $6cce: $01 $01 $01
    rlca                                          ; $6cd1: $07
    ld bc, $0101                                  ; $6cd2: $01 $01 $01
    rlca                                          ; $6cd5: $07
    ld bc, $0101                                  ; $6cd6: $01 $01 $01
    ld b, e                                       ; $6cd9: $43
    ld b, h                                       ; $6cda: $44
    push hl                                       ; $6cdb: $e5
    and $47                                       ; $6cdc: $e6 $47
    ld c, b                                       ; $6cde: $48
    ld c, c                                       ; $6cdf: $49
    ld c, d                                       ; $6ce0: $4a
    ld c, e                                       ; $6ce1: $4b
    ld c, h                                       ; $6ce2: $4c
    ld c, l                                       ; $6ce3: $4d
    ld c, [hl]                                    ; $6ce4: $4e
    dec e                                         ; $6ce5: $1d
    ld e, $1f                                     ; $6ce6: $1e $1f
    jr nz, jr_088_6ceb                            ; $6ce8: $20 $01

    rlca                                          ; $6cea: $07

jr_088_6ceb:
    rrca                                          ; $6ceb: $0f
    rrca                                          ; $6cec: $0f
    ld bc, $0101                                  ; $6ced: $01 $01 $01
    ld bc, $0101                                  ; $6cf0: $01 $01 $01
    ld bc, $0101                                  ; $6cf3: $01 $01 $01
    ld bc, $0101                                  ; $6cf6: $01 $01 $01
    db $eb                                        ; $6cf9: $eb
    db $ec                                        ; $6cfa: $ec
    db $ed                                        ; $6cfb: $ed
    xor $3a                                       ; $6cfc: $ee $3a
    dec sp                                        ; $6cfe: $3b
    inc a                                         ; $6cff: $3c
    dec a                                         ; $6d00: $3d
    ld a, $3f                                     ; $6d01: $3e $3f
    ld b, b                                       ; $6d03: $40
    ld b, c                                       ; $6d04: $41
    dec hl                                        ; $6d05: $2b
    inc l                                         ; $6d06: $2c
    ld b, d                                       ; $6d07: $42
    ld de, $0f0f                                  ; $6d08: $11 $0f $0f
    rrca                                          ; $6d0b: $0f
    rrca                                          ; $6d0c: $0f
    ld bc, $0101                                  ; $6d0d: $01 $01 $01
    ld bc, $0101                                  ; $6d10: $01 $01 $01
    ld bc, $0101                                  ; $6d13: $01 $01 $01
    ld bc, $0101                                  ; $6d16: $01 $01 $01
    dec d                                         ; $6d19: $15
    ld d, $17                                     ; $6d1a: $16 $17
    jr jr_088_6d37                                ; $6d1c: $18 $19

    ld a, [de]                                    ; $6d1e: $1a
    rst $28                                       ; $6d1f: $ef
    dec de                                        ; $6d20: $1b
    inc e                                         ; $6d21: $1c
    dec e                                         ; $6d22: $1d
    rst $28                                       ; $6d23: $ef
    dec de                                        ; $6d24: $1b
    ld e, $1f                                     ; $6d25: $1e $1f
    jr nz, @+$23                                  ; $6d27: $20 $21

    adc e                                         ; $6d29: $8b
    adc e                                         ; $6d2a: $8b
    adc e                                         ; $6d2b: $8b
    adc e                                         ; $6d2c: $8b
    adc e                                         ; $6d2d: $8b
    adc e                                         ; $6d2e: $8b
    add e                                         ; $6d2f: $83
    adc e                                         ; $6d30: $8b
    adc e                                         ; $6d31: $8b
    adc e                                         ; $6d32: $8b
    add e                                         ; $6d33: $83
    adc e                                         ; $6d34: $8b
    dec bc                                        ; $6d35: $0b
    dec bc                                        ; $6d36: $0b

jr_088_6d37:
    dec bc                                        ; $6d37: $0b
    dec bc                                        ; $6d38: $0b
    ld c, a                                       ; $6d39: $4f
    ld d, b                                       ; $6d3a: $50
    ld d, c                                       ; $6d3b: $51
    add hl, sp                                    ; $6d3c: $39
    ld a, [hl-]                                   ; $6d3d: $3a
    dec sp                                        ; $6d3e: $3b
    inc a                                         ; $6d3f: $3c
    dec a                                         ; $6d40: $3d
    ld a, $3f                                     ; $6d41: $3e $3f
    ld b, b                                       ; $6d43: $40
    ld b, c                                       ; $6d44: $41
    dec hl                                        ; $6d45: $2b
    inc l                                         ; $6d46: $2c
    ld b, d                                       ; $6d47: $42
    ld de, $0101                                  ; $6d48: $11 $01 $01
    ld bc, $0107                                  ; $6d4b: $01 $07 $01
    ld bc, $0701                                  ; $6d4e: $01 $01 $07
    rlca                                          ; $6d51: $07
    ld bc, $0701                                  ; $6d52: $01 $01 $07
    rlca                                          ; $6d55: $07
    ld bc, $0701                                  ; $6d56: $01 $01 $07
    ld hl, $2322                                  ; $6d59: $21 $22 $23
    inc h                                         ; $6d5c: $24
    dec h                                         ; $6d5d: $25
    ld h, $27                                     ; $6d5e: $26 $27
    jr z, jr_088_6da5                             ; $6d60: $28 $43

    ld b, h                                       ; $6d62: $44
    ld b, l                                       ; $6d63: $45
    ld b, [hl]                                    ; $6d64: $46
    ld b, a                                       ; $6d65: $47
    call c, Call_088_4add                         ; $6d66: $dc $dd $4a
    ld bc, $0101                                  ; $6d69: $01 $01 $01
    ld bc, $0101                                  ; $6d6c: $01 $01 $01
    ld bc, $0101                                  ; $6d6f: $01 $01 $01
    ld bc, $0101                                  ; $6d72: $01 $01 $01
    ld bc, $0909                                  ; $6d75: $01 $09 $09
    ld bc, $302f                                  ; $6d78: $01 $2f $30
    ld d, d                                       ; $6d7b: $52
    dec d                                         ; $6d7c: $15
    inc sp                                        ; $6d7d: $33
    inc [hl]                                      ; $6d7e: $34
    dec [hl]                                      ; $6d7f: $35
    add hl, de                                    ; $6d80: $19
    ld c, a                                       ; $6d81: $4f
    ld d, b                                       ; $6d82: $50
    ld d, c                                       ; $6d83: $51
    ld [hl+], a                                   ; $6d84: $22
    ld a, [hl-]                                   ; $6d85: $3a
    dec sp                                        ; $6d86: $3b
    inc a                                         ; $6d87: $3c
    inc hl                                        ; $6d88: $23
    ld bc, $0101                                  ; $6d89: $01 $01 $01
    ld bc, $0101                                  ; $6d8c: $01 $01 $01
    ld bc, $0101                                  ; $6d8f: $01 $01 $01
    ld bc, $0901                                  ; $6d92: $01 $01 $09
    ld bc, $0101                                  ; $6d95: $01 $01 $01
    add hl, bc                                    ; $6d98: $09
    inc h                                         ; $6d99: $24
    dec h                                         ; $6d9a: $25
    ld h, $27                                     ; $6d9b: $26 $27
    jr z, jr_088_6dc8                             ; $6d9d: $28 $29

    ld a, [hl+]                                   ; $6d9f: $2a
    dec hl                                        ; $6da0: $2b
    ld [c], a                                     ; $6da1: $e2
    rst $20                                       ; $6da2: $e7
    rst $20                                       ; $6da3: $e7
    ld [c], a                                     ; $6da4: $e2

jr_088_6da5:
    db $e4                                        ; $6da5: $e4
    jp hl                                         ; $6da6: $e9


    jp hl                                         ; $6da7: $e9


    db $e4                                        ; $6da8: $e4
    dec bc                                        ; $6da9: $0b
    dec bc                                        ; $6daa: $0b
    dec bc                                        ; $6dab: $0b
    dec bc                                        ; $6dac: $0b
    dec bc                                        ; $6dad: $0b
    dec bc                                        ; $6dae: $0b
    dec bc                                        ; $6daf: $0b
    dec bc                                        ; $6db0: $0b
    ld c, $0e                                     ; $6db1: $0e $0e
    ld l, $2e                                     ; $6db3: $2e $2e
    ld c, $0e                                     ; $6db5: $0e $0e
    ld l, $2e                                     ; $6db7: $2e $2e
    cpl                                           ; $6db9: $2f
    jr nc, @+$54                                  ; $6dba: $30 $52

    dec d                                         ; $6dbc: $15
    inc sp                                        ; $6dbd: $33
    inc [hl]                                      ; $6dbe: $34
    dec [hl]                                      ; $6dbf: $35
    add hl, de                                    ; $6dc0: $19
    inc l                                         ; $6dc1: $2c
    ld d, b                                       ; $6dc2: $50
    ld d, c                                       ; $6dc3: $51
    add hl, sp                                    ; $6dc4: $39
    dec l                                         ; $6dc5: $2d
    dec sp                                        ; $6dc6: $3b
    inc a                                         ; $6dc7: $3c

jr_088_6dc8:
    dec a                                         ; $6dc8: $3d
    rlca                                          ; $6dc9: $07
    ld bc, $0701                                  ; $6dca: $01 $01 $07
    rlca                                          ; $6dcd: $07
    ld bc, $0701                                  ; $6dce: $01 $01 $07
    rrca                                          ; $6dd1: $0f
    ld bc, $0701                                  ; $6dd2: $01 $01 $07
    rrca                                          ; $6dd5: $0f
    ld bc, $0701                                  ; $6dd6: $01 $01 $07
    sbc $8c                                       ; $6dd9: $de $8c
    rst $18                                       ; $6ddb: $df
    ld c, [hl]                                    ; $6ddc: $4e
    sub b                                         ; $6ddd: $90
    adc a                                         ; $6dde: $8f
    ldh [rNR41], a                                ; $6ddf: $e0 $20
    and c                                         ; $6de1: $a1
    and b                                         ; $6de2: $a0
    rst $28                                       ; $6de3: $ef
    inc h                                         ; $6de4: $24
    and h                                         ; $6de5: $a4
    and e                                         ; $6de6: $a3
    ldh a, [$28]                                  ; $6de7: $f0 $28
    add hl, bc                                    ; $6de9: $09
    xor l                                         ; $6dea: $ad
    add hl, bc                                    ; $6deb: $09
    ld bc, $2d2d                                  ; $6dec: $01 $2d $2d
    add hl, bc                                    ; $6def: $09
    ld bc, $2d2d                                  ; $6df0: $01 $2d $2d
    add hl, bc                                    ; $6df3: $09
    ld bc, $2e2e                                  ; $6df4: $01 $2e $2e
    add hl, bc                                    ; $6df7: $09
    ld bc, $2f2e                                  ; $6df8: $01 $2e $2f
    jr nc, @+$33                                  ; $6dfb: $30 $31

    dec e                                         ; $6dfd: $1d
    ld e, $1f                                     ; $6dfe: $1e $1f
    jr nz, jr_088_6e23                            ; $6e00: $20 $21

    ld [hl+], a                                   ; $6e02: $22
    inc hl                                        ; $6e03: $23
    inc h                                         ; $6e04: $24
    dec h                                         ; $6e05: $25
    ld h, $27                                     ; $6e06: $26 $27
    jr z, jr_088_6e19                             ; $6e08: $28 $0f

    rrca                                          ; $6e0a: $0f
    rrca                                          ; $6e0b: $0f
    rrca                                          ; $6e0c: $0f
    ld bc, $0101                                  ; $6e0d: $01 $01 $01
    ld bc, $0101                                  ; $6e10: $01 $01 $01
    ld bc, $0101                                  ; $6e13: $01 $01 $01
    ld bc, $0101                                  ; $6e16: $01 $01 $01

jr_088_6e19:
    ld a, $3f                                     ; $6e19: $3e $3f
    ld b, b                                       ; $6e1b: $40
    ld b, c                                       ; $6e1c: $41
    dec hl                                        ; $6e1d: $2b
    inc l                                         ; $6e1e: $2c
    ld b, d                                       ; $6e1f: $42
    ld de, $302f                                  ; $6e20: $11 $2f $30

jr_088_6e23:
    ld d, d                                       ; $6e23: $52
    dec d                                         ; $6e24: $15
    inc sp                                        ; $6e25: $33
    inc [hl]                                      ; $6e26: $34
    dec [hl]                                      ; $6e27: $35
    pop af                                        ; $6e28: $f1
    rlca                                          ; $6e29: $07
    ld bc, $0701                                  ; $6e2a: $01 $01 $07
    ld bc, $0101                                  ; $6e2d: $01 $01 $01
    rlca                                          ; $6e30: $07
    ld bc, $0101                                  ; $6e31: $01 $01 $01
    rlca                                          ; $6e34: $07
    ld bc, $0101                                  ; $6e35: $01 $01 $01
    and d                                         ; $6e38: $a2
    pop af                                        ; $6e39: $f1
    ld a, [c]                                     ; $6e3a: $f2
    di                                            ; $6e3b: $f3
    ld b, [hl]                                    ; $6e3c: $46
    ld b, a                                       ; $6e3d: $47
    ld c, b                                       ; $6e3e: $48
    ld c, c                                       ; $6e3f: $49
    ld c, d                                       ; $6e40: $4a
    ld c, e                                       ; $6e41: $4b
    ld c, h                                       ; $6e42: $4c
    ld c, l                                       ; $6e43: $4d
    ld c, [hl]                                    ; $6e44: $4e
    dec e                                         ; $6e45: $1d
    ld e, $1f                                     ; $6e46: $1e $1f
    jr nz, @+$0b                                  ; $6e48: $20 $09

    add hl, bc                                    ; $6e4a: $09
    add hl, bc                                    ; $6e4b: $09
    ld bc, $0101                                  ; $6e4c: $01 $01 $01
    ld bc, $0101                                  ; $6e4f: $01 $01 $01
    ld bc, $0101                                  ; $6e52: $01 $01 $01
    ld bc, $0101                                  ; $6e55: $01 $01 $01
    ld bc, $0c4f                                  ; $6e58: $01 $4f $0c
    dec bc                                        ; $6e5b: $0b
    ld a, [bc]                                    ; $6e5c: $0a
    ld a, [hl-]                                   ; $6e5d: $3a
    db $10                                        ; $6e5e: $10
    rrca                                          ; $6e5f: $0f
    ld c, $3e                                     ; $6e60: $0e $3e
    inc d                                         ; $6e62: $14
    inc de                                        ; $6e63: $13
    ld [de], a                                    ; $6e64: $12
    dec hl                                        ; $6e65: $2b
    jr jr_088_6e7f                                ; $6e66: $18 $17

    ld d, $01                                     ; $6e68: $16 $01
    and d                                         ; $6e6a: $a2
    and d                                         ; $6e6b: $a2
    and d                                         ; $6e6c: $a2
    ld bc, $a2a2                                  ; $6e6d: $01 $a2 $a2
    and d                                         ; $6e70: $a2
    ld bc, $2222                                  ; $6e71: $01 $22 $22
    ld [hl+], a                                   ; $6e74: $22
    ld bc, $2222                                  ; $6e75: $01 $22 $22
    ld [hl+], a                                   ; $6e78: $22
    pop hl                                        ; $6e79: $e1
    pop hl                                        ; $6e7a: $e1
    pop hl                                        ; $6e7b: $e1
    ld [hl-], a                                   ; $6e7c: $32
    pop hl                                        ; $6e7d: $e1
    pop hl                                        ; $6e7e: $e1

jr_088_6e7f:
    pop hl                                        ; $6e7f: $e1
    pop hl                                        ; $6e80: $e1
    pop hl                                        ; $6e81: $e1
    pop hl                                        ; $6e82: $e1
    pop hl                                        ; $6e83: $e1
    pop hl                                        ; $6e84: $e1
    pop hl                                        ; $6e85: $e1
    pop hl                                        ; $6e86: $e1
    pop hl                                        ; $6e87: $e1
    pop hl                                        ; $6e88: $e1
    add b                                         ; $6e89: $80
    add b                                         ; $6e8a: $80
    add b                                         ; $6e8b: $80
    adc b                                         ; $6e8c: $88
    add b                                         ; $6e8d: $80
    add b                                         ; $6e8e: $80
    add b                                         ; $6e8f: $80
    add b                                         ; $6e90: $80
    add b                                         ; $6e91: $80
    add b                                         ; $6e92: $80
    add b                                         ; $6e93: $80
    add b                                         ; $6e94: $80
    add b                                         ; $6e95: $80
    add b                                         ; $6e96: $80
    add b                                         ; $6e97: $80
    add b                                         ; $6e98: $80
    db $e3                                        ; $6e99: $e3
    db $e3                                        ; $6e9a: $e3
    db $e3                                        ; $6e9b: $e3
    db $e3                                        ; $6e9c: $e3
    pop hl                                        ; $6e9d: $e1
    pop hl                                        ; $6e9e: $e1
    pop hl                                        ; $6e9f: $e1
    pop hl                                        ; $6ea0: $e1
    pop hl                                        ; $6ea1: $e1
    pop hl                                        ; $6ea2: $e1
    pop hl                                        ; $6ea3: $e1
    pop hl                                        ; $6ea4: $e1
    pop hl                                        ; $6ea5: $e1
    pop hl                                        ; $6ea6: $e1
    pop hl                                        ; $6ea7: $e1
    pop hl                                        ; $6ea8: $e1
    add b                                         ; $6ea9: $80
    add b                                         ; $6eaa: $80
    add b                                         ; $6eab: $80
    add b                                         ; $6eac: $80
    add b                                         ; $6ead: $80
    add b                                         ; $6eae: $80
    add b                                         ; $6eaf: $80
    add b                                         ; $6eb0: $80
    add b                                         ; $6eb1: $80
    add b                                         ; $6eb2: $80
    add b                                         ; $6eb3: $80
    add b                                         ; $6eb4: $80
    add b                                         ; $6eb5: $80
    add b                                         ; $6eb6: $80
    add b                                         ; $6eb7: $80
    add b                                         ; $6eb8: $80
    db $fd                                        ; $6eb9: $fd
    pop hl                                        ; $6eba: $e1
    pop hl                                        ; $6ebb: $e1
    pop hl                                        ; $6ebc: $e1
    pop hl                                        ; $6ebd: $e1
    pop hl                                        ; $6ebe: $e1
    pop hl                                        ; $6ebf: $e1
    pop hl                                        ; $6ec0: $e1
    pop hl                                        ; $6ec1: $e1
    pop hl                                        ; $6ec2: $e1
    pop hl                                        ; $6ec3: $e1
    pop hl                                        ; $6ec4: $e1
    pop hl                                        ; $6ec5: $e1
    pop hl                                        ; $6ec6: $e1
    pop hl                                        ; $6ec7: $e1
    pop hl                                        ; $6ec8: $e1
    adc b                                         ; $6ec9: $88
    add b                                         ; $6eca: $80
    add b                                         ; $6ecb: $80
    add b                                         ; $6ecc: $80
    add b                                         ; $6ecd: $80
    add b                                         ; $6ece: $80
    add b                                         ; $6ecf: $80
    add b                                         ; $6ed0: $80
    add b                                         ; $6ed1: $80
    add b                                         ; $6ed2: $80
    add b                                         ; $6ed3: $80
    add b                                         ; $6ed4: $80
    add b                                         ; $6ed5: $80
    add b                                         ; $6ed6: $80
    add b                                         ; $6ed7: $80
    add b                                         ; $6ed8: $80
    dec bc                                        ; $6ed9: $0b
    nop                                           ; $6eda: $00
    ld [$0000], sp                                ; $6edb: $08 $00 $00
    ld [$d1d1], sp                                ; $6ede: $08 $d1 $d1
    jp nc, $d1d3                                  ; $6ee1: $d2 $d3 $d1

    pop de                                        ; $6ee4: $d1
    jp nc, $d1d4                                  ; $6ee5: $d2 $d4 $d1

    pop de                                        ; $6ee8: $d1
    jp nc, $d1d4                                  ; $6ee9: $d2 $d4 $d1

    pop de                                        ; $6eec: $d1
    jp nc, $80d4                                  ; $6eed: $d2 $d4 $80

    add b                                         ; $6ef0: $80
    add b                                         ; $6ef1: $80
    ld b, $80                                     ; $6ef2: $06 $80
    add b                                         ; $6ef4: $80
    add b                                         ; $6ef5: $80
    ld b, $80                                     ; $6ef6: $06 $80
    add b                                         ; $6ef8: $80
    add b                                         ; $6ef9: $80
    ld b, $80                                     ; $6efa: $06 $80
    add b                                         ; $6efc: $80
    add b                                         ; $6efd: $80
    ld b, $d5                                     ; $6efe: $06 $d5
    sub $d7                                       ; $6f00: $d6 $d7
    ret c                                         ; $6f02: $d8

    reti                                          ; $6f03: $d9


    jp c, $dcdb                                   ; $6f04: $da $db $dc

    db $dd                                        ; $6f07: $dd
    sbc $df                                       ; $6f08: $de $df
    ldh [$dd], a                                  ; $6f0a: $e0 $dd
    pop hl                                        ; $6f0c: $e1
    ld [c], a                                     ; $6f0d: $e2
    db $e3                                        ; $6f0e: $e3
    ld b, $06                                     ; $6f0f: $06 $06
    ld b, $06                                     ; $6f11: $06 $06
    ld b, $04                                     ; $6f13: $06 $04
    inc b                                         ; $6f15: $04
    inc b                                         ; $6f16: $04
    ld b, $04                                     ; $6f17: $06 $04
    inc b                                         ; $6f19: $04
    inc b                                         ; $6f1a: $04
    ld b, $04                                     ; $6f1b: $06 $04
    inc b                                         ; $6f1d: $04
    inc b                                         ; $6f1e: $04
    db $e4                                        ; $6f1f: $e4
    push hl                                       ; $6f20: $e5
    and $e7                                       ; $6f21: $e6 $e7
    add sp, -$2c                                  ; $6f23: $e8 $d4
    jp hl                                         ; $6f25: $e9


    ld [$d4eb], a                                 ; $6f26: $ea $eb $d4
    jp hl                                         ; $6f29: $e9


    db $ec                                        ; $6f2a: $ec
    db $eb                                        ; $6f2b: $eb
    call nc, $ede9                                ; $6f2c: $d4 $e9 $ed
    ld b, $06                                     ; $6f2f: $06 $06
    ld b, $06                                     ; $6f31: $06 $06
    ld b, $06                                     ; $6f33: $06 $06
    ld b, $03                                     ; $6f35: $06 $03
    ld b, $06                                     ; $6f37: $06 $06
    ld b, $03                                     ; $6f39: $06 $03
    ld b, $06                                     ; $6f3b: $06 $06
    ld b, $03                                     ; $6f3d: $06 $03
    xor $ef                                       ; $6f3f: $ee $ef
    ldh a, [$d3]                                  ; $6f41: $f0 $d3
    pop af                                        ; $6f43: $f1
    ld a, [c]                                     ; $6f44: $f2
    di                                            ; $6f45: $f3
    call nc, $f5f4                                ; $6f46: $d4 $f4 $f5
    di                                            ; $6f49: $f3
    call nc, $f7f6                                ; $6f4a: $d4 $f6 $f7
    di                                            ; $6f4d: $f3
    call nc, Call_000_0606                        ; $6f4e: $d4 $06 $06
    ld b, $06                                     ; $6f51: $06 $06
    inc bc                                        ; $6f53: $03
    inc bc                                        ; $6f54: $03
    ld b, $06                                     ; $6f55: $06 $06
    inc bc                                        ; $6f57: $03
    inc bc                                        ; $6f58: $03
    ld b, $06                                     ; $6f59: $06 $06
    inc bc                                        ; $6f5b: $03
    inc bc                                        ; $6f5c: $03
    ld b, $06                                     ; $6f5d: $06 $06
    pop de                                        ; $6f5f: $d1
    pop de                                        ; $6f60: $d1
    jp nc, $d1d4                                  ; $6f61: $d2 $d4 $d1

    pop de                                        ; $6f64: $d1
    jp nc, $d1f8                                  ; $6f65: $d2 $f8 $d1

    pop de                                        ; $6f68: $d1
    jp nc, $d1f9                                  ; $6f69: $d2 $f9 $d1

    pop de                                        ; $6f6c: $d1
    jp nc, $80fa                                  ; $6f6d: $d2 $fa $80

    add b                                         ; $6f70: $80
    add b                                         ; $6f71: $80
    ld b, $80                                     ; $6f72: $06 $80
    add b                                         ; $6f74: $80
    add b                                         ; $6f75: $80
    ld b, $80                                     ; $6f76: $06 $80
    add b                                         ; $6f78: $80
    add b                                         ; $6f79: $80
    ld b, $80                                     ; $6f7a: $06 $80
    add b                                         ; $6f7c: $80
    add b                                         ; $6f7d: $80
    rlca                                          ; $6f7e: $07
    ei                                            ; $6f7f: $fb
    db $fc                                        ; $6f80: $fc
    db $fd                                        ; $6f81: $fd
    cp $ff                                        ; $6f82: $fe $ff
    nop                                           ; $6f84: $00
    ld bc, $0302                                  ; $6f85: $01 $02 $03
    inc b                                         ; $6f88: $04
    dec b                                         ; $6f89: $05
    ld b, $07                                     ; $6f8a: $06 $07
    ld [$0a09], sp                                ; $6f8c: $08 $09 $0a
    ld b, $04                                     ; $6f8f: $06 $04
    inc b                                         ; $6f91: $04
    inc b                                         ; $6f92: $04
    ld b, $06                                     ; $6f93: $06 $06
    ld b, $06                                     ; $6f95: $06 $06
    ld b, $06                                     ; $6f97: $06 $06
    ld b, $06                                     ; $6f99: $06 $06
    rlca                                          ; $6f9b: $07
    rlca                                          ; $6f9c: $07
    rlca                                          ; $6f9d: $07
    rlca                                          ; $6f9e: $07
    dec bc                                        ; $6f9f: $0b
    call nc, Call_000_0ce9                        ; $6fa0: $d4 $e9 $0c
    dec c                                         ; $6fa3: $0d
    ld hl, sp+$0e                                 ; $6fa4: $f8 $0e
    rrca                                          ; $6fa6: $0f
    db $10                                        ; $6fa7: $10
    ld sp, hl                                     ; $6fa8: $f9
    ld sp, hl                                     ; $6fa9: $f9
    inc bc                                        ; $6faa: $03
    ld de, $1312                                  ; $6fab: $11 $12 $13
    ld a, [$0606]                                 ; $6fae: $fa $06 $06
    ld b, $03                                     ; $6fb1: $06 $03
    ld b, $06                                     ; $6fb3: $06 $06
    ld b, $06                                     ; $6fb5: $06 $06
    ld b, $06                                     ; $6fb7: $06 $06
    ld b, $06                                     ; $6fb9: $06 $06
    rlca                                          ; $6fbb: $07
    rlca                                          ; $6fbc: $07
    rlca                                          ; $6fbd: $07
    rlca                                          ; $6fbe: $07
    inc d                                         ; $6fbf: $14
    dec d                                         ; $6fc0: $15
    di                                            ; $6fc1: $f3
    call nc, $160f                                ; $6fc2: $d4 $0f $16
    rla                                           ; $6fc5: $17
    ld hl, sp+$04                                 ; $6fc6: $f8 $04
    dec b                                         ; $6fc8: $05
    ld b, $f9                                     ; $6fc9: $06 $f9
    rlca                                          ; $6fcb: $07
    ld [$0a09], sp                                ; $6fcc: $08 $09 $0a
    inc bc                                        ; $6fcf: $03
    inc bc                                        ; $6fd0: $03
    ld b, $06                                     ; $6fd1: $06 $06
    ld h, $06                                     ; $6fd3: $26 $06
    ld b, $06                                     ; $6fd5: $06 $06
    ld b, $06                                     ; $6fd7: $06 $06
    ld b, $06                                     ; $6fd9: $06 $06
    rlca                                          ; $6fdb: $07
    rlca                                          ; $6fdc: $07
    rlca                                          ; $6fdd: $07
    rlca                                          ; $6fde: $07
    pop de                                        ; $6fdf: $d1
    pop de                                        ; $6fe0: $d1
    jp nc, $d118                                  ; $6fe1: $d2 $18 $d1

    pop de                                        ; $6fe4: $d1
    jp nc, $d119                                  ; $6fe5: $d2 $19 $d1

    pop de                                        ; $6fe8: $d1
    jp nc, $d11a                                  ; $6fe9: $d2 $1a $d1

    pop de                                        ; $6fec: $d1
    jp nc, $801b                                  ; $6fed: $d2 $1b $80

    add b                                         ; $6ff0: $80
    add b                                         ; $6ff1: $80
    rlca                                          ; $6ff2: $07
    add b                                         ; $6ff3: $80
    add b                                         ; $6ff4: $80
    add b                                         ; $6ff5: $80
    rlca                                          ; $6ff6: $07
    add b                                         ; $6ff7: $80
    add b                                         ; $6ff8: $80
    add b                                         ; $6ff9: $80
    rlca                                          ; $6ffa: $07
    add b                                         ; $6ffb: $80
    add b                                         ; $6ffc: $80
    add b                                         ; $6ffd: $80
    rlca                                          ; $6ffe: $07
    inc e                                         ; $6fff: $1c
    dec e                                         ; $7000: $1d
    ld e, $1f                                     ; $7001: $1e $1f
    jr nz, jr_088_7026                            ; $7003: $20 $21

    ld [hl+], a                                   ; $7005: $22
    inc hl                                        ; $7006: $23
    inc h                                         ; $7007: $24
    dec h                                         ; $7008: $25
    ld h, $27                                     ; $7009: $26 $27
    jr z, jr_088_7036                             ; $700b: $28 $29

    ld a, [hl+]                                   ; $700d: $2a
    dec hl                                        ; $700e: $2b
    dec b                                         ; $700f: $05
    dec b                                         ; $7010: $05
    dec b                                         ; $7011: $05
    dec b                                         ; $7012: $05
    ld bc, $0101                                  ; $7013: $01 $01 $01
    ld bc, $0101                                  ; $7016: $01 $01 $01
    ld bc, $0101                                  ; $7019: $01 $01 $01
    ld bc, $0101                                  ; $701c: $01 $01 $01
    inc l                                         ; $701f: $2c
    dec l                                         ; $7020: $2d
    ld l, $18                                     ; $7021: $2e $18
    cpl                                           ; $7023: $2f
    jr nc, @+$33                                  ; $7024: $30 $31

jr_088_7026:
    add hl, de                                    ; $7026: $19
    ld [hl-], a                                   ; $7027: $32
    inc sp                                        ; $7028: $33
    inc [hl]                                      ; $7029: $34
    dec [hl]                                      ; $702a: $35
    ld [hl], $37                                  ; $702b: $36 $37
    jr c, jr_088_7064                             ; $702d: $38 $35

    dec b                                         ; $702f: $05
    dec b                                         ; $7030: $05
    dec b                                         ; $7031: $05
    dec b                                         ; $7032: $05
    ld bc, $0101                                  ; $7033: $01 $01 $01

jr_088_7036:
    ld bc, $0101                                  ; $7036: $01 $01 $01
    add b                                         ; $7039: $80
    add b                                         ; $703a: $80
    ld bc, $8001                                  ; $703b: $01 $01 $80
    add b                                         ; $703e: $80
    inc e                                         ; $703f: $1c
    dec e                                         ; $7040: $1d
    ld e, $1f                                     ; $7041: $1e $1f
    jr nz, @+$23                                  ; $7043: $20 $21

    ld [hl+], a                                   ; $7045: $22
    inc hl                                        ; $7046: $23
    dec [hl]                                      ; $7047: $35
    dec [hl]                                      ; $7048: $35
    dec [hl]                                      ; $7049: $35
    dec [hl]                                      ; $704a: $35
    dec [hl]                                      ; $704b: $35
    dec [hl]                                      ; $704c: $35
    dec [hl]                                      ; $704d: $35
    dec [hl]                                      ; $704e: $35
    dec b                                         ; $704f: $05
    dec b                                         ; $7050: $05
    dec b                                         ; $7051: $05
    dec b                                         ; $7052: $05
    ld bc, $0101                                  ; $7053: $01 $01 $01
    ld bc, $8080                                  ; $7056: $01 $80 $80
    add b                                         ; $7059: $80
    add b                                         ; $705a: $80
    add b                                         ; $705b: $80
    add b                                         ; $705c: $80
    add b                                         ; $705d: $80
    add b                                         ; $705e: $80
    pop de                                        ; $705f: $d1
    pop de                                        ; $7060: $d1
    jp nc, $d139                                  ; $7061: $d2 $39 $d1

jr_088_7064:
    pop de                                        ; $7064: $d1
    jp nc, $d13a                                  ; $7065: $d2 $3a $d1

    pop de                                        ; $7068: $d1
    jp nc, $d13b                                  ; $7069: $d2 $3b $d1

    pop de                                        ; $706c: $d1
    jp nc, $80fa                                  ; $706d: $d2 $fa $80

    add b                                         ; $7070: $80
    add b                                         ; $7071: $80
    rlca                                          ; $7072: $07
    add b                                         ; $7073: $80
    add b                                         ; $7074: $80
    add b                                         ; $7075: $80
    rlca                                          ; $7076: $07
    add b                                         ; $7077: $80
    add b                                         ; $7078: $80
    add b                                         ; $7079: $80
    rlca                                          ; $707a: $07
    add b                                         ; $707b: $80
    add b                                         ; $707c: $80
    add b                                         ; $707d: $80
    rlca                                          ; $707e: $07
    inc a                                         ; $707f: $3c
    dec a                                         ; $7080: $3d
    ld a, $3f                                     ; $7081: $3e $3f
    ld b, b                                       ; $7083: $40
    ld b, c                                       ; $7084: $41
    ld b, d                                       ; $7085: $42
    ld b, e                                       ; $7086: $43
    ld b, h                                       ; $7087: $44
    ld b, l                                       ; $7088: $45
    ld b, [hl]                                    ; $7089: $46
    ld b, a                                       ; $708a: $47
    rlca                                          ; $708b: $07
    ld [$0a09], sp                                ; $708c: $08 $09 $0a
    ld bc, $0101                                  ; $708f: $01 $01 $01
    ld bc, $0101                                  ; $7092: $01 $01 $01
    ld bc, $0101                                  ; $7095: $01 $01 $01
    ld bc, $0101                                  ; $7098: $01 $01 $01
    ld bc, $0101                                  ; $709b: $01 $01 $01
    ld bc, $4948                                  ; $709e: $01 $48 $49
    ld c, d                                       ; $70a1: $4a
    ld c, e                                       ; $70a2: $4b
    ld c, h                                       ; $70a3: $4c
    ld c, l                                       ; $70a4: $4d
    ld c, [hl]                                    ; $70a5: $4e
    ld c, a                                       ; $70a6: $4f
    ld d, b                                       ; $70a7: $50
    ld d, c                                       ; $70a8: $51
    ld c, [hl]                                    ; $70a9: $4e
    ld c, a                                       ; $70aa: $4f
    ld de, $5212                                  ; $70ab: $11 $12 $52
    ld d, e                                       ; $70ae: $53
    ld bc, $8601                                  ; $70af: $01 $01 $86
    add [hl]                                      ; $70b2: $86
    ld bc, $0601                                  ; $70b3: $01 $01 $06
    ld b, $01                                     ; $70b6: $06 $01
    ld bc, $0606                                  ; $70b8: $01 $06 $06
    ld bc, $0605                                  ; $70bb: $01 $05 $06
    ld b, $54                                     ; $70be: $06 $54
    ld d, l                                       ; $70c0: $55
    ld d, [hl]                                    ; $70c1: $56
    ld d, a                                       ; $70c2: $57
    ld e, b                                       ; $70c3: $58
    ld e, c                                       ; $70c4: $59
    ld e, d                                       ; $70c5: $5a
    ld e, e                                       ; $70c6: $5b
    ld e, h                                       ; $70c7: $5c
    ld e, l                                       ; $70c8: $5d
    ld e, [hl]                                    ; $70c9: $5e
    ld e, a                                       ; $70ca: $5f
    ld h, b                                       ; $70cb: $60
    ld h, c                                       ; $70cc: $61
    ld h, d                                       ; $70cd: $62
    ld h, e                                       ; $70ce: $63
    add [hl]                                      ; $70cf: $86
    add [hl]                                      ; $70d0: $86
    add [hl]                                      ; $70d1: $86
    add [hl]                                      ; $70d2: $86
    ld b, $06                                     ; $70d3: $06 $06
    ld b, $06                                     ; $70d5: $06 $06
    ld b, $06                                     ; $70d7: $06 $06
    ld b, $06                                     ; $70d9: $06 $06
    ld b, $06                                     ; $70db: $06 $06
    ld b, $06                                     ; $70dd: $06 $06
    ld h, h                                       ; $70df: $64
    ld h, l                                       ; $70e0: $65
    ld h, [hl]                                    ; $70e1: $66
    ld h, a                                       ; $70e2: $67
    ld l, b                                       ; $70e3: $68
    ld l, c                                       ; $70e4: $69
    ld l, d                                       ; $70e5: $6a
    ld l, e                                       ; $70e6: $6b
    ld l, h                                       ; $70e7: $6c
    ld l, l                                       ; $70e8: $6d
    ld l, [hl]                                    ; $70e9: $6e
    ld l, a                                       ; $70ea: $6f
    ld [hl], b                                    ; $70eb: $70
    ld [hl], c                                    ; $70ec: $71
    ld [hl], d                                    ; $70ed: $72
    ld [hl], e                                    ; $70ee: $73
    ld b, $06                                     ; $70ef: $06 $06
    ld b, $06                                     ; $70f1: $06 $06
    ld b, $04                                     ; $70f3: $06 $04
    inc b                                         ; $70f5: $04
    inc b                                         ; $70f6: $04
    ld b, $04                                     ; $70f7: $06 $04
    inc b                                         ; $70f9: $04
    inc b                                         ; $70fa: $04
    ld b, $04                                     ; $70fb: $06 $04
    inc b                                         ; $70fd: $04
    inc b                                         ; $70fe: $04
    ld [hl], h                                    ; $70ff: $74
    ld [hl], l                                    ; $7100: $75
    halt                                          ; $7101: $76
    and $77                                       ; $7102: $e6 $77
    call nc, $e9d4                                ; $7104: $d4 $d4 $e9
    ld a, b                                       ; $7107: $78
    call nc, $e9d4                                ; $7108: $d4 $d4 $e9
    ld a, c                                       ; $710b: $79
    call nc, $e9d4                                ; $710c: $d4 $d4 $e9
    ld b, $06                                     ; $710f: $06 $06
    ld b, $06                                     ; $7111: $06 $06
    ld b, $06                                     ; $7113: $06 $06
    ld b, $06                                     ; $7115: $06 $06
    ld b, $06                                     ; $7117: $06 $06
    ld b, $06                                     ; $7119: $06 $06
    ld b, $06                                     ; $711b: $06 $06
    ld b, $06                                     ; $711d: $06 $06
    rst $20                                       ; $711f: $e7
    xor $ef                                       ; $7120: $ee $ef
    ldh a, [$7a]                                  ; $7122: $f0 $7a
    ld a, e                                       ; $7124: $7b
    ld a, h                                       ; $7125: $7c
    di                                            ; $7126: $f3
    ld a, l                                       ; $7127: $7d
    ld a, [hl]                                    ; $7128: $7e
    ld a, a                                       ; $7129: $7f
    di                                            ; $712a: $f3
    add b                                         ; $712b: $80
    add c                                         ; $712c: $81
    add d                                         ; $712d: $82
    di                                            ; $712e: $f3
    ld b, $06                                     ; $712f: $06 $06
    ld b, $06                                     ; $7131: $06 $06
    ld bc, $0101                                  ; $7133: $01 $01 $01
    ld b, $01                                     ; $7136: $06 $01
    ld bc, $0601                                  ; $7138: $01 $01 $06
    add hl, bc                                    ; $713b: $09
    add hl, bc                                    ; $713c: $09
    add hl, bc                                    ; $713d: $09
    ld b, $e5                                     ; $713e: $06 $e5
    ld h, h                                       ; $7140: $64
    ld h, l                                       ; $7141: $65
    ld h, [hl]                                    ; $7142: $66
    call nc, $8368                                ; $7143: $d4 $68 $83
    add h                                         ; $7146: $84
    call nc, $856c                                ; $7147: $d4 $6c $85
    add [hl]                                      ; $714a: $86
    call nc, $8770                                ; $714b: $d4 $70 $87
    adc b                                         ; $714e: $88
    ld b, $06                                     ; $714f: $06 $06
    ld b, $06                                     ; $7151: $06 $06
    ld b, $06                                     ; $7153: $06 $06
    ld c, $0e                                     ; $7155: $0e $0e
    ld b, $06                                     ; $7157: $06 $06
    ld c, $0e                                     ; $7159: $0e $0e
    ld b, $06                                     ; $715b: $06 $06
    ld c, $0e                                     ; $715d: $0e $0e
    adc c                                         ; $715f: $89
    adc d                                         ; $7160: $8a
    adc e                                         ; $7161: $8b
    adc h                                         ; $7162: $8c
    adc l                                         ; $7163: $8d
    adc [hl]                                      ; $7164: $8e
    adc a                                         ; $7165: $8f
    sub b                                         ; $7166: $90
    db $10                                        ; $7167: $10
    ld sp, hl                                     ; $7168: $f9
    inc bc                                        ; $7169: $03
    inc b                                         ; $716a: $04
    ld de, $1312                                  ; $716b: $11 $12 $13
    ld a, [$0c0e]                                 ; $716e: $fa $0e $0c
    inc c                                         ; $7171: $0c
    inc c                                         ; $7172: $0c
    ld c, $0e                                     ; $7173: $0e $0e
    ld c, $0e                                     ; $7175: $0e $0e
    ld b, $06                                     ; $7177: $06 $06
    ld b, $06                                     ; $7179: $06 $06
    rlca                                          ; $717b: $07
    rlca                                          ; $717c: $07
    rlca                                          ; $717d: $07
    rlca                                          ; $717e: $07
    ld [hl], a                                    ; $717f: $77
    call nc, $e9d4                                ; $7180: $d4 $d4 $e9
    sub c                                         ; $7183: $91
    ld hl, sp-$6e                                 ; $7184: $f8 $92
    ld c, $05                                     ; $7186: $0e $05
    ld sp, hl                                     ; $7188: $f9
    inc bc                                        ; $7189: $03
    ld sp, hl                                     ; $718a: $f9
    rlca                                          ; $718b: $07
    ld [$0a09], sp                                ; $718c: $08 $09 $0a
    ld b, $06                                     ; $718f: $06 $06
    ld b, $06                                     ; $7191: $06 $06
    ld c, $06                                     ; $7193: $0e $06
    ld c, $06                                     ; $7195: $0e $06
    ld b, $06                                     ; $7197: $06 $06
    ld b, $06                                     ; $7199: $06 $06
    rlca                                          ; $719b: $07
    rlca                                          ; $719c: $07
    rlca                                          ; $719d: $07
    rlca                                          ; $719e: $07
    sub e                                         ; $719f: $93
    sub h                                         ; $71a0: $94
    sub l                                         ; $71a1: $95
    di                                            ; $71a2: $f3
    rrca                                          ; $71a3: $0f
    rrca                                          ; $71a4: $0f
    ld d, $17                                     ; $71a5: $16 $17
    inc bc                                        ; $71a7: $03
    inc b                                         ; $71a8: $04
    dec b                                         ; $71a9: $05
    ld b, $11                                     ; $71aa: $06 $11
    ld [de], a                                    ; $71ac: $12
    inc de                                        ; $71ad: $13
    ld a, [$0909]                                 ; $71ae: $fa $09 $09
    add hl, bc                                    ; $71b1: $09
    ld b, $06                                     ; $71b2: $06 $06
    ld h, $06                                     ; $71b4: $26 $06
    ld b, $06                                     ; $71b6: $06 $06
    ld b, $06                                     ; $71b8: $06 $06
    ld b, $07                                     ; $71ba: $06 $07
    rlca                                          ; $71bc: $07
    rlca                                          ; $71bd: $07
    rlca                                          ; $71be: $07
    call nc, $9689                                ; $71bf: $d4 $89 $96
    sub a                                         ; $71c2: $97
    ld hl, sp-$73                                 ; $71c3: $f8 $8d
    adc [hl]                                      ; $71c5: $8e
    adc a                                         ; $71c6: $8f
    ld sp, hl                                     ; $71c7: $f9
    db $10                                        ; $71c8: $10
    ld sp, hl                                     ; $71c9: $f9
    inc bc                                        ; $71ca: $03
    rlca                                          ; $71cb: $07
    ld [$0a09], sp                                ; $71cc: $08 $09 $0a
    ld b, $0e                                     ; $71cf: $06 $0e
    ld c, $0e                                     ; $71d1: $0e $0e
    ld b, $0e                                     ; $71d3: $06 $0e
    ld c, $0e                                     ; $71d5: $0e $0e
    ld b, $06                                     ; $71d7: $06 $06
    ld b, $06                                     ; $71d9: $06 $06
    rlca                                          ; $71db: $07
    rlca                                          ; $71dc: $07
    rlca                                          ; $71dd: $07
    rlca                                          ; $71de: $07
    inc l                                         ; $71df: $2c
    dec l                                         ; $71e0: $2d
    ld l, $18                                     ; $71e1: $2e $18
    cpl                                           ; $71e3: $2f
    jr nc, jr_088_7217                            ; $71e4: $30 $31

    add hl, de                                    ; $71e6: $19
    dec [hl]                                      ; $71e7: $35
    dec [hl]                                      ; $71e8: $35
    dec [hl]                                      ; $71e9: $35
    dec [hl]                                      ; $71ea: $35
    dec [hl]                                      ; $71eb: $35
    dec [hl]                                      ; $71ec: $35
    dec [hl]                                      ; $71ed: $35
    dec [hl]                                      ; $71ee: $35
    dec b                                         ; $71ef: $05
    dec b                                         ; $71f0: $05
    dec b                                         ; $71f1: $05
    dec b                                         ; $71f2: $05
    ld bc, $0101                                  ; $71f3: $01 $01 $01
    ld bc, $8080                                  ; $71f6: $01 $80 $80
    add b                                         ; $71f9: $80
    add b                                         ; $71fa: $80
    add b                                         ; $71fb: $80
    add b                                         ; $71fc: $80
    add b                                         ; $71fd: $80
    add b                                         ; $71fe: $80
    sbc b                                         ; $71ff: $98
    sbc c                                         ; $7200: $99
    sbc d                                         ; $7201: $9a
    db $d3                                        ; $7202: $d3
    sbc e                                         ; $7203: $9b
    sbc h                                         ; $7204: $9c
    sbc l                                         ; $7205: $9d
    call nc, $9f9e                                ; $7206: $d4 $9e $9f
    and b                                         ; $7209: $a0
    call nc, $a2a1                                ; $720a: $d4 $a1 $a2
    and e                                         ; $720d: $a3
    ld hl, sp-$72                                 ; $720e: $f8 $8e
    adc [hl]                                      ; $7210: $8e
    adc [hl]                                      ; $7211: $8e
    add [hl]                                      ; $7212: $86
    add hl, bc                                    ; $7213: $09
    add hl, bc                                    ; $7214: $09
    ld c, $06                                     ; $7215: $0e $06

jr_088_7217:
    add hl, bc                                    ; $7217: $09
    add hl, bc                                    ; $7218: $09
    ld c, $06                                     ; $7219: $0e $06
    ld c, $0e                                     ; $721b: $0e $0e
    ld c, $26                                     ; $721d: $0e $26
    and h                                         ; $721f: $a4
    and l                                         ; $7220: $a5
    and [hl]                                      ; $7221: $a6
    and a                                         ; $7222: $a7
    xor b                                         ; $7223: $a8
    xor c                                         ; $7224: $a9
    xor d                                         ; $7225: $aa
    xor e                                         ; $7226: $ab
    xor h                                         ; $7227: $ac
    xor l                                         ; $7228: $ad
    xor [hl]                                      ; $7229: $ae
    xor a                                         ; $722a: $af
    or b                                          ; $722b: $b0
    or c                                          ; $722c: $b1
    or d                                          ; $722d: $b2
    or e                                          ; $722e: $b3
    adc [hl]                                      ; $722f: $8e
    adc [hl]                                      ; $7230: $8e
    adc [hl]                                      ; $7231: $8e
    adc [hl]                                      ; $7232: $8e
    ld c, $0b                                     ; $7233: $0e $0b
    dec bc                                        ; $7235: $0b
    ld c, $0e                                     ; $7236: $0e $0e
    dec bc                                        ; $7238: $0b
    dec bc                                        ; $7239: $0b
    ld c, $0e                                     ; $723a: $0e $0e
    ld c, $0e                                     ; $723c: $0e $0e
    ld c, $d3                                     ; $723e: $0e $d3
    ld d, a                                       ; $7240: $57
    sbc b                                         ; $7241: $98
    sbc c                                         ; $7242: $99
    call nc, $b45b                                ; $7243: $d4 $5b $b4
    or l                                          ; $7246: $b5
    call nc, $b65f                                ; $7247: $d4 $5f $b6
    or a                                          ; $724a: $b7
    sub d                                         ; $724b: $92
    ld h, e                                       ; $724c: $63
    and c                                         ; $724d: $a1
    and d                                         ; $724e: $a2
    add [hl]                                      ; $724f: $86
    add [hl]                                      ; $7250: $86
    adc [hl]                                      ; $7251: $8e
    adc [hl]                                      ; $7252: $8e
    ld b, $06                                     ; $7253: $06 $06
    inc c                                         ; $7255: $0c
    inc c                                         ; $7256: $0c
    ld b, $06                                     ; $7257: $06 $06
    inc c                                         ; $7259: $0c
    inc c                                         ; $725a: $0c
    ld l, $06                                     ; $725b: $2e $06
    ld c, $0e                                     ; $725d: $0e $0e
    sbc d                                         ; $725f: $9a
    ld c, e                                       ; $7260: $4b
    ld d, h                                       ; $7261: $54
    ld d, l                                       ; $7262: $55
    sbc l                                         ; $7263: $9d
    ld c, a                                       ; $7264: $4f
    cp b                                          ; $7265: $b8
    cp c                                          ; $7266: $b9
    and b                                         ; $7267: $a0
    ld c, a                                       ; $7268: $4f
    cp d                                          ; $7269: $ba
    cp e                                          ; $726a: $bb
    and e                                         ; $726b: $a3
    ld d, e                                       ; $726c: $53
    ld h, b                                       ; $726d: $60
    ld h, c                                       ; $726e: $61
    adc [hl]                                      ; $726f: $8e
    add [hl]                                      ; $7270: $86
    add [hl]                                      ; $7271: $86
    add [hl]                                      ; $7272: $86
    ld c, $06                                     ; $7273: $0e $06
    ld a, [bc]                                    ; $7275: $0a
    ld a, [bc]                                    ; $7276: $0a
    ld c, $06                                     ; $7277: $0e $06
    ld a, [bc]                                    ; $7279: $0a
    ld a, [bc]                                    ; $727a: $0a
    ld c, $06                                     ; $727b: $0e $06
    ld b, $06                                     ; $727d: $06 $06
    ld h, a                                       ; $727f: $67
    ld [hl], h                                    ; $7280: $74
    db $d3                                        ; $7281: $d3
    push de                                       ; $7282: $d5
    cp h                                          ; $7283: $bc
    ld [hl], a                                    ; $7284: $77
    call nc, $bdd9                                ; $7285: $d4 $d9 $bd
    ld a, b                                       ; $7288: $78
    call nc, $bedd                                ; $7289: $d4 $dd $be
    ld a, c                                       ; $728c: $79
    call nc, $06dd                                ; $728d: $d4 $dd $06
    ld b, $06                                     ; $7290: $06 $06
    ld b, $0e                                     ; $7292: $06 $0e
    ld b, $06                                     ; $7294: $06 $06
    ld b, $0e                                     ; $7296: $06 $0e
    ld b, $06                                     ; $7298: $06 $06
    ld b, $0e                                     ; $729a: $06 $0e
    ld b, $06                                     ; $729c: $06 $06
    ld b, $d6                                     ; $729e: $06 $d6
    rst $10                                       ; $72a0: $d7
    ret c                                         ; $72a1: $d8

    db $e4                                        ; $72a2: $e4
    cp a                                          ; $72a3: $bf
    ret nz                                        ; $72a4: $c0

    pop bc                                        ; $72a5: $c1
    add sp, -$3e                                  ; $72a6: $e8 $c2
    jp $ebc4                                      ; $72a8: $c3 $c4 $eb


    push bc                                       ; $72ab: $c5
    add $c7                                       ; $72ac: $c6 $c7
    db $eb                                        ; $72ae: $eb
    ld b, $06                                     ; $72af: $06 $06
    ld b, $06                                     ; $72b1: $06 $06
    ld [$0808], sp                                ; $72b3: $08 $08 $08
    ld b, $08                                     ; $72b6: $06 $08
    ld [$0608], sp                                ; $72b8: $08 $08 $06
    ld [$0808], sp                                ; $72bb: $08 $08 $08
    ld b, $d3                                     ; $72be: $06 $d3
    jp nc, $d1d1                                  ; $72c0: $d2 $d1 $d1

    call nc, $d1d2                                ; $72c3: $d4 $d2 $d1
    pop de                                        ; $72c6: $d1
    call nc, $d1d2                                ; $72c7: $d4 $d2 $d1
    pop de                                        ; $72ca: $d1
    call nc, $d1d2                                ; $72cb: $d4 $d2 $d1
    pop de                                        ; $72ce: $d1
    ld b, $80                                     ; $72cf: $06 $80
    add b                                         ; $72d1: $80
    add b                                         ; $72d2: $80
    ld b, $80                                     ; $72d3: $06 $80
    add b                                         ; $72d5: $80
    add b                                         ; $72d6: $80
    ld b, $80                                     ; $72d7: $06 $80
    add b                                         ; $72d9: $80
    add b                                         ; $72da: $80
    ld b, $80                                     ; $72db: $06 $80
    add b                                         ; $72dd: $80
    add b                                         ; $72de: $80
    ret z                                         ; $72df: $c8

    ld [hl], a                                    ; $72e0: $77
    call nc, $90fb                                ; $72e1: $d4 $fb $90
    sub c                                         ; $72e4: $91
    ld hl, sp-$01                                 ; $72e5: $f8 $ff
    inc b                                         ; $72e7: $04
    dec b                                         ; $72e8: $05
    ld sp, hl                                     ; $72e9: $f9
    inc bc                                        ; $72ea: $03
    ld de, $1312                                  ; $72eb: $11 $12 $13
    ld a, [$060e]                                 ; $72ee: $fa $0e $06
    ld b, $06                                     ; $72f1: $06 $06
    ld c, $0e                                     ; $72f3: $0e $0e
    ld b, $06                                     ; $72f5: $06 $06
    ld b, $06                                     ; $72f7: $06 $06
    ld b, $06                                     ; $72f9: $06 $06
    rlca                                          ; $72fb: $07
    rlca                                          ; $72fc: $07
    rlca                                          ; $72fd: $07
    rlca                                          ; $72fe: $07
    ret                                           ; $72ff: $c9


    jp z, $0bcb                                   ; $7300: $ca $cb $0b

    nop                                           ; $7303: $00
    ld bc, $0d02                                  ; $7304: $01 $02 $0d
    inc b                                         ; $7307: $04
    dec b                                         ; $7308: $05
    ld b, $10                                     ; $7309: $06 $10
    rlca                                          ; $730b: $07
    ld [$0a09], sp                                ; $730c: $08 $09 $0a
    ld [$0808], sp                                ; $730f: $08 $08 $08
    ld b, $06                                     ; $7312: $06 $06
    ld b, $06                                     ; $7314: $06 $06
    ld b, $06                                     ; $7316: $06 $06
    ld b, $06                                     ; $7318: $06 $06
    ld b, $07                                     ; $731a: $06 $07
    rlca                                          ; $731c: $07
    rlca                                          ; $731d: $07
    rlca                                          ; $731e: $07
    call nc, $d1d2                                ; $731f: $d4 $d2 $d1
    pop de                                        ; $7322: $d1
    sub d                                         ; $7323: $92
    jp nc, $d1d1                                  ; $7324: $d2 $d1 $d1

    inc bc                                        ; $7327: $03
    jp nc, $d1d1                                  ; $7328: $d2 $d1 $d1

    ld de, $d1d2                                  ; $732b: $11 $d2 $d1
    pop de                                        ; $732e: $d1
    ld b, $80                                     ; $732f: $06 $80
    add b                                         ; $7331: $80
    add b                                         ; $7332: $80
    ld c, $80                                     ; $7333: $0e $80
    add b                                         ; $7335: $80
    add b                                         ; $7336: $80
    ld b, $80                                     ; $7337: $06 $80
    add b                                         ; $7339: $80
    add b                                         ; $733a: $80
    rlca                                          ; $733b: $07
    add b                                         ; $733c: $80
    add b                                         ; $733d: $80
    add b                                         ; $733e: $80
    inc l                                         ; $733f: $2c
    dec l                                         ; $7340: $2d
    ld l, $18                                     ; $7341: $2e $18
    cpl                                           ; $7343: $2f
    jr nc, jr_088_7377                            ; $7344: $30 $31

    add hl, de                                    ; $7346: $19
    dec [hl]                                      ; $7347: $35
    call z, $1acd                                 ; $7348: $cc $cd $1a
    dec [hl]                                      ; $734b: $35
    adc $cf                                       ; $734c: $ce $cf
    dec de                                        ; $734e: $1b
    dec b                                         ; $734f: $05
    dec b                                         ; $7350: $05
    dec b                                         ; $7351: $05
    dec b                                         ; $7352: $05
    ld bc, $0101                                  ; $7353: $01 $01 $01
    ld bc, $8880                                  ; $7356: $01 $80 $88
    add hl, bc                                    ; $7359: $09
    ld bc, $8880                                  ; $735a: $01 $80 $88
    add hl, bc                                    ; $735d: $09
    ld bc, $d22c                                  ; $735e: $01 $2c $d2
    pop de                                        ; $7361: $d1
    pop de                                        ; $7362: $d1
    cpl                                           ; $7363: $2f
    jp nc, $d1d1                                  ; $7364: $d2 $d1 $d1

    ld [hl-], a                                   ; $7367: $32
    jp nc, $d1d1                                  ; $7368: $d2 $d1 $d1

    ld [hl], $d2                                  ; $736b: $36 $d2
    pop de                                        ; $736d: $d1
    pop de                                        ; $736e: $d1
    rlca                                          ; $736f: $07
    add b                                         ; $7370: $80
    add b                                         ; $7371: $80
    add b                                         ; $7372: $80
    rlca                                          ; $7373: $07
    add b                                         ; $7374: $80
    add b                                         ; $7375: $80
    add b                                         ; $7376: $80

jr_088_7377:
    rlca                                          ; $7377: $07
    add b                                         ; $7378: $80
    add b                                         ; $7379: $80
    add b                                         ; $737a: $80
    rlca                                          ; $737b: $07
    add b                                         ; $737c: $80
    add b                                         ; $737d: $80
    add b                                         ; $737e: $80
    ld d, [hl]                                    ; $737f: $56
    ret nc                                        ; $7380: $d0

    pop de                                        ; $7381: $d1
    add hl, sp                                    ; $7382: $39
    ld e, d                                       ; $7383: $5a
    ld c, [hl]                                    ; $7384: $4e
    jp nc, Jump_088_5a3a                          ; $7385: $d2 $3a $5a

    ld c, [hl]                                    ; $7388: $4e
    db $d3                                        ; $7389: $d3
    dec sp                                        ; $738a: $3b
    ld h, d                                       ; $738b: $62
    ld c, [hl]                                    ; $738c: $4e
    inc de                                        ; $738d: $13
    ld a, [$8e86]                                 ; $738e: $fa $86 $8e
    add hl, bc                                    ; $7391: $09
    ld bc, $2606                                  ; $7392: $01 $06 $26
    add hl, bc                                    ; $7395: $09
    ld bc, $2606                                  ; $7396: $01 $06 $26
    add hl, bc                                    ; $7399: $09
    ld bc, $2606                                  ; $739a: $01 $06 $26
    dec b                                         ; $739d: $05
    ld bc, $d248                                  ; $739e: $01 $48 $d2
    pop de                                        ; $73a1: $d1
    pop de                                        ; $73a2: $d1
    ld c, h                                       ; $73a3: $4c
    jp nc, $d1d1                                  ; $73a4: $d2 $d1 $d1

    ld d, b                                       ; $73a7: $50
    jp nc, $d1d1                                  ; $73a8: $d2 $d1 $d1

    ld de, $d1d2                                  ; $73ab: $11 $d2 $d1
    pop de                                        ; $73ae: $d1
    rlca                                          ; $73af: $07
    add b                                         ; $73b0: $80
    add b                                         ; $73b1: $80
    add b                                         ; $73b2: $80
    rlca                                          ; $73b3: $07
    add b                                         ; $73b4: $80
    add b                                         ; $73b5: $80
    add b                                         ; $73b6: $80
    rlca                                          ; $73b7: $07
    add b                                         ; $73b8: $80
    add b                                         ; $73b9: $80
    add b                                         ; $73ba: $80
    rlca                                          ; $73bb: $07
    add b                                         ; $73bc: $80
    add b                                         ; $73bd: $80
    add b                                         ; $73be: $80
    inc e                                         ; $73bf: $1c
    dec e                                         ; $73c0: $1d
    ld e, $1f                                     ; $73c1: $1e $1f
    jr nz, jr_088_73e6                            ; $73c3: $20 $21

    ld [hl+], a                                   ; $73c5: $22
    inc hl                                        ; $73c6: $23
    inc h                                         ; $73c7: $24
    dec h                                         ; $73c8: $25
    ld h, $27                                     ; $73c9: $26 $27
    jr z, jr_088_73f6                             ; $73cb: $28 $29

    ld a, [hl+]                                   ; $73cd: $2a
    dec hl                                        ; $73ce: $2b
    ld bc, $0101                                  ; $73cf: $01 $01 $01
    ld bc, $0101                                  ; $73d2: $01 $01 $01
    ld bc, $0101                                  ; $73d5: $01 $01 $01
    ld bc, $0101                                  ; $73d8: $01 $01 $01
    ld bc, $0101                                  ; $73db: $01 $01 $01
    ld bc, $2d2c                                  ; $73de: $01 $2c $2d
    call nc, $d503                                ; $73e1: $d4 $03 $d5
    sub $31                                       ; $73e4: $d6 $31

jr_088_73e6:
    add hl, de                                    ; $73e6: $19
    rst $10                                       ; $73e7: $d7
    ret c                                         ; $73e8: $d8

    call $d91a                                    ; $73e9: $cd $1a $d9
    jp c, Jump_000_1bcf                           ; $73ec: $da $cf $1b

    ld bc, $0e07                                  ; $73ef: $01 $07 $0e
    ld b, $09                                     ; $73f2: $06 $09
    rrca                                          ; $73f4: $0f
    rlca                                          ; $73f5: $07

jr_088_73f6:
    rlca                                          ; $73f6: $07
    adc d                                         ; $73f7: $8a
    adc d                                         ; $73f8: $8a
    add hl, bc                                    ; $73f9: $09
    ld bc, $8a8a                                  ; $73fa: $01 $8a $8a
    add hl, bc                                    ; $73fd: $09
    ld bc, $0504                                  ; $73fe: $01 $04 $05
    ld b, $10                                     ; $7401: $06 $10
    jr nz, @+$23                                  ; $7403: $20 $21

    ld [hl+], a                                   ; $7405: $22
    inc hl                                        ; $7406: $23
    inc h                                         ; $7407: $24
    dec h                                         ; $7408: $25
    ld h, $27                                     ; $7409: $26 $27
    db $db                                        ; $740b: $db
    call c, $2b2a                                 ; $740c: $dc $2a $2b
    ld b, $06                                     ; $740f: $06 $06
    ld b, $06                                     ; $7411: $06 $06
    rlca                                          ; $7413: $07
    rlca                                          ; $7414: $07
    rlca                                          ; $7415: $07
    rlca                                          ; $7416: $07
    ld bc, $0101                                  ; $7417: $01 $01 $01
    ld bc, $8a8a                                  ; $741a: $01 $8a $8a
    ld bc, $dd01                                  ; $741d: $01 $01 $dd
    sbc $df                                       ; $7420: $de $df
    add hl, sp                                    ; $7422: $39
    ldh [$e1], a                                  ; $7423: $e0 $e1
    jp nc, $e3e2                                  ; $7425: $d2 $e2 $e3

    db $e4                                        ; $7428: $e4
    db $d3                                        ; $7429: $d3
    dec sp                                        ; $742a: $3b
    ld de, $1312                                  ; $742b: $11 $12 $13
    ld a, [$8a8a]                                 ; $742e: $fa $8a $8a
    add hl, bc                                    ; $7431: $09
    ld bc, $0a0a                                  ; $7432: $01 $0a $0a
    add hl, bc                                    ; $7435: $09
    add hl, bc                                    ; $7436: $09
    ld a, [bc]                                    ; $7437: $0a
    ld a, [bc]                                    ; $7438: $0a
    add hl, bc                                    ; $7439: $09
    ld bc, $0101                                  ; $743a: $01 $01 $01
    ld bc, $e501                                  ; $743d: $01 $01 $e5
    and $3e                                       ; $7440: $e6 $3e
    ccf                                           ; $7442: $3f
    rst $20                                       ; $7443: $e7
    add sp, $42                                   ; $7444: $e8 $42
    ld b, e                                       ; $7446: $43
    jp hl                                         ; $7447: $e9


    ld [$47eb], a                                 ; $7448: $ea $eb $47
    ldh [$e1], a                                  ; $744b: $e0 $e1
    db $ec                                        ; $744d: $ec
    ld a, [bc]                                    ; $744e: $0a
    adc d                                         ; $744f: $8a
    adc d                                         ; $7450: $8a
    ld bc, $8a01                                  ; $7451: $01 $01 $8a
    adc d                                         ; $7454: $8a
    ld bc, $8a01                                  ; $7455: $01 $01 $8a
    adc d                                         ; $7458: $8a
    add hl, bc                                    ; $7459: $09
    ld bc, $0a0a                                  ; $745a: $01 $0a $0a
    add hl, bc                                    ; $745d: $09
    ld bc, $2d2c                                  ; $745e: $01 $2c $2d
    ld l, $18                                     ; $7461: $2e $18
    cpl                                           ; $7463: $2f
    jr nc, jr_088_7497                            ; $7464: $30 $31

    add hl, de                                    ; $7466: $19
    ld [hl-], a                                   ; $7467: $32
    inc sp                                        ; $7468: $33
    call $361a                                    ; $7469: $cd $1a $36
    scf                                           ; $746c: $37
    rst $08                                       ; $746d: $cf
    dec de                                        ; $746e: $1b
    ld bc, $0101                                  ; $746f: $01 $01 $01
    ld bc, $0101                                  ; $7472: $01 $01 $01
    ld bc, $0101                                  ; $7475: $01 $01 $01
    ld bc, $0109                                  ; $7478: $01 $09 $01
    ld bc, $0901                                  ; $747b: $01 $01 $09
    ld bc, $e4e3                                  ; $747e: $01 $e3 $e4
    ld e, $1f                                     ; $7481: $1e $1f
    jr nz, @+$23                                  ; $7483: $20 $21

    ld [hl+], a                                   ; $7485: $22
    inc hl                                        ; $7486: $23
    inc h                                         ; $7487: $24
    dec h                                         ; $7488: $25
    ld h, $27                                     ; $7489: $26 $27
    jr z, jr_088_74b6                             ; $748b: $28 $29

    ld a, [hl+]                                   ; $748d: $2a
    dec hl                                        ; $748e: $2b
    ld a, [bc]                                    ; $748f: $0a
    ld a, [bc]                                    ; $7490: $0a
    ld bc, $0101                                  ; $7491: $01 $01 $01
    ld bc, $0101                                  ; $7494: $01 $01 $01

jr_088_7497:
    ld bc, $0101                                  ; $7497: $01 $01 $01
    ld bc, $0101                                  ; $749a: $01 $01 $01
    ld bc, $d101                                  ; $749d: $01 $01 $d1
    pop de                                        ; $74a0: $d1
    jp nc, $d139                                  ; $74a1: $d2 $39 $d1

    pop de                                        ; $74a4: $d1
    jr c, jr_088_74dc                             ; $74a5: $38 $35

    pop de                                        ; $74a7: $d1
    pop de                                        ; $74a8: $d1
    pop de                                        ; $74a9: $d1
    pop de                                        ; $74aa: $d1
    pop de                                        ; $74ab: $d1
    pop de                                        ; $74ac: $d1
    pop de                                        ; $74ad: $d1
    pop de                                        ; $74ae: $d1
    add b                                         ; $74af: $80
    add b                                         ; $74b0: $80
    add b                                         ; $74b1: $80
    rlca                                          ; $74b2: $07
    add b                                         ; $74b3: $80
    add b                                         ; $74b4: $80
    add b                                         ; $74b5: $80

jr_088_74b6:
    add b                                         ; $74b6: $80
    add b                                         ; $74b7: $80
    add b                                         ; $74b8: $80
    add b                                         ; $74b9: $80
    add b                                         ; $74ba: $80
    add b                                         ; $74bb: $80
    add b                                         ; $74bc: $80
    add b                                         ; $74bd: $80
    add b                                         ; $74be: $80
    inc a                                         ; $74bf: $3c
    dec a                                         ; $74c0: $3d
    ld a, $3f                                     ; $74c1: $3e $3f
    dec [hl]                                      ; $74c3: $35
    dec [hl]                                      ; $74c4: $35
    dec [hl]                                      ; $74c5: $35
    dec [hl]                                      ; $74c6: $35
    pop de                                        ; $74c7: $d1
    pop de                                        ; $74c8: $d1
    pop de                                        ; $74c9: $d1
    pop de                                        ; $74ca: $d1
    pop de                                        ; $74cb: $d1
    pop de                                        ; $74cc: $d1
    pop de                                        ; $74cd: $d1
    pop de                                        ; $74ce: $d1
    ld bc, $0101                                  ; $74cf: $01 $01 $01
    ld bc, $8080                                  ; $74d2: $01 $80 $80
    add b                                         ; $74d5: $80
    add b                                         ; $74d6: $80
    add b                                         ; $74d7: $80
    add b                                         ; $74d8: $80
    add b                                         ; $74d9: $80
    add b                                         ; $74da: $80
    add b                                         ; $74db: $80

jr_088_74dc:
    add b                                         ; $74dc: $80
    add b                                         ; $74dd: $80
    add b                                         ; $74de: $80
    ld c, b                                       ; $74df: $48
    ld c, c                                       ; $74e0: $49
    pop de                                        ; $74e1: $d1
    add hl, sp                                    ; $74e2: $39
    dec [hl]                                      ; $74e3: $35
    dec [hl]                                      ; $74e4: $35
    dec [hl]                                      ; $74e5: $35
    dec [hl]                                      ; $74e6: $35
    pop de                                        ; $74e7: $d1
    pop de                                        ; $74e8: $d1
    pop de                                        ; $74e9: $d1
    pop de                                        ; $74ea: $d1
    pop de                                        ; $74eb: $d1
    pop de                                        ; $74ec: $d1
    pop de                                        ; $74ed: $d1
    pop de                                        ; $74ee: $d1
    ld bc, $0901                                  ; $74ef: $01 $01 $09
    ld bc, $8080                                  ; $74f2: $01 $80 $80
    add b                                         ; $74f5: $80
    add b                                         ; $74f6: $80
    add b                                         ; $74f7: $80
    add b                                         ; $74f8: $80
    add b                                         ; $74f9: $80
    add b                                         ; $74fa: $80
    add b                                         ; $74fb: $80
    add b                                         ; $74fc: $80
    add b                                         ; $74fd: $80
    add b                                         ; $74fe: $80
    ld sp, hl                                     ; $74ff: $f9
    inc bc                                        ; $7500: $03
    inc b                                         ; $7501: $04
    dec b                                         ; $7502: $05
    cpl                                           ; $7503: $2f
    jr nc, jr_088_7537                            ; $7504: $30 $31

    add hl, de                                    ; $7506: $19
    ld [hl-], a                                   ; $7507: $32
    db $ed                                        ; $7508: $ed
    xor $ef                                       ; $7509: $ee $ef
    ld [hl], $37                                  ; $750b: $36 $37
    ldh a, [$f1]                                  ; $750d: $f0 $f1
    ld b, $06                                     ; $750f: $06 $06
    ld b, $06                                     ; $7511: $06 $06
    rlca                                          ; $7513: $07
    rlca                                          ; $7514: $07
    rlca                                          ; $7515: $07
    rlca                                          ; $7516: $07
    ld bc, $8a09                                  ; $7517: $01 $09 $8a
    adc d                                         ; $751a: $8a
    ld bc, $8a01                                  ; $751b: $01 $01 $8a
    adc d                                         ; $751e: $8a
    ld b, $10                                     ; $751f: $06 $10
    ld sp, hl                                     ; $7521: $f9
    inc bc                                        ; $7522: $03
    jr nz, jr_088_7546                            ; $7523: $20 $21

    ld [hl+], a                                   ; $7525: $22
    inc hl                                        ; $7526: $23
    inc h                                         ; $7527: $24
    dec h                                         ; $7528: $25
    ld h, $27                                     ; $7529: $26 $27
    jr z, jr_088_7556                             ; $752b: $28 $29

    ld a, [hl+]                                   ; $752d: $2a
    dec hl                                        ; $752e: $2b
    ld b, $06                                     ; $752f: $06 $06
    ld b, $06                                     ; $7531: $06 $06
    rlca                                          ; $7533: $07
    rlca                                          ; $7534: $07
    rlca                                          ; $7535: $07
    rlca                                          ; $7536: $07

jr_088_7537:
    ld bc, $0101                                  ; $7537: $01 $01 $01
    ld bc, $0101                                  ; $753a: $01 $01 $01
    ld bc, $0401                                  ; $753d: $01 $01 $04
    dec b                                         ; $7540: $05
    ld b, $10                                     ; $7541: $06 $10
    cpl                                           ; $7543: $2f
    jr nc, jr_088_7577                            ; $7544: $30 $31

jr_088_7546:
    add hl, de                                    ; $7546: $19
    ld a, [c]                                     ; $7547: $f2
    di                                            ; $7548: $f3
    db $f4                                        ; $7549: $f4
    ld a, [de]                                    ; $754a: $1a
    push af                                       ; $754b: $f5
    or $cf                                        ; $754c: $f6 $cf
    dec de                                        ; $754e: $1b
    ld b, $06                                     ; $754f: $06 $06
    ld b, $06                                     ; $7551: $06 $06
    rlca                                          ; $7553: $07
    rlca                                          ; $7554: $07
    rlca                                          ; $7555: $07

jr_088_7556:
    rlca                                          ; $7556: $07
    adc d                                         ; $7557: $8a
    adc d                                         ; $7558: $8a
    add hl, bc                                    ; $7559: $09
    ld bc, $8a8a                                  ; $755a: $01 $8a $8a
    add hl, bc                                    ; $755d: $09
    ld bc, $03f9                                  ; $755e: $01 $f9 $03
    inc b                                         ; $7561: $04
    dec b                                         ; $7562: $05
    jr nz, @+$23                                  ; $7563: $20 $21

    ld [hl+], a                                   ; $7565: $22
    inc hl                                        ; $7566: $23
    inc h                                         ; $7567: $24
    dec h                                         ; $7568: $25
    ld h, $27                                     ; $7569: $26 $27
    jr z, jr_088_7596                             ; $756b: $28 $29

    rst $30                                       ; $756d: $f7
    ld hl, sp+$06                                 ; $756e: $f8 $06
    ld b, $06                                     ; $7570: $06 $06
    ld b, $07                                     ; $7572: $06 $07
    rlca                                          ; $7574: $07
    rlca                                          ; $7575: $07
    rlca                                          ; $7576: $07

jr_088_7577:
    ld bc, $0101                                  ; $7577: $01 $01 $01
    ld bc, $0101                                  ; $757a: $01 $01 $01
    adc d                                         ; $757d: $8a
    adc d                                         ; $757e: $8a
    ld c, b                                       ; $757f: $48
    ld sp, hl                                     ; $7580: $f9
    ld a, [$4cfb]                                 ; $7581: $fa $fb $4c
    ld c, l                                       ; $7584: $4d
    ldh [$e1], a                                  ; $7585: $e0 $e1
    ld d, b                                       ; $7587: $50
    ld d, c                                       ; $7588: $51
    db $e3                                        ; $7589: $e3
    db $e4                                        ; $758a: $e4
    ld de, $1312                                  ; $758b: $11 $12 $13
    ld a, [$0901]                                 ; $758e: $fa $01 $09
    adc d                                         ; $7591: $8a
    adc d                                         ; $7592: $8a
    ld bc, $0a01                                  ; $7593: $01 $01 $0a

jr_088_7596:
    ld a, [bc]                                    ; $7596: $0a
    ld bc, $0a01                                  ; $7597: $01 $01 $0a
    ld a, [bc]                                    ; $759a: $0a
    ld bc, $0101                                  ; $759b: $01 $01 $01
    ld bc, $fdfc                                  ; $759e: $01 $fc $fd
    pop de                                        ; $75a1: $d1
    add hl, sp                                    ; $75a2: $39
    ldh [$e1], a                                  ; $75a3: $e0 $e1
    jp nc, $e33a                                  ; $75a5: $d2 $3a $e3

    db $e4                                        ; $75a8: $e4
    db $d3                                        ; $75a9: $d3
    dec sp                                        ; $75aa: $3b
    ld de, $13fe                                  ; $75ab: $11 $fe $13
    ld a, [$8a8a]                                 ; $75ae: $fa $8a $8a
    add hl, bc                                    ; $75b1: $09
    ld bc, $0a0a                                  ; $75b2: $01 $0a $0a
    add hl, bc                                    ; $75b5: $09
    ld bc, $0a0a                                  ; $75b6: $01 $0a $0a
    add hl, bc                                    ; $75b9: $09
    ld bc, $0901                                  ; $75ba: $01 $01 $09
    ld bc, $3c01                                  ; $75bd: $01 $01 $3c
    rst $38                                       ; $75c0: $ff
    nop                                           ; $75c1: $00
    ld bc, $4140                                  ; $75c2: $01 $40 $41
    ld [bc], a                                    ; $75c5: $02
    inc bc                                        ; $75c6: $03
    ld b, h                                       ; $75c7: $44
    ld b, l                                       ; $75c8: $45
    inc b                                         ; $75c9: $04
    dec b                                         ; $75ca: $05
    rlca                                          ; $75cb: $07
    ld b, $e0                                     ; $75cc: $06 $e0
    pop hl                                        ; $75ce: $e1
    ld bc, $8a09                                  ; $75cf: $01 $09 $8a
    adc d                                         ; $75d2: $8a
    ld bc, $8a01                                  ; $75d3: $01 $01 $8a
    adc d                                         ; $75d6: $8a
    ld bc, $8a01                                  ; $75d7: $01 $01 $8a
    adc d                                         ; $75da: $8a
    ld bc, $0a09                                  ; $75db: $01 $09 $0a
    ld a, [bc]                                    ; $75de: $0a
    inc e                                         ; $75df: $1c
    rlca                                          ; $75e0: $07
    db $e3                                        ; $75e1: $e3
    db $e4                                        ; $75e2: $e4
    jr nz, jr_088_7606                            ; $75e3: $20 $21

    ld [hl+], a                                   ; $75e5: $22
    inc hl                                        ; $75e6: $23
    inc h                                         ; $75e7: $24
    dec h                                         ; $75e8: $25
    ld h, $27                                     ; $75e9: $26 $27
    jr z, jr_088_7616                             ; $75eb: $28 $29

    ld a, [hl+]                                   ; $75ed: $2a
    dec hl                                        ; $75ee: $2b
    ld bc, $0a09                                  ; $75ef: $01 $09 $0a
    ld a, [bc]                                    ; $75f2: $0a
    ld bc, $0101                                  ; $75f3: $01 $01 $01
    ld bc, $0101                                  ; $75f6: $01 $01 $01
    ld bc, $0101                                  ; $75f9: $01 $01 $01
    ld bc, $0101                                  ; $75fc: $01 $01 $01
    ld c, b                                       ; $75ff: $48
    ld c, c                                       ; $7600: $49
    pop de                                        ; $7601: $d1
    add hl, sp                                    ; $7602: $39
    dec [hl]                                      ; $7603: $35
    dec [hl]                                      ; $7604: $35
    dec [hl]                                      ; $7605: $35

jr_088_7606:
    call z, $d1d1                                 ; $7606: $cc $d1 $d1
    pop de                                        ; $7609: $d1
    jr c, @-$2d                                   ; $760a: $38 $d1

    pop de                                        ; $760c: $d1
    pop de                                        ; $760d: $d1
    pop de                                        ; $760e: $d1
    ld bc, $0901                                  ; $760f: $01 $01 $09
    ld bc, $8080                                  ; $7612: $01 $80 $80
    add b                                         ; $7615: $80

jr_088_7616:
    adc b                                         ; $7616: $88
    add b                                         ; $7617: $80
    add b                                         ; $7618: $80
    add b                                         ; $7619: $80
    add b                                         ; $761a: $80
    add b                                         ; $761b: $80
    add b                                         ; $761c: $80
    add b                                         ; $761d: $80
    add b                                         ; $761e: $80
    inc a                                         ; $761f: $3c
    dec a                                         ; $7620: $3d
    ld a, $3f                                     ; $7621: $3e $3f
    ld b, b                                       ; $7623: $40
    ld b, c                                       ; $7624: $41
    ld b, d                                       ; $7625: $42
    ld b, e                                       ; $7626: $43
    dec [hl]                                      ; $7627: $35
    dec [hl]                                      ; $7628: $35
    dec [hl]                                      ; $7629: $35
    dec [hl]                                      ; $762a: $35
    ld [$0808], sp                                ; $762b: $08 $08 $08
    ld [$0101], sp                                ; $762e: $08 $01 $01
    ld bc, $0101                                  ; $7631: $01 $01 $01
    ld bc, $0101                                  ; $7634: $01 $01 $01
    add b                                         ; $7637: $80
    add b                                         ; $7638: $80
    add b                                         ; $7639: $80
    add b                                         ; $763a: $80
    adc b                                         ; $763b: $88
    adc b                                         ; $763c: $88
    adc b                                         ; $763d: $88
    adc b                                         ; $763e: $88
    ld c, b                                       ; $763f: $48
    ld c, c                                       ; $7640: $49
    pop de                                        ; $7641: $d1
    add hl, sp                                    ; $7642: $39
    inc [hl]                                      ; $7643: $34
    dec [hl]                                      ; $7644: $35
    dec [hl]                                      ; $7645: $35
    dec [hl]                                      ; $7646: $35
    adc $d1                                       ; $7647: $ce $d1
    pop de                                        ; $7649: $d1
    pop de                                        ; $764a: $d1
    pop de                                        ; $764b: $d1
    pop de                                        ; $764c: $d1
    pop de                                        ; $764d: $d1
    pop de                                        ; $764e: $d1
    ld bc, $0901                                  ; $764f: $01 $01 $09
    ld bc, $8080                                  ; $7652: $01 $80 $80
    add b                                         ; $7655: $80
    add b                                         ; $7656: $80
    adc b                                         ; $7657: $88
    add b                                         ; $7658: $80
    add b                                         ; $7659: $80
    add b                                         ; $765a: $80
    add b                                         ; $765b: $80
    add b                                         ; $765c: $80
    add b                                         ; $765d: $80
    add b                                         ; $765e: $80
    ld b, $09                                     ; $765f: $06 $09
    ld l, $18                                     ; $7661: $2e $18
    cpl                                           ; $7663: $2f
    jr nc, jr_088_7697                            ; $7664: $30 $31

    add hl, de                                    ; $7666: $19
    ld [hl-], a                                   ; $7667: $32
    ld a, [bc]                                    ; $7668: $0a
    dec bc                                        ; $7669: $0b
    inc c                                         ; $766a: $0c
    ld [hl], $37                                  ; $766b: $36 $37
    dec c                                         ; $766d: $0d
    ld c, $06                                     ; $766e: $0e $06
    ld c, $07                                     ; $7670: $0e $07
    ld bc, $0707                                  ; $7672: $01 $07 $07
    rlca                                          ; $7675: $07
    ld bc, $0901                                  ; $7676: $01 $01 $09
    adc d                                         ; $7679: $8a
    adc d                                         ; $767a: $8a
    ld bc, $8a01                                  ; $767b: $01 $01 $8a
    adc d                                         ; $767e: $8a
    ld c, b                                       ; $767f: $48
    rrca                                          ; $7680: $0f
    db $10                                        ; $7681: $10
    ld de, $4d4c                                  ; $7682: $11 $4c $4d
    ldh [$e1], a                                  ; $7685: $e0 $e1
    ld d, b                                       ; $7687: $50
    ld [de], a                                    ; $7688: $12
    db $e3                                        ; $7689: $e3
    db $e4                                        ; $768a: $e4
    ld de, $1312                                  ; $768b: $11 $12 $13
    ld a, [$0901]                                 ; $768e: $fa $01 $09
    adc d                                         ; $7691: $8a
    adc d                                         ; $7692: $8a
    ld bc, $0a01                                  ; $7693: $01 $01 $0a
    ld a, [bc]                                    ; $7696: $0a

jr_088_7697:
    ld bc, $0a09                                  ; $7697: $01 $09 $0a
    ld a, [bc]                                    ; $769a: $0a
    ld bc, $0101                                  ; $769b: $01 $01 $01
    ld bc, $3d13                                  ; $769e: $01 $13 $3d
    ld a, $3f                                     ; $76a1: $3e $3f
    inc d                                         ; $76a3: $14
    ld b, c                                       ; $76a4: $41
    ld b, d                                       ; $76a5: $42
    ld b, e                                       ; $76a6: $43
    ld b, h                                       ; $76a7: $44
    ld b, l                                       ; $76a8: $45
    ld b, [hl]                                    ; $76a9: $46
    ld b, a                                       ; $76aa: $47
    rlca                                          ; $76ab: $07
    ld [$0a09], sp                                ; $76ac: $08 $09 $0a
    add hl, bc                                    ; $76af: $09
    ld bc, $0101                                  ; $76b0: $01 $01 $01
    add hl, bc                                    ; $76b3: $09
    ld bc, $0101                                  ; $76b4: $01 $01 $01
    ld bc, $0101                                  ; $76b7: $01 $01 $01
    ld bc, $0101                                  ; $76ba: $01 $01 $01
    ld bc, $4801                                  ; $76bd: $01 $01 $48
    jp nc, $d1d1                                  ; $76c0: $d2 $d1 $d1

    dec [hl]                                      ; $76c3: $35
    adc $d1                                       ; $76c4: $ce $d1
    pop de                                        ; $76c6: $d1
    pop de                                        ; $76c7: $d1
    pop de                                        ; $76c8: $d1
    pop de                                        ; $76c9: $d1
    pop de                                        ; $76ca: $d1
    pop de                                        ; $76cb: $d1
    pop de                                        ; $76cc: $d1
    pop de                                        ; $76cd: $d1
    pop de                                        ; $76ce: $d1
    rlca                                          ; $76cf: $07
    add b                                         ; $76d0: $80
    add b                                         ; $76d1: $80
    add b                                         ; $76d2: $80
    add b                                         ; $76d3: $80
    adc b                                         ; $76d4: $88
    add b                                         ; $76d5: $80
    add b                                         ; $76d6: $80
    add b                                         ; $76d7: $80
    add b                                         ; $76d8: $80
    add b                                         ; $76d9: $80
    add b                                         ; $76da: $80
    add b                                         ; $76db: $80
    add b                                         ; $76dc: $80
    add b                                         ; $76dd: $80
    add b                                         ; $76de: $80
    add hl, bc                                    ; $76df: $09
    nop                                           ; $76e0: $00
    add hl, bc                                    ; $76e1: $09
    nop                                           ; $76e2: $00
    ld h, b                                       ; $76e3: $60
    ld [$d1d1], sp                                ; $76e4: $08 $d1 $d1
    pop de                                        ; $76e7: $d1
    pop de                                        ; $76e8: $d1
    pop de                                        ; $76e9: $d1
    pop de                                        ; $76ea: $d1
    pop de                                        ; $76eb: $d1
    pop de                                        ; $76ec: $d1
    pop de                                        ; $76ed: $d1
    pop de                                        ; $76ee: $d1
    pop de                                        ; $76ef: $d1
    pop de                                        ; $76f0: $d1
    pop de                                        ; $76f1: $d1
    pop de                                        ; $76f2: $d1
    pop de                                        ; $76f3: $d1
    pop de                                        ; $76f4: $d1
    add b                                         ; $76f5: $80
    add b                                         ; $76f6: $80
    add b                                         ; $76f7: $80
    add b                                         ; $76f8: $80
    add b                                         ; $76f9: $80
    add b                                         ; $76fa: $80
    add b                                         ; $76fb: $80
    add b                                         ; $76fc: $80
    add b                                         ; $76fd: $80
    add b                                         ; $76fe: $80
    add b                                         ; $76ff: $80
    add b                                         ; $7700: $80
    add b                                         ; $7701: $80
    add b                                         ; $7702: $80
    add b                                         ; $7703: $80
    add b                                         ; $7704: $80
    jp nc, $d4d3                                  ; $7705: $d2 $d3 $d4

    call nc, $d6d5                                ; $7708: $d4 $d5 $d6
    rst $10                                       ; $770b: $d7
    rst $10                                       ; $770c: $d7
    jp nc, $d8d3                                  ; $770d: $d2 $d3 $d8

    ret c                                         ; $7710: $d8

    push de                                       ; $7711: $d5
    sub $d9                                       ; $7712: $d6 $d9
    reti                                          ; $7714: $d9


    inc b                                         ; $7715: $04
    inc b                                         ; $7716: $04
    inc bc                                        ; $7717: $03
    inc bc                                        ; $7718: $03
    inc b                                         ; $7719: $04
    inc b                                         ; $771a: $04
    inc bc                                        ; $771b: $03
    inc bc                                        ; $771c: $03
    inc b                                         ; $771d: $04
    inc b                                         ; $771e: $04
    inc bc                                        ; $771f: $03
    inc bc                                        ; $7720: $03
    inc b                                         ; $7721: $04
    inc b                                         ; $7722: $04
    ld [bc], a                                    ; $7723: $02
    ld [bc], a                                    ; $7724: $02
    call nc, $dbda                                ; $7725: $d4 $da $db
    call c, $d4d7                                 ; $7728: $dc $d7 $d4
    jp c, $d8dd                                   ; $772b: $da $dd $d8

    rst $10                                       ; $772e: $d7
    call nc, $d9dc                                ; $772f: $d4 $dc $d9
    ret c                                         ; $7732: $d8

    rst $10                                       ; $7733: $d7
    db $dd                                        ; $7734: $dd
    inc bc                                        ; $7735: $03
    inc bc                                        ; $7736: $03
    inc bc                                        ; $7737: $03
    inc b                                         ; $7738: $04
    inc bc                                        ; $7739: $03
    inc bc                                        ; $773a: $03
    inc bc                                        ; $773b: $03
    inc b                                         ; $773c: $04
    inc bc                                        ; $773d: $03
    inc bc                                        ; $773e: $03
    inc bc                                        ; $773f: $03
    inc b                                         ; $7740: $04
    ld [bc], a                                    ; $7741: $02
    inc bc                                        ; $7742: $03
    inc bc                                        ; $7743: $03
    inc b                                         ; $7744: $04
    sbc $df                                       ; $7745: $de $df
    ldh [$e1], a                                  ; $7747: $e0 $e1
    ld [c], a                                     ; $7749: $e2
    db $e3                                        ; $774a: $e3
    db $e4                                        ; $774b: $e4
    push hl                                       ; $774c: $e5
    sbc $df                                       ; $774d: $de $df
    and $e7                                       ; $774f: $e6 $e7
    ld [c], a                                     ; $7751: $e2
    db $e3                                        ; $7752: $e3
    pop de                                        ; $7753: $d1
    add sp, $04                                   ; $7754: $e8 $04
    inc b                                         ; $7756: $04
    ld b, $06                                     ; $7757: $06 $06
    inc b                                         ; $7759: $04
    inc b                                         ; $775a: $04
    ld b, $06                                     ; $775b: $06 $06
    inc b                                         ; $775d: $04
    inc b                                         ; $775e: $04
    dec b                                         ; $775f: $05
    dec b                                         ; $7760: $05
    inc b                                         ; $7761: $04
    inc b                                         ; $7762: $04
    ld b, $06                                     ; $7763: $06 $06
    jp nc, $e9d3                                  ; $7765: $d2 $d3 $e9

    pop de                                        ; $7768: $d1
    push de                                       ; $7769: $d5
    sub $ea                                       ; $776a: $d6 $ea
    pop de                                        ; $776c: $d1
    jp nc, $ebd3                                  ; $776d: $d2 $d3 $eb

    db $ec                                        ; $7770: $ec
    push de                                       ; $7771: $d5
    sub $d1                                       ; $7772: $d6 $d1
    db $ed                                        ; $7774: $ed
    inc b                                         ; $7775: $04
    inc b                                         ; $7776: $04
    add l                                         ; $7777: $85
    add l                                         ; $7778: $85
    inc b                                         ; $7779: $04
    inc b                                         ; $777a: $04
    add l                                         ; $777b: $85
    add l                                         ; $777c: $85
    inc b                                         ; $777d: $04
    inc b                                         ; $777e: $04
    dec b                                         ; $777f: $05
    dec b                                         ; $7780: $05
    inc b                                         ; $7781: $04
    inc b                                         ; $7782: $04
    dec b                                         ; $7783: $05
    dec b                                         ; $7784: $05
    xor $ef                                       ; $7785: $ee $ef
    ret c                                         ; $7787: $d8

    call c, $f1f0                                 ; $7788: $dc $f0 $f1
    ld a, [c]                                     ; $778b: $f2
    db $dd                                        ; $778c: $dd
    di                                            ; $778d: $f3
    db $f4                                        ; $778e: $f4
    push af                                       ; $778f: $f5
    or $f7                                        ; $7790: $f6 $f7
    ld hl, sp-$07                                 ; $7792: $f8 $f9
    ld a, [$8585]                                 ; $7794: $fa $85 $85
    inc bc                                        ; $7797: $03
    inc b                                         ; $7798: $04
    add l                                         ; $7799: $85
    add l                                         ; $779a: $85
    ld [bc], a                                    ; $779b: $02
    inc b                                         ; $779c: $04
    dec b                                         ; $779d: $05
    dec b                                         ; $779e: $05
    ld [bc], a                                    ; $779f: $02
    inc b                                         ; $77a0: $04
    dec b                                         ; $77a1: $05
    dec b                                         ; $77a2: $05
    ld [bc], a                                    ; $77a3: $02
    ld [bc], a                                    ; $77a4: $02
    sbc $df                                       ; $77a5: $de $df
    pop de                                        ; $77a7: $d1
    ei                                            ; $77a8: $fb
    ld [c], a                                     ; $77a9: $e2
    db $e3                                        ; $77aa: $e3
    db $fc                                        ; $77ab: $fc
    db $fd                                        ; $77ac: $fd
    cp $ff                                        ; $77ad: $fe $ff
    nop                                           ; $77af: $00
    ld bc, $0302                                  ; $77b0: $01 $02 $03
    inc b                                         ; $77b3: $04
    dec b                                         ; $77b4: $05
    inc b                                         ; $77b5: $04
    inc b                                         ; $77b6: $04
    ld b, $06                                     ; $77b7: $06 $06
    inc b                                         ; $77b9: $04
    inc b                                         ; $77ba: $04
    dec b                                         ; $77bb: $05
    dec b                                         ; $77bc: $05
    inc b                                         ; $77bd: $04
    inc b                                         ; $77be: $04
    ld [bc], a                                    ; $77bf: $02
    ld [bc], a                                    ; $77c0: $02
    ld [bc], a                                    ; $77c1: $02
    ld [bc], a                                    ; $77c2: $02
    ld bc, $d201                                  ; $77c3: $01 $01 $d2
    db $d3                                        ; $77c6: $d3
    ld b, $07                                     ; $77c7: $06 $07
    push de                                       ; $77c9: $d5
    sub $08                                       ; $77ca: $d6 $08
    add hl, bc                                    ; $77cc: $09
    jp nc, $0ad3                                  ; $77cd: $d2 $d3 $0a

    dec bc                                        ; $77d0: $0b
    push de                                       ; $77d1: $d5
    sub $0c                                       ; $77d2: $d6 $0c
    dec c                                         ; $77d4: $0d
    inc b                                         ; $77d5: $04
    inc b                                         ; $77d6: $04
    dec b                                         ; $77d7: $05
    dec b                                         ; $77d8: $05
    inc b                                         ; $77d9: $04
    inc b                                         ; $77da: $04
    dec b                                         ; $77db: $05
    dec b                                         ; $77dc: $05
    inc b                                         ; $77dd: $04
    inc b                                         ; $77de: $04
    ld [bc], a                                    ; $77df: $02
    ld [bc], a                                    ; $77e0: $02
    inc b                                         ; $77e1: $04
    inc b                                         ; $77e2: $04
    ld [bc], a                                    ; $77e3: $02
    ld [bc], a                                    ; $77e4: $02
    ld c, $0f                                     ; $77e5: $0e $0f
    db $10                                        ; $77e7: $10
    ld de, $1312                                  ; $77e8: $11 $12 $13
    inc d                                         ; $77eb: $14
    dec d                                         ; $77ec: $15
    ld d, $17                                     ; $77ed: $16 $17
    jr jr_088_780a                                ; $77ef: $18 $19

    ld a, [de]                                    ; $77f1: $1a
    dec de                                        ; $77f2: $1b
    inc e                                         ; $77f3: $1c
    dec e                                         ; $77f4: $1d
    dec b                                         ; $77f5: $05
    dec b                                         ; $77f6: $05
    ld [bc], a                                    ; $77f7: $02
    ld [bc], a                                    ; $77f8: $02
    dec b                                         ; $77f9: $05
    ld [bc], a                                    ; $77fa: $02
    rlca                                          ; $77fb: $07
    ld bc, $0102                                  ; $77fc: $01 $02 $01
    ld bc, $0101                                  ; $77ff: $01 $01 $01
    ld bc, $0701                                  ; $7802: $01 $01 $07
    ld e, $1f                                     ; $7805: $1e $1f
    jr nz, @+$23                                  ; $7807: $20 $21

    ld [hl+], a                                   ; $7809: $22

jr_088_780a:
    inc hl                                        ; $780a: $23
    inc h                                         ; $780b: $24
    dec h                                         ; $780c: $25
    ld h, $27                                     ; $780d: $26 $27
    jr z, @+$2b                                   ; $780f: $28 $29

    ld a, [hl+]                                   ; $7811: $2a
    dec hl                                        ; $7812: $2b
    inc l                                         ; $7813: $2c
    dec l                                         ; $7814: $2d
    rlca                                          ; $7815: $07
    ld bc, $0107                                  ; $7816: $01 $07 $01
    ld bc, $0101                                  ; $7819: $01 $01 $01
    ld bc, $0107                                  ; $781c: $01 $07 $01
    rlca                                          ; $781f: $07
    ld bc, $0101                                  ; $7820: $01 $01 $01
    ld bc, $d201                                  ; $7823: $01 $01 $d2
    db $d3                                        ; $7826: $d3
    ld l, $2f                                     ; $7827: $2e $2f
    jr nc, jr_088_785c                            ; $7829: $30 $31

    ld [hl-], a                                   ; $782b: $32
    inc sp                                        ; $782c: $33
    inc [hl]                                      ; $782d: $34
    dec [hl]                                      ; $782e: $35
    ld [hl], $37                                  ; $782f: $36 $37
    jr c, jr_088_786c                             ; $7831: $38 $39

    ld a, [hl-]                                   ; $7833: $3a
    dec sp                                        ; $7834: $3b
    inc b                                         ; $7835: $04
    inc b                                         ; $7836: $04
    ld [bc], a                                    ; $7837: $02
    ld bc, $0404                                  ; $7838: $01 $04 $04
    ld [bc], a                                    ; $783b: $02
    rlca                                          ; $783c: $07
    ld [bc], a                                    ; $783d: $02
    ld [bc], a                                    ; $783e: $02
    ld bc, $0201                                  ; $783f: $01 $01 $02
    ld [bc], a                                    ; $7842: $02
    rlca                                          ; $7843: $07
    ld bc, $3d3c                                  ; $7844: $01 $3c $3d
    ld a, $3f                                     ; $7847: $3e $3f
    ld b, b                                       ; $7849: $40
    ld b, c                                       ; $784a: $41
    ld b, d                                       ; $784b: $42
    ld b, e                                       ; $784c: $43
    ld b, h                                       ; $784d: $44
    ld b, l                                       ; $784e: $45
    ld b, [hl]                                    ; $784f: $46
    ld b, a                                       ; $7850: $47
    ld c, b                                       ; $7851: $48
    ld c, c                                       ; $7852: $49
    ld c, d                                       ; $7853: $4a
    ld c, e                                       ; $7854: $4b
    rlca                                          ; $7855: $07
    ld bc, $0107                                  ; $7856: $01 $07 $01
    ld bc, $0107                                  ; $7859: $01 $07 $01

jr_088_785c:
    rlca                                          ; $785c: $07
    rlca                                          ; $785d: $07
    ld bc, $0107                                  ; $785e: $01 $07 $01
    ld bc, $0107                                  ; $7861: $01 $07 $01
    ld bc, $4d4c                                  ; $7864: $01 $4c $4d
    ld c, [hl]                                    ; $7867: $4e
    ld c, a                                       ; $7868: $4f
    ld d, b                                       ; $7869: $50
    ld d, c                                       ; $786a: $51
    ld d, d                                       ; $786b: $52

jr_088_786c:
    ld d, e                                       ; $786c: $53
    ld d, h                                       ; $786d: $54
    ld d, l                                       ; $786e: $55
    ld d, [hl]                                    ; $786f: $56
    ld d, a                                       ; $7870: $57
    ld e, b                                       ; $7871: $58
    ld e, c                                       ; $7872: $59
    ld e, d                                       ; $7873: $5a
    ld e, e                                       ; $7874: $5b
    rlca                                          ; $7875: $07
    ld bc, $0101                                  ; $7876: $01 $01 $01
    ld bc, $0107                                  ; $7879: $01 $07 $01
    ld bc, $0707                                  ; $787c: $01 $07 $07
    ld bc, $0101                                  ; $787f: $01 $01 $01
    rlca                                          ; $7882: $07
    rlca                                          ; $7883: $07
    ld bc, $5d5c                                  ; $7884: $01 $5c $5d
    pop de                                        ; $7887: $d1
    ld e, [hl]                                    ; $7888: $5e
    ld e, a                                       ; $7889: $5f
    ld h, b                                       ; $788a: $60
    pop de                                        ; $788b: $d1
    ld h, c                                       ; $788c: $61
    ld h, d                                       ; $788d: $62
    ld h, d                                       ; $788e: $62
    ld h, d                                       ; $788f: $62
    ld h, d                                       ; $7890: $62
    ld h, e                                       ; $7891: $63
    ld h, h                                       ; $7892: $64
    ld h, l                                       ; $7893: $65
    ld h, [hl]                                    ; $7894: $66
    ld b, $06                                     ; $7895: $06 $06
    ld b, $06                                     ; $7897: $06 $06
    ld b, $06                                     ; $7899: $06 $06
    ld b, $06                                     ; $789b: $06 $06
    dec b                                         ; $789d: $05
    dec b                                         ; $789e: $05
    dec b                                         ; $789f: $05
    dec b                                         ; $78a0: $05
    ld b, $06                                     ; $78a1: $06 $06
    ld b, $06                                     ; $78a3: $06 $06
    ld h, a                                       ; $78a5: $67
    ld l, b                                       ; $78a6: $68
    ld l, c                                       ; $78a7: $69
    ld l, d                                       ; $78a8: $6a
    ld l, e                                       ; $78a9: $6b
    ld l, h                                       ; $78aa: $6c
    ld l, l                                       ; $78ab: $6d
    ld l, [hl]                                    ; $78ac: $6e
    ld h, d                                       ; $78ad: $62
    ld h, d                                       ; $78ae: $62
    ld l, a                                       ; $78af: $6f
    ld [hl], b                                    ; $78b0: $70
    ld [hl], c                                    ; $78b1: $71
    ld [hl], d                                    ; $78b2: $72
    ld [hl], e                                    ; $78b3: $73
    pop de                                        ; $78b4: $d1
    ld b, $06                                     ; $78b5: $06 $06
    ld b, $06                                     ; $78b7: $06 $06
    ld b, $06                                     ; $78b9: $06 $06
    ld b, $06                                     ; $78bb: $06 $06
    dec b                                         ; $78bd: $05
    dec b                                         ; $78be: $05
    dec b                                         ; $78bf: $05
    dec b                                         ; $78c0: $05
    ld b, $06                                     ; $78c1: $06 $06
    ld b, $06                                     ; $78c3: $06 $06
    rst $18                                       ; $78c5: $df
    sbc $dc                                       ; $78c6: $de $dc
    db $db                                        ; $78c8: $db
    db $e3                                        ; $78c9: $e3
    ld [c], a                                     ; $78ca: $e2
    db $dd                                        ; $78cb: $dd
    jp c, $dedf                                   ; $78cc: $da $df $de

    call c, $e3d4                                 ; $78cf: $dc $d4 $e3
    ld [c], a                                     ; $78d2: $e2
    db $dd                                        ; $78d3: $dd
    rst $10                                       ; $78d4: $d7
    inc h                                         ; $78d5: $24
    inc h                                         ; $78d6: $24
    inc h                                         ; $78d7: $24
    inc hl                                        ; $78d8: $23
    inc h                                         ; $78d9: $24
    inc h                                         ; $78da: $24
    inc h                                         ; $78db: $24
    inc hl                                        ; $78dc: $23
    inc h                                         ; $78dd: $24
    inc h                                         ; $78de: $24
    inc h                                         ; $78df: $24
    inc hl                                        ; $78e0: $23
    inc h                                         ; $78e1: $24
    inc h                                         ; $78e2: $24
    inc h                                         ; $78e3: $24
    inc hl                                        ; $78e4: $23
    jp c, $d4d4                                   ; $78e5: $da $d4 $d4

    call nc, $d7d4                                ; $78e8: $d4 $d4 $d7
    rst $10                                       ; $78eb: $d7
    rst $10                                       ; $78ec: $d7
    rst $10                                       ; $78ed: $d7
    ret c                                         ; $78ee: $d8

    ret c                                         ; $78ef: $d8

    ret c                                         ; $78f0: $d8

    ret c                                         ; $78f1: $d8

    reti                                          ; $78f2: $d9


    reti                                          ; $78f3: $d9


    reti                                          ; $78f4: $d9


    inc hl                                        ; $78f5: $23
    inc hl                                        ; $78f6: $23
    inc hl                                        ; $78f7: $23
    inc hl                                        ; $78f8: $23
    inc hl                                        ; $78f9: $23
    inc hl                                        ; $78fa: $23
    inc hl                                        ; $78fb: $23
    inc hl                                        ; $78fc: $23
    inc hl                                        ; $78fd: $23
    inc hl                                        ; $78fe: $23
    inc hl                                        ; $78ff: $23
    inc hl                                        ; $7900: $23
    inc hl                                        ; $7901: $23
    ld [bc], a                                    ; $7902: $02
    ld [bc], a                                    ; $7903: $02
    ld [bc], a                                    ; $7904: $02
    ld [hl], h                                    ; $7905: $74
    ld [hl], l                                    ; $7906: $75
    halt                                          ; $7907: $76
    ld [hl], a                                    ; $7908: $77
    ld a, b                                       ; $7909: $78
    ld a, b                                       ; $790a: $78
    ld a, b                                       ; $790b: $78
    ld a, b                                       ; $790c: $78
    ld a, c                                       ; $790d: $79
    ld a, d                                       ; $790e: $7a
    ld a, e                                       ; $790f: $7b
    ld a, e                                       ; $7910: $7b
    ld a, h                                       ; $7911: $7c
    ld a, l                                       ; $7912: $7d
    ld a, [hl]                                    ; $7913: $7e
    ld a, [hl]                                    ; $7914: $7e
    ld b, $06                                     ; $7915: $06 $06
    ld b, $06                                     ; $7917: $06 $06
    dec b                                         ; $7919: $05
    dec b                                         ; $791a: $05
    dec b                                         ; $791b: $05
    dec b                                         ; $791c: $05
    ld [bc], a                                    ; $791d: $02
    ld [bc], a                                    ; $791e: $02
    ld [bc], a                                    ; $791f: $02
    ld [hl+], a                                   ; $7920: $22
    ld bc, $0101                                  ; $7921: $01 $01 $01
    ld hl, $807f                                  ; $7924: $21 $7f $80
    ld a, a                                       ; $7927: $7f
    pop de                                        ; $7928: $d1
    ld a, b                                       ; $7929: $78
    ld a, b                                       ; $792a: $78
    add c                                         ; $792b: $81
    add d                                         ; $792c: $82
    add e                                         ; $792d: $83
    add h                                         ; $792e: $84
    ld bc, $7d00                                  ; $792f: $01 $00 $7d
    ld a, h                                       ; $7932: $7c
    dec b                                         ; $7933: $05
    inc b                                         ; $7934: $04
    ld b, $0e                                     ; $7935: $06 $0e
    ld h, $06                                     ; $7937: $26 $06
    dec b                                         ; $7939: $05
    dec b                                         ; $793a: $05
    dec c                                         ; $793b: $0d
    dec c                                         ; $793c: $0d
    ld a, [bc]                                    ; $793d: $0a
    ld a, [bc]                                    ; $793e: $0a
    ld [hl+], a                                   ; $793f: $22
    ld [hl+], a                                   ; $7940: $22
    ld hl, $2121                                  ; $7941: $21 $21 $21
    ld hl, $dedf                                  ; $7944: $21 $df $de
    call c, $e3d8                                 ; $7947: $dc $d8 $e3
    ld [c], a                                     ; $794a: $e2
    db $dd                                        ; $794b: $dd
    ld a, [c]                                     ; $794c: $f2
    rst $38                                       ; $794d: $ff
    cp $f6                                        ; $794e: $fe $f6
    push af                                       ; $7950: $f5
    inc bc                                        ; $7951: $03
    ld [bc], a                                    ; $7952: $02
    ld a, [$24f9]                                 ; $7953: $fa $f9 $24
    inc h                                         ; $7956: $24
    inc h                                         ; $7957: $24
    inc hl                                        ; $7958: $23
    inc h                                         ; $7959: $24
    inc h                                         ; $795a: $24
    inc h                                         ; $795b: $24
    ld [hl+], a                                   ; $795c: $22
    inc h                                         ; $795d: $24
    inc h                                         ; $795e: $24
    inc h                                         ; $795f: $24
    ld [hl+], a                                   ; $7960: $22
    ld [hl+], a                                   ; $7961: $22
    ld [hl+], a                                   ; $7962: $22
    ld [hl+], a                                   ; $7963: $22
    ld [hl+], a                                   ; $7964: $22
    rst $28                                       ; $7965: $ef
    xor $d1                                       ; $7966: $ee $d1
    jp hl                                         ; $7968: $e9


    pop af                                        ; $7969: $f1
    ldh a, [$d1]                                  ; $796a: $f0 $d1
    ld [$f3f4], a                                 ; $796c: $ea $f4 $f3
    db $ec                                        ; $796f: $ec
    db $eb                                        ; $7970: $eb
    ld hl, sp-$09                                 ; $7971: $f8 $f7
    db $ed                                        ; $7973: $ed
    pop de                                        ; $7974: $d1
    and l                                         ; $7975: $a5
    and l                                         ; $7976: $a5
    add l                                         ; $7977: $85
    and l                                         ; $7978: $a5
    and l                                         ; $7979: $a5
    and l                                         ; $797a: $a5
    add l                                         ; $797b: $85
    and l                                         ; $797c: $a5
    dec h                                         ; $797d: $25
    dec h                                         ; $797e: $25
    dec h                                         ; $797f: $25
    dec h                                         ; $7980: $25
    dec h                                         ; $7981: $25
    dec h                                         ; $7982: $25
    dec h                                         ; $7983: $25
    dec b                                         ; $7984: $05
    add l                                         ; $7985: $85
    add [hl]                                      ; $7986: $86
    add a                                         ; $7987: $87
    add a                                         ; $7988: $87
    adc b                                         ; $7989: $88
    adc c                                         ; $798a: $89
    adc d                                         ; $798b: $8a
    adc e                                         ; $798c: $8b
    adc h                                         ; $798d: $8c
    adc l                                         ; $798e: $8d
    adc [hl]                                      ; $798f: $8e
    adc a                                         ; $7990: $8f
    sub b                                         ; $7991: $90
    sub c                                         ; $7992: $91
    sub d                                         ; $7993: $92
    sub e                                         ; $7994: $93
    rrca                                          ; $7995: $0f
    rrca                                          ; $7996: $0f
    rrca                                          ; $7997: $0f
    cpl                                           ; $7998: $2f
    rrca                                          ; $7999: $0f
    rrca                                          ; $799a: $0f
    rrca                                          ; $799b: $0f
    rrca                                          ; $799c: $0f
    rrca                                          ; $799d: $0f
    rrca                                          ; $799e: $0f
    rrca                                          ; $799f: $0f
    rrca                                          ; $79a0: $0f
    rrca                                          ; $79a1: $0f
    rrca                                          ; $79a2: $0f
    rrca                                          ; $79a3: $0f
    rrca                                          ; $79a4: $0f
    add [hl]                                      ; $79a5: $86
    add l                                         ; $79a6: $85
    ld hl, $9420                                  ; $79a7: $21 $20 $94
    adc b                                         ; $79aa: $88
    dec h                                         ; $79ab: $25
    inc h                                         ; $79ac: $24
    sub l                                         ; $79ad: $95
    adc h                                         ; $79ae: $8c
    add hl, hl                                    ; $79af: $29
    jr z, @-$68                                   ; $79b0: $28 $96

    sub b                                         ; $79b2: $90
    dec l                                         ; $79b3: $2d
    inc l                                         ; $79b4: $2c
    cpl                                           ; $79b5: $2f
    cpl                                           ; $79b6: $2f
    ld hl, $0f27                                  ; $79b7: $21 $27 $0f
    cpl                                           ; $79ba: $2f
    ld hl, $0f21                                  ; $79bb: $21 $21 $0f
    cpl                                           ; $79be: $2f
    ld hl, $0f27                                  ; $79bf: $21 $27 $0f
    cpl                                           ; $79c2: $2f
    ld hl, $1f27                                  ; $79c3: $21 $27 $1f
    ld e, $11                                     ; $79c6: $1e $11
    db $10                                        ; $79c8: $10
    inc hl                                        ; $79c9: $23
    ld [hl+], a                                   ; $79ca: $22
    dec d                                         ; $79cb: $15
    inc d                                         ; $79cc: $14
    daa                                           ; $79cd: $27
    ld h, $19                                     ; $79ce: $26 $19
    jr jr_088_79fd                                ; $79d0: $18 $2b

    ld a, [hl+]                                   ; $79d2: $2a
    dec e                                         ; $79d3: $1d
    inc e                                         ; $79d4: $1c
    ld hl, $2221                                  ; $79d5: $21 $21 $22
    ld [hl+], a                                   ; $79d8: $22
    daa                                           ; $79d9: $27
    ld hl, $2127                                  ; $79da: $21 $27 $21
    ld hl, $2121                                  ; $79dd: $21 $21 $21
    daa                                           ; $79e0: $27
    ld hl, $2727                                  ; $79e1: $21 $27 $27
    ld hl, $0e0f                                  ; $79e4: $21 $0f $0e
    rlca                                          ; $79e7: $07
    ld b, $13                                     ; $79e8: $06 $13
    ld [de], a                                    ; $79ea: $12
    add hl, bc                                    ; $79eb: $09
    ld [$1617], sp                                ; $79ec: $08 $17 $16
    dec bc                                        ; $79ef: $0b
    ld a, [bc]                                    ; $79f0: $0a
    dec de                                        ; $79f1: $1b
    ld a, [de]                                    ; $79f2: $1a
    dec c                                         ; $79f3: $0d
    inc c                                         ; $79f4: $0c
    dec h                                         ; $79f5: $25
    dec h                                         ; $79f6: $25
    dec h                                         ; $79f7: $25
    dec h                                         ; $79f8: $25
    ld [hl+], a                                   ; $79f9: $22
    dec h                                         ; $79fa: $25
    dec h                                         ; $79fb: $25
    dec h                                         ; $79fc: $25

jr_088_79fd:
    ld hl, $2222                                  ; $79fd: $21 $22 $22
    ld [hl+], a                                   ; $7a00: $22
    daa                                           ; $7a01: $27
    ld hl, $2222                                  ; $7a02: $21 $22 $22
    sub a                                         ; $7a05: $97
    sbc b                                         ; $7a06: $98
    sbc c                                         ; $7a07: $99
    sbc d                                         ; $7a08: $9a
    sbc e                                         ; $7a09: $9b
    sbc h                                         ; $7a0a: $9c
    sbc l                                         ; $7a0b: $9d
    sbc l                                         ; $7a0c: $9d
    sbc [hl]                                      ; $7a0d: $9e
    sbc a                                         ; $7a0e: $9f
    and b                                         ; $7a0f: $a0
    and b                                         ; $7a10: $a0
    and c                                         ; $7a11: $a1
    and d                                         ; $7a12: $a2
    and e                                         ; $7a13: $a3
    and e                                         ; $7a14: $a3
    rrca                                          ; $7a15: $0f
    rrca                                          ; $7a16: $0f
    rrca                                          ; $7a17: $0f
    rrca                                          ; $7a18: $0f
    rrca                                          ; $7a19: $0f
    rrca                                          ; $7a1a: $0f
    rrca                                          ; $7a1b: $0f
    cpl                                           ; $7a1c: $2f
    add hl, bc                                    ; $7a1d: $09
    rrca                                          ; $7a1e: $0f
    rrca                                          ; $7a1f: $0f
    cpl                                           ; $7a20: $2f
    rrca                                          ; $7a21: $0f
    add hl, bc                                    ; $7a22: $09
    add hl, bc                                    ; $7a23: $09
    cpl                                           ; $7a24: $2f
    and h                                         ; $7a25: $a4
    sub a                                         ; $7a26: $97
    ld c, a                                       ; $7a27: $4f
    ld c, [hl]                                    ; $7a28: $4e
    sbc h                                         ; $7a29: $9c
    sbc e                                         ; $7a2a: $9b
    ld d, e                                       ; $7a2b: $53
    ld d, d                                       ; $7a2c: $52
    sbc a                                         ; $7a2d: $9f
    sbc [hl]                                      ; $7a2e: $9e
    ld d, a                                       ; $7a2f: $57
    ld d, [hl]                                    ; $7a30: $56
    and d                                         ; $7a31: $a2
    and c                                         ; $7a32: $a1
    ld e, e                                       ; $7a33: $5b
    ld e, d                                       ; $7a34: $5a
    rrca                                          ; $7a35: $0f
    cpl                                           ; $7a36: $2f
    daa                                           ; $7a37: $27
    daa                                           ; $7a38: $27
    cpl                                           ; $7a39: $2f
    cpl                                           ; $7a3a: $2f
    ld hl, $2921                                  ; $7a3b: $21 $21 $29
    add hl, hl                                    ; $7a3e: $29
    ld hl, $2927                                  ; $7a3f: $21 $27 $29
    add hl, hl                                    ; $7a42: $29
    daa                                           ; $7a43: $27
    ld hl, $4c4d                                  ; $7a44: $21 $4d $4c
    ccf                                           ; $7a47: $3f
    ld a, $51                                     ; $7a48: $3e $51
    ld d, b                                       ; $7a4a: $50
    ld b, e                                       ; $7a4b: $43
    ld b, d                                       ; $7a4c: $42
    ld d, l                                       ; $7a4d: $55
    ld d, h                                       ; $7a4e: $54
    ld b, a                                       ; $7a4f: $47
    ld b, [hl]                                    ; $7a50: $46
    ld e, c                                       ; $7a51: $59
    ld e, b                                       ; $7a52: $58
    ld c, e                                       ; $7a53: $4b
    ld c, d                                       ; $7a54: $4a
    ld hl, $2721                                  ; $7a55: $21 $21 $27
    daa                                           ; $7a58: $27
    daa                                           ; $7a59: $27
    ld hl, $2121                                  ; $7a5a: $21 $21 $21
    ld hl, $2127                                  ; $7a5d: $21 $27 $21
    ld hl, $2127                                  ; $7a60: $21 $27 $21
    daa                                           ; $7a63: $27
    ld hl, $3c3d                                  ; $7a64: $21 $3d $3c
    cpl                                           ; $7a67: $2f
    ld l, $41                                     ; $7a68: $2e $41
    ld b, b                                       ; $7a6a: $40
    inc sp                                        ; $7a6b: $33
    ld [hl-], a                                   ; $7a6c: $32
    ld b, l                                       ; $7a6d: $45
    ld b, h                                       ; $7a6e: $44
    scf                                           ; $7a6f: $37
    ld [hl], $49                                  ; $7a70: $36 $49
    ld c, b                                       ; $7a72: $48
    dec sp                                        ; $7a73: $3b
    ld a, [hl-]                                   ; $7a74: $3a
    ld hl, $2127                                  ; $7a75: $21 $27 $21
    ld [hl+], a                                   ; $7a78: $22
    daa                                           ; $7a79: $27
    ld hl, $2227                                  ; $7a7a: $21 $27 $22
    ld hl, $2127                                  ; $7a7d: $21 $27 $21
    ld hl, $2121                                  ; $7a80: $21 $21 $21
    ld hl, $d321                                  ; $7a83: $21 $21 $d3
    jp nc, $d1d1                                  ; $7a86: $d2 $d1 $d1

    sub $d5                                       ; $7a89: $d6 $d5
    pop de                                        ; $7a8b: $d1
    pop de                                        ; $7a8c: $d1
    db $d3                                        ; $7a8d: $d3
    jp nc, $d1d1                                  ; $7a8e: $d2 $d1 $d1

    sub $d5                                       ; $7a91: $d6 $d5
    pop de                                        ; $7a93: $d1
    pop de                                        ; $7a94: $d1
    inc h                                         ; $7a95: $24
    inc h                                         ; $7a96: $24
    nop                                           ; $7a97: $00
    nop                                           ; $7a98: $00
    inc h                                         ; $7a99: $24
    inc h                                         ; $7a9a: $24
    nop                                           ; $7a9b: $00
    nop                                           ; $7a9c: $00
    inc h                                         ; $7a9d: $24
    inc h                                         ; $7a9e: $24
    nop                                           ; $7a9f: $00
    nop                                           ; $7aa0: $00
    inc h                                         ; $7aa1: $24
    inc h                                         ; $7aa2: $24
    nop                                           ; $7aa3: $00
    nop                                           ; $7aa4: $00
    db $d3                                        ; $7aa5: $d3
    jp nc, $d1d1                                  ; $7aa6: $d2 $d1 $d1

    ld sp, $d130                                  ; $7aa9: $31 $30 $d1
    pop de                                        ; $7aac: $d1
    dec [hl]                                      ; $7aad: $35
    inc [hl]                                      ; $7aae: $34
    pop de                                        ; $7aaf: $d1
    pop de                                        ; $7ab0: $d1
    add hl, sp                                    ; $7ab1: $39
    jr c, @-$2d                                   ; $7ab2: $38 $d1

    pop de                                        ; $7ab4: $d1
    inc h                                         ; $7ab5: $24
    inc h                                         ; $7ab6: $24
    nop                                           ; $7ab7: $00
    nop                                           ; $7ab8: $00
    inc h                                         ; $7ab9: $24
    inc h                                         ; $7aba: $24
    nop                                           ; $7abb: $00
    nop                                           ; $7abc: $00
    ld [hl+], a                                   ; $7abd: $22
    ld [hl+], a                                   ; $7abe: $22
    add b                                         ; $7abf: $80
    add b                                         ; $7ac0: $80
    ld [hl+], a                                   ; $7ac1: $22
    ld [hl+], a                                   ; $7ac2: $22
    add b                                         ; $7ac3: $80
    add b                                         ; $7ac4: $80
    pop de                                        ; $7ac5: $d1
    and l                                         ; $7ac6: $a5
    and [hl]                                      ; $7ac7: $a6
    and a                                         ; $7ac8: $a7
    pop de                                        ; $7ac9: $d1
    xor b                                         ; $7aca: $a8
    xor c                                         ; $7acb: $a9
    xor d                                         ; $7acc: $aa
    pop de                                        ; $7acd: $d1
    xor e                                         ; $7ace: $ab
    xor h                                         ; $7acf: $ac
    xor l                                         ; $7ad0: $ad
    pop de                                        ; $7ad1: $d1
    xor e                                         ; $7ad2: $ab
    xor [hl]                                      ; $7ad3: $ae
    xor a                                         ; $7ad4: $af
    add b                                         ; $7ad5: $80
    adc b                                         ; $7ad6: $88
    adc b                                         ; $7ad7: $88
    adc b                                         ; $7ad8: $88
    add b                                         ; $7ad9: $80
    adc b                                         ; $7ada: $88
    inc c                                         ; $7adb: $0c
    inc c                                         ; $7adc: $0c
    add b                                         ; $7add: $80
    adc b                                         ; $7ade: $88
    inc c                                         ; $7adf: $0c
    inc c                                         ; $7ae0: $0c
    add b                                         ; $7ae1: $80
    adc b                                         ; $7ae2: $88
    inc c                                         ; $7ae3: $0c
    inc c                                         ; $7ae4: $0c
    or b                                          ; $7ae5: $b0
    or c                                          ; $7ae6: $b1
    or d                                          ; $7ae7: $b2
    or e                                          ; $7ae8: $b3
    or h                                          ; $7ae9: $b4
    or l                                          ; $7aea: $b5
    or [hl]                                       ; $7aeb: $b6
    or a                                          ; $7aec: $b7
    cp b                                          ; $7aed: $b8
    cp c                                          ; $7aee: $b9
    cp d                                          ; $7aef: $ba
    cp e                                          ; $7af0: $bb
    cp h                                          ; $7af1: $bc
    cp l                                          ; $7af2: $bd
    cp [hl]                                       ; $7af3: $be
    cp a                                          ; $7af4: $bf
    ld a, [bc]                                    ; $7af5: $0a
    add hl, bc                                    ; $7af6: $09
    add hl, bc                                    ; $7af7: $09
    rrca                                          ; $7af8: $0f
    ld a, [bc]                                    ; $7af9: $0a
    rrca                                          ; $7afa: $0f
    add hl, bc                                    ; $7afb: $09
    add hl, bc                                    ; $7afc: $09
    add hl, bc                                    ; $7afd: $09
    add hl, bc                                    ; $7afe: $09
    add hl, bc                                    ; $7aff: $09
    rrca                                          ; $7b00: $0f
    rrca                                          ; $7b01: $0f
    add hl, bc                                    ; $7b02: $09
    rrca                                          ; $7b03: $0f
    rrca                                          ; $7b04: $0f
    ret nz                                        ; $7b05: $c0

    pop bc                                        ; $7b06: $c1
    jp nz, $c4c3                                  ; $7b07: $c2 $c3 $c4

    push bc                                       ; $7b0a: $c5
    add $c7                                       ; $7b0b: $c6 $c7
    ret z                                         ; $7b0d: $c8

    ret                                           ; $7b0e: $c9


    jp z, $cccb                                   ; $7b0f: $ca $cb $cc

    call $cfce                                    ; $7b12: $cd $ce $cf
    rrca                                          ; $7b15: $0f
    add hl, bc                                    ; $7b16: $09
    rrca                                          ; $7b17: $0f
    rrca                                          ; $7b18: $0f
    add hl, bc                                    ; $7b19: $09
    add hl, bc                                    ; $7b1a: $09
    add hl, bc                                    ; $7b1b: $09
    add hl, bc                                    ; $7b1c: $09
    rrca                                          ; $7b1d: $0f
    rrca                                          ; $7b1e: $0f
    rrca                                          ; $7b1f: $0f
    rrca                                          ; $7b20: $0f
    rrca                                          ; $7b21: $0f
    rrca                                          ; $7b22: $0f
    rrca                                          ; $7b23: $0f
    rrca                                          ; $7b24: $0f
    ret nc                                        ; $7b25: $d0

    pop de                                        ; $7b26: $d1
    jp nc, $d4d3                                  ; $7b27: $d2 $d3 $d4

    push de                                       ; $7b2a: $d5
    sub $d7                                       ; $7b2b: $d6 $d7
    ret c                                         ; $7b2d: $d8

    reti                                          ; $7b2e: $d9


    jp c, $dcdb                                   ; $7b2f: $da $db $dc

    db $dd                                        ; $7b32: $dd
    sbc $df                                       ; $7b33: $de $df
    rrca                                          ; $7b35: $0f
    add hl, bc                                    ; $7b36: $09
    add hl, bc                                    ; $7b37: $09
    rrca                                          ; $7b38: $0f
    rrca                                          ; $7b39: $0f
    add hl, bc                                    ; $7b3a: $09
    rrca                                          ; $7b3b: $0f
    add hl, bc                                    ; $7b3c: $09
    add hl, bc                                    ; $7b3d: $09
    rrca                                          ; $7b3e: $0f
    add hl, bc                                    ; $7b3f: $09
    rrca                                          ; $7b40: $0f
    rrca                                          ; $7b41: $0f
    add hl, bc                                    ; $7b42: $09
    rrca                                          ; $7b43: $0f
    add hl, bc                                    ; $7b44: $09
    pop de                                        ; $7b45: $d1
    xor e                                         ; $7b46: $ab
    ldh [$e1], a                                  ; $7b47: $e0 $e1
    pop de                                        ; $7b49: $d1
    xor e                                         ; $7b4a: $ab
    ld [c], a                                     ; $7b4b: $e2
    db $e3                                        ; $7b4c: $e3
    db $e4                                        ; $7b4d: $e4
    xor e                                         ; $7b4e: $ab
    pop de                                        ; $7b4f: $d1
    pop de                                        ; $7b50: $d1
    db $e4                                        ; $7b51: $e4
    xor b                                         ; $7b52: $a8
    pop de                                        ; $7b53: $d1
    pop de                                        ; $7b54: $d1
    add b                                         ; $7b55: $80
    adc b                                         ; $7b56: $88
    inc c                                         ; $7b57: $0c
    inc c                                         ; $7b58: $0c
    add b                                         ; $7b59: $80
    adc b                                         ; $7b5a: $88
    inc c                                         ; $7b5b: $0c
    inc c                                         ; $7b5c: $0c
    adc b                                         ; $7b5d: $88
    adc b                                         ; $7b5e: $88
    rlca                                          ; $7b5f: $07
    rlca                                          ; $7b60: $07
    adc b                                         ; $7b61: $88
    adc b                                         ; $7b62: $88
    rlca                                          ; $7b63: $07
    rlca                                          ; $7b64: $07
    push hl                                       ; $7b65: $e5
    and $e7                                       ; $7b66: $e6 $e7
    add sp, -$1b                                  ; $7b68: $e8 $e5
    and $e7                                       ; $7b6a: $e6 $e7
    jp hl                                         ; $7b6c: $e9


    cp h                                          ; $7b6d: $bc
    cp l                                          ; $7b6e: $bd
    cp [hl]                                       ; $7b6f: $be
    ld [$b9b8], a                                 ; $7b70: $ea $b8 $b9
    cp d                                          ; $7b73: $ba
    cp e                                          ; $7b74: $bb
    add hl, bc                                    ; $7b75: $09
    add hl, bc                                    ; $7b76: $09
    rrca                                          ; $7b77: $0f
    rrca                                          ; $7b78: $0f
    ld c, c                                       ; $7b79: $49
    ld c, c                                       ; $7b7a: $49
    ld c, a                                       ; $7b7b: $4f
    rrca                                          ; $7b7c: $0f
    ld c, c                                       ; $7b7d: $49
    ld c, a                                       ; $7b7e: $4f
    ld c, a                                       ; $7b7f: $4f
    rrca                                          ; $7b80: $0f
    ld c, a                                       ; $7b81: $4f
    ld c, c                                       ; $7b82: $49
    ld c, c                                       ; $7b83: $49
    ld c, a                                       ; $7b84: $4f
    db $eb                                        ; $7b85: $eb
    db $ec                                        ; $7b86: $ec
    db $ed                                        ; $7b87: $ed
    xor $ef                                       ; $7b88: $ee $ef
    ldh a, [$f1]                                  ; $7b8a: $f0 $f1
    ld a, [c]                                     ; $7b8c: $f2
    di                                            ; $7b8d: $f3
    db $f4                                        ; $7b8e: $f4
    push af                                       ; $7b8f: $f5
    or $c8                                        ; $7b90: $f6 $c8
    ret                                           ; $7b92: $c9


    jp z, $0fcb                                   ; $7b93: $ca $cb $0f

    rrca                                          ; $7b96: $0f
    rrca                                          ; $7b97: $0f
    rrca                                          ; $7b98: $0f
    rrca                                          ; $7b99: $0f
    rrca                                          ; $7b9a: $0f
    rrca                                          ; $7b9b: $0f
    rrca                                          ; $7b9c: $0f
    rrca                                          ; $7b9d: $0f
    rrca                                          ; $7b9e: $0f
    rrca                                          ; $7b9f: $0f
    rrca                                          ; $7ba0: $0f
    ld c, a                                       ; $7ba1: $4f
    ld c, a                                       ; $7ba2: $4f
    ld c, a                                       ; $7ba3: $4f
    ld c, a                                       ; $7ba4: $4f
    rst $30                                       ; $7ba5: $f7
    ld hl, sp-$07                                 ; $7ba6: $f8 $f9
    ld a, [$f8f7]                                 ; $7ba8: $fa $f7 $f8
    ld sp, hl                                     ; $7bab: $f9
    ld a, [$dddc]                                 ; $7bac: $fa $dc $dd
    sbc $df                                       ; $7baf: $de $df
    ret c                                         ; $7bb1: $d8

    reti                                          ; $7bb2: $d9


    jp c, Jump_000_0fdb                           ; $7bb3: $da $db $0f

    rrca                                          ; $7bb6: $0f
    add hl, bc                                    ; $7bb7: $09
    rrca                                          ; $7bb8: $0f
    ld c, a                                       ; $7bb9: $4f
    ld c, c                                       ; $7bba: $49
    ld c, c                                       ; $7bbb: $49
    ld c, a                                       ; $7bbc: $4f
    ld c, a                                       ; $7bbd: $4f
    ld c, a                                       ; $7bbe: $4f
    ld c, c                                       ; $7bbf: $49
    ld c, c                                       ; $7bc0: $49
    ld c, c                                       ; $7bc1: $49
    ld c, c                                       ; $7bc2: $49
    ld c, a                                       ; $7bc3: $4f
    ld c, c                                       ; $7bc4: $49
    db $e4                                        ; $7bc5: $e4
    ei                                            ; $7bc6: $fb
    and [hl]                                      ; $7bc7: $a6
    and [hl]                                      ; $7bc8: $a6
    pop de                                        ; $7bc9: $d1
    pop de                                        ; $7bca: $d1
    pop de                                        ; $7bcb: $d1
    pop de                                        ; $7bcc: $d1
    pop de                                        ; $7bcd: $d1
    pop de                                        ; $7bce: $d1
    pop de                                        ; $7bcf: $d1
    pop de                                        ; $7bd0: $d1
    pop de                                        ; $7bd1: $d1
    pop de                                        ; $7bd2: $d1
    pop de                                        ; $7bd3: $d1
    pop de                                        ; $7bd4: $d1
    adc b                                         ; $7bd5: $88
    adc b                                         ; $7bd6: $88
    adc b                                         ; $7bd7: $88
    adc b                                         ; $7bd8: $88
    add b                                         ; $7bd9: $80
    add b                                         ; $7bda: $80
    add b                                         ; $7bdb: $80
    add b                                         ; $7bdc: $80
    add b                                         ; $7bdd: $80
    add b                                         ; $7bde: $80
    add b                                         ; $7bdf: $80
    add b                                         ; $7be0: $80
    add b                                         ; $7be1: $80
    add b                                         ; $7be2: $80
    add b                                         ; $7be3: $80
    add b                                         ; $7be4: $80
    and [hl]                                      ; $7be5: $a6
    and a                                         ; $7be6: $a7
    db $fc                                        ; $7be7: $fc
    db $fd                                        ; $7be8: $fd
    pop de                                        ; $7be9: $d1
    pop de                                        ; $7bea: $d1
    cp $ff                                        ; $7beb: $fe $ff
    pop de                                        ; $7bed: $d1
    pop de                                        ; $7bee: $d1
    nop                                           ; $7bef: $00
    ld bc, $d1d1                                  ; $7bf0: $01 $d1 $d1
    pop de                                        ; $7bf3: $d1
    ld [bc], a                                    ; $7bf4: $02
    adc b                                         ; $7bf5: $88
    adc b                                         ; $7bf6: $88
    add hl, bc                                    ; $7bf7: $09
    add hl, bc                                    ; $7bf8: $09
    add b                                         ; $7bf9: $80
    add b                                         ; $7bfa: $80
    xor e                                         ; $7bfb: $ab
    add hl, bc                                    ; $7bfc: $09
    add b                                         ; $7bfd: $80
    add b                                         ; $7bfe: $80
    adc e                                         ; $7bff: $8b
    add hl, bc                                    ; $7c00: $09
    add b                                         ; $7c01: $80
    add b                                         ; $7c02: $80
    add b                                         ; $7c03: $80
    adc e                                         ; $7c04: $8b
    call nz, $c6c5                                ; $7c05: $c4 $c5 $c6
    rst $00                                       ; $7c08: $c7
    ret nz                                        ; $7c09: $c0

    pop bc                                        ; $7c0a: $c1
    jp nz, Jump_088_48c3                          ; $7c0b: $c2 $c3 $48

    ld c, c                                       ; $7c0e: $49
    ld c, d                                       ; $7c0f: $4a
    ld c, e                                       ; $7c10: $4b
    inc bc                                        ; $7c11: $03
    ld b, l                                       ; $7c12: $45
    ld b, [hl]                                    ; $7c13: $46
    ld b, a                                       ; $7c14: $47
    ld c, a                                       ; $7c15: $4f
    ld c, c                                       ; $7c16: $49
    ld c, c                                       ; $7c17: $49
    ld c, a                                       ; $7c18: $4f
    ld c, c                                       ; $7c19: $49
    ld c, a                                       ; $7c1a: $4f
    ld c, c                                       ; $7c1b: $49
    ld c, c                                       ; $7c1c: $49
    ld b, c                                       ; $7c1d: $41
    ld b, c                                       ; $7c1e: $41
    ld b, c                                       ; $7c1f: $41
    ld b, c                                       ; $7c20: $41
    add hl, bc                                    ; $7c21: $09
    ld b, c                                       ; $7c22: $41
    ld b, a                                       ; $7c23: $47
    ld b, c                                       ; $7c24: $41
    call nc, $d6d5                                ; $7c25: $d4 $d5 $d6
    rst $10                                       ; $7c28: $d7
    ret nc                                        ; $7c29: $d0

    pop de                                        ; $7c2a: $d1
    jp nc, Jump_088_58d3                          ; $7c2b: $d2 $d3 $58

    ld e, c                                       ; $7c2e: $59
    ld e, d                                       ; $7c2f: $5a
    ld e, e                                       ; $7c30: $5b
    ld d, h                                       ; $7c31: $54
    ld d, l                                       ; $7c32: $55
    ld d, [hl]                                    ; $7c33: $56
    ld d, a                                       ; $7c34: $57
    ld c, c                                       ; $7c35: $49
    ld c, a                                       ; $7c36: $4f
    ld c, c                                       ; $7c37: $49
    ld c, c                                       ; $7c38: $49
    ld c, a                                       ; $7c39: $4f
    ld c, c                                       ; $7c3a: $49
    ld c, a                                       ; $7c3b: $4f
    ld c, a                                       ; $7c3c: $4f
    ld b, c                                       ; $7c3d: $41
    ld b, c                                       ; $7c3e: $41
    ld b, c                                       ; $7c3f: $41
    ld b, a                                       ; $7c40: $47
    ld b, c                                       ; $7c41: $41
    ld b, a                                       ; $7c42: $47
    ld b, c                                       ; $7c43: $41
    ld b, c                                       ; $7c44: $41
    inc b                                         ; $7c45: $04
    dec b                                         ; $7c46: $05
    ld b, d                                       ; $7c47: $42
    ld b, e                                       ; $7c48: $43
    pop de                                        ; $7c49: $d1
    ld b, $07                                     ; $7c4a: $06 $07
    ld [$d1d1], sp                                ; $7c4c: $08 $d1 $d1
    add hl, bc                                    ; $7c4f: $09
    ld a, [bc]                                    ; $7c50: $0a
    pop de                                        ; $7c51: $d1
    pop de                                        ; $7c52: $d1
    pop de                                        ; $7c53: $d1
    pop de                                        ; $7c54: $d1
    adc e                                         ; $7c55: $8b
    add hl, bc                                    ; $7c56: $09
    ld b, c                                       ; $7c57: $41
    ld b, c                                       ; $7c58: $41
    add b                                         ; $7c59: $80
    adc e                                         ; $7c5a: $8b
    add hl, bc                                    ; $7c5b: $09
    add hl, bc                                    ; $7c5c: $09
    add b                                         ; $7c5d: $80
    add b                                         ; $7c5e: $80
    adc e                                         ; $7c5f: $8b
    adc e                                         ; $7c60: $8b
    add b                                         ; $7c61: $80
    add b                                         ; $7c62: $80
    add b                                         ; $7c63: $80
    add b                                         ; $7c64: $80
    ld d, b                                       ; $7c65: $50
    ld d, c                                       ; $7c66: $51
    ld d, d                                       ; $7c67: $52
    ld d, e                                       ; $7c68: $53
    dec bc                                        ; $7c69: $0b
    ld c, l                                       ; $7c6a: $4d
    ld c, [hl]                                    ; $7c6b: $4e
    ld c, a                                       ; $7c6c: $4f
    inc c                                         ; $7c6d: $0c
    dec c                                         ; $7c6e: $0d
    ld c, $2d                                     ; $7c6f: $0e $2d
    add hl, bc                                    ; $7c71: $09
    rrca                                          ; $7c72: $0f
    db $10                                        ; $7c73: $10
    ld de, $4141                                  ; $7c74: $11 $41 $41
    ld b, c                                       ; $7c77: $41
    ld b, c                                       ; $7c78: $41
    rrca                                          ; $7c79: $0f
    ld b, c                                       ; $7c7a: $41
    ld b, a                                       ; $7c7b: $47
    ld b, c                                       ; $7c7c: $41
    add hl, bc                                    ; $7c7d: $09
    add hl, bc                                    ; $7c7e: $09
    add hl, bc                                    ; $7c7f: $09
    ld b, a                                       ; $7c80: $47
    adc e                                         ; $7c81: $8b
    adc e                                         ; $7c82: $8b
    add hl, bc                                    ; $7c83: $09
    add hl, bc                                    ; $7c84: $09
    ld [de], a                                    ; $7c85: $12
    inc de                                        ; $7c86: $13
    inc d                                         ; $7c87: $14
    inc d                                         ; $7c88: $14
    dec d                                         ; $7c89: $15
    ld d, $17                                     ; $7c8a: $16 $17
    rla                                           ; $7c8c: $17
    jr jr_088_7ca8                                ; $7c8d: $18 $19

    ld a, [de]                                    ; $7c8f: $1a
    ld a, [de]                                    ; $7c90: $1a
    dec de                                        ; $7c91: $1b
    inc e                                         ; $7c92: $1c
    dec e                                         ; $7c93: $1d
    ld e, $09                                     ; $7c94: $1e $09
    rrca                                          ; $7c96: $0f
    add hl, bc                                    ; $7c97: $09
    add hl, hl                                    ; $7c98: $29
    rrca                                          ; $7c99: $0f
    add hl, bc                                    ; $7c9a: $09
    rrca                                          ; $7c9b: $0f
    add hl, hl                                    ; $7c9c: $29
    add hl, bc                                    ; $7c9d: $09
    rrca                                          ; $7c9e: $0f
    rrca                                          ; $7c9f: $0f
    cpl                                           ; $7ca0: $2f
    rrca                                          ; $7ca1: $0f
    rrca                                          ; $7ca2: $0f
    rrca                                          ; $7ca3: $0f
    rrca                                          ; $7ca4: $0f
    inc de                                        ; $7ca5: $13
    ld [de], a                                    ; $7ca6: $12
    db $d3                                        ; $7ca7: $d3

jr_088_7ca8:
    jp nc, $1516                                  ; $7ca8: $d2 $16 $15

    rst $10                                       ; $7cab: $d7
    sub $19                                       ; $7cac: $d6 $19
    jr @-$23                                      ; $7cae: $18 $db

    jp c, Jump_000_1b1c                           ; $7cb0: $da $1c $1b

    rst $18                                       ; $7cb3: $df
    sbc $29                                       ; $7cb4: $de $29
    cpl                                           ; $7cb6: $2f
    add hl, hl                                    ; $7cb7: $29
    add hl, hl                                    ; $7cb8: $29
    cpl                                           ; $7cb9: $2f
    add hl, hl                                    ; $7cba: $29
    add hl, hl                                    ; $7cbb: $29
    cpl                                           ; $7cbc: $2f
    cpl                                           ; $7cbd: $2f
    cpl                                           ; $7cbe: $2f
    add hl, hl                                    ; $7cbf: $29
    add hl, hl                                    ; $7cc0: $29
    cpl                                           ; $7cc1: $2f
    cpl                                           ; $7cc2: $2f
    add hl, hl                                    ; $7cc3: $29
    add hl, hl                                    ; $7cc4: $29
    pop de                                        ; $7cc5: $d1
    ret nc                                        ; $7cc6: $d0

    jp $d5c2                                      ; $7cc7: $c3 $c2 $d5


    call nc, $c6c7                                ; $7cca: $d4 $c7 $c6
    reti                                          ; $7ccd: $d9


    ret c                                         ; $7cce: $d8

    set 1, d                                      ; $7ccf: $cb $ca
    db $dd                                        ; $7cd1: $dd
    call c, $201f                                 ; $7cd2: $dc $1f $20
    add hl, hl                                    ; $7cd5: $29
    add hl, hl                                    ; $7cd6: $29
    add hl, hl                                    ; $7cd7: $29
    cpl                                           ; $7cd8: $2f
    add hl, hl                                    ; $7cd9: $29
    cpl                                           ; $7cda: $2f
    add hl, hl                                    ; $7cdb: $29
    add hl, hl                                    ; $7cdc: $29
    cpl                                           ; $7cdd: $2f
    add hl, hl                                    ; $7cde: $29
    cpl                                           ; $7cdf: $2f
    cpl                                           ; $7ce0: $2f
    add hl, hl                                    ; $7ce1: $29
    cpl                                           ; $7ce2: $2f
    rrca                                          ; $7ce3: $0f
    rrca                                          ; $7ce4: $0f
    pop bc                                        ; $7ce5: $c1
    ret nz                                        ; $7ce6: $c0

    or e                                          ; $7ce7: $b3
    or d                                          ; $7ce8: $b2
    push bc                                       ; $7ce9: $c5
    call nz, $b6b7                                ; $7cea: $c4 $b7 $b6
    ret                                           ; $7ced: $c9


    ret z                                         ; $7cee: $c8

    cp e                                          ; $7cef: $bb
    cp d                                          ; $7cf0: $ba
    ld hl, $2322                                  ; $7cf1: $21 $22 $23
    cp [hl]                                       ; $7cf4: $be
    add hl, hl                                    ; $7cf5: $29
    cpl                                           ; $7cf6: $2f
    add hl, hl                                    ; $7cf7: $29
    add hl, hl                                    ; $7cf8: $29
    cpl                                           ; $7cf9: $2f
    add hl, hl                                    ; $7cfa: $29
    add hl, hl                                    ; $7cfb: $29
    add hl, hl                                    ; $7cfc: $29
    cpl                                           ; $7cfd: $2f
    cpl                                           ; $7cfe: $2f
    cpl                                           ; $7cff: $2f
    add hl, hl                                    ; $7d00: $29
    rrca                                          ; $7d01: $0f
    rrca                                          ; $7d02: $0f
    rrca                                          ; $7d03: $0f
    cpl                                           ; $7d04: $2f
    inc h                                         ; $7d05: $24
    ld e, $1c                                     ; $7d06: $1e $1c
    dec h                                         ; $7d08: $25
    inc h                                         ; $7d09: $24
    ld e, $1e                                     ; $7d0a: $1e $1e
    inc e                                         ; $7d0c: $1c
    dec de                                        ; $7d0d: $1b
    inc e                                         ; $7d0e: $1c

jr_088_7d0f:
    dec e                                         ; $7d0f: $1d
    dec e                                         ; $7d10: $1d
    jr @+$1b                                      ; $7d11: $18 $19

    ld a, [de]                                    ; $7d13: $1a
    ld a, [de]                                    ; $7d14: $1a
    rrca                                          ; $7d15: $0f
    ld c, a                                       ; $7d16: $4f
    rrca                                          ; $7d17: $0f
    rrca                                          ; $7d18: $0f
    ld c, a                                       ; $7d19: $4f
    rrca                                          ; $7d1a: $0f
    rrca                                          ; $7d1b: $0f
    rrca                                          ; $7d1c: $0f
    ld c, a                                       ; $7d1d: $4f
    ld c, a                                       ; $7d1e: $4f
    ld c, a                                       ; $7d1f: $4f
    ld l, a                                       ; $7d20: $6f
    ld c, c                                       ; $7d21: $49
    ld c, a                                       ; $7d22: $4f
    ld c, a                                       ; $7d23: $4f
    ld l, a                                       ; $7d24: $6f
    ld e, $24                                     ; $7d25: $1e $24
    ld a, [$1ef9]                                 ; $7d27: $fa $f9 $1e
    inc h                                         ; $7d2a: $24
    ld a, [$1cf9]                                 ; $7d2b: $fa $f9 $1c
    dec de                                        ; $7d2e: $1b
    rst $18                                       ; $7d2f: $df
    sbc $19                                       ; $7d30: $de $19
    jr jr_088_7d0f                                ; $7d32: $18 $db

    jp c, $2f6f                                   ; $7d34: $da $6f $2f

    cpl                                           ; $7d37: $2f
    add hl, hl                                    ; $7d38: $29
    cpl                                           ; $7d39: $2f
    ld l, a                                       ; $7d3a: $6f
    ld l, a                                       ; $7d3b: $6f
    ld l, c                                       ; $7d3c: $69
    ld l, a                                       ; $7d3d: $6f
    ld l, a                                       ; $7d3e: $6f
    ld l, c                                       ; $7d3f: $69
    ld l, a                                       ; $7d40: $6f
    ld l, a                                       ; $7d41: $6f
    ld l, c                                       ; $7d42: $69
    ld l, a                                       ; $7d43: $6f
    ld l, c                                       ; $7d44: $69
    ld hl, sp-$09                                 ; $7d45: $f8 $f7
    ld h, $27                                     ; $7d47: $26 $27
    ld hl, sp-$09                                 ; $7d49: $f8 $f7
    jr z, jr_088_7d76                             ; $7d4b: $28 $29

    db $dd                                        ; $7d4d: $dd
    call c, $2b2a                                 ; $7d4e: $dc $2a $2b
    reti                                          ; $7d51: $d9


    ret c                                         ; $7d52: $d8

    set 1, d                                      ; $7d53: $cb $ca
    add hl, hl                                    ; $7d55: $29
    cpl                                           ; $7d56: $2f
    rrca                                          ; $7d57: $0f
    rrca                                          ; $7d58: $0f
    ld l, a                                       ; $7d59: $6f
    ld l, a                                       ; $7d5a: $6f
    rrca                                          ; $7d5b: $0f
    rrca                                          ; $7d5c: $0f
    ld l, c                                       ; $7d5d: $69
    ld l, a                                       ; $7d5e: $6f
    rrca                                          ; $7d5f: $0f
    rrca                                          ; $7d60: $0f
    ld l, c                                       ; $7d61: $69
    ld l, c                                       ; $7d62: $69
    ld l, a                                       ; $7d63: $6f
    ld l, a                                       ; $7d64: $6f
    inc l                                         ; $7d65: $2c
    dec l                                         ; $7d66: $2d
    ld l, $e7                                     ; $7d67: $2e $e7
    cpl                                           ; $7d69: $2f
    jr nc, jr_088_7d9d                            ; $7d6a: $30 $31

    rst $20                                       ; $7d6c: $e7
    ld [hl-], a                                   ; $7d6d: $32
    inc sp                                        ; $7d6e: $33
    inc [hl]                                      ; $7d6f: $34
    cp [hl]                                       ; $7d70: $be
    ret                                           ; $7d71: $c9


    ret z                                         ; $7d72: $c8

    cp e                                          ; $7d73: $bb
    dec [hl]                                      ; $7d74: $35
    rrca                                          ; $7d75: $0f

jr_088_7d76:
    rrca                                          ; $7d76: $0f
    rrca                                          ; $7d77: $0f
    cpl                                           ; $7d78: $2f
    rrca                                          ; $7d79: $0f
    rrca                                          ; $7d7a: $0f
    rrca                                          ; $7d7b: $0f
    ld l, a                                       ; $7d7c: $6f
    rrca                                          ; $7d7d: $0f
    rrca                                          ; $7d7e: $0f
    rrca                                          ; $7d7f: $0f
    ld l, a                                       ; $7d80: $6f
    ld l, a                                       ; $7d81: $6f
    ld l, a                                       ; $7d82: $6f
    ld l, a                                       ; $7d83: $6f
    add hl, bc                                    ; $7d84: $09
    dec d                                         ; $7d85: $15
    ld d, $17                                     ; $7d86: $16 $17
    rla                                           ; $7d88: $17
    ld [de], a                                    ; $7d89: $12
    inc de                                        ; $7d8a: $13
    inc d                                         ; $7d8b: $14
    inc d                                         ; $7d8c: $14
    and c                                         ; $7d8d: $a1
    and d                                         ; $7d8e: $a2
    and e                                         ; $7d8f: $a3
    and e                                         ; $7d90: $a3
    sbc [hl]                                      ; $7d91: $9e
    sbc a                                         ; $7d92: $9f
    and b                                         ; $7d93: $a0
    and b                                         ; $7d94: $a0
    ld c, a                                       ; $7d95: $4f
    ld c, c                                       ; $7d96: $49
    ld c, c                                       ; $7d97: $49
    ld l, c                                       ; $7d98: $69
    ld c, c                                       ; $7d99: $49
    ld c, a                                       ; $7d9a: $4f
    ld c, c                                       ; $7d9b: $49
    ld l, c                                       ; $7d9c: $69

jr_088_7d9d:
    ld c, c                                       ; $7d9d: $49
    ld c, c                                       ; $7d9e: $49
    ld c, c                                       ; $7d9f: $49
    ld l, a                                       ; $7da0: $6f
    ld c, c                                       ; $7da1: $49
    ld c, a                                       ; $7da2: $4f
    ld c, a                                       ; $7da3: $4f
    ld l, a                                       ; $7da4: $6f
    ld d, $15                                     ; $7da5: $16 $15
    rst $10                                       ; $7da7: $d7
    sub $13                                       ; $7da8: $d6 $13
    ld [de], a                                    ; $7daa: $12
    db $d3                                        ; $7dab: $d3
    jp nc, $a1a2                                  ; $7dac: $d2 $a2 $a1

    ld e, e                                       ; $7daf: $5b
    ld e, d                                       ; $7db0: $5a
    sbc a                                         ; $7db1: $9f
    sbc [hl]                                      ; $7db2: $9e
    ld d, a                                       ; $7db3: $57
    ld d, [hl]                                    ; $7db4: $56
    ld l, c                                       ; $7db5: $69
    ld l, a                                       ; $7db6: $6f
    ld l, c                                       ; $7db7: $69
    ld l, c                                       ; $7db8: $69
    ld l, a                                       ; $7db9: $6f
    ld l, c                                       ; $7dba: $69
    ld l, c                                       ; $7dbb: $69
    ld l, a                                       ; $7dbc: $6f
    ld l, c                                       ; $7dbd: $69
    ld l, c                                       ; $7dbe: $69
    ld h, a                                       ; $7dbf: $67
    ld h, c                                       ; $7dc0: $61
    ld l, c                                       ; $7dc1: $69
    ld l, a                                       ; $7dc2: $6f
    ld h, c                                       ; $7dc3: $61
    ld h, c                                       ; $7dc4: $61
    push de                                       ; $7dc5: $d5
    call nc, $c6c7                                ; $7dc6: $d4 $c7 $c6
    pop de                                        ; $7dc9: $d1
    ret nc                                        ; $7dca: $d0

    jp Jump_088_59c2                              ; $7dcb: $c3 $c2 $59


    ld e, b                                       ; $7dce: $58
    ld c, e                                       ; $7dcf: $4b
    ld c, d                                       ; $7dd0: $4a
    ld d, l                                       ; $7dd1: $55
    ld d, h                                       ; $7dd2: $54
    ld b, a                                       ; $7dd3: $47
    ld b, [hl]                                    ; $7dd4: $46
    ld l, a                                       ; $7dd5: $6f
    ld l, c                                       ; $7dd6: $69
    ld l, c                                       ; $7dd7: $69
    ld l, a                                       ; $7dd8: $6f
    ld l, c                                       ; $7dd9: $69
    ld l, a                                       ; $7dda: $6f
    ld l, c                                       ; $7ddb: $69
    ld l, c                                       ; $7ddc: $69
    ld h, c                                       ; $7ddd: $61
    ld h, c                                       ; $7dde: $61
    ld h, a                                       ; $7ddf: $67
    ld h, a                                       ; $7de0: $67
    ld h, a                                       ; $7de1: $67
    ld h, c                                       ; $7de2: $61
    ld h, c                                       ; $7de3: $61
    ld h, c                                       ; $7de4: $61
    push bc                                       ; $7de5: $c5
    call nz, $36b7                                ; $7de6: $c4 $b7 $36
    pop bc                                        ; $7de9: $c1
    ret nz                                        ; $7dea: $c0

    rst $38                                       ; $7deb: $ff
    cp $49                                        ; $7dec: $fe $49
    ld c, b                                       ; $7dee: $48
    ld bc, $4500                                  ; $7def: $01 $00 $45
    inc bc                                        ; $7df2: $03
    ld [bc], a                                    ; $7df3: $02
    pop de                                        ; $7df4: $d1
    ld l, c                                       ; $7df5: $69
    ld l, c                                       ; $7df6: $69
    ld l, c                                       ; $7df7: $69
    add hl, bc                                    ; $7df8: $09
    ld l, a                                       ; $7df9: $6f
    ld l, a                                       ; $7dfa: $6f
    add hl, hl                                    ; $7dfb: $29
    adc e                                         ; $7dfc: $8b
    ld h, c                                       ; $7dfd: $61
    ld h, c                                       ; $7dfe: $61
    add hl, hl                                    ; $7dff: $29
    xor e                                         ; $7e00: $ab
    ld h, c                                       ; $7e01: $61
    add hl, hl                                    ; $7e02: $29
    xor e                                         ; $7e03: $ab
    add b                                         ; $7e04: $80
    sbc e                                         ; $7e05: $9b
    sbc h                                         ; $7e06: $9c
    sbc l                                         ; $7e07: $9d
    sbc l                                         ; $7e08: $9d
    sub a                                         ; $7e09: $97
    scf                                           ; $7e0a: $37
    jr c, jr_088_7e46                             ; $7e0b: $38 $39

    sub b                                         ; $7e0d: $90
    ld a, [hl-]                                   ; $7e0e: $3a
    dec sp                                        ; $7e0f: $3b
    inc a                                         ; $7e10: $3c
    dec a                                         ; $7e11: $3d
    ld a, $3f                                     ; $7e12: $3e $3f
    ld b, b                                       ; $7e14: $40
    ld c, a                                       ; $7e15: $4f
    ld c, a                                       ; $7e16: $4f
    ld c, a                                       ; $7e17: $4f
    ld l, a                                       ; $7e18: $6f
    ld c, a                                       ; $7e19: $4f
    rrca                                          ; $7e1a: $0f
    rrca                                          ; $7e1b: $0f
    rrca                                          ; $7e1c: $0f
    ld c, a                                       ; $7e1d: $4f
    rrca                                          ; $7e1e: $0f
    rrca                                          ; $7e1f: $0f
    rrca                                          ; $7e20: $0f
    rrca                                          ; $7e21: $0f
    rrca                                          ; $7e22: $0f
    rrca                                          ; $7e23: $0f
    rrca                                          ; $7e24: $0f
    sbc h                                         ; $7e25: $9c
    sbc e                                         ; $7e26: $9b
    ld d, e                                       ; $7e27: $53
    ld d, d                                       ; $7e28: $52
    ld b, c                                       ; $7e29: $41
    sub a                                         ; $7e2a: $97
    ld c, a                                       ; $7e2b: $4f
    ld c, [hl]                                    ; $7e2c: $4e
    ld b, d                                       ; $7e2d: $42
    sub b                                         ; $7e2e: $90
    dec l                                         ; $7e2f: $2d
    ld c, $43                                     ; $7e30: $0e $43
    dec a                                         ; $7e32: $3d
    ld de, $6f10                                  ; $7e33: $11 $10 $6f
    ld l, a                                       ; $7e36: $6f
    ld h, c                                       ; $7e37: $61
    ld h, a                                       ; $7e38: $67
    rrca                                          ; $7e39: $0f
    ld l, a                                       ; $7e3a: $6f
    ld h, a                                       ; $7e3b: $67
    ld h, c                                       ; $7e3c: $61
    rrca                                          ; $7e3d: $0f
    ld l, a                                       ; $7e3e: $6f
    ld h, a                                       ; $7e3f: $67
    add hl, hl                                    ; $7e40: $29
    rrca                                          ; $7e41: $0f
    cpl                                           ; $7e42: $2f
    add hl, hl                                    ; $7e43: $29
    add hl, hl                                    ; $7e44: $29
    ld d, c                                       ; $7e45: $51

jr_088_7e46:
    ld d, b                                       ; $7e46: $50
    ld b, e                                       ; $7e47: $43
    ld b, d                                       ; $7e48: $42
    ld c, l                                       ; $7e49: $4d
    dec bc                                        ; $7e4a: $0b
    ld [$0d07], sp                                ; $7e4b: $08 $07 $0d
    inc c                                         ; $7e4e: $0c
    ld a, [bc]                                    ; $7e4f: $0a
    add hl, bc                                    ; $7e50: $09
    rrca                                          ; $7e51: $0f
    add hl, bc                                    ; $7e52: $09
    pop de                                        ; $7e53: $d1
    pop de                                        ; $7e54: $d1
    ld h, c                                       ; $7e55: $61
    ld h, a                                       ; $7e56: $67
    ld h, c                                       ; $7e57: $61
    ld h, c                                       ; $7e58: $61
    ld h, a                                       ; $7e59: $67
    add hl, hl                                    ; $7e5a: $29
    add hl, hl                                    ; $7e5b: $29
    add hl, hl                                    ; $7e5c: $29
    add hl, hl                                    ; $7e5d: $29
    add hl, hl                                    ; $7e5e: $29
    xor e                                         ; $7e5f: $ab
    xor e                                         ; $7e60: $ab
    xor e                                         ; $7e61: $ab
    xor e                                         ; $7e62: $ab
    add b                                         ; $7e63: $80
    add b                                         ; $7e64: $80
    dec b                                         ; $7e65: $05
    inc b                                         ; $7e66: $04
    pop de                                        ; $7e67: $d1
    pop de                                        ; $7e68: $d1
    ld b, $d1                                     ; $7e69: $06 $d1
    pop de                                        ; $7e6b: $d1
    pop de                                        ; $7e6c: $d1
    pop de                                        ; $7e6d: $d1
    pop de                                        ; $7e6e: $d1
    pop de                                        ; $7e6f: $d1
    pop de                                        ; $7e70: $d1
    pop de                                        ; $7e71: $d1
    pop de                                        ; $7e72: $d1
    pop de                                        ; $7e73: $d1
    pop de                                        ; $7e74: $d1
    add hl, hl                                    ; $7e75: $29
    xor e                                         ; $7e76: $ab
    add b                                         ; $7e77: $80
    add b                                         ; $7e78: $80
    xor e                                         ; $7e79: $ab
    add b                                         ; $7e7a: $80
    add b                                         ; $7e7b: $80
    add b                                         ; $7e7c: $80
    add b                                         ; $7e7d: $80
    add b                                         ; $7e7e: $80
    add b                                         ; $7e7f: $80
    add b                                         ; $7e80: $80
    add b                                         ; $7e81: $80
    add b                                         ; $7e82: $80
    add b                                         ; $7e83: $80
    add b                                         ; $7e84: $80
    or c                                          ; $7e85: $b1
    or b                                          ; $7e86: $b0
    pop de                                        ; $7e87: $d1
    pop de                                        ; $7e88: $d1
    or l                                          ; $7e89: $b5
    or h                                          ; $7e8a: $b4
    pop de                                        ; $7e8b: $d1
    pop de                                        ; $7e8c: $d1
    cp c                                          ; $7e8d: $b9
    ld b, h                                       ; $7e8e: $44
    pop de                                        ; $7e8f: $d1
    pop de                                        ; $7e90: $d1
    cp l                                          ; $7e91: $bd
    ld b, l                                       ; $7e92: $45
    pop de                                        ; $7e93: $d1
    pop de                                        ; $7e94: $d1
    add hl, hl                                    ; $7e95: $29
    ld a, [hl+]                                   ; $7e96: $2a
    add b                                         ; $7e97: $80
    add b                                         ; $7e98: $80
    add hl, hl                                    ; $7e99: $29
    ld a, [hl+]                                   ; $7e9a: $2a
    add b                                         ; $7e9b: $80
    add b                                         ; $7e9c: $80
    add hl, hl                                    ; $7e9d: $29
    add hl, bc                                    ; $7e9e: $09
    add b                                         ; $7e9f: $80
    add b                                         ; $7ea0: $80
    add hl, hl                                    ; $7ea1: $29
    add hl, bc                                    ; $7ea2: $09
    add b                                         ; $7ea3: $80
    add b                                         ; $7ea4: $80
    ld b, [hl]                                    ; $7ea5: $46
    ld b, a                                       ; $7ea6: $47
    pop de                                        ; $7ea7: $d1
    pop de                                        ; $7ea8: $d1
    ld c, b                                       ; $7ea9: $48
    ld c, c                                       ; $7eaa: $49
    pop de                                        ; $7eab: $d1
    pop de                                        ; $7eac: $d1
    ld c, d                                       ; $7ead: $4a
    ld c, e                                       ; $7eae: $4b
    pop de                                        ; $7eaf: $d1
    pop de                                        ; $7eb0: $d1
    cp $d1                                        ; $7eb1: $fe $d1
    pop de                                        ; $7eb3: $d1
    pop de                                        ; $7eb4: $d1
    add hl, bc                                    ; $7eb5: $09
    adc e                                         ; $7eb6: $8b
    add b                                         ; $7eb7: $80
    add b                                         ; $7eb8: $80
    add hl, bc                                    ; $7eb9: $09
    adc e                                         ; $7eba: $8b
    add b                                         ; $7ebb: $80
    add b                                         ; $7ebc: $80
    add hl, bc                                    ; $7ebd: $09
    adc e                                         ; $7ebe: $8b
    add b                                         ; $7ebf: $80
    add b                                         ; $7ec0: $80
    adc e                                         ; $7ec1: $8b
    add b                                         ; $7ec2: $80
    add b                                         ; $7ec3: $80
    add b                                         ; $7ec4: $80
    ld c, h                                       ; $7ec5: $4c
    pop de                                        ; $7ec6: $d1
    pop de                                        ; $7ec7: $d1
    pop de                                        ; $7ec8: $d1
    pop de                                        ; $7ec9: $d1
    pop de                                        ; $7eca: $d1
    pop de                                        ; $7ecb: $d1
    pop de                                        ; $7ecc: $d1
    pop de                                        ; $7ecd: $d1
    pop de                                        ; $7ece: $d1
    pop de                                        ; $7ecf: $d1
    pop de                                        ; $7ed0: $d1
    pop de                                        ; $7ed1: $d1
    pop de                                        ; $7ed2: $d1
    pop de                                        ; $7ed3: $d1
    pop de                                        ; $7ed4: $d1
    adc e                                         ; $7ed5: $8b
    add b                                         ; $7ed6: $80
    add b                                         ; $7ed7: $80
    add b                                         ; $7ed8: $80
    add b                                         ; $7ed9: $80
    add b                                         ; $7eda: $80
    add b                                         ; $7edb: $80
    add b                                         ; $7edc: $80
    add b                                         ; $7edd: $80
    add b                                         ; $7ede: $80
    add b                                         ; $7edf: $80
    add b                                         ; $7ee0: $80
    add b                                         ; $7ee1: $80
    add b                                         ; $7ee2: $80
    add b                                         ; $7ee3: $80
    add b                                         ; $7ee4: $80
    pop de                                        ; $7ee5: $d1
    pop de                                        ; $7ee6: $d1
    ld c, l                                       ; $7ee7: $4d
    ld c, [hl]                                    ; $7ee8: $4e
    pop de                                        ; $7ee9: $d1
    pop de                                        ; $7eea: $d1
    pop de                                        ; $7eeb: $d1
    pop de                                        ; $7eec: $d1
    pop de                                        ; $7eed: $d1
    pop de                                        ; $7eee: $d1
    pop de                                        ; $7eef: $d1
    pop de                                        ; $7ef0: $d1
    pop de                                        ; $7ef1: $d1
    pop de                                        ; $7ef2: $d1
    pop de                                        ; $7ef3: $d1
    pop de                                        ; $7ef4: $d1
    add b                                         ; $7ef5: $80
    add b                                         ; $7ef6: $80
    adc e                                         ; $7ef7: $8b
    adc e                                         ; $7ef8: $8b
    add b                                         ; $7ef9: $80
    add b                                         ; $7efa: $80
    add b                                         ; $7efb: $80
    add b                                         ; $7efc: $80
    add b                                         ; $7efd: $80
    add b                                         ; $7efe: $80
    add b                                         ; $7eff: $80
    add b                                         ; $7f00: $80
    add b                                         ; $7f01: $80
    add b                                         ; $7f02: $80
    add b                                         ; $7f03: $80
    add b                                         ; $7f04: $80
    ld c, a                                       ; $7f05: $4f
    ld d, b                                       ; $7f06: $50
    ld d, c                                       ; $7f07: $51
    ld d, c                                       ; $7f08: $51
    pop de                                        ; $7f09: $d1
    pop de                                        ; $7f0a: $d1
    pop de                                        ; $7f0b: $d1
    pop de                                        ; $7f0c: $d1
    pop de                                        ; $7f0d: $d1
    pop de                                        ; $7f0e: $d1
    pop de                                        ; $7f0f: $d1
    pop de                                        ; $7f10: $d1
    pop de                                        ; $7f11: $d1
    pop de                                        ; $7f12: $d1
    pop de                                        ; $7f13: $d1
    pop de                                        ; $7f14: $d1
    adc e                                         ; $7f15: $8b
    adc e                                         ; $7f16: $8b
    adc e                                         ; $7f17: $8b
    adc e                                         ; $7f18: $8b
    add b                                         ; $7f19: $80
    add b                                         ; $7f1a: $80
    add b                                         ; $7f1b: $80
    add b                                         ; $7f1c: $80
    add b                                         ; $7f1d: $80
    add b                                         ; $7f1e: $80
    add b                                         ; $7f1f: $80
    add b                                         ; $7f20: $80
    add b                                         ; $7f21: $80
    add b                                         ; $7f22: $80
    add b                                         ; $7f23: $80
    add b                                         ; $7f24: $80
    ld d, b                                       ; $7f25: $50
    ld c, a                                       ; $7f26: $4f
    ld c, [hl]                                    ; $7f27: $4e
    ld c, l                                       ; $7f28: $4d
    pop de                                        ; $7f29: $d1
    pop de                                        ; $7f2a: $d1
    pop de                                        ; $7f2b: $d1
    pop de                                        ; $7f2c: $d1
    pop de                                        ; $7f2d: $d1
    pop de                                        ; $7f2e: $d1
    pop de                                        ; $7f2f: $d1
    pop de                                        ; $7f30: $d1
    pop de                                        ; $7f31: $d1
    pop de                                        ; $7f32: $d1
    pop de                                        ; $7f33: $d1
    pop de                                        ; $7f34: $d1
    xor e                                         ; $7f35: $ab
    xor e                                         ; $7f36: $ab
    xor e                                         ; $7f37: $ab
    xor e                                         ; $7f38: $ab
    add b                                         ; $7f39: $80
    add b                                         ; $7f3a: $80
    add b                                         ; $7f3b: $80
    add b                                         ; $7f3c: $80
    add b                                         ; $7f3d: $80
    add b                                         ; $7f3e: $80
    add b                                         ; $7f3f: $80
    add b                                         ; $7f40: $80
    add b                                         ; $7f41: $80
    add b                                         ; $7f42: $80
    add b                                         ; $7f43: $80
    add b                                         ; $7f44: $80
    ld e, [hl]                                    ; $7f45: $5e
    nop                                           ; $7f46: $00
    nop                                           ; $7f47: $00
    nop                                           ; $7f48: $00
    nop                                           ; $7f49: $00
    ld bc, $0200                                  ; $7f4a: $01 $00 $02
    nop                                           ; $7f4d: $00
    inc bc                                        ; $7f4e: $03
    nop                                           ; $7f4f: $00
    nop                                           ; $7f50: $00
    stop                                          ; $7f51: $10 $00
    ld de, $0400                                  ; $7f53: $11 $00 $04
    nop                                           ; $7f56: $00
    dec b                                         ; $7f57: $05
    nop                                           ; $7f58: $00
    nop                                           ; $7f59: $00
    ld b, $00                                     ; $7f5a: $06 $00
    rlca                                          ; $7f5c: $07
    nop                                           ; $7f5d: $00
    ld [de], a                                    ; $7f5e: $12
    nop                                           ; $7f5f: $00
    inc de                                        ; $7f60: $13
    nop                                           ; $7f61: $00
    nop                                           ; $7f62: $00
    ld [$0900], sp                                ; $7f63: $08 $00 $09
    nop                                           ; $7f66: $00
    ld a, [bc]                                    ; $7f67: $0a
    nop                                           ; $7f68: $00
    dec bc                                        ; $7f69: $0b
    nop                                           ; $7f6a: $00
    nop                                           ; $7f6b: $00
    inc d                                         ; $7f6c: $14
    nop                                           ; $7f6d: $00
    dec d                                         ; $7f6e: $15
    nop                                           ; $7f6f: $00
    inc c                                         ; $7f70: $0c
    nop                                           ; $7f71: $00
    dec c                                         ; $7f72: $0d
    nop                                           ; $7f73: $00
    nop                                           ; $7f74: $00
    ld c, $00                                     ; $7f75: $0e $00
    rrca                                          ; $7f77: $0f
    nop                                           ; $7f78: $00
    ld d, $00                                     ; $7f79: $16 $00
    rla                                           ; $7f7b: $17
    nop                                           ; $7f7c: $00
    inc b                                         ; $7f7d: $04
    jr jr_088_7f80                                ; $7f7e: $18 $00

jr_088_7f80:
    add hl, de                                    ; $7f80: $19
    nop                                           ; $7f81: $00
    ld a, [de]                                    ; $7f82: $1a
    inc c                                         ; $7f83: $0c
    nop                                           ; $7f84: $00
    daa                                           ; $7f85: $27
    nop                                           ; $7f86: $00
    nop                                           ; $7f87: $00
    jr z, jr_088_7f8a                             ; $7f88: $28 $00

jr_088_7f8a:
    dec de                                        ; $7f8a: $1b
    nop                                           ; $7f8b: $00
    inc e                                         ; $7f8c: $1c
    nop                                           ; $7f8d: $00
    dec e                                         ; $7f8e: $1d
    nop                                           ; $7f8f: $00
    nop                                           ; $7f90: $00
    ld e, $00                                     ; $7f91: $1e $00
    add hl, hl                                    ; $7f93: $29
    nop                                           ; $7f94: $00
    ld a, [hl+]                                   ; $7f95: $2a
    nop                                           ; $7f96: $00
    rra                                           ; $7f97: $1f
    nop                                           ; $7f98: $00
    nop                                           ; $7f99: $00
    jr nz, jr_088_7f9c                            ; $7f9a: $20 $00

jr_088_7f9c:
    ld hl, $2200                                  ; $7f9c: $21 $00 $22
    nop                                           ; $7f9f: $00
    dec hl                                        ; $7fa0: $2b
    nop                                           ; $7fa1: $00
    nop                                           ; $7fa2: $00
    inc l                                         ; $7fa3: $2c
    nop                                           ; $7fa4: $00
    inc hl                                        ; $7fa5: $23
    nop                                           ; $7fa6: $00
    inc h                                         ; $7fa7: $24
    nop                                           ; $7fa8: $00
    dec h                                         ; $7fa9: $25
    nop                                           ; $7faa: $00
    nop                                           ; $7fab: $00
    ld h, $00                                     ; $7fac: $26 $00
    dec l                                         ; $7fae: $2d
    nop                                           ; $7faf: $00
    ld l, $00                                     ; $7fb0: $2e $00
    jr nc, jr_088_7fb4                            ; $7fb2: $30 $00

jr_088_7fb4:
    nop                                           ; $7fb4: $00
    nop                                           ; $7fb5: $00
    nop                                           ; $7fb6: $00
    ld bc, $0200                                  ; $7fb7: $01 $00 $02
    nop                                           ; $7fba: $00
    inc bc                                        ; $7fbb: $03
    nop                                           ; $7fbc: $00
    nop                                           ; $7fbd: $00
    stop                                          ; $7fbe: $10 $00
    inc b                                         ; $7fc0: $04
    nop                                           ; $7fc1: $00
    dec b                                         ; $7fc2: $05
    nop                                           ; $7fc3: $00
    ld b, $00                                     ; $7fc4: $06 $00
    nop                                           ; $7fc6: $00
    rlca                                          ; $7fc7: $07
    nop                                           ; $7fc8: $00
    ld de, $0800                                  ; $7fc9: $11 $00 $08
    nop                                           ; $7fcc: $00
    add hl, bc                                    ; $7fcd: $09
    nop                                           ; $7fce: $00
    nop                                           ; $7fcf: $00
    ld a, [bc]                                    ; $7fd0: $0a
    nop                                           ; $7fd1: $00
    dec bc                                        ; $7fd2: $0b
    nop                                           ; $7fd3: $00
    ld [de], a                                    ; $7fd4: $12
    nop                                           ; $7fd5: $00
    inc c                                         ; $7fd6: $0c
    nop                                           ; $7fd7: $00
    nop                                           ; $7fd8: $00
    dec c                                         ; $7fd9: $0d
    nop                                           ; $7fda: $00
    ld c, $00                                     ; $7fdb: $0e $00
    rrca                                          ; $7fdd: $0f
    nop                                           ; $7fde: $00
    inc de                                        ; $7fdf: $13
    nop                                           ; $7fe0: $00
    ld bc, $0014                                  ; $7fe1: $01 $14 $00
    dec d                                         ; $7fe4: $15
    nop                                           ; $7fe5: $00
    ld d, $00                                     ; $7fe6: $16 $00
    rla                                           ; $7fe8: $17
    ld [$0000], sp                                ; $7fe9: $08 $00 $00
    jr c, @+$4e                                   ; $7fec: $38 $4c

    ld bc, $0239                                  ; $7fee: $01 $39 $02
    nop                                           ; $7ff1: $00
    nop                                           ; $7ff2: $00

    db $64, $2c, $7f, $02, $6c, $05, $00, $00

    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
